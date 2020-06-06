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
	<24.173813, 35.175900, 35.316292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285297, 34.874897, 35.077610>,  <24.352188, 34.694294, 34.934402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.285297, 34.874897, 35.077610>,  <24.173813, 35.175900, 35.316292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285297, 34.874897, 35.077610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539781, -0.391152, 0.745410,
		-0.794327, -0.529844, 0.297170,
		0.278713, -0.752506, -0.596702,
		24.368912, 34.649147, 34.898598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005478, 34.556656, 35.670467>,  <24.173813, 35.175900, 35.316292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005478, 34.556656, 35.670467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303570, 34.533367, 35.404762>,  <24.482424, 34.519394, 35.245338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303570, 34.533367, 35.404762>,  <24.005478, 34.556656, 35.670467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.303570, 34.533367, 35.404762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619731, -0.307191, 0.722196,
		-0.246107, -0.949865, -0.192842,
		0.745228, -0.058227, -0.664263,
		24.527138, 34.515900, 35.205482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.096210, 33.878704, 35.389233>,  <24.005478, 34.556656, 35.670467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.096210, 33.878704, 35.389233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446064, 34.072617, 35.390434>,  <24.655975, 34.188965, 35.391155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446064, 34.072617, 35.390434>,  <24.096210, 33.878704, 35.389233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.446064, 34.072617, 35.390434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306844, -0.558383, 0.770750,
		0.375321, -0.673200, -0.637131,
		0.874632, 0.484779, 0.003006,
		24.708454, 34.218052, 35.391335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606421, 33.374008, 35.398006>,  <24.096210, 33.878704, 35.389233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606421, 33.374008, 35.398006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763184, 33.706711, 35.555279>,  <24.857241, 33.906334, 35.649643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763184, 33.706711, 35.555279>,  <24.606421, 33.374008, 35.398006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.763184, 33.706711, 35.555279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418332, -0.541739, 0.729052,
		0.819394, -0.121241, -0.560262,
		0.391907, 0.831757, 0.393179,
		24.880756, 33.956238, 35.673233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124035, 33.138279, 35.779156>,  <24.606421, 33.374008, 35.398006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124035, 33.138279, 35.779156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089296, 33.490936, 35.964699>,  <25.068453, 33.702530, 36.076023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089296, 33.490936, 35.964699>,  <25.124035, 33.138279, 35.779156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089296, 33.490936, 35.964699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257712, -0.429883, 0.865324,
		0.962311, 0.194693, -0.189876,
		-0.086848, 0.881644, 0.463855,
		25.063242, 33.755428, 36.103855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793650, 33.370224, 36.127895>,  <25.124035, 33.138279, 35.779156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793650, 33.370224, 36.127895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448109, 33.493095, 36.287594>,  <25.240784, 33.566818, 36.383411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448109, 33.493095, 36.287594>,  <25.793650, 33.370224, 36.127895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448109, 33.493095, 36.287594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302565, -0.317275, 0.898772,
		0.402753, 0.897206, 0.181138,
		-0.863855, 0.307177, 0.399246,
		25.188951, 33.585247, 36.407368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520384, 33.309406, 36.077053>,  <25.793650, 33.370224, 36.127895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520384, 33.309406, 36.077053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285400, 33.007690, 36.194317>,  <26.144411, 32.826660, 36.264675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285400, 33.007690, 36.194317>,  <26.520384, 33.309406, 36.077053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285400, 33.007690, 36.194317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677711, 0.260571, -0.687612,
		0.442266, -0.602624, -0.664263,
		-0.587459, -0.754286, 0.293164,
		26.109163, 32.781406, 36.282265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934248, 33.649601, 36.641491>,  <26.520384, 33.309406, 36.077053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934248, 33.649601, 36.641491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331879, 33.663116, 36.682804>,  <27.570457, 33.671227, 36.707592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331879, 33.663116, 36.682804>,  <26.934248, 33.649601, 36.641491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331879, 33.663116, 36.682804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099876, -0.090453, 0.990880,
		0.042820, -0.995327, -0.086543,
		0.994078, 0.033786, 0.103283,
		27.630102, 33.673252, 36.713787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020346, 33.158100, 37.163216>,  <26.934248, 33.649601, 36.641491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020346, 33.158100, 37.163216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366755, 33.357998, 37.156750>,  <27.574600, 33.477936, 37.152870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366755, 33.357998, 37.156750>,  <27.020346, 33.158100, 37.163216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366755, 33.357998, 37.156750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078477, -0.103933, 0.991483,
		0.493809, -0.859915, -0.129227,
		0.866022, 0.499745, -0.016160,
		27.626560, 33.507923, 37.151901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499775, 32.748730, 37.464447>,  <27.020346, 33.158100, 37.163216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499775, 32.748730, 37.464447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653727, 33.116180, 37.500191>,  <27.746098, 33.336651, 37.521637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653727, 33.116180, 37.500191>,  <27.499775, 32.748730, 37.464447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653727, 33.116180, 37.500191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040429, -0.113503, 0.992715,
		0.922081, -0.378464, -0.080825,
		0.384880, 0.918631, 0.089357,
		27.769190, 33.391769, 37.526997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070314, 32.707485, 37.978695>,  <27.499775, 32.748730, 37.464447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070314, 32.707485, 37.978695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946917, 33.087933, 37.973053>,  <27.872879, 33.316200, 37.969666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946917, 33.087933, 37.973053>,  <28.070314, 32.707485, 37.978695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946917, 33.087933, 37.973053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114993, 0.052011, 0.992004,
		0.944251, 0.304403, -0.125417,
		-0.308492, 0.951122, -0.014107,
		27.854368, 33.373268, 37.968822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482582, 33.048344, 38.388992>,  <28.070314, 32.707485, 37.978695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482582, 33.048344, 38.388992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125397, 33.228310, 38.383419>,  <27.911085, 33.336288, 38.380074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125397, 33.228310, 38.383419>,  <28.482582, 33.048344, 38.388992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125397, 33.228310, 38.383419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042015, 0.114131, 0.992577,
		0.448167, 0.885748, -0.120818,
		-0.892962, 0.449916, -0.013935,
		27.857508, 33.363285, 38.379238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309929, 33.118481, 39.115299>,  <28.482582, 33.048344, 38.388992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309929, 33.118481, 39.115299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402805, 33.082848, 39.502731>,  <28.458530, 33.061470, 39.735191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402805, 33.082848, 39.502731>,  <28.309929, 33.118481, 39.115299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402805, 33.082848, 39.502731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341408, -0.924976, -0.166911,
		0.910785, 0.369437, -0.184358,
		0.232190, -0.089079, 0.968583,
		28.472462, 33.056126, 39.793304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494041, 33.079639, 39.005219>,  <28.309929, 33.118481, 39.115299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494041, 33.079639, 39.005219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708673, 33.401382, 39.107269>,  <27.837452, 33.594429, 39.168499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708673, 33.401382, 39.107269>,  <27.494041, 33.079639, 39.005219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708673, 33.401382, 39.107269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062562, 0.263584, -0.962605,
		-0.841527, 0.532477, 0.091111,
		0.536581, 0.804358, 0.255126,
		27.869648, 33.642689, 39.183807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132957, 33.656898, 38.771980>,  <27.494041, 33.079639, 39.005219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132957, 33.656898, 38.771980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522301, 33.748604, 38.773609>,  <27.755907, 33.803627, 38.774586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522301, 33.748604, 38.773609>,  <27.132957, 33.656898, 38.771980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522301, 33.748604, 38.773609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050061, 0.229798, -0.971950,
		-0.223766, 0.945850, 0.235153,
		0.973357, 0.229261, 0.004071,
		27.814308, 33.817383, 38.774830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980104, 34.146027, 38.170326>,  <27.132957, 33.656898, 38.771980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980104, 34.146027, 38.170326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335447, 33.997437, 38.278275>,  <27.548653, 33.908283, 38.343044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335447, 33.997437, 38.278275>,  <26.980104, 34.146027, 38.170326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335447, 33.997437, 38.278275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363391, 0.209565, -0.907761,
		0.280653, 0.904484, 0.321158,
		0.888359, -0.371471, 0.269866,
		27.601955, 33.885994, 38.359234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558010, 34.627819, 38.011734>,  <26.980104, 34.146027, 38.170326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558010, 34.627819, 38.011734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688068, 34.249557, 38.013172>,  <27.766104, 34.022598, 38.014034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688068, 34.249557, 38.013172>,  <27.558010, 34.627819, 38.011734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688068, 34.249557, 38.013172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333401, 0.111075, -0.936219,
		0.884942, 0.305608, 0.351399,
		0.325148, -0.945657, 0.003595,
		27.785612, 33.965862, 38.014252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299881, 34.547012, 37.839417>,  <27.558010, 34.627819, 38.011734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299881, 34.547012, 37.839417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143585, 34.198055, 37.721935>,  <28.049807, 33.988682, 37.651447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143585, 34.198055, 37.721935>,  <28.299881, 34.547012, 37.839417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143585, 34.198055, 37.721935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453455, 0.095239, -0.886176,
		0.801062, -0.479445, 0.358375,
		-0.390741, -0.872389, -0.293699,
		28.026363, 33.936340, 37.633827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690126, 34.327412, 37.233021>,  <28.299881, 34.547012, 37.839417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690126, 34.327412, 37.233021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386606, 34.070374, 37.190514>,  <28.204494, 33.916149, 37.165009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386606, 34.070374, 37.190514>,  <28.690126, 34.327412, 37.233021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386606, 34.070374, 37.190514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208306, -0.084843, -0.974377,
		0.617116, -0.761492, 0.198236,
		-0.758799, -0.642597, -0.106265,
		28.158966, 33.877594, 37.158634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942616, 33.747650, 36.786057>,  <28.690126, 34.327412, 37.233021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942616, 33.747650, 36.786057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543089, 33.738468, 36.768887>,  <28.303373, 33.732960, 36.758583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543089, 33.738468, 36.768887>,  <28.942616, 33.747650, 36.786057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543089, 33.738468, 36.768887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041441, 0.061613, -0.997239,
		0.025526, -0.997837, -0.060589,
		-0.998815, -0.022944, -0.042924,
		28.243444, 33.731583, 36.756008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702303, 33.211277, 36.306160>,  <28.942616, 33.747650, 36.786057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702303, 33.211277, 36.306160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417091, 33.490200, 36.335442>,  <28.245964, 33.657555, 36.353012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417091, 33.490200, 36.335442>,  <28.702303, 33.211277, 36.306160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417091, 33.490200, 36.335442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061804, 0.166509, -0.984101,
		-0.698407, -0.697166, -0.161821,
		-0.713027, 0.697305, 0.073203,
		28.203184, 33.699390, 36.357403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373741, 33.580185, 36.032009>,  <28.702303, 33.211277, 36.306160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373741, 33.580185, 36.032009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597532, 33.788967, 35.774467>,  <29.731808, 33.914238, 35.619942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597532, 33.788967, 35.774467>,  <29.373741, 33.580185, 36.032009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597532, 33.788967, 35.774467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310622, -0.852232, -0.420969,
		-0.768438, 0.035528, -0.638937,
		0.559479, 0.521957, -0.643852,
		29.765375, 33.945553, 35.581310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425175, 33.186081, 35.430386>,  <29.373741, 33.580185, 36.032009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425175, 33.186081, 35.430386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824476, 33.173706, 35.450504>,  <30.064058, 33.166279, 35.462574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824476, 33.173706, 35.450504>,  <29.425175, 33.186081, 35.430386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824476, 33.173706, 35.450504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039104, 0.984597, -0.170413,
		-0.044246, 0.172082, 0.984088,
		0.998255, -0.030941, 0.050294,
		30.123953, 33.164425, 35.465591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554110, 32.608803, 34.933441>,  <29.425175, 33.186081, 35.430386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554110, 32.608803, 34.933441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928028, 32.581814, 35.072926>,  <30.152380, 32.565620, 35.156616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928028, 32.581814, 35.072926>,  <29.554110, 32.608803, 34.933441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928028, 32.581814, 35.072926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220324, -0.659903, -0.718321,
		0.278583, 0.748315, -0.602010,
		0.934799, -0.067475, 0.348710,
		30.208467, 32.561573, 35.177540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156677, 32.687660, 34.481655>,  <29.554110, 32.608803, 34.933441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156677, 32.687660, 34.481655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237459, 32.404346, 34.752224>,  <30.285929, 32.234360, 34.914566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237459, 32.404346, 34.752224>,  <30.156677, 32.687660, 34.481655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237459, 32.404346, 34.752224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327367, -0.602112, -0.728211,
		0.923063, 0.368505, 0.110269,
		0.201955, -0.708283, 0.676424,
		30.298046, 32.191860, 34.955151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781796, 32.411892, 34.401012>,  <30.156677, 32.687660, 34.481655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781796, 32.411892, 34.401012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573507, 32.108635, 34.558014>,  <30.448534, 31.926680, 34.652214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573507, 32.108635, 34.558014>,  <30.781796, 32.411892, 34.401012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573507, 32.108635, 34.558014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279953, -0.585974, -0.760435,
		0.806520, -0.286092, 0.517375,
		-0.520723, -0.758147, 0.392507,
		30.417290, 31.881191, 34.675766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101486, 31.753073, 34.246578>,  <30.781796, 32.411892, 34.401012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101486, 31.753073, 34.246578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742430, 31.608301, 34.347172>,  <30.526995, 31.521439, 34.407528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742430, 31.608301, 34.347172>,  <31.101486, 31.753073, 34.246578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742430, 31.608301, 34.347172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125784, -0.757269, -0.640875,
		0.422392, -0.543645, 0.725283,
		-0.897643, -0.361930, 0.251483,
		30.473137, 31.499722, 34.422615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150322, 30.910196, 34.424244>,  <31.101486, 31.753073, 34.246578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150322, 30.910196, 34.424244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825636, 31.084745, 34.268963>,  <30.630825, 31.189474, 34.175793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825636, 31.084745, 34.268963>,  <31.150322, 30.910196, 34.424244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825636, 31.084745, 34.268963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090902, -0.562178, -0.822006,
		-0.576937, -0.702522, 0.416661,
		-0.811714, 0.436371, -0.388202,
		30.582121, 31.215656, 34.152504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480064, 30.493641, 34.275951>,  <31.150322, 30.910196, 34.424244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480064, 30.493641, 34.275951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471989, 30.796680, 34.014988>,  <30.467144, 30.978504, 33.858410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471989, 30.796680, 34.014988>,  <30.480064, 30.493641, 34.275951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471989, 30.796680, 34.014988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242126, -0.636822, -0.732005,
		-0.970035, 0.143187, 0.196292,
		-0.020189, 0.757598, -0.652409,
		30.465931, 31.023960, 33.819263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725250, 29.939104, 34.001068>,  <30.480064, 30.493641, 34.275951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725250, 29.939104, 34.001068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111750, 29.863474, 34.071056>,  <31.343649, 29.818096, 34.113049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111750, 29.863474, 34.071056>,  <30.725250, 29.939104, 34.001068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111750, 29.863474, 34.071056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225220, -0.949729, 0.217462,
		0.125063, -0.249530, -0.960257,
		0.966248, -0.189073, 0.174975,
		31.401625, 29.806751, 34.123550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053143, 29.351898, 33.673225>,  <30.725250, 29.939104, 34.001068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053143, 29.351898, 33.673225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250484, 29.400721, 34.017715>,  <31.368889, 29.430014, 34.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250484, 29.400721, 34.017715>,  <31.053143, 29.351898, 33.673225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250484, 29.400721, 34.017715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188364, -0.951620, 0.242771,
		0.849188, -0.281995, -0.446495,
		0.493354, 0.122054, 0.861222,
		31.398491, 29.437338, 34.276081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577627, 28.832857, 33.788574>,  <31.053143, 29.351898, 33.673225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577627, 28.832857, 33.788574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486568, 28.964998, 34.154972>,  <31.431932, 29.044283, 34.374809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486568, 28.964998, 34.154972>,  <31.577627, 28.832857, 33.788574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486568, 28.964998, 34.154972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043765, -0.943213, 0.329294,
		0.972760, 0.034874, 0.229177,
		-0.227647, 0.330353, 0.915993,
		31.418274, 29.064104, 34.429771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024956, 28.408480, 34.145061>,  <31.577627, 28.832857, 33.788574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024956, 28.408480, 34.145061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742361, 28.532614, 34.399483>,  <31.572803, 28.607094, 34.552135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742361, 28.532614, 34.399483>,  <32.024956, 28.408480, 34.145061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742361, 28.532614, 34.399483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285305, -0.947356, 0.145321,
		0.647667, -0.078802, 0.757838,
		-0.706491, 0.310334, 0.636053,
		31.530415, 28.625713, 34.590298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061146, 27.901272, 34.775425>,  <32.024956, 28.408480, 34.145061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061146, 27.901272, 34.775425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702673, 28.078091, 34.760162>,  <31.487589, 28.184181, 34.751003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702673, 28.078091, 34.760162>,  <32.061146, 27.901272, 34.775425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702673, 28.078091, 34.760162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399235, -0.765878, 0.504026,
		0.193580, 0.466931, 0.862845,
		-0.896180, 0.442047, -0.038157,
		31.433819, 28.210705, 34.748714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723585, 27.762205, 35.462719>,  <32.061146, 27.901272, 34.775425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723585, 27.762205, 35.462719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471579, 27.849016, 35.164463>,  <31.320375, 27.901102, 34.985508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471579, 27.849016, 35.164463>,  <31.723585, 27.762205, 35.462719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471579, 27.849016, 35.164463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540607, -0.811872, 0.220471,
		-0.557517, 0.542000, 0.628817,
		-0.630014, 0.217026, -0.745642,
		31.282574, 27.914124, 34.940769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921581, 27.828924, 35.727283>,  <31.723585, 27.762205, 35.462719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921581, 27.828924, 35.727283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948740, 27.722942, 35.342537>,  <30.965036, 27.659353, 35.111691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948740, 27.722942, 35.342537>,  <30.921581, 27.828924, 35.727283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948740, 27.722942, 35.342537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464105, -0.861819, 0.204635,
		-0.883174, 0.432512, -0.181484,
		0.067899, -0.264956, -0.961867,
		30.969110, 27.643456, 35.053978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287968, 27.587164, 35.351669>,  <30.921581, 27.828924, 35.727283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287968, 27.587164, 35.351669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624052, 27.422701, 35.210251>,  <30.825703, 27.324022, 35.125401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624052, 27.422701, 35.210251>,  <30.287968, 27.587164, 35.351669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624052, 27.422701, 35.210251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402462, -0.909784, 0.101576,
		-0.363417, 0.056945, -0.929885,
		0.840209, -0.411158, -0.353549,
		30.876116, 27.299353, 35.104187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167824, 27.400625, 34.687431>,  <30.287968, 27.587164, 35.351669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167824, 27.400625, 34.687431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444675, 27.175083, 34.867664>,  <30.610786, 27.039757, 34.975803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444675, 27.175083, 34.867664>,  <30.167824, 27.400625, 34.687431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444675, 27.175083, 34.867664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631527, -0.775354, -0.000201,
		0.349472, -0.284415, -0.892736,
		0.692129, -0.563857, 0.450580,
		30.652315, 27.005926, 35.002838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173059, 28.174742, 34.427197>,  <30.167824, 27.400625, 34.687431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173059, 28.174742, 34.427197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493010, 28.112989, 34.659187>,  <30.684978, 28.075937, 34.798382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493010, 28.112989, 34.659187>,  <30.173059, 28.174742, 34.427197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493010, 28.112989, 34.659187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260186, 0.960018, -0.103293,
		-0.540838, 0.233522, 0.808061,
		0.799874, -0.154381, 0.579973,
		30.732971, 28.066675, 34.833179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277544, 28.796558, 34.893772>,  <30.173059, 28.174742, 34.427197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277544, 28.796558, 34.893772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632236, 28.612093, 34.880909>,  <30.845053, 28.501413, 34.873192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632236, 28.612093, 34.880909>,  <30.277544, 28.796558, 34.893772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632236, 28.612093, 34.880909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453919, 0.881749, -0.128361,
		0.087547, 0.099226, 0.991206,
		0.886732, -0.461165, -0.032153,
		30.898256, 28.473743, 34.871262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676853, 29.100029, 35.431488>,  <30.277544, 28.796558, 34.893772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676853, 29.100029, 35.431488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929626, 28.942881, 35.164261>,  <31.081291, 28.848593, 35.003925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929626, 28.942881, 35.164261>,  <30.676853, 29.100029, 35.431488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929626, 28.942881, 35.164261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437126, 0.892480, -0.111357,
		0.639985, -0.221660, 0.735721,
		0.631933, -0.392870, -0.668067,
		31.119205, 28.825020, 34.963840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273546, 29.421698, 35.661827>,  <30.676853, 29.100029, 35.431488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273546, 29.421698, 35.661827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297020, 29.344639, 35.270023>,  <31.311104, 29.298403, 35.034939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297020, 29.344639, 35.270023>,  <31.273546, 29.421698, 35.661827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297020, 29.344639, 35.270023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234200, 0.956475, -0.174087,
		0.970416, -0.219186, 0.101247,
		0.058682, -0.192649, -0.979512,
		31.314625, 29.286844, 34.976170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983835, 29.686871, 35.319099>,  <31.273546, 29.421698, 35.661827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983835, 29.686871, 35.319099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709320, 29.653749, 35.030060>,  <31.544611, 29.633877, 34.856636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709320, 29.653749, 35.030060>,  <31.983835, 29.686871, 35.319099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709320, 29.653749, 35.030060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114248, 0.968892, -0.219534,
		0.718300, -0.233219, -0.655479,
		-0.686288, -0.082804, -0.722600,
		31.503433, 29.628908, 34.813278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257172, 29.946844, 34.687588>,  <31.983835, 29.686871, 35.319099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257172, 29.946844, 34.687588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861719, 29.944111, 34.627514>,  <31.624447, 29.942471, 34.591469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861719, 29.944111, 34.627514>,  <32.257172, 29.946844, 34.687588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861719, 29.944111, 34.627514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056679, 0.908310, -0.414440,
		0.139249, -0.418241, -0.897599,
		-0.988634, -0.006835, -0.150187,
		31.565128, 29.942060, 34.582458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869553, 29.604675, 34.391869>,  <32.257172, 29.946844, 34.687588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869553, 29.604675, 34.391869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006733, 29.516539, 34.026611>,  <33.089043, 29.463657, 33.807457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006733, 29.516539, 34.026611>,  <32.869553, 29.604675, 34.391869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006733, 29.516539, 34.026611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590859, -0.705110, 0.392054,
		-0.730253, -0.673996, -0.111628,
		0.342953, -0.220343, -0.913145,
		33.109619, 29.450436, 33.752666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770473, 28.917414, 34.314281>,  <32.869553, 29.604675, 34.391869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770473, 28.917414, 34.314281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053844, 29.015036, 34.049381>,  <33.223866, 29.073608, 33.890442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053844, 29.015036, 34.049381>,  <32.770473, 28.917414, 34.314281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053844, 29.015036, 34.049381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517056, -0.818138, 0.251604,
		-0.480403, -0.520661, -0.705781,
		0.708426, 0.244057, -0.662246,
		33.266373, 29.088253, 33.850708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895267, 28.292112, 33.970913>,  <32.770473, 28.917414, 34.314281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895267, 28.292112, 33.970913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208004, 28.528698, 33.892025>,  <33.395645, 28.670649, 33.844692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208004, 28.528698, 33.892025>,  <32.895267, 28.292112, 33.970913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208004, 28.528698, 33.892025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623471, -0.743110, 0.243046,
		-0.002802, -0.312983, -0.949755,
		0.781841, 0.591464, -0.197218,
		33.442554, 28.706137, 33.832859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248291, 27.843510, 33.501736>,  <32.895267, 28.292112, 33.970913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248291, 27.843510, 33.501736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497845, 28.112572, 33.660889>,  <33.647575, 28.274010, 33.756382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497845, 28.112572, 33.660889>,  <33.248291, 27.843510, 33.501736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497845, 28.112572, 33.660889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699108, -0.707907, 0.100576,
		0.349316, 0.215415, -0.911907,
		0.623880, 0.672655, 0.397882,
		33.685009, 28.314367, 33.780254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017181, 27.913849, 33.440022>,  <33.248291, 27.843510, 33.501736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017181, 27.913849, 33.440022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160709, 28.278326, 33.520992>,  <34.246826, 28.497013, 33.569572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160709, 28.278326, 33.520992>,  <34.017181, 27.913849, 33.440022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160709, 28.278326, 33.520992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658616, -0.400833, 0.636834,
		0.661418, -0.095188, -0.743953,
		0.358820, 0.911193, 0.202425,
		34.268356, 28.551683, 33.581718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617962, 28.064455, 33.093254>,  <34.017181, 27.913849, 33.440022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617962, 28.064455, 33.093254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547935, 28.210958, 33.458813>,  <34.505920, 28.298861, 33.678146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547935, 28.210958, 33.458813>,  <34.617962, 28.064455, 33.093254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547935, 28.210958, 33.458813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733891, -0.570229, 0.369112,
		0.656320, 0.735319, -0.168966,
		-0.175066, 0.366258, 0.913897,
		34.495415, 28.320835, 33.732983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242577, 28.251114, 33.407562>,  <34.617962, 28.064455, 33.093254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242577, 28.251114, 33.407562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984329, 28.168108, 33.701534>,  <34.829380, 28.118305, 33.877918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984329, 28.168108, 33.701534>,  <35.242577, 28.251114, 33.407562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984329, 28.168108, 33.701534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615463, -0.711118, 0.339876,
		0.452091, 0.671750, 0.586827,
		-0.645615, -0.207515, 0.734928,
		34.790646, 28.105854, 33.922012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582474, 28.194408, 34.147224>,  <35.242577, 28.251114, 33.407562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582474, 28.194408, 34.147224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250385, 27.972656, 34.123890>,  <35.051132, 27.839605, 34.109890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250385, 27.972656, 34.123890>,  <35.582474, 28.194408, 34.147224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250385, 27.972656, 34.123890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531183, -0.818509, 0.218830,
		-0.169065, 0.150689, 0.974017,
		-0.830218, -0.554378, -0.058338,
		35.001320, 27.806343, 34.106388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686501, 28.399580, 34.740051>,  <35.582474, 28.194408, 34.147224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686501, 28.399580, 34.740051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318604, 28.246147, 34.706722>,  <35.097866, 28.154087, 34.686726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318604, 28.246147, 34.706722>,  <35.686501, 28.399580, 34.740051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318604, 28.246147, 34.706722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270056, -0.772399, 0.574866,
		-0.284863, 0.506227, 0.813995,
		-0.919741, -0.383582, -0.083318,
		35.042683, 28.131073, 34.681728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344952, 28.365053, 35.450806>,  <35.686501, 28.399580, 34.740051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344952, 28.365053, 35.450806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224068, 28.086521, 35.190407>,  <35.151539, 27.919401, 35.034168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224068, 28.086521, 35.190407>,  <35.344952, 28.365053, 35.450806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224068, 28.086521, 35.190407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427640, -0.709385, 0.560265,
		-0.851936, -0.109075, 0.512160,
		-0.302207, -0.696330, -0.650996,
		35.133404, 27.877623, 34.995110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112915, 27.875120, 35.876839>,  <35.344952, 28.365053, 35.450806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112915, 27.875120, 35.876839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206318, 27.698004, 35.530563>,  <35.262360, 27.591734, 35.322800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206318, 27.698004, 35.530563>,  <35.112915, 27.875120, 35.876839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206318, 27.698004, 35.530563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574918, -0.655134, 0.490172,
		-0.784184, -0.612156, 0.101590,
		0.233507, -0.442791, -0.865685,
		35.276371, 27.565166, 35.270859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644547, 27.371441, 35.555569>,  <35.112915, 27.875120, 35.876839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644547, 27.371441, 35.555569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656013, 27.108093, 35.254707>,  <34.662895, 26.950085, 35.074192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656013, 27.108093, 35.254707>,  <34.644547, 27.371441, 35.555569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656013, 27.108093, 35.254707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999145, -0.041302, -0.001931,
		-0.029794, 0.751563, -0.658988,
		0.028669, -0.658367, -0.752151,
		34.664616, 26.910583, 35.029060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170094, 27.211250, 36.155342>,  <34.644547, 27.371441, 35.555569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170094, 27.211250, 36.155342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568272, 27.232336, 36.187115>,  <35.807178, 27.244987, 36.206177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568272, 27.232336, 36.187115>,  <35.170094, 27.211250, 36.155342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568272, 27.232336, 36.187115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067167, -0.979097, -0.191986,
		0.067648, 0.196447, -0.978178,
		0.995446, 0.052714, 0.079429,
		35.866905, 27.248150, 36.210945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397308, 26.877357, 35.509541>,  <35.170094, 27.211250, 36.155342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397308, 26.877357, 35.509541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676826, 26.893623, 35.795208>,  <35.844536, 26.903383, 35.966610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676826, 26.893623, 35.795208>,  <35.397308, 26.877357, 35.509541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676826, 26.893623, 35.795208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279847, -0.934352, -0.220617,
		0.658313, 0.354023, -0.664297,
		0.698791, 0.040666, 0.714169,
		35.886463, 26.905823, 36.009460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076313, 27.268721, 35.211716>,  <35.397308, 26.877357, 35.509541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076313, 27.268721, 35.211716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895374, 26.933033, 35.090992>,  <35.786812, 26.731621, 35.018559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895374, 26.933033, 35.090992>,  <36.076313, 27.268721, 35.211716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895374, 26.933033, 35.090992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729123, 0.542874, -0.416733,
		0.513576, 0.031548, -0.857464,
		-0.452348, -0.839221, -0.301809,
		35.759670, 26.681267, 35.000450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963814, 27.081861, 34.415459>,  <36.076313, 27.268721, 35.211716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963814, 27.081861, 34.415459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680107, 27.031755, 34.692947>,  <35.509884, 27.001692, 34.859440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680107, 27.031755, 34.692947>,  <35.963814, 27.081861, 34.415459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680107, 27.031755, 34.692947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588223, 0.647509, -0.484484,
		-0.388502, -0.751692, -0.532941,
		-0.709267, -0.125265, 0.693721,
		35.467327, 26.994175, 34.901062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293037, 26.797121, 34.172718>,  <35.963814, 27.081861, 34.415459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293037, 26.797121, 34.172718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285820, 27.051544, 34.481289>,  <35.281490, 27.204199, 34.666431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285820, 27.051544, 34.481289>,  <35.293037, 26.797121, 34.172718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285820, 27.051544, 34.481289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553614, 0.636128, -0.537450,
		-0.832578, -0.436775, 0.340649,
		-0.018048, 0.636057, 0.771431,
		35.280407, 27.242361, 34.712719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665859, 27.045473, 34.115692>,  <35.293037, 26.797121, 34.172718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665859, 27.045473, 34.115692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814842, 27.305998, 34.380138>,  <34.904232, 27.462313, 34.538807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814842, 27.305998, 34.380138>,  <34.665859, 27.045473, 34.115692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814842, 27.305998, 34.380138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689980, 0.670746, -0.272080,
		-0.620648, -0.354818, 0.699214,
		0.372456, 0.651310, 0.661114,
		34.926579, 27.501390, 34.578472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043873, 27.396242, 34.373039>,  <34.665859, 27.045473, 34.115692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043873, 27.396242, 34.373039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385021, 27.595886, 34.434368>,  <34.589710, 27.715673, 34.471165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385021, 27.595886, 34.434368>,  <34.043873, 27.396242, 34.373039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385021, 27.595886, 34.434368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443857, 0.847697, -0.290518,
		-0.274973, 0.179718, 0.944506,
		0.852866, 0.499110, 0.153325,
		34.640881, 27.745619, 34.480366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955517, 28.014589, 34.934559>,  <34.043873, 27.396242, 34.373039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955517, 28.014589, 34.934559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223156, 28.054386, 34.639965>,  <34.383739, 28.078264, 34.463207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223156, 28.054386, 34.639965>,  <33.955517, 28.014589, 34.934559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223156, 28.054386, 34.639965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458307, 0.835362, -0.303522,
		0.585034, 0.540622, 0.604536,
		0.669096, 0.099492, -0.736486,
		34.423885, 28.084234, 34.419018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154446, 28.713995, 34.919323>,  <33.955517, 28.014589, 34.934559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154446, 28.713995, 34.919323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227409, 28.564825, 34.555420>,  <34.271187, 28.475323, 34.337078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227409, 28.564825, 34.555420>,  <34.154446, 28.713995, 34.919323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227409, 28.564825, 34.555420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567659, 0.715546, -0.407133,
		0.802802, 0.590695, -0.081173,
		0.182408, -0.372925, -0.909755,
		34.282131, 28.452948, 34.282494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284843, 29.288488, 34.522743>,  <34.154446, 28.713995, 34.919323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284843, 29.288488, 34.522743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195236, 28.999792, 34.260780>,  <34.141472, 28.826574, 34.103603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195236, 28.999792, 34.260780>,  <34.284843, 29.288488, 34.522743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195236, 28.999792, 34.260780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505967, 0.660459, -0.554789,
		0.832955, 0.207080, -0.513132,
		-0.224017, -0.721742, -0.654908,
		34.128033, 28.783270, 34.064308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549999, 29.412912, 33.785736>,  <34.284843, 29.288488, 34.522743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549999, 29.412912, 33.785736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215401, 29.193792, 33.791332>,  <34.014641, 29.062321, 33.794689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215401, 29.193792, 33.791332>,  <34.549999, 29.412912, 33.785736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215401, 29.193792, 33.791332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465724, 0.697244, -0.544933,
		0.288759, -0.462349, -0.838362,
		-0.836493, -0.547799, 0.013992,
		33.964455, 29.029453, 33.795528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363003, 29.306644, 33.128895>,  <34.549999, 29.412912, 33.785736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363003, 29.306644, 33.128895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026089, 29.264439, 33.340340>,  <33.823940, 29.239115, 33.467205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026089, 29.264439, 33.340340>,  <34.363003, 29.306644, 33.128895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026089, 29.264439, 33.340340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451282, 0.674349, -0.584464,
		-0.294798, -0.730835, -0.615609,
		-0.842282, -0.105515, 0.528609,
		33.773403, 29.232784, 33.498924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634800, 29.067987, 32.720009>,  <34.363003, 29.306644, 33.128895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634800, 29.067987, 32.720009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605602, 29.322384, 33.027302>,  <33.588085, 29.475021, 33.211678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605602, 29.322384, 33.027302>,  <33.634800, 29.067987, 32.720009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605602, 29.322384, 33.027302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608800, 0.581711, -0.539421,
		-0.789958, -0.507077, 0.344730,
		-0.072994, 0.635992, 0.768236,
		33.583702, 29.513182, 33.257774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904575, 29.238279, 32.833611>,  <33.634800, 29.067987, 32.720009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904575, 29.238279, 32.833611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116753, 29.545630, 32.976849>,  <33.244057, 29.730040, 33.062794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116753, 29.545630, 32.976849>,  <32.904575, 29.238279, 32.833611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116753, 29.545630, 32.976849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630436, 0.639959, -0.439320,
		-0.566732, 0.007273, 0.823870,
		0.530439, 0.768375, 0.358100,
		33.275883, 29.776142, 33.084278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483360, 29.819365, 33.187313>,  <32.904575, 29.238279, 32.833611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483360, 29.819365, 33.187313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814854, 30.007002, 33.065224>,  <33.013748, 30.119583, 32.991970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814854, 30.007002, 33.065224>,  <32.483360, 29.819365, 33.187313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814854, 30.007002, 33.065224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556064, 0.751815, -0.354354,
		0.063246, 0.463387, 0.883896,
		0.828729, 0.469092, -0.305222,
		33.063473, 30.147730, 32.973656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242531, 30.513844, 33.043125>,  <32.483360, 29.819365, 33.187313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242531, 30.513844, 33.043125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600719, 30.486164, 32.867245>,  <32.815632, 30.469557, 32.761715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600719, 30.486164, 32.867245>,  <32.242531, 30.513844, 33.043125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600719, 30.486164, 32.867245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204070, 0.814082, -0.543716,
		0.395578, 0.576613, 0.714867,
		0.895474, -0.069199, -0.439702,
		32.869362, 30.465405, 32.735332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373062, 31.204811, 32.810677>,  <32.242531, 30.513844, 33.043125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373062, 31.204811, 32.810677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604164, 30.946672, 32.610790>,  <32.742825, 30.791788, 32.490856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604164, 30.946672, 32.610790>,  <32.373062, 31.204811, 32.810677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604164, 30.946672, 32.610790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046119, 0.585457, -0.809390,
		0.814903, 0.490679, 0.308491,
		0.577759, -0.645348, -0.499720,
		32.777493, 30.753069, 32.460873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804214, 31.534933, 32.461750>,  <32.373062, 31.204811, 32.810677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804214, 31.534933, 32.461750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821690, 31.189259, 32.261242>,  <32.832176, 30.981853, 32.140938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821690, 31.189259, 32.261242>,  <32.804214, 31.534933, 32.461750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821690, 31.189259, 32.261242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074101, 0.503175, -0.861002,
		0.996293, 0.000474, 0.086021,
		0.043692, -0.864185, -0.501274,
		32.834797, 30.930004, 32.110859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234943, 31.745445, 31.816820>,  <32.804214, 31.534933, 32.461750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234943, 31.745445, 31.816820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098824, 31.380630, 31.725266>,  <33.017151, 31.161741, 31.670332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098824, 31.380630, 31.725266>,  <33.234943, 31.745445, 31.816820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098824, 31.380630, 31.725266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215101, 0.312463, -0.925256,
		0.915384, -0.265630, -0.302510,
		-0.340299, -0.912035, -0.228887,
		32.996735, 31.107019, 31.656599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545052, 31.624430, 31.224623>,  <33.234943, 31.745445, 31.816820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545052, 31.624430, 31.224623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210678, 31.405132, 31.234783>,  <33.010056, 31.273554, 31.240879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210678, 31.405132, 31.234783>,  <33.545052, 31.624430, 31.224623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210678, 31.405132, 31.234783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136434, 0.162756, -0.977188,
		0.531603, -0.820329, -0.210852,
		-0.835933, -0.548244, 0.025399,
		32.959900, 31.240660, 31.242403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607067, 31.238333, 30.550745>,  <33.545052, 31.624430, 31.224623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607067, 31.238333, 30.550745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229282, 31.199734, 30.676399>,  <33.002613, 31.176575, 30.751793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229282, 31.199734, 30.676399>,  <33.607067, 31.238333, 30.550745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229282, 31.199734, 30.676399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328388, 0.240871, -0.913314,
		0.012466, -0.965748, -0.259182,
		-0.944461, -0.096497, 0.314137,
		32.945946, 31.170784, 30.770639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346561, 30.828182, 30.146311>,  <33.607067, 31.238333, 30.550745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346561, 30.828182, 30.146311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021824, 31.018421, 30.281796>,  <32.826981, 31.132565, 30.363087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021824, 31.018421, 30.281796>,  <33.346561, 30.828182, 30.146311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021824, 31.018421, 30.281796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207550, 0.307156, -0.928751,
		-0.545747, -0.824296, -0.150651,
		-0.811839, 0.475596, 0.338712,
		32.778271, 31.161100, 30.383410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829361, 30.829561, 29.687019>,  <33.346561, 30.828182, 30.146311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829361, 30.829561, 29.687019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671371, 31.129696, 29.899055>,  <32.576576, 31.309776, 30.026278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671371, 31.129696, 29.899055>,  <32.829361, 30.829561, 29.687019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671371, 31.129696, 29.899055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333910, 0.420293, -0.843717,
		-0.855863, -0.510247, 0.084541,
		-0.394972, 0.750335, 0.530090,
		32.552879, 31.354795, 30.058083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188717, 30.958828, 29.421377>,  <32.829361, 30.829561, 29.687019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188717, 30.958828, 29.421377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286057, 31.296246, 29.612881>,  <32.344460, 31.498697, 29.727783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286057, 31.296246, 29.612881>,  <32.188717, 30.958828, 29.421377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286057, 31.296246, 29.612881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281821, 0.533796, -0.797270,
		-0.928094, 0.059092, 0.367628,
		0.243351, 0.843546, 0.478759,
		32.359062, 31.549309, 29.756508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502165, 31.345091, 29.472368>,  <32.188717, 30.958828, 29.421377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502165, 31.345091, 29.472368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792284, 31.618196, 29.507647>,  <31.966354, 31.782061, 29.528814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792284, 31.618196, 29.507647>,  <31.502165, 31.345091, 29.472368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792284, 31.618196, 29.507647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475830, 0.589761, -0.652509,
		-0.497525, 0.431296, 0.752631,
		0.725297, 0.682764, 0.088197,
		32.009872, 31.823025, 29.534105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167233, 31.953859, 29.586145>,  <31.502165, 31.345091, 29.472368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167233, 31.953859, 29.586145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523539, 32.084587, 29.459827>,  <31.737322, 32.163025, 29.384037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523539, 32.084587, 29.459827>,  <31.167233, 31.953859, 29.586145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523539, 32.084587, 29.459827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454414, 0.650927, -0.608113,
		0.006816, 0.685187, 0.728335,
		0.890764, 0.326821, -0.315795,
		31.790768, 32.182632, 29.365089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153976, 32.742245, 29.518553>,  <31.167233, 31.953859, 29.586145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153976, 32.742245, 29.518553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443895, 32.603718, 29.280315>,  <31.617847, 32.520603, 29.137373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443895, 32.603718, 29.280315>,  <31.153976, 32.742245, 29.518553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443895, 32.603718, 29.280315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299026, 0.620684, -0.724799,
		0.620684, 0.703432, 0.346315,
		0.724799, -0.346315, -0.595594,
		31.661335, 32.499825, 29.101637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513741, 33.394825, 29.356636>,  <31.153976, 32.742245, 29.518553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513741, 33.394825, 29.356636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616911, 33.115822, 29.089216>,  <31.678814, 32.948421, 28.928764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616911, 33.115822, 29.089216>,  <31.513741, 33.394825, 29.356636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616911, 33.115822, 29.089216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251708, 0.619557, -0.743500,
		0.932800, 0.360048, -0.015767,
		0.257927, -0.697506, -0.668550,
		31.694288, 32.906570, 28.888651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982744, 33.656898, 28.874462>,  <31.513741, 33.394825, 29.356636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982744, 33.656898, 28.874462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811914, 33.340992, 28.698338>,  <31.709415, 33.151447, 28.592663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811914, 33.340992, 28.698338>,  <31.982744, 33.656898, 28.874462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811914, 33.340992, 28.698338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280393, 0.578622, -0.765883,
		0.859643, -0.203631, -0.468560,
		-0.427076, -0.789767, -0.440311,
		31.683792, 33.104061, 28.566244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290371, 33.687649, 28.143148>,  <31.982744, 33.656898, 28.874462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290371, 33.687649, 28.143148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960835, 33.461056, 28.135250>,  <31.763113, 33.325100, 28.130510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960835, 33.461056, 28.135250>,  <32.290371, 33.687649, 28.143148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960835, 33.461056, 28.135250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291859, 0.453800, -0.841952,
		0.485918, -0.687864, -0.539191,
		-0.823833, -0.566488, -0.019750,
		31.713684, 33.291111, 28.129326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279617, 33.331940, 27.533604>,  <32.290371, 33.687649, 28.143148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279617, 33.331940, 27.533604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895941, 33.369400, 27.640318>,  <31.665733, 33.391876, 27.704346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895941, 33.369400, 27.640318>,  <32.279617, 33.331940, 27.533604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895941, 33.369400, 27.640318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231373, 0.282345, -0.930993,
		-0.162516, -0.954731, -0.249155,
		-0.959195, 0.093654, 0.266785,
		31.608183, 33.397495, 27.720354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880919, 33.315609, 26.965855>,  <32.279617, 33.331940, 27.533604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880919, 33.315609, 26.965855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545158, 33.371330, 27.175999>,  <31.343702, 33.404762, 27.302086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545158, 33.371330, 27.175999>,  <31.880919, 33.315609, 26.965855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545158, 33.371330, 27.175999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444537, 0.380194, -0.811073,
		-0.312721, -0.914357, -0.257211,
		-0.839400, 0.139300, 0.525360,
		31.293339, 33.413120, 27.333607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305693, 33.043247, 26.609055>,  <31.880919, 33.315609, 26.965855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305693, 33.043247, 26.609055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168423, 33.340767, 26.838486>,  <31.086061, 33.519279, 26.976145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168423, 33.340767, 26.838486>,  <31.305693, 33.043247, 26.609055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168423, 33.340767, 26.838486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499217, 0.372832, -0.782163,
		-0.795621, -0.554758, 0.243371,
		-0.343175, 0.743801, 0.573578,
		31.065470, 33.563908, 27.010559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540468, 33.137058, 26.423607>,  <31.305693, 33.043247, 26.609055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540468, 33.137058, 26.423607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669954, 33.472866, 26.598156>,  <30.747646, 33.674351, 26.702885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669954, 33.472866, 26.598156>,  <30.540468, 33.137058, 26.423607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669954, 33.472866, 26.598156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506329, 0.543318, -0.669654,
		-0.799274, -0.004169, 0.600952,
		0.323716, 0.839517, 0.436371,
		30.767069, 33.724720, 26.729067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975361, 33.644711, 26.316109>,  <30.540468, 33.137058, 26.423607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975361, 33.644711, 26.316109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311163, 33.852852, 26.378672>,  <30.512644, 33.977737, 26.416208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311163, 33.852852, 26.378672>,  <29.975361, 33.644711, 26.316109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311163, 33.852852, 26.378672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328927, 0.715816, -0.615966,
		-0.432478, 0.465661, 0.772090,
		0.839506, 0.520353, 0.156406,
		30.563015, 34.008957, 26.425594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792496, 34.242470, 26.173212>,  <29.975361, 33.644711, 26.316109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792496, 34.242470, 26.173212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187489, 34.301781, 26.151699>,  <30.424484, 34.337368, 26.138792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187489, 34.301781, 26.151699>,  <29.792496, 34.242470, 26.173212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187489, 34.301781, 26.151699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143223, 0.700109, -0.699525,
		-0.066069, 0.698472, 0.712581,
		0.987483, 0.148274, -0.053782,
		30.483734, 34.346264, 26.135565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843842, 34.974041, 26.211927>,  <29.792496, 34.242470, 26.173212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843842, 34.974041, 26.211927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188404, 34.858707, 26.044672>,  <30.395142, 34.789505, 25.944319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188404, 34.858707, 26.044672>,  <29.843842, 34.974041, 26.211927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188404, 34.858707, 26.044672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087155, 0.727123, -0.680952,
		0.500384, 0.623019, 0.601218,
		0.861406, -0.288338, -0.418140,
		30.446825, 34.772205, 25.919230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152147, 35.588257, 25.932407>,  <29.843842, 34.974041, 26.211927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152147, 35.588257, 25.932407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356197, 35.309471, 25.730806>,  <30.478628, 35.142200, 25.609846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356197, 35.309471, 25.730806>,  <30.152147, 35.588257, 25.932407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356197, 35.309471, 25.730806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047531, 0.607930, -0.792567,
		0.858785, 0.380354, 0.343248,
		0.510127, -0.696960, -0.504002,
		30.509235, 35.100384, 25.579605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778965, 35.893852, 25.708595>,  <30.152147, 35.588257, 25.932407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778965, 35.893852, 25.708595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685995, 35.571350, 25.490999>,  <30.630213, 35.377850, 25.360441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685995, 35.571350, 25.490999>,  <30.778965, 35.893852, 25.708595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685995, 35.571350, 25.490999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055104, 0.569327, -0.820262,
		0.971052, -0.160673, -0.176754,
		-0.232425, -0.806258, -0.543992,
		30.616268, 35.329472, 25.327801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454054, 35.723125, 25.204201>,  <30.778965, 35.893852, 25.708595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454054, 35.723125, 25.204201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079649, 35.632751, 25.096251>,  <30.855005, 35.578529, 25.031481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079649, 35.632751, 25.096251>,  <31.454054, 35.723125, 25.204201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079649, 35.632751, 25.096251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007533, 0.779458, -0.626409,
		0.351880, -0.584295, -0.731286,
		-0.936014, -0.225930, -0.269874,
		30.798845, 35.564972, 25.015287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400654, 35.565823, 24.394896>,  <31.454054, 35.723125, 25.204201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400654, 35.565823, 24.394896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043373, 35.690422, 24.524609>,  <30.829004, 35.765182, 24.602436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043373, 35.690422, 24.524609>,  <31.400654, 35.565823, 24.394896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043373, 35.690422, 24.524609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032845, 0.674053, -0.737952,
		-0.448459, -0.669790, -0.591832,
		-0.893199, 0.311503, 0.324285,
		30.775414, 35.783875, 24.621895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094891, 35.838493, 23.812307>,  <31.400654, 35.565823, 24.394896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094891, 35.838493, 23.812307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892591, 36.003426, 24.115412>,  <30.771212, 36.102383, 24.297276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892591, 36.003426, 24.115412>,  <31.094891, 35.838493, 23.812307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892591, 36.003426, 24.115412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206748, 0.794850, -0.570498,
		-0.837540, -0.445195, -0.316746,
		-0.505749, 0.412328, 0.757762,
		30.740868, 36.127125, 24.342741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483475, 36.131939, 23.555288>,  <31.094891, 35.838493, 23.812307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483475, 36.131939, 23.555288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522909, 36.331161, 23.899897>,  <30.546570, 36.450695, 24.106663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522909, 36.331161, 23.899897>,  <30.483475, 36.131939, 23.555288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522909, 36.331161, 23.899897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189860, 0.859251, -0.475017,
		-0.976849, -0.116739, 0.179270,
		0.098585, 0.498056, 0.861523,
		30.552485, 36.480579, 24.158354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061226, 36.809998, 23.514507>,  <30.483475, 36.131939, 23.555288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061226, 36.809998, 23.514507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287239, 36.920223, 23.825584>,  <30.422846, 36.986359, 24.012230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287239, 36.920223, 23.825584>,  <30.061226, 36.809998, 23.514507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287239, 36.920223, 23.825584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105036, 0.958931, -0.263473,
		-0.818356, 0.067185, 0.570771,
		0.565031, 0.275566, 0.777691,
		30.456749, 37.002892, 24.058891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702349, 37.406216, 23.734838>,  <30.061226, 36.809998, 23.514507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702349, 37.406216, 23.734838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074612, 37.416313, 23.880846>,  <30.297970, 37.422371, 23.968451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074612, 37.416313, 23.880846>,  <29.702349, 37.406216, 23.734838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074612, 37.416313, 23.880846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098620, 0.943393, -0.316675,
		-0.352350, 0.330715, 0.875487,
		0.930657, 0.025240, 0.365020,
		30.353809, 37.423885, 23.990353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780581, 37.994617, 24.053740>,  <29.702349, 37.406216, 23.734838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780581, 37.994617, 24.053740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159857, 37.889099, 23.982914>,  <30.387423, 37.825790, 23.940418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159857, 37.889099, 23.982914>,  <29.780581, 37.994617, 24.053740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159857, 37.889099, 23.982914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158175, 0.875294, -0.456991,
		0.275534, 0.405307, 0.871669,
		0.948189, -0.263793, -0.177064,
		30.444313, 37.809959, 23.929794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176529, 38.545223, 24.280794>,  <29.780581, 37.994617, 24.053740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176529, 38.545223, 24.280794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369352, 38.337368, 23.998632>,  <30.485046, 38.212654, 23.829336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369352, 38.337368, 23.998632>,  <30.176529, 38.545223, 24.280794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369352, 38.337368, 23.998632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294963, 0.854383, -0.427815,
		0.824996, -0.001837, 0.565136,
		0.482057, -0.519640, -0.705404,
		30.513969, 38.181477, 23.787010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819122, 38.776863, 24.220919>,  <30.176529, 38.545223, 24.280794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819122, 38.776863, 24.220919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731508, 38.627701, 23.860260>,  <30.678940, 38.538204, 23.643866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731508, 38.627701, 23.860260>,  <30.819122, 38.776863, 24.220919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731508, 38.627701, 23.860260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213324, 0.883425, -0.417196,
		0.952112, -0.283722, -0.113949,
		-0.219033, -0.372910, -0.901645,
		30.665798, 38.515827, 23.589767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357079, 39.032246, 23.763718>,  <30.819122, 38.776863, 24.220919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357079, 39.032246, 23.763718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079685, 38.922199, 23.497368>,  <30.913248, 38.856171, 23.337559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079685, 38.922199, 23.497368>,  <31.357079, 39.032246, 23.763718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079685, 38.922199, 23.497368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166942, 0.837706, -0.519979,
		0.700862, -0.471761, -0.535008,
		-0.693486, -0.275118, -0.665873,
		30.871639, 38.839664, 23.297606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610006, 39.177662, 23.129190>,  <31.357079, 39.032246, 23.763718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610006, 39.177662, 23.129190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215597, 39.137768, 23.075804>,  <30.978952, 39.113831, 23.043772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215597, 39.137768, 23.075804>,  <31.610006, 39.177662, 23.129190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215597, 39.137768, 23.075804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015175, 0.851473, -0.524178,
		0.165921, -0.514826, -0.841085,
		-0.986022, -0.099736, -0.133465,
		30.919790, 39.107845, 23.035765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468437, 39.513088, 22.537905>,  <31.610006, 39.177662, 23.129190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468437, 39.513088, 22.537905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083174, 39.487152, 22.642305>,  <30.852016, 39.471592, 22.704945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083174, 39.487152, 22.642305>,  <31.468437, 39.513088, 22.537905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083174, 39.487152, 22.642305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194762, 0.837411, -0.510697,
		-0.185452, -0.542715, -0.819187,
		-0.963159, -0.064837, 0.261000,
		30.794226, 39.467701, 22.720606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971649, 39.563698, 21.918524>,  <31.468437, 39.513088, 22.537905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971649, 39.563698, 21.918524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750454, 39.676228, 22.232227>,  <30.617737, 39.743744, 22.420450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750454, 39.676228, 22.232227>,  <30.971649, 39.563698, 21.918524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750454, 39.676228, 22.232227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451686, 0.689735, -0.565903,
		-0.700131, -0.667176, -0.254347,
		-0.552989, 0.281321, 0.784259,
		30.584557, 39.760624, 22.467505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379930, 39.784462, 21.571075>,  <30.971649, 39.563698, 21.918524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379930, 39.784462, 21.571075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324566, 39.911373, 21.946346>,  <30.291348, 39.987522, 22.171509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324566, 39.911373, 21.946346>,  <30.379930, 39.784462, 21.571075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324566, 39.911373, 21.946346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593462, 0.731811, -0.335047,
		-0.792871, -0.603146, 0.087002,
		-0.138413, 0.317281, 0.938176,
		30.283041, 40.006557, 22.227798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675241, 39.947796, 21.728018>,  <30.379930, 39.784462, 21.571075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675241, 39.947796, 21.728018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883192, 40.154930, 21.999775>,  <30.007963, 40.279209, 22.162830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883192, 40.154930, 21.999775>,  <29.675241, 39.947796, 21.728018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883192, 40.154930, 21.999775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530825, 0.818959, -0.218014,
		-0.669292, -0.247299, 0.700637,
		0.519878, 0.517831, 0.679395,
		30.039156, 40.310280, 22.203594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190306, 40.250141, 22.162977>,  <29.675241, 39.947796, 21.728018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190306, 40.250141, 22.162977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512482, 40.486900, 22.150854>,  <29.705788, 40.628956, 22.143579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512482, 40.486900, 22.150854>,  <29.190306, 40.250141, 22.162977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512482, 40.486900, 22.150854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592506, 0.802935, -0.065055,
		-0.014170, 0.070356, 0.997421,
		0.805441, 0.591900, -0.030309,
		29.754114, 40.664471, 22.141762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026207, 40.852402, 22.606068>,  <29.190306, 40.250141, 22.162977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026207, 40.852402, 22.606068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296659, 40.929291, 22.321562>,  <29.458931, 40.975422, 22.150858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296659, 40.929291, 22.321562>,  <29.026207, 40.852402, 22.606068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296659, 40.929291, 22.321562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410953, 0.899640, -0.147529,
		0.611524, 0.392045, 0.687269,
		0.676133, 0.192218, -0.711264,
		29.499498, 40.986958, 22.108183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416197, 41.395256, 23.170094>,  <29.026207, 40.852402, 22.606068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416197, 41.395256, 23.170094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148985, 41.684566, 23.240076>,  <28.988657, 41.858150, 23.282064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148985, 41.684566, 23.240076>,  <29.416197, 41.395256, 23.170094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148985, 41.684566, 23.240076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584538, -0.364552, -0.724857,
		-0.460491, -0.586494, 0.666313,
		-0.668030, 0.723275, 0.174955,
		28.948576, 41.901550, 23.292562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038149, 41.700882, 23.462952>,  <29.416197, 41.395256, 23.170094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038149, 41.700882, 23.462952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203144, 41.898079, 23.769367>,  <30.302141, 42.016396, 23.953217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203144, 41.898079, 23.769367>,  <30.038149, 41.700882, 23.462952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203144, 41.898079, 23.769367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425199, 0.847881, -0.316706,
		-0.805642, -0.195081, 0.559360,
		0.412488, 0.492991, 0.766038,
		30.326891, 42.045975, 23.999178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423319, 42.058437, 23.663385>,  <30.038149, 41.700882, 23.462952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423319, 42.058437, 23.663385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769053, 42.216648, 23.787634>,  <29.976492, 42.311577, 23.862183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769053, 42.216648, 23.787634>,  <29.423319, 42.058437, 23.663385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769053, 42.216648, 23.787634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291345, 0.897233, -0.331798,
		-0.409934, 0.196287, 0.890744,
		0.864333, 0.395530, 0.310620,
		30.028353, 42.335308, 23.880819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265728, 42.671593, 23.992113>,  <29.423319, 42.058437, 23.663385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265728, 42.671593, 23.992113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641195, 42.661812, 23.854532>,  <29.866476, 42.655945, 23.771984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641195, 42.661812, 23.854532>,  <29.265728, 42.671593, 23.992113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641195, 42.661812, 23.854532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138608, 0.886589, -0.441303,
		0.315734, 0.461912, 0.828824,
		0.938669, -0.024453, -0.343950,
		29.922796, 42.654476, 23.751347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678270, 43.228806, 24.260071>,  <29.265728, 42.671593, 23.992113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678270, 43.228806, 24.260071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880701, 43.112934, 23.935116>,  <30.002159, 43.043411, 23.740143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880701, 43.112934, 23.935116>,  <29.678270, 43.228806, 24.260071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880701, 43.112934, 23.935116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035982, 0.934001, -0.355455,
		0.861738, 0.209119, 0.462252,
		0.506076, -0.289676, -0.812388,
		30.032524, 43.026031, 23.691399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338608, 43.600018, 24.190624>,  <29.678270, 43.228806, 24.260071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338608, 43.600018, 24.190624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208860, 43.481209, 23.831390>,  <30.131012, 43.409924, 23.615850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208860, 43.481209, 23.831390>,  <30.338608, 43.600018, 24.190624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208860, 43.481209, 23.831390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073827, 0.954475, -0.289011,
		0.943045, -0.027444, -0.331531,
		-0.324370, -0.297026, -0.898087,
		30.111549, 43.392101, 23.561964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886118, 43.189484, 24.547247>,  <30.338608, 43.600018, 24.190624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886118, 43.189484, 24.547247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656706, 42.931793, 24.344849>,  <30.519058, 42.777180, 24.223410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656706, 42.931793, 24.344849>,  <30.886118, 43.189484, 24.547247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656706, 42.931793, 24.344849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164048, -0.695496, 0.699552,
		-0.802591, 0.318206, 0.504572,
		-0.573529, -0.644229, -0.505998,
		30.484648, 42.738525, 24.193048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470407, 42.770588, 25.099794>,  <30.886118, 43.189484, 24.547247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470407, 42.770588, 25.099794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434851, 42.524303, 24.786619>,  <30.413517, 42.376534, 24.598715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434851, 42.524303, 24.786619>,  <30.470407, 42.770588, 25.099794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434851, 42.524303, 24.786619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099330, -0.787611, 0.608113,
		-0.991076, -0.023714, 0.131170,
		-0.088891, -0.615716, -0.782938,
		30.408184, 42.339588, 24.551737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148378, 42.151295, 25.391258>,  <30.470407, 42.770588, 25.099794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148378, 42.151295, 25.391258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285009, 42.046032, 25.030355>,  <30.366989, 41.982876, 24.813814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285009, 42.046032, 25.030355>,  <30.148378, 42.151295, 25.391258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285009, 42.046032, 25.030355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019984, -0.957750, 0.286908,
		-0.939640, -0.116033, -0.321891,
		0.341582, -0.263157, -0.902258,
		30.387484, 41.967083, 24.759678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676676, 41.643665, 25.098173>,  <30.148378, 42.151295, 25.391258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676676, 41.643665, 25.098173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037766, 41.609005, 24.929611>,  <30.254419, 41.588211, 24.828474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037766, 41.609005, 24.929611>,  <29.676676, 41.643665, 25.098173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037766, 41.609005, 24.929611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046783, -0.953929, 0.296364,
		-0.427667, -0.287250, -0.857081,
		0.902725, -0.086648, -0.421402,
		30.308582, 41.583012, 24.803190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711939, 41.023380, 24.802597>,  <29.676676, 41.643665, 25.098173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711939, 41.023380, 24.802597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104095, 41.097256, 24.830091>,  <30.339390, 41.141579, 24.846588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104095, 41.097256, 24.830091>,  <29.711939, 41.023380, 24.802597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104095, 41.097256, 24.830091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154011, -0.935691, 0.317431,
		0.122940, -0.300620, -0.945787,
		0.980391, 0.184687, 0.068735,
		30.398212, 41.152660, 24.850712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011690, 40.411594, 24.519274>,  <29.711939, 41.023380, 24.802597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011690, 40.411594, 24.519274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277590, 40.619892, 24.733538>,  <30.437130, 40.744873, 24.862097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277590, 40.619892, 24.733538>,  <30.011690, 40.411594, 24.519274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277590, 40.619892, 24.733538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370416, -0.852423, 0.369007,
		0.648769, -0.046880, -0.759540,
		0.664749, 0.520746, 0.535661,
		30.477015, 40.776115, 24.894236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616459, 39.998047, 24.460032>,  <30.011690, 40.411594, 24.519274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616459, 39.998047, 24.460032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683672, 40.225883, 24.781860>,  <30.724001, 40.362583, 24.974957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683672, 40.225883, 24.781860>,  <30.616459, 39.998047, 24.460032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683672, 40.225883, 24.781860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191088, -0.819515, 0.540260,
		0.967083, 0.062962, -0.246548,
		0.168034, 0.569589, 0.804570,
		30.734081, 40.396759, 25.023232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261839, 39.820080, 24.707396>,  <30.616459, 39.998047, 24.460032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261839, 39.820080, 24.707396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097683, 40.014084, 25.016291>,  <30.999189, 40.130486, 25.201628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097683, 40.014084, 25.016291>,  <31.261839, 39.820080, 24.707396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097683, 40.014084, 25.016291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195004, -0.780569, 0.593873,
		0.890817, 0.394308, 0.225759,
		-0.410390, 0.485008, 0.772236,
		30.974566, 40.159588, 25.247961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741539, 39.760792, 25.317171>,  <31.261839, 39.820080, 24.707396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741539, 39.760792, 25.317171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374641, 39.839218, 25.455864>,  <31.154503, 39.886272, 25.539080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374641, 39.839218, 25.455864>,  <31.741539, 39.760792, 25.317171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374641, 39.839218, 25.455864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119545, -0.694844, 0.709155,
		0.379964, 0.691918, 0.613903,
		-0.917244, 0.196064, 0.346731,
		31.099468, 39.898037, 25.559883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820108, 39.650120, 26.032301>,  <31.741539, 39.760792, 25.317171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820108, 39.650120, 26.032301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423683, 39.663311, 25.980602>,  <31.185827, 39.671227, 25.949583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423683, 39.663311, 25.980602>,  <31.820108, 39.650120, 26.032301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423683, 39.663311, 25.980602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125098, -0.566029, 0.814838,
		-0.046285, 0.823726, 0.565097,
		-0.991064, 0.032977, -0.129245,
		31.126364, 39.673203, 25.941828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608458, 39.844769, 26.717531>,  <31.820108, 39.650120, 26.032301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608458, 39.844769, 26.717531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313078, 39.664421, 26.516968>,  <31.135851, 39.556213, 26.396629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313078, 39.664421, 26.516968>,  <31.608458, 39.844769, 26.717531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313078, 39.664421, 26.516968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059751, -0.696909, 0.714666,
		-0.671657, 0.557704, 0.487692,
		-0.738449, -0.450870, -0.501407,
		31.091543, 39.529160, 26.366545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991215, 39.637436, 27.229692>,  <31.608458, 39.844769, 26.717531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991215, 39.637436, 27.229692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993195, 39.409721, 26.900843>,  <30.994383, 39.273090, 26.703533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993195, 39.409721, 26.900843>,  <30.991215, 39.637436, 27.229692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993195, 39.409721, 26.900843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043616, -0.821473, 0.568576,
		-0.999036, 0.033044, -0.028895,
		0.004948, -0.569289, -0.822123,
		30.994678, 39.238934, 26.654205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485157, 39.141865, 27.395311>,  <30.991215, 39.637436, 27.229692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485157, 39.141865, 27.395311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710447, 38.980076, 27.107096>,  <30.845621, 38.883003, 26.934166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710447, 38.980076, 27.107096>,  <30.485157, 39.141865, 27.395311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710447, 38.980076, 27.107096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043698, -0.856204, 0.514787,
		-0.825149, -0.321425, -0.464559,
		0.563223, -0.404476, -0.720542,
		30.879414, 38.858734, 26.890934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361664, 38.454533, 27.496855>,  <30.485157, 39.141865, 27.395311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361664, 38.454533, 27.496855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666876, 38.427612, 27.239716>,  <30.850004, 38.411461, 27.085432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666876, 38.427612, 27.239716>,  <30.361664, 38.454533, 27.496855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666876, 38.427612, 27.239716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256549, -0.881332, 0.396783,
		-0.593266, -0.467680, -0.655218,
		0.763032, -0.067302, -0.642848,
		30.895784, 38.407421, 27.046862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387842, 37.775639, 27.134266>,  <30.361664, 38.454533, 27.496855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387842, 37.775639, 27.134266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760721, 37.917328, 27.104500>,  <30.984447, 38.002342, 27.086641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760721, 37.917328, 27.104500>,  <30.387842, 37.775639, 27.134266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760721, 37.917328, 27.104500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352397, -0.841268, 0.409981,
		0.082623, -0.408406, -0.909053,
		0.932196, 0.354222, -0.074413,
		31.040380, 38.023594, 27.082176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817760, 37.286835, 26.781717>,  <30.387842, 37.775639, 27.134266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817760, 37.286835, 26.781717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068253, 37.505962, 27.003613>,  <31.218548, 37.637440, 27.136749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068253, 37.505962, 27.003613>,  <30.817760, 37.286835, 26.781717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068253, 37.505962, 27.003613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415829, -0.836566, 0.356711,
		0.659488, 0.007294, -0.751680,
		0.626228, 0.547817, 0.554739,
		31.256121, 37.670307, 27.170034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359287, 36.933773, 26.711796>,  <30.817760, 37.286835, 26.781717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359287, 36.933773, 26.711796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419447, 37.149540, 27.043196>,  <31.455544, 37.278999, 27.242035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419447, 37.149540, 27.043196>,  <31.359287, 36.933773, 26.711796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419447, 37.149540, 27.043196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238187, -0.833116, 0.499184,
		0.959504, 0.122261, -0.253781,
		0.150398, 0.539416, 0.828499,
		31.464567, 37.311363, 27.291746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926508, 36.625057, 27.051229>,  <31.359287, 36.933773, 26.711796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926508, 36.625057, 27.051229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810684, 36.861088, 27.352684>,  <31.741190, 37.002705, 27.533558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810684, 36.861088, 27.352684>,  <31.926508, 36.625057, 27.051229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810684, 36.861088, 27.352684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199888, -0.732729, 0.650502,
		0.936055, 0.339003, 0.094222,
		-0.289561, 0.590072, 0.753638,
		31.723816, 37.038109, 27.578775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435703, 36.516335, 27.667955>,  <31.926508, 36.625057, 27.051229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435703, 36.516335, 27.667955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082031, 36.632851, 27.814039>,  <31.869827, 36.702759, 27.901690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082031, 36.632851, 27.814039>,  <32.435703, 36.516335, 27.667955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082031, 36.632851, 27.814039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075691, -0.682126, 0.727307,
		0.460973, 0.670713, 0.581074,
		-0.884180, 0.291287, 0.365208,
		31.816776, 36.720238, 27.923601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579788, 36.590282, 28.358353>,  <32.435703, 36.516335, 27.667955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579788, 36.590282, 28.358353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183857, 36.552898, 28.315460>,  <31.946297, 36.530468, 28.289724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183857, 36.552898, 28.315460>,  <32.579788, 36.590282, 28.358353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183857, 36.552898, 28.315460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027527, -0.613735, 0.789032,
		-0.139556, 0.783960, 0.604922,
		-0.989831, -0.093462, -0.107230,
		31.886908, 36.524860, 28.283291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332771, 36.652184, 28.960896>,  <32.579788, 36.590282, 28.358353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332771, 36.652184, 28.960896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009541, 36.505749, 28.776295>,  <31.815601, 36.417885, 28.665533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009541, 36.505749, 28.776295>,  <32.332771, 36.652184, 28.960896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009541, 36.505749, 28.776295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145274, -0.635392, 0.758401,
		-0.570880, 0.679893, 0.460263,
		-0.808079, -0.366092, -0.461503,
		31.767117, 36.395920, 28.637844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805391, 36.731331, 29.440353>,  <32.332771, 36.652184, 28.960896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805391, 36.731331, 29.440353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740778, 36.433422, 29.181364>,  <31.702009, 36.254677, 29.025970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740778, 36.433422, 29.181364>,  <31.805391, 36.731331, 29.440353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740778, 36.433422, 29.181364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083953, -0.643342, 0.760962,
		-0.983290, 0.177279, 0.041396,
		-0.161534, -0.744771, -0.647475,
		31.692318, 36.209991, 28.987122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181414, 36.333191, 29.847284>,  <31.805391, 36.731331, 29.440353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181414, 36.333191, 29.847284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329363, 36.095657, 29.561472>,  <31.418133, 35.953136, 29.389984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329363, 36.095657, 29.561472>,  <31.181414, 36.333191, 29.847284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329363, 36.095657, 29.561472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049114, -0.755500, 0.653305,
		-0.927784, -0.276733, -0.250272,
		0.369871, -0.593834, -0.714532,
		31.440325, 35.917507, 29.347113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717987, 35.845024, 29.773577>,  <31.181414, 36.333191, 29.847284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717987, 35.845024, 29.773577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040861, 35.668610, 29.616638>,  <31.234587, 35.562759, 29.522476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040861, 35.668610, 29.616638>,  <30.717987, 35.845024, 29.773577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040861, 35.668610, 29.616638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034715, -0.698973, 0.714305,
		-0.589274, -0.562958, -0.579512,
		0.807187, -0.441039, -0.392343,
		31.283016, 35.536297, 29.498936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550955, 35.088902, 29.739843>,  <30.717987, 35.845024, 29.773577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550955, 35.088902, 29.739843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948498, 35.131889, 29.729298>,  <31.187023, 35.157681, 29.722969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948498, 35.131889, 29.729298>,  <30.550955, 35.088902, 29.739843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948498, 35.131889, 29.729298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097713, -0.740532, 0.664879,
		0.051928, -0.663373, -0.746486,
		0.993859, 0.107467, -0.026366,
		31.246656, 35.164131, 29.721388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845127, 34.407413, 29.719690>,  <30.550955, 35.088902, 29.739843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845127, 34.407413, 29.719690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139448, 34.651688, 29.836761>,  <31.316040, 34.798252, 29.907003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139448, 34.651688, 29.836761>,  <30.845127, 34.407413, 29.719690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139448, 34.651688, 29.836761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232516, -0.633741, 0.737773,
		0.636028, -0.474802, -0.608302,
		0.735802, 0.610684, 0.292678,
		31.360189, 34.834892, 29.924564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402920, 34.042942, 29.795980>,  <30.845127, 34.407413, 29.719690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402920, 34.042942, 29.795980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484665, 34.352188, 30.036156>,  <31.533712, 34.537735, 30.180260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484665, 34.352188, 30.036156>,  <31.402920, 34.042942, 29.795980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484665, 34.352188, 30.036156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238506, -0.634222, 0.735444,
		0.949395, -0.007089, -0.314004,
		0.204361, 0.773118, 0.600437,
		31.545973, 34.584126, 30.216288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986530, 33.879265, 30.194967>,  <31.402920, 34.042942, 29.795980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986530, 33.879265, 30.194967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854973, 34.191078, 30.408192>,  <31.776039, 34.378166, 30.536125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854973, 34.191078, 30.408192>,  <31.986530, 33.879265, 30.194967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854973, 34.191078, 30.408192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324535, -0.436787, 0.838984,
		0.886851, 0.448934, -0.109330,
		-0.328894, 0.779535, 0.533060,
		31.756304, 34.424938, 30.568110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581188, 34.066669, 30.565767>,  <31.986530, 33.879265, 30.194967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581188, 34.066669, 30.565767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266975, 34.229202, 30.752460>,  <32.078449, 34.326721, 30.864475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266975, 34.229202, 30.752460>,  <32.581188, 34.066669, 30.565767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266975, 34.229202, 30.752460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325921, -0.369479, 0.870207,
		0.526044, 0.835689, 0.157803,
		-0.785527, 0.406336, 0.466731,
		32.031319, 34.351105, 30.892479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885635, 34.323448, 31.238388>,  <32.581188, 34.066669, 30.565767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885635, 34.323448, 31.238388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494068, 34.304882, 31.317951>,  <32.259129, 34.293743, 31.365688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494068, 34.304882, 31.317951>,  <32.885635, 34.323448, 31.238388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494068, 34.304882, 31.317951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204248, -0.221968, 0.953422,
		-0.000098, 0.973949, 0.226768,
		-0.978919, -0.046411, 0.198906,
		32.200394, 34.290958, 31.377623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911091, 34.284428, 31.990219>,  <32.885635, 34.323448, 31.238388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911091, 34.284428, 31.990219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532822, 34.181477, 31.910767>,  <32.305859, 34.119705, 31.863094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532822, 34.181477, 31.910767>,  <32.911091, 34.284428, 31.990219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532822, 34.181477, 31.910767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069921, -0.435658, 0.897392,
		-0.317504, 0.862531, 0.393995,
		-0.945675, -0.257378, -0.198632,
		32.249119, 34.104263, 31.851177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543041, 34.550301, 32.501308>,  <32.911091, 34.284428, 31.990219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543041, 34.550301, 32.501308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319710, 34.254608, 32.350681>,  <32.185711, 34.077190, 32.260303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319710, 34.254608, 32.350681>,  <32.543041, 34.550301, 32.501308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319710, 34.254608, 32.350681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035418, -0.432253, 0.901057,
		-0.828866, 0.516419, 0.215155,
		-0.558324, -0.739235, -0.376570,
		32.152214, 34.032837, 32.237709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979996, 34.432396, 32.949883>,  <32.543041, 34.550301, 32.501308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979996, 34.432396, 32.949883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995520, 34.087223, 32.748352>,  <32.004833, 33.880119, 32.627434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995520, 34.087223, 32.748352>,  <31.979996, 34.432396, 32.949883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995520, 34.087223, 32.748352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138592, -0.503979, 0.852524,
		-0.989589, 0.036739, -0.139156,
		0.038811, -0.862934, -0.503824,
		32.007164, 33.828342, 32.597206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523724, 33.993465, 33.280975>,  <31.979996, 34.432396, 32.949883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523724, 33.993465, 33.280975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768768, 33.749859, 33.079456>,  <31.915794, 33.603695, 32.958546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768768, 33.749859, 33.079456>,  <31.523724, 33.993465, 33.280975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768768, 33.749859, 33.079456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183103, -0.510714, 0.840026,
		-0.768883, -0.606856, -0.201357,
		0.612611, -0.609013, -0.503796,
		31.952551, 33.567154, 32.928318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405991, 33.363113, 33.478596>,  <31.523724, 33.993465, 33.280975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405991, 33.363113, 33.478596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773184, 33.308357, 33.329697>,  <31.993500, 33.275505, 33.240356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773184, 33.308357, 33.329697>,  <31.405991, 33.363113, 33.478596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773184, 33.308357, 33.329697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202549, -0.645134, 0.736734,
		-0.340997, -0.751708, -0.564496,
		0.917984, -0.136886, -0.372247,
		32.048580, 33.267292, 33.218021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630192, 32.561459, 33.594421>,  <31.405991, 33.363113, 33.478596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630192, 32.561459, 33.594421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962507, 32.775032, 33.531559>,  <32.161896, 32.903175, 33.493843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962507, 32.775032, 33.531559>,  <31.630192, 32.561459, 33.594421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962507, 32.775032, 33.531559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491237, -0.570661, 0.658052,
		0.261676, -0.623904, -0.736390,
		0.830790, 0.533938, -0.157156,
		32.211742, 32.935215, 33.484413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171272, 32.071907, 33.674541>,  <31.630192, 32.561459, 33.594421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171272, 32.071907, 33.674541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359150, 32.422512, 33.716732>,  <32.471874, 32.632874, 33.742046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359150, 32.422512, 33.716732>,  <32.171272, 32.071907, 33.674541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359150, 32.422512, 33.716732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751756, -0.459731, 0.472769,
		0.462877, -0.142762, -0.874851,
		0.469689, 0.876508, 0.105476,
		32.500057, 32.685463, 33.748375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793697, 31.854446, 33.699642>,  <32.171272, 32.071907, 33.674541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793697, 31.854446, 33.699642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845840, 32.226902, 33.835873>,  <32.877125, 32.450375, 33.917610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845840, 32.226902, 33.835873>,  <32.793697, 31.854446, 33.699642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845840, 32.226902, 33.835873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699747, -0.329757, 0.633731,
		0.702397, 0.155708, -0.694545,
		0.130354, 0.931137, 0.340576,
		32.884945, 32.506245, 33.938046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504482, 31.831161, 33.858765>,  <32.793697, 31.854446, 33.699642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504482, 31.831161, 33.858765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369469, 32.149178, 34.060349>,  <33.288460, 32.339989, 34.181301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369469, 32.149178, 34.060349>,  <33.504482, 31.831161, 33.858765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369469, 32.149178, 34.060349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717081, -0.129659, 0.684824,
		0.609807, 0.592534, -0.526345,
		-0.337536, 0.795042, 0.503962,
		33.268208, 32.387691, 34.211536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082600, 32.197449, 33.980450>,  <33.504482, 31.831161, 33.858765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082600, 32.197449, 33.980450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807301, 32.316402, 34.245140>,  <33.642120, 32.387775, 34.403954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807301, 32.316402, 34.245140>,  <34.082600, 32.197449, 33.980450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807301, 32.316402, 34.245140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685064, -0.033790, 0.727699,
		0.238762, 0.954161, -0.180468,
		-0.688244, 0.297379, 0.661730,
		33.600826, 32.405617, 34.443661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293522, 32.851398, 34.252651>,  <34.082600, 32.197449, 33.980450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293522, 32.851398, 34.252651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039982, 32.684879, 34.513397>,  <33.887859, 32.584969, 34.669846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039982, 32.684879, 34.513397>,  <34.293522, 32.851398, 34.252651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039982, 32.684879, 34.513397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631342, 0.208396, 0.746979,
		-0.446815, 0.885022, 0.130738,
		-0.633848, -0.416302, 0.651866,
		33.849827, 32.559990, 34.708958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210331, 32.958801, 34.992310>,  <34.293522, 32.851398, 34.252651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210331, 32.958801, 34.992310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553299, 33.135094, 35.098583>,  <34.759079, 33.240871, 35.162346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553299, 33.135094, 35.098583>,  <34.210331, 32.958801, 34.992310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553299, 33.135094, 35.098583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345207, 0.875465, -0.338220,
		-0.381663, 0.198280, 0.902784,
		0.857418, 0.440733, 0.265685,
		34.810524, 33.267315, 35.178288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070381, 33.629829, 35.362885>,  <34.210331, 32.958801, 34.992310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070381, 33.629829, 35.362885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447109, 33.663525, 35.232731>,  <34.673145, 33.683743, 35.154636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447109, 33.663525, 35.232731>,  <34.070381, 33.629829, 35.362885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447109, 33.663525, 35.232731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223434, 0.880135, -0.418856,
		0.251098, 0.467190, 0.847752,
		0.941821, 0.084242, -0.325386,
		34.729656, 33.688797, 35.135117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239655, 34.425659, 35.469193>,  <34.070381, 33.629829, 35.362885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239655, 34.425659, 35.469193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518959, 34.293053, 35.215412>,  <34.686543, 34.213490, 35.063145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518959, 34.293053, 35.215412>,  <34.239655, 34.425659, 35.469193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518959, 34.293053, 35.215412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095600, 0.921546, -0.376317,
		0.709430, 0.202114, 0.675173,
		0.698262, -0.331517, -0.634450,
		34.728439, 34.193596, 35.025078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727539, 34.916912, 35.508888>,  <34.239655, 34.425659, 35.469193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727539, 34.916912, 35.508888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825851, 34.742950, 35.162373>,  <34.884838, 34.638573, 34.954464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825851, 34.742950, 35.162373>,  <34.727539, 34.916912, 35.508888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825851, 34.742950, 35.162373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091982, 0.900129, -0.425802,
		0.964952, 0.024970, 0.261235,
		0.245777, -0.434908, -0.866284,
		34.899586, 34.612476, 34.902489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322842, 35.319839, 35.273918>,  <34.727539, 34.916912, 35.508888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322842, 35.319839, 35.273918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167431, 35.131977, 34.956814>,  <35.074184, 35.019260, 34.766552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167431, 35.131977, 34.956814>,  <35.322842, 35.319839, 35.273918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167431, 35.131977, 34.956814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195920, 0.798574, -0.569117,
		0.900366, -0.376437, -0.218256,
		-0.388531, -0.469654, -0.792761,
		35.050873, 34.991081, 34.718987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834354, 35.461758, 34.637886>,  <35.322842, 35.319839, 35.273918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834354, 35.461758, 34.637886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478981, 35.356220, 34.487644>,  <35.265759, 35.292896, 34.397499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478981, 35.356220, 34.487644>,  <35.834354, 35.461758, 34.637886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478981, 35.356220, 34.487644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071613, 0.728591, -0.681195,
		0.453389, -0.632093, -0.628408,
		-0.888431, -0.263844, -0.375601,
		35.212452, 35.277065, 34.374966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862667, 35.541191, 33.938263>,  <35.834354, 35.461758, 34.637886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862667, 35.541191, 33.938263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467327, 35.537903, 33.999050>,  <35.230122, 35.535931, 34.035522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467327, 35.537903, 33.999050>,  <35.862667, 35.541191, 33.938263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467327, 35.537903, 33.999050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102581, 0.773636, -0.625271,
		-0.112429, -0.633577, -0.765468,
		-0.988351, -0.008224, 0.151972,
		35.170822, 35.535435, 34.044643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633457, 35.394527, 33.287216>,  <35.862667, 35.541191, 33.938263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633457, 35.394527, 33.287216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317867, 35.538612, 33.486320>,  <35.128513, 35.625065, 33.605782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317867, 35.538612, 33.486320>,  <35.633457, 35.394527, 33.287216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317867, 35.538612, 33.486320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213580, 0.598816, -0.771882,
		-0.576112, -0.715306, -0.395515,
		-0.788973, 0.360216, 0.497761,
		35.081177, 35.646679, 33.635651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045605, 35.399117, 32.792515>,  <35.633457, 35.394527, 33.287216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045605, 35.399117, 32.792515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896683, 35.635784, 33.078537>,  <34.807327, 35.777786, 33.250153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896683, 35.635784, 33.078537>,  <35.045605, 35.399117, 32.792515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896683, 35.635784, 33.078537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322743, 0.639827, -0.697466,
		-0.870186, -0.490453, -0.047254,
		-0.372309, 0.591674, 0.715058,
		34.784988, 35.813286, 33.293053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196896, 35.499619, 32.767574>,  <35.045605, 35.399117, 32.792515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196896, 35.499619, 32.767574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378975, 35.820107, 32.922928>,  <34.488220, 36.012402, 33.016140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378975, 35.820107, 32.922928>,  <34.196896, 35.499619, 32.767574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378975, 35.820107, 32.922928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443601, 0.582276, -0.681302,
		-0.772021, 0.137836, 0.620471,
		0.455194, 0.801222, 0.388385,
		34.515533, 36.060474, 33.039444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693817, 36.004658, 32.691471>,  <34.196896, 35.499619, 32.767574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693817, 36.004658, 32.691471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031387, 36.211388, 32.748993>,  <34.233929, 36.335426, 32.783504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031387, 36.211388, 32.748993>,  <33.693817, 36.004658, 32.691471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031387, 36.211388, 32.748993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251822, 0.618344, -0.744470,
		-0.473678, 0.592067, 0.651986,
		0.843928, 0.516823, 0.143800,
		34.284565, 36.366436, 32.792133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418262, 36.601612, 32.657795>,  <33.693817, 36.004658, 32.691471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418262, 36.601612, 32.657795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807076, 36.666973, 32.590328>,  <34.040363, 36.706192, 32.549847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807076, 36.666973, 32.590328>,  <33.418262, 36.601612, 32.657795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807076, 36.666973, 32.590328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234789, 0.691616, -0.683039,
		0.005043, 0.703538, 0.710639,
		0.972033, 0.163406, -0.168671,
		34.098686, 36.715996, 32.539726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491478, 37.297451, 32.724289>,  <33.418262, 36.601612, 32.657795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491478, 37.297451, 32.724289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804756, 37.193649, 32.498276>,  <33.992722, 37.131371, 32.362667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804756, 37.193649, 32.498276>,  <33.491478, 37.297451, 32.724289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804756, 37.193649, 32.498276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214831, 0.739841, -0.637560,
		0.583483, 0.620721, 0.523692,
		0.783195, -0.259501, -0.565035,
		34.039715, 37.115799, 32.328766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859367, 37.889725, 32.661026>,  <33.491478, 37.297451, 32.724289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859367, 37.889725, 32.661026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965698, 37.644398, 32.363522>,  <34.029495, 37.497200, 32.185020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965698, 37.644398, 32.363522>,  <33.859367, 37.889725, 32.661026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965698, 37.644398, 32.363522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341383, 0.661633, -0.667607,
		0.901551, 0.431376, -0.033495,
		0.265828, -0.613316, -0.743760,
		34.045448, 37.460403, 32.140392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061684, 38.320793, 32.168312>,  <33.859367, 37.889725, 32.661026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061684, 38.320793, 32.168312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052639, 37.992321, 31.940226>,  <34.047211, 37.795238, 31.803373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052639, 37.992321, 31.940226>,  <34.061684, 38.320793, 32.168312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052639, 37.992321, 31.940226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184401, 0.564003, -0.804920,
		0.982591, 0.086948, -0.164180,
		-0.022611, -0.821182, -0.570218,
		34.045856, 37.745968, 31.769159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490360, 38.352810, 31.542171>,  <34.061684, 38.320793, 32.168312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490360, 38.352810, 31.542171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255043, 38.052715, 31.421471>,  <34.113853, 37.872658, 31.349051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255043, 38.052715, 31.421471>,  <34.490360, 38.352810, 31.542171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255043, 38.052715, 31.421471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174103, 0.481915, -0.858747,
		0.789685, -0.452657, -0.414124,
		-0.588290, -0.750240, -0.301752,
		34.078556, 37.827644, 31.330946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764343, 38.118664, 30.891071>,  <34.490360, 38.352810, 31.542171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764343, 38.118664, 30.891071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380356, 38.011429, 30.923546>,  <34.149963, 37.947086, 30.943031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380356, 38.011429, 30.923546>,  <34.764343, 38.118664, 30.891071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380356, 38.011429, 30.923546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184586, 0.387432, -0.903230,
		0.210690, -0.882058, -0.421407,
		-0.959968, -0.268088, 0.081187,
		34.092365, 37.931004, 30.947903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571594, 37.899025, 30.329918>,  <34.764343, 38.118664, 30.891071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571594, 37.899025, 30.329918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216537, 37.989193, 30.490559>,  <34.003506, 38.043293, 30.586943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216537, 37.989193, 30.490559>,  <34.571594, 37.899025, 30.329918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216537, 37.989193, 30.490559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220931, 0.556702, -0.800795,
		-0.404090, -0.799542, -0.444347,
		-0.887637, 0.225423, 0.401602,
		33.950245, 38.056820, 30.611038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183170, 37.659935, 29.866310>,  <34.571594, 37.899025, 30.329918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183170, 37.659935, 29.866310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936741, 37.906223, 30.062817>,  <33.788883, 38.053997, 30.180719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936741, 37.906223, 30.062817>,  <34.183170, 37.659935, 29.866310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936741, 37.906223, 30.062817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278697, 0.412947, -0.867066,
		-0.736738, -0.671089, -0.082806,
		-0.616073, 0.615722, 0.491264,
		33.751919, 38.090939, 30.210196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550690, 37.658558, 29.534008>,  <34.183170, 37.659935, 29.866310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550690, 37.658558, 29.534008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530869, 38.014053, 29.716299>,  <33.518978, 38.227352, 29.825674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530869, 38.014053, 29.716299>,  <33.550690, 37.658558, 29.534008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530869, 38.014053, 29.716299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179907, 0.440884, -0.879349,
		-0.982435, -0.125561, 0.138044,
		-0.049551, 0.888738, 0.455729,
		33.516003, 38.280674, 29.853018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855923, 38.096954, 29.482313>,  <33.550690, 37.658558, 29.534008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855923, 38.096954, 29.482313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144329, 38.364719, 29.553905>,  <33.317371, 38.525379, 29.596861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144329, 38.364719, 29.553905>,  <32.855923, 38.096954, 29.482313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144329, 38.364719, 29.553905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247237, 0.489823, -0.836031,
		-0.647315, 0.558538, 0.518671,
		0.721012, 0.669410, 0.178979,
		33.360634, 38.565544, 29.607599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544510, 38.676678, 29.153410>,  <32.855923, 38.096954, 29.482313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544510, 38.676678, 29.153410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920319, 38.796936, 29.219038>,  <33.145802, 38.869091, 29.258415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920319, 38.796936, 29.219038>,  <32.544510, 38.676678, 29.153410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920319, 38.796936, 29.219038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013343, 0.446543, -0.894662,
		-0.342237, 0.842742, 0.415525,
		0.939519, 0.300642, 0.164068,
		33.202175, 38.887127, 29.268259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521851, 39.424053, 28.951162>,  <32.544510, 38.676678, 29.153410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521851, 39.424053, 28.951162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895702, 39.282162, 28.941084>,  <33.120014, 39.197029, 28.935038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895702, 39.282162, 28.941084>,  <32.521851, 39.424053, 28.951162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895702, 39.282162, 28.941084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177739, 0.527322, -0.830867,
		0.308018, 0.772075, 0.555900,
		0.934630, -0.354727, -0.025196,
		33.176090, 39.175743, 28.933525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884499, 39.990849, 28.776823>,  <32.521851, 39.424053, 28.951162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884499, 39.990849, 28.776823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136208, 39.687119, 28.710554>,  <33.287231, 39.504883, 28.670792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136208, 39.687119, 28.710554>,  <32.884499, 39.990849, 28.776823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136208, 39.687119, 28.710554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137019, 0.318223, -0.938062,
		0.765012, 0.567595, 0.304290,
		0.629271, -0.759322, -0.165673,
		33.324989, 39.459320, 28.660852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427277, 40.302464, 28.413963>,  <32.884499, 39.990849, 28.776823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427277, 40.302464, 28.413963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430840, 39.908356, 28.345646>,  <33.432976, 39.671890, 28.304655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430840, 39.908356, 28.345646>,  <33.427277, 40.302464, 28.413963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430840, 39.908356, 28.345646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009089, 0.170872, -0.985251,
		0.999919, 0.007221, 0.010476,
		0.008904, -0.985267, -0.170792,
		33.433510, 39.612774, 28.294409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086426, 40.121677, 28.082438>,  <33.427277, 40.302464, 28.413963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086426, 40.121677, 28.082438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833118, 39.827126, 27.987175>,  <33.681133, 39.650394, 27.930017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833118, 39.827126, 27.987175>,  <34.086426, 40.121677, 28.082438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833118, 39.827126, 27.987175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190463, 0.149977, -0.970170,
		0.750132, -0.659736, 0.045277,
		-0.633266, -0.736380, -0.238158,
		33.643139, 39.606213, 27.915728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364746, 39.828663, 27.541065>,  <34.086426, 40.121677, 28.082438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364746, 39.828663, 27.541065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994202, 39.679703, 27.518555>,  <33.771873, 39.590328, 27.505049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994202, 39.679703, 27.518555>,  <34.364746, 39.828663, 27.541065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994202, 39.679703, 27.518555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056108, 0.011304, -0.998361,
		0.372427, -0.928003, 0.010424,
		-0.926364, -0.372401, -0.056278,
		33.716293, 39.567982, 27.501671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380562, 39.137226, 27.221727>,  <34.364746, 39.828663, 27.541065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380562, 39.137226, 27.221727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997524, 39.246826, 27.186075>,  <33.767704, 39.312584, 27.164684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997524, 39.246826, 27.186075>,  <34.380562, 39.137226, 27.221727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997524, 39.246826, 27.186075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087969, -0.016543, -0.995986,
		-0.274372, -0.961588, -0.008262,
		-0.957592, 0.273997, -0.089129,
		33.710247, 39.329025, 27.159336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100449, 38.637985, 26.774717>,  <34.380562, 39.137226, 27.221727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100449, 38.637985, 26.774717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834770, 38.935352, 26.743279>,  <33.675365, 39.113773, 26.724415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834770, 38.935352, 26.743279>,  <34.100449, 38.637985, 26.774717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834770, 38.935352, 26.743279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053311, -0.151973, -0.986946,
		-0.745659, -0.651332, 0.140572,
		-0.664192, 0.743419, -0.078597,
		33.635513, 39.158379, 26.719700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592373, 38.395203, 26.362181>,  <34.100449, 38.637985, 26.774717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592373, 38.395203, 26.362181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542999, 38.791477, 26.339178>,  <33.513374, 39.029243, 26.325377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542999, 38.791477, 26.339178>,  <33.592373, 38.395203, 26.362181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542999, 38.791477, 26.339178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294340, -0.091894, -0.951272,
		-0.947696, -0.100492, 0.302941,
		-0.123434, 0.990685, -0.057509,
		33.505970, 39.088684, 26.321926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027187, 38.536411, 25.881927>,  <33.592373, 38.395203, 26.362181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027187, 38.536411, 25.881927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182964, 38.904739, 25.873720>,  <33.276428, 39.125736, 25.868795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182964, 38.904739, 25.873720>,  <33.027187, 38.536411, 25.881927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182964, 38.904739, 25.873720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216834, 0.070007, -0.973695,
		-0.895166, 0.383643, 0.226929,
		0.389438, 0.920824, -0.020519,
		33.299797, 39.180988, 25.867565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566669, 39.068455, 25.504068>,  <33.027187, 38.536411, 25.881927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566669, 39.068455, 25.504068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944813, 39.197445, 25.484859>,  <33.171700, 39.274837, 25.473333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944813, 39.197445, 25.484859>,  <32.566669, 39.068455, 25.504068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944813, 39.197445, 25.484859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074116, 0.069122, -0.994851,
		-0.317491, 0.944052, 0.089245,
		0.945360, 0.322471, -0.048024,
		33.228420, 39.294186, 25.470451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514481, 39.531075, 24.931845>,  <32.566669, 39.068455, 25.504068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514481, 39.531075, 24.931845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909954, 39.511452, 24.988564>,  <33.147236, 39.499680, 25.022594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909954, 39.511452, 24.988564>,  <32.514481, 39.531075, 24.931845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909954, 39.511452, 24.988564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148944, 0.206736, -0.966993,
		0.018123, 0.977166, 0.211702,
		0.988680, -0.049056, 0.141796,
		33.206558, 39.496735, 25.031103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826984, 40.195126, 24.790567>,  <32.514481, 39.531075, 24.931845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826984, 40.195126, 24.790567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098248, 39.906551, 24.734509>,  <33.261005, 39.733406, 24.700872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098248, 39.906551, 24.734509>,  <32.826984, 40.195126, 24.790567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098248, 39.906551, 24.734509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216086, 0.378004, -0.900233,
		0.702435, 0.580212, 0.412237,
		0.678153, -0.721434, -0.140147,
		33.301693, 39.690121, 24.692465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285080, 40.533611, 24.414597>,  <32.826984, 40.195126, 24.790567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285080, 40.533611, 24.414597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405277, 40.162415, 24.326469>,  <33.477394, 39.939697, 24.273594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405277, 40.162415, 24.326469>,  <33.285080, 40.533611, 24.414597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405277, 40.162415, 24.326469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280486, 0.306756, -0.909521,
		0.911610, 0.211506, 0.352466,
		0.300490, -0.927990, -0.220318,
		33.495422, 39.884018, 24.260374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923401, 40.534462, 24.071327>,  <33.285080, 40.533611, 24.414597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923401, 40.534462, 24.071327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767883, 40.178848, 23.974611>,  <33.674572, 39.965481, 23.916582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767883, 40.178848, 23.974611>,  <33.923401, 40.534462, 24.071327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767883, 40.178848, 23.974611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168371, 0.189457, -0.967346,
		0.905810, -0.416806, 0.076028,
		-0.388792, -0.889033, -0.241790,
		33.651245, 39.912140, 23.902075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231472, 40.396816, 23.411171>,  <33.923401, 40.534462, 24.071327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231472, 40.396816, 23.411171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896736, 40.179234, 23.435867>,  <33.695896, 40.048683, 23.450686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896736, 40.179234, 23.435867>,  <34.231472, 40.396816, 23.411171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896736, 40.179234, 23.435867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132721, 0.092170, -0.986859,
		0.531115, -0.834038, -0.149326,
		-0.836841, -0.543954, 0.061741,
		33.645683, 40.016048, 23.454390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262646, 40.363365, 22.596958>,  <34.231472, 40.396816, 23.411171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262646, 40.363365, 22.596958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605488, 40.236103, 22.434893>,  <34.811192, 40.159748, 22.337654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605488, 40.236103, 22.434893>,  <34.262646, 40.363365, 22.596958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605488, 40.236103, 22.434893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439753, 0.042213, 0.897126,
		-0.268321, -0.947099, 0.176089,
		0.857101, -0.318153, -0.405163,
		34.862617, 40.140656, 22.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470657, 39.849556, 22.985376>,  <34.262646, 40.363365, 22.596958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470657, 39.849556, 22.985376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808643, 39.958569, 22.801306>,  <35.011433, 40.023975, 22.690863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808643, 39.958569, 22.801306>,  <34.470657, 39.849556, 22.985376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808643, 39.958569, 22.801306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509491, -0.148484, 0.847568,
		0.162664, -0.950619, -0.264317,
		0.844961, 0.272536, -0.460179,
		35.062130, 40.040329, 22.663252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857510, 39.288090, 23.118160>,  <34.470657, 39.849556, 22.985376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857510, 39.288090, 23.118160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099796, 39.592987, 23.026873>,  <35.245171, 39.775925, 22.972101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099796, 39.592987, 23.026873>,  <34.857510, 39.288090, 23.118160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099796, 39.592987, 23.026873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475201, -0.116502, 0.872131,
		0.638191, -0.636716, -0.432787,
		0.605720, 0.762247, -0.228217,
		35.281513, 39.821663, 22.958408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547436, 39.061550, 23.253250>,  <34.857510, 39.288090, 23.118160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547436, 39.061550, 23.253250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603851, 39.457436, 23.243679>,  <35.637699, 39.694965, 23.237936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603851, 39.457436, 23.243679>,  <35.547436, 39.061550, 23.253250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603851, 39.457436, 23.243679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423941, -0.038535, 0.904870,
		0.894641, -0.137764, -0.425015,
		0.141036, 0.989715, -0.023929,
		35.646164, 39.754349, 23.236500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187160, 39.150112, 23.507265>,  <35.547436, 39.061550, 23.253250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187160, 39.150112, 23.507265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059021, 39.528728, 23.522388>,  <35.982136, 39.755898, 23.531462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059021, 39.528728, 23.522388>,  <36.187160, 39.150112, 23.507265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059021, 39.528728, 23.522388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482672, 0.128752, 0.866285,
		0.815110, 0.295762, -0.498117,
		-0.320348, 0.946545, 0.037809,
		35.962917, 39.812691, 23.533731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728611, 39.499981, 23.681280>,  <36.187160, 39.150112, 23.507265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728611, 39.499981, 23.681280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431808, 39.744244, 23.791925>,  <36.253727, 39.890800, 23.858313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431808, 39.744244, 23.791925>,  <36.728611, 39.499981, 23.681280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431808, 39.744244, 23.791925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247409, -0.134047, 0.959594,
		0.623066, 0.780464, -0.051619,
		-0.742009, 0.610661, 0.276614,
		36.209206, 39.927441, 23.874910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928337, 40.046795, 24.217857>,  <36.728611, 39.499981, 23.681280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928337, 40.046795, 24.217857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532246, 40.023102, 24.268354>,  <36.294590, 40.008884, 24.298653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532246, 40.023102, 24.268354>,  <36.928337, 40.046795, 24.217857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532246, 40.023102, 24.268354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132814, -0.124680, 0.983268,
		-0.042504, 0.990427, 0.131329,
		-0.990229, -0.059235, 0.126243,
		36.235176, 40.005333, 24.306227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717663, 40.525818, 24.778387>,  <36.928337, 40.046795, 24.217857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717663, 40.525818, 24.778387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427116, 40.251228, 24.764822>,  <36.252789, 40.086475, 24.756683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427116, 40.251228, 24.764822>,  <36.717663, 40.525818, 24.778387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427116, 40.251228, 24.764822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088053, -0.141879, 0.985960,
		-0.681643, 0.713183, 0.163502,
		-0.726368, -0.686469, -0.033912,
		36.209206, 40.045288, 24.754648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170925, 40.721516, 25.252501>,  <36.717663, 40.525818, 24.778387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170925, 40.721516, 25.252501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133434, 40.325314, 25.212286>,  <36.110939, 40.087593, 25.188158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133434, 40.325314, 25.212286>,  <36.170925, 40.721516, 25.252501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133434, 40.325314, 25.212286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144492, -0.113446, 0.982981,
		-0.985057, 0.077610, 0.153754,
		-0.093732, -0.990508, -0.100536,
		36.105316, 40.028160, 25.182125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610874, 40.596909, 25.674845>,  <36.170925, 40.721516, 25.252501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610874, 40.596909, 25.674845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792953, 40.248013, 25.603298>,  <35.902203, 40.038677, 25.560369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792953, 40.248013, 25.603298>,  <35.610874, 40.596909, 25.674845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792953, 40.248013, 25.603298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115824, -0.257185, 0.959396,
		-0.882823, -0.416001, -0.218097,
		0.455201, -0.872237, -0.178866,
		35.929516, 39.986340, 25.549639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225334, 40.212200, 26.017134>,  <35.610874, 40.596909, 25.674845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225334, 40.212200, 26.017134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574402, 40.020134, 25.981581>,  <35.783840, 39.904896, 25.960249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574402, 40.020134, 25.981581>,  <35.225334, 40.212200, 26.017134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574402, 40.020134, 25.981581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052117, -0.272555, 0.960728,
		-0.485531, -0.833761, -0.262874,
		0.872664, -0.480163, -0.088881,
		35.836201, 39.876083, 25.954916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088116, 39.665752, 26.428082>,  <35.225334, 40.212200, 26.017134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088116, 39.665752, 26.428082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484245, 39.675213, 26.373381>,  <35.721924, 39.680889, 26.340561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484245, 39.675213, 26.373381>,  <35.088116, 39.665752, 26.428082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484245, 39.675213, 26.373381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138301, -0.249972, 0.958325,
		-0.011521, -0.967964, -0.250824,
		0.990323, 0.023648, -0.136750,
		35.781342, 39.682308, 26.332355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374851, 39.064655, 26.729708>,  <35.088116, 39.665752, 26.428082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374851, 39.064655, 26.729708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709888, 39.280468, 26.695419>,  <35.910912, 39.409954, 26.674847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709888, 39.280468, 26.695419>,  <35.374851, 39.064655, 26.729708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709888, 39.280468, 26.695419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283864, -0.295769, 0.912109,
		0.466755, -0.788308, -0.400887,
		0.837593, 0.539528, -0.085721,
		35.961166, 39.442326, 26.669703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013451, 38.594944, 26.915173>,  <35.374851, 39.064655, 26.729708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013451, 38.594944, 26.915173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153732, 38.966160, 26.965382>,  <36.237900, 39.188889, 26.995506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153732, 38.966160, 26.965382>,  <36.013451, 38.594944, 26.915173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153732, 38.966160, 26.965382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270950, -0.228853, 0.934993,
		0.896434, -0.293895, -0.331711,
		0.350703, 0.928037, 0.125521,
		36.258942, 39.244572, 27.003038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745625, 38.512207, 27.120676>,  <36.013451, 38.594944, 26.915173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745625, 38.512207, 27.120676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601105, 38.863621, 27.245663>,  <36.514393, 39.074471, 27.320654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601105, 38.863621, 27.245663>,  <36.745625, 38.512207, 27.120676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601105, 38.863621, 27.245663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163509, -0.270218, 0.948814,
		0.918000, 0.393901, -0.046018,
		-0.361303, 0.878536, 0.312466,
		36.492714, 39.127182, 27.339403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250168, 38.678440, 27.559399>,  <36.745625, 38.512207, 27.120676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250168, 38.678440, 27.559399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959869, 38.930569, 27.669657>,  <36.785690, 39.081844, 27.735811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959869, 38.930569, 27.669657>,  <37.250168, 38.678440, 27.559399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959869, 38.930569, 27.669657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193390, -0.197594, 0.961019,
		0.660217, 0.750767, 0.021506,
		-0.725751, 0.630322, 0.275646,
		36.742146, 39.119667, 27.752350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342194, 39.062523, 28.190207>,  <37.250168, 38.678440, 27.559399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342194, 39.062523, 28.190207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951046, 39.146210, 28.191013>,  <36.716358, 39.196423, 28.191498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951046, 39.146210, 28.191013>,  <37.342194, 39.062523, 28.190207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951046, 39.146210, 28.191013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039207, -0.192708, 0.980473,
		0.205524, 0.958692, 0.196646,
		-0.977866, 0.209221, 0.002019,
		36.657684, 39.208977, 28.191620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149307, 39.551376, 28.752914>,  <37.342194, 39.062523, 28.190207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149307, 39.551376, 28.752914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806953, 39.370480, 28.652569>,  <36.601540, 39.261940, 28.592361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806953, 39.370480, 28.652569>,  <37.149307, 39.551376, 28.752914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806953, 39.370480, 28.652569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190914, -0.174519, 0.965968,
		-0.480634, 0.874653, 0.063028,
		-0.855887, -0.452245, -0.250863,
		36.550186, 39.234806, 28.577311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603188, 39.764748, 29.195784>,  <37.149307, 39.551376, 28.752914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603188, 39.764748, 29.195784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481026, 39.416004, 29.042635>,  <36.407730, 39.206757, 28.950747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481026, 39.416004, 29.042635>,  <36.603188, 39.764748, 29.195784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481026, 39.416004, 29.042635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051933, -0.386231, 0.920939,
		-0.950805, 0.301144, 0.072679,
		-0.305406, -0.871859, -0.382870,
		36.389404, 39.154446, 28.927774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113941, 39.529194, 29.719734>,  <36.603188, 39.764748, 29.195784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113941, 39.529194, 29.719734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196968, 39.206692, 29.498150>,  <36.246784, 39.013191, 29.365198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196968, 39.206692, 29.498150>,  <36.113941, 39.529194, 29.719734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196968, 39.206692, 29.498150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050820, -0.574418, 0.816983,
		-0.976901, -0.141424, -0.160202,
		0.207564, -0.806253, -0.553962,
		36.259239, 38.964817, 29.331961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672928, 39.070808, 29.860954>,  <36.113941, 39.529194, 29.719734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672928, 39.070808, 29.860954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984840, 38.864246, 29.719385>,  <36.171989, 38.740311, 29.634443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984840, 38.864246, 29.719385>,  <35.672928, 39.070808, 29.860954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984840, 38.864246, 29.719385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063471, -0.627631, 0.775919,
		-0.622792, -0.582606, -0.522207,
		0.779809, -0.516381, -0.353905,
		36.218777, 38.709324, 29.613209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510448, 38.417980, 29.803827>,  <35.672928, 39.070808, 29.860954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510448, 38.417980, 29.803827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908714, 38.381481, 29.810997>,  <36.147675, 38.359581, 29.815298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908714, 38.381481, 29.810997>,  <35.510448, 38.417980, 29.803827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908714, 38.381481, 29.810997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064444, -0.538114, 0.840405,
		-0.067038, -0.837919, -0.541662,
		0.995667, -0.091246, 0.017925,
		36.207413, 38.354107, 29.816374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757111, 37.741016, 29.790873>,  <35.510448, 38.417980, 29.803827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757111, 37.741016, 29.790873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061378, 37.945568, 29.950811>,  <36.243938, 38.068298, 30.046776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061378, 37.945568, 29.950811>,  <35.757111, 37.741016, 29.790873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061378, 37.945568, 29.950811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053633, -0.663368, 0.746369,
		0.646924, -0.546293, -0.532028,
		0.760666, 0.511378, 0.399849,
		36.289577, 38.098980, 30.070766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038868, 37.208836, 30.246496>,  <35.757111, 37.741016, 29.790873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038868, 37.208836, 30.246496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260834, 37.520020, 30.364376>,  <36.394012, 37.706730, 30.435104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260834, 37.520020, 30.364376>,  <36.038868, 37.208836, 30.246496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260834, 37.520020, 30.364376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061417, -0.391591, 0.918087,
		0.829635, -0.491364, -0.265081,
		0.554919, 0.777957, 0.294700,
		36.427311, 37.753407, 30.452785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594959, 36.948532, 30.610439>,  <36.038868, 37.208836, 30.246496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594959, 36.948532, 30.610439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531521, 37.319736, 30.745283>,  <36.493458, 37.542458, 30.826189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531521, 37.319736, 30.745283>,  <36.594959, 36.948532, 30.610439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531521, 37.319736, 30.745283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126144, -0.319590, 0.939122,
		0.979253, 0.191464, -0.066377,
		-0.158594, 0.928011, 0.337111,
		36.483944, 37.598141, 30.846416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154587, 37.129318, 30.989561>,  <36.594959, 36.948532, 30.610439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154587, 37.129318, 30.989561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863850, 37.369804, 31.122366>,  <36.689407, 37.514095, 31.202049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863850, 37.369804, 31.122366>,  <37.154587, 37.129318, 30.989561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863850, 37.369804, 31.122366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095240, -0.390517, 0.915656,
		0.680164, 0.697163, 0.226587,
		-0.726847, 0.601216, 0.332013,
		36.645794, 37.550171, 31.221970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458908, 37.368011, 31.589308>,  <37.154587, 37.129318, 30.989561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458908, 37.368011, 31.589308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063980, 37.428627, 31.608217>,  <36.827023, 37.464996, 31.619562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063980, 37.428627, 31.608217>,  <37.458908, 37.368011, 31.589308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063980, 37.428627, 31.608217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005751, -0.263461, 0.964653,
		0.158635, 0.952694, 0.259249,
		-0.987320, 0.151537, 0.047273,
		36.767784, 37.474087, 31.622398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420677, 37.850418, 31.966118>,  <37.458908, 37.368011, 31.589308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420677, 37.850418, 31.966118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110886, 37.597481, 31.973335>,  <36.925011, 37.445721, 31.977665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110886, 37.597481, 31.973335>,  <37.420677, 37.850418, 31.966118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110886, 37.597481, 31.973335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151703, -0.157964, 0.975722,
		-0.614138, 0.758416, 0.218268,
		-0.774481, -0.632339, 0.018042,
		36.878540, 37.407780, 31.978748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210159, 37.955784, 32.620232>,  <37.420677, 37.850418, 31.966118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210159, 37.955784, 32.620232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031857, 37.616295, 32.506405>,  <36.924877, 37.412601, 32.438110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031857, 37.616295, 32.506405>,  <37.210159, 37.955784, 32.620232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031857, 37.616295, 32.506405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227179, -0.414748, 0.881121,
		-0.865849, 0.328115, 0.377687,
		-0.445753, -0.848720, -0.284568,
		36.898132, 37.361679, 32.421036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772087, 37.813309, 33.154716>,  <37.210159, 37.955784, 32.620232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772087, 37.813309, 33.154716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840675, 37.473709, 32.954796>,  <36.881828, 37.269951, 32.834843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840675, 37.473709, 32.954796>,  <36.772087, 37.813309, 33.154716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840675, 37.473709, 32.954796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288215, -0.441895, 0.849506,
		-0.942088, -0.289718, 0.168920,
		0.171472, -0.848995, -0.499805,
		36.892117, 37.219009, 32.804855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724159, 37.304340, 33.695049>,  <36.772087, 37.813309, 33.154716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724159, 37.304340, 33.695049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904572, 37.089245, 33.410118>,  <37.012821, 36.960186, 33.239159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904572, 37.089245, 33.410118>,  <36.724159, 37.304340, 33.695049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904572, 37.089245, 33.410118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263802, -0.682135, 0.681983,
		-0.852630, -0.495510, -0.165808,
		0.451033, -0.537738, -0.712325,
		37.039883, 36.927925, 33.196419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500782, 36.676262, 33.809029>,  <36.724159, 37.304340, 33.695049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500782, 36.676262, 33.809029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829826, 36.608829, 33.591812>,  <37.027252, 36.568371, 33.461483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829826, 36.608829, 33.591812>,  <36.500782, 36.676262, 33.809029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829826, 36.608829, 33.591812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263769, -0.732931, 0.627087,
		-0.503729, -0.659084, -0.558448,
		0.822608, -0.168581, -0.543045,
		37.076607, 36.558254, 33.428898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514210, 36.023064, 33.634319>,  <36.500782, 36.676262, 33.809029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514210, 36.023064, 33.634319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893929, 36.112488, 33.545898>,  <37.121758, 36.166142, 33.492847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893929, 36.112488, 33.545898>,  <36.514210, 36.023064, 33.634319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893929, 36.112488, 33.545898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308119, -0.801294, 0.512827,
		-0.062477, -0.554932, -0.829546,
		0.949294, 0.223559, -0.221048,
		37.178719, 36.179554, 33.479584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880363, 35.464249, 33.253853>,  <36.514210, 36.023064, 33.634319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880363, 35.464249, 33.253853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132141, 35.684860, 33.472801>,  <37.283207, 35.817226, 33.604172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132141, 35.684860, 33.472801>,  <36.880363, 35.464249, 33.253853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132141, 35.684860, 33.472801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371739, -0.832316, 0.411168,
		0.682358, -0.055327, -0.728921,
		0.629442, 0.551533, 0.547371,
		37.320972, 35.850319, 33.637012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243511, 34.917404, 33.531975>,  <36.880363, 35.464249, 33.253853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243511, 34.917404, 33.531975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377960, 35.231499, 33.739986>,  <37.458630, 35.419956, 33.864792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377960, 35.231499, 33.739986>,  <37.243511, 34.917404, 33.531975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377960, 35.231499, 33.739986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424496, -0.619199, 0.660602,
		0.840729, -0.001292, -0.541455,
		0.336122, 0.785232, 0.520030,
		37.478798, 35.467068, 33.895996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882175, 34.729965, 33.661961>,  <37.243511, 34.917404, 33.531975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882175, 34.729965, 33.661961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778271, 35.001850, 33.936337>,  <37.715927, 35.164982, 34.100964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778271, 35.001850, 33.936337>,  <37.882175, 34.729965, 33.661961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778271, 35.001850, 33.936337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327985, -0.605995, 0.724704,
		0.908266, 0.413231, -0.065519,
		-0.259765, 0.679713, 0.685938,
		37.700340, 35.205765, 34.142117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487461, 34.878487, 34.170437>,  <37.882175, 34.729965, 33.661961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487461, 34.878487, 34.170437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151680, 35.001465, 34.349682>,  <37.950211, 35.075253, 34.457230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151680, 35.001465, 34.349682>,  <38.487461, 34.878487, 34.170437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151680, 35.001465, 34.349682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293399, -0.437688, 0.849909,
		0.457431, 0.844931, 0.277214,
		-0.839448, 0.307441, 0.448115,
		37.899845, 35.093697, 34.484116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690784, 35.107853, 34.735104>,  <38.487461, 34.878487, 34.170437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690784, 35.107853, 34.735104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308723, 35.032078, 34.826134>,  <38.079487, 34.986614, 34.880753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308723, 35.032078, 34.826134>,  <38.690784, 35.107853, 34.735104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308723, 35.032078, 34.826134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277936, -0.308520, 0.909707,
		-0.102123, 0.932163, 0.347336,
		-0.955156, -0.189439, 0.227575,
		38.022179, 34.975246, 34.894405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506569, 35.438499, 35.376846>,  <38.690784, 35.107853, 34.735104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506569, 35.438499, 35.376846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257175, 35.131813, 35.315643>,  <38.107540, 34.947800, 35.278923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257175, 35.131813, 35.315643>,  <38.506569, 35.438499, 35.376846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257175, 35.131813, 35.315643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224204, -0.362815, 0.904487,
		-0.749000, 0.529628, 0.398111,
		-0.623483, -0.766720, -0.153004,
		38.070129, 34.901798, 35.269741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063526, 35.406025, 36.008408>,  <38.506569, 35.438499, 35.376846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063526, 35.406025, 36.008408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061161, 35.035667, 35.857315>,  <38.059742, 34.813454, 35.766659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061161, 35.035667, 35.857315>,  <38.063526, 35.406025, 36.008408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061161, 35.035667, 35.857315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184657, -0.372250, 0.909578,
		-0.982785, -0.064372, 0.173175,
		-0.005913, -0.925898, -0.377728,
		38.059387, 34.757896, 35.743996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602543, 34.974930, 36.436985>,  <38.063526, 35.406025, 36.008408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602543, 34.974930, 36.436985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913517, 34.807457, 36.249237>,  <38.100101, 34.706974, 36.136589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913517, 34.807457, 36.249237>,  <37.602543, 34.974930, 36.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913517, 34.807457, 36.249237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239903, -0.492441, 0.836629,
		-0.581418, -0.763024, -0.282396,
		0.777431, -0.418684, -0.469366,
		38.146748, 34.681850, 36.108429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732758, 34.171837, 36.457275>,  <37.602543, 34.974930, 36.436985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732758, 34.171837, 36.457275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082253, 34.364521, 36.430336>,  <38.291950, 34.480129, 36.414173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082253, 34.364521, 36.430336>,  <37.732758, 34.171837, 36.457275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082253, 34.364521, 36.430336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368494, -0.565206, 0.738075,
		0.317472, -0.669702, -0.671350,
		0.873741, 0.481706, -0.067344,
		38.344376, 34.509033, 36.410133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297718, 33.741501, 36.324657>,  <37.732758, 34.171837, 36.457275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297718, 33.741501, 36.324657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475460, 34.055168, 36.497921>,  <38.582108, 34.243370, 36.601879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475460, 34.055168, 36.497921>,  <38.297718, 33.741501, 36.324657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475460, 34.055168, 36.497921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317366, -0.589956, 0.742449,
		0.837751, -0.192442, -0.511019,
		0.444357, 0.784167, 0.433162,
		38.608768, 34.290417, 36.627869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906414, 33.527420, 36.409706>,  <38.297718, 33.741501, 36.324657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906414, 33.527420, 36.409706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889824, 33.840054, 36.658672>,  <38.879868, 34.027634, 36.808052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889824, 33.840054, 36.658672>,  <38.906414, 33.527420, 36.409706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889824, 33.840054, 36.658672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392837, -0.560025, 0.729419,
		0.918672, 0.274764, -0.283807,
		-0.041479, 0.781586, 0.622416,
		38.877380, 34.074528, 36.845398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550381, 33.562756, 36.608620>,  <38.906414, 33.527420, 36.409706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550381, 33.562756, 36.608620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338646, 33.759571, 36.885082>,  <39.211605, 33.877659, 37.050961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338646, 33.759571, 36.885082>,  <39.550381, 33.562756, 36.608620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338646, 33.759571, 36.885082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268989, -0.675290, 0.686751,
		0.804643, 0.549436, 0.225100,
		-0.529334, 0.492040, 0.691160,
		39.179844, 33.907185, 37.092430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924923, 33.522434, 37.291634>,  <39.550381, 33.562756, 36.608620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924923, 33.522434, 37.291634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555256, 33.615784, 37.412598>,  <39.333454, 33.671795, 37.485176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555256, 33.615784, 37.412598>,  <39.924923, 33.522434, 37.291634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555256, 33.615784, 37.412598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054878, -0.702341, 0.709722,
		0.378026, 0.672497, 0.636274,
		-0.924167, 0.233375, 0.302409,
		39.278008, 33.685795, 37.503319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012894, 33.641380, 37.928787>,  <39.924923, 33.522434, 37.291634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012894, 33.641380, 37.928787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619194, 33.574356, 37.906254>,  <39.382973, 33.534142, 37.892735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619194, 33.574356, 37.906254>,  <40.012894, 33.641380, 37.928787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619194, 33.574356, 37.906254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047523, -0.557720, 0.828668,
		-0.170271, 0.812940, 0.556899,
		-0.984251, -0.167563, -0.056330,
		39.323917, 33.524086, 37.889355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799103, 33.550354, 38.663670>,  <40.012894, 33.641380, 37.928787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799103, 33.550354, 38.663670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493515, 33.412766, 38.445297>,  <39.310162, 33.330212, 38.314274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493515, 33.412766, 38.445297>,  <39.799103, 33.550354, 38.663670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493515, 33.412766, 38.445297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078440, -0.790286, 0.607697,
		-0.640471, 0.507083, 0.576770,
		-0.763966, -0.343970, -0.545930,
		39.264324, 33.309574, 38.281517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167622, 33.367886, 39.111649>,  <39.799103, 33.550354, 38.663670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167622, 33.367886, 39.111649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190521, 33.168541, 38.765617>,  <39.204262, 33.048935, 38.557999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190521, 33.168541, 38.765617>,  <39.167622, 33.367886, 39.111649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190521, 33.168541, 38.765617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019105, -0.866884, 0.498144,
		-0.998177, -0.011990, -0.059148,
		0.057247, -0.498366, -0.865075,
		39.207695, 33.019032, 38.506096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559410, 33.021687, 38.994164>,  <39.167622, 33.367886, 39.111649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559410, 33.021687, 38.994164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856411, 32.811478, 38.828026>,  <39.034611, 32.685352, 38.728344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856411, 32.811478, 38.828026>,  <38.559410, 33.021687, 38.994164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856411, 32.811478, 38.828026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104055, -0.703037, 0.703499,
		-0.661705, -0.479135, -0.576694,
		0.742508, -0.525517, -0.415347,
		39.079163, 32.653824, 38.703423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417183, 32.286785, 39.090679>,  <38.559410, 33.021687, 38.994164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417183, 32.286785, 39.090679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803978, 32.268230, 38.990452>,  <39.036057, 32.257099, 38.930313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803978, 32.268230, 38.990452>,  <38.417183, 32.286785, 39.090679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803978, 32.268230, 38.990452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157554, -0.664000, 0.730946,
		-0.200286, -0.746293, -0.634770,
		0.966986, -0.046388, -0.250572,
		39.094074, 32.254314, 38.915279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518314, 31.570126, 39.108406>,  <38.417183, 32.286785, 39.090679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518314, 31.570126, 39.108406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870296, 31.754696, 39.153587>,  <39.081486, 31.865438, 39.180698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870296, 31.754696, 39.153587>,  <38.518314, 31.570126, 39.108406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870296, 31.754696, 39.153587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193862, -0.565880, 0.801372,
		0.433692, -0.683277, -0.587404,
		0.879959, 0.461424, 0.112956,
		39.134285, 31.893124, 39.187473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004292, 31.037693, 39.281704>,  <38.518314, 31.570126, 39.108406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004292, 31.037693, 39.281704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182659, 31.383842, 39.373169>,  <39.289680, 31.591532, 39.428047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182659, 31.383842, 39.373169>,  <39.004292, 31.037693, 39.281704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182659, 31.383842, 39.373169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298960, -0.384791, 0.873246,
		0.843672, -0.321034, -0.430297,
		0.445916, 0.865374, 0.228661,
		39.316433, 31.643456, 39.441769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411198, 30.738317, 39.892754>,  <39.004292, 31.037693, 39.281704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411198, 30.738317, 39.892754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546822, 31.114620, 39.891304>,  <39.628197, 31.340403, 39.890434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546822, 31.114620, 39.891304>,  <39.411198, 30.738317, 39.892754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546822, 31.114620, 39.891304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118105, -0.038743, 0.992245,
		0.933323, -0.336856, -0.124245,
		0.339057, 0.940759, -0.003624,
		39.648540, 31.396849, 39.890217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101494, 30.785082, 40.206722>,  <39.411198, 30.738317, 39.892754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101494, 30.785082, 40.206722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893299, 31.124189, 40.247478>,  <39.768383, 31.327654, 40.271935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893299, 31.124189, 40.247478>,  <40.101494, 30.785082, 40.206722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893299, 31.124189, 40.247478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166330, -0.016381, 0.985934,
		0.837515, 0.530110, -0.132484,
		-0.520484, 0.847770, 0.101893,
		39.737156, 31.378521, 40.278046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398167, 31.228394, 40.750713>,  <40.101494, 30.785082, 40.206722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398167, 31.228394, 40.750713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020679, 31.356157, 40.716354>,  <39.794189, 31.432816, 40.695740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020679, 31.356157, 40.716354>,  <40.398167, 31.228394, 40.750713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020679, 31.356157, 40.716354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115831, -0.075904, 0.990365,
		0.309811, 0.944572, 0.108629,
		-0.943716, 0.319409, -0.085895,
		39.737564, 31.451981, 40.690586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194134, 31.920658, 41.158253>,  <40.398167, 31.228394, 40.750713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194134, 31.920658, 41.158253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872356, 31.690525, 41.099113>,  <39.679291, 31.552444, 41.063629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872356, 31.690525, 41.099113>,  <40.194134, 31.920658, 41.158253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872356, 31.690525, 41.099113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127422, -0.075972, 0.988935,
		-0.580199, 0.814383, -0.012195,
		-0.804445, -0.575333, -0.147849,
		39.631023, 31.517925, 41.054760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958923, 31.903925, 41.715084>,  <40.194134, 31.920658, 41.158253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958923, 31.903925, 41.715084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673027, 31.657915, 41.581886>,  <39.501488, 31.510309, 41.501968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673027, 31.657915, 41.581886>,  <39.958923, 31.903925, 41.715084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673027, 31.657915, 41.581886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178076, -0.300401, 0.937042,
		-0.676339, 0.729041, 0.105187,
		-0.714741, -0.615027, -0.332998,
		39.458607, 31.473408, 41.481987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369991, 31.952227, 42.173023>,  <39.958923, 31.903925, 41.715084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369991, 31.952227, 42.173023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318375, 31.594042, 42.002613>,  <39.287403, 31.379131, 41.900368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318375, 31.594042, 42.002613>,  <39.369991, 31.952227, 42.173023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318375, 31.594042, 42.002613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260548, -0.383908, 0.885850,
		-0.956798, 0.225313, -0.183769,
		-0.129043, -0.895460, -0.426027,
		39.279663, 31.325403, 41.874805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801289, 31.696146, 42.604782>,  <39.369991, 31.952227, 42.173023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801289, 31.696146, 42.604782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964897, 31.385931, 42.412430>,  <39.063065, 31.199802, 42.297020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964897, 31.385931, 42.412430>,  <38.801289, 31.696146, 42.604782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964897, 31.385931, 42.412430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051456, -0.506535, 0.860683,
		-0.911071, -0.376785, -0.167280,
		0.409025, -0.775536, -0.480877,
		39.087605, 31.153271, 42.268166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620846, 31.177608, 43.059734>,  <38.801289, 31.696146, 42.604782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620846, 31.177608, 43.059734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873291, 30.998459, 42.806400>,  <39.024757, 30.890970, 42.654400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873291, 30.998459, 42.806400>,  <38.620846, 31.177608, 43.059734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873291, 30.998459, 42.806400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292384, -0.618900, 0.729023,
		-0.718479, -0.645270, -0.259643,
		0.631109, -0.447872, -0.633333,
		39.062622, 30.864098, 42.616402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599426, 30.475258, 43.019516>,  <38.620846, 31.177608, 43.059734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599426, 30.475258, 43.019516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971443, 30.609426, 42.959492>,  <39.194653, 30.689928, 42.923477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971443, 30.609426, 42.959492>,  <38.599426, 30.475258, 43.019516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971443, 30.609426, 42.959492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312712, -0.507992, 0.802593,
		0.192977, -0.793369, -0.577343,
		0.930038, 0.335424, -0.150065,
		39.250454, 30.710054, 42.914471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162025, 30.792515, 43.561657>,  <38.599426, 30.475258, 43.019516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162025, 30.792515, 43.561657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950520, 31.123259, 43.485016>,  <37.823616, 31.321705, 43.439030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950520, 31.123259, 43.485016>,  <38.162025, 30.792515, 43.561657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950520, 31.123259, 43.485016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241107, -0.070115, -0.967963,
		-0.813801, -0.558024, -0.162286,
		-0.528768, 0.826857, -0.191603,
		37.791889, 31.371315, 43.427536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955376, 30.680403, 43.601688>,  <38.162025, 30.792515, 43.561657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955376, 30.680403, 43.601688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880592, 30.328039, 43.427773>,  <38.835724, 30.116621, 43.323421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880592, 30.328039, 43.427773>,  <38.955376, 30.680403, 43.601688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880592, 30.328039, 43.427773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676287, 0.205603, -0.707363,
		0.712518, -0.426293, 0.557308,
		-0.186960, -0.880909, -0.434793,
		38.824505, 30.063766, 43.297333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570442, 30.267382, 43.487911>,  <38.955376, 30.680403, 43.601688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570442, 30.267382, 43.487911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290512, 30.198109, 43.210709>,  <39.122555, 30.156544, 43.044388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290512, 30.198109, 43.210709>,  <39.570442, 30.267382, 43.487911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290512, 30.198109, 43.210709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626853, 0.316270, -0.712060,
		0.342494, -0.932727, -0.112773,
		-0.699824, -0.173184, -0.693003,
		39.080566, 30.146154, 43.002808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894135, 30.099489, 42.850353>,  <39.570442, 30.267382, 43.487911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894135, 30.099489, 42.850353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521046, 30.215050, 42.764042>,  <39.297192, 30.284386, 42.712254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521046, 30.215050, 42.764042>,  <39.894135, 30.099489, 42.850353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521046, 30.215050, 42.764042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311348, 0.343377, -0.886090,
		-0.181897, -0.893661, -0.410224,
		-0.932725, 0.288899, -0.215780,
		39.241230, 30.301720, 42.699306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045738, 30.329134, 42.313694>,  <39.894135, 30.099489, 42.850353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045738, 30.329134, 42.313694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662052, 30.441711, 42.324188>,  <39.431839, 30.509258, 42.330482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662052, 30.441711, 42.324188>,  <40.045738, 30.329134, 42.313694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662052, 30.441711, 42.324188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145164, 0.570117, -0.808637,
		-0.242541, -0.771852, -0.587723,
		-0.959219, 0.281444, 0.026232,
		39.374287, 30.526144, 42.332058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717484, 30.111338, 41.730659>,  <40.045738, 30.329134, 42.313694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717484, 30.111338, 41.730659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526119, 30.429941, 41.878551>,  <39.411301, 30.621103, 41.967289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526119, 30.429941, 41.878551>,  <39.717484, 30.111338, 41.730659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526119, 30.429941, 41.878551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017696, 0.429701, -0.902798,
		-0.877959, -0.425363, -0.219668,
		-0.478408, 0.796507, 0.369733,
		39.382595, 30.668894, 41.989471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093773, 30.165461, 41.423889>,  <39.717484, 30.111338, 41.730659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093773, 30.165461, 41.423889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144573, 30.539772, 41.555458>,  <39.175053, 30.764359, 41.634399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144573, 30.539772, 41.555458>,  <39.093773, 30.165461, 41.423889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144573, 30.539772, 41.555458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077227, 0.339934, -0.937273,
		-0.988891, 0.093635, 0.115440,
		0.127003, 0.935777, 0.328926,
		39.182674, 30.820505, 41.654137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631355, 30.590586, 40.966213>,  <39.093773, 30.165461, 41.423889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631355, 30.590586, 40.966213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891315, 30.843340, 41.135139>,  <39.047291, 30.994993, 41.236496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891315, 30.843340, 41.135139>,  <38.631355, 30.590586, 40.966213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891315, 30.843340, 41.135139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100844, 0.479054, -0.871974,
		-0.753298, 0.609285, 0.247615,
		0.649901, 0.631886, 0.422313,
		39.086285, 31.032906, 41.261833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398460, 31.332312, 40.954018>,  <38.631355, 30.590586, 40.966213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398460, 31.332312, 40.954018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797615, 31.308731, 40.943039>,  <39.037106, 31.294582, 40.936451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797615, 31.308731, 40.943039>,  <38.398460, 31.332312, 40.954018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797615, 31.308731, 40.943039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012417, 0.587068, -0.809442,
		0.063830, 0.807388, 0.586558,
		0.997884, -0.058950, -0.027447,
		39.096981, 31.291046, 40.934803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451939, 31.784821, 40.474308>,  <38.398460, 31.332312, 40.954018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451939, 31.784821, 40.474308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826427, 31.669344, 40.554459>,  <39.051121, 31.600058, 40.602551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826427, 31.669344, 40.554459>,  <38.451939, 31.784821, 40.474308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826427, 31.669344, 40.554459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309057, 0.405004, -0.860497,
		0.167264, 0.867542, 0.468394,
		0.936219, -0.288691, 0.200378,
		39.107292, 31.582737, 40.614571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864563, 32.372364, 40.381458>,  <38.451939, 31.784821, 40.474308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864563, 32.372364, 40.381458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114082, 32.062572, 40.339401>,  <39.263794, 31.876698, 40.314167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114082, 32.062572, 40.339401>,  <38.864563, 32.372364, 40.381458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114082, 32.062572, 40.339401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293041, 0.356467, -0.887163,
		0.724572, 0.522599, 0.449318,
		0.623797, -0.774482, -0.105144,
		39.301220, 31.830229, 40.307858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563866, 32.576168, 40.422913>,  <38.864563, 32.372364, 40.381458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563866, 32.576168, 40.422913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488285, 32.277805, 40.167439>,  <39.442936, 32.098789, 40.014153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488285, 32.277805, 40.167439>,  <39.563866, 32.576168, 40.422913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488285, 32.277805, 40.167439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375017, 0.546291, -0.748952,
		0.907556, -0.381037, 0.176503,
		-0.188956, -0.745907, -0.638685,
		39.431599, 32.054031, 39.975834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747051, 32.846836, 39.807491>,  <39.563866, 32.576168, 40.422913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747051, 32.846836, 39.807491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676010, 32.466900, 39.704529>,  <39.633385, 32.238937, 39.642754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676010, 32.466900, 39.704529>,  <39.747051, 32.846836, 39.807491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676010, 32.466900, 39.704529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052916, 0.251965, -0.966289,
		0.982679, -0.185236, 0.005512,
		-0.177602, -0.949843, -0.257403,
		39.622730, 32.181946, 39.627308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208889, 32.650780, 39.318684>,  <39.747051, 32.846836, 39.807491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208889, 32.650780, 39.318684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906063, 32.394379, 39.268147>,  <39.724369, 32.240536, 39.237823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906063, 32.394379, 39.268147>,  <40.208889, 32.650780, 39.318684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906063, 32.394379, 39.268147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087630, 0.291262, -0.952621,
		0.647436, -0.710124, -0.276676,
		-0.757065, -0.641007, -0.126346,
		39.678944, 32.202076, 39.230244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326000, 32.183704, 38.697723>,  <40.208889, 32.650780, 39.318684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326000, 32.183704, 38.697723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935589, 32.231693, 38.770351>,  <39.701340, 32.260487, 38.813931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935589, 32.231693, 38.770351>,  <40.326000, 32.183704, 38.697723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935589, 32.231693, 38.770351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165278, 0.134145, -0.977082,
		-0.141584, -0.983672, -0.111100,
		-0.976031, 0.119977, 0.181572,
		39.642780, 32.267685, 38.824821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954887, 31.840298, 38.132130>,  <40.326000, 32.183704, 38.697723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954887, 31.840298, 38.132130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713375, 32.112980, 38.297409>,  <39.568466, 32.276588, 38.396576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713375, 32.112980, 38.297409>,  <39.954887, 31.840298, 38.132130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713375, 32.112980, 38.297409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141329, 0.418585, -0.897114,
		-0.784523, -0.600055, -0.156388,
		-0.603780, 0.681704, 0.413195,
		39.532242, 32.317490, 38.421368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829117, 32.409496, 37.735088>,  <39.954887, 31.840298, 38.132130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829117, 32.409496, 37.735088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521931, 32.450729, 37.987946>,  <39.337620, 32.475468, 38.139660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521931, 32.450729, 37.987946>,  <39.829117, 32.409496, 37.735088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521931, 32.450729, 37.987946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343247, 0.767029, -0.542078,
		-0.540746, -0.633278, -0.553671,
		-0.767968, 0.103081, 0.632139,
		39.291542, 32.481655, 38.177586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238037, 32.521088, 37.269196>,  <39.829117, 32.409496, 37.735088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238037, 32.521088, 37.269196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197254, 32.645573, 37.647137>,  <39.172787, 32.720264, 37.873901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197254, 32.645573, 37.647137>,  <39.238037, 32.521088, 37.269196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197254, 32.645573, 37.647137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283955, 0.901183, -0.327473,
		-0.953402, -0.301683, -0.003508,
		-0.101954, 0.311217, 0.944854,
		39.166668, 32.738937, 37.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505066, 32.731380, 37.408092>,  <39.238037, 32.521088, 37.269196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505066, 32.731380, 37.408092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730522, 32.921646, 37.678219>,  <38.865795, 33.035805, 37.840294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730522, 32.921646, 37.678219>,  <38.505066, 32.731380, 37.408092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730522, 32.921646, 37.678219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283705, 0.879299, -0.382551,
		-0.775772, 0.024030, 0.630556,
		0.563640, 0.475665, 0.675317,
		38.899612, 33.064346, 37.880814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069962, 33.204857, 37.734612>,  <38.505066, 32.731380, 37.408092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069962, 33.204857, 37.734612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444740, 33.333508, 37.789291>,  <38.669609, 33.410698, 37.822098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444740, 33.333508, 37.789291>,  <38.069962, 33.204857, 37.734612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444740, 33.333508, 37.789291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242266, 0.879684, -0.409224,
		-0.251870, 0.350303, 0.902136,
		0.936947, 0.321628, 0.136699,
		38.725822, 33.429996, 37.830299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017265, 33.952538, 37.830490>,  <38.069962, 33.204857, 37.734612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017265, 33.952538, 37.830490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394096, 33.871033, 37.723927>,  <38.620193, 33.822128, 37.659988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394096, 33.871033, 37.723927>,  <38.017265, 33.952538, 37.830490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394096, 33.871033, 37.723927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052460, 0.874042, -0.483009,
		0.331274, 0.441055, 0.834103,
		0.942075, -0.203766, -0.266410,
		38.676720, 33.809902, 37.644005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441097, 34.608795, 37.963554>,  <38.017265, 33.952538, 37.830490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441097, 34.608795, 37.963554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634445, 34.374630, 37.703201>,  <38.750454, 34.234131, 37.546989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634445, 34.374630, 37.703201>,  <38.441097, 34.608795, 37.963554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634445, 34.374630, 37.703201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197553, 0.797273, -0.570376,
		0.852835, 0.147119, 0.501028,
		0.483369, -0.585416, -0.650879,
		38.779457, 34.199005, 37.507938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954227, 35.054203, 37.735760>,  <38.441097, 34.608795, 37.963554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954227, 35.054203, 37.735760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918652, 34.771168, 37.455357>,  <38.897305, 34.601345, 37.287117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918652, 34.771168, 37.455357>,  <38.954227, 35.054203, 37.735760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918652, 34.771168, 37.455357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022254, 0.705029, -0.708830,
		0.995788, -0.047444, -0.078452,
		-0.088940, -0.707590, -0.701003,
		38.891968, 34.558891, 37.245056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300137, 35.287487, 37.125938>,  <38.954227, 35.054203, 37.735760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300137, 35.287487, 37.125938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060295, 35.000858, 36.983391>,  <38.916389, 34.828880, 36.897861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060295, 35.000858, 36.983391>,  <39.300137, 35.287487, 37.125938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060295, 35.000858, 36.983391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003408, 0.443012, -0.896509,
		0.800288, -0.538766, -0.263190,
		-0.599605, -0.716569, -0.356373,
		38.880413, 34.785889, 36.876480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287266, 35.360065, 36.422626>,  <39.300137, 35.287487, 37.125938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287266, 35.360065, 36.422626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026630, 35.056698, 36.416500>,  <38.870251, 34.874676, 36.412823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026630, 35.056698, 36.416500>,  <39.287266, 35.360065, 36.422626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026630, 35.056698, 36.416500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237565, 0.223192, -0.945382,
		0.720415, -0.612360, -0.325603,
		-0.651586, -0.758420, -0.015316,
		38.831154, 34.829170, 36.411907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390362, 34.847275, 35.871498>,  <39.287266, 35.360065, 36.422626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390362, 34.847275, 35.871498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017551, 34.924492, 35.994171>,  <38.793865, 34.970821, 36.067776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017551, 34.924492, 35.994171>,  <39.390362, 34.847275, 35.871498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017551, 34.924492, 35.994171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193708, 0.449857, -0.871841,
		-0.306268, -0.871988, -0.381886,
		-0.932029, 0.193043, 0.306688,
		38.737942, 34.982403, 36.086178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580391, 34.586918, 35.169464>,  <39.390362, 34.847275, 35.871498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580391, 34.586918, 35.169464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836510, 34.316719, 35.023197>,  <39.990181, 34.154598, 34.935436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.836510, 34.316719, 35.023197>,  <39.580391, 34.586918, 35.169464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836510, 34.316719, 35.023197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597823, -0.139329, -0.789427,
		0.482310, 0.724077, -0.493042,
		0.640301, -0.675500, -0.365670,
		40.028599, 34.114071, 34.913498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801193, 34.784336, 34.484772>,  <39.580391, 34.586918, 35.169464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801193, 34.784336, 34.484772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815388, 34.388420, 34.540001>,  <39.823902, 34.150871, 34.573139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815388, 34.388420, 34.540001>,  <39.801193, 34.784336, 34.484772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815388, 34.388420, 34.540001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571440, -0.133443, -0.809722,
		0.819876, -0.050169, -0.570339,
		0.035485, -0.989786, 0.138075,
		39.826035, 34.091484, 34.581425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116016, 35.466797, 34.436703>,  <39.801193, 34.784336, 34.484772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116016, 35.466797, 34.436703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508415, 35.412209, 34.491863>,  <40.743855, 35.379456, 34.524960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508415, 35.412209, 34.491863>,  <40.116016, 35.466797, 34.436703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508415, 35.412209, 34.491863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138705, -0.003624, -0.990327,
		0.135651, 0.990637, 0.015374,
		0.980999, -0.136471, 0.137898,
		40.802715, 35.371265, 34.533234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486057, 35.680977, 33.811085>,  <40.116016, 35.466797, 34.436703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486057, 35.680977, 33.811085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802288, 35.525959, 34.000736>,  <40.992027, 35.432949, 34.114525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802288, 35.525959, 34.000736>,  <40.486057, 35.680977, 33.811085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802288, 35.525959, 34.000736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347158, -0.354166, -0.868359,
		0.504444, 0.851104, -0.145459,
		0.790580, -0.387541, 0.474125,
		41.039463, 35.409698, 34.142975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986679, 35.817860, 33.471905>,  <40.486057, 35.680977, 33.811085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986679, 35.817860, 33.471905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102875, 35.492710, 33.673836>,  <41.172592, 35.297619, 33.794994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102875, 35.492710, 33.673836>,  <40.986679, 35.817860, 33.471905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102875, 35.492710, 33.673836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271061, -0.436061, -0.858124,
		0.917682, 0.386116, 0.093667,
		0.290491, -0.812875, 0.504827,
		41.190022, 35.248848, 33.825283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703903, 35.542641, 33.385403>,  <40.986679, 35.817860, 33.471905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703903, 35.542641, 33.385403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433971, 35.252949, 33.442108>,  <41.272015, 35.079132, 33.476131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433971, 35.252949, 33.442108>,  <41.703903, 35.542641, 33.385403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433971, 35.252949, 33.442108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355073, -0.487037, -0.797947,
		0.646942, -0.488140, 0.585820,
		-0.674825, -0.724234, 0.141760,
		41.231525, 35.035679, 33.484634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903828, 34.898628, 33.681080>,  <41.703903, 35.542641, 33.385403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903828, 34.898628, 33.681080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593342, 34.780930, 33.458042>,  <41.407051, 34.710312, 33.324219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593342, 34.780930, 33.458042>,  <41.903828, 34.898628, 33.681080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593342, 34.780930, 33.458042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619937, -0.517178, -0.590089,
		-0.114742, -0.803708, 0.583857,
		-0.776217, -0.294246, -0.557590,
		41.360477, 34.692657, 33.290764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176132, 34.332478, 33.349091>,  <41.903828, 34.898628, 33.681080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176132, 34.332478, 33.349091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496651, 34.126072, 33.470192>,  <42.688961, 34.002228, 33.542854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496651, 34.126072, 33.470192>,  <42.176132, 34.332478, 33.349091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496651, 34.126072, 33.470192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445366, -0.176582, 0.877763,
		-0.399477, -0.838182, -0.371308,
		0.801291, -0.516014, 0.302757,
		42.737038, 33.971268, 33.561020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839130, 34.545422, 33.197929>,  <42.176132, 34.332478, 33.349091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839130, 34.545422, 33.197929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816135, 34.919212, 33.338474>,  <42.802338, 35.143486, 33.422802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816135, 34.919212, 33.338474>,  <42.839130, 34.545422, 33.197929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816135, 34.919212, 33.338474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930111, 0.178011, -0.321257,
		-0.362752, 0.308337, -0.879397,
		-0.057487, 0.934473, 0.351361,
		42.798889, 35.199554, 33.443882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395813, 34.872494, 32.937225>,  <42.839130, 34.545422, 33.197929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395813, 34.872494, 32.937225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317081, 35.133354, 33.230061>,  <43.269844, 35.289871, 33.405762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317081, 35.133354, 33.230061>,  <43.395813, 34.872494, 32.937225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317081, 35.133354, 33.230061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910491, 0.398561, -0.110247,
		-0.363681, 0.644864, -0.672225,
		-0.196829, 0.652150, 0.732092,
		43.258034, 35.328999, 33.449688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458004, 35.639099, 32.696148>,  <43.395813, 34.872494, 32.937225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458004, 35.639099, 32.696148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515762, 35.643280, 33.091934>,  <43.550419, 35.645790, 33.329407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515762, 35.643280, 33.091934>,  <43.458004, 35.639099, 32.696148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515762, 35.643280, 33.091934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933123, 0.331317, -0.139677,
		-0.329286, 0.943462, 0.038089,
		0.144400, 0.010452, 0.989464,
		43.559082, 35.646416, 33.388775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571285, 36.352448, 32.997929>,  <43.458004, 35.639099, 32.696148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571285, 36.352448, 32.997929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759609, 36.058426, 33.193081>,  <43.872604, 35.882011, 33.310173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759609, 36.058426, 33.193081>,  <43.571285, 36.352448, 32.997929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759609, 36.058426, 33.193081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865634, 0.278124, -0.416323,
		0.170329, 0.618336, 0.767234,
		0.470814, -0.735056, 0.487880,
		43.900852, 35.837910, 33.339443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252110, 36.613754, 33.180645>,  <43.571285, 36.352448, 32.997929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252110, 36.613754, 33.180645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338345, 36.236198, 33.280724>,  <44.390087, 36.009666, 33.340771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338345, 36.236198, 33.280724>,  <44.252110, 36.613754, 33.180645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338345, 36.236198, 33.280724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943692, 0.267238, 0.195013,
		-0.250933, 0.194066, 0.948352,
		0.215590, -0.943887, 0.250198,
		44.403023, 35.953033, 33.355782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476414, 36.591160, 33.980011>,  <44.252110, 36.613754, 33.180645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476414, 36.591160, 33.980011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618652, 36.324001, 33.718487>,  <44.703995, 36.163708, 33.561573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618652, 36.324001, 33.718487>,  <44.476414, 36.591160, 33.980011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618652, 36.324001, 33.718487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901753, 0.429100, 0.052106,
		0.245750, -0.608105, 0.754861,
		0.355597, -0.667893, -0.653812,
		44.725330, 36.123634, 33.522343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059120, 36.253494, 34.309200>,  <44.476414, 36.591160, 33.980011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059120, 36.253494, 34.309200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.055080, 36.339100, 33.918488>,  <45.052658, 36.390465, 33.684059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.055080, 36.339100, 33.918488>,  <45.059120, 36.253494, 34.309200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055080, 36.339100, 33.918488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780732, 0.612025, 0.126024,
		0.624784, -0.761329, -0.173272,
		-0.010101, 0.214017, -0.976778,
		45.052052, 36.403305, 33.625454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500916, 35.817745, 33.885719>,  <45.059120, 36.253494, 34.309200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500916, 35.817745, 33.885719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673203, 36.153625, 34.018013>,  <45.776573, 36.355152, 34.097389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673203, 36.153625, 34.018013>,  <45.500916, 35.817745, 33.885719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673203, 36.153625, 34.018013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254810, -0.238409, 0.937141,
		0.865768, -0.487918, 0.111277,
		0.430718, 0.839701, 0.330733,
		45.802418, 36.405537, 34.117233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918747, 35.502789, 34.525837>,  <45.500916, 35.817745, 33.885719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918747, 35.502789, 34.525837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175594, 35.445801, 34.827137>,  <46.329700, 35.411610, 35.007919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175594, 35.445801, 34.827137>,  <45.918747, 35.502789, 34.525837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175594, 35.445801, 34.827137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474820, -0.697508, -0.536684,
		0.601859, 0.702273, -0.380235,
		0.642115, -0.142465, 0.753254,
		46.368229, 35.403061, 35.053112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.654465, 35.724998, 34.342312>,  <45.918747, 35.502789, 34.525837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.654465, 35.724998, 34.342312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624203, 35.417919, 34.596844>,  <46.606045, 35.233673, 34.749565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624203, 35.417919, 34.596844>,  <46.654465, 35.724998, 34.342312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624203, 35.417919, 34.596844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569331, -0.557171, -0.604503,
		0.818620, 0.316549, 0.479226,
		-0.075656, -0.767696, 0.636332,
		46.601505, 35.187611, 34.787743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.289108, 35.449917, 34.586300>,  <46.654465, 35.724998, 34.342312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.289108, 35.449917, 34.586300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009140, 35.164509, 34.573616>,  <46.841160, 34.993263, 34.566006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.009140, 35.164509, 34.573616>,  <47.289108, 35.449917, 34.586300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009140, 35.164509, 34.573616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574243, -0.535793, -0.619008,
		0.424685, -0.451463, 0.784745,
		-0.699920, -0.713517, -0.031706,
		46.799164, 34.950455, 34.564106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.525787, 35.221279, 35.198303>,  <47.289108, 35.449917, 34.586300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.525787, 35.221279, 35.198303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760284, 34.897629, 35.214447>,  <47.900982, 34.703438, 35.224133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760284, 34.897629, 35.214447>,  <47.525787, 35.221279, 35.198303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.760284, 34.897629, 35.214447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127703, -0.043099, 0.990876,
		-0.800007, -0.586047, -0.128595,
		0.586242, -0.809130, 0.040360,
		47.936157, 34.654888, 35.226555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.913719, 33.687279, 25.388794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519058, 33.624359, 25.405603>,  <34.282261, 33.586609, 25.415689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519058, 33.624359, 25.405603>,  <34.913719, 33.687279, 25.388794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519058, 33.624359, 25.405603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108566, -0.443278, 0.889785,
		-0.121333, 0.882475, 0.454441,
		-0.986657, -0.157297, 0.042023,
		34.223061, 33.577171, 25.418211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630024, 34.078331, 26.038950>,  <34.913719, 33.687279, 25.388794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630024, 34.078331, 26.038950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359730, 33.803066, 25.933268>,  <34.197552, 33.637905, 25.869858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359730, 33.803066, 25.933268>,  <34.630024, 34.078331, 26.038950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359730, 33.803066, 25.933268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063852, -0.302430, 0.951030,
		-0.734371, 0.659517, 0.160423,
		-0.675738, -0.688166, -0.264208,
		34.157009, 33.596615, 25.854006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179859, 34.004780, 26.609879>,  <34.630024, 34.078331, 26.038950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179859, 34.004780, 26.609879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119167, 33.674004, 26.393305>,  <34.082752, 33.475536, 26.263361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119167, 33.674004, 26.393305>,  <34.179859, 34.004780, 26.609879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119167, 33.674004, 26.393305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051006, -0.540495, 0.839800,
		-0.987106, 0.155036, 0.039828,
		-0.151726, -0.826939, -0.541434,
		34.073650, 33.425922, 26.230875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517906, 33.678921, 26.849209>,  <34.179859, 34.004780, 26.609879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517906, 33.678921, 26.849209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742451, 33.401203, 26.669062>,  <33.877178, 33.234573, 26.560972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742451, 33.401203, 26.669062>,  <33.517906, 33.678921, 26.849209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742451, 33.401203, 26.669062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039330, -0.565975, 0.823484,
		-0.826635, -0.444560, -0.345023,
		0.561363, -0.694290, -0.450370,
		33.910858, 33.192917, 26.533951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125919, 33.094208, 26.967060>,  <33.517906, 33.678921, 26.849209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125919, 33.094208, 26.967060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508797, 33.005985, 26.892080>,  <33.738522, 32.953053, 26.847092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.508797, 33.005985, 26.892080>,  <33.125919, 33.094208, 26.967060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508797, 33.005985, 26.892080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017193, -0.689784, 0.723812,
		-0.288940, -0.689604, -0.664048,
		0.957193, -0.220555, -0.187450,
		33.795956, 32.939819, 26.835846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166599, 32.431480, 27.109907>,  <33.125919, 33.094208, 26.967060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166599, 32.431480, 27.109907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558235, 32.512844, 27.110497>,  <33.793217, 32.561665, 27.110851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558235, 32.512844, 27.110497>,  <33.166599, 32.431480, 27.109907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558235, 32.512844, 27.110497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097274, -0.474558, 0.874833,
		0.178653, -0.856398, -0.484423,
		0.979092, 0.203413, 0.001476,
		33.851963, 32.573868, 27.110939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557804, 31.794477, 27.168928>,  <33.166599, 32.431480, 27.109907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557804, 31.794477, 27.168928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.763535, 32.098980, 27.326897>,  <33.886971, 32.281681, 27.421677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.763535, 32.098980, 27.326897>,  <33.557804, 31.794477, 27.168928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763535, 32.098980, 27.326897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081018, -0.501566, 0.861318,
		0.853762, -0.410999, -0.319642,
		0.514322, 0.761257, 0.394920,
		33.917831, 32.327358, 27.445372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928173, 31.395655, 27.654423>,  <33.557804, 31.794477, 27.168928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928173, 31.395655, 27.654423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.038250, 31.770792, 27.739010>,  <34.104298, 31.995874, 27.789762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.038250, 31.770792, 27.739010>,  <33.928173, 31.395655, 27.654423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038250, 31.770792, 27.739010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340223, -0.300730, 0.890961,
		0.899175, -0.173242, -0.401835,
		0.275196, 0.937843, 0.211468,
		34.120808, 32.052143, 27.802450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566677, 31.380659, 27.983004>,  <33.928173, 31.395655, 27.654423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566677, 31.380659, 27.983004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435360, 31.739050, 28.102634>,  <34.356571, 31.954084, 28.174414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435360, 31.739050, 28.102634>,  <34.566677, 31.380659, 27.983004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435360, 31.739050, 28.102634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513306, -0.096569, 0.852755,
		0.792931, 0.433472, -0.428208,
		-0.328294, 0.895978, 0.299077,
		34.336872, 32.007843, 28.192358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166969, 31.667631, 28.347353>,  <34.566677, 31.380659, 27.983004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166969, 31.667631, 28.347353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.863346, 31.897036, 28.470587>,  <34.681171, 32.034679, 28.544527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.863346, 31.897036, 28.470587>,  <35.166969, 31.667631, 28.347353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863346, 31.897036, 28.470587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364046, -0.018404, 0.931199,
		0.539724, 0.818990, -0.194815,
		-0.759057, 0.573512, 0.308084,
		34.635628, 32.069088, 28.563011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457203, 32.182922, 28.756197>,  <35.166969, 31.667631, 28.347353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457203, 32.182922, 28.756197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079224, 32.220539, 28.881561>,  <34.852436, 32.243111, 28.956779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079224, 32.220539, 28.881561>,  <35.457203, 32.182922, 28.756197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079224, 32.220539, 28.881561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324842, 0.154517, 0.933061,
		0.039320, 0.983504, -0.176559,
		-0.944950, 0.094042, 0.313408,
		34.795738, 32.248753, 28.975584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438362, 32.732494, 29.181265>,  <35.457203, 32.182922, 28.756197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438362, 32.732494, 29.181265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115368, 32.519249, 29.282265>,  <34.921570, 32.391300, 29.342865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115368, 32.519249, 29.282265>,  <35.438362, 32.732494, 29.181265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115368, 32.519249, 29.282265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214687, 0.133094, 0.967572,
		-0.549435, 0.835508, 0.006982,
		-0.807484, -0.533116, 0.252499,
		34.873123, 32.359314, 29.358015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244537, 33.086884, 29.755428>,  <35.438362, 32.732494, 29.181265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244537, 33.086884, 29.755428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072266, 32.728809, 29.801325>,  <34.968903, 32.513966, 29.828863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072266, 32.728809, 29.801325>,  <35.244537, 33.086884, 29.755428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072266, 32.728809, 29.801325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094137, 0.081883, 0.992186,
		-0.897583, 0.438113, 0.049004,
		-0.430677, -0.895183, 0.114740,
		34.943062, 32.460255, 29.835747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875198, 33.185131, 30.312885>,  <35.244537, 33.086884, 29.755428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875198, 33.185131, 30.312885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887703, 32.785686, 30.295898>,  <34.895206, 32.546021, 30.285706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887703, 32.785686, 30.295898>,  <34.875198, 33.185131, 30.312885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887703, 32.785686, 30.295898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035524, -0.041352, 0.998513,
		-0.998880, -0.032727, 0.034181,
		0.031265, -0.998608, -0.042469,
		34.897083, 32.486103, 30.283157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416882, 32.969105, 30.961716>,  <34.875198, 33.185131, 30.312885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416882, 32.969105, 30.961716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666306, 32.684570, 30.831997>,  <34.815960, 32.513847, 30.754166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666306, 32.684570, 30.831997>,  <34.416882, 32.969105, 30.961716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666306, 32.684570, 30.831997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223382, -0.235406, 0.945878,
		-0.749182, -0.662254, 0.012111,
		0.623560, -0.711340, -0.324297,
		34.853374, 32.471169, 30.734707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197922, 32.426514, 31.324759>,  <34.416882, 32.969105, 30.961716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197922, 32.426514, 31.324759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.577991, 32.362061, 31.218027>,  <34.806034, 32.323387, 31.153988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.577991, 32.362061, 31.218027>,  <34.197922, 32.426514, 31.324759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577991, 32.362061, 31.218027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216061, -0.276553, 0.936395,
		-0.224673, -0.947394, -0.227961,
		0.950179, -0.161130, -0.266829,
		34.863045, 32.313721, 31.137978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309223, 31.700117, 31.537951>,  <34.197922, 32.426514, 31.324759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309223, 31.700117, 31.537951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665936, 31.878477, 31.507227>,  <34.879963, 31.985493, 31.488792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665936, 31.878477, 31.507227>,  <34.309223, 31.700117, 31.537951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665936, 31.878477, 31.507227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287815, -0.428046, 0.856702,
		0.349124, -0.786099, -0.510060,
		0.891782, 0.445898, -0.076810,
		34.933472, 32.012245, 31.484184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773376, 31.255054, 31.738405>,  <34.309223, 31.700117, 31.537951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773376, 31.255054, 31.738405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021534, 31.568306, 31.755472>,  <35.170429, 31.756258, 31.765713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021534, 31.568306, 31.755472>,  <34.773376, 31.255054, 31.738405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021534, 31.568306, 31.755472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515984, -0.448519, 0.729788,
		0.590656, -0.430740, -0.682340,
		0.620392, 0.783131, 0.042665,
		35.207653, 31.803246, 31.768272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413628, 30.993986, 31.605978>,  <34.773376, 31.255054, 31.738405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413628, 30.993986, 31.605978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432808, 31.324322, 31.830723>,  <35.444317, 31.522524, 31.965570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432808, 31.324322, 31.830723>,  <35.413628, 30.993986, 31.605978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432808, 31.324322, 31.830723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417922, -0.527495, 0.739655,
		0.907216, 0.199346, -0.370432,
		0.047954, 0.825839, 0.561863,
		35.447193, 31.572073, 31.999281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106628, 31.008703, 31.836304>,  <35.413628, 30.993986, 31.605978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106628, 31.008703, 31.836304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904507, 31.245993, 32.086983>,  <35.783234, 31.388367, 32.237389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904507, 31.245993, 32.086983>,  <36.106628, 31.008703, 31.836304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904507, 31.245993, 32.086983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591457, -0.290737, 0.752098,
		0.628367, 0.750704, -0.203956,
		-0.505306, 0.593224, 0.626699,
		35.752914, 31.423960, 32.274994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592682, 31.373014, 32.188889>,  <36.106628, 31.008703, 31.836304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592682, 31.373014, 32.188889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281658, 31.374750, 32.440407>,  <36.095043, 31.375792, 32.591320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281658, 31.374750, 32.440407>,  <36.592682, 31.373014, 32.188889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281658, 31.374750, 32.440407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589913, -0.341227, 0.731824,
		0.217738, 0.939971, 0.262764,
		-0.777556, 0.004338, 0.628799,
		36.048393, 31.376051, 32.629047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790020, 31.621380, 32.865501>,  <36.592682, 31.373014, 32.188889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790020, 31.621380, 32.865501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463192, 31.409739, 32.957104>,  <36.267094, 31.282755, 33.012066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463192, 31.409739, 32.957104>,  <36.790020, 31.621380, 32.865501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463192, 31.409739, 32.957104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440968, -0.317655, 0.839430,
		-0.371400, 0.786859, 0.492864,
		-0.817074, -0.529101, 0.229002,
		36.218071, 31.251009, 33.025803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417103, 31.467888, 33.138599>,  <36.790020, 31.621380, 32.865501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417103, 31.467888, 33.138599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721596, 31.639626, 33.332993>,  <37.904293, 31.742668, 33.449631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721596, 31.639626, 33.332993>,  <37.417103, 31.467888, 33.138599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721596, 31.639626, 33.332993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098133, 0.817069, -0.568127,
		-0.641008, 0.384787, 0.664114,
		0.761235, 0.429346, 0.485987,
		37.949966, 31.768429, 33.478790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104958, 32.156258, 33.307049>,  <37.417103, 31.467888, 33.138599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104958, 32.156258, 33.307049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502808, 32.197311, 33.312515>,  <37.741516, 32.221943, 33.315796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502808, 32.197311, 33.312515>,  <37.104958, 32.156258, 33.307049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502808, 32.197311, 33.312515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057120, 0.653932, -0.754394,
		-0.086364, 0.749558, 0.656280,
		0.994625, 0.102639, 0.013662,
		37.801193, 32.228104, 33.316612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272785, 32.930817, 33.339798>,  <37.104958, 32.156258, 33.307049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272785, 32.930817, 33.339798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594872, 32.765625, 33.169586>,  <37.788124, 32.666512, 33.067459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594872, 32.765625, 33.169586>,  <37.272785, 32.930817, 33.339798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594872, 32.765625, 33.169586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019183, 0.735377, -0.677387,
		0.592672, 0.537279, 0.600059,
		0.805215, -0.412979, -0.425531,
		37.836437, 32.641731, 33.041927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660255, 33.490555, 33.258499>,  <37.272785, 32.930817, 33.339798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660255, 33.490555, 33.258499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790745, 33.206116, 33.009369>,  <37.869038, 33.035454, 32.859890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790745, 33.206116, 33.009369>,  <37.660255, 33.490555, 33.258499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790745, 33.206116, 33.009369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092073, 0.679645, -0.727740,
		0.940797, 0.180063, 0.287191,
		0.326227, -0.711098, -0.622828,
		37.888615, 32.992786, 32.822521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164280, 33.872665, 32.842957>,  <37.660255, 33.490555, 33.258499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164280, 33.872665, 32.842957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091160, 33.542271, 32.629665>,  <38.047287, 33.344036, 32.501690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091160, 33.542271, 32.629665>,  <38.164280, 33.872665, 32.842957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091160, 33.542271, 32.629665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099578, 0.555135, -0.825778,
		0.978094, -0.097855, -0.183729,
		-0.182801, -0.825984, -0.533231,
		38.036320, 33.294476, 32.469696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678867, 33.845329, 32.339752>,  <38.164280, 33.872665, 32.842957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678867, 33.845329, 32.339752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366844, 33.624943, 32.221127>,  <38.179630, 33.492710, 32.149952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366844, 33.624943, 32.221127>,  <38.678867, 33.845329, 32.339752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366844, 33.624943, 32.221127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094848, 0.572600, -0.814330,
		0.618482, -0.607092, -0.498917,
		-0.780053, -0.550970, -0.296562,
		38.132828, 33.459652, 32.132160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780491, 33.880150, 31.617573>,  <38.678867, 33.845329, 32.339752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780491, 33.880150, 31.617573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.406582, 33.745052, 31.661633>,  <38.182236, 33.663994, 31.688068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.406582, 33.745052, 31.661633>,  <38.780491, 33.880150, 31.617573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406582, 33.745052, 31.661633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284908, 0.527529, -0.800338,
		0.212200, -0.779516, -0.589344,
		-0.934772, -0.337741, 0.110148,
		38.126152, 33.643730, 31.694677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623096, 33.563297, 30.951981>,  <38.780491, 33.880150, 31.617573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623096, 33.563297, 30.951981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.276543, 33.652718, 31.130598>,  <38.068611, 33.706367, 31.237768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.276543, 33.652718, 31.130598>,  <38.623096, 33.563297, 30.951981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276543, 33.652718, 31.130598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397399, 0.232860, -0.887609,
		-0.302406, -0.946468, -0.112909,
		-0.866386, 0.223548, 0.446544,
		38.016628, 33.719780, 31.264561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170506, 33.572914, 30.392576>,  <38.623096, 33.563297, 30.951981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170506, 33.572914, 30.392576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934937, 33.740459, 30.669048>,  <37.793594, 33.840988, 30.834930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934937, 33.740459, 30.669048>,  <38.170506, 33.572914, 30.392576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934937, 33.740459, 30.669048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464968, 0.523908, -0.713670,
		-0.661045, -0.741669, -0.113781,
		-0.588918, 0.418864, 0.691179,
		37.758263, 33.866119, 30.876402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465256, 33.435211, 30.164974>,  <38.170506, 33.572914, 30.392576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465256, 33.435211, 30.164974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477566, 33.760071, 30.398027>,  <37.484951, 33.954987, 30.537859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477566, 33.760071, 30.398027>,  <37.465256, 33.435211, 30.164974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477566, 33.760071, 30.398027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496544, 0.518317, -0.696270,
		-0.867466, -0.267877, 0.419220,
		0.030774, 0.812151, 0.582635,
		37.486797, 34.003716, 30.572819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777145, 33.784027, 30.210442>,  <37.465256, 33.435211, 30.164974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777145, 33.784027, 30.210442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054630, 34.067245, 30.263268>,  <37.221119, 34.237175, 30.294964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054630, 34.067245, 30.263268>,  <36.777145, 33.784027, 30.210442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054630, 34.067245, 30.263268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464961, 0.580265, -0.668658,
		-0.550073, 0.402448, 0.731748,
		0.693708, 0.708045, 0.132066,
		37.262741, 34.279659, 30.302887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399410, 34.329639, 30.441843>,  <36.777145, 33.784027, 30.210442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399410, 34.329639, 30.441843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.738400, 34.475388, 30.287428>,  <36.941792, 34.562836, 30.194778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.738400, 34.475388, 30.287428>,  <36.399410, 34.329639, 30.441843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738400, 34.475388, 30.287428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528092, 0.652588, -0.543367,
		0.053939, 0.664353, 0.745470,
		0.847472, 0.364368, -0.386039,
		36.992641, 34.584698, 30.171616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183651, 34.917782, 30.290745>,  <36.399410, 34.329639, 30.441843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183651, 34.917782, 30.290745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538486, 34.934952, 30.106909>,  <36.751389, 34.945251, 29.996607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538486, 34.934952, 30.106909>,  <36.183651, 34.917782, 30.290745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538486, 34.934952, 30.106909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412356, 0.521135, -0.747249,
		0.207436, 0.852395, 0.479994,
		0.887093, 0.042922, -0.459592,
		36.804615, 34.947830, 29.969030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180637, 35.685886, 29.976986>,  <36.183651, 34.917782, 30.290745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180637, 35.685886, 29.976986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425262, 35.422276, 29.801867>,  <36.572037, 35.264107, 29.696795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425262, 35.422276, 29.801867>,  <36.180637, 35.685886, 29.976986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425262, 35.422276, 29.801867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310450, 0.309080, -0.898938,
		0.727743, 0.685673, -0.015574,
		0.611564, -0.659031, -0.437798,
		36.608730, 35.224567, 29.670527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482731, 36.039425, 29.389078>,  <36.180637, 35.685886, 29.976986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482731, 36.039425, 29.389078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530319, 35.648575, 29.318562>,  <36.558872, 35.414066, 29.276251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530319, 35.648575, 29.318562>,  <36.482731, 36.039425, 29.389078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530319, 35.648575, 29.318562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319581, 0.130419, -0.938541,
		0.940061, 0.167999, -0.296753,
		0.118972, -0.977122, -0.176291,
		36.566010, 35.355438, 29.265675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042809, 36.062321, 29.024384>,  <36.482731, 36.039425, 29.389078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042809, 36.062321, 29.024384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835510, 35.729916, 28.943552>,  <36.711132, 35.530472, 28.895052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835510, 35.729916, 28.943552>,  <37.042809, 36.062321, 29.024384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835510, 35.729916, 28.943552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071258, 0.193508, -0.978508,
		0.852257, -0.521509, -0.041068,
		-0.518247, -0.831013, -0.202080,
		36.680035, 35.480610, 28.882927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227543, 35.899124, 28.376476>,  <37.042809, 36.062321, 29.024384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227543, 35.899124, 28.376476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904858, 35.668690, 28.429153>,  <36.711246, 35.530430, 28.460760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904858, 35.668690, 28.429153>,  <37.227543, 35.899124, 28.376476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904858, 35.668690, 28.429153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280833, 0.177651, -0.943172,
		0.519951, -0.797851, -0.305097,
		-0.806712, -0.576084, 0.131694,
		36.662846, 35.495865, 28.468662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197075, 35.344906, 27.876785>,  <37.227543, 35.899124, 28.376476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197075, 35.344906, 27.876785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816154, 35.379829, 27.993750>,  <36.587605, 35.400784, 28.063929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816154, 35.379829, 27.993750>,  <37.197075, 35.344906, 27.876785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816154, 35.379829, 27.993750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289682, 0.042734, -0.956168,
		-0.095983, -0.995264, -0.015402,
		-0.952298, 0.087314, 0.292412,
		36.530464, 35.406025, 28.081472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.641846, 34.832558, 27.346882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425121, 35.117008, 27.526098>,  <36.295086, 35.287678, 27.633629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425121, 35.117008, 27.526098>,  <36.641846, 34.832558, 27.346882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425121, 35.117008, 27.526098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471997, 0.183646, -0.862260,
		-0.695460, -0.678652, 0.236151,
		-0.541806, 0.711129, 0.448041,
		36.262581, 35.330345, 27.660511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918194, 34.674210, 27.300116>,  <36.641846, 34.832558, 27.346882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918194, 34.674210, 27.300116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.941975, 35.070366, 27.350058>,  <35.956242, 35.308060, 27.380024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.941975, 35.070366, 27.350058>,  <35.918194, 34.674210, 27.300116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941975, 35.070366, 27.350058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643989, 0.133618, -0.753276,
		-0.762722, -0.035625, 0.645745,
		0.059447, 0.990393, 0.124856,
		35.959808, 35.367485, 27.387514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195148, 34.887459, 27.252649>,  <35.918194, 34.674210, 27.300116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195148, 34.887459, 27.252649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.400837, 35.225285, 27.192938>,  <35.524250, 35.427979, 27.157110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.400837, 35.225285, 27.192938>,  <35.195148, 34.887459, 27.252649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400837, 35.225285, 27.192938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617923, 0.244127, -0.747378,
		-0.594765, 0.476563, 0.647411,
		0.514224, 0.844565, -0.149281,
		35.555103, 35.478653, 27.148153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676918, 35.409859, 27.062506>,  <35.195148, 34.887459, 27.252649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676918, 35.409859, 27.062506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002113, 35.611340, 26.945652>,  <35.197231, 35.732227, 26.875540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.002113, 35.611340, 26.945652>,  <34.676918, 35.409859, 27.062506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002113, 35.611340, 26.945652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499484, 0.345390, -0.794494,
		-0.299286, 0.791828, 0.532387,
		0.812985, 0.503700, -0.292135,
		35.246010, 35.762451, 26.858011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346176, 35.935051, 26.461977>,  <34.676918, 35.409859, 27.062506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346176, 35.935051, 26.461977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742458, 35.956799, 26.412098>,  <34.980228, 35.969849, 26.382172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742458, 35.956799, 26.412098>,  <34.346176, 35.935051, 26.461977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742458, 35.956799, 26.412098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135971, 0.423908, -0.895441,
		0.004172, 0.904072, 0.427361,
		0.990704, 0.054373, -0.124696,
		35.039669, 35.973110, 26.374689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435863, 36.483383, 26.053537>,  <34.346176, 35.935051, 26.461977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435863, 36.483383, 26.053537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779583, 36.288063, 25.992655>,  <34.985813, 36.170872, 25.956125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779583, 36.288063, 25.992655>,  <34.435863, 36.483383, 26.053537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779583, 36.288063, 25.992655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000128, 0.297793, -0.954630,
		0.511477, 0.820292, 0.255955,
		0.859297, -0.488304, -0.152209,
		35.037373, 36.141571, 25.946993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867119, 36.972748, 25.785004>,  <34.435863, 36.483383, 26.053537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867119, 36.972748, 25.785004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016724, 36.623039, 25.661221>,  <35.106487, 36.413216, 25.586950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.016724, 36.623039, 25.661221>,  <34.867119, 36.972748, 25.785004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016724, 36.623039, 25.661221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040446, 0.348732, -0.936349,
		0.926542, 0.337689, 0.165791,
		0.374011, -0.874273, -0.309456,
		35.128925, 36.360756, 25.568384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411785, 37.164265, 25.371254>,  <34.867119, 36.972748, 25.785004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411785, 37.164265, 25.371254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332588, 36.791077, 25.251005>,  <35.285069, 36.567165, 25.178856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332588, 36.791077, 25.251005>,  <35.411785, 37.164265, 25.371254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332588, 36.791077, 25.251005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080531, 0.290173, -0.953580,
		0.976890, -0.213010, 0.017681,
		-0.197991, -0.932966, -0.300621,
		35.273190, 36.511189, 25.160818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967030, 37.025276, 24.900270>,  <35.411785, 37.164265, 25.371254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967030, 37.025276, 24.900270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652687, 36.785904, 24.837912>,  <35.464081, 36.642281, 24.800497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652687, 36.785904, 24.837912>,  <35.967030, 37.025276, 24.900270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652687, 36.785904, 24.837912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000409, 0.252595, -0.967572,
		0.618406, -0.760311, -0.198749,
		-0.785859, -0.598434, -0.155895,
		35.416931, 36.606373, 24.791143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142059, 36.566639, 24.304779>,  <35.967030, 37.025276, 24.900270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142059, 36.566639, 24.304779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744286, 36.526649, 24.318077>,  <35.505623, 36.502655, 24.326056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744286, 36.526649, 24.318077>,  <36.142059, 36.566639, 24.304779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744286, 36.526649, 24.318077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068364, 0.372213, -0.925626,
		0.080167, -0.922747, -0.376976,
		-0.994434, -0.099977, 0.033244,
		35.445957, 36.496655, 24.328051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936161, 36.004402, 23.887978>,  <36.142059, 36.566639, 24.304779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936161, 36.004402, 23.887978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645172, 36.275421, 23.931263>,  <35.470577, 36.438034, 23.957235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645172, 36.275421, 23.931263>,  <35.936161, 36.004402, 23.887978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645172, 36.275421, 23.931263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199470, 0.359747, -0.911479,
		-0.656500, -0.641492, -0.396857,
		-0.727475, 0.677547, 0.108216,
		35.426929, 36.478683, 23.963728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643024, 35.918797, 23.300098>,  <35.936161, 36.004402, 23.887978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643024, 35.918797, 23.300098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515690, 36.274632, 23.431124>,  <35.439289, 36.488132, 23.509739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515690, 36.274632, 23.431124>,  <35.643024, 35.918797, 23.300098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515690, 36.274632, 23.431124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139478, 0.385732, -0.912007,
		-0.937661, -0.244636, -0.246870,
		-0.318336, 0.889586, 0.327564,
		35.420189, 36.541508, 23.529392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091717, 36.127850, 22.905113>,  <35.643024, 35.918797, 23.300098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091717, 36.127850, 22.905113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224232, 36.472160, 23.059679>,  <35.303741, 36.678745, 23.152418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224232, 36.472160, 23.059679>,  <35.091717, 36.127850, 22.905113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224232, 36.472160, 23.059679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211887, 0.331208, -0.919459,
		-0.919431, 0.386479, -0.072662,
		0.331286, 0.860776, 0.386413,
		35.323616, 36.730392, 23.175602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758400, 36.598282, 22.523277>,  <35.091717, 36.127850, 22.905113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758400, 36.598282, 22.523277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.022106, 36.837109, 22.706095>,  <35.180328, 36.980404, 22.815784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.022106, 36.837109, 22.706095>,  <34.758400, 36.598282, 22.523277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022106, 36.837109, 22.706095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027465, 0.626556, -0.778892,
		-0.751409, 0.500944, 0.429464,
		0.659265, 0.597062, 0.457041,
		35.219887, 37.016228, 22.843206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527676, 37.352135, 22.474171>,  <34.758400, 36.598282, 22.523277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527676, 37.352135, 22.474171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.921295, 37.383900, 22.537846>,  <35.157467, 37.402958, 22.576050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.921295, 37.383900, 22.537846>,  <34.527676, 37.352135, 22.474171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921295, 37.383900, 22.537846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063737, 0.678050, -0.732247,
		-0.166086, 0.730713, 0.662173,
		0.984049, 0.079411, 0.159188,
		35.216511, 37.407722, 22.585602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628487, 38.086288, 22.467154>,  <34.527676, 37.352135, 22.474171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628487, 38.086288, 22.467154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989216, 37.925793, 22.403006>,  <35.205654, 37.829494, 22.364517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.989216, 37.925793, 22.403006>,  <34.628487, 38.086288, 22.467154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989216, 37.925793, 22.403006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151735, 0.641568, -0.751909,
		0.404581, 0.653758, 0.639464,
		0.901826, -0.401238, -0.160368,
		35.259766, 37.805420, 22.354895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153572, 38.692780, 22.379168>,  <34.628487, 38.086288, 22.467154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153572, 38.692780, 22.379168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306278, 38.365021, 22.208126>,  <35.397903, 38.168365, 22.105501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306278, 38.365021, 22.208126>,  <35.153572, 38.692780, 22.379168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306278, 38.365021, 22.208126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175202, 0.518414, -0.836989,
		0.907501, 0.244617, 0.341473,
		0.381766, -0.819396, -0.427604,
		35.420807, 38.119202, 22.079845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874653, 38.922726, 22.163799>,  <35.153572, 38.692780, 22.379168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874653, 38.922726, 22.163799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779087, 38.607048, 21.937490>,  <35.721748, 38.417641, 21.801704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779087, 38.607048, 21.937490>,  <35.874653, 38.922726, 22.163799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779087, 38.607048, 21.937490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295896, 0.495766, -0.816493,
		0.924859, -0.362484, 0.115071,
		-0.238918, -0.789190, -0.565771,
		35.707413, 38.370293, 21.767759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508896, 38.779400, 21.617584>,  <35.874653, 38.922726, 22.163799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508896, 38.779400, 21.617584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157051, 38.621990, 21.510687>,  <35.945942, 38.527546, 21.446548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157051, 38.621990, 21.510687>,  <36.508896, 38.779400, 21.617584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157051, 38.621990, 21.510687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112451, 0.373862, -0.920642,
		0.462207, -0.839861, -0.284602,
		-0.879613, -0.393524, -0.267245,
		35.893166, 38.503933, 21.430513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611893, 38.498608, 20.928648>,  <36.508896, 38.779400, 21.617584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611893, 38.498608, 20.928648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213135, 38.514614, 20.955769>,  <35.973881, 38.524220, 20.972040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213135, 38.514614, 20.955769>,  <36.611893, 38.498608, 20.928648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213135, 38.514614, 20.955769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035310, 0.542477, -0.839328,
		-0.070366, -0.839117, -0.539380,
		-0.996896, 0.040015, 0.067801,
		35.914066, 38.526619, 20.976109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332706, 38.300423, 20.254240>,  <36.611893, 38.498608, 20.928648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332706, 38.300423, 20.254240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053291, 38.518539, 20.439583>,  <35.885643, 38.649410, 20.550789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053291, 38.518539, 20.439583>,  <36.332706, 38.300423, 20.254240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053291, 38.518539, 20.439583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289308, 0.377033, -0.879856,
		-0.654483, -0.748664, -0.105613,
		-0.698537, 0.545296, 0.463356,
		35.843731, 38.682129, 20.578590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698387, 38.181057, 19.798536>,  <36.332706, 38.300423, 20.254240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698387, 38.181057, 19.798536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.660477, 38.513409, 20.017866>,  <35.637730, 38.712818, 20.149464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.660477, 38.513409, 20.017866>,  <35.698387, 38.181057, 19.798536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660477, 38.513409, 20.017866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326199, 0.494475, -0.805660,
		-0.940538, -0.255224, 0.224165,
		-0.094780, 0.830876, 0.548326,
		35.632042, 38.762672, 20.182364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932018, 38.482880, 19.796518>,  <35.698387, 38.181057, 19.798536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932018, 38.482880, 19.796518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222023, 38.752804, 19.851629>,  <35.396027, 38.914757, 19.884695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222023, 38.752804, 19.851629>,  <34.932018, 38.482880, 19.796518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222023, 38.752804, 19.851629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347151, 0.530826, -0.773118,
		-0.594843, 0.512694, 0.619118,
		0.725016, 0.674810, 0.137776,
		35.439529, 38.955246, 19.892962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366142, 38.970467, 20.058617>,  <34.932018, 38.482880, 19.796518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366142, 38.970467, 20.058617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061462, 39.181248, 19.907818>,  <33.878654, 39.307716, 19.817339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061462, 39.181248, 19.907818>,  <34.366142, 38.970467, 20.058617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061462, 39.181248, 19.907818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646569, -0.580514, 0.494926,
		0.041952, 0.620741, 0.782892,
		-0.761701, 0.526957, -0.376999,
		33.832951, 39.339336, 19.794718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023361, 39.274109, 20.592859>,  <34.366142, 38.970467, 20.058617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023361, 39.274109, 20.592859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761333, 39.220318, 20.295456>,  <33.604118, 39.188046, 20.117014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761333, 39.220318, 20.295456>,  <34.023361, 39.274109, 20.592859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761333, 39.220318, 20.295456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519423, -0.634483, 0.572391,
		-0.548715, 0.761149, 0.345780,
		-0.655066, -0.134473, -0.743509,
		33.564816, 39.179977, 20.072403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433094, 39.362892, 20.937262>,  <34.023361, 39.274109, 20.592859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433094, 39.362892, 20.937262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358067, 39.142143, 20.612238>,  <33.313049, 39.009693, 20.417223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358067, 39.142143, 20.612238>,  <33.433094, 39.362892, 20.937262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358067, 39.142143, 20.612238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618989, -0.575905, 0.534029,
		-0.762673, 0.603133, -0.233582,
		-0.187570, -0.551874, -0.812559,
		33.301796, 38.976582, 20.368469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722569, 39.358734, 20.850645>,  <33.433094, 39.362892, 20.937262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722569, 39.358734, 20.850645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854496, 39.024628, 20.674669>,  <32.933655, 38.824165, 20.569084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854496, 39.024628, 20.674669>,  <32.722569, 39.358734, 20.850645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854496, 39.024628, 20.674669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533588, -0.549380, 0.643012,
		-0.778781, 0.022667, -0.626886,
		0.329823, -0.835265, -0.439941,
		32.953442, 38.774048, 20.542686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146519, 38.985279, 20.823458>,  <32.722569, 39.358734, 20.850645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146519, 38.985279, 20.823458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435345, 38.716030, 20.759558>,  <32.608639, 38.554482, 20.721218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435345, 38.716030, 20.759558>,  <32.146519, 38.985279, 20.823458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435345, 38.716030, 20.759558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484258, -0.656679, 0.578158,
		-0.494080, -0.340107, -0.800133,
		0.722066, -0.673127, -0.159752,
		32.651966, 38.514091, 20.711632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754923, 38.421856, 20.844007>,  <32.146519, 38.985279, 20.823458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754923, 38.421856, 20.844007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125954, 38.281590, 20.895590>,  <32.348572, 38.197430, 20.926538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125954, 38.281590, 20.895590>,  <31.754923, 38.421856, 20.844007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125954, 38.281590, 20.895590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351319, -0.701120, 0.620488,
		-0.127173, -0.620855, -0.773541,
		0.927579, -0.350669, 0.128954,
		32.404228, 38.176388, 20.934277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733660, 37.690464, 20.905157>,  <31.754923, 38.421856, 20.844007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733660, 37.690464, 20.905157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075001, 37.781658, 21.092691>,  <32.279804, 37.836376, 21.205212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075001, 37.781658, 21.092691>,  <31.733660, 37.690464, 20.905157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075001, 37.781658, 21.092691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250154, -0.609947, 0.751923,
		0.457394, -0.758938, -0.463469,
		0.853354, 0.227986, 0.468837,
		32.331009, 37.850056, 21.233343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907846, 36.991421, 21.138161>,  <31.733660, 37.690464, 20.905157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907846, 36.991421, 21.138161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122906, 37.241665, 21.364277>,  <32.251942, 37.391811, 21.499947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122906, 37.241665, 21.364277>,  <31.907846, 36.991421, 21.138161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122906, 37.241665, 21.364277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114337, -0.718337, 0.686236,
		0.835382, -0.304318, -0.457741,
		0.537646, 0.625606, 0.565291,
		32.284199, 37.429348, 21.533865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513252, 36.584038, 21.333776>,  <31.907846, 36.991421, 21.138161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513252, 36.584038, 21.333776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.491848, 36.863312, 21.619341>,  <32.479008, 37.030876, 21.790680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.491848, 36.863312, 21.619341>,  <32.513252, 36.584038, 21.333776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491848, 36.863312, 21.619341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232138, -0.686652, 0.688927,
		0.971210, 0.202588, -0.125335,
		-0.053507, 0.698188, 0.713912,
		32.475796, 37.072769, 21.833515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158367, 36.510300, 21.799427>,  <32.513252, 36.584038, 21.333776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158367, 36.510300, 21.799427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910786, 36.728207, 22.025745>,  <32.762238, 36.858952, 22.161537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910786, 36.728207, 22.025745>,  <33.158367, 36.510300, 21.799427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910786, 36.728207, 22.025745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216989, -0.573731, 0.789778,
		0.754858, 0.611609, 0.236906,
		-0.618955, 0.544764, 0.565798,
		32.725098, 36.891636, 22.195484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509216, 36.656548, 22.322752>,  <33.158367, 36.510300, 21.799427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509216, 36.656548, 22.322752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149044, 36.747654, 22.470993>,  <32.932941, 36.802319, 22.559938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149044, 36.747654, 22.470993>,  <33.509216, 36.656548, 22.322752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149044, 36.747654, 22.470993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277718, -0.354737, 0.892768,
		0.334806, 0.906799, 0.256163,
		-0.900432, 0.227763, 0.370603,
		32.878914, 36.815983, 22.582174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683502, 37.035892, 22.829721>,  <33.509216, 36.656548, 22.322752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683502, 37.035892, 22.829721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.319271, 36.895668, 22.917318>,  <33.100735, 36.811535, 22.969877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.319271, 36.895668, 22.917318>,  <33.683502, 37.035892, 22.829721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319271, 36.895668, 22.917318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368104, -0.446751, 0.815422,
		-0.188020, 0.823116, 0.535844,
		-0.910576, -0.350562, 0.218994,
		33.046097, 36.790501, 22.983017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737148, 37.029377, 23.609312>,  <33.683502, 37.035892, 22.829721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737148, 37.029377, 23.609312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.437752, 36.794498, 23.486053>,  <33.258114, 36.653572, 23.412098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.437752, 36.794498, 23.486053>,  <33.737148, 37.029377, 23.609312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437752, 36.794498, 23.486053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215007, -0.654462, 0.724880,
		-0.627320, 0.476315, 0.616112,
		-0.748493, -0.587200, -0.308146,
		33.213203, 36.618340, 23.393610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375977, 36.849373, 24.163816>,  <33.737148, 37.029377, 23.609312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375977, 36.849373, 24.163816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280479, 36.547619, 23.919228>,  <33.223179, 36.366566, 23.772474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.280479, 36.547619, 23.919228>,  <33.375977, 36.849373, 24.163816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280479, 36.547619, 23.919228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177818, -0.652999, 0.736189,
		-0.954662, 0.067032, 0.290045,
		-0.238748, -0.754387, -0.611474,
		33.208855, 36.321304, 23.735785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922806, 36.462757, 24.586174>,  <33.375977, 36.849373, 24.163816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922806, 36.462757, 24.586174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066765, 36.233337, 24.291822>,  <33.153141, 36.095688, 24.115211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066765, 36.233337, 24.291822>,  <32.922806, 36.462757, 24.586174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066765, 36.233337, 24.291822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216864, -0.715702, 0.663884,
		-0.907438, -0.398516, -0.133198,
		0.359898, -0.573547, -0.735878,
		33.174736, 36.061272, 24.071058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717960, 35.817856, 24.771618>,  <32.922806, 36.462757, 24.586174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717960, 35.817856, 24.771618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990726, 35.739735, 24.489670>,  <33.154388, 35.692863, 24.320501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990726, 35.739735, 24.489670>,  <32.717960, 35.817856, 24.771618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990726, 35.739735, 24.489670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281389, -0.819475, 0.499280,
		-0.675135, -0.538811, -0.503860,
		0.681919, -0.195300, -0.704872,
		33.195301, 35.681145, 24.278208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503265, 35.089058, 24.522499>,  <32.717960, 35.817856, 24.771618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503265, 35.089058, 24.522499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882179, 35.156719, 24.413664>,  <33.109528, 35.197315, 24.348362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882179, 35.156719, 24.413664>,  <32.503265, 35.089058, 24.522499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882179, 35.156719, 24.413664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228900, -0.951543, 0.205355,
		-0.224166, -0.256811, -0.940105,
		0.947288, 0.169156, -0.272088,
		33.166367, 35.207466, 24.332037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733288, 34.529278, 24.133701>,  <32.503265, 35.089058, 24.522499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733288, 34.529278, 24.133701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045597, 34.695217, 24.320591>,  <33.232983, 34.794781, 24.432724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045597, 34.695217, 24.320591>,  <32.733288, 34.529278, 24.133701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045597, 34.695217, 24.320591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218187, -0.881725, 0.418277,
		0.585484, -0.224636, -0.778940,
		0.780771, 0.414849, 0.467223,
		33.279827, 34.819672, 24.460758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247433, 34.044109, 23.927069>,  <32.733288, 34.529278, 24.133701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247433, 34.044109, 23.927069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380939, 34.252712, 24.241173>,  <33.461044, 34.377872, 24.429636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380939, 34.252712, 24.241173>,  <33.247433, 34.044109, 23.927069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380939, 34.252712, 24.241173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350979, -0.841885, 0.409931,
		0.874880, 0.138789, -0.464029,
		0.333765, 0.521505, 0.785260,
		33.481068, 34.409164, 24.476751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938595, 33.756294, 24.063482>,  <33.247433, 34.044109, 23.927069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938595, 33.756294, 24.063482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811619, 33.921337, 24.405005>,  <33.735435, 34.020363, 24.609919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811619, 33.921337, 24.405005>,  <33.938595, 33.756294, 24.063482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811619, 33.921337, 24.405005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347033, -0.787368, 0.509529,
		0.882497, 0.458043, 0.106751,
		-0.317438, 0.412612, 0.853806,
		33.716389, 34.045120, 24.661146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629585, 33.694904, 24.599100>,  <33.938595, 33.756294, 24.063482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629585, 33.694904, 24.599100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294975, 33.731861, 24.815134>,  <34.094208, 33.754036, 24.944754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294975, 33.731861, 24.815134>,  <34.629585, 33.694904, 24.599100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294975, 33.731861, 24.815134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395540, -0.580286, 0.711910,
		0.379179, 0.809155, 0.448878,
		-0.836524, 0.092392, 0.540085,
		34.044018, 33.759579, 24.977160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.159401, 35.126717, 29.923101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.797745, 34.974121, 30.000034>,  <37.580750, 34.882565, 30.046194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.797745, 34.974121, 30.000034>,  <38.159401, 35.126717, 29.923101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797745, 34.974121, 30.000034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317187, -0.297791, 0.900396,
		-0.286220, 0.875091, 0.390249,
		-0.904141, -0.381493, 0.192334,
		37.526501, 34.859673, 30.057734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989552, 35.302341, 30.579565>,  <38.159401, 35.126717, 29.923101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989552, 35.302341, 30.579565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.778225, 34.975788, 30.486271>,  <37.651428, 34.779854, 30.430294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.778225, 34.975788, 30.486271>,  <37.989552, 35.302341, 30.579565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778225, 34.975788, 30.486271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262590, -0.418342, 0.869504,
		-0.807421, 0.398127, 0.435391,
		-0.528315, -0.816385, -0.233234,
		37.619732, 34.730873, 30.416300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591564, 35.104507, 31.243591>,  <37.989552, 35.302341, 30.579565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591564, 35.104507, 31.243591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575420, 34.762257, 31.037182>,  <37.565735, 34.556908, 30.913336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575420, 34.762257, 31.037182>,  <37.591564, 35.104507, 31.243591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575420, 34.762257, 31.037182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206457, -0.512438, 0.833536,
		-0.977623, -0.072898, 0.197329,
		-0.040356, -0.855624, -0.516021,
		37.563313, 34.505569, 30.882376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139805, 34.639225, 31.664194>,  <37.591564, 35.104507, 31.243591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139805, 34.639225, 31.664194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.320305, 34.379040, 31.419809>,  <37.428604, 34.222931, 31.273178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.320305, 34.379040, 31.419809>,  <37.139805, 34.639225, 31.664194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320305, 34.379040, 31.419809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147527, -0.620835, 0.769934,
		-0.880117, -0.437569, -0.184194,
		0.451253, -0.650459, -0.610961,
		37.455681, 34.183903, 31.236521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931812, 33.926468, 31.918039>,  <37.139805, 34.639225, 31.664194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931812, 33.926468, 31.918039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259827, 33.842087, 31.705231>,  <37.456635, 33.791458, 31.577545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259827, 33.842087, 31.705231>,  <36.931812, 33.926468, 31.918039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259827, 33.842087, 31.705231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266232, -0.682280, 0.680893,
		-0.506625, -0.699994, -0.503328,
		0.820032, -0.210955, -0.532021,
		37.505836, 33.778801, 31.545624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910965, 33.292618, 31.825642>,  <36.931812, 33.926468, 31.918039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910965, 33.292618, 31.825642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.297894, 33.381035, 31.775963>,  <37.530052, 33.434086, 31.746157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.297894, 33.381035, 31.775963>,  <36.910965, 33.292618, 31.825642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297894, 33.381035, 31.775963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244205, -0.680519, 0.690839,
		0.068190, -0.698594, -0.712262,
		0.967323, 0.221046, -0.124196,
		37.588089, 33.447350, 31.738705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231667, 32.678982, 31.658932>,  <36.910965, 33.292618, 31.825642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231667, 32.678982, 31.658932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.506546, 32.925510, 31.812763>,  <37.671474, 33.073429, 31.905062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.506546, 32.925510, 31.812763>,  <37.231667, 32.678982, 31.658932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506546, 32.925510, 31.812763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246044, -0.695556, 0.675029,
		0.683532, -0.369257, -0.629629,
		0.687202, 0.616321, 0.384581,
		37.712708, 33.110405, 31.928137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746872, 32.251251, 31.727375>,  <37.231667, 32.678982, 31.658932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746872, 32.251251, 31.727375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847305, 32.549511, 31.974266>,  <37.907566, 32.728466, 32.122402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847305, 32.549511, 31.974266>,  <37.746872, 32.251251, 31.727375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847305, 32.549511, 31.974266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344430, -0.664743, 0.662936,
		0.904614, 0.046141, -0.423728,
		0.251082, 0.745646, 0.617228,
		37.922630, 32.773205, 32.159435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416313, 32.148922, 32.030582>,  <37.746872, 32.251251, 31.727375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416313, 32.148922, 32.030582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.276550, 32.415432, 32.294094>,  <38.192692, 32.575336, 32.452202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.276550, 32.415432, 32.294094>,  <38.416313, 32.148922, 32.030582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276550, 32.415432, 32.294094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221062, -0.624627, 0.748981,
		0.910521, 0.407329, 0.070959,
		-0.349404, 0.666276, 0.658781,
		38.171730, 32.615314, 32.491730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900681, 32.091187, 32.576458>,  <38.416313, 32.148922, 32.030582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900681, 32.091187, 32.576458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569912, 32.257111, 32.728317>,  <38.371452, 32.356667, 32.819431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569912, 32.257111, 32.728317>,  <38.900681, 32.091187, 32.576458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569912, 32.257111, 32.728317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011206, -0.662862, 0.748657,
		0.562205, 0.623335, 0.543487,
		-0.826922, 0.414809, 0.379650,
		38.321835, 32.381554, 32.842213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067162, 32.359226, 33.383972>,  <38.900681, 32.091187, 32.576458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067162, 32.359226, 33.383972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669754, 32.317162, 33.366718>,  <38.431309, 32.291924, 33.356365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669754, 32.317162, 33.366718>,  <39.067162, 32.359226, 33.383972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669754, 32.317162, 33.366718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017332, -0.515203, 0.856893,
		-0.112335, 0.850592, 0.513687,
		-0.993519, -0.105162, -0.043133,
		38.371696, 32.285614, 33.353779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828873, 32.484539, 34.115269>,  <39.067162, 32.359226, 33.383972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828873, 32.484539, 34.115269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555447, 32.252216, 33.938450>,  <38.391392, 32.112823, 33.832359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555447, 32.252216, 33.938450>,  <38.828873, 32.484539, 34.115269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555447, 32.252216, 33.938450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121480, -0.687716, 0.715744,
		-0.719714, 0.435555, 0.540652,
		-0.683561, -0.580809, -0.442047,
		38.350380, 32.077972, 33.805836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499249, 32.733612, 34.803837>,  <38.828873, 32.484539, 34.115269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499249, 32.733612, 34.803837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.758518, 32.605759, 35.080303>,  <38.914082, 32.529049, 35.246181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.758518, 32.605759, 35.080303>,  <38.499249, 32.733612, 34.803837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758518, 32.605759, 35.080303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651910, 0.702000, -0.286722,
		-0.393551, 0.636422, 0.663389,
		0.648175, -0.319630, 0.691163,
		38.952972, 32.509869, 35.287651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556488, 33.201958, 35.308846>,  <38.499249, 32.733612, 34.803837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556488, 33.201958, 35.308846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893253, 32.992088, 35.258400>,  <39.095310, 32.866165, 35.228134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893253, 32.992088, 35.258400>,  <38.556488, 33.201958, 35.308846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893253, 32.992088, 35.258400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479609, 0.834671, -0.270738,
		0.247311, 0.167453, 0.954357,
		0.841910, -0.524674, -0.126112,
		39.145828, 32.834686, 35.220566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504059, 33.931099, 35.215748>,  <38.556488, 33.201958, 35.308846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504059, 33.931099, 35.215748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226067, 33.994576, 35.496265>,  <38.059273, 34.032661, 35.664577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226067, 33.994576, 35.496265>,  <38.504059, 33.931099, 35.215748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226067, 33.994576, 35.496265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504021, 0.588078, -0.632556,
		-0.512798, -0.793083, -0.328719,
		-0.694982, 0.158692, 0.701296,
		38.017570, 34.042183, 35.706654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818066, 33.741314, 35.052990>,  <38.504059, 33.931099, 35.215748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818066, 33.741314, 35.052990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.816158, 34.040173, 35.318844>,  <37.815014, 34.219490, 35.478355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.816158, 34.040173, 35.318844>,  <37.818066, 33.741314, 35.052990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816158, 34.040173, 35.318844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497548, 0.574763, -0.649687,
		-0.867423, -0.333787, 0.369003,
		-0.004768, 0.747150, 0.664638,
		37.814728, 34.264317, 35.518234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103031, 34.047279, 35.103455>,  <37.818066, 33.741314, 35.052990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103031, 34.047279, 35.103455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380581, 34.324085, 35.183113>,  <37.547112, 34.490170, 35.230907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380581, 34.324085, 35.183113>,  <37.103031, 34.047279, 35.103455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380581, 34.324085, 35.183113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431288, 0.620840, -0.654636,
		-0.576657, 0.368342, 0.729240,
		0.693871, 0.692013, 0.199151,
		37.588741, 34.531689, 35.242859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740147, 34.713104, 35.006817>,  <37.103031, 34.047279, 35.103455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740147, 34.713104, 35.006817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.129795, 34.803028, 35.016254>,  <37.363583, 34.856983, 35.021915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.129795, 34.803028, 35.016254>,  <36.740147, 34.713104, 35.006817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129795, 34.803028, 35.016254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178581, 0.829357, -0.529411,
		-0.138583, 0.511495, 0.848037,
		0.974117, 0.224811, 0.023592,
		37.422031, 34.870472, 35.023331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862144, 35.480659, 35.108845>,  <36.740147, 34.713104, 35.006817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862144, 35.480659, 35.108845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.210342, 35.375938, 34.942131>,  <37.419262, 35.313107, 34.842102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.210342, 35.375938, 34.942131>,  <36.862144, 35.480659, 35.108845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210342, 35.375938, 34.942131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069345, 0.773114, -0.630465,
		0.487274, 0.577716, 0.654834,
		0.870491, -0.261800, -0.416780,
		37.471489, 35.297398, 34.817097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207260, 36.087376, 35.069141>,  <36.862144, 35.480659, 35.108845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207260, 36.087376, 35.069141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362564, 35.843147, 34.793037>,  <37.455746, 35.696609, 34.627377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.362564, 35.843147, 34.793037>,  <37.207260, 36.087376, 35.069141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362564, 35.843147, 34.793037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091028, 0.719945, -0.688035,
		0.917044, 0.329968, 0.223945,
		0.388257, -0.610573, -0.690258,
		37.479042, 35.659977, 34.585960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861523, 36.390709, 34.706348>,  <37.207260, 36.087376, 35.069141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861523, 36.390709, 34.706348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.700451, 36.121609, 34.458073>,  <37.603809, 35.960148, 34.309105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.700451, 36.121609, 34.458073>,  <37.861523, 36.390709, 34.706348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700451, 36.121609, 34.458073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176016, 0.722355, -0.668746,
		0.898259, -0.160037, -0.409291,
		-0.402677, -0.672749, -0.620693,
		37.579647, 35.919785, 34.271866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222202, 36.567081, 34.190910>,  <37.861523, 36.390709, 34.706348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222202, 36.567081, 34.190910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.941574, 36.341518, 34.016644>,  <37.773197, 36.206181, 33.912083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.941574, 36.341518, 34.016644>,  <38.222202, 36.567081, 34.190910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941574, 36.341518, 34.016644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007859, 0.617458, -0.786564,
		0.712555, -0.548408, -0.437623,
		-0.701572, -0.563909, -0.435663,
		37.731102, 36.172344, 33.885944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395107, 36.655220, 33.439129>,  <38.222202, 36.567081, 34.190910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395107, 36.655220, 33.439129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.035374, 36.481876, 33.462418>,  <37.819534, 36.377869, 33.476391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.035374, 36.481876, 33.462418>,  <38.395107, 36.655220, 33.439129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035374, 36.481876, 33.462418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285160, 0.480349, -0.829427,
		0.331476, -0.762537, -0.555573,
		-0.899337, -0.433362, 0.058221,
		37.765572, 36.351868, 33.479885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224373, 36.358658, 32.756569>,  <38.395107, 36.655220, 33.439129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224373, 36.358658, 32.756569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.887196, 36.429188, 32.959885>,  <37.684891, 36.471504, 33.081875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.887196, 36.429188, 32.959885>,  <38.224373, 36.358658, 32.756569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887196, 36.429188, 32.959885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386902, 0.457815, -0.800445,
		-0.373839, -0.871388, -0.317692,
		-0.842942, 0.176322, 0.508290,
		37.634312, 36.482082, 33.112373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710323, 36.321236, 32.189983>,  <38.224373, 36.358658, 32.756569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710323, 36.321236, 32.189983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.497612, 36.463837, 32.497257>,  <37.369984, 36.549397, 32.681622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.497612, 36.463837, 32.497257>,  <37.710323, 36.321236, 32.189983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497612, 36.463837, 32.497257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587113, 0.498522, -0.637789,
		-0.610332, -0.790178, -0.055798,
		-0.531783, 0.356504, 0.768187,
		37.338078, 36.570789, 32.727715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116592, 36.092999, 32.144592>,  <37.710323, 36.321236, 32.189983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116592, 36.092999, 32.144592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047443, 36.433254, 32.343197>,  <37.005955, 36.637409, 32.462360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047443, 36.433254, 32.343197>,  <37.116592, 36.092999, 32.144592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047443, 36.433254, 32.343197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486657, 0.364501, -0.793917,
		-0.856318, -0.378877, 0.350959,
		-0.172872, 0.850642, 0.496512,
		36.995583, 36.688446, 32.492149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448826, 36.227093, 32.055382>,  <37.116592, 36.092999, 32.144592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448826, 36.227093, 32.055382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.591511, 36.583672, 32.167152>,  <36.677120, 36.797619, 32.234215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.591511, 36.583672, 32.167152>,  <36.448826, 36.227093, 32.055382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591511, 36.583672, 32.167152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442902, 0.424721, -0.789588,
		-0.822555, 0.157895, 0.546326,
		0.356708, 0.891449, 0.279425,
		36.698524, 36.851105, 32.250980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837132, 36.649105, 32.140381>,  <36.448826, 36.227093, 32.055382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837132, 36.649105, 32.140381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151402, 36.889393, 32.081245>,  <36.339962, 37.033566, 32.045765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151402, 36.889393, 32.081245>,  <35.837132, 36.649105, 32.140381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151402, 36.889393, 32.081245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519133, 0.510218, -0.685696,
		-0.336480, 0.615480, 0.712717,
		0.785673, 0.600718, -0.147838,
		36.387104, 37.069607, 32.036896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372211, 37.096928, 32.384064>,  <35.837132, 36.649105, 32.140381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372211, 37.096928, 32.384064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.003014, 36.945965, 32.414127>,  <34.781494, 36.855389, 32.432167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.003014, 36.945965, 32.414127>,  <35.372211, 37.096928, 32.384064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003014, 36.945965, 32.414127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253419, -0.449142, 0.856767,
		-0.289590, 0.809838, 0.510197,
		-0.922993, -0.377405, 0.075161,
		34.726116, 36.832745, 32.436676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420887, 36.964634, 33.042244>,  <35.372211, 37.096928, 32.384064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420887, 36.964634, 33.042244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.052475, 36.821754, 32.980133>,  <34.831429, 36.736027, 32.942867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.052475, 36.821754, 32.980133>,  <35.420887, 36.964634, 33.042244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052475, 36.821754, 32.980133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010792, -0.375121, 0.926913,
		-0.389340, 0.855391, 0.341643,
		-0.921031, -0.357198, -0.155281,
		34.776165, 36.714596, 32.933548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996510, 37.103760, 33.613461>,  <35.420887, 36.964634, 33.042244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996510, 37.103760, 33.613461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.865845, 36.768711, 33.438332>,  <34.787445, 36.567684, 33.333256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.865845, 36.768711, 33.438332>,  <34.996510, 37.103760, 33.613461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865845, 36.768711, 33.438332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017553, -0.457777, 0.888893,
		-0.944979, 0.298050, 0.134834,
		-0.326658, -0.837619, -0.437822,
		34.767849, 36.517426, 33.306984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549187, 36.760098, 34.157703>,  <34.996510, 37.103760, 33.613461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549187, 36.760098, 34.157703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.620350, 36.456753, 33.906872>,  <34.663048, 36.274746, 33.756374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.620350, 36.456753, 33.906872>,  <34.549187, 36.760098, 34.157703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620350, 36.456753, 33.906872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052934, -0.628948, 0.775643,
		-0.982623, -0.171186, -0.071750,
		0.177906, -0.758367, -0.627080,
		34.673721, 36.229244, 33.718746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109840, 36.153599, 34.411072>,  <34.549187, 36.760098, 34.157703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109840, 36.153599, 34.411072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.425110, 36.047546, 34.188904>,  <34.614273, 35.983917, 34.055603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.425110, 36.047546, 34.188904>,  <34.109840, 36.153599, 34.411072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425110, 36.047546, 34.188904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143594, -0.798328, 0.584853,
		-0.598467, -0.540720, -0.591150,
		0.788173, -0.265129, -0.555417,
		34.661560, 35.968006, 34.022278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932713, 35.480095, 34.307308>,  <34.109840, 36.153599, 34.411072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932713, 35.480095, 34.307308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.319035, 35.480717, 34.203598>,  <34.550827, 35.481091, 34.141373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.319035, 35.480717, 34.203598>,  <33.932713, 35.480095, 34.307308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319035, 35.480717, 34.203598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075065, -0.958834, 0.273867,
		-0.248178, -0.283964, -0.926160,
		0.965802, 0.001555, -0.259277,
		34.608776, 35.481182, 34.125816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066776, 34.895748, 33.840538>,  <33.932713, 35.480095, 34.307308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066776, 34.895748, 33.840538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.408367, 35.013298, 34.012283>,  <34.613323, 35.083828, 34.115330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.408367, 35.013298, 34.012283>,  <34.066776, 34.895748, 33.840538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408367, 35.013298, 34.012283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143143, -0.926075, 0.349135,
		0.500228, -0.236693, -0.832916,
		0.853981, 0.293873, 0.429367,
		34.664562, 35.101460, 34.141094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491009, 34.380077, 33.752918>,  <34.066776, 34.895748, 33.840538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491009, 34.380077, 33.752918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.686745, 34.572956, 34.043579>,  <34.804188, 34.688683, 34.217976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.686745, 34.572956, 34.043579>,  <34.491009, 34.380077, 33.752918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686745, 34.572956, 34.043579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250048, -0.875826, 0.412800,
		0.835476, -0.020302, -0.549152,
		0.489342, 0.482199, 0.726656,
		34.833546, 34.717617, 34.261578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108994, 33.995152, 33.830750>,  <34.491009, 34.380077, 33.752918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108994, 33.995152, 33.830750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082565, 34.187916, 34.180241>,  <35.066708, 34.303574, 34.389935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082565, 34.187916, 34.180241>,  <35.108994, 33.995152, 33.830750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082565, 34.187916, 34.180241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175559, -0.856367, 0.485607,
		0.982249, 0.185476, -0.028021,
		-0.066072, 0.481907, 0.873728,
		35.062744, 34.332489, 34.442360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641399, 33.788170, 34.174549>,  <35.108994, 33.995152, 33.830750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641399, 33.788170, 34.174549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.394165, 33.922878, 34.458675>,  <35.245823, 34.003704, 34.629150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.394165, 33.922878, 34.458675>,  <35.641399, 33.788170, 34.174549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394165, 33.922878, 34.458675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199711, -0.806673, 0.556232,
		0.760319, 0.485657, 0.431337,
		-0.618086, 0.336771, 0.710320,
		35.208740, 34.023911, 34.671772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956245, 33.762001, 34.784031>,  <35.641399, 33.788170, 34.174549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956245, 33.762001, 34.784031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.573372, 33.750607, 34.899254>,  <35.343647, 33.743771, 34.968388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.573372, 33.750607, 34.899254>,  <35.956245, 33.762001, 34.784031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573372, 33.750607, 34.899254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202751, -0.776239, 0.596946,
		0.206599, 0.629795, 0.748783,
		-0.957188, -0.028488, 0.288061,
		35.286217, 33.742062, 34.985672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985104, 33.783779, 35.551361>,  <35.956245, 33.762001, 34.784031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985104, 33.783779, 35.551361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637474, 33.620426, 35.439693>,  <35.428898, 33.522415, 35.372692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637474, 33.620426, 35.439693>,  <35.985104, 33.783779, 35.551361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637474, 33.620426, 35.439693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190589, -0.797199, 0.572843,
		-0.456493, 0.444636, 0.770658,
		-0.869074, -0.408378, -0.279173,
		35.376751, 33.497913, 35.355942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.222969, 39.412727, 30.079029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954498, 39.168354, 29.911085>,  <33.793415, 39.021732, 29.810318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954498, 39.168354, 29.911085>,  <34.222969, 39.412727, 30.079029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954498, 39.168354, 29.911085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085551, -0.498766, 0.862504,
		-0.736341, 0.614816, 0.282496,
		-0.671181, -0.610929, -0.419860,
		33.753143, 38.985077, 29.785128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625641, 39.373474, 30.582691>,  <34.222969, 39.412727, 30.079029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625641, 39.373474, 30.582691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650146, 39.058369, 30.337523>,  <33.664852, 38.869305, 30.190420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650146, 39.058369, 30.337523>,  <33.625641, 39.373474, 30.582691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650146, 39.058369, 30.337523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101140, -0.615816, 0.781371,
		-0.992984, 0.014118, -0.117404,
		0.061268, -0.787763, -0.612923,
		33.668526, 38.822041, 30.153646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097500, 38.978992, 30.854664>,  <33.625641, 39.373474, 30.582691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097500, 38.978992, 30.854664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304218, 38.707344, 30.646158>,  <33.428249, 38.544353, 30.521055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304218, 38.707344, 30.646158>,  <33.097500, 38.978992, 30.854664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304218, 38.707344, 30.646158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014083, -0.615537, 0.787982,
		-0.855993, -0.399885, -0.327672,
		0.516796, -0.679122, -0.521263,
		33.459259, 38.503609, 30.489779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769920, 38.340981, 30.986761>,  <33.097500, 38.978992, 30.854664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769920, 38.340981, 30.986761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140656, 38.244976, 30.871273>,  <33.363098, 38.187374, 30.801979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140656, 38.244976, 30.871273>,  <32.769920, 38.340981, 30.986761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140656, 38.244976, 30.871273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086394, -0.612019, 0.786110,
		-0.365381, -0.753542, -0.546508,
		0.926840, -0.240015, -0.288722,
		33.418709, 38.172970, 30.784657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789345, 37.642223, 31.056408>,  <32.769920, 38.340981, 30.986761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789345, 37.642223, 31.056408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176197, 37.734142, 31.012873>,  <33.408310, 37.789295, 30.986752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176197, 37.734142, 31.012873>,  <32.789345, 37.642223, 31.056408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176197, 37.734142, 31.012873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234042, -0.637209, 0.734295,
		0.099386, -0.735634, -0.670048,
		0.967134, 0.229798, -0.108840,
		33.466335, 37.803082, 30.980221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230579, 36.933918, 31.055561>,  <32.789345, 37.642223, 31.056408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230579, 36.933918, 31.055561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492146, 37.231319, 31.111553>,  <33.649086, 37.409760, 31.145147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492146, 37.231319, 31.111553>,  <33.230579, 36.933918, 31.055561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492146, 37.231319, 31.111553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360667, -0.468994, 0.806204,
		0.665064, -0.476706, -0.574841,
		0.653919, 0.743503, 0.139979,
		33.688320, 37.454369, 31.153547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889164, 36.743210, 30.976273>,  <33.230579, 36.933918, 31.055561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889164, 36.743210, 30.976273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959297, 37.047207, 31.226604>,  <34.001377, 37.229607, 31.376804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959297, 37.047207, 31.226604>,  <33.889164, 36.743210, 30.976273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959297, 37.047207, 31.226604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461326, -0.624993, 0.629732,
		0.869733, 0.178296, -0.460190,
		0.175337, 0.759996, 0.625829,
		34.011898, 37.275208, 31.414352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552818, 36.652828, 31.212927>,  <33.889164, 36.743210, 30.976273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552818, 36.652828, 31.212927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409348, 36.896748, 31.495628>,  <34.323265, 37.043098, 31.665249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409348, 36.896748, 31.495628>,  <34.552818, 36.652828, 31.212927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409348, 36.896748, 31.495628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572603, -0.454218, 0.682504,
		0.737207, 0.649490, -0.186250,
		-0.358682, 0.609794, 0.706752,
		34.301743, 37.079685, 31.707655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093872, 36.984882, 31.675316>,  <34.552818, 36.652828, 31.212927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093872, 36.984882, 31.675316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756966, 37.014477, 31.888903>,  <34.554821, 37.032234, 32.017056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756966, 37.014477, 31.888903>,  <35.093872, 36.984882, 31.675316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756966, 37.014477, 31.888903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411348, -0.551990, 0.725327,
		0.348407, 0.830562, 0.434488,
		-0.842262, 0.073983, 0.533967,
		34.504288, 37.036671, 32.049091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480591, 37.714348, 31.721533>,  <35.093872, 36.984882, 31.675316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480591, 37.714348, 31.721533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877785, 37.667564, 31.714596>,  <36.116100, 37.639492, 31.710434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877785, 37.667564, 31.714596>,  <35.480591, 37.714348, 31.721533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877785, 37.667564, 31.714596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047296, 0.527322, -0.848348,
		0.108371, 0.841577, 0.529155,
		0.992985, -0.116963, -0.017343,
		36.175682, 37.632477, 31.709393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714272, 38.353683, 31.607986>,  <35.480591, 37.714348, 31.721533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714272, 38.353683, 31.607986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985184, 38.086334, 31.484976>,  <36.147732, 37.925926, 31.411169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985184, 38.086334, 31.484976>,  <35.714272, 38.353683, 31.607986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985184, 38.086334, 31.484976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152752, 0.536626, -0.829879,
		0.719693, 0.515085, 0.465541,
		0.677280, -0.668371, -0.307526,
		36.188366, 37.885822, 31.392717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249962, 38.811966, 31.340466>,  <35.714272, 38.353683, 31.607986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249962, 38.811966, 31.340466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329620, 38.447495, 31.196190>,  <36.377415, 38.228813, 31.109625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329620, 38.447495, 31.196190>,  <36.249962, 38.811966, 31.340466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329620, 38.447495, 31.196190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132553, 0.389726, -0.911341,
		0.970964, 0.133677, 0.198390,
		0.199143, -0.911177, -0.360691,
		36.389362, 38.174141, 31.087982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912247, 38.818707, 30.881031>,  <36.249962, 38.811966, 31.340466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912247, 38.818707, 30.881031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730217, 38.490391, 30.742926>,  <36.620998, 38.293400, 30.660063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730217, 38.490391, 30.742926>,  <36.912247, 38.818707, 30.881031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730217, 38.490391, 30.742926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289246, 0.230453, -0.929101,
		0.842166, -0.522677, 0.132537,
		-0.455076, -0.820792, -0.345262,
		36.593693, 38.244152, 30.639347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424095, 38.599247, 30.390284>,  <36.912247, 38.818707, 30.881031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424095, 38.599247, 30.390284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072449, 38.429920, 30.302692>,  <36.861462, 38.328323, 30.250137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072449, 38.429920, 30.302692>,  <37.424095, 38.599247, 30.390284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072449, 38.429920, 30.302692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058838, 0.359546, -0.931270,
		0.472958, -0.831581, -0.291177,
		-0.879119, -0.423319, -0.218978,
		36.808712, 38.302925, 30.237000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549522, 38.281551, 29.821159>,  <37.424095, 38.599247, 30.390284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549522, 38.281551, 29.821159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154797, 38.346302, 29.821482>,  <36.917961, 38.385151, 29.821676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154797, 38.346302, 29.821482>,  <37.549522, 38.281551, 29.821159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154797, 38.346302, 29.821482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055026, 0.340129, -0.938768,
		-0.152239, -0.926341, -0.344550,
		-0.986810, 0.161876, 0.000808,
		36.858753, 38.394863, 29.821724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351379, 38.071007, 29.233416>,  <37.549522, 38.281551, 29.821159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351379, 38.071007, 29.233416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013790, 38.257236, 29.339960>,  <36.811237, 38.368973, 29.403887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013790, 38.257236, 29.339960>,  <37.351379, 38.071007, 29.233416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013790, 38.257236, 29.339960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117814, 0.323559, -0.938845,
		-0.523285, -0.823742, -0.218224,
		-0.843974, 0.465574, 0.266362,
		36.760597, 38.396908, 29.419868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792652, 38.002014, 28.621204>,  <37.351379, 38.071007, 29.233416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792652, 38.002014, 28.621204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622520, 38.291977, 28.837946>,  <36.520439, 38.465954, 28.967991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622520, 38.291977, 28.837946>,  <36.792652, 38.002014, 28.621204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622520, 38.291977, 28.837946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430013, 0.364944, -0.825776,
		-0.796356, -0.584231, 0.156497,
		-0.425331, 0.724907, 0.541852,
		36.494923, 38.509449, 29.000502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030380, 38.015102, 28.467104>,  <36.792652, 38.002014, 28.621204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030380, 38.015102, 28.467104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172676, 38.365257, 28.598036>,  <36.258053, 38.575352, 28.676596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172676, 38.365257, 28.598036>,  <36.030380, 38.015102, 28.467104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172676, 38.365257, 28.598036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299261, 0.438496, -0.847446,
		-0.885376, 0.203514, 0.417960,
		0.355741, 0.875387, 0.327330,
		36.279400, 38.627872, 28.696236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547878, 38.514526, 28.242048>,  <36.030380, 38.015102, 28.467104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547878, 38.514526, 28.242048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869839, 38.724461, 28.352818>,  <36.063015, 38.850422, 28.419279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869839, 38.724461, 28.352818>,  <35.547878, 38.514526, 28.242048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869839, 38.724461, 28.352818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071546, 0.549085, -0.832698,
		-0.589084, 0.650425, 0.479508,
		0.804899, 0.524836, 0.276922,
		36.111309, 38.881912, 28.435894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397736, 39.229847, 28.183435>,  <35.547878, 38.514526, 28.242048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397736, 39.229847, 28.183435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793087, 39.173058, 28.161692>,  <36.030296, 39.138985, 28.148645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793087, 39.173058, 28.161692>,  <35.397736, 39.229847, 28.183435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793087, 39.173058, 28.161692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014186, 0.442159, -0.896824,
		0.151360, 0.885629, 0.439034,
		0.988377, -0.141971, -0.054361,
		36.089600, 39.130466, 28.145384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707890, 39.890301, 28.055624>,  <35.397736, 39.229847, 28.183435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707890, 39.890301, 28.055624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028015, 39.668873, 27.963486>,  <36.220089, 39.536018, 27.908203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028015, 39.668873, 27.963486>,  <35.707890, 39.890301, 28.055624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028015, 39.668873, 27.963486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138284, 0.544238, -0.827456,
		0.583416, 0.630372, 0.512111,
		0.800315, -0.553567, -0.230347,
		36.268108, 39.502804, 27.894382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138809, 40.346100, 27.759975>,  <35.707890, 39.890301, 28.055624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138809, 40.346100, 27.759975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226757, 39.976856, 27.633780>,  <36.279526, 39.755310, 27.558062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226757, 39.976856, 27.633780>,  <36.138809, 40.346100, 27.759975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226757, 39.976856, 27.633780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041819, 0.314187, -0.948439,
		0.974633, 0.221725, 0.030476,
		0.219868, -0.923106, -0.315490,
		36.292717, 39.699924, 27.539133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430893, 40.526028, 27.189383>,  <36.138809, 40.346100, 27.759975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430893, 40.526028, 27.189383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370281, 40.133392, 27.142857>,  <36.333916, 39.897812, 27.114941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370281, 40.133392, 27.142857>,  <36.430893, 40.526028, 27.189383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370281, 40.133392, 27.142857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020411, 0.120756, -0.992472,
		0.988242, -0.148014, -0.038333,
		-0.151529, -0.981586, -0.116315,
		36.324821, 39.838917, 27.107962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.474052, 34.249458, 24.703505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.581722, 34.591660, 24.880434>,  <30.646324, 34.796982, 24.986591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.581722, 34.591660, 24.880434>,  <30.474052, 34.249458, 24.703505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581722, 34.591660, 24.880434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138183, -0.488833, 0.861364,
		0.953126, -0.170737, -0.249799,
		0.269177, 0.855506, 0.442326,
		30.662476, 34.848312, 25.013132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128063, 34.080116, 24.997831>,  <30.474052, 34.249458, 24.703505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128063, 34.080116, 24.997831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.963608, 34.402962, 25.167316>,  <30.864935, 34.596668, 25.269009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.963608, 34.402962, 25.167316>,  <31.128063, 34.080116, 24.997831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963608, 34.402962, 25.167316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199176, -0.374048, 0.905769,
		0.889547, 0.456791, -0.006972,
		-0.411140, 0.807112, 0.423715,
		30.840265, 34.645096, 25.294432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564690, 34.464241, 25.390133>,  <31.128063, 34.080116, 24.997831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564690, 34.464241, 25.390133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.221249, 34.555553, 25.573738>,  <31.015184, 34.610340, 25.683901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.221249, 34.555553, 25.573738>,  <31.564690, 34.464241, 25.390133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221249, 34.555553, 25.573738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358005, -0.373870, 0.855601,
		0.366930, 0.898948, 0.239279,
		-0.858601, 0.228283, 0.459012,
		30.963669, 34.624039, 25.711441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745583, 34.639042, 26.051779>,  <31.564690, 34.464241, 25.390133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745583, 34.639042, 26.051779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.350246, 34.586792, 26.083065>,  <31.113045, 34.555443, 26.101837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.350246, 34.586792, 26.083065>,  <31.745583, 34.639042, 26.051779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350246, 34.586792, 26.083065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127421, -0.428490, 0.894517,
		-0.083332, 0.894054, 0.440139,
		-0.988342, -0.130625, 0.078214,
		31.053743, 34.547604, 26.106529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593191, 34.862957, 26.708513>,  <31.745583, 34.639042, 26.051779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593191, 34.862957, 26.708513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.300615, 34.602955, 26.626066>,  <31.125069, 34.446953, 26.576599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.300615, 34.602955, 26.626066>,  <31.593191, 34.862957, 26.708513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300615, 34.602955, 26.626066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176120, -0.472087, 0.863780,
		-0.658769, 0.595503, 0.459783,
		-0.731440, -0.650008, -0.206117,
		31.081182, 34.407951, 26.564232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199200, 34.760891, 27.377022>,  <31.593191, 34.862957, 26.708513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199200, 34.760891, 27.377022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.061657, 34.447086, 27.170605>,  <30.979132, 34.258804, 27.046755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.061657, 34.447086, 27.170605>,  <31.199200, 34.760891, 27.377022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061657, 34.447086, 27.170605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108544, -0.579079, 0.808013,
		-0.932727, 0.221828, 0.284276,
		-0.343859, -0.784512, -0.516045,
		30.958500, 34.211731, 27.015791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643578, 34.424339, 27.844889>,  <31.199200, 34.760891, 27.377022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643578, 34.424339, 27.844889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752405, 34.140938, 27.584427>,  <30.817701, 33.970898, 27.428150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752405, 34.140938, 27.584427>,  <30.643578, 34.424339, 27.844889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752405, 34.140938, 27.584427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329050, -0.567393, 0.754845,
		-0.904270, -0.419633, 0.078763,
		0.272068, -0.708501, -0.651157,
		30.834026, 33.928387, 27.389080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386644, 33.845364, 28.109447>,  <30.643578, 34.424339, 27.844889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386644, 33.845364, 28.109447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.679110, 33.723633, 27.865223>,  <30.854588, 33.650593, 27.718687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.679110, 33.723633, 27.865223>,  <30.386644, 33.845364, 28.109447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679110, 33.723633, 27.865223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362559, -0.584789, 0.725653,
		-0.577876, -0.751940, -0.317248,
		0.731171, -0.304316, -0.610558,
		30.898458, 33.632336, 27.682055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352266, 33.093197, 28.064528>,  <30.386644, 33.845364, 28.109447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352266, 33.093197, 28.064528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.712036, 33.253475, 27.994692>,  <30.927898, 33.349644, 27.952791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.712036, 33.253475, 27.994692>,  <30.352266, 33.093197, 28.064528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712036, 33.253475, 27.994692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402905, -0.605246, 0.686546,
		0.169427, -0.687838, -0.705814,
		0.899423, 0.400695, -0.174589,
		30.981863, 33.373684, 27.942316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667913, 32.522278, 27.984465>,  <30.352266, 33.093197, 28.064528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667913, 32.522278, 27.984465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.966738, 32.780224, 28.049019>,  <31.146032, 32.934994, 28.087751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.966738, 32.780224, 28.049019>,  <30.667913, 32.522278, 27.984465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966738, 32.780224, 28.049019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457633, -0.674993, 0.578754,
		0.482154, -0.358509, -0.799374,
		0.747061, 0.644869, 0.161385,
		31.190855, 32.973686, 28.097435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205069, 32.024746, 28.071634>,  <30.667913, 32.522278, 27.984465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205069, 32.024746, 28.071634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.352158, 32.370461, 28.208916>,  <31.440411, 32.577888, 28.291285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.352158, 32.370461, 28.208916>,  <31.205069, 32.024746, 28.071634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352158, 32.370461, 28.208916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663001, -0.502453, 0.554951,
		0.652080, 0.023476, -0.757786,
		0.367724, 0.864286, 0.343204,
		31.462475, 32.629745, 28.311876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979780, 31.951378, 28.021107>,  <31.205069, 32.024746, 28.071634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979780, 31.951378, 28.021107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888685, 32.246914, 28.274801>,  <31.834028, 32.424236, 28.427017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888685, 32.246914, 28.274801>,  <31.979780, 31.951378, 28.021107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888685, 32.246914, 28.274801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622799, -0.390169, 0.678152,
		0.748503, 0.549442, -0.371291,
		-0.227739, 0.738838, 0.634234,
		31.820364, 32.468567, 28.465071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642677, 32.200169, 28.353184>,  <31.979780, 31.951378, 28.021107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642677, 32.200169, 28.353184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.336098, 32.289436, 28.594097>,  <32.152149, 32.342995, 28.738646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.336098, 32.289436, 28.594097>,  <32.642677, 32.200169, 28.353184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336098, 32.289436, 28.594097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527739, -0.315693, 0.788562,
		0.366116, 0.922245, 0.124191,
		-0.766453, 0.223165, 0.602285,
		32.106163, 32.356384, 28.774782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993725, 32.434570, 28.918655>,  <32.642677, 32.200169, 28.353184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993725, 32.434570, 28.918655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.621655, 32.339149, 29.030277>,  <32.398415, 32.281898, 29.097250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.621655, 32.339149, 29.030277>,  <32.993725, 32.434570, 28.918655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621655, 32.339149, 29.030277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354391, -0.384998, 0.852164,
		-0.095850, 0.891554, 0.442656,
		-0.930172, -0.238553, 0.279057,
		32.342602, 32.267582, 29.113995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533913, 32.722492, 28.947084>,  <32.993725, 32.434570, 28.918655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533913, 32.722492, 28.947084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.872452, 32.541901, 28.834042>,  <34.075577, 32.433548, 28.766216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.872452, 32.541901, 28.834042>,  <33.533913, 32.722492, 28.947084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872452, 32.541901, 28.834042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202832, 0.217415, -0.954772,
		0.492500, 0.865390, 0.092435,
		0.846347, -0.451477, -0.282605,
		34.126354, 32.406456, 28.749260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920170, 33.183662, 28.543728>,  <33.533913, 32.722492, 28.947084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920170, 33.183662, 28.543728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.055161, 32.822422, 28.437508>,  <34.136154, 32.605679, 28.373775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.055161, 32.822422, 28.437508>,  <33.920170, 33.183662, 28.543728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055161, 32.822422, 28.437508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083767, 0.252170, -0.964050,
		0.937598, 0.347591, 0.009453,
		0.337479, -0.903100, -0.265551,
		34.156403, 32.551491, 28.357841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355343, 33.333000, 28.061825>,  <33.920170, 33.183662, 28.543728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355343, 33.333000, 28.061825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298897, 32.945274, 27.981308>,  <34.265030, 32.712639, 27.932999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298897, 32.945274, 27.981308>,  <34.355343, 33.333000, 28.061825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298897, 32.945274, 27.981308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153051, 0.222240, -0.962904,
		0.978092, -0.105068, -0.179715,
		-0.141111, -0.969314, -0.201291,
		34.256565, 32.654480, 27.920921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846703, 33.180611, 27.703899>,  <34.355343, 33.333000, 28.061825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846703, 33.180611, 27.703899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554840, 32.919033, 27.623930>,  <34.379723, 32.762089, 27.575949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554840, 32.919033, 27.623930>,  <34.846703, 33.180611, 27.703899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554840, 32.919033, 27.623930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050512, 0.240020, -0.969453,
		0.681949, -0.717463, -0.142099,
		-0.729653, -0.653940, -0.199921,
		34.335945, 32.722851, 27.563953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077801, 33.061840, 27.096157>,  <34.846703, 33.180611, 27.703899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077801, 33.061840, 27.096157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.712242, 32.899506, 27.100039>,  <34.492908, 32.802105, 27.102367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.712242, 32.899506, 27.100039>,  <35.077801, 33.061840, 27.096157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712242, 32.899506, 27.100039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149129, 0.313399, -0.937839,
		0.377572, -0.858531, -0.346936,
		-0.913893, -0.405840, 0.009701,
		34.438072, 32.777756, 27.102949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092957, 32.673874, 26.526243>,  <35.077801, 33.061840, 27.096157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092957, 32.673874, 26.526243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.705719, 32.725651, 26.612076>,  <34.473377, 32.756718, 26.663576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.705719, 32.725651, 26.612076>,  <35.092957, 32.673874, 26.526243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705719, 32.725651, 26.612076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157115, 0.353587, -0.922112,
		-0.195234, -0.926402, -0.321967,
		-0.968090, 0.129442, 0.214584,
		34.415291, 32.764484, 26.676451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716873, 32.408081, 25.946442>,  <35.092957, 32.673874, 26.526243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716873, 32.408081, 25.946442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.454613, 32.633045, 26.147963>,  <34.297256, 32.768024, 26.268875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.454613, 32.633045, 26.147963>,  <34.716873, 32.408081, 25.946442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454613, 32.633045, 26.147963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287802, 0.430715, -0.855368,
		-0.698063, -0.705818, -0.120535,
		-0.655650, 0.562411, 0.503802,
		34.257919, 32.801769, 26.299103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103966, 32.347691, 25.520309>,  <34.716873, 32.408081, 25.946442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103966, 32.347691, 25.520309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.092770, 32.656361, 25.774471>,  <34.086052, 32.841560, 25.926968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.092770, 32.656361, 25.774471>,  <34.103966, 32.347691, 25.520309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092770, 32.656361, 25.774471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487953, 0.544229, -0.682434,
		-0.872421, -0.329146, 0.361309,
		-0.027986, 0.771672, 0.635405,
		34.084373, 32.887863, 25.965092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345036, 32.637905, 25.500805>,  <34.103966, 32.347691, 25.520309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345036, 32.637905, 25.500805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606419, 32.916969, 25.618292>,  <33.763248, 33.084408, 25.688784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606419, 32.916969, 25.618292>,  <33.345036, 32.637905, 25.500805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606419, 32.916969, 25.618292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312440, 0.602008, -0.734825,
		-0.689477, 0.388406, 0.611361,
		0.653454, 0.697659, 0.293717,
		33.802456, 33.126266, 25.706408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967331, 33.276798, 25.600771>,  <33.345036, 32.637905, 25.500805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967331, 33.276798, 25.600771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.352615, 33.344841, 25.517546>,  <33.583786, 33.385666, 25.467609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.352615, 33.344841, 25.517546>,  <32.967331, 33.276798, 25.600771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352615, 33.344841, 25.517546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267825, 0.671711, -0.690705,
		0.022268, 0.721019, 0.692557,
		0.963210, 0.170104, -0.208065,
		33.641579, 33.395874, 25.455126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017834, 34.083817, 25.668322>,  <32.967331, 33.276798, 25.600771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017834, 34.083817, 25.668322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334644, 33.958008, 25.459032>,  <33.524731, 33.882523, 25.333458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334644, 33.958008, 25.459032>,  <33.017834, 34.083817, 25.668322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334644, 33.958008, 25.459032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108643, 0.770768, -0.627785,
		0.600736, 0.554069, 0.576301,
		0.792031, -0.314522, -0.523224,
		33.572254, 33.863651, 25.302065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530006, 34.635006, 25.828152>,  <33.017834, 34.083817, 25.668322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530006, 34.635006, 25.828152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.587364, 34.460072, 25.473034>,  <33.621777, 34.355110, 25.259964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.587364, 34.460072, 25.473034>,  <33.530006, 34.635006, 25.828152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587364, 34.460072, 25.473034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021259, 0.898217, -0.439037,
		0.989438, 0.044080, 0.138093,
		0.143391, -0.437336, -0.887793,
		33.630383, 34.328873, 25.206696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893723, 35.125931, 25.533300>,  <33.530006, 34.635006, 25.828152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893723, 35.125931, 25.533300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.801720, 34.914700, 25.206320>,  <33.746517, 34.787960, 25.010132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.801720, 34.914700, 25.206320>,  <33.893723, 35.125931, 25.533300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801720, 34.914700, 25.206320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093686, 0.848087, -0.521508,
		0.968669, -0.043367, -0.244539,
		-0.230007, -0.528079, -0.817453,
		33.732719, 34.756275, 24.961084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329533, 35.362072, 25.054703>,  <33.893723, 35.125931, 25.533300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329533, 35.362072, 25.054703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.000111, 35.204693, 24.891260>,  <33.802460, 35.110264, 24.793194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.000111, 35.204693, 24.891260>,  <34.329533, 35.362072, 25.054703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000111, 35.204693, 24.891260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175756, 0.861883, -0.475676,
		0.539325, -0.319929, -0.778957,
		-0.823552, -0.393451, -0.408606,
		33.753044, 35.086658, 24.768679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004559, 35.304337, 24.764906>,  <34.329533, 35.362072, 25.054703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004559, 35.304337, 24.764906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095039, 35.667896, 24.905045>,  <35.149326, 35.886032, 24.989128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095039, 35.667896, 24.905045>,  <35.004559, 35.304337, 24.764906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095039, 35.667896, 24.905045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066520, -0.373243, 0.925346,
		0.971807, -0.186008, -0.144887,
		0.226200, 0.908895, 0.350347,
		35.162899, 35.940563, 25.010149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485012, 35.102463, 25.345011>,  <35.004559, 35.304337, 24.764906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485012, 35.102463, 25.345011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410805, 35.492451, 25.394024>,  <35.366280, 35.726444, 25.423431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410805, 35.492451, 25.394024>,  <35.485012, 35.102463, 25.345011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410805, 35.492451, 25.394024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075982, -0.110090, 0.991013,
		0.979699, 0.193163, -0.053657,
		-0.185520, 0.974971, 0.122532,
		35.355148, 35.784943, 25.430784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066692, 35.426552, 25.640818>,  <35.485012, 35.102463, 25.345011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066692, 35.426552, 25.640818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744896, 35.639210, 25.746758>,  <35.551819, 35.766804, 25.810322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744896, 35.639210, 25.746758>,  <36.066692, 35.426552, 25.640818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744896, 35.639210, 25.746758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212432, -0.158865, 0.964176,
		0.554675, 0.831935, 0.014867,
		-0.804493, 0.531645, 0.264848,
		35.503548, 35.798702, 25.826212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319115, 35.858196, 26.231813>,  <36.066692, 35.426552, 25.640818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319115, 35.858196, 26.231813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920990, 35.882656, 26.261774>,  <35.682114, 35.897331, 26.279751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920990, 35.882656, 26.261774>,  <36.319115, 35.858196, 26.231813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920990, 35.882656, 26.261774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080715, 0.098874, 0.991821,
		0.053240, 0.993220, -0.103346,
		-0.995314, 0.061146, 0.074903,
		35.622395, 35.901001, 26.284245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247963, 36.521164, 26.456240>,  <36.319115, 35.858196, 26.231813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247963, 36.521164, 26.456240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956444, 36.275280, 26.576895>,  <35.781532, 36.127750, 26.649288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956444, 36.275280, 26.576895>,  <36.247963, 36.521164, 26.456240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956444, 36.275280, 26.576895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333230, 0.066426, 0.940503,
		-0.598175, 0.785949, 0.156429,
		-0.728796, -0.614712, 0.301637,
		35.737804, 36.090866, 26.667385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234051, 36.578300, 27.158733>,  <36.247963, 36.521164, 26.456240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234051, 36.578300, 27.158733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010471, 36.247005, 27.142721>,  <35.876324, 36.048229, 27.133114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010471, 36.247005, 27.142721>,  <36.234051, 36.578300, 27.158733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010471, 36.247005, 27.142721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163527, -0.157429, 0.973897,
		-0.812918, 0.537812, 0.223433,
		-0.558949, -0.828236, -0.040030,
		35.842789, 35.998535, 27.130713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924286, 36.566090, 27.768957>,  <36.234051, 36.578300, 27.158733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924286, 36.566090, 27.768957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.911972, 36.182449, 27.656406>,  <35.904583, 35.952263, 27.588877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.911972, 36.182449, 27.656406>,  <35.924286, 36.566090, 27.768957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911972, 36.182449, 27.656406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095478, -0.283044, 0.954343,
		-0.994956, 0.002510, 0.100286,
		-0.030781, -0.959104, -0.281377,
		35.902737, 35.894718, 27.571993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588566, 36.193317, 28.342712>,  <35.924286, 36.566090, 27.768957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588566, 36.193317, 28.342712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.781841, 35.921383, 28.122040>,  <35.897808, 35.758224, 27.989635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.781841, 35.921383, 28.122040>,  <35.588566, 36.193317, 28.342712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781841, 35.921383, 28.122040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310148, -0.456350, 0.833998,
		-0.818741, -0.574082, -0.009654,
		0.483189, -0.679835, -0.551683,
		35.926796, 35.717434, 27.956535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379818, 35.567825, 28.588926>,  <35.588566, 36.193317, 28.342712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379818, 35.567825, 28.588926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.736012, 35.506905, 28.417419>,  <35.949726, 35.470352, 28.314516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.736012, 35.506905, 28.417419>,  <35.379818, 35.567825, 28.588926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736012, 35.506905, 28.417419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380650, -0.266913, 0.885360,
		-0.249266, -0.951614, -0.179717,
		0.890489, -0.152280, -0.428764,
		36.003159, 35.461216, 28.288790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575726, 34.903214, 28.774609>,  <35.379818, 35.567825, 28.588926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575726, 34.903214, 28.774609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910027, 35.092285, 28.662823>,  <36.110607, 35.205727, 28.595751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910027, 35.092285, 28.662823>,  <35.575726, 34.903214, 28.774609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910027, 35.092285, 28.662823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486356, -0.400929, 0.776347,
		0.254914, -0.784751, -0.564964,
		0.835749, 0.472675, -0.279466,
		36.160751, 35.234089, 28.578983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144680, 34.335583, 28.743584>,  <35.575726, 34.903214, 28.774609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144680, 34.335583, 28.743584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258274, 34.714573, 28.802425>,  <36.326431, 34.941967, 28.837730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258274, 34.714573, 28.802425>,  <36.144680, 34.335583, 28.743584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258274, 34.714573, 28.802425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598402, -0.295011, 0.744906,
		0.749178, -0.123517, -0.650751,
		0.283987, 0.947477, 0.147103,
		36.343472, 34.998817, 28.846556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743111, 34.157211, 28.902439>,  <36.144680, 34.335583, 28.743584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743111, 34.157211, 28.902439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703392, 34.540474, 29.009827>,  <36.679562, 34.770432, 29.074259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703392, 34.540474, 29.009827>,  <36.743111, 34.157211, 28.902439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703392, 34.540474, 29.009827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649946, -0.141843, 0.746627,
		0.753465, 0.248633, -0.608664,
		-0.099301, 0.958156, 0.268471,
		36.673603, 34.827919, 29.090368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420288, 34.385834, 28.993505>,  <36.743111, 34.157211, 28.902439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420288, 34.385834, 28.993505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190098, 34.653439, 29.181656>,  <37.051983, 34.814003, 29.294546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190098, 34.653439, 29.181656>,  <37.420288, 34.385834, 28.993505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190098, 34.653439, 29.181656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557460, -0.099947, 0.824166,
		0.598388, 0.736502, -0.315430,
		-0.575473, 0.669011, 0.470378,
		37.017456, 34.854141, 29.322769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890697, 34.721912, 29.284094>,  <37.420288, 34.385834, 28.993505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890697, 34.721912, 29.284094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557411, 34.797390, 29.491997>,  <37.357441, 34.842678, 29.616739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.557411, 34.797390, 29.491997>,  <37.890697, 34.721912, 29.284094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557411, 34.797390, 29.491997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509396, -0.103730, 0.854258,
		0.215110, 0.976542, -0.009692,
		-0.833213, 0.188697, 0.519759,
		37.307446, 34.854000, 29.647924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.961479, 40.264786, 26.736284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.656532, 40.006699, 26.716324>,  <36.473564, 39.851845, 26.704348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.656532, 40.006699, 26.716324>,  <36.961479, 40.264786, 26.736284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656532, 40.006699, 26.716324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063804, 0.151673, -0.986369,
		0.643991, -0.748792, -0.156798,
		-0.762368, -0.645217, -0.049900,
		36.427822, 39.813133, 26.701353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083408, 39.817162, 26.185198>,  <36.961479, 40.264786, 26.736284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083408, 39.817162, 26.185198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691628, 39.747227, 26.225395>,  <36.456558, 39.705265, 26.249514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691628, 39.747227, 26.225395>,  <37.083408, 39.817162, 26.185198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691628, 39.747227, 26.225395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096752, -0.029809, -0.994862,
		0.176936, -0.984146, 0.012280,
		-0.979455, -0.174839, 0.100493,
		36.397789, 39.694775, 26.255543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941517, 39.192230, 25.784504>,  <37.083408, 39.817162, 26.185198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941517, 39.192230, 25.784504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.608131, 39.406200, 25.839911>,  <36.408100, 39.534584, 25.873154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.608131, 39.406200, 25.839911>,  <36.941517, 39.192230, 25.784504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608131, 39.406200, 25.839911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152537, 0.018201, -0.988130,
		-0.531102, -0.844700, 0.066426,
		-0.833465, 0.534930, 0.138515,
		36.358093, 39.566681, 25.881464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729950, 39.142521, 25.066734>,  <36.941517, 39.192230, 25.784504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729950, 39.142521, 25.066734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.456215, 39.355431, 25.266081>,  <36.291973, 39.483177, 25.385689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.456215, 39.355431, 25.266081>,  <36.729950, 39.142521, 25.066734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456215, 39.355431, 25.266081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435981, 0.249154, -0.864779,
		-0.584468, -0.809079, 0.061555,
		-0.684338, 0.532272, 0.498365,
		36.250912, 39.515114, 25.415590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030567, 38.835289, 24.805737>,  <36.729950, 39.142521, 25.066734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030567, 38.835289, 24.805737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.037979, 39.211266, 24.942072>,  <36.042427, 39.436852, 25.023872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.037979, 39.211266, 24.942072>,  <36.030567, 38.835289, 24.805737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037979, 39.211266, 24.942072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439705, 0.313819, -0.841532,
		-0.897951, -0.134278, 0.419110,
		0.018526, 0.939940, 0.340837,
		36.043537, 39.493248, 25.044323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341888, 39.153450, 24.596325>,  <36.030567, 38.835289, 24.805737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341888, 39.153450, 24.596325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.574871, 39.471180, 24.665361>,  <35.714661, 39.661819, 24.706783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.574871, 39.471180, 24.665361>,  <35.341888, 39.153450, 24.596325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574871, 39.471180, 24.665361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425592, 0.478903, -0.767804,
		-0.692542, 0.373760, 0.617000,
		0.582458, 0.794327, 0.172591,
		35.749607, 39.709476, 24.717138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993416, 39.790779, 24.415617>,  <35.341888, 39.153450, 24.596325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993416, 39.790779, 24.415617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389431, 39.837967, 24.384859>,  <35.627041, 39.866280, 24.366404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389431, 39.837967, 24.384859>,  <34.993416, 39.790779, 24.415617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389431, 39.837967, 24.384859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119206, 0.411411, -0.903621,
		-0.074964, 0.903783, 0.421374,
		0.990036, 0.117969, -0.076895,
		35.686443, 39.873356, 24.361790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106083, 40.525414, 24.185778>,  <34.993416, 39.790779, 24.415617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106083, 40.525414, 24.185778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444141, 40.334805, 24.088898>,  <35.646976, 40.220440, 24.030769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.444141, 40.334805, 24.088898>,  <35.106083, 40.525414, 24.185778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444141, 40.334805, 24.088898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095047, 0.311917, -0.945343,
		0.526021, 0.821971, 0.218323,
		0.845144, -0.476519, -0.242201,
		35.697685, 40.191849, 24.016237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472168, 40.994789, 23.710676>,  <35.106083, 40.525414, 24.185778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472168, 40.994789, 23.710676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623367, 40.629425, 23.650269>,  <35.714085, 40.410206, 23.614023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623367, 40.629425, 23.650269>,  <35.472168, 40.994789, 23.710676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623367, 40.629425, 23.650269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230476, 0.065148, -0.970895,
		0.896661, 0.401800, -0.185893,
		0.377995, -0.913407, -0.151021,
		35.736767, 40.355404, 23.604961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861004, 41.070755, 23.187355>,  <35.472168, 40.994789, 23.710676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861004, 41.070755, 23.187355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828827, 40.672344, 23.172062>,  <35.809521, 40.433296, 23.162886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828827, 40.672344, 23.172062>,  <35.861004, 41.070755, 23.187355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828827, 40.672344, 23.172062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280757, 0.059444, -0.957936,
		0.956402, -0.066325, -0.284423,
		-0.080442, -0.996026, -0.038231,
		35.804695, 40.373535, 23.160593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172771, 40.729813, 22.675642>,  <35.861004, 41.070755, 23.187355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172771, 40.729813, 22.675642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893566, 40.451202, 22.742140>,  <35.726044, 40.284039, 22.782038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.893566, 40.451202, 22.742140>,  <36.172771, 40.729813, 22.675642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893566, 40.451202, 22.742140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277104, 0.048659, -0.959607,
		0.660298, -0.715883, -0.226974,
		-0.698011, -0.696522, 0.166244,
		35.684162, 40.242245, 22.792013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202358, 40.246822, 22.111176>,  <36.172771, 40.729813, 22.675642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202358, 40.246822, 22.111176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841614, 40.192402, 22.275192>,  <35.625168, 40.159748, 22.373602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.841614, 40.192402, 22.275192>,  <36.202358, 40.246822, 22.111176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841614, 40.192402, 22.275192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385133, -0.176842, -0.905759,
		0.195743, -0.974791, 0.107089,
		-0.901863, -0.136052, 0.410040,
		35.571056, 40.151585, 22.398205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966457, 39.704697, 21.748634>,  <36.202358, 40.246822, 22.111176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966457, 39.704697, 21.748634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637775, 39.858620, 21.916788>,  <35.440567, 39.950974, 22.017681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637775, 39.858620, 21.916788>,  <35.966457, 39.704697, 21.748634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637775, 39.858620, 21.916788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523511, -0.218107, -0.823629,
		-0.225258, -0.896853, 0.380675,
		-0.821702, 0.384817, 0.420382,
		35.391262, 39.974060, 22.042904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271244, 39.401577, 21.819454>,  <35.966457, 39.704697, 21.748634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271244, 39.401577, 21.819454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137222, 39.778446, 21.816769>,  <35.056808, 40.004566, 21.815157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137222, 39.778446, 21.816769>,  <35.271244, 39.401577, 21.819454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137222, 39.778446, 21.816769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654105, -0.237730, -0.718075,
		-0.678148, -0.236204, 0.695933,
		-0.335057, 0.942174, -0.006714,
		35.036705, 40.061100, 21.814754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381683, 39.714626, 21.087948>,  <35.271244, 39.401577, 21.819454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381683, 39.714626, 21.087948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.439720, 39.446285, 20.797047>,  <35.474545, 39.285278, 20.622505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.439720, 39.446285, 20.797047>,  <35.381683, 39.714626, 21.087948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439720, 39.446285, 20.797047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038015, -0.738271, 0.673433,
		-0.988687, -0.070065, -0.132621,
		0.145094, -0.670856, -0.727255,
		35.483250, 39.245029, 20.578871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767750, 39.172966, 21.044863>,  <35.381683, 39.714626, 21.087948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767750, 39.172966, 21.044863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.099121, 39.006756, 20.894634>,  <35.297943, 38.907032, 20.804497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.099121, 39.006756, 20.894634>,  <34.767750, 39.172966, 21.044863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099121, 39.006756, 20.894634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011162, -0.682656, 0.730655,
		-0.559986, -0.601102, -0.570169,
		0.828427, -0.415520, -0.375569,
		35.347649, 38.882099, 20.781963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605820, 38.440067, 21.051336>,  <34.767750, 39.172966, 21.044863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605820, 38.440067, 21.051336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004829, 38.461266, 21.032812>,  <35.244236, 38.473984, 21.021698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004829, 38.461266, 21.032812>,  <34.605820, 38.440067, 21.051336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004829, 38.461266, 21.032812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069396, -0.631093, 0.772597,
		0.011715, -0.773895, -0.633206,
		0.997520, 0.052993, -0.046312,
		35.304085, 38.477165, 21.018919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830936, 37.753021, 21.003906>,  <34.605820, 38.440067, 21.051336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830936, 37.753021, 21.003906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136375, 37.983944, 21.119585>,  <35.319641, 38.122498, 21.188993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136375, 37.983944, 21.119585>,  <34.830936, 37.753021, 21.003906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136375, 37.983944, 21.119585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096532, -0.544926, 0.832909,
		0.638433, -0.608093, -0.471834,
		0.763600, 0.577304, 0.289198,
		35.365456, 38.157135, 21.206345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228485, 37.251945, 21.137146>,  <34.830936, 37.753021, 21.003906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228485, 37.251945, 21.137146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389553, 37.569241, 21.319851>,  <35.486195, 37.759617, 21.429474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389553, 37.569241, 21.319851>,  <35.228485, 37.251945, 21.137146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389553, 37.569241, 21.319851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040290, -0.513885, 0.856912,
		0.914457, -0.326652, -0.238887,
		0.402673, 0.793234, 0.456765,
		35.510353, 37.807209, 21.456881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774277, 37.044212, 21.531036>,  <35.228485, 37.251945, 21.137146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774277, 37.044212, 21.531036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675980, 37.392967, 21.700470>,  <35.617001, 37.602219, 21.802130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675980, 37.392967, 21.700470>,  <35.774277, 37.044212, 21.531036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675980, 37.392967, 21.700470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027072, -0.442989, 0.896118,
		0.968957, 0.208748, 0.132465,
		-0.245744, 0.871886, 0.423586,
		35.602257, 37.654533, 21.827545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357067, 37.255840, 22.048765>,  <35.774277, 37.044212, 21.531036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357067, 37.255840, 22.048765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010616, 37.425453, 22.154606>,  <35.802746, 37.527222, 22.218111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010616, 37.425453, 22.154606>,  <36.357067, 37.255840, 22.048765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010616, 37.425453, 22.154606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170485, -0.247009, 0.953898,
		0.469842, 0.871312, 0.141651,
		-0.866131, 0.424032, 0.264601,
		35.750778, 37.552662, 22.233986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449421, 37.567135, 22.690983>,  <36.357067, 37.255840, 22.048765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449421, 37.567135, 22.690983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051880, 37.523823, 22.681725>,  <35.813354, 37.497837, 22.676170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051880, 37.523823, 22.681725>,  <36.449421, 37.567135, 22.690983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051880, 37.523823, 22.681725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019891, -0.380209, 0.924687,
		-0.108925, 0.918541, 0.380025,
		-0.993851, -0.108281, -0.023144,
		35.753723, 37.491337, 22.674782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183922, 37.693958, 23.366726>,  <36.449421, 37.567135, 22.690983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183922, 37.693958, 23.366726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887951, 37.486004, 23.195972>,  <35.710369, 37.361233, 23.093519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887951, 37.486004, 23.195972>,  <36.183922, 37.693958, 23.366726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887951, 37.486004, 23.195972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323320, -0.281636, 0.903407,
		-0.589892, 0.806476, 0.040302,
		-0.739927, -0.519882, -0.426885,
		35.665974, 37.330040, 23.067907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579018, 37.858200, 23.760355>,  <36.183922, 37.693958, 23.366726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579018, 37.858200, 23.760355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460815, 37.523117, 23.576649>,  <35.389893, 37.322067, 23.466425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460815, 37.523117, 23.576649>,  <35.579018, 37.858200, 23.760355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460815, 37.523117, 23.576649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251468, -0.395576, 0.883337,
		-0.921650, 0.376524, -0.093760,
		-0.295508, -0.837705, -0.459266,
		35.372162, 37.271805, 23.438869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864437, 37.641216, 23.984940>,  <35.579018, 37.858200, 23.760355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864437, 37.641216, 23.984940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034523, 37.304386, 23.852209>,  <35.136574, 37.102287, 23.772570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034523, 37.304386, 23.852209>,  <34.864437, 37.641216, 23.984940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034523, 37.304386, 23.852209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441138, -0.512943, 0.736401,
		-0.790312, -0.166743, -0.589579,
		0.425210, -0.842073, -0.331828,
		35.162086, 37.051765, 23.752661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369804, 37.171288, 24.251173>,  <34.864437, 37.641216, 23.984940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369804, 37.171288, 24.251173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681019, 36.958912, 24.116854>,  <34.867748, 36.831486, 24.036263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681019, 36.958912, 24.116854>,  <34.369804, 37.171288, 24.251173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681019, 36.958912, 24.116854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177350, -0.698416, 0.693370,
		-0.602662, -0.479916, -0.637557,
		0.778040, -0.530938, -0.335796,
		34.914429, 36.799629, 24.016115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176247, 36.474758, 24.283844>,  <34.369804, 37.171288, 24.251173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176247, 36.474758, 24.283844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575310, 36.489838, 24.306681>,  <34.814747, 36.498886, 24.320383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575310, 36.489838, 24.306681>,  <34.176247, 36.474758, 24.283844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575310, 36.489838, 24.306681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024015, -0.588425, 0.808195,
		0.064059, -0.807673, -0.586141,
		0.997657, 0.037696, 0.057090,
		34.874607, 36.501144, 24.323809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360851, 35.877567, 24.568920>,  <34.176247, 36.474758, 24.283844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360851, 35.877567, 24.568920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.685951, 36.101185, 24.634539>,  <34.881012, 36.235355, 24.673910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.685951, 36.101185, 24.634539>,  <34.360851, 35.877567, 24.568920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685951, 36.101185, 24.634539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163820, -0.489489, 0.856483,
		0.559110, -0.669231, -0.489413,
		0.812748, 0.559044, 0.164045,
		34.929775, 36.268898, 24.683752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394020, 35.428280, 23.966225>,  <34.360851, 35.877567, 24.568920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394020, 35.428280, 23.966225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.018135, 35.346771, 24.076077>,  <33.792606, 35.297867, 24.141987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.018135, 35.346771, 24.076077>,  <34.394020, 35.428280, 23.966225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018135, 35.346771, 24.076077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340122, 0.640330, -0.688691,
		-0.035518, -0.740578, -0.671032,
		-0.939710, -0.203772, 0.274630,
		33.736221, 35.285641, 24.158466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077511, 35.498772, 23.328379>,  <34.394020, 35.428280, 23.966225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077511, 35.498772, 23.328379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798153, 35.492359, 23.614594>,  <33.630539, 35.488514, 23.786322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798153, 35.492359, 23.614594>,  <34.077511, 35.498772, 23.328379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798153, 35.492359, 23.614594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636233, 0.471797, -0.610422,
		-0.327803, -0.881561, -0.339698,
		-0.698393, -0.016028, 0.715535,
		33.588634, 35.487549, 23.829254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403709, 35.097675, 23.133005>,  <34.077511, 35.498772, 23.328379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403709, 35.097675, 23.133005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353642, 35.389950, 23.401461>,  <33.323601, 35.565315, 23.562534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353642, 35.389950, 23.401461>,  <33.403709, 35.097675, 23.133005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353642, 35.389950, 23.401461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613285, 0.474755, -0.631260,
		-0.779881, -0.490614, 0.388695,
		-0.125170, 0.730689, 0.671139,
		33.316090, 35.609158, 23.602802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721760, 35.340580, 23.020504>,  <33.403709, 35.097675, 23.133005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721760, 35.340580, 23.020504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887394, 35.639378, 23.228558>,  <32.986774, 35.818657, 23.353390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887394, 35.639378, 23.228558>,  <32.721760, 35.340580, 23.020504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887394, 35.639378, 23.228558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434265, 0.664325, -0.608347,
		-0.799966, 0.026033, 0.599480,
		0.414087, 0.746990, 0.520132,
		33.011620, 35.863476, 23.384598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211941, 35.918434, 22.961683>,  <32.721760, 35.340580, 23.020504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211941, 35.918434, 22.961683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.526516, 36.111805, 23.115471>,  <32.715260, 36.227829, 23.207743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.526516, 36.111805, 23.115471>,  <32.211941, 35.918434, 22.961683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526516, 36.111805, 23.115471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242112, 0.813902, -0.528153,
		-0.568243, 0.322274, 0.757126,
		0.786436, 0.483429, 0.384468,
		32.762447, 36.256832, 23.230812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948046, 36.388557, 23.452860>,  <32.211941, 35.918434, 22.961683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948046, 36.388557, 23.452860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.284863, 36.505203, 23.271343>,  <32.486954, 36.575191, 23.162434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.284863, 36.505203, 23.271343>,  <31.948046, 36.388557, 23.452860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284863, 36.505203, 23.271343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509690, 0.705530, -0.492386,
		0.176578, 0.645903, 0.742718,
		0.842043, 0.291611, -0.453791,
		32.537476, 36.592686, 23.135206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684368, 36.885044, 23.071297>,  <31.948046, 36.388557, 23.452860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684368, 36.885044, 23.071297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051437, 36.867317, 22.913353>,  <32.271679, 36.856682, 22.818586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051437, 36.867317, 22.913353>,  <31.684368, 36.885044, 23.071297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051437, 36.867317, 22.913353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269210, 0.661555, -0.699908,
		0.292236, 0.748586, 0.595161,
		0.917673, -0.044315, -0.394857,
		32.326740, 36.854023, 22.794895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630009, 37.392799, 23.598024>,  <31.684368, 36.885044, 23.071297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630009, 37.392799, 23.598024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.275183, 37.538872, 23.710987>,  <31.062286, 37.626514, 23.778765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.275183, 37.538872, 23.710987>,  <31.630009, 37.392799, 23.598024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275183, 37.538872, 23.710987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102825, -0.752682, 0.650305,
		0.450043, 0.547826, 0.705229,
		-0.887067, 0.365181, 0.282409,
		31.009062, 37.648426, 23.795710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580154, 37.526821, 24.347155>,  <31.630009, 37.392799, 23.598024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580154, 37.526821, 24.347155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.202347, 37.457119, 24.235788>,  <30.975662, 37.415298, 24.168968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.202347, 37.457119, 24.235788>,  <31.580154, 37.526821, 24.347155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202347, 37.457119, 24.235788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123381, -0.597351, 0.792432,
		-0.304396, 0.782820, 0.542711,
		-0.944521, -0.174253, -0.278417,
		30.918991, 37.404842, 24.152264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250389, 37.358185, 24.972118>,  <31.580154, 37.526821, 24.347155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250389, 37.358185, 24.972118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.988169, 37.241783, 24.693386>,  <30.830837, 37.171944, 24.526146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.988169, 37.241783, 24.693386>,  <31.250389, 37.358185, 24.972118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988169, 37.241783, 24.693386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169914, -0.842265, 0.511585,
		-0.735788, 0.453771, 0.502701,
		-0.655550, -0.291002, -0.696830,
		30.791504, 37.154484, 24.484337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737843, 37.080021, 25.301775>,  <31.250389, 37.358185, 24.972118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737843, 37.080021, 25.301775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.661358, 36.897331, 24.954248>,  <30.615467, 36.787716, 24.745733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.661358, 36.897331, 24.954248>,  <30.737843, 37.080021, 25.301775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661358, 36.897331, 24.954248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158120, -0.859253, 0.486500,
		-0.968729, 0.230401, 0.092081,
		-0.191211, -0.456727, -0.868814,
		30.603994, 36.760311, 24.693604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065672, 36.738052, 25.255354>,  <30.737843, 37.080021, 25.301775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065672, 36.738052, 25.255354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.270226, 36.541340, 24.973461>,  <30.392958, 36.423313, 24.804325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.270226, 36.541340, 24.973461>,  <30.065672, 36.738052, 25.255354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270226, 36.541340, 24.973461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153221, -0.859107, 0.488321,
		-0.845582, -0.141741, -0.514685,
		0.511385, -0.491776, -0.704728,
		30.423639, 36.393806, 24.762043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642435, 36.099709, 25.080051>,  <30.065672, 36.738052, 25.255354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642435, 36.099709, 25.080051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016264, 36.026936, 24.957756>,  <30.240561, 35.983273, 24.884378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016264, 36.026936, 24.957756>,  <29.642435, 36.099709, 25.080051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016264, 36.026936, 24.957756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043566, -0.911409, 0.409188,
		-0.353097, -0.369096, -0.859703,
		0.934572, -0.181937, -0.305736,
		30.296635, 35.972355, 24.866035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522259, 35.456764, 24.625360>,  <29.642435, 36.099709, 25.080051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522259, 35.456764, 24.625360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.883343, 35.485340, 24.795073>,  <30.099993, 35.502487, 24.896900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.883343, 35.485340, 24.795073>,  <29.522259, 35.456764, 24.625360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883343, 35.485340, 24.795073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072367, -0.946859, 0.313404,
		0.424125, -0.313616, -0.849566,
		0.902708, 0.071442, 0.424282,
		30.154156, 35.506771, 24.922358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.039673, 40.057026, 23.132166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.392574, 39.870090, 23.109478>,  <33.604317, 39.757931, 23.095865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.392574, 39.870090, 23.109478>,  <33.039673, 40.057026, 23.132166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392574, 39.870090, 23.109478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170434, -0.429392, 0.886890,
		-0.438820, -0.772805, -0.458485,
		0.882264, -0.467327, -0.056714,
		33.657253, 39.729889, 23.092463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857166, 39.409153, 23.223610>,  <33.039673, 40.057026, 23.132166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857166, 39.409153, 23.223610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.239616, 39.459888, 23.329235>,  <33.469086, 39.490330, 23.392611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.239616, 39.459888, 23.329235>,  <32.857166, 39.409153, 23.223610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239616, 39.459888, 23.329235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224088, -0.263911, 0.938155,
		0.188681, -0.956171, -0.223910,
		0.956130, 0.126837, 0.264062,
		33.526455, 39.497940, 23.408453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150116, 38.757690, 23.595324>,  <32.857166, 39.409153, 23.223610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150116, 38.757690, 23.595324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.333305, 39.099804, 23.692274>,  <33.443218, 39.305073, 23.750444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.333305, 39.099804, 23.692274>,  <33.150116, 38.757690, 23.595324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333305, 39.099804, 23.692274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167559, -0.184709, 0.968404,
		0.873032, -0.484115, 0.058719,
		0.457973, 0.855287, 0.242375,
		33.470695, 39.356388, 23.764986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691990, 38.640884, 24.125322>,  <33.150116, 38.757690, 23.595324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691990, 38.640884, 24.125322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.644634, 39.033783, 24.183542>,  <33.616219, 39.269520, 24.218473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.644634, 39.033783, 24.183542>,  <33.691990, 38.640884, 24.125322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644634, 39.033783, 24.183542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049906, -0.152280, 0.987076,
		0.991712, 0.109598, 0.067049,
		-0.118392, 0.982242, 0.145548,
		33.609116, 39.328457, 24.227207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311218, 38.886253, 24.544704>,  <33.691990, 38.640884, 24.125322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311218, 38.886253, 24.544704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.997025, 39.126106, 24.605976>,  <33.808510, 39.270016, 24.642740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.997025, 39.126106, 24.605976>,  <34.311218, 38.886253, 24.544704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997025, 39.126106, 24.605976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030160, -0.210130, 0.977208,
		0.618149, 0.772199, 0.146969,
		-0.785482, 0.599628, 0.153180,
		33.761379, 39.305996, 24.651930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506634, 39.243626, 25.054043>,  <34.311218, 38.886253, 24.544704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506634, 39.243626, 25.054043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.112572, 39.312225, 25.050892>,  <33.876137, 39.353386, 25.049002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.112572, 39.312225, 25.050892>,  <34.506634, 39.243626, 25.054043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112572, 39.312225, 25.050892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005624, 0.078095, 0.996930,
		0.171589, 0.982084, -0.077900,
		-0.985153, 0.171500, -0.007877,
		33.817024, 39.363674, 25.048529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396461, 39.883053, 25.396729>,  <34.506634, 39.243626, 25.054043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396461, 39.883053, 25.396729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.050030, 39.684017, 25.415949>,  <33.842171, 39.564598, 25.427481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.050030, 39.684017, 25.415949>,  <34.396461, 39.883053, 25.396729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050030, 39.684017, 25.415949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059736, 0.198448, 0.978289,
		-0.496320, 0.844408, -0.201597,
		-0.866082, -0.497587, 0.048053,
		33.790207, 39.534740, 25.430365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031624, 40.241585, 25.864281>,  <34.396461, 39.883053, 25.396729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031624, 40.241585, 25.864281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.792164, 39.921238, 25.870338>,  <33.648487, 39.729031, 25.873974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.792164, 39.921238, 25.870338>,  <34.031624, 40.241585, 25.864281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792164, 39.921238, 25.870338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256879, 0.209859, 0.943383,
		-0.758701, 0.560869, -0.331358,
		-0.598653, -0.800865, 0.015145,
		33.612568, 39.680977, 25.874882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369823, 40.391644, 26.202229>,  <34.031624, 40.241585, 25.864281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369823, 40.391644, 26.202229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.389599, 39.993774, 26.238396>,  <33.401463, 39.755051, 26.260096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.389599, 39.993774, 26.238396>,  <33.369823, 40.391644, 26.202229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389599, 39.993774, 26.238396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307636, 0.070962, 0.948854,
		-0.950219, -0.074726, -0.302490,
		0.049438, -0.994676, 0.090418,
		33.404430, 39.695370, 26.265522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763390, 40.199833, 26.650553>,  <33.369823, 40.391644, 26.202229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763390, 40.199833, 26.650553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.027519, 39.899727, 26.663677>,  <33.185997, 39.719666, 26.671553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.027519, 39.899727, 26.663677>,  <32.763390, 40.199833, 26.650553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027519, 39.899727, 26.663677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113180, -0.056231, 0.991982,
		-0.742403, -0.658744, -0.122045,
		0.660324, -0.750263, 0.032811,
		33.225616, 39.674648, 26.673521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461651, 39.738197, 27.094475>,  <32.763390, 40.199833, 26.650553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461651, 39.738197, 27.094475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849598, 39.640862, 27.099207>,  <33.082367, 39.582462, 27.102047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849598, 39.640862, 27.099207>,  <32.461651, 39.738197, 27.094475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849598, 39.640862, 27.099207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023859, -0.046539, 0.998632,
		-0.242454, -0.968825, -0.050942,
		0.969869, -0.243337, 0.011832,
		33.140560, 39.567860, 27.102757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532036, 39.051632, 27.283770>,  <32.461651, 39.738197, 27.094475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532036, 39.051632, 27.283770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.886024, 39.225170, 27.351425>,  <33.098415, 39.329292, 27.392019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.886024, 39.225170, 27.351425>,  <32.532036, 39.051632, 27.283770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886024, 39.225170, 27.351425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012428, -0.385112, 0.922786,
		0.465485, -0.814535, -0.346203,
		0.884969, 0.433846, 0.169141,
		33.151516, 39.355324, 27.402168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293987, 38.442627, 26.990067>,  <32.532036, 39.051632, 27.283770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293987, 38.442627, 26.990067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.913549, 38.321285, 27.013386>,  <31.685287, 38.248478, 27.027376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.913549, 38.321285, 27.013386>,  <32.293987, 38.442627, 26.990067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913549, 38.321285, 27.013386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256626, 0.670872, -0.695754,
		0.171954, -0.676686, -0.715911,
		-0.951091, -0.303359, 0.058296,
		31.628222, 38.230278, 27.030874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034409, 38.436325, 26.332325>,  <32.293987, 38.442627, 26.990067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034409, 38.436325, 26.332325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692150, 38.432163, 26.539309>,  <31.486795, 38.429665, 26.663500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692150, 38.432163, 26.539309>,  <32.034409, 38.436325, 26.332325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692150, 38.432163, 26.539309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435319, 0.555257, -0.708652,
		-0.279947, -0.831614, -0.479633,
		-0.855644, -0.010409, 0.517460,
		31.435457, 38.429039, 26.694546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427729, 38.266655, 25.874626>,  <32.034409, 38.436325, 26.332325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427729, 38.266655, 25.874626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.280087, 38.469948, 26.185873>,  <31.191502, 38.591923, 26.372622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.280087, 38.469948, 26.185873>,  <31.427729, 38.266655, 25.874626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280087, 38.469948, 26.185873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431048, 0.648125, -0.627799,
		-0.823382, -0.567129, -0.020154,
		-0.369105, 0.508231, 0.778115,
		31.169355, 38.622417, 26.419308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797501, 38.514832, 25.626646>,  <31.427729, 38.266655, 25.874626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797501, 38.514832, 25.626646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844164, 38.732811, 25.958773>,  <30.872162, 38.863598, 26.158049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844164, 38.732811, 25.958773>,  <30.797501, 38.514832, 25.626646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844164, 38.732811, 25.958773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307426, 0.814779, -0.491553,
		-0.944394, -0.197918, 0.262580,
		0.116658, 0.544944, 0.830317,
		30.879162, 38.896294, 26.207869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122065, 38.858280, 25.769648>,  <30.797501, 38.514832, 25.626646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122065, 38.858280, 25.769648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418470, 39.070148, 25.934740>,  <30.596313, 39.197269, 26.033796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418470, 39.070148, 25.934740>,  <30.122065, 38.858280, 25.769648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418470, 39.070148, 25.934740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281533, 0.803088, -0.525156,
		-0.609619, 0.272951, 0.744219,
		0.741015, 0.529667, 0.412733,
		30.640776, 39.229050, 26.058559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829296, 39.496094, 25.881960>,  <30.122065, 38.858280, 25.769648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829296, 39.496094, 25.881960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217382, 39.581963, 25.926859>,  <30.450233, 39.633484, 25.953798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217382, 39.581963, 25.926859>,  <29.829296, 39.496094, 25.881960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217382, 39.581963, 25.926859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085056, 0.735735, -0.671907,
		-0.226822, 0.642348, 0.732080,
		0.970215, 0.214671, 0.112245,
		30.508448, 39.646362, 25.960533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873907, 40.188400, 26.076603>,  <29.829296, 39.496094, 25.881960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873907, 40.188400, 26.076603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245287, 40.108833, 25.951118>,  <30.468115, 40.061092, 25.875828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245287, 40.108833, 25.951118>,  <29.873907, 40.188400, 26.076603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245287, 40.108833, 25.951118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001703, 0.846809, -0.531895,
		0.371457, 0.493303, 0.786557,
		0.928449, -0.198915, -0.313712,
		30.523821, 40.049160, 25.857004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334932, 40.739182, 26.203970>,  <29.873907, 40.188400, 26.076603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334932, 40.739182, 26.203970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533701, 40.560066, 25.906633>,  <30.652962, 40.452599, 25.728231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533701, 40.560066, 25.906633>,  <30.334932, 40.739182, 26.203970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533701, 40.560066, 25.906633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155803, 0.888705, -0.431195,
		0.853695, 0.098455, 0.511382,
		0.496921, -0.447784, -0.743343,
		30.682777, 40.425732, 25.683630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956236, 41.155411, 26.029278>,  <30.334932, 40.739182, 26.203970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956236, 41.155411, 26.029278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891354, 40.931099, 25.704510>,  <30.852425, 40.796513, 25.509649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891354, 40.931099, 25.704510>,  <30.956236, 41.155411, 26.029278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891354, 40.931099, 25.704510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099826, 0.809267, -0.578896,
		0.981694, -0.174951, -0.075288,
		-0.162207, -0.560784, -0.811918,
		30.842691, 40.762863, 25.460934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449245, 41.408237, 25.517078>,  <30.956236, 41.155411, 26.029278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449245, 41.408237, 25.517078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144001, 41.223484, 25.336267>,  <30.960854, 41.112633, 25.227781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144001, 41.223484, 25.336267>,  <31.449245, 41.408237, 25.517078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144001, 41.223484, 25.336267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079664, 0.761335, -0.643446,
		0.641339, -0.455010, -0.617778,
		-0.763111, -0.461881, -0.452026,
		30.915068, 41.084919, 25.200659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655930, 41.402668, 24.821207>,  <31.449245, 41.408237, 25.517078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655930, 41.402668, 24.821207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.260838, 41.347996, 24.851429>,  <31.023783, 41.315193, 24.869562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.260838, 41.347996, 24.851429>,  <31.655930, 41.402668, 24.821207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260838, 41.347996, 24.851429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147684, 0.660122, -0.736497,
		0.050790, -0.738618, -0.672208,
		-0.987730, -0.136681, 0.075555,
		30.964520, 41.306992, 24.874096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448837, 41.421570, 24.104389>,  <31.655930, 41.402668, 24.821207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448837, 41.421570, 24.104389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.114635, 41.481991, 24.315716>,  <30.914114, 41.518242, 24.442511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.114635, 41.481991, 24.315716>,  <31.448837, 41.421570, 24.104389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114635, 41.481991, 24.315716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227007, 0.780701, -0.582215,
		-0.500401, -0.606374, -0.617988,
		-0.835504, 0.151054, 0.528315,
		30.863985, 41.527306, 24.474211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875399, 41.596130, 23.630552>,  <31.448837, 41.421570, 24.104389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875399, 41.596130, 23.630552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744350, 41.716000, 23.988962>,  <30.665722, 41.787922, 24.204008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744350, 41.716000, 23.988962>,  <30.875399, 41.596130, 23.630552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744350, 41.716000, 23.988962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439595, 0.791112, -0.425321,
		-0.836314, -0.533232, -0.127450,
		-0.327622, 0.299675, 0.896024,
		30.646065, 41.805901, 24.257769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642811, 41.137901, 22.978249>,  <30.875399, 41.596130, 23.630552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642811, 41.137901, 22.978249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462391, 40.874222, 22.737581>,  <30.354139, 40.716015, 22.593180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462391, 40.874222, 22.737581>,  <30.642811, 41.137901, 22.978249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462391, 40.874222, 22.737581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406376, -0.751894, 0.519148,
		-0.794616, -0.010343, 0.607024,
		-0.451048, -0.659203, -0.601670,
		30.327076, 40.676460, 22.557079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255453, 40.610146, 23.422800>,  <30.642811, 41.137901, 22.978249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255453, 40.610146, 23.422800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289301, 40.432037, 23.066246>,  <30.309610, 40.325172, 22.852314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289301, 40.432037, 23.066246>,  <30.255453, 40.610146, 23.422800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289301, 40.432037, 23.066246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349228, -0.824596, 0.445062,
		-0.933209, -0.348959, 0.085723,
		0.084621, -0.445273, -0.891387,
		30.314688, 40.298454, 22.798830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858065, 40.054886, 23.497532>,  <30.255453, 40.610146, 23.422800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858065, 40.054886, 23.497532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.110033, 39.990585, 23.193596>,  <30.261215, 39.952003, 23.011234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.110033, 39.990585, 23.193596>,  <29.858065, 40.054886, 23.497532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110033, 39.990585, 23.193596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196302, -0.913626, 0.356024,
		-0.751440, -0.373425, -0.543959,
		0.629923, -0.160751, -0.759840,
		30.299009, 39.942360, 22.965645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611855, 39.430618, 23.260305>,  <29.858065, 40.054886, 23.497532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611855, 39.430618, 23.260305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989029, 39.468609, 23.132650>,  <30.215334, 39.491405, 23.056057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989029, 39.468609, 23.132650>,  <29.611855, 39.430618, 23.260305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989029, 39.468609, 23.132650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153378, -0.974611, 0.163120,
		-0.295543, -0.202761, -0.933564,
		0.942937, 0.094979, -0.319139,
		30.271910, 39.497101, 23.036909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638390, 38.966366, 22.789267>,  <29.611855, 39.430618, 23.260305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638390, 38.966366, 22.789267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020098, 39.022003, 22.895113>,  <30.249123, 39.055386, 22.958620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020098, 39.022003, 22.895113>,  <29.638390, 38.966366, 22.789267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020098, 39.022003, 22.895113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107082, -0.985472, 0.131827,
		0.279106, -0.097463, -0.955302,
		0.954271, 0.139089, 0.264614,
		30.306379, 39.063728, 22.974497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924917, 38.356136, 22.624538>,  <29.638390, 38.966366, 22.789267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924917, 38.356136, 22.624538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239744, 38.511292, 22.816401>,  <30.428640, 38.604385, 22.931519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239744, 38.511292, 22.816401>,  <29.924917, 38.356136, 22.624538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239744, 38.511292, 22.816401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247700, -0.910851, 0.330143,
		0.564954, -0.141034, -0.812980,
		0.787066, 0.387891, 0.479655,
		30.475864, 38.627659, 22.960297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472910, 37.855190, 22.471989>,  <29.924917, 38.356136, 22.624538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472910, 37.855190, 22.471989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558247, 38.060982, 22.804205>,  <30.609449, 38.184456, 23.003534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558247, 38.060982, 22.804205>,  <30.472910, 37.855190, 22.471989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558247, 38.060982, 22.804205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285924, -0.845771, 0.450466,
		0.934202, 0.141369, -0.327539,
		0.213341, 0.514477, 0.830541,
		30.622250, 38.215324, 23.053368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069881, 37.574169, 22.813978>,  <30.472910, 37.855190, 22.471989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069881, 37.574169, 22.813978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874029, 37.750790, 23.114723>,  <30.756517, 37.856762, 23.295170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.874029, 37.750790, 23.114723>,  <31.069881, 37.574169, 22.813978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874029, 37.750790, 23.114723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098664, -0.828700, 0.550928,
		0.866329, 0.343934, 0.362194,
		-0.489633, 0.441549, 0.751860,
		30.727139, 37.883255, 23.340281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811199, 37.575844, 22.888666>,  <31.069881, 37.574169, 22.813978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811199, 37.575844, 22.888666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.066246, 37.353611, 22.675211>,  <32.219273, 37.220272, 22.547138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.066246, 37.353611, 22.675211>,  <31.811199, 37.575844, 22.888666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066246, 37.353611, 22.675211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059006, 0.655463, -0.752919,
		0.768090, 0.511562, 0.385151,
		0.637617, -0.555583, -0.533640,
		32.257530, 37.186935, 22.515120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366695, 38.053459, 22.663549>,  <31.811199, 37.575844, 22.888666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366695, 38.053459, 22.663549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378864, 37.731411, 22.426619>,  <32.386166, 37.538181, 22.284460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.378864, 37.731411, 22.426619>,  <32.366695, 38.053459, 22.663549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378864, 37.731411, 22.426619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120359, 0.591241, -0.797463,
		0.992264, -0.047031, 0.114891,
		0.030422, -0.805122, -0.592328,
		32.387989, 37.489876, 22.248920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015873, 38.098873, 22.322460>,  <32.366695, 38.053459, 22.663549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015873, 38.098873, 22.322460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.774147, 37.903790, 22.070444>,  <32.629112, 37.786739, 21.919235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.774147, 37.903790, 22.070444>,  <33.015873, 38.098873, 22.322460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774147, 37.903790, 22.070444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289543, 0.602272, -0.743932,
		0.742274, -0.631991, -0.222749,
		-0.604314, -0.487706, -0.630039,
		32.592854, 37.757477, 21.881433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517464, 38.123314, 21.739929>,  <33.015873, 38.098873, 22.322460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517464, 38.123314, 21.739929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.165070, 38.018982, 21.582031>,  <32.953632, 37.956383, 21.487291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.165070, 38.018982, 21.582031>,  <33.517464, 38.123314, 21.739929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165070, 38.018982, 21.582031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308163, 0.316754, -0.897052,
		0.359019, -0.911939, -0.198677,
		-0.880989, -0.260834, -0.394746,
		32.900772, 37.940731, 21.463608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685581, 37.862213, 21.097736>,  <33.517464, 38.123314, 21.739929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685581, 37.862213, 21.097736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.296467, 37.939438, 21.046488>,  <33.063000, 37.985771, 21.015739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.296467, 37.939438, 21.046488>,  <33.685581, 37.862213, 21.097736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296467, 37.939438, 21.046488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181774, 0.292979, -0.938681,
		-0.143684, -0.936425, -0.320099,
		-0.972786, 0.193059, -0.128122,
		33.004631, 37.997356, 21.008051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565872, 37.557827, 20.485666>,  <33.685581, 37.862213, 21.097736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565872, 37.557827, 20.485666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.293240, 37.842712, 20.552830>,  <33.129658, 38.013645, 20.593128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.293240, 37.842712, 20.552830>,  <33.565872, 37.557827, 20.485666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293240, 37.842712, 20.552830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268758, 0.457087, -0.847845,
		-0.680595, -0.532752, -0.502957,
		-0.681586, 0.712212, 0.167909,
		33.088764, 38.056377, 20.603203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177067, 37.702759, 19.883251>,  <33.565872, 37.557827, 20.485666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177067, 37.702759, 19.883251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151897, 38.039532, 20.097614>,  <33.136795, 38.241596, 20.226233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.151897, 38.039532, 20.097614>,  <33.177067, 37.702759, 19.883251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151897, 38.039532, 20.097614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408265, 0.511700, -0.755965,
		-0.910692, 0.171226, -0.375928,
		-0.062922, 0.841930, 0.535906,
		33.133022, 38.292110, 20.258387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945881, 38.172180, 19.374477>,  <33.177067, 37.702759, 19.883251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945881, 38.172180, 19.374477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.079700, 38.419231, 19.659185>,  <33.159992, 38.567463, 19.830009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.079700, 38.419231, 19.659185>,  <32.945881, 38.172180, 19.374477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079700, 38.419231, 19.659185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316996, 0.637522, -0.702196,
		-0.887463, 0.460547, 0.017498,
		0.334549, 0.617626, 0.711769,
		33.180065, 38.604519, 19.872717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867874, 38.834003, 19.046558>,  <32.945881, 38.172180, 19.374477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867874, 38.834003, 19.046558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.082573, 38.937096, 19.367926>,  <33.211391, 38.998951, 19.560745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.082573, 38.937096, 19.367926>,  <32.867874, 38.834003, 19.046558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082573, 38.937096, 19.367926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545479, 0.620456, -0.563459,
		-0.643706, 0.740682, 0.192441,
		0.536745, 0.257729, 0.803418,
		33.243595, 39.014416, 19.608952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.189415, 30.785288, 33.473801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497353, 31.014648, 33.361694>,  <35.682117, 31.152264, 33.294430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497353, 31.014648, 33.361694>,  <35.189415, 30.785288, 33.473801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497353, 31.014648, 33.361694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584865, 0.458033, -0.669432,
		-0.255480, 0.679278, 0.687976,
		0.769846, 0.573400, -0.280267,
		35.728306, 31.186668, 33.277615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942245, 31.541451, 33.385643>,  <35.189415, 30.785288, 33.473801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942245, 31.541451, 33.385643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270947, 31.474596, 33.167728>,  <35.468166, 31.434484, 33.036980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270947, 31.474596, 33.167728>,  <34.942245, 31.541451, 33.385643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270947, 31.474596, 33.167728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402016, 0.507528, -0.762102,
		0.403867, 0.845271, 0.349871,
		0.821751, -0.167134, -0.544786,
		35.517471, 31.424456, 33.004292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197811, 32.212433, 33.129028>,  <34.942245, 31.541451, 33.385643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197811, 32.212433, 33.129028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369610, 31.961569, 32.869118>,  <35.472691, 31.811050, 32.713173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369610, 31.961569, 32.869118>,  <35.197811, 32.212433, 33.129028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369610, 31.961569, 32.869118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181156, 0.645059, -0.742349,
		0.884712, 0.436547, 0.163438,
		0.429498, -0.627157, -0.649774,
		35.498459, 31.773422, 32.674187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562080, 32.693916, 32.640331>,  <35.197811, 32.212433, 33.129028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562080, 32.693916, 32.640331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530380, 32.348396, 32.441307>,  <35.511360, 32.141083, 32.321892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530380, 32.348396, 32.441307>,  <35.562080, 32.693916, 32.640331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530380, 32.348396, 32.441307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332007, 0.493501, -0.803883,
		0.939942, 0.101486, -0.325898,
		-0.079249, -0.863804, -0.497557,
		35.506607, 32.089256, 32.292042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913189, 32.862724, 31.969303>,  <35.562080, 32.693916, 32.640331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913189, 32.862724, 31.969303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706158, 32.526440, 31.905664>,  <35.581940, 32.324669, 31.867481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706158, 32.526440, 31.905664>,  <35.913189, 32.862724, 31.969303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706158, 32.526440, 31.905664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388046, 0.396356, -0.832058,
		0.762583, -0.368918, -0.531382,
		-0.517578, -0.840715, -0.159097,
		35.550884, 32.274227, 31.857935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139565, 32.535244, 31.260693>,  <35.913189, 32.862724, 31.969303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139565, 32.535244, 31.260693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.777523, 32.386467, 31.343105>,  <35.560299, 32.297203, 31.392553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.777523, 32.386467, 31.343105>,  <36.139565, 32.535244, 31.260693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777523, 32.386467, 31.343105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191885, -0.075103, -0.978539,
		0.379433, -0.925213, -0.003394,
		-0.905102, -0.371942, 0.206032,
		35.505993, 32.274883, 31.404915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062752, 32.015583, 30.741060>,  <36.139565, 32.535244, 31.260693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062752, 32.015583, 30.741060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698776, 32.110397, 30.877195>,  <35.480392, 32.167286, 30.958878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698776, 32.110397, 30.877195>,  <36.062752, 32.015583, 30.741060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698776, 32.110397, 30.877195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319998, 0.120800, -0.939685,
		-0.263850, -0.963962, -0.034070,
		-0.909936, 0.237034, 0.340339,
		35.425797, 32.181507, 30.979298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702957, 31.622869, 30.296398>,  <36.062752, 32.015583, 30.741060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702957, 31.622869, 30.296398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.445339, 31.894768, 30.436773>,  <35.290768, 32.057907, 30.520998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.445339, 31.894768, 30.436773>,  <35.702957, 31.622869, 30.296398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445339, 31.894768, 30.436773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450204, 0.034101, -0.892274,
		-0.618487, -0.732655, 0.284062,
		-0.644042, 0.679745, 0.350936,
		35.252125, 32.098690, 30.542053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159191, 31.240822, 30.171761>,  <35.702957, 31.622869, 30.296398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159191, 31.240822, 30.171761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083755, 31.633215, 30.190136>,  <35.038494, 31.868650, 30.201162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083755, 31.633215, 30.190136>,  <35.159191, 31.240822, 30.171761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083755, 31.633215, 30.190136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563580, -0.069801, -0.823107,
		-0.804246, -0.181122, 0.566025,
		-0.188592, 0.980981, 0.045939,
		35.027180, 31.927509, 30.203918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458908, 31.299671, 30.134972>,  <35.159191, 31.240822, 30.171761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458908, 31.299671, 30.134972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606319, 31.660608, 30.045563>,  <34.694767, 31.877171, 29.991917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.606319, 31.660608, 30.045563>,  <34.458908, 31.299671, 30.134972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606319, 31.660608, 30.045563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565724, 0.026892, -0.824156,
		-0.737661, 0.430177, 0.520388,
		0.368527, 0.902344, -0.223524,
		34.716877, 31.931311, 29.978506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903568, 31.618294, 29.688562>,  <34.458908, 31.299671, 30.134972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903568, 31.618294, 29.688562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193485, 31.876423, 29.592039>,  <34.367435, 32.031300, 29.534124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.193485, 31.876423, 29.592039>,  <33.903568, 31.618294, 29.688562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193485, 31.876423, 29.592039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426124, 0.144671, -0.893022,
		-0.541378, 0.750086, 0.379844,
		0.724795, 0.645323, -0.241308,
		34.410923, 32.070019, 29.519648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551544, 32.236240, 29.516926>,  <33.903568, 31.618294, 29.688562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551544, 32.236240, 29.516926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910870, 32.221241, 29.341824>,  <34.126465, 32.212242, 29.236763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910870, 32.221241, 29.341824>,  <33.551544, 32.236240, 29.516926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910870, 32.221241, 29.341824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439131, -0.044637, -0.897314,
		0.014105, 0.998299, -0.056564,
		0.898312, -0.037496, -0.437754,
		34.180363, 32.209991, 29.210497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072514, 32.685677, 29.778269>,  <33.551544, 32.236240, 29.516926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072514, 32.685677, 29.778269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746216, 32.466259, 29.704887>,  <32.550438, 32.334606, 29.660858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746216, 32.466259, 29.704887>,  <33.072514, 32.685677, 29.778269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746216, 32.466259, 29.704887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050789, -0.383877, 0.921987,
		-0.576176, 0.742789, 0.341006,
		-0.815746, -0.548546, -0.183455,
		32.501492, 32.301697, 29.649851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622753, 32.667099, 30.417334>,  <33.072514, 32.685677, 29.778269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622753, 32.667099, 30.417334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522469, 32.338928, 30.211792>,  <32.462299, 32.142025, 30.088467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522469, 32.338928, 30.211792>,  <32.622753, 32.667099, 30.417334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522469, 32.338928, 30.211792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033523, -0.537846, 0.842376,
		-0.967481, 0.193966, 0.162347,
		-0.250710, -0.820426, -0.513853,
		32.447254, 32.092800, 30.057636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029469, 32.379250, 30.703524>,  <32.622753, 32.667099, 30.417334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029469, 32.379250, 30.703524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228306, 32.082050, 30.524256>,  <32.347610, 31.903732, 30.416695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228306, 32.082050, 30.524256>,  <32.029469, 32.379250, 30.703524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228306, 32.082050, 30.524256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110486, -0.566501, 0.816620,
		-0.860633, -0.356422, -0.363696,
		0.497096, -0.742994, -0.448170,
		32.377434, 31.859152, 30.389805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682320, 31.785292, 30.882948>,  <32.029469, 32.379250, 30.703524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682320, 31.785292, 30.882948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012089, 31.609415, 30.740402>,  <32.209949, 31.503889, 30.654875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012089, 31.609415, 30.740402>,  <31.682320, 31.785292, 30.882948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012089, 31.609415, 30.740402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064979, -0.551953, 0.831340,
		-0.562248, -0.708523, -0.426465,
		0.824412, -0.439707, -0.356374,
		32.259415, 31.477509, 30.633493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674459, 31.117189, 31.220734>,  <31.682320, 31.785292, 30.882948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674459, 31.117189, 31.220734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044090, 31.142426, 31.069946>,  <32.265869, 31.157566, 30.979475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.044090, 31.142426, 31.069946>,  <31.674459, 31.117189, 31.220734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044090, 31.142426, 31.069946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361919, -0.461511, 0.809952,
		-0.122875, -0.884888, -0.449305,
		0.924076, 0.063089, -0.376966,
		32.321312, 31.161352, 30.956856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904848, 30.435072, 31.141365>,  <31.674459, 31.117189, 31.220734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904848, 30.435072, 31.141365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214027, 30.682482, 31.197903>,  <32.399536, 30.830927, 31.231825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214027, 30.682482, 31.197903>,  <31.904848, 30.435072, 31.141365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214027, 30.682482, 31.197903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342357, -0.594159, 0.727851,
		0.534175, -0.514200, -0.671010,
		0.772948, 0.618525, 0.141345,
		32.445911, 30.868040, 31.240307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407509, 29.979601, 31.247082>,  <31.904848, 30.435072, 31.141365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407509, 29.979601, 31.247082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551003, 30.333532, 31.366001>,  <32.637100, 30.545891, 31.437353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551003, 30.333532, 31.366001>,  <32.407509, 29.979601, 31.247082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551003, 30.333532, 31.366001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398616, -0.433213, 0.808351,
		0.844047, -0.171474, -0.508115,
		0.358733, 0.884830, 0.297300,
		32.658623, 30.598982, 31.455191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075203, 29.860804, 31.410542>,  <32.407509, 29.979601, 31.247082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075203, 29.860804, 31.410542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965168, 30.180147, 31.624813>,  <32.899147, 30.371754, 31.753376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965168, 30.180147, 31.624813>,  <33.075203, 29.860804, 31.410542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965168, 30.180147, 31.624813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454124, -0.383206, 0.804316,
		0.847408, 0.464519, -0.257140,
		-0.275083, 0.798358, 0.535681,
		32.882645, 30.419655, 31.785517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666019, 29.981754, 31.742186>,  <33.075203, 29.860804, 31.410542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666019, 29.981754, 31.742186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408936, 30.205524, 31.951551>,  <33.254684, 30.339787, 32.077171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408936, 30.205524, 31.951551>,  <33.666019, 29.981754, 31.742186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408936, 30.205524, 31.951551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371907, -0.369475, 0.851571,
		0.669779, 0.741978, 0.029412,
		-0.642714, 0.559426, 0.523413,
		33.216122, 30.373352, 32.108574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082504, 30.347525, 32.153202>,  <33.666019, 29.981754, 31.742186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082504, 30.347525, 32.153202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731167, 30.411272, 32.333473>,  <33.520363, 30.449520, 32.441635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731167, 30.411272, 32.333473>,  <34.082504, 30.347525, 32.153202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731167, 30.411272, 32.333473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350627, -0.426036, 0.833999,
		0.324919, 0.890559, 0.318328,
		-0.878344, 0.159367, 0.450681,
		33.467663, 30.459082, 32.468678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117271, 30.765614, 32.802879>,  <34.082504, 30.347525, 32.153202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117271, 30.765614, 32.802879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777073, 30.556171, 32.822868>,  <33.572956, 30.430506, 32.834862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777073, 30.556171, 32.822868>,  <34.117271, 30.765614, 32.802879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777073, 30.556171, 32.822868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375935, -0.538666, 0.753997,
		-0.367875, 0.660059, 0.654974,
		-0.850494, -0.523605, 0.049977,
		33.521923, 30.399090, 32.837860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037510, 30.721973, 33.499260>,  <34.117271, 30.765614, 32.802879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037510, 30.721973, 33.499260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791355, 30.437281, 33.363766>,  <33.643661, 30.266466, 33.282471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791355, 30.437281, 33.363766>,  <34.037510, 30.721973, 33.499260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791355, 30.437281, 33.363766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328488, -0.622214, 0.710595,
		-0.716517, 0.326021, 0.616696,
		-0.615386, -0.711730, -0.338733,
		33.606739, 30.223761, 33.262146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587742, 30.604294, 34.027275>,  <34.037510, 30.721973, 33.499260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587742, 30.604294, 34.027275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596478, 30.278656, 33.795147>,  <33.601719, 30.083273, 33.655869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596478, 30.278656, 33.795147>,  <33.587742, 30.604294, 34.027275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596478, 30.278656, 33.795147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508988, -0.490549, 0.707314,
		-0.860496, -0.310827, 0.403649,
		0.021843, -0.814093, -0.580323,
		33.603031, 30.034428, 33.621052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244576, 30.780632, 34.748859>,  <33.587742, 30.604294, 34.027275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244576, 30.780632, 34.748859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850159, 30.781281, 34.815445>,  <32.613506, 30.781670, 34.855396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850159, 30.781281, 34.815445>,  <33.244576, 30.780632, 34.748859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850159, 30.781281, 34.815445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046926, 0.956692, -0.287294,
		-0.159721, -0.291096, -0.943267,
		-0.986046, 0.001623, 0.166464,
		32.554344, 30.781767, 34.865383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051971, 31.285906, 35.317207>,  <33.244576, 30.780632, 34.748859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051971, 31.285906, 35.317207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166073, 31.615690, 35.121700>,  <33.234535, 31.813560, 35.004398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166073, 31.615690, 35.121700>,  <33.051971, 31.285906, 35.317207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166073, 31.615690, 35.121700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936635, -0.347978, -0.040330,
		-0.203330, -0.446289, -0.871483,
		0.285258, 0.824462, -0.488764,
		33.251652, 31.863029, 34.975071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549747, 31.568287, 35.728512>,  <33.051971, 31.285906, 35.317207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549747, 31.568287, 35.728512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714134, 31.879389, 35.538265>,  <33.812767, 32.066051, 35.424118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714134, 31.879389, 35.538265>,  <33.549747, 31.568287, 35.728512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714134, 31.879389, 35.538265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813267, 0.077023, -0.576770,
		-0.411952, 0.623832, 0.664176,
		0.410964, 0.777754, -0.475612,
		33.837425, 32.112717, 35.395580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013741, 32.012791, 35.558670>,  <33.549747, 31.568287, 35.728512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013741, 32.012791, 35.558670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.271297, 32.173187, 35.298023>,  <33.425831, 32.269424, 35.141636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.271297, 32.173187, 35.298023>,  <33.013741, 32.012791, 35.558670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271297, 32.173187, 35.298023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764874, 0.358887, -0.534947,
		0.019347, 0.842854, 0.537794,
		0.643890, 0.400995, -0.651620,
		33.464466, 32.293488, 35.102535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759010, 32.671009, 35.369877>,  <33.013741, 32.012791, 35.558670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759010, 32.671009, 35.369877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020432, 32.624931, 35.070648>,  <33.177284, 32.597286, 34.891113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020432, 32.624931, 35.070648>,  <32.759010, 32.671009, 35.369877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020432, 32.624931, 35.070648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661021, 0.394563, -0.638257,
		0.368681, 0.911620, 0.181722,
		0.653548, -0.115191, -0.748068,
		33.216496, 32.590374, 34.846230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612377, 33.277119, 34.908669>,  <32.759010, 32.671009, 35.369877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612377, 33.277119, 34.908669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838120, 33.048790, 34.670120>,  <32.973564, 32.911793, 34.526989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838120, 33.048790, 34.670120>,  <32.612377, 33.277119, 34.908669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838120, 33.048790, 34.670120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539292, 0.292033, -0.789861,
		0.625033, 0.767383, -0.143030,
		0.564356, -0.570825, -0.596373,
		33.007427, 32.877544, 34.491207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965965, 33.702641, 34.430378>,  <32.612377, 33.277119, 34.908669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965965, 33.702641, 34.430378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934673, 33.339943, 34.264629>,  <32.915897, 33.122326, 34.165180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934673, 33.339943, 34.264629>,  <32.965965, 33.702641, 34.430378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934673, 33.339943, 34.264629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401897, 0.409057, -0.819238,
		0.912337, 0.102447, -0.396415,
		-0.078228, -0.906740, -0.414371,
		32.911205, 33.067921, 34.140320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103073, 33.873512, 33.766453>,  <32.965965, 33.702641, 34.430378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103073, 33.873512, 33.766453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937000, 33.509739, 33.757088>,  <32.837357, 33.291473, 33.751469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937000, 33.509739, 33.757088>,  <33.103073, 33.873512, 33.766453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937000, 33.509739, 33.757088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424899, 0.216610, -0.878943,
		0.804414, -0.354974, -0.476352,
		-0.415185, -0.909436, -0.023416,
		32.812447, 33.236908, 33.750061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290554, 33.617107, 33.193333>,  <33.103073, 33.873512, 33.766453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290554, 33.617107, 33.193333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959061, 33.416084, 33.291828>,  <32.760162, 33.295471, 33.350925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959061, 33.416084, 33.291828>,  <33.290554, 33.617107, 33.193333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959061, 33.416084, 33.291828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392694, 0.208715, -0.895673,
		0.398732, -0.838973, -0.370321,
		-0.828736, -0.502556, 0.246238,
		32.710442, 33.265316, 33.365700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212162, 33.050430, 32.704857>,  <33.290554, 33.617107, 33.193333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212162, 33.050430, 32.704857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857914, 33.118660, 32.877632>,  <32.645363, 33.159599, 32.981297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857914, 33.118660, 32.877632>,  <33.212162, 33.050430, 32.704857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857914, 33.118660, 32.877632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396338, 0.207152, -0.894430,
		-0.242049, -0.963323, -0.115851,
		-0.885623, 0.170579, 0.431942,
		32.592228, 33.169834, 33.007214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722683, 32.785637, 32.204105>,  <33.212162, 33.050430, 32.704857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722683, 32.785637, 32.204105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486511, 33.019947, 32.426193>,  <32.344810, 33.160534, 32.559444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486511, 33.019947, 32.426193>,  <32.722683, 32.785637, 32.204105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486511, 33.019947, 32.426193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447664, 0.334724, -0.829190,
		-0.671563, -0.738126, 0.064600,
		-0.590424, 0.585772, 0.555221,
		32.309383, 33.195679, 32.592758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140602, 32.694839, 31.945164>,  <32.722683, 32.785637, 32.204105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140602, 32.694839, 31.945164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.112305, 33.040577, 32.144325>,  <32.095325, 33.248020, 32.263821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.112305, 33.040577, 32.144325>,  <32.140602, 32.694839, 31.945164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112305, 33.040577, 32.144325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216976, 0.473868, -0.853446,
		-0.973610, -0.168413, 0.154016,
		-0.070748, 0.864342, 0.497904,
		32.091080, 33.299881, 32.293697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533480, 33.015202, 31.720316>,  <32.140602, 32.694839, 31.945164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533480, 33.015202, 31.720316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733135, 33.328213, 31.869181>,  <31.852928, 33.516022, 31.958500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733135, 33.328213, 31.869181>,  <31.533480, 33.015202, 31.720316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733135, 33.328213, 31.869181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337704, 0.571201, -0.748121,
		-0.798008, 0.247736, 0.549373,
		0.499139, 0.782532, 0.372162,
		31.882877, 33.562973, 31.980829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110834, 33.569401, 31.526648>,  <31.533480, 33.015202, 31.720316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110834, 33.569401, 31.526648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.453367, 33.732075, 31.653961>,  <31.658888, 33.829678, 31.730349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.453367, 33.732075, 31.653961>,  <31.110834, 33.569401, 31.526648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453367, 33.732075, 31.653961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115883, 0.751927, -0.648982,
		-0.503253, 0.518861, 0.691028,
		0.856334, 0.406681, 0.318282,
		31.710268, 33.854080, 31.749445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952438, 34.240902, 31.724123>,  <31.110834, 33.569401, 31.526648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952438, 34.240902, 31.724123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333185, 34.261047, 31.603186>,  <31.561634, 34.273136, 31.530622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333185, 34.261047, 31.603186>,  <30.952438, 34.240902, 31.724123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333185, 34.261047, 31.603186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250691, 0.695490, -0.673386,
		0.176363, 0.716769, 0.674640,
		0.951867, 0.050366, -0.302346,
		31.618746, 34.276157, 31.512482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931681, 34.818737, 31.388653>,  <30.952438, 34.240902, 31.724123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931681, 34.818737, 31.388653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.285734, 34.687943, 31.256218>,  <31.498165, 34.609467, 31.176756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.285734, 34.687943, 31.256218>,  <30.931681, 34.818737, 31.388653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285734, 34.687943, 31.256218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171244, 0.432685, -0.885132,
		0.432685, 0.840156, 0.326989,
		0.885132, -0.326989, -0.331088,
		31.551273, 34.589848, 31.156891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252068, 35.411232, 31.227373>,  <30.931681, 34.818737, 31.388653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252068, 35.411232, 31.227373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430412, 35.112442, 31.030094>,  <31.537418, 34.933170, 30.911728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430412, 35.112442, 31.030094>,  <31.252068, 35.411232, 31.227373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430412, 35.112442, 31.030094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017936, 0.558339, -0.829419,
		0.894923, 0.360959, 0.262338,
		0.445860, -0.746971, -0.493196,
		31.564171, 34.888351, 30.882135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770300, 35.640717, 30.926617>,  <31.252068, 35.411232, 31.227373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770300, 35.640717, 30.926617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734285, 35.319111, 30.691517>,  <31.712677, 35.126148, 30.550457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734285, 35.319111, 30.691517>,  <31.770300, 35.640717, 30.926617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734285, 35.319111, 30.691517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013198, 0.589130, -0.807930,
		0.995851, -0.080500, -0.042431,
		-0.090036, -0.804018, -0.587749,
		31.707275, 35.077904, 30.515192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258896, 35.669720, 30.423225>,  <31.770300, 35.640717, 30.926617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258896, 35.669720, 30.423225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979229, 35.427635, 30.270969>,  <31.811430, 35.282383, 30.179617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979229, 35.427635, 30.270969>,  <32.258896, 35.669720, 30.423225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979229, 35.427635, 30.270969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088301, 0.455219, -0.885990,
		0.709487, -0.653063, -0.264832,
		-0.699164, -0.605213, -0.380639,
		31.769480, 35.246071, 30.156778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513088, 35.430317, 29.759764>,  <32.258896, 35.669720, 30.423225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513088, 35.430317, 29.759764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129051, 35.320774, 29.737055>,  <31.898628, 35.255047, 29.723429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.129051, 35.320774, 29.737055>,  <32.513088, 35.430317, 29.759764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129051, 35.320774, 29.737055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037586, 0.327491, -0.944106,
		0.277138, -0.904297, -0.324716,
		-0.960095, -0.273853, -0.056771,
		31.841022, 35.238617, 29.720024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440140, 35.191715, 29.068985>,  <32.513088, 35.430317, 29.759764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440140, 35.191715, 29.068985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.076950, 35.283340, 29.209332>,  <31.859035, 35.338314, 29.293539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.076950, 35.283340, 29.209332>,  <32.440140, 35.191715, 29.068985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076950, 35.283340, 29.209332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198058, 0.503295, -0.841111,
		-0.369256, -0.833202, -0.411612,
		-0.907977, 0.229062, 0.350867,
		31.804556, 35.352058, 29.314592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900043, 35.081238, 28.509756>,  <32.440140, 35.191715, 29.068985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900043, 35.081238, 28.509756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760971, 35.353329, 28.767878>,  <31.677528, 35.516582, 28.922750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760971, 35.353329, 28.767878>,  <31.900043, 35.081238, 28.509756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760971, 35.353329, 28.767878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245258, 0.598297, -0.762817,
		-0.904969, -0.423480, -0.041185,
		-0.347679, 0.680225, 0.645302,
		31.656668, 35.557396, 28.961468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185266, 35.301739, 28.228397>,  <31.900043, 35.081238, 28.509756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185266, 35.301739, 28.228397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375000, 35.562218, 28.465363>,  <31.488840, 35.718506, 28.607542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375000, 35.562218, 28.465363>,  <31.185266, 35.301739, 28.228397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375000, 35.562218, 28.465363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031065, 0.660134, -0.750505,
		-0.879797, 0.374394, 0.292894,
		0.474334, 0.651194, 0.592414,
		31.517300, 35.757576, 28.643087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860159, 35.821030, 27.974743>,  <31.185266, 35.301739, 28.228397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860159, 35.821030, 27.974743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.153666, 35.969475, 28.202379>,  <31.329769, 36.058540, 28.338961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.153666, 35.969475, 28.202379>,  <30.860159, 35.821030, 27.974743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153666, 35.969475, 28.202379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018577, 0.848282, -0.529219,
		-0.679147, 0.377752, 0.629336,
		0.733768, 0.371108, 0.569090,
		31.373796, 36.080807, 28.373106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612652, 36.459721, 28.267294>,  <30.860159, 35.821030, 27.974743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612652, 36.459721, 28.267294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012115, 36.475044, 28.253366>,  <31.251793, 36.484238, 28.245010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012115, 36.475044, 28.253366>,  <30.612652, 36.459721, 28.267294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012115, 36.475044, 28.253366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049863, 0.892563, -0.448158,
		0.013907, 0.449293, 0.893276,
		0.998659, 0.038309, -0.034816,
		31.311714, 36.486538, 28.242922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718979, 37.146217, 28.398424>,  <30.612652, 36.459721, 28.267294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718979, 37.146217, 28.398424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060976, 37.006184, 28.245358>,  <31.266174, 36.922165, 28.153517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060976, 37.006184, 28.245358>,  <30.718979, 37.146217, 28.398424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060976, 37.006184, 28.245358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178035, 0.891097, -0.417433,
		0.487127, 0.288774, 0.824207,
		0.854992, -0.350080, -0.382666,
		31.317474, 36.901161, 28.130558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218655, 37.787956, 28.477825>,  <30.718979, 37.146217, 28.398424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218655, 37.787956, 28.477825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.364914, 37.529385, 28.209967>,  <31.452669, 37.374241, 28.049252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.364914, 37.529385, 28.209967>,  <31.218655, 37.787956, 28.477825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364914, 37.529385, 28.209967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044949, 0.730894, -0.681009,
		0.929667, 0.218910, 0.296306,
		0.365649, -0.646431, -0.669648,
		31.474609, 37.335457, 28.009071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896656, 38.055805, 28.321362>,  <31.218655, 37.787956, 28.477825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896656, 38.055805, 28.321362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754330, 37.851662, 28.008202>,  <31.668934, 37.729176, 27.820305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754330, 37.851662, 28.008202>,  <31.896656, 38.055805, 28.321362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754330, 37.851662, 28.008202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081772, 0.817510, -0.570080,
		0.930972, -0.266863, -0.249150,
		-0.355816, -0.510354, -0.782901,
		31.647585, 37.698555, 27.773331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157181, 38.460743, 27.746010>,  <31.896656, 38.055805, 28.321362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157181, 38.460743, 27.746010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.873930, 38.230595, 27.582298>,  <31.703979, 38.092506, 27.484072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.873930, 38.230595, 27.582298>,  <32.157181, 38.460743, 27.746010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873930, 38.230595, 27.582298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161734, 0.696407, -0.699184,
		0.687312, -0.428917, -0.586201,
		-0.708127, -0.575367, -0.409279,
		31.661493, 38.057983, 27.459515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880123, 38.563702, 27.679638>,  <32.157181, 38.460743, 27.746010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880123, 38.563702, 27.679638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109692, 38.887280, 27.730602>,  <33.247433, 39.081425, 27.761181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109692, 38.887280, 27.730602>,  <32.880123, 38.563702, 27.679638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109692, 38.887280, 27.730602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192532, -0.284514, 0.939139,
		0.795959, -0.514457, -0.319035,
		0.573917, 0.808941, 0.127412,
		33.281868, 39.129963, 27.768826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494267, 38.317184, 28.023733>,  <32.880123, 38.563702, 27.679638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494267, 38.317184, 28.023733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465824, 38.706833, 28.109547>,  <33.448757, 38.940624, 28.161034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465824, 38.706833, 28.109547>,  <33.494267, 38.317184, 28.023733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465824, 38.706833, 28.109547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264090, -0.189015, 0.945796,
		0.961873, 0.123911, -0.243816,
		-0.071109, 0.974125, 0.214532,
		33.444492, 38.999069, 28.173906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036694, 38.348606, 28.411924>,  <33.494267, 38.317184, 28.023733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036694, 38.348606, 28.411924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823711, 38.679386, 28.484194>,  <33.695923, 38.877853, 28.527555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823711, 38.679386, 28.484194>,  <34.036694, 38.348606, 28.411924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823711, 38.679386, 28.484194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164821, -0.108069, 0.980385,
		0.830255, 0.551792, -0.078757,
		-0.532457, 0.826951, 0.180672,
		33.663975, 38.927471, 28.538395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400013, 38.762554, 28.784782>,  <34.036694, 38.348606, 28.411924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400013, 38.762554, 28.784782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023697, 38.884014, 28.845070>,  <33.797909, 38.956890, 28.881243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023697, 38.884014, 28.845070>,  <34.400013, 38.762554, 28.784782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023697, 38.884014, 28.845070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138848, -0.060451, 0.988467,
		0.309258, 0.950864, 0.014711,
		-0.940787, 0.303649, 0.150721,
		33.741459, 38.975109, 28.890285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528236, 39.217846, 29.386868>,  <34.400013, 38.762554, 28.784782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528236, 39.217846, 29.386868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147507, 39.099300, 29.355356>,  <33.919071, 39.028172, 29.336449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147507, 39.099300, 29.355356>,  <34.528236, 39.217846, 29.386868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147507, 39.099300, 29.355356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020789, -0.318662, 0.947640,
		-0.305952, 0.900345, 0.309470,
		-0.951820, -0.296366, -0.078778,
		33.861961, 39.010391, 29.331722>
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
