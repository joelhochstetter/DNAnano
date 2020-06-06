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
	<24.792793, 35.297138, 34.885162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457123, 35.113995, 35.002563>,  <24.255720, 35.004108, 35.073006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457123, 35.113995, 35.002563>,  <24.792793, 35.297138, 34.885162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457123, 35.113995, 35.002563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541707, 0.751628, -0.376309,
		-0.048311, -0.474785, -0.878775,
		-0.839178, -0.457859, 0.293506,
		24.205370, 34.976639, 35.090614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396980, 35.707191, 34.814548>,  <24.792793, 35.297138, 34.885162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396980, 35.707191, 34.814548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355413, 35.540672, 35.175858>,  <25.330473, 35.440762, 35.392643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355413, 35.540672, 35.175858>,  <25.396980, 35.707191, 34.814548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355413, 35.540672, 35.175858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889859, -0.444569, -0.102517,
		0.444244, 0.793131, 0.416642,
		-0.103916, -0.416295, 0.903272,
		25.324238, 35.415783, 35.446838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571125, 36.394611, 34.842133>,  <25.396980, 35.707191, 34.814548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571125, 36.394611, 34.842133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801914, 36.101635, 34.697563>,  <25.940388, 35.925850, 34.610821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801914, 36.101635, 34.697563>,  <25.571125, 36.394611, 34.842133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801914, 36.101635, 34.697563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374272, -0.630416, 0.680071,
		-0.725962, -0.257111, -0.637866,
		0.576975, -0.732441, -0.361428,
		25.975006, 35.881901, 34.589134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005072, 36.513287, 34.175735>,  <25.571125, 36.394611, 34.842133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005072, 36.513287, 34.175735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107712, 36.356335, 33.822422>,  <26.169296, 36.262165, 33.610432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107712, 36.356335, 33.822422>,  <26.005072, 36.513287, 34.175735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107712, 36.356335, 33.822422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490539, 0.840306, -0.230776,
		0.832782, -0.374069, 0.408100,
		0.256603, -0.392376, -0.883287,
		26.184692, 36.238621, 33.557434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609934, 36.951786, 34.233196>,  <26.005072, 36.513287, 34.175735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609934, 36.951786, 34.233196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863905, 37.256340, 34.180801>,  <27.016289, 37.439072, 34.149364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863905, 37.256340, 34.180801>,  <26.609934, 36.951786, 34.233196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863905, 37.256340, 34.180801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389845, 0.169379, -0.905170,
		-0.666997, 0.625782, 0.404366,
		0.634930, 0.761385, -0.130983,
		27.054384, 37.484756, 34.141506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307577, 37.588078, 34.068588>,  <26.609934, 36.951786, 34.233196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307577, 37.588078, 34.068588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659389, 37.592346, 33.878300>,  <26.870476, 37.594906, 33.764126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659389, 37.592346, 33.878300>,  <26.307577, 37.588078, 34.068588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659389, 37.592346, 33.878300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470510, 0.168773, -0.866104,
		0.071049, 0.985597, 0.153460,
		0.879529, 0.010669, -0.475725,
		26.923248, 37.595547, 33.735580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266190, 38.099995, 33.592110>,  <26.307577, 37.588078, 34.068588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266190, 38.099995, 33.592110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598658, 37.924068, 33.456039>,  <26.798138, 37.818512, 33.374397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598658, 37.924068, 33.456039>,  <26.266190, 38.099995, 33.592110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598658, 37.924068, 33.456039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258346, 0.236269, -0.936715,
		0.492355, 0.866452, 0.082755,
		0.831170, -0.439817, -0.340172,
		26.848009, 37.792122, 33.353989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551666, 38.580612, 33.216171>,  <26.266190, 38.099995, 33.592110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551666, 38.580612, 33.216171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691576, 38.229233, 33.085953>,  <26.775522, 38.018406, 33.007820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691576, 38.229233, 33.085953>,  <26.551666, 38.580612, 33.216171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691576, 38.229233, 33.085953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330591, 0.209408, -0.920249,
		0.876565, 0.429505, -0.217161,
		0.349776, -0.878449, -0.325550,
		26.796509, 37.965698, 32.988289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040667, 38.732376, 32.736206>,  <26.551666, 38.580612, 33.216171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040667, 38.732376, 32.736206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983732, 38.347790, 32.642124>,  <26.949572, 38.117039, 32.585674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983732, 38.347790, 32.642124>,  <27.040667, 38.732376, 32.736206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983732, 38.347790, 32.642124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057139, 0.245207, -0.967785,
		0.988168, -0.124311, -0.089840,
		-0.142336, -0.961468, -0.235203,
		26.941032, 38.059349, 32.571564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544577, 38.532887, 32.175434>,  <27.040667, 38.732376, 32.736206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544577, 38.532887, 32.175434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286154, 38.228264, 32.154869>,  <27.131100, 38.045490, 32.142529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286154, 38.228264, 32.154869>,  <27.544577, 38.532887, 32.175434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286154, 38.228264, 32.154869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082360, -0.002586, -0.996599,
		0.758833, -0.648095, 0.064393,
		-0.646057, -0.761555, -0.051415,
		27.092337, 37.999798, 32.139446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812870, 38.058861, 31.744099>,  <27.544577, 38.532887, 32.175434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812870, 38.058861, 31.744099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419483, 37.986851, 31.736246>,  <27.183451, 37.943645, 31.731535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419483, 37.986851, 31.736246>,  <27.812870, 38.058861, 31.744099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419483, 37.986851, 31.736246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030390, -0.057201, -0.997900,
		0.178522, -0.981998, 0.061726,
		-0.983466, -0.180023, -0.019631,
		27.124443, 37.932842, 31.730356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753714, 37.573154, 31.251329>,  <27.812870, 38.058861, 31.744099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753714, 37.573154, 31.251329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365683, 37.662594, 31.289173>,  <27.132864, 37.716255, 31.311880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365683, 37.662594, 31.289173>,  <27.753714, 37.573154, 31.251329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365683, 37.662594, 31.289173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105774, -0.038461, -0.993646,
		-0.218536, -0.973923, 0.060961,
		-0.970079, 0.223596, 0.094610,
		27.074659, 37.729671, 31.317556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325716, 37.066067, 30.847258>,  <27.753714, 37.573154, 31.251329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325716, 37.066067, 30.847258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108294, 37.401531, 30.861061>,  <26.977840, 37.602810, 30.869343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108294, 37.401531, 30.861061>,  <27.325716, 37.066067, 30.847258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108294, 37.401531, 30.861061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073921, -0.006876, -0.997240,
		-0.836113, -0.544605, 0.065732,
		-0.543554, 0.838664, 0.034509,
		26.945227, 37.653130, 30.871414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786251, 36.869228, 30.342707>,  <27.325716, 37.066067, 30.847258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786251, 36.869228, 30.342707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755718, 37.264538, 30.395601>,  <26.737398, 37.501724, 30.427338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755718, 37.264538, 30.395601>,  <26.786251, 36.869228, 30.342707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755718, 37.264538, 30.395601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219131, 0.112754, -0.969158,
		-0.972705, -0.102955, 0.207955,
		-0.076332, 0.988275, 0.132237,
		26.732819, 37.561020, 30.435272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100670, 37.211922, 30.180145>,  <26.786251, 36.869228, 30.342707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100670, 37.211922, 30.180145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354197, 37.518009, 30.135048>,  <26.506311, 37.701664, 30.107988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354197, 37.518009, 30.135048>,  <26.100670, 37.211922, 30.180145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354197, 37.518009, 30.135048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258420, 0.072109, -0.963338,
		-0.729038, 0.639714, 0.243452,
		0.633816, 0.765223, -0.112745,
		26.544342, 37.747578, 30.101225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719252, 37.657368, 29.746859>,  <26.100670, 37.211922, 30.180145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719252, 37.657368, 29.746859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086880, 37.814980, 29.749525>,  <26.307457, 37.909546, 29.751125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086880, 37.814980, 29.749525>,  <25.719252, 37.657368, 29.746859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086880, 37.814980, 29.749525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082684, 0.209342, -0.974340,
		-0.385319, 0.894938, 0.224981,
		0.919072, 0.394034, 0.006667,
		26.362600, 37.933189, 29.751526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625189, 38.054577, 29.178041>,  <25.719252, 37.657368, 29.746859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625189, 38.054577, 29.178041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016840, 38.017929, 29.250612>,  <26.251831, 37.995941, 29.294155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016840, 38.017929, 29.250612>,  <25.625189, 38.054577, 29.178041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016840, 38.017929, 29.250612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200290, 0.283159, -0.937926,
		0.034559, 0.954687, 0.295599,
		0.979127, -0.091620, 0.181428,
		26.310577, 37.990444, 29.305040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903553, 38.668732, 28.908239>,  <25.625189, 38.054577, 29.178041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903553, 38.668732, 28.908239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190104, 38.390026, 28.922785>,  <26.362034, 38.222801, 28.931513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190104, 38.390026, 28.922785>,  <25.903553, 38.668732, 28.908239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190104, 38.390026, 28.922785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321068, 0.282938, -0.903804,
		0.619449, 0.659141, 0.426399,
		0.716378, -0.696764, 0.036364,
		26.405018, 38.180996, 28.933693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543566, 38.978722, 28.593132>,  <25.903553, 38.668732, 28.908239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543566, 38.978722, 28.593132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609715, 38.586754, 28.548584>,  <26.649403, 38.351574, 28.521854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609715, 38.586754, 28.548584>,  <26.543566, 38.978722, 28.593132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609715, 38.586754, 28.548584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396945, 0.169508, -0.902054,
		0.902822, 0.104965, 0.417007,
		0.165370, -0.979923, -0.111370,
		26.659327, 38.292778, 28.515173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209290, 38.950974, 28.380304>,  <26.543566, 38.978722, 28.593132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209290, 38.950974, 28.380304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070845, 38.589348, 28.280010>,  <26.987778, 38.372372, 28.219833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070845, 38.589348, 28.280010>,  <27.209290, 38.950974, 28.380304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070845, 38.589348, 28.280010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433541, 0.082885, -0.897314,
		0.832015, -0.419275, 0.363263,
		-0.346112, -0.904068, -0.250734,
		26.967010, 38.318127, 28.204790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785778, 38.599792, 28.077732>,  <27.209290, 38.950974, 28.380304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785778, 38.599792, 28.077732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470190, 38.381836, 27.964155>,  <27.280838, 38.251064, 27.896009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470190, 38.381836, 27.964155>,  <27.785778, 38.599792, 28.077732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470190, 38.381836, 27.964155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419919, -0.140820, -0.896570,
		0.448546, -0.826599, 0.339912,
		-0.788971, -0.544888, -0.283940,
		27.233500, 38.218369, 27.878973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055204, 37.870682, 27.870550>,  <27.785778, 38.599792, 28.077732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055204, 37.870682, 27.870550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688808, 37.940140, 27.725878>,  <27.468971, 37.981815, 27.639074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688808, 37.940140, 27.725878>,  <28.055204, 37.870682, 27.870550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688808, 37.940140, 27.725878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314445, -0.249175, -0.915989,
		-0.249175, -0.952765, 0.173641,
		0.915989, -0.173641, 0.361680,
		27.414011, 37.992233, 27.617374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776871, 37.348904, 27.293297>,  <28.055204, 37.870682, 27.870550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776871, 37.348904, 27.293297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557407, 37.671169, 27.203957>,  <27.425730, 37.864529, 27.150352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557407, 37.671169, 27.203957>,  <27.776871, 37.348904, 27.293297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557407, 37.671169, 27.203957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051784, -0.233888, -0.970884,
		-0.834441, -0.544250, 0.086604,
		-0.548658, 0.805660, -0.223349,
		27.392809, 37.912868, 27.136951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342798, 37.065735, 26.793432>,  <27.776871, 37.348904, 27.293297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342798, 37.065735, 26.793432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314281, 37.464130, 26.771782>,  <27.297171, 37.703167, 26.758793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314281, 37.464130, 26.771782>,  <27.342798, 37.065735, 26.793432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314281, 37.464130, 26.771782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054086, -0.050323, -0.997267,
		-0.995988, -0.074027, -0.050282,
		-0.071294, 0.995986, -0.054125,
		27.292892, 37.762928, 26.755545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818335, 37.341297, 26.217649>,  <27.342798, 37.065735, 26.793432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818335, 37.341297, 26.217649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116526, 37.603825, 26.264141>,  <27.295441, 37.761341, 26.292036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116526, 37.603825, 26.264141>,  <26.818335, 37.341297, 26.217649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116526, 37.603825, 26.264141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168173, -0.016473, -0.985620,
		-0.644964, 0.754306, -0.122655,
		0.745479, 0.656317, 0.116229,
		27.340170, 37.800720, 26.299009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830744, 37.929634, 25.779810>,  <26.818335, 37.341297, 26.217649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830744, 37.929634, 25.779810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217699, 37.877995, 25.866983>,  <27.449871, 37.847012, 25.919289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217699, 37.877995, 25.866983>,  <26.830744, 37.929634, 25.779810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217699, 37.877995, 25.866983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219199, -0.004515, -0.975670,
		0.126941, 0.991622, 0.023931,
		0.967387, -0.129098, 0.217936,
		27.507915, 37.839264, 25.932364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160084, 38.468693, 25.358309>,  <26.830744, 37.929634, 25.779810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160084, 38.468693, 25.358309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417311, 38.174797, 25.444687>,  <27.571646, 37.998459, 25.496513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417311, 38.174797, 25.444687>,  <27.160084, 38.468693, 25.358309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417311, 38.174797, 25.444687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244713, -0.070044, -0.967062,
		0.725660, 0.674728, 0.134756,
		0.643065, -0.734735, 0.215943,
		27.610229, 37.954376, 25.509470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810087, 38.668335, 24.989393>,  <27.160084, 38.468693, 25.358309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810087, 38.668335, 24.989393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786913, 38.273308, 25.047846>,  <27.773008, 38.036293, 25.082918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786913, 38.273308, 25.047846>,  <27.810087, 38.668335, 24.989393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786913, 38.273308, 25.047846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290959, -0.156726, -0.943812,
		0.954980, -0.012162, 0.296421,
		-0.057935, -0.987567, 0.146131,
		27.769533, 37.977039, 25.091684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059576, 38.235561, 24.406895>,  <27.810087, 38.668335, 24.989393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059576, 38.235561, 24.406895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254078, 38.568336, 24.513803>,  <28.370779, 38.768002, 24.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254078, 38.568336, 24.513803>,  <28.059576, 38.235561, 24.406895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254078, 38.568336, 24.513803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863261, -0.409954, -0.294479,
		-0.135419, 0.373917, -0.917523,
		0.486253, 0.831940, 0.267272,
		28.399954, 38.817917, 24.593985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624153, 38.503952, 23.811211>,  <28.059576, 38.235561, 24.406895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624153, 38.503952, 23.811211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715006, 38.586937, 24.191814>,  <28.769518, 38.636730, 24.420176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715006, 38.586937, 24.191814>,  <28.624153, 38.503952, 23.811211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715006, 38.586937, 24.191814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897608, -0.423602, -0.121905,
		0.377770, 0.881770, -0.282437,
		0.227133, 0.207466, 0.951509,
		28.783146, 38.649178, 24.477266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303755, 38.495728, 23.694576>,  <28.624153, 38.503952, 23.811211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303755, 38.495728, 23.694576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227434, 38.472477, 24.086538>,  <29.181643, 38.458527, 24.321716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227434, 38.472477, 24.086538>,  <29.303755, 38.495728, 23.694576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227434, 38.472477, 24.086538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903693, -0.400210, 0.152222,
		0.383321, 0.914578, 0.128884,
		-0.190800, -0.058122, 0.979907,
		29.170195, 38.455040, 24.380510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827265, 38.863914, 24.115751>,  <29.303755, 38.495728, 23.694576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827265, 38.863914, 24.115751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658152, 38.554771, 24.305040>,  <29.556684, 38.369286, 24.418613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658152, 38.554771, 24.305040>,  <29.827265, 38.863914, 24.115751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658152, 38.554771, 24.305040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895587, -0.436124, 0.087857,
		0.138484, 0.460959, 0.876550,
		-0.422783, -0.772860, 0.473225,
		29.531317, 38.322914, 24.447008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444767, 39.016804, 24.802628>,  <29.827265, 38.863914, 24.115751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444767, 39.016804, 24.802628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810133, 39.120224, 24.676880>,  <30.029352, 39.182278, 24.601431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810133, 39.120224, 24.676880>,  <29.444767, 39.016804, 24.802628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810133, 39.120224, 24.676880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367530, -0.191983, 0.909980,
		0.174927, -0.946727, -0.270387,
		0.913413, 0.258556, -0.314367,
		30.084156, 39.197792, 24.582569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065977, 38.517426, 24.730299>,  <29.444767, 39.016804, 24.802628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065977, 38.517426, 24.730299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227892, 38.872849, 24.816664>,  <30.325041, 39.086102, 24.868483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227892, 38.872849, 24.816664>,  <30.065977, 38.517426, 24.730299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227892, 38.872849, 24.816664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512000, -0.415877, 0.751600,
		0.757631, -0.193692, -0.623281,
		0.404787, 0.888555, 0.215911,
		30.349327, 39.139416, 24.881437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828964, 38.530117, 24.797094>,  <30.065977, 38.517426, 24.730299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828964, 38.530117, 24.797094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710777, 38.845936, 25.012243>,  <30.639864, 39.035427, 25.141333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710777, 38.845936, 25.012243>,  <30.828964, 38.530117, 24.797094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710777, 38.845936, 25.012243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572282, -0.304543, 0.761411,
		0.764978, 0.532789, -0.361862,
		-0.295468, 0.789550, 0.537874,
		30.622137, 39.082802, 25.173605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284307, 38.709549, 25.438641>,  <30.828964, 38.530117, 24.797094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284307, 38.709549, 25.438641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937469, 38.882191, 25.538130>,  <30.729366, 38.985775, 25.597824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937469, 38.882191, 25.538130>,  <31.284307, 38.709549, 25.438641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937469, 38.882191, 25.538130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232712, -0.090506, 0.968325,
		0.440441, 0.897513, -0.021961,
		-0.867097, 0.431601, 0.248725,
		30.677340, 39.011669, 25.612747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435278, 39.246948, 25.952866>,  <31.284307, 38.709549, 25.438641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435278, 39.246948, 25.952866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054464, 39.132965, 25.997458>,  <30.825975, 39.064575, 26.024212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054464, 39.132965, 25.997458>,  <31.435278, 39.246948, 25.952866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054464, 39.132965, 25.997458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173573, -0.202890, 0.963695,
		-0.251994, 0.936822, 0.242619,
		-0.952035, -0.284957, 0.111480,
		30.768854, 39.047478, 26.030901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265245, 39.477238, 26.559612>,  <31.435278, 39.246948, 25.952866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265245, 39.477238, 26.559612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961674, 39.219723, 26.520479>,  <30.779531, 39.065216, 26.497000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961674, 39.219723, 26.520479>,  <31.265245, 39.477238, 26.559612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961674, 39.219723, 26.520479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077564, -0.059798, 0.995192,
		-0.646538, 0.762868, -0.004552,
		-0.758928, -0.643783, -0.097833,
		30.733995, 39.026588, 26.491129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834867, 39.622589, 27.104855>,  <31.265245, 39.477238, 26.559612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834867, 39.622589, 27.104855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717861, 39.254688, 27.000166>,  <30.647657, 39.033947, 26.937353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717861, 39.254688, 27.000166>,  <30.834867, 39.622589, 27.104855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717861, 39.254688, 27.000166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208185, -0.205876, 0.956177,
		-0.933324, 0.334184, -0.131256,
		-0.292516, -0.919748, -0.261721,
		30.630106, 38.978764, 26.921650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103287, 39.588753, 27.391117>,  <30.834867, 39.622589, 27.104855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103287, 39.588753, 27.391117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263634, 39.228363, 27.324732>,  <30.359842, 39.012127, 27.284901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263634, 39.228363, 27.324732>,  <30.103287, 39.588753, 27.391117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263634, 39.228363, 27.324732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151034, -0.243671, 0.958026,
		-0.903600, -0.358977, -0.233758,
		0.400870, -0.900977, -0.165963,
		30.383894, 38.958069, 27.274942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703232, 39.218197, 27.837103>,  <30.103287, 39.588753, 27.391117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703232, 39.218197, 27.837103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014120, 38.976353, 27.767387>,  <30.200653, 38.831245, 27.725557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014120, 38.976353, 27.767387>,  <29.703232, 39.218197, 27.837103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014120, 38.976353, 27.767387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044503, -0.329116, 0.943240,
		-0.627653, -0.725349, -0.282702,
		0.777220, -0.604609, -0.174291,
		30.247286, 38.794971, 27.715099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574934, 38.548840, 28.135963>,  <29.703232, 39.218197, 27.837103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574934, 38.548840, 28.135963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970682, 38.598480, 28.105658>,  <30.208132, 38.628265, 28.087475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970682, 38.598480, 28.105658>,  <29.574934, 38.548840, 28.135963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970682, 38.598480, 28.105658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107636, -0.274796, 0.955459,
		0.097757, -0.953460, -0.285233,
		0.989373, 0.124104, -0.075763,
		30.267494, 38.635712, 28.082928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872015, 38.041847, 28.561403>,  <29.574934, 38.548840, 28.135963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872015, 38.041847, 28.561403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182722, 38.287251, 28.504501>,  <30.369146, 38.434494, 28.470360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182722, 38.287251, 28.504501>,  <29.872015, 38.041847, 28.561403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182722, 38.287251, 28.504501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401094, -0.307774, 0.862786,
		0.485546, -0.727242, -0.485144,
		0.776769, 0.613510, -0.142254,
		30.415752, 38.471302, 28.461824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471085, 37.554733, 28.541769>,  <29.872015, 38.041847, 28.561403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471085, 37.554733, 28.541769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562799, 37.926376, 28.657827>,  <30.617828, 38.149364, 28.727463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562799, 37.926376, 28.657827>,  <30.471085, 37.554733, 28.541769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562799, 37.926376, 28.657827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277427, -0.348101, 0.895466,
		0.932985, -0.124825, -0.337575,
		0.229287, 0.929109, 0.290144,
		30.631586, 38.205109, 28.744871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135880, 37.486206, 28.988604>,  <30.471085, 37.554733, 28.541769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135880, 37.486206, 28.988604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958702, 37.835148, 29.071360>,  <30.852396, 38.044514, 29.121014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958702, 37.835148, 29.071360>,  <31.135880, 37.486206, 28.988604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958702, 37.835148, 29.071360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020890, -0.220659, 0.975127,
		0.896305, 0.436250, 0.079516,
		-0.442945, 0.872351, 0.206891,
		30.825819, 38.096851, 29.133427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450726, 37.675102, 29.630806>,  <31.135880, 37.486206, 28.988604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450726, 37.675102, 29.630806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109108, 37.883175, 29.628864>,  <30.904137, 38.008018, 29.627699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109108, 37.883175, 29.628864>,  <31.450726, 37.675102, 29.630806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109108, 37.883175, 29.628864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102877, -0.159743, 0.981783,
		0.509926, 0.838986, 0.189942,
		-0.854045, 0.520177, -0.004855,
		30.852894, 38.039227, 29.627407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636162, 38.227299, 30.126116>,  <31.450726, 37.675102, 29.630806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636162, 38.227299, 30.126116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241610, 38.168766, 30.096077>,  <31.004879, 38.133648, 30.078053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241610, 38.168766, 30.096077>,  <31.636162, 38.227299, 30.126116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241610, 38.168766, 30.096077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065342, -0.070378, 0.995378,
		-0.150942, 0.986729, 0.059858,
		-0.986381, -0.146333, -0.075098,
		30.945696, 38.124866, 30.073547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469774, 38.453529, 30.700106>,  <31.636162, 38.227299, 30.126116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469774, 38.453529, 30.700106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113985, 38.302612, 30.596966>,  <30.900511, 38.212063, 30.535082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113985, 38.302612, 30.596966>,  <31.469774, 38.453529, 30.700106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113985, 38.302612, 30.596966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211890, -0.159427, 0.964202,
		-0.404894, 0.912268, 0.061862,
		-0.889474, -0.377292, -0.257852,
		30.847143, 38.189426, 30.519609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980827, 38.847935, 31.041868>,  <31.469774, 38.453529, 30.700106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980827, 38.847935, 31.041868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797821, 38.497360, 30.981817>,  <30.688017, 38.287014, 30.945786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797821, 38.497360, 30.981817>,  <30.980827, 38.847935, 31.041868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797821, 38.497360, 30.981817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187839, -0.069766, 0.979719,
		-0.869136, 0.476436, -0.132710,
		-0.457514, -0.876437, -0.150130,
		30.660566, 38.234428, 30.936779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365213, 38.864635, 31.423223>,  <30.980827, 38.847935, 31.041868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365213, 38.864635, 31.423223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434120, 38.477310, 31.350906>,  <30.475464, 38.244915, 31.307516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434120, 38.477310, 31.350906>,  <30.365213, 38.864635, 31.423223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434120, 38.477310, 31.350906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431455, -0.239164, 0.869855,
		-0.885534, -0.071842, -0.458985,
		0.172265, -0.968318, -0.180792,
		30.485800, 38.186813, 31.296669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756702, 38.488884, 31.575272>,  <30.365213, 38.864635, 31.423223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756702, 38.488884, 31.575272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021523, 38.190689, 31.606106>,  <30.180414, 38.011772, 31.624607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021523, 38.190689, 31.606106>,  <29.756702, 38.488884, 31.575272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021523, 38.190689, 31.606106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451603, -0.314733, 0.834864,
		-0.598117, -0.587534, -0.545032,
		0.662050, -0.745484, 0.077085,
		30.220139, 37.967045, 31.629230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409306, 37.819092, 31.756531>,  <29.756702, 38.488884, 31.575272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409306, 37.819092, 31.756531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789011, 37.763264, 31.869257>,  <30.016834, 37.729767, 31.936893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789011, 37.763264, 31.869257>,  <29.409306, 37.819092, 31.756531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789011, 37.763264, 31.869257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313923, -0.367083, 0.875616,
		-0.018759, -0.919658, -0.392272,
		0.949263, -0.139569, 0.281816,
		30.073790, 37.721394, 31.953802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340170, 37.188721, 32.123112>,  <29.409306, 37.819092, 31.756531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340170, 37.188721, 32.123112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689543, 37.353493, 32.226982>,  <29.899166, 37.452354, 32.289307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689543, 37.353493, 32.226982>,  <29.340170, 37.188721, 32.123112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689543, 37.353493, 32.226982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183138, -0.216240, 0.959010,
		0.451199, -0.885185, -0.113430,
		0.873430, 0.411931, 0.259679,
		29.951572, 37.477074, 32.304886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701880, 36.716908, 32.565247>,  <29.340170, 37.188721, 32.123112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701880, 36.716908, 32.565247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885332, 37.058514, 32.663483>,  <29.995403, 37.263477, 32.722424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885332, 37.058514, 32.663483>,  <29.701880, 36.716908, 32.565247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885332, 37.058514, 32.663483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150757, -0.197589, 0.968623,
		0.875745, -0.481266, 0.038128,
		0.458632, 0.854015, 0.245592,
		30.022923, 37.314716, 32.737160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973852, 36.569679, 33.208942>,  <29.701880, 36.716908, 32.565247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973852, 36.569679, 33.208942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976248, 36.969666, 33.211063>,  <29.977684, 37.209660, 33.212337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976248, 36.969666, 33.211063>,  <29.973852, 36.569679, 33.208942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976248, 36.969666, 33.211063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141555, -0.004404, 0.989921,
		0.989912, -0.006678, 0.141525,
		0.005988, 0.999968, 0.005305,
		29.978045, 37.269657, 33.212654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326950, 36.722496, 33.837158>,  <29.973852, 36.569679, 33.208942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326950, 36.722496, 33.837158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108465, 37.043747, 33.741959>,  <29.977375, 37.236496, 33.684837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108465, 37.043747, 33.741959>,  <30.326950, 36.722496, 33.837158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108465, 37.043747, 33.741959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256991, 0.109753, 0.960161,
		0.797250, 0.585615, 0.146447,
		-0.546212, 0.803124, -0.237998,
		29.944601, 37.284683, 33.670559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563164, 37.241081, 34.333138>,  <30.326950, 36.722496, 33.837158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563164, 37.241081, 34.333138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206450, 37.339539, 34.181278>,  <29.992422, 37.398613, 34.090160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206450, 37.339539, 34.181278>,  <30.563164, 37.241081, 34.333138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206450, 37.339539, 34.181278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426784, -0.178967, 0.886468,
		0.150253, 0.952568, 0.264650,
		-0.891784, 0.246143, -0.379651,
		29.938913, 37.413380, 34.067383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245504, 37.412331, 34.482243>,  <30.563164, 37.241081, 34.333138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245504, 37.412331, 34.482243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054857, 37.636303, 34.753330>,  <30.940470, 37.770687, 34.915985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054857, 37.636303, 34.753330>,  <31.245504, 37.412331, 34.482243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054857, 37.636303, 34.753330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671157, 0.729674, -0.130856,
		-0.567788, 0.392491, -0.723580,
		-0.476618, 0.559934, 0.677723,
		30.911871, 37.804283, 34.956646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303387, 38.073383, 34.401207>,  <31.245504, 37.412331, 34.482243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303387, 38.073383, 34.401207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197414, 38.126438, 34.783249>,  <31.133831, 38.158272, 35.012474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197414, 38.126438, 34.783249>,  <31.303387, 38.073383, 34.401207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197414, 38.126438, 34.783249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631974, 0.771992, 0.068097,
		-0.728299, 0.621641, -0.288346,
		-0.264933, 0.132632, 0.955102,
		31.117935, 38.166229, 35.069778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597916, 37.940208, 33.663418>,  <31.303387, 38.073383, 34.401207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597916, 37.940208, 33.663418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679646, 37.743507, 34.001987>,  <31.728683, 37.625484, 34.205128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679646, 37.743507, 34.001987>,  <31.597916, 37.940208, 33.663418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679646, 37.743507, 34.001987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354668, -0.768727, -0.532231,
		0.912394, 0.408946, 0.017341,
		0.204324, -0.491755, 0.846421,
		31.740942, 37.595982, 34.255913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403336, 37.736488, 33.767792>,  <31.597916, 37.940208, 33.663418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403336, 37.736488, 33.767792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143692, 37.480003, 33.931499>,  <31.987906, 37.326111, 34.029724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143692, 37.480003, 33.931499>,  <32.403336, 37.736488, 33.767792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143692, 37.480003, 33.931499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396908, -0.744469, -0.536870,
		0.648936, -0.186046, 0.737746,
		-0.649112, -0.641212, 0.409269,
		31.948957, 37.287640, 34.054279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584408, 37.032734, 33.451813>,  <32.403336, 37.736488, 33.767792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584408, 37.032734, 33.451813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294361, 36.928543, 33.706799>,  <32.120335, 36.866028, 33.859791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294361, 36.928543, 33.706799>,  <32.584408, 37.032734, 33.451813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294361, 36.928543, 33.706799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090118, -0.953633, -0.287164,
		0.682705, -0.150780, 0.714968,
		-0.725115, -0.260480, 0.637462,
		32.076828, 36.850399, 33.898037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449150, 36.451233, 33.908569>,  <32.584408, 37.032734, 33.451813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449150, 36.451233, 33.908569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507324, 36.566250, 34.287235>,  <32.542229, 36.635262, 34.514435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507324, 36.566250, 34.287235>,  <32.449150, 36.451233, 33.908569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507324, 36.566250, 34.287235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846496, -0.531469, 0.031388,
		0.512147, 0.796781, -0.320696,
		0.145431, 0.287543, 0.946662,
		32.550953, 36.652512, 34.571236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825445, 36.232235, 34.346893>,  <32.449150, 36.451233, 33.908569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825445, 36.232235, 34.346893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739260, 35.842880, 34.378120>,  <31.687548, 35.609268, 34.396858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739260, 35.842880, 34.378120>,  <31.825445, 36.232235, 34.346893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739260, 35.842880, 34.378120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277443, 0.137675, 0.950826,
		-0.936269, 0.183209, -0.299723,
		-0.215464, -0.973386, 0.078070,
		31.674620, 35.550865, 34.401543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081518, 36.223087, 34.536533>,  <31.825445, 36.232235, 34.346893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081518, 36.223087, 34.536533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253151, 35.878483, 34.645111>,  <31.356131, 35.671719, 34.710258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253151, 35.878483, 34.645111>,  <31.081518, 36.223087, 34.536533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253151, 35.878483, 34.645111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173144, 0.216498, 0.960807,
		-0.886516, -0.459264, -0.056271,
		0.429081, -0.861513, 0.271448,
		31.381876, 35.620029, 34.726547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657301, 35.877151, 34.905849>,  <31.081518, 36.223087, 34.536533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657301, 35.877151, 34.905849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014872, 35.750572, 35.032818>,  <31.229414, 35.674625, 35.108997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014872, 35.750572, 35.032818>,  <30.657301, 35.877151, 34.905849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014872, 35.750572, 35.032818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322606, 0.037372, 0.945795,
		-0.311156, -0.947874, -0.068679,
		0.893928, -0.316446, 0.317418,
		31.283051, 35.655640, 35.128044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503504, 35.389549, 35.424511>,  <30.657301, 35.877151, 34.905849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503504, 35.389549, 35.424511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877766, 35.521431, 35.474873>,  <31.102322, 35.600559, 35.505089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877766, 35.521431, 35.474873>,  <30.503504, 35.389549, 35.424511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877766, 35.521431, 35.474873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198540, 0.196776, 0.960136,
		0.291782, -0.923351, 0.249572,
		0.935652, 0.329701, 0.125906,
		31.158461, 35.620342, 35.512646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644930, 35.157635, 36.094357>,  <30.503504, 35.389549, 35.424511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644930, 35.157635, 36.094357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929316, 35.427155, 36.013836>,  <31.099947, 35.588867, 35.965523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929316, 35.427155, 36.013836>,  <30.644930, 35.157635, 36.094357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929316, 35.427155, 36.013836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016804, 0.302445, 0.953019,
		0.703030, -0.674177, 0.226349,
		0.710962, 0.673805, -0.201300,
		31.142605, 35.629295, 35.953445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054014, 34.970631, 36.499260>,  <30.644930, 35.157635, 36.094357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054014, 34.970631, 36.499260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147425, 35.355530, 36.443352>,  <31.203470, 35.586472, 36.409805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147425, 35.355530, 36.443352>,  <31.054014, 34.970631, 36.499260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147425, 35.355530, 36.443352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065685, 0.127805, 0.989622,
		0.970129, -0.240284, -0.033360,
		0.233526, 0.962253, -0.139770,
		31.217484, 35.644207, 36.401421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592047, 35.174068, 36.943840>,  <31.054014, 34.970631, 36.499260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592047, 35.174068, 36.943840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474583, 35.545990, 36.855087>,  <31.404104, 35.769142, 36.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474583, 35.545990, 36.855087>,  <31.592047, 35.174068, 36.943840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474583, 35.545990, 36.855087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029136, 0.240715, 0.970159,
		0.955465, 0.278434, -0.097780,
		-0.293662, 0.929802, -0.221882,
		31.386484, 35.824932, 36.788521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120049, 35.600677, 37.097416>,  <31.592047, 35.174068, 36.943840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120049, 35.600677, 37.097416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795740, 35.834824, 37.097523>,  <31.601156, 35.975311, 37.097588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795740, 35.834824, 37.097523>,  <32.120049, 35.600677, 37.097416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795740, 35.834824, 37.097523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187457, 0.259206, 0.947456,
		0.554539, 0.768218, -0.319887,
		-0.810769, 0.585366, 0.000268,
		31.552509, 36.010433, 37.097603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231220, 36.051716, 37.688206>,  <32.120049, 35.600677, 37.097416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231220, 36.051716, 37.688206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843584, 36.113327, 37.611118>,  <31.611002, 36.150295, 37.564865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843584, 36.113327, 37.611118>,  <32.231220, 36.051716, 37.688206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843584, 36.113327, 37.611118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158284, 0.211003, 0.964585,
		0.189237, 0.965274, -0.180101,
		-0.969090, 0.154028, -0.192717,
		31.552856, 36.159534, 37.553303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161102, 36.623440, 38.036953>,  <32.231220, 36.051716, 37.688206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161102, 36.623440, 38.036953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787596, 36.498592, 37.966900>,  <31.563492, 36.423683, 37.924870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787596, 36.498592, 37.966900>,  <32.161102, 36.623440, 38.036953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787596, 36.498592, 37.966900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310976, 0.465364, 0.828692,
		-0.177147, 0.828264, -0.531600,
		-0.933763, -0.312115, -0.175132,
		31.507467, 36.404957, 37.914360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800066, 37.223034, 38.327431>,  <32.161102, 36.623440, 38.036953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800066, 37.223034, 38.327431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584473, 36.888935, 38.283867>,  <31.455116, 36.688477, 38.257729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584473, 36.888935, 38.283867>,  <31.800066, 37.223034, 38.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584473, 36.888935, 38.283867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453074, 0.178482, 0.873423,
		-0.710086, 0.520102, -0.474628,
		-0.538982, -0.835247, -0.108907,
		31.422779, 36.638359, 38.251194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152584, 37.379955, 38.476879>,  <31.800066, 37.223034, 38.327431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152584, 37.379955, 38.476879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178946, 36.990192, 38.562840>,  <31.194763, 36.756332, 38.614414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178946, 36.990192, 38.562840>,  <31.152584, 37.379955, 38.476879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178946, 36.990192, 38.562840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345628, 0.179740, 0.920997,
		-0.936054, -0.134971, -0.324938,
		0.065903, -0.974411, 0.214896,
		31.198717, 36.697868, 38.627308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601803, 37.205078, 39.027676>,  <31.152584, 37.379955, 38.476879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601803, 37.205078, 39.027676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879538, 36.917332, 39.035713>,  <31.046179, 36.744682, 39.040535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879538, 36.917332, 39.035713>,  <30.601803, 37.205078, 39.027676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879538, 36.917332, 39.035713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129094, -0.097036, 0.986873,
		-0.707975, -0.687818, -0.160242,
		0.694339, -0.719368, 0.020094,
		31.087839, 36.701523, 39.041740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204769, 36.761776, 39.512489>,  <30.601803, 37.205078, 39.027676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204769, 36.761776, 39.512489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593643, 36.670204, 39.492706>,  <30.826967, 36.615261, 39.480835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593643, 36.670204, 39.492706>,  <30.204769, 36.761776, 39.512489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593643, 36.670204, 39.492706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009723, -0.250435, 0.968085,
		-0.233998, -0.940680, -0.245696,
		0.972188, -0.228918, -0.049455,
		30.885300, 36.601524, 39.477871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148777, 36.136894, 39.716236>,  <30.204769, 36.761776, 39.512489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148777, 36.136894, 39.716236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537987, 36.211937, 39.769943>,  <30.771513, 36.256962, 39.802170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537987, 36.211937, 39.769943>,  <30.148777, 36.136894, 39.716236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537987, 36.211937, 39.769943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031109, -0.469985, 0.882126,
		0.228601, -0.862506, -0.451470,
		0.973023, 0.187610, 0.134270,
		30.829893, 36.268219, 39.810223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405512, 35.583344, 40.038090>,  <30.148777, 36.136894, 39.716236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405512, 35.583344, 40.038090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645580, 35.888306, 40.134865>,  <30.789621, 36.071281, 40.192928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645580, 35.888306, 40.134865>,  <30.405512, 35.583344, 40.038090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645580, 35.888306, 40.134865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092140, -0.234556, 0.967726,
		0.794546, -0.603094, -0.070526,
		0.600172, 0.762405, 0.241935,
		30.825632, 36.117027, 40.207447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003006, 35.298336, 40.520157>,  <30.405512, 35.583344, 40.038090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003006, 35.298336, 40.520157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979753, 35.690857, 40.593552>,  <30.965801, 35.926369, 40.637589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979753, 35.690857, 40.593552>,  <31.003006, 35.298336, 40.520157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979753, 35.690857, 40.593552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152393, -0.190366, 0.969813,
		0.986609, 0.028415, 0.160610,
		-0.058132, 0.981302, 0.183487,
		30.962315, 35.985249, 40.648598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308741, 35.367363, 41.130901>,  <31.003006, 35.298336, 40.520157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308741, 35.367363, 41.130901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115589, 35.716412, 41.101620>,  <30.999699, 35.925842, 41.084049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115589, 35.716412, 41.101620>,  <31.308741, 35.367363, 41.130901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115589, 35.716412, 41.101620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067621, 0.046190, 0.996641,
		0.873074, 0.486205, 0.036704,
		-0.482877, 0.872623, -0.073205,
		30.970726, 35.978199, 41.079659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591192, 35.883884, 41.577412>,  <31.308741, 35.367363, 41.130901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591192, 35.883884, 41.577412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234825, 36.056839, 41.521824>,  <31.021006, 36.160610, 41.488472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234825, 36.056839, 41.521824>,  <31.591192, 35.883884, 41.577412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234825, 36.056839, 41.521824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056955, 0.197208, 0.978706,
		0.450583, 0.879860, -0.151069,
		-0.890916, 0.432384, -0.138971,
		30.967550, 36.186554, 41.480133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672522, 36.494156, 42.075802>,  <31.591192, 35.883884, 41.577412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672522, 36.494156, 42.075802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287746, 36.447437, 41.976982>,  <31.056881, 36.419407, 41.917690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287746, 36.447437, 41.976982>,  <31.672522, 36.494156, 42.075802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287746, 36.447437, 41.976982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269137, 0.248352, 0.930530,
		-0.047323, 0.961603, -0.270332,
		-0.961938, -0.116792, -0.247050,
		30.999165, 36.412399, 41.902866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386625, 37.130238, 42.280853>,  <31.672522, 36.494156, 42.075802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386625, 37.130238, 42.280853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075077, 36.880169, 42.260757>,  <30.888149, 36.730129, 42.248699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075077, 36.880169, 42.260757>,  <31.386625, 37.130238, 42.280853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075077, 36.880169, 42.260757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379812, 0.406405, 0.831010,
		-0.499106, 0.666330, -0.553984,
		-0.778868, -0.625172, -0.050241,
		30.841417, 36.692616, 42.245686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732882, 37.469547, 42.317123>,  <31.386625, 37.130238, 42.280853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732882, 37.469547, 42.317123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609423, 37.106140, 42.429783>,  <30.535347, 36.888096, 42.497379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609423, 37.106140, 42.429783>,  <30.732882, 37.469547, 42.317123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609423, 37.106140, 42.429783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374383, 0.388239, 0.842085,
		-0.874399, 0.154465, -0.459964,
		-0.308649, -0.908521, 0.281646,
		30.516829, 36.833584, 42.514278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012035, 37.554550, 42.568623>,  <30.732882, 37.469547, 42.317123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012035, 37.554550, 42.568623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171446, 37.227352, 42.734543>,  <30.267092, 37.031033, 42.834095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171446, 37.227352, 42.734543>,  <30.012035, 37.554550, 42.568623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171446, 37.227352, 42.734543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338590, 0.289101, 0.895420,
		-0.852371, -0.497293, -0.161752,
		0.398524, -0.817997, 0.414800,
		30.291002, 36.981953, 42.858982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438215, 37.301434, 42.910290>,  <30.012035, 37.554550, 42.568623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438215, 37.301434, 42.910290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768370, 37.130390, 43.057747>,  <29.966461, 37.027763, 43.146221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768370, 37.130390, 43.057747>,  <29.438215, 37.301434, 42.910290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768370, 37.130390, 43.057747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288875, 0.241137, 0.926501,
		-0.485070, -0.871209, 0.075506,
		0.825384, -0.427606, 0.368639,
		30.015985, 37.002110, 43.168339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119614, 36.839405, 43.424625>,  <29.438215, 37.301434, 42.910290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119614, 36.839405, 43.424625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506449, 36.882877, 43.516647>,  <29.738550, 36.908962, 43.571861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506449, 36.882877, 43.516647>,  <29.119614, 36.839405, 43.424625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506449, 36.882877, 43.516647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232884, 0.013912, 0.972405,
		0.102486, -0.993979, 0.038766,
		0.967090, 0.108686, 0.230056,
		29.796576, 36.915482, 43.585663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181738, 36.302208, 43.930531>,  <29.119614, 36.839405, 43.424625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181738, 36.302208, 43.930531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463936, 36.582024, 43.975998>,  <29.633255, 36.749912, 44.003281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463936, 36.582024, 43.975998>,  <29.181738, 36.302208, 43.930531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463936, 36.582024, 43.975998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219745, 0.063427, 0.973493,
		0.673785, -0.711776, 0.198468,
		0.705497, 0.699537, 0.113673,
		29.675585, 36.791885, 44.010101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328243, 36.120209, 44.581474>,  <29.181738, 36.302208, 43.930531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328243, 36.120209, 44.581474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475475, 36.488678, 44.530933>,  <29.563814, 36.709759, 44.500607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475475, 36.488678, 44.530933>,  <29.328243, 36.120209, 44.581474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475475, 36.488678, 44.530933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150000, 0.192945, 0.969676,
		0.917615, -0.337965, 0.209195,
		0.368080, 0.921169, -0.126354,
		29.585899, 36.765030, 44.493027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755964, 36.198540, 45.087109>,  <29.328243, 36.120209, 44.581474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755964, 36.198540, 45.087109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666643, 36.578579, 44.999969>,  <29.613050, 36.806602, 44.947685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666643, 36.578579, 44.999969>,  <29.755964, 36.198540, 45.087109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666643, 36.578579, 44.999969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135563, 0.191048, 0.972175,
		0.965276, 0.246621, 0.086136,
		-0.223303, 0.950094, -0.217847,
		29.599653, 36.863605, 44.934616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297495, 36.617760, 45.441227>,  <29.755964, 36.198540, 45.087109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297495, 36.617760, 45.441227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965746, 36.828983, 45.368233>,  <29.766697, 36.955715, 45.324436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965746, 36.828983, 45.368233>,  <30.297495, 36.617760, 45.441227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965746, 36.828983, 45.368233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065235, 0.232862, 0.970319,
		0.554875, 0.816660, -0.158682,
		-0.829372, 0.528055, -0.182484,
		29.716934, 36.987400, 45.313488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347168, 37.300785, 45.656181>,  <30.297495, 36.617760, 45.441227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347168, 37.300785, 45.656181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957613, 37.209995, 45.658131>,  <29.723879, 37.155521, 45.659302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957613, 37.209995, 45.658131>,  <30.347168, 37.300785, 45.656181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957613, 37.209995, 45.658131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041565, 0.199372, 0.979042,
		-0.223185, 0.953276, -0.203600,
		-0.973890, -0.226970, 0.004873,
		29.665445, 37.141903, 45.659592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062202, 37.784397, 46.145779>,  <30.347168, 37.300785, 45.656181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062202, 37.784397, 46.145779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770527, 37.513180, 46.108807>,  <29.595522, 37.350449, 46.086624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770527, 37.513180, 46.108807>,  <30.062202, 37.784397, 46.145779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770527, 37.513180, 46.108807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213778, 0.097405, 0.972014,
		-0.650061, 0.728542, -0.215977,
		-0.729191, -0.678040, -0.092427,
		29.551769, 37.309769, 46.081078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536123, 38.012402, 46.651459>,  <30.062202, 37.784397, 46.145779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536123, 38.012402, 46.651459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449615, 37.630962, 46.567661>,  <29.397711, 37.402100, 46.517384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449615, 37.630962, 46.567661>,  <29.536123, 38.012402, 46.651459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449615, 37.630962, 46.567661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074024, -0.197935, 0.977416,
		-0.973523, 0.226892, -0.027782,
		-0.216269, -0.953594, -0.209490,
		29.384735, 37.344883, 46.504814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878616, 37.929111, 46.927856>,  <29.536123, 38.012402, 46.651459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878616, 37.929111, 46.927856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035002, 37.565060, 46.872986>,  <29.128832, 37.346630, 46.840061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035002, 37.565060, 46.872986>,  <28.878616, 37.929111, 46.927856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035002, 37.565060, 46.872986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331745, -0.278366, 0.901364,
		-0.858542, -0.306891, -0.410760,
		0.390962, -0.910126, -0.137180,
		29.152290, 37.292023, 46.831833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481787, 37.448841, 47.103226>,  <28.878616, 37.929111, 46.927856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481787, 37.448841, 47.103226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783428, 37.186558, 47.088383>,  <28.964413, 37.029190, 47.079475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783428, 37.186558, 47.088383>,  <28.481787, 37.448841, 47.103226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783428, 37.186558, 47.088383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253128, -0.342321, 0.904844,
		-0.606013, -0.672954, -0.424123,
		0.754105, -0.655705, -0.037107,
		29.009659, 36.989845, 47.077251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267384, 36.906288, 47.497166>,  <28.481787, 37.448841, 47.103226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267384, 36.906288, 47.497166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658195, 36.822895, 47.479500>,  <28.892683, 36.772858, 47.468899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658195, 36.822895, 47.479500>,  <28.267384, 36.906288, 47.497166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658195, 36.822895, 47.479500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054995, -0.446890, 0.892897,
		-0.205891, -0.869957, -0.448090,
		0.977029, -0.208482, -0.044167,
		28.951303, 36.760349, 47.466251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338146, 36.194790, 47.652702>,  <28.267384, 36.906288, 47.497166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338146, 36.194790, 47.652702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680981, 36.387627, 47.725357>,  <28.886683, 36.503326, 47.768948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680981, 36.387627, 47.725357>,  <28.338146, 36.194790, 47.652702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680981, 36.387627, 47.725357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022457, -0.387199, 0.921723,
		0.514682, -0.785918, -0.342689,
		0.857087, 0.482090, 0.181635,
		28.938107, 36.532253, 47.779846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664970, 35.817574, 48.170795>,  <28.338146, 36.194790, 47.652702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664970, 35.817574, 48.170795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885853, 36.150528, 48.152008>,  <29.018383, 36.350300, 48.140736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885853, 36.150528, 48.152008>,  <28.664970, 35.817574, 48.170795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885853, 36.150528, 48.152008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329312, -0.166014, 0.929512,
		0.765912, -0.528752, -0.365788,
		0.552207, 0.832383, -0.046972,
		29.051516, 36.400242, 48.137917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252338, 35.587955, 48.357670>,  <28.664970, 35.817574, 48.170795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252338, 35.587955, 48.357670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230341, 35.978394, 48.441776>,  <29.217142, 36.212658, 48.492241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230341, 35.978394, 48.441776>,  <29.252338, 35.587955, 48.357670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230341, 35.978394, 48.441776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188727, -0.196630, 0.962143,
		0.980488, 0.092598, -0.173402,
		-0.054996, 0.976095, 0.210269,
		29.213842, 36.271221, 48.504856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833748, 35.658878, 48.726250>,  <29.252338, 35.587955, 48.357670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833748, 35.658878, 48.726250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587984, 35.962704, 48.811626>,  <29.440525, 36.145000, 48.862850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587984, 35.962704, 48.811626>,  <29.833748, 35.658878, 48.726250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587984, 35.962704, 48.811626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123074, -0.174943, 0.976856,
		0.779328, 0.626459, 0.014004,
		-0.614410, 0.759568, 0.213439,
		29.403662, 36.190575, 48.875660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279240, 36.049355, 49.200668>,  <29.833748, 35.658878, 48.726250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279240, 36.049355, 49.200668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907774, 36.185722, 49.259125>,  <29.684895, 36.267544, 49.294201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907774, 36.185722, 49.259125>,  <30.279240, 36.049355, 49.200668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907774, 36.185722, 49.259125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128238, -0.074611, 0.988933,
		0.348050, 0.937127, 0.025570,
		-0.928664, 0.340919, 0.146144,
		29.629175, 36.287998, 49.302967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207548, 36.557907, 49.862061>,  <30.279240, 36.049355, 49.200668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207548, 36.557907, 49.862061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825027, 36.463428, 49.793129>,  <29.595514, 36.406742, 49.751770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825027, 36.463428, 49.793129>,  <30.207548, 36.557907, 49.862061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825027, 36.463428, 49.793129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161841, -0.063250, 0.984788,
		-0.243501, 0.969645, 0.022260,
		-0.956303, -0.236194, -0.172330,
		29.538137, 36.392570, 49.741428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712109, 37.048729, 50.134380>,  <30.207548, 36.557907, 49.862061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712109, 37.048729, 50.134380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593792, 36.667080, 50.152950>,  <29.522802, 36.438091, 50.164093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593792, 36.667080, 50.152950>,  <29.712109, 37.048729, 50.134380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593792, 36.667080, 50.152950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060295, 0.067152, 0.995919,
		-0.953348, 0.291784, -0.077391,
		-0.295791, -0.954124, 0.046426,
		29.505054, 36.380844, 50.166878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081741, 37.121994, 50.499985>,  <29.712109, 37.048729, 50.134380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081741, 37.121994, 50.499985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290035, 36.782032, 50.532215>,  <29.415010, 36.578053, 50.551552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290035, 36.782032, 50.532215>,  <29.081741, 37.121994, 50.499985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290035, 36.782032, 50.532215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081842, 0.143642, 0.986240,
		-0.849787, -0.506974, 0.144357,
		0.520734, -0.849908, 0.080574,
		29.446255, 36.527058, 50.556389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902039, 36.518360, 51.015327>,  <29.081741, 37.121994, 50.499985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902039, 36.518360, 51.015327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298845, 36.551117, 50.976971>,  <29.536930, 36.570770, 50.953957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298845, 36.551117, 50.976971>,  <28.902039, 36.518360, 51.015327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298845, 36.551117, 50.976971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094231, 0.023932, 0.995263,
		0.083804, -0.996353, 0.016023,
		0.992017, 0.081897, -0.095893,
		29.596451, 36.575684, 50.948204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136803, 36.212341, 51.534687>,  <28.902039, 36.518360, 51.015327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136803, 36.212341, 51.534687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458330, 36.437496, 51.457710>,  <29.651247, 36.572590, 51.411522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458330, 36.437496, 51.457710>,  <29.136803, 36.212341, 51.534687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458330, 36.437496, 51.457710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152209, 0.118127, 0.981264,
		0.575075, -0.818048, 0.009276,
		0.803816, 0.562889, -0.192446,
		29.699474, 36.606361, 51.399975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757771, 36.161644, 52.198002>,  <29.136803, 36.212341, 51.534687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757771, 36.161644, 52.198002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521091, 36.119408, 51.878315>,  <28.379084, 36.094067, 51.686504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521091, 36.119408, 51.878315>,  <28.757771, 36.161644, 52.198002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521091, 36.119408, 51.878315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795626, -0.236239, -0.557827,
		-0.129904, -0.965941, 0.223793,
		-0.591697, -0.105591, -0.799216,
		28.343582, 36.087730, 51.638550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646658, 35.640320, 51.574223>,  <28.757771, 36.161644, 52.198002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646658, 35.640320, 51.574223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277824, 35.718006, 51.708115>,  <28.056524, 35.764618, 51.788448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277824, 35.718006, 51.708115>,  <28.646658, 35.640320, 51.574223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277824, 35.718006, 51.708115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300477, -0.904387, -0.302982,
		0.243876, -0.379952, 0.892279,
		-0.922083, 0.194219, 0.334726,
		28.001200, 35.776272, 51.808533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500706, 35.106167, 52.062767>,  <28.646658, 35.640320, 51.574223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500706, 35.106167, 52.062767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170410, 35.252121, 51.890713>,  <27.972233, 35.339695, 51.787479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170410, 35.252121, 51.890713>,  <28.500706, 35.106167, 52.062767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170410, 35.252121, 51.890713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211323, -0.907161, -0.363869,
		-0.522972, -0.209563, 0.826186,
		-0.825737, 0.364886, -0.430135,
		27.922689, 35.361588, 51.761673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995872, 34.660088, 52.328564>,  <28.500706, 35.106167, 52.062767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995872, 34.660088, 52.328564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929661, 34.820755, 51.968285>,  <27.889933, 34.917156, 51.752117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929661, 34.820755, 51.968285>,  <27.995872, 34.660088, 52.328564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929661, 34.820755, 51.968285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011588, -0.912446, -0.409033,
		-0.986136, -0.078145, 0.146383,
		-0.165531, 0.401666, -0.900702,
		27.880001, 34.941254, 51.698074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430817, 34.322800, 52.034454>,  <27.995872, 34.660088, 52.328564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430817, 34.322800, 52.034454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652430, 34.441303, 51.723255>,  <27.785397, 34.512405, 51.536537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652430, 34.441303, 51.723255>,  <27.430817, 34.322800, 52.034454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652430, 34.441303, 51.723255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113360, -0.952678, -0.282055,
		-0.824742, 0.068074, -0.561398,
		0.554031, 0.296262, -0.777996,
		27.818640, 34.530182, 51.489857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238304, 34.056557, 51.348404>,  <27.430817, 34.322800, 52.034454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238304, 34.056557, 51.348404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632250, 34.118267, 51.380016>,  <27.868616, 34.155293, 51.398983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632250, 34.118267, 51.380016>,  <27.238304, 34.056557, 51.348404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632250, 34.118267, 51.380016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168332, -0.960024, -0.223646,
		0.041366, 0.233563, -0.971461,
		0.984862, 0.154276, 0.079029,
		27.927708, 34.164551, 51.403725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382290, 33.457180, 50.868958>,  <27.238304, 34.056557, 51.348404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382290, 33.457180, 50.868958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316807, 33.811306, 50.694870>,  <27.277517, 34.023781, 50.590420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316807, 33.811306, 50.694870>,  <27.382290, 33.457180, 50.868958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316807, 33.811306, 50.694870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190173, -0.404572, -0.894514,
		-0.968005, -0.229205, -0.102133,
		-0.163707, 0.885317, -0.435216,
		27.267694, 34.076900, 50.564304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987022, 33.279789, 50.229801>,  <27.382290, 33.457180, 50.868958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987022, 33.279789, 50.229801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212399, 33.608772, 50.198574>,  <27.347624, 33.806164, 50.179836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212399, 33.608772, 50.198574>,  <26.987022, 33.279789, 50.229801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212399, 33.608772, 50.198574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351342, -0.324072, -0.878371,
		-0.747725, 0.467481, -0.471560,
		0.563441, 0.822459, -0.078071,
		27.381432, 33.855511, 50.175152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951368, 33.462074, 49.577896>,  <26.987022, 33.279789, 50.229801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951368, 33.462074, 49.577896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291840, 33.647568, 49.676239>,  <27.496122, 33.758865, 49.735245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291840, 33.647568, 49.676239>,  <26.951368, 33.462074, 49.577896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291840, 33.647568, 49.676239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311554, -0.069407, -0.947690,
		-0.422414, 0.883250, -0.203556,
		0.851176, 0.463736, 0.245861,
		27.547192, 33.786690, 49.749996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034798, 33.883236, 49.078457>,  <26.951368, 33.462074, 49.577896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034798, 33.883236, 49.078457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393906, 33.892845, 49.254379>,  <27.609371, 33.898613, 49.359932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393906, 33.892845, 49.254379>,  <27.034798, 33.883236, 49.078457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393906, 33.892845, 49.254379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439082, 0.030263, -0.897937,
		-0.034883, 0.999253, 0.016620,
		0.897770, 0.024025, 0.439810,
		27.663237, 33.900051, 49.386322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422667, 34.299046, 48.633514>,  <27.034798, 33.883236, 49.078457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422667, 34.299046, 48.633514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676146, 34.090858, 48.862438>,  <27.828234, 33.965946, 48.999794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676146, 34.090858, 48.862438>,  <27.422667, 34.299046, 48.633514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676146, 34.090858, 48.862438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584473, -0.162531, -0.794968,
		0.506771, 0.838273, 0.201202,
		0.633699, -0.520464, 0.572314,
		27.866255, 33.934719, 49.034134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044628, 34.532574, 48.475018>,  <27.422667, 34.299046, 48.633514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044628, 34.532574, 48.475018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121027, 34.173218, 48.633217>,  <28.166866, 33.957603, 48.728138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121027, 34.173218, 48.633217>,  <28.044628, 34.532574, 48.475018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121027, 34.173218, 48.633217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638925, -0.192095, -0.744899,
		0.745181, 0.394970, 0.537312,
		0.190998, -0.898387, 0.395501,
		28.178326, 33.903702, 48.751865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682596, 34.417282, 48.196148>,  <28.044628, 34.532574, 48.475018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682596, 34.417282, 48.196148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590794, 34.057377, 48.344608>,  <28.535711, 33.841434, 48.433685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590794, 34.057377, 48.344608>,  <28.682596, 34.417282, 48.196148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590794, 34.057377, 48.344608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558076, -0.434067, -0.707204,
		0.797420, 0.044821, 0.601758,
		-0.229506, -0.899765, 0.371147,
		28.521942, 33.787449, 48.455952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344757, 34.086861, 48.355526>,  <28.682596, 34.417282, 48.196148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344757, 34.086861, 48.355526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044935, 33.831333, 48.286156>,  <28.865042, 33.678017, 48.244534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044935, 33.831333, 48.286156>,  <29.344757, 34.086861, 48.355526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044935, 33.831333, 48.286156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537968, -0.435231, -0.721917,
		0.385695, -0.634413, 0.669895,
		-0.749553, -0.638822, -0.173428,
		28.820070, 33.639687, 48.234127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704576, 33.408680, 48.291233>,  <29.344757, 34.086861, 48.355526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704576, 33.408680, 48.291233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351971, 33.340427, 48.115135>,  <29.140408, 33.299477, 48.009476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351971, 33.340427, 48.115135>,  <29.704576, 33.408680, 48.291233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351971, 33.340427, 48.115135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460490, -0.516697, -0.721785,
		-0.104314, -0.838993, 0.534050,
		-0.881515, -0.170632, -0.440247,
		29.087517, 33.289238, 47.983063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777767, 32.797417, 47.984692>,  <29.704576, 33.408680, 48.291233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777767, 32.797417, 47.984692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456142, 32.930439, 47.787556>,  <29.263168, 33.010254, 47.669273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456142, 32.930439, 47.787556>,  <29.777767, 32.797417, 47.984692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456142, 32.930439, 47.787556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402244, -0.306137, -0.862832,
		-0.437818, -0.892012, 0.112384,
		-0.804062, 0.332558, -0.492839,
		29.214924, 33.030205, 47.639706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442617, 32.261261, 47.642361>,  <29.777767, 32.797417, 47.984692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442617, 32.261261, 47.642361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312754, 32.581867, 47.441494>,  <29.234837, 32.774231, 47.320976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312754, 32.581867, 47.441494>,  <29.442617, 32.261261, 47.642361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312754, 32.581867, 47.441494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427812, -0.349066, -0.833745,
		-0.843549, -0.485512, -0.229572,
		-0.324657, 0.801518, -0.502162,
		29.215357, 32.822323, 47.290844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893063, 31.995024, 47.164150>,  <29.442617, 32.261261, 47.642361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893063, 31.995024, 47.164150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003302, 32.342289, 46.999062>,  <29.069445, 32.550648, 46.900009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003302, 32.342289, 46.999062>,  <28.893063, 31.995024, 47.164150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003302, 32.342289, 46.999062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013517, -0.432803, -0.901387,
		-0.961178, 0.242841, -0.131015,
		0.275597, 0.868165, -0.412718,
		29.085981, 32.602737, 46.875248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637335, 31.962765, 46.537968>,  <28.893063, 31.995024, 47.164150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637335, 31.962765, 46.537968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887436, 32.272408, 46.498329>,  <29.037497, 32.458195, 46.474548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887436, 32.272408, 46.498329>,  <28.637335, 31.962765, 46.537968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887436, 32.272408, 46.498329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134515, -0.231971, -0.963377,
		-0.768744, 0.589022, -0.249169,
		0.625251, 0.774107, -0.099094,
		29.075010, 32.504639, 46.468601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456469, 32.212559, 45.937073>,  <28.637335, 31.962765, 46.537968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456469, 32.212559, 45.937073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818459, 32.382164, 45.951118>,  <29.035652, 32.483929, 45.959545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818459, 32.382164, 45.951118>,  <28.456469, 32.212559, 45.937073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818459, 32.382164, 45.951118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012982, 0.054972, -0.998403,
		-0.425270, 0.903984, 0.044244,
		0.904973, 0.424017, 0.035113,
		29.089951, 32.509369, 45.961651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473347, 32.769821, 45.521698>,  <28.456469, 32.212559, 45.937073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473347, 32.769821, 45.521698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851986, 32.643875, 45.549442>,  <29.079170, 32.568310, 45.566090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851986, 32.643875, 45.549442>,  <28.473347, 32.769821, 45.521698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851986, 32.643875, 45.549442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041791, -0.093500, -0.994742,
		0.319692, 0.944521, -0.075348,
		0.946599, -0.314863, 0.069363,
		29.135965, 32.549416, 45.570251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798512, 33.124828, 45.028679>,  <28.473347, 32.769821, 45.521698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798512, 33.124828, 45.028679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042543, 32.817612, 45.106571>,  <29.188963, 32.633282, 45.153305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.042543, 32.817612, 45.106571>,  <28.798512, 33.124828, 45.028679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042543, 32.817612, 45.106571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179918, -0.105062, -0.978055,
		0.771643, 0.631726, 0.074088,
		0.610079, -0.768039, 0.194729,
		29.225567, 32.587200, 45.164989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476295, 33.234608, 44.800671>,  <28.798512, 33.124828, 45.028679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476295, 33.234608, 44.800671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467260, 32.835541, 44.826439>,  <29.461840, 32.596100, 44.841900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467260, 32.835541, 44.826439>,  <29.476295, 33.234608, 44.800671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467260, 32.835541, 44.826439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259342, -0.068081, -0.963383,
		0.965521, -0.005053, 0.260275,
		-0.022588, -0.997667, 0.064423,
		29.460484, 32.536240, 44.845764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108130, 33.095264, 44.448399>,  <29.476295, 33.234608, 44.800671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108130, 33.095264, 44.448399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873083, 32.771667, 44.454487>,  <29.732056, 32.577507, 44.458141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873083, 32.771667, 44.454487>,  <30.108130, 33.095264, 44.448399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873083, 32.771667, 44.454487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332150, -0.258328, -0.907162,
		0.737822, -0.528008, 0.420506,
		-0.587618, -0.808996, 0.015222,
		29.696798, 32.528969, 44.459053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464935, 32.620193, 43.902744>,  <30.108130, 33.095264, 44.448399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464935, 32.620193, 43.902744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115314, 32.446255, 43.989414>,  <29.905542, 32.341892, 44.041416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115314, 32.446255, 43.989414>,  <30.464935, 32.620193, 43.902744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115314, 32.446255, 43.989414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039745, -0.508486, -0.860152,
		0.484208, -0.743204, 0.461725,
		-0.874050, -0.434843, 0.216675,
		29.853100, 32.315804, 44.054417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606485, 31.923107, 43.676407>,  <30.464935, 32.620193, 43.902744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606485, 31.923107, 43.676407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228539, 32.052414, 43.655525>,  <30.001770, 32.129997, 43.642998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228539, 32.052414, 43.655525>,  <30.606485, 31.923107, 43.676407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228539, 32.052414, 43.655525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061390, -0.331475, -0.941465,
		-0.321636, -0.886358, 0.333046,
		-0.944871, 0.323254, -0.052201,
		29.945078, 32.149395, 43.639862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401308, 31.491055, 43.115753>,  <30.606485, 31.923107, 43.676407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401308, 31.491055, 43.115753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115320, 31.766682, 43.163086>,  <29.943727, 31.932058, 43.191486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115320, 31.766682, 43.163086>,  <30.401308, 31.491055, 43.115753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115320, 31.766682, 43.163086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274227, -0.120699, -0.954060,
		-0.643130, -0.714574, 0.275257,
		-0.714970, 0.689068, 0.118331,
		29.900829, 31.973402, 43.198586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800755, 31.298798, 42.801144>,  <30.401308, 31.491055, 43.115753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800755, 31.298798, 42.801144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708487, 31.687984, 42.805565>,  <29.653126, 31.921497, 42.808216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708487, 31.687984, 42.805565>,  <29.800755, 31.298798, 42.801144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708487, 31.687984, 42.805565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375833, -0.078613, -0.923347,
		-0.897519, -0.217144, 0.383807,
		-0.230671, 0.972969, 0.011053,
		29.639286, 31.979876, 42.808880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084785, 31.429165, 42.446529>,  <29.800755, 31.298798, 42.801144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084785, 31.429165, 42.446529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260319, 31.788473, 42.455769>,  <29.365639, 32.004059, 42.461311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260319, 31.788473, 42.455769>,  <29.084785, 31.429165, 42.446529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260319, 31.788473, 42.455769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362386, 0.200442, -0.910220,
		-0.822253, 0.391066, 0.413482,
		0.438835, 0.898271, 0.023097,
		29.391970, 32.057953, 42.462696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608721, 31.852253, 42.193100>,  <29.084785, 31.429165, 42.446529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608721, 31.852253, 42.193100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942165, 32.069263, 42.151611>,  <29.142233, 32.199471, 42.126720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942165, 32.069263, 42.151611>,  <28.608721, 31.852253, 42.193100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942165, 32.069263, 42.151611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278490, 0.250659, -0.927153,
		-0.477008, 0.801770, 0.360040,
		0.833611, 0.542527, -0.103718,
		29.192249, 32.232021, 42.120495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427122, 32.392994, 41.842010>,  <28.608721, 31.852253, 42.193100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427122, 32.392994, 41.842010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821100, 32.384712, 41.773365>,  <29.057487, 32.379745, 41.732178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821100, 32.384712, 41.773365>,  <28.427122, 32.392994, 41.842010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821100, 32.384712, 41.773365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141494, 0.473707, -0.869242,
		0.099286, 0.880439, 0.463647,
		0.984948, -0.020700, -0.171609,
		29.116585, 32.378502, 41.721882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615900, 33.017895, 41.390293>,  <28.427122, 32.392994, 41.842010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615900, 33.017895, 41.390293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934259, 32.780453, 41.342663>,  <29.125275, 32.637989, 41.314083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934259, 32.780453, 41.342663>,  <28.615900, 33.017895, 41.390293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934259, 32.780453, 41.342663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050026, 0.260493, -0.964179,
		0.603359, 0.761432, 0.237022,
		0.795899, -0.593603, -0.119079,
		29.173029, 32.602371, 41.306938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115118, 33.394417, 41.034336>,  <28.615900, 33.017895, 41.390293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115118, 33.394417, 41.034336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193661, 33.012428, 40.945374>,  <29.240786, 32.783234, 40.891994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193661, 33.012428, 40.945374>,  <29.115118, 33.394417, 41.034336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193661, 33.012428, 40.945374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236282, 0.266225, -0.934502,
		0.951638, 0.130943, 0.277919,
		0.196355, -0.954976, -0.222411,
		29.252567, 32.725937, 40.878651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682323, 33.354012, 40.673634>,  <29.115118, 33.394417, 41.034336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682323, 33.354012, 40.673634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547983, 32.991497, 40.570995>,  <29.467379, 32.773987, 40.509411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547983, 32.991497, 40.570995>,  <29.682323, 33.354012, 40.673634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547983, 32.991497, 40.570995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311475, 0.150235, -0.938303,
		0.888925, -0.395053, 0.231830,
		-0.335851, -0.906291, -0.256596,
		29.447227, 32.719608, 40.494015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166744, 33.072746, 40.216908>,  <29.682323, 33.354012, 40.673634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166744, 33.072746, 40.216908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840527, 32.855530, 40.136909>,  <29.644796, 32.725201, 40.088913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840527, 32.855530, 40.136909>,  <30.166744, 33.072746, 40.216908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840527, 32.855530, 40.136909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188537, 0.077405, -0.979011,
		0.547123, -0.836132, 0.039256,
		-0.815544, -0.543040, -0.199992,
		29.595863, 32.692619, 40.076912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487318, 32.517559, 39.664356>,  <30.166744, 33.072746, 40.216908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487318, 32.517559, 39.664356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087467, 32.527782, 39.660473>,  <29.847557, 32.533916, 39.658142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087467, 32.527782, 39.660473>,  <30.487318, 32.517559, 39.664356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087467, 32.527782, 39.660473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008180, -0.059380, -0.998202,
		-0.026079, -0.997909, 0.059149,
		-0.999627, 0.025548, -0.009712,
		29.787579, 32.535450, 39.657558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389410, 32.082336, 39.213573>,  <30.487318, 32.517559, 39.664356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389410, 32.082336, 39.213573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057617, 32.305012, 39.231705>,  <29.858541, 32.438618, 39.242584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057617, 32.305012, 39.231705>,  <30.389410, 32.082336, 39.213573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057617, 32.305012, 39.231705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061747, -0.010745, -0.998034,
		-0.555109, -0.830650, 0.043287,
		-0.829482, 0.556690, 0.045326,
		29.808773, 32.472019, 39.245304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929394, 31.755869, 38.739651>,  <30.389410, 32.082336, 39.213573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929394, 31.755869, 38.739651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797432, 32.129185, 38.796413>,  <29.718256, 32.353172, 38.830471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797432, 32.129185, 38.796413>,  <29.929394, 31.755869, 38.739651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797432, 32.129185, 38.796413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122600, 0.106693, -0.986704,
		-0.936020, -0.342915, 0.079223,
		-0.329903, 0.933288, 0.141908,
		29.698462, 32.409172, 38.838985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443161, 31.767406, 38.338261>,  <29.929394, 31.755869, 38.739651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443161, 31.767406, 38.338261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548817, 32.150311, 38.385391>,  <29.612209, 32.380054, 38.413670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548817, 32.150311, 38.385391>,  <29.443161, 31.767406, 38.338261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548817, 32.150311, 38.385391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165905, 0.165442, -0.972165,
		-0.950108, 0.237239, 0.202514,
		0.264140, 0.957260, 0.117829,
		29.628059, 32.437489, 38.420738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976696, 32.165287, 37.924385>,  <29.443161, 31.767406, 38.338261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976696, 32.165287, 37.924385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296465, 32.403008, 37.959568>,  <29.488325, 32.545639, 37.980679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296465, 32.403008, 37.959568>,  <28.976696, 32.165287, 37.924385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296465, 32.403008, 37.959568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009078, 0.134438, -0.990880,
		-0.600702, 0.792929, 0.102078,
		0.799421, 0.594297, 0.087955,
		29.536291, 32.581295, 37.985954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912596, 32.719624, 37.470371>,  <28.976696, 32.165287, 37.924385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912596, 32.719624, 37.470371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301764, 32.726391, 37.562584>,  <29.535263, 32.730450, 37.617912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301764, 32.726391, 37.562584>,  <28.912596, 32.719624, 37.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301764, 32.726391, 37.562584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230634, -0.004458, -0.973030,
		-0.015430, 0.999847, -0.008238,
		0.972918, 0.016914, 0.230530,
		29.593639, 32.731464, 37.631744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102711, 33.208134, 36.999680>,  <28.912596, 32.719624, 37.470371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102711, 33.208134, 36.999680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454817, 33.056969, 37.114441>,  <29.666080, 32.966270, 37.183300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454817, 33.056969, 37.114441>,  <29.102711, 33.208134, 36.999680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454817, 33.056969, 37.114441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402547, 0.274730, -0.873201,
		0.251169, 0.884143, 0.393962,
		0.880267, -0.377909, 0.286906,
		29.718897, 32.943596, 37.200512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662264, 33.682175, 36.787754>,  <29.102711, 33.208134, 36.999680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662264, 33.682175, 36.787754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842499, 33.328373, 36.836136>,  <29.950640, 33.116093, 36.865166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842499, 33.328373, 36.836136>,  <29.662264, 33.682175, 36.787754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842499, 33.328373, 36.836136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500437, 0.138062, -0.854694,
		0.739278, 0.445644, 0.504846,
		0.450589, -0.884500, 0.120951,
		29.977676, 33.063023, 36.872421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372301, 33.827564, 36.668995>,  <29.662264, 33.682175, 36.787754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372301, 33.827564, 36.668995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305571, 33.439358, 36.599400>,  <30.265532, 33.206436, 36.557640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305571, 33.439358, 36.599400>,  <30.372301, 33.827564, 36.668995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305571, 33.439358, 36.599400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622771, 0.033090, -0.781704,
		0.764411, -0.238767, 0.598887,
		-0.166828, -0.970513, -0.173992,
		30.255522, 33.148205, 36.547203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064800, 33.631973, 36.445084>,  <30.372301, 33.827564, 36.668995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064800, 33.631973, 36.445084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830416, 33.332367, 36.321388>,  <30.689785, 33.152603, 36.247173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830416, 33.332367, 36.321388>,  <31.064800, 33.631973, 36.445084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830416, 33.332367, 36.321388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574558, -0.114921, -0.810356,
		0.571430, -0.652512, 0.497690,
		-0.585962, -0.749013, -0.309236,
		30.654627, 33.107662, 36.228619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484392, 33.065395, 36.380821>,  <31.064800, 33.631973, 36.445084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484392, 33.065395, 36.380821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168150, 32.962318, 36.158638>,  <30.978405, 32.900471, 36.025330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168150, 32.962318, 36.158638>,  <31.484392, 33.065395, 36.380821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168150, 32.962318, 36.158638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585287, -0.051446, -0.809193,
		0.179950, -0.964855, 0.191500,
		-0.790606, -0.257696, -0.555459,
		30.930967, 32.885010, 35.992001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742422, 32.418308, 36.058846>,  <31.484392, 33.065395, 36.380821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742422, 32.418308, 36.058846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443089, 32.600883, 35.866322>,  <31.263489, 32.710430, 35.750809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443089, 32.600883, 35.866322>,  <31.742422, 32.418308, 36.058846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443089, 32.600883, 35.866322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538510, -0.005619, -0.842600,
		-0.387302, -0.889736, -0.241593,
		-0.748334, 0.456441, -0.481308,
		31.218588, 32.737816, 35.721928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110664, 31.721598, 35.964870>,  <31.742422, 32.418308, 36.058846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110664, 31.721598, 35.964870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470608, 31.818316, 35.819660>,  <32.686573, 31.876347, 35.732533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470608, 31.818316, 35.819660>,  <32.110664, 31.721598, 35.964870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470608, 31.818316, 35.819660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377751, -0.015895, 0.925771,
		0.218076, -0.970197, -0.105641,
		0.899860, 0.241794, -0.363027,
		32.740566, 31.890854, 35.710751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643135, 31.342209, 36.413002>,  <32.110664, 31.721598, 35.964870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643135, 31.342209, 36.413002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794037, 31.673225, 36.246700>,  <32.884579, 31.871836, 36.146919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794037, 31.673225, 36.246700>,  <32.643135, 31.342209, 36.413002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794037, 31.673225, 36.246700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518623, 0.183158, 0.835154,
		0.767276, -0.530684, -0.360087,
		0.377250, 0.827543, -0.415758,
		32.907211, 31.921488, 36.121971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463192, 31.316414, 36.303505>,  <32.643135, 31.342209, 36.413002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463192, 31.316414, 36.303505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333725, 31.694288, 36.324696>,  <33.256046, 31.921013, 36.337410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333725, 31.694288, 36.324696>,  <33.463192, 31.316414, 36.303505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333725, 31.694288, 36.324696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447701, 0.103584, 0.888164,
		0.833549, 0.311188, -0.456463,
		-0.323668, 0.944687, 0.052977,
		33.236626, 31.977694, 36.340588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861946, 31.576111, 36.727520>,  <33.463192, 31.316414, 36.303505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861946, 31.576111, 36.727520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594757, 31.873600, 36.738045>,  <33.434444, 32.052094, 36.744358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594757, 31.873600, 36.738045>,  <33.861946, 31.576111, 36.727520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594757, 31.873600, 36.738045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214100, 0.158189, 0.963918,
		0.712726, 0.649500, -0.264897,
		-0.667969, 0.743724, 0.026313,
		33.394367, 32.096718, 36.745937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184643, 31.939610, 37.153465>,  <33.861946, 31.576111, 36.727520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184643, 31.939610, 37.153465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828518, 32.121559, 37.145084>,  <33.614845, 32.230728, 37.140057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828518, 32.121559, 37.145084>,  <34.184643, 31.939610, 37.153465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828518, 32.121559, 37.145084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158846, 0.353362, 0.921902,
		0.426750, 0.817451, -0.386857,
		-0.890310, 0.454872, -0.020948,
		33.561424, 32.258022, 37.138802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290806, 32.688313, 37.204258>,  <34.184643, 31.939610, 37.153465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290806, 32.688313, 37.204258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927807, 32.576694, 37.329845>,  <33.710007, 32.509724, 37.405197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927807, 32.576694, 37.329845>,  <34.290806, 32.688313, 37.204258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927807, 32.576694, 37.329845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155623, 0.470912, 0.868345,
		-0.390157, 0.836885, -0.383928,
		-0.907501, -0.279043, 0.313968,
		33.655556, 32.492981, 37.424034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189266, 33.181404, 37.760765>,  <34.290806, 32.688313, 37.204258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189266, 33.181404, 37.760765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901409, 32.915379, 37.840561>,  <33.728695, 32.755764, 37.888439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901409, 32.915379, 37.840561>,  <34.189266, 33.181404, 37.760765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901409, 32.915379, 37.840561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123498, 0.405330, 0.905790,
		-0.683269, 0.627213, -0.373829,
		-0.719647, -0.665065, 0.199490,
		33.685516, 32.715858, 37.900410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586655, 33.597946, 38.088974>,  <34.189266, 33.181404, 37.760765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586655, 33.597946, 38.088974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574940, 33.207092, 38.173214>,  <33.567909, 32.972580, 38.223759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574940, 33.207092, 38.173214>,  <33.586655, 33.597946, 38.088974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574940, 33.207092, 38.173214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091492, 0.212429, 0.972884,
		-0.995375, 0.009226, -0.095622,
		-0.029289, -0.977133, 0.210603,
		33.566154, 32.913952, 38.236393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892742, 33.410229, 38.412243>,  <33.586655, 33.597946, 38.088974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892742, 33.410229, 38.412243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165081, 33.142586, 38.531406>,  <33.328484, 32.982002, 38.602905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165081, 33.142586, 38.531406>,  <32.892742, 33.410229, 38.412243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165081, 33.142586, 38.531406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197495, 0.223967, 0.954376,
		-0.705300, -0.708617, 0.020342,
		0.680843, -0.669104, 0.297912,
		33.369335, 32.941853, 38.620781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524761, 33.095970, 38.963394>,  <32.892742, 33.410229, 38.412243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524761, 33.095970, 38.963394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903618, 32.976902, 39.011250>,  <33.130932, 32.905460, 39.039963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903618, 32.976902, 39.011250>,  <32.524761, 33.095970, 38.963394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903618, 32.976902, 39.011250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096608, 0.090978, 0.991156,
		-0.305920, -0.950325, 0.057412,
		0.947143, -0.297668, 0.119641,
		33.187759, 32.887600, 39.047142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542549, 32.442005, 39.425793>,  <32.524761, 33.095970, 38.963394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542549, 32.442005, 39.425793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904030, 32.612141, 39.445423>,  <33.120918, 32.714222, 39.457203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904030, 32.612141, 39.445423>,  <32.542549, 32.442005, 39.425793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904030, 32.612141, 39.445423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030961, -0.049410, 0.998299,
		0.427042, -0.903684, -0.031483,
		0.903702, 0.425341, 0.049079,
		33.175140, 32.739742, 39.460148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972382, 31.963457, 39.832497>,  <32.542549, 32.442005, 39.425793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972382, 31.963457, 39.832497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150337, 32.320278, 39.864277>,  <33.257111, 32.534370, 39.883343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150337, 32.320278, 39.864277>,  <32.972382, 31.963457, 39.832497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150337, 32.320278, 39.864277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091845, -0.133688, 0.986758,
		0.890862, -0.431705, -0.141408,
		0.444893, 0.892053, 0.079447,
		33.283806, 32.587894, 39.888111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494011, 31.846973, 40.254475>,  <32.972382, 31.963457, 39.832497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494011, 31.846973, 40.254475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434326, 32.242493, 40.253105>,  <33.398514, 32.479805, 40.252281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434326, 32.242493, 40.253105>,  <33.494011, 31.846973, 40.254475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434326, 32.242493, 40.253105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048466, -0.003852, 0.998817,
		0.987617, 0.149203, 0.048498,
		-0.149213, 0.988799, -0.003427,
		33.389561, 32.539131, 40.252075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892395, 32.115555, 40.760929>,  <33.494011, 31.846973, 40.254475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892395, 32.115555, 40.760929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652798, 32.435406, 40.743938>,  <33.509041, 32.627316, 40.733746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652798, 32.435406, 40.743938>,  <33.892395, 32.115555, 40.760929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652798, 32.435406, 40.743938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054238, 0.012409, 0.998451,
		0.798915, 0.600369, 0.035937,
		-0.598993, 0.799627, -0.042476,
		33.473099, 32.675293, 40.731197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057358, 32.396912, 41.372368>,  <33.892395, 32.115555, 40.760929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057358, 32.396912, 41.372368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712688, 32.567749, 41.262745>,  <33.505886, 32.670254, 41.196972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712688, 32.567749, 41.262745>,  <34.057358, 32.396912, 41.372368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712688, 32.567749, 41.262745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313573, -0.023517, 0.949273,
		0.398987, 0.903900, 0.154191,
		-0.861673, 0.427098, -0.274056,
		33.454185, 32.695877, 41.180527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950512, 32.899418, 41.832642>,  <34.057358, 32.396912, 41.372368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950512, 32.899418, 41.832642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584972, 32.811989, 41.695755>,  <33.365650, 32.759529, 41.613625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584972, 32.811989, 41.695755>,  <33.950512, 32.899418, 41.832642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584972, 32.811989, 41.695755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343923, -0.031414, 0.938472,
		-0.215878, 0.975314, -0.046466,
		-0.913846, -0.218576, -0.342214,
		33.310818, 32.746414, 41.593090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498173, 33.216972, 42.302006>,  <33.950512, 32.899418, 41.832642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498173, 33.216972, 42.302006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272865, 32.951069, 42.105709>,  <33.137680, 32.791527, 41.987930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272865, 32.951069, 42.105709>,  <33.498173, 33.216972, 42.302006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272865, 32.951069, 42.105709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557097, -0.133085, 0.819714,
		-0.610225, 0.735105, -0.295375,
		-0.563266, -0.664762, -0.490737,
		33.103886, 32.751640, 41.958488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736652, 33.505165, 42.459808>,  <33.498173, 33.216972, 42.302006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736652, 33.505165, 42.459808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693821, 33.116013, 42.377792>,  <32.668121, 32.882523, 42.328583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693821, 33.116013, 42.377792>,  <32.736652, 33.505165, 42.459808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693821, 33.116013, 42.377792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544354, -0.115206, 0.830907,
		-0.831994, 0.200582, -0.517255,
		-0.107074, -0.972879, -0.205039,
		32.661697, 32.824150, 42.316280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991226, 33.318306, 42.733856>,  <32.736652, 33.505165, 42.459808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991226, 33.318306, 42.733856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197651, 32.977146, 42.702263>,  <32.321507, 32.772449, 42.683308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197651, 32.977146, 42.702263>,  <31.991226, 33.318306, 42.733856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197651, 32.977146, 42.702263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523780, -0.387186, 0.758777,
		-0.677744, -0.350204, -0.646544,
		0.516060, -0.852903, -0.078983,
		32.352470, 32.721275, 42.678570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521933, 32.744862, 42.717041>,  <31.991226, 33.318306, 42.733856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521933, 32.744862, 42.717041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871378, 32.584282, 42.827053>,  <32.081043, 32.487934, 42.893059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871378, 32.584282, 42.827053>,  <31.521933, 32.744862, 42.717041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871378, 32.584282, 42.827053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437797, -0.401644, 0.804373,
		-0.212451, -0.823117, -0.526634,
		0.873613, -0.401448, 0.275029,
		32.133461, 32.463848, 42.909561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403727, 32.006916, 42.857433>,  <31.521933, 32.744862, 42.717041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403727, 32.006916, 42.857433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742123, 32.094933, 43.051704>,  <31.945160, 32.147743, 43.168266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742123, 32.094933, 43.051704>,  <31.403727, 32.006916, 42.857433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742123, 32.094933, 43.051704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440121, -0.226010, 0.869030,
		0.300991, -0.948947, -0.094357,
		0.845989, 0.220042, 0.485679,
		31.995920, 32.160946, 43.197407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370001, 31.532335, 43.396339>,  <31.403727, 32.006916, 42.857433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370001, 31.532335, 43.396339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644718, 31.787489, 43.535721>,  <31.809549, 31.940580, 43.619350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644718, 31.787489, 43.535721>,  <31.370001, 31.532335, 43.396339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644718, 31.787489, 43.535721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273402, -0.217480, 0.936992,
		0.673474, -0.738787, 0.025035,
		0.686793, 0.637885, 0.348453,
		31.850756, 31.978855, 43.640255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688269, 31.211893, 43.936062>,  <31.370001, 31.532335, 43.396339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688269, 31.211893, 43.936062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760984, 31.598953, 44.006042>,  <31.804615, 31.831188, 44.048031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760984, 31.598953, 44.006042>,  <31.688269, 31.211893, 43.936062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760984, 31.598953, 44.006042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193170, -0.139306, 0.971226,
		0.964177, -0.210356, 0.161596,
		0.181791, 0.967649, 0.174950,
		31.815521, 31.889248, 44.058529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138943, 31.236275, 44.589931>,  <31.688269, 31.211893, 43.936062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138943, 31.236275, 44.589931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988750, 31.603685, 44.540424>,  <31.898634, 31.824133, 44.510719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988750, 31.603685, 44.540424>,  <32.138943, 31.236275, 44.589931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988750, 31.603685, 44.540424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186514, 0.055921, 0.980860,
		0.907868, 0.391382, 0.150321,
		-0.375485, 0.918528, -0.123767,
		31.876104, 31.879244, 44.503296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405285, 31.582573, 45.181389>,  <32.138943, 31.236275, 44.589931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405285, 31.582573, 45.181389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111080, 31.819658, 45.050106>,  <31.934559, 31.961910, 44.971336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111080, 31.819658, 45.050106>,  <32.405285, 31.582573, 45.181389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111080, 31.819658, 45.050106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321936, 0.120493, 0.939063,
		0.596143, 0.796348, 0.102193,
		-0.735507, 0.592715, -0.328204,
		31.890429, 31.997473, 44.951645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489311, 32.215488, 45.518349>,  <32.405285, 31.582573, 45.181389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489311, 32.215488, 45.518349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101444, 32.189518, 45.424084>,  <31.868725, 32.173935, 45.367527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101444, 32.189518, 45.424084>,  <32.489311, 32.215488, 45.518349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101444, 32.189518, 45.424084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244269, 0.293374, 0.924265,
		0.009128, 0.953791, -0.300333,
		-0.969665, -0.064925, -0.235659,
		31.810545, 32.170040, 45.353386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081383, 32.881428, 45.623753>,  <32.489311, 32.215488, 45.518349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081383, 32.881428, 45.623753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816795, 32.581490, 45.629257>,  <31.658043, 32.401527, 45.632561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816795, 32.581490, 45.629257>,  <32.081383, 32.881428, 45.623753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816795, 32.581490, 45.629257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298996, 0.280498, 0.912098,
		-0.687795, 0.599207, -0.409742,
		-0.661467, -0.749848, 0.013764,
		31.618355, 32.356537, 45.633385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561440, 33.159428, 45.932209>,  <32.081383, 32.881428, 45.623753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561440, 33.159428, 45.932209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499952, 32.765797, 45.967907>,  <31.463060, 32.529617, 45.989326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499952, 32.765797, 45.967907>,  <31.561440, 33.159428, 45.932209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499952, 32.765797, 45.967907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465321, 0.151768, 0.872034,
		-0.871692, 0.092521, -0.481241,
		-0.153719, -0.984076, 0.089243,
		31.453836, 32.470573, 45.994678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869942, 33.221039, 46.322193>,  <31.561440, 33.159428, 45.932209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869942, 33.221039, 46.322193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063488, 32.873562, 46.364597>,  <31.179617, 32.665073, 46.390038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063488, 32.873562, 46.364597>,  <30.869942, 33.221039, 46.322193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063488, 32.873562, 46.364597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108220, 0.060807, 0.992265,
		-0.868424, -0.491597, -0.064588,
		0.483867, -0.868697, 0.106007,
		31.208649, 32.612953, 46.396400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541172, 32.798119, 46.881699>,  <30.869942, 33.221039, 46.322193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541172, 32.798119, 46.881699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901638, 32.627491, 46.850872>,  <31.117918, 32.525112, 46.832375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901638, 32.627491, 46.850872>,  <30.541172, 32.798119, 46.881699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901638, 32.627491, 46.850872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080625, -0.009745, 0.996697,
		-0.425915, -0.904401, 0.025611,
		0.901164, -0.426572, -0.077068,
		31.171988, 32.499519, 46.827751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519503, 32.220150, 47.199699>,  <30.541172, 32.798119, 46.881699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519503, 32.220150, 47.199699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908104, 32.314735, 47.193146>,  <31.141264, 32.371487, 47.189213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908104, 32.314735, 47.193146>,  <30.519503, 32.220150, 47.199699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908104, 32.314735, 47.193146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060874, -0.182102, 0.981393,
		0.229081, -0.954423, -0.191307,
		0.971502, 0.236464, -0.016384,
		31.199554, 32.385674, 47.188232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788057, 31.918457, 47.774849>,  <30.519503, 32.220150, 47.199699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788057, 31.918457, 47.774849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107807, 32.140495, 47.682877>,  <31.299658, 32.273720, 47.627693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107807, 32.140495, 47.682877>,  <30.788057, 31.918457, 47.774849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107807, 32.140495, 47.682877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321805, -0.072379, 0.944035,
		0.507389, -0.828631, -0.236491,
		0.799374, 0.555097, -0.229933,
		31.347620, 32.307026, 47.613895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410500, 31.527000, 48.027466>,  <30.788057, 31.918457, 47.774849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410500, 31.527000, 48.027466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497860, 31.916773, 48.006363>,  <31.550276, 32.150635, 47.993702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497860, 31.916773, 48.006363>,  <31.410500, 31.527000, 48.027466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497860, 31.916773, 48.006363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219132, 0.003713, 0.975688,
		0.950937, -0.224655, -0.212719,
		0.218403, 0.974432, -0.052760,
		31.563381, 32.209103, 47.990536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025272, 31.645655, 48.433899>,  <31.410500, 31.527000, 48.027466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025272, 31.645655, 48.433899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863766, 32.010574, 48.406536>,  <31.766861, 32.229527, 48.390118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863766, 32.010574, 48.406536>,  <32.025272, 31.645655, 48.433899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863766, 32.010574, 48.406536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280037, 0.194428, 0.940094,
		0.870947, 0.360427, -0.333982,
		-0.403771, 0.912299, -0.068403,
		31.742634, 32.284264, 48.386017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504990, 32.142975, 48.623650>,  <32.025272, 31.645655, 48.433899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504990, 32.142975, 48.623650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159355, 32.335304, 48.683216>,  <31.951975, 32.450703, 48.718956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159355, 32.335304, 48.683216>,  <32.504990, 32.142975, 48.623650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159355, 32.335304, 48.683216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293246, 0.240419, 0.925314,
		0.409108, 0.843215, -0.348741,
		-0.864082, 0.480820, 0.148912,
		31.900131, 32.479549, 48.727890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636417, 32.929104, 48.892693>,  <32.504990, 32.142975, 48.623650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636417, 32.929104, 48.892693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270798, 32.823410, 49.015785>,  <32.051426, 32.759995, 49.089642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270798, 32.823410, 49.015785>,  <32.636417, 32.929104, 48.892693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270798, 32.823410, 49.015785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251693, 0.225445, 0.941183,
		-0.318066, 0.937740, -0.139562,
		-0.914048, -0.264231, 0.307729,
		31.996584, 32.744141, 49.108105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442711, 33.103291, 49.629707>,  <32.636417, 32.929104, 48.892693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442711, 33.103291, 49.629707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638138, 32.808750, 49.816936>,  <32.755394, 32.632027, 49.929276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638138, 32.808750, 49.816936>,  <32.442711, 33.103291, 49.629707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638138, 32.808750, 49.816936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078404, 0.571335, 0.816963,
		-0.868999, -0.362439, 0.336866,
		0.488563, -0.736352, 0.468073,
		32.784706, 32.587845, 49.957359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909092, 33.640888, 49.855713>,  <32.442711, 33.103291, 49.629707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909092, 33.640888, 49.855713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743698, 33.473820, 50.179337>,  <32.644463, 33.373577, 50.373512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743698, 33.473820, 50.179337>,  <32.909092, 33.640888, 49.855713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743698, 33.473820, 50.179337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895195, -0.348784, 0.277443,
		0.166307, 0.838986, 0.518116,
		-0.413482, -0.417675, 0.809062,
		32.619652, 33.348518, 50.422054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652878, 34.390720, 49.863960>,  <32.909092, 33.640888, 49.855713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652878, 34.390720, 49.863960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011501, 34.322311, 50.027390>,  <33.226677, 34.281265, 50.125446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011501, 34.322311, 50.027390>,  <32.652878, 34.390720, 49.863960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011501, 34.322311, 50.027390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409112, -0.033750, -0.911860,
		0.169737, 0.984689, 0.039709,
		0.896558, -0.171022, 0.408577,
		33.280468, 34.271004, 50.149963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179180, 34.795551, 49.447468>,  <32.652878, 34.390720, 49.863960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179180, 34.795551, 49.447468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389477, 34.511269, 49.634438>,  <33.515656, 34.340698, 49.746620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389477, 34.511269, 49.634438>,  <33.179180, 34.795551, 49.447468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389477, 34.511269, 49.634438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540781, -0.144913, -0.828586,
		0.656622, 0.688397, 0.308152,
		0.525741, -0.710711, 0.467425,
		33.547199, 34.298054, 49.774666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794994, 34.984066, 49.252811>,  <33.179180, 34.795551, 49.447468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794994, 34.984066, 49.252811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822552, 34.605507, 49.379036>,  <33.839085, 34.378372, 49.454769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822552, 34.605507, 49.379036>,  <33.794994, 34.984066, 49.252811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822552, 34.605507, 49.379036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678942, -0.187282, -0.709904,
		0.730953, 0.263155, 0.629649,
		0.068894, -0.946401, 0.315561,
		33.843220, 34.321587, 49.473705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508766, 34.838787, 49.288998>,  <33.794994, 34.984066, 49.252811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508766, 34.838787, 49.288998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319832, 34.488880, 49.245758>,  <34.206470, 34.278938, 49.219814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319832, 34.488880, 49.245758>,  <34.508766, 34.838787, 49.288998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319832, 34.488880, 49.245758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593980, -0.225289, -0.772290,
		0.651217, -0.428993, 0.626005,
		-0.472339, -0.874763, -0.108101,
		34.178131, 34.226452, 49.213329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002396, 34.324001, 49.173164>,  <34.508766, 34.838787, 49.288998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002396, 34.324001, 49.173164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666725, 34.176056, 49.013672>,  <34.465324, 34.087288, 48.917976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666725, 34.176056, 49.013672>,  <35.002396, 34.324001, 49.173164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666725, 34.176056, 49.013672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510876, -0.284655, -0.811158,
		0.186517, -0.884406, 0.427829,
		-0.839176, -0.369863, -0.398729,
		34.414970, 34.065098, 48.894054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167980, 33.756729, 48.775795>,  <35.002396, 34.324001, 49.173164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167980, 33.756729, 48.775795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803268, 33.825527, 48.626621>,  <34.584442, 33.866806, 48.537117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803268, 33.825527, 48.626621>,  <35.167980, 33.756729, 48.775795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803268, 33.825527, 48.626621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282131, -0.397572, -0.873120,
		-0.298438, -0.901308, 0.313973,
		-0.911777, 0.171991, -0.372938,
		34.529736, 33.877125, 48.514740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946033, 33.178234, 48.404263>,  <35.167980, 33.756729, 48.775795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946033, 33.178234, 48.404263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709579, 33.459816, 48.246777>,  <34.567707, 33.628765, 48.152287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709579, 33.459816, 48.246777>,  <34.946033, 33.178234, 48.404263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709579, 33.459816, 48.246777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132639, -0.396645, -0.908339,
		-0.795591, -0.589174, 0.141100,
		-0.591136, 0.703951, -0.393714,
		34.532238, 33.671001, 48.128662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469223, 32.830318, 47.979210>,  <34.946033, 33.178234, 48.404263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469223, 32.830318, 47.979210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471394, 33.211857, 47.859112>,  <34.472694, 33.440781, 47.787052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471394, 33.211857, 47.859112>,  <34.469223, 32.830318, 47.979210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471394, 33.211857, 47.859112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041859, -0.300207, -0.952955,
		-0.999109, -0.007399, -0.041555,
		0.005425, 0.953845, -0.300249,
		34.473022, 33.498009, 47.769035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977482, 32.875790, 47.377365>,  <34.469223, 32.830318, 47.979210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977482, 32.875790, 47.377365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231251, 33.183464, 47.346733>,  <34.383514, 33.368069, 47.328354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231251, 33.183464, 47.346733>,  <33.977482, 32.875790, 47.377365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231251, 33.183464, 47.346733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016168, -0.085841, -0.996178,
		-0.772815, 0.633238, -0.042023,
		0.634425, 0.769182, -0.076577,
		34.421577, 33.414219, 47.323761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969933, 33.031490, 46.716614>,  <33.977482, 32.875790, 47.377365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969933, 33.031490, 46.716614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261646, 33.294109, 46.793644>,  <34.436676, 33.451683, 46.839863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261646, 33.294109, 46.793644>,  <33.969933, 33.031490, 46.716614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261646, 33.294109, 46.793644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194118, 0.071350, -0.978380,
		-0.656097, 0.750899, -0.075414,
		0.729284, 0.656551, 0.192576,
		34.480431, 33.491074, 46.851418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896191, 33.608715, 46.232281>,  <33.969933, 33.031490, 46.716614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896191, 33.608715, 46.232281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272579, 33.632195, 46.365627>,  <34.498413, 33.646282, 46.445637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272579, 33.632195, 46.365627>,  <33.896191, 33.608715, 46.232281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272579, 33.632195, 46.365627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311504, 0.235205, -0.920676,
		-0.132450, 0.970172, 0.203036,
		0.940969, 0.058697, 0.333365,
		34.554871, 33.649803, 46.465637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113548, 34.166798, 45.917049>,  <33.896191, 33.608715, 46.232281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113548, 34.166798, 45.917049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436039, 33.940956, 45.987724>,  <34.629536, 33.805450, 46.030128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436039, 33.940956, 45.987724>,  <34.113548, 34.166798, 45.917049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436039, 33.940956, 45.987724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304279, 0.139608, -0.942297,
		0.507354, 0.813471, 0.284353,
		0.806229, -0.564601, 0.176692,
		34.677906, 33.771576, 46.040733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750885, 34.524807, 45.612095>,  <34.113548, 34.166798, 45.917049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750885, 34.524807, 45.612095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822872, 34.136543, 45.675896>,  <34.866066, 33.903587, 45.714176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822872, 34.136543, 45.675896>,  <34.750885, 34.524807, 45.612095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822872, 34.136543, 45.675896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312693, -0.097286, -0.944859,
		0.932649, 0.219919, 0.286009,
		0.179967, -0.970655, 0.159501,
		34.876862, 33.845348, 45.723747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447926, 34.396881, 45.329197>,  <34.750885, 34.524807, 45.612095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447926, 34.396881, 45.329197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262085, 34.042770, 45.320881>,  <35.150581, 33.830303, 45.315891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262085, 34.042770, 45.320881>,  <35.447926, 34.396881, 45.329197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262085, 34.042770, 45.320881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366899, -0.171078, -0.914395,
		0.805936, -0.432454, 0.404290,
		-0.464598, -0.885277, -0.020789,
		35.122704, 33.777187, 45.314644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849148, 34.163437, 44.841770>,  <35.447926, 34.396881, 45.329197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849148, 34.163437, 44.841770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541508, 33.911995, 44.887981>,  <35.356922, 33.761131, 44.915707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541508, 33.911995, 44.887981>,  <35.849148, 34.163437, 44.841770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541508, 33.911995, 44.887981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151306, -0.354693, -0.922659,
		0.620961, -0.692137, 0.367906,
		-0.769100, -0.628602, 0.115526,
		35.310780, 33.723415, 44.922638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060772, 33.484009, 44.577477>,  <35.849148, 34.163437, 44.841770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060772, 33.484009, 44.577477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664055, 33.432877, 44.578468>,  <35.426025, 33.402195, 44.579063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664055, 33.432877, 44.578468>,  <36.060772, 33.484009, 44.577477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664055, 33.432877, 44.578468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045128, -0.368144, -0.928673,
		0.119629, -0.920939, 0.370892,
		-0.991793, -0.127833, 0.002481,
		35.366516, 33.394527, 44.579212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893879, 32.803368, 44.218231>,  <36.060772, 33.484009, 44.577477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893879, 32.803368, 44.218231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594212, 33.066814, 44.190025>,  <35.414410, 33.224884, 44.173103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594212, 33.066814, 44.190025>,  <35.893879, 32.803368, 44.218231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594212, 33.066814, 44.190025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018385, -0.085734, -0.996148,
		-0.662124, -0.747579, 0.052121,
		-0.749168, 0.658616, -0.070511,
		35.369461, 33.264400, 44.168873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410625, 32.540855, 43.658768>,  <35.893879, 32.803368, 44.218231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410625, 32.540855, 43.658768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313850, 32.928432, 43.679260>,  <35.255787, 33.160976, 43.691555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313850, 32.928432, 43.679260>,  <35.410625, 32.540855, 43.658768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313850, 32.928432, 43.679260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037913, 0.043321, -0.998341,
		-0.969552, -0.243476, 0.026255,
		-0.241934, 0.968939, 0.051233,
		35.241268, 33.219112, 43.694630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857010, 32.644745, 43.193314>,  <35.410625, 32.540855, 43.658768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857010, 32.644745, 43.193314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030411, 33.005173, 43.198246>,  <35.134453, 33.221428, 43.201206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030411, 33.005173, 43.198246>,  <34.857010, 32.644745, 43.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030411, 33.005173, 43.198246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077246, 0.050794, -0.995717,
		-0.897835, 0.430693, 0.091623,
		0.433503, 0.901068, 0.012335,
		35.160461, 33.275494, 43.201946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424316, 33.101646, 42.836224>,  <34.857010, 32.644745, 43.193314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424316, 33.101646, 42.836224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791092, 33.260574, 42.821495>,  <35.011158, 33.355930, 42.812660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791092, 33.260574, 42.821495>,  <34.424316, 33.101646, 42.836224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791092, 33.260574, 42.821495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098852, 0.136793, -0.985655,
		-0.386581, 0.907429, 0.164706,
		0.916943, 0.397317, -0.036819,
		35.066174, 33.379768, 42.810448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376629, 33.618229, 42.479553>,  <34.424316, 33.101646, 42.836224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376629, 33.618229, 42.479553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767788, 33.536953, 42.459808>,  <35.002483, 33.488186, 42.447964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767788, 33.536953, 42.459808>,  <34.376629, 33.618229, 42.479553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767788, 33.536953, 42.459808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029689, 0.098743, -0.994670,
		0.206980, 0.974148, 0.090528,
		0.977895, -0.203189, -0.049359,
		35.061157, 33.475998, 42.445000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669407, 34.114532, 42.019100>,  <34.376629, 33.618229, 42.479553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669407, 34.114532, 42.019100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954620, 33.834568, 42.035656>,  <35.125748, 33.666588, 42.045589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954620, 33.834568, 42.035656>,  <34.669407, 34.114532, 42.019100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954620, 33.834568, 42.035656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068583, 0.010883, -0.997586,
		0.697770, 0.714149, 0.055762,
		0.713032, -0.699910, 0.041385,
		35.168530, 33.624596, 42.048073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253475, 34.386383, 41.711964>,  <34.669407, 34.114532, 42.019100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253475, 34.386383, 41.711964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276718, 33.987911, 41.685902>,  <35.290665, 33.748829, 41.670265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276718, 33.987911, 41.685902>,  <35.253475, 34.386383, 41.711964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276718, 33.987911, 41.685902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244095, 0.077457, -0.966653,
		0.968009, 0.040262, 0.247663,
		0.058103, -0.996182, -0.065151,
		35.294147, 33.689056, 41.666355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720024, 34.310020, 41.213497>,  <35.253475, 34.386383, 41.711964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720024, 34.310020, 41.213497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536560, 33.956097, 41.246330>,  <35.426483, 33.743740, 41.266029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536560, 33.956097, 41.246330>,  <35.720024, 34.310020, 41.213497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536560, 33.956097, 41.246330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159810, -0.173002, -0.971870,
		0.874123, -0.432641, 0.220751,
		-0.458661, -0.884812, 0.082084,
		35.398960, 33.690655, 41.270954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139568, 33.862858, 40.908390>,  <35.720024, 34.310020, 41.213497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139568, 33.862858, 40.908390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791286, 33.666168, 40.904793>,  <35.582317, 33.548157, 40.902634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791286, 33.666168, 40.904793>,  <36.139568, 33.862858, 40.908390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791286, 33.666168, 40.904793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113673, -0.183421, -0.976440,
		0.478485, -0.851216, 0.215601,
		-0.870707, -0.491720, -0.008997,
		35.530075, 33.518654, 40.902092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330208, 33.320648, 40.484947>,  <36.139568, 33.862858, 40.908390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330208, 33.320648, 40.484947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934868, 33.376667, 40.461117>,  <35.697662, 33.410278, 40.446819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934868, 33.376667, 40.461117>,  <36.330208, 33.320648, 40.484947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934868, 33.376667, 40.461117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046760, -0.093110, -0.994557,
		-0.144831, -0.985757, 0.085477,
		-0.988351, 0.140046, -0.059579,
		35.638363, 33.418682, 40.443245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118248, 32.837395, 40.045563>,  <36.330208, 33.320648, 40.484947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118248, 32.837395, 40.045563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824585, 33.108967, 40.042198>,  <35.648388, 33.271908, 40.040180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824585, 33.108967, 40.042198>,  <36.118248, 32.837395, 40.045563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824585, 33.108967, 40.042198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145447, -0.169356, -0.974763,
		-0.663219, -0.714405, 0.223082,
		-0.734156, 0.678928, -0.008412,
		35.604340, 33.312645, 40.039673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517536, 32.598572, 39.659599>,  <36.118248, 32.837395, 40.045563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517536, 32.598572, 39.659599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446095, 32.992039, 39.650723>,  <35.403229, 33.228119, 39.645397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446095, 32.992039, 39.650723>,  <35.517536, 32.598572, 39.659599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446095, 32.992039, 39.650723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101193, -0.040803, -0.994030,
		-0.978704, -0.175291, 0.106828,
		-0.178603, 0.983671, -0.022196,
		35.392513, 33.287140, 39.644062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127277, 32.648117, 39.105549>,  <35.517536, 32.598572, 39.659599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127277, 32.648117, 39.105549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212513, 33.034706, 39.162865>,  <35.263653, 33.266659, 39.197254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212513, 33.034706, 39.162865>,  <35.127277, 32.648117, 39.105549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212513, 33.034706, 39.162865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140601, 0.175461, -0.974395,
		-0.966864, 0.187482, 0.173275,
		0.213084, 0.966470, 0.143287,
		35.276440, 33.324646, 39.205853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816265, 32.964855, 38.557640>,  <35.127277, 32.648117, 39.105549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816265, 32.964855, 38.557640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110947, 33.199329, 38.692490>,  <35.287754, 33.340015, 38.773399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110947, 33.199329, 38.692490>,  <34.816265, 32.964855, 38.557640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110947, 33.199329, 38.692490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316747, 0.141333, -0.937921,
		-0.597446, 0.797751, -0.081554,
		0.736702, 0.586189, 0.337124,
		35.331959, 33.375187, 38.793629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783752, 33.408745, 38.069504>,  <34.816265, 32.964855, 38.557640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783752, 33.408745, 38.069504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128746, 33.477859, 38.259773>,  <35.335743, 33.519329, 38.373936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128746, 33.477859, 38.259773>,  <34.783752, 33.408745, 38.069504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128746, 33.477859, 38.259773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376393, 0.409302, -0.831144,
		-0.338309, 0.895888, 0.287979,
		0.862482, 0.172790, 0.475676,
		35.387489, 33.529697, 38.402477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960171, 34.178108, 38.044956>,  <34.783752, 33.408745, 38.069504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960171, 34.178108, 38.044956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292923, 33.959175, 38.081619>,  <35.492573, 33.827816, 38.103615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292923, 33.959175, 38.081619>,  <34.960171, 34.178108, 38.044956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292923, 33.959175, 38.081619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420456, 0.513820, -0.747801,
		0.362201, 0.660619, 0.657566,
		0.831882, -0.547332, 0.091655,
		35.542488, 33.794975, 38.109116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517921, 34.636150, 37.998272>,  <34.960171, 34.178108, 38.044956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517921, 34.636150, 37.998272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691940, 34.284092, 37.922298>,  <35.796352, 34.072857, 37.876713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691940, 34.284092, 37.922298>,  <35.517921, 34.636150, 37.998272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691940, 34.284092, 37.922298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573298, 0.433422, -0.695324,
		0.694309, 0.193609, 0.693145,
		0.435046, -0.880148, -0.189933,
		35.822453, 34.020046, 37.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148609, 34.831055, 37.898159>,  <35.517921, 34.636150, 37.998272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148609, 34.831055, 37.898159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136978, 34.465607, 37.735947>,  <36.130001, 34.246338, 37.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136978, 34.465607, 37.735947>,  <36.148609, 34.831055, 37.898159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136978, 34.465607, 37.735947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642256, 0.293797, -0.707948,
		0.765938, -0.281038, 0.578236,
		-0.029076, -0.913620, -0.405528,
		36.128254, 34.191521, 37.614288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750050, 34.633030, 37.829334>,  <36.148609, 34.831055, 37.898159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750050, 34.633030, 37.829334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575439, 34.415146, 37.542912>,  <36.470673, 34.284416, 37.371059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575439, 34.415146, 37.542912>,  <36.750050, 34.633030, 37.829334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575439, 34.415146, 37.542912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688801, 0.309668, -0.655483,
		0.578790, -0.779353, 0.240022,
		-0.436526, -0.544714, -0.716052,
		36.444481, 34.251732, 37.328094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227699, 34.282219, 37.480309>,  <36.750050, 34.633030, 37.829334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227699, 34.282219, 37.480309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911114, 34.293049, 37.236061>,  <36.721161, 34.299545, 37.089512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911114, 34.293049, 37.236061>,  <37.227699, 34.282219, 37.480309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911114, 34.293049, 37.236061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609374, 0.112406, -0.784874,
		0.047386, -0.993293, -0.105465,
		-0.791465, 0.027075, -0.610614,
		36.673676, 34.301170, 37.052876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447197, 33.875080, 36.859943>,  <37.227699, 34.282219, 37.480309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447197, 33.875080, 36.859943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143513, 34.108749, 36.745159>,  <36.961304, 34.248951, 36.676289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143513, 34.108749, 36.745159>,  <37.447197, 33.875080, 36.859943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143513, 34.108749, 36.745159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541240, 0.321797, -0.776857,
		-0.361472, -0.745112, -0.560487,
		-0.759209, 0.584170, -0.286964,
		36.915749, 34.284000, 36.659069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390724, 33.778244, 36.137688>,  <37.447197, 33.875080, 36.859943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390724, 33.778244, 36.137688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210678, 34.122021, 36.234646>,  <37.102650, 34.328289, 36.292820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210678, 34.122021, 36.234646>,  <37.390724, 33.778244, 36.137688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210678, 34.122021, 36.234646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436522, 0.448572, -0.779893,
		-0.779005, -0.245229, -0.577074,
		-0.450111, 0.859445, 0.242391,
		37.075645, 34.379856, 36.307362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224136, 33.997715, 35.514187>,  <37.390724, 33.778244, 36.137688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224136, 33.997715, 35.514187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212891, 34.328854, 35.738285>,  <37.206142, 34.527538, 35.872746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212891, 34.328854, 35.738285>,  <37.224136, 33.997715, 35.514187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212891, 34.328854, 35.738285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442456, 0.512881, -0.735653,
		-0.896349, 0.227203, -0.380706,
		-0.028114, 0.827848, 0.560248,
		37.204456, 34.577209, 35.906361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260990, 34.635197, 35.103512>,  <37.224136, 33.997715, 35.514187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260990, 34.635197, 35.103512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333523, 34.805428, 35.458138>,  <37.377045, 34.907566, 35.670914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333523, 34.805428, 35.458138>,  <37.260990, 34.635197, 35.103512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333523, 34.805428, 35.458138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595136, 0.670200, -0.443446,
		-0.782899, 0.608040, -0.131748,
		0.181335, 0.425581, 0.886565,
		37.387924, 34.933102, 35.724106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281658, 35.270412, 35.096626>,  <37.260990, 34.635197, 35.103512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281658, 35.270412, 35.096626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516407, 35.169796, 35.404472>,  <37.657257, 35.109425, 35.589180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516407, 35.169796, 35.404472>,  <37.281658, 35.270412, 35.096626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516407, 35.169796, 35.404472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650778, 0.712074, -0.263512,
		-0.481741, 0.655498, 0.581592,
		0.586868, -0.251542, 0.769619,
		37.692467, 35.094334, 35.635357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445477, 35.654789, 35.686073>,  <37.281658, 35.270412, 35.096626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445477, 35.654789, 35.686073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763809, 35.439152, 35.575771>,  <37.954807, 35.309769, 35.509590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763809, 35.439152, 35.575771>,  <37.445477, 35.654789, 35.686073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763809, 35.439152, 35.575771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540250, 0.837814, -0.078729,
		0.273474, -0.086323, 0.957998,
		0.795828, -0.539088, -0.275756,
		38.002556, 35.277424, 35.493046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034470, 35.955574, 36.049129>,  <37.445477, 35.654789, 35.686073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034470, 35.955574, 36.049129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160122, 35.756683, 35.725628>,  <38.235512, 35.637348, 35.531525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160122, 35.756683, 35.725628>,  <38.034470, 35.955574, 36.049129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160122, 35.756683, 35.725628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682416, 0.710498, -0.171761,
		0.660025, -0.497955, 0.562502,
		0.314127, -0.497227, -0.808758,
		38.254360, 35.607517, 35.483002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719067, 35.666153, 36.185860>,  <38.034470, 35.955574, 36.049129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719067, 35.666153, 36.185860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626667, 35.761505, 35.808540>,  <38.571228, 35.818718, 35.582150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626667, 35.761505, 35.808540>,  <38.719067, 35.666153, 36.185860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626667, 35.761505, 35.808540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774005, 0.632482, -0.029708,
		0.589539, -0.736982, -0.330609,
		-0.230998, 0.238379, -0.943300,
		38.557369, 35.833019, 35.525551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346523, 35.748108, 35.947422>,  <38.719067, 35.666153, 36.185860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346523, 35.748108, 35.947422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090511, 35.910149, 35.686272>,  <38.936905, 36.007374, 35.529579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090511, 35.910149, 35.686272>,  <39.346523, 35.748108, 35.947422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090511, 35.910149, 35.686272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746371, 0.529568, -0.403098,
		0.182447, -0.745286, -0.641297,
		-0.640034, 0.405102, -0.652878,
		38.898502, 36.031681, 35.490410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899807, 35.945580, 36.462379>,  <39.346523, 35.748108, 35.947422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899807, 35.945580, 36.462379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144485, 36.150021, 36.220848>,  <40.291294, 36.272686, 36.075932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144485, 36.150021, 36.220848>,  <39.899807, 35.945580, 36.462379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144485, 36.150021, 36.220848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769610, 0.561136, -0.304674,
		0.183108, 0.651078, 0.736593,
		0.611695, 0.511101, -0.603825,
		40.327995, 36.303352, 36.039700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526848, 35.995342, 36.333290>,  <39.899807, 35.945580, 36.462379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526848, 35.995342, 36.333290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618279, 35.623920, 36.216305>,  <40.673138, 35.401066, 36.146114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618279, 35.623920, 36.216305>,  <40.526848, 35.995342, 36.333290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618279, 35.623920, 36.216305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782783, 0.353911, -0.511857,
		0.578795, -0.111938, 0.807754,
		0.228577, -0.928557, -0.292465,
		40.686852, 35.345352, 36.128567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014740, 36.463940, 35.976833>,  <40.526848, 35.995342, 36.333290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014740, 36.463940, 35.976833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354908, 36.264011, 36.042519>,  <41.559010, 36.144054, 36.081928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354908, 36.264011, 36.042519>,  <41.014740, 36.463940, 35.976833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354908, 36.264011, 36.042519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270001, 0.682526, 0.679159,
		-0.451538, -0.533232, 0.715386,
		0.850419, -0.499821, 0.164213,
		41.610035, 36.114067, 36.091782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211086, 36.717213, 36.720505>,  <41.014740, 36.463940, 35.976833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211086, 36.717213, 36.720505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543938, 36.554680, 36.569527>,  <41.743649, 36.457161, 36.478939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543938, 36.554680, 36.569527>,  <41.211086, 36.717213, 36.720505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543938, 36.554680, 36.569527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554053, 0.638954, 0.533631,
		0.024336, -0.653171, 0.756820,
		0.832126, -0.406332, -0.377441,
		41.793575, 36.432781, 36.456295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608265, 36.574081, 37.266167>,  <41.211086, 36.717213, 36.720505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608265, 36.574081, 37.266167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845638, 36.605610, 36.945763>,  <41.988064, 36.624527, 36.753521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845638, 36.605610, 36.945763>,  <41.608265, 36.574081, 37.266167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845638, 36.605610, 36.945763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619946, 0.589934, 0.517344,
		0.513323, -0.803595, 0.301222,
		0.593436, 0.078824, -0.801012,
		42.023670, 36.629257, 36.705460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256767, 36.659832, 37.573414>,  <41.608265, 36.574081, 37.266167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256767, 36.659832, 37.573414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320518, 36.784695, 37.198788>,  <42.358768, 36.859612, 36.974010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320518, 36.784695, 37.198788>,  <42.256767, 36.659832, 37.573414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320518, 36.784695, 37.198788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713821, 0.618903, 0.327749,
		0.681952, -0.720777, -0.124183,
		0.159377, 0.312153, -0.936568,
		42.368332, 36.878342, 36.917816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989292, 36.721222, 37.455971>,  <42.256767, 36.659832, 37.573414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989292, 36.721222, 37.455971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807999, 36.974960, 37.205475>,  <42.699223, 37.127205, 37.055176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807999, 36.974960, 37.205475>,  <42.989292, 36.721222, 37.455971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807999, 36.974960, 37.205475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611413, 0.732466, 0.299446,
		0.648653, -0.247171, -0.719830,
		-0.453236, 0.634350, -0.626240,
		42.672028, 37.165264, 37.017601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513203, 37.054924, 37.119225>,  <42.989292, 36.721222, 37.455971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513203, 37.054924, 37.119225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219707, 37.305130, 37.013130>,  <43.043610, 37.455254, 36.949474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219707, 37.305130, 37.013130>,  <43.513203, 37.054924, 37.119225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219707, 37.305130, 37.013130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649830, 0.760062, -0.005177,
		0.198357, -0.176156, -0.964170,
		-0.733741, 0.625519, -0.265235,
		42.999584, 37.492786, 36.933559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794849, 37.426144, 36.555115>,  <43.513203, 37.054924, 37.119225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794849, 37.426144, 36.555115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490959, 37.653015, 36.682320>,  <43.308624, 37.789139, 36.758644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490959, 37.653015, 36.682320>,  <43.794849, 37.426144, 36.555115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490959, 37.653015, 36.682320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491905, 0.821151, -0.289380,
		-0.425267, -0.063416, -0.902843,
		-0.759722, 0.567177, 0.318014,
		43.263042, 37.823170, 36.777725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745453, 37.927391, 35.974010>,  <43.794849, 37.426144, 36.555115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745453, 37.927391, 35.974010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551933, 38.091026, 36.283485>,  <43.435822, 38.189209, 36.469170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551933, 38.091026, 36.283485>,  <43.745453, 37.927391, 35.974010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551933, 38.091026, 36.283485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461614, 0.870337, -0.171542,
		-0.743541, 0.274152, -0.609908,
		-0.483796, 0.409090, 0.773684,
		43.406796, 38.213753, 36.515591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455170, 38.569912, 35.739319>,  <43.745453, 37.927391, 35.974010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455170, 38.569912, 35.739319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480038, 38.606281, 36.136887>,  <43.494961, 38.628101, 36.375427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480038, 38.606281, 36.136887>,  <43.455170, 38.569912, 35.739319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480038, 38.606281, 36.136887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420704, 0.900662, -0.108707,
		-0.905065, 0.424902, 0.017745,
		0.062172, 0.090922, 0.993915,
		43.498688, 38.633556, 36.435062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200977, 39.203403, 35.902374>,  <43.455170, 38.569912, 35.739319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200977, 39.203403, 35.902374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433090, 39.098442, 36.210770>,  <43.572357, 39.035465, 36.395805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433090, 39.098442, 36.210770>,  <43.200977, 39.203403, 35.902374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433090, 39.098442, 36.210770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338190, 0.938831, 0.064993,
		-0.740880, 0.223026, 0.633527,
		0.580279, -0.262405, 0.770986,
		43.607174, 39.019722, 36.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249989, 39.783432, 36.449757>,  <43.200977, 39.203403, 35.902374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249989, 39.783432, 36.449757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576393, 39.580696, 36.560917>,  <43.772236, 39.459053, 36.627613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576393, 39.580696, 36.560917>,  <43.249989, 39.783432, 36.449757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576393, 39.580696, 36.560917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492953, 0.861271, 0.123327,
		-0.301853, 0.036354, 0.952661,
		0.816016, -0.506844, 0.277898,
		43.821198, 39.428642, 36.644287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505791, 39.995449, 37.150425>,  <43.249989, 39.783432, 36.449757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505791, 39.995449, 37.150425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843716, 39.837978, 37.005478>,  <44.046471, 39.743496, 36.918510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843716, 39.837978, 37.005478>,  <43.505791, 39.995449, 37.150425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843716, 39.837978, 37.005478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509977, 0.797377, 0.322666,
		0.161916, -0.457391, 0.874401,
		0.844811, -0.393679, -0.362367,
		44.097160, 39.719875, 36.896767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027927, 40.307610, 37.532536>,  <43.505791, 39.995449, 37.150425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027927, 40.307610, 37.532536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235126, 40.129887, 37.240162>,  <44.359447, 40.023254, 37.064735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235126, 40.129887, 37.240162>,  <44.027927, 40.307610, 37.532536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235126, 40.129887, 37.240162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689895, 0.722186, 0.049926,
		0.505691, -0.530131, 0.680616,
		0.517998, -0.444306, -0.730937,
		44.390526, 39.996593, 37.020882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746841, 40.268036, 37.772038>,  <44.027927, 40.307610, 37.532536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746841, 40.268036, 37.772038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734726, 40.255207, 37.372425>,  <44.727455, 40.247509, 37.132660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734726, 40.255207, 37.372425>,  <44.746841, 40.268036, 37.772038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734726, 40.255207, 37.372425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671076, 0.740076, -0.044109,
		0.740770, -0.671759, -0.000895,
		-0.030293, -0.032074, -0.999026,
		44.725639, 40.245586, 37.072716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270592, 40.687546, 37.521740>,  <44.746841, 40.268036, 37.772038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270592, 40.687546, 37.521740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154121, 40.627094, 37.143875>,  <45.084240, 40.590824, 36.917156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154121, 40.627094, 37.143875>,  <45.270592, 40.687546, 37.521740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154121, 40.627094, 37.143875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736930, 0.594233, -0.322213,
		0.610042, -0.789966, -0.061653,
		-0.291174, -0.151130, -0.944658,
		45.066769, 40.581757, 36.860477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685982, 40.319153, 37.168747>,  <45.270592, 40.687546, 37.521740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685982, 40.319153, 37.168747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500366, 40.539829, 36.891529>,  <45.388996, 40.672234, 36.725201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500366, 40.539829, 36.891529>,  <45.685982, 40.319153, 37.168747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500366, 40.539829, 36.891529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873984, 0.412579, -0.256769,
		0.144277, -0.724858, -0.673621,
		-0.464043, 0.551688, -0.693040,
		45.361153, 40.705334, 36.683617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160255, 40.383224, 36.640545>,  <45.685982, 40.319153, 37.168747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160255, 40.383224, 36.640545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903450, 40.672802, 36.539566>,  <45.749367, 40.846546, 36.478977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903450, 40.672802, 36.539566>,  <46.160255, 40.383224, 36.640545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903450, 40.672802, 36.539566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759793, 0.556670, -0.335907,
		-0.102645, -0.407467, -0.907433,
		-0.642011, 0.723940, -0.252451,
		45.710846, 40.889984, 36.463829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214191, 40.482677, 35.867123>,  <46.160255, 40.383224, 36.640545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214191, 40.482677, 35.867123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063858, 40.812084, 36.037098>,  <45.973660, 41.009727, 36.139084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063858, 40.812084, 36.037098>,  <46.214191, 40.482677, 35.867123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063858, 40.812084, 36.037098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655088, 0.560437, -0.506725,
		-0.655448, 0.087931, -0.750104,
		-0.375829, 0.823516, 0.424940,
		45.951111, 41.059139, 36.164581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225998, 40.890060, 35.333218>,  <46.214191, 40.482677, 35.867123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225998, 40.890060, 35.333218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165188, 41.155231, 35.626450>,  <46.128700, 41.314335, 35.802391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165188, 41.155231, 35.626450>,  <46.225998, 40.890060, 35.333218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165188, 41.155231, 35.626450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591937, 0.655043, -0.469605,
		-0.791517, 0.362547, -0.491997,
		-0.152025, 0.662932, 0.733082,
		46.119579, 41.354111, 35.846375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032150, 41.434433, 34.955948>,  <46.225998, 40.890060, 35.333218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032150, 41.434433, 34.955948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171482, 41.554356, 35.311203>,  <46.255081, 41.626308, 35.524357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171482, 41.554356, 35.311203>,  <46.032150, 41.434433, 34.955948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171482, 41.554356, 35.311203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632073, 0.624543, -0.458727,
		-0.692206, 0.721155, 0.028050,
		0.348332, 0.299804, 0.888134,
		46.275982, 41.644299, 35.577644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084766, 42.162392, 34.891644>,  <46.032150, 41.434433, 34.955948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084766, 42.162392, 34.891644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343410, 42.048191, 35.174595>,  <46.498596, 41.979671, 35.344364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343410, 42.048191, 35.174595>,  <46.084766, 42.162392, 34.891644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343410, 42.048191, 35.174595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640529, 0.706815, -0.300226,
		-0.414271, 0.647226, 0.639905,
		0.646608, -0.285503, 0.707379,
		46.537392, 41.962540, 35.386810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.314240, 42.844799, 35.095135>,  <46.084766, 42.162392, 34.891644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.314240, 42.844799, 35.095135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569576, 42.541794, 35.149818>,  <46.722778, 42.359989, 35.182629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569576, 42.541794, 35.149818>,  <46.314240, 42.844799, 35.095135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569576, 42.541794, 35.149818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735303, 0.547539, -0.399412,
		0.227705, 0.355487, 0.906521,
		0.638341, -0.757516, 0.136713,
		46.761078, 42.314541, 35.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713509, 42.736042, 34.504215>,  <46.314240, 42.844799, 35.095135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713509, 42.736042, 34.504215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021477, 42.991077, 34.514786>,  <47.206257, 43.144100, 34.521130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021477, 42.991077, 34.514786>,  <46.713509, 42.736042, 34.504215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021477, 42.991077, 34.514786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208182, -0.211812, -0.954880,
		-0.603225, 0.740685, -0.295814,
		0.769922, 0.637590, 0.026427,
		47.252453, 43.182354, 34.522713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604477, 43.178551, 33.995758>,  <46.713509, 42.736042, 34.504215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604477, 43.178551, 33.995758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989189, 43.118435, 34.087322>,  <47.220016, 43.082367, 34.142262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989189, 43.118435, 34.087322>,  <46.604477, 43.178551, 33.995758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989189, 43.118435, 34.087322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158797, -0.374932, -0.913351,
		0.223091, 0.914789, -0.336736,
		0.961776, -0.150288, 0.228910,
		47.277721, 43.073349, 34.155994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.005939, 43.486076, 33.565060>,  <46.604477, 43.178551, 33.995758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.005939, 43.486076, 33.565060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246891, 43.187237, 33.677475>,  <47.391460, 43.007935, 33.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246891, 43.187237, 33.677475>,  <47.005939, 43.486076, 33.565060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246891, 43.187237, 33.677475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167986, -0.225549, -0.959640,
		0.780335, 0.625275, -0.010363,
		0.602376, -0.747100, 0.281042,
		47.427605, 42.963108, 33.761787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824970, 44.214100, 33.588543>,  <47.005939, 43.486076, 33.565060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824970, 44.214100, 33.588543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802067, 44.248722, 33.190704>,  <46.788326, 44.269497, 32.952000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802067, 44.248722, 33.190704>,  <46.824970, 44.214100, 33.588543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802067, 44.248722, 33.190704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244598, -0.964656, -0.098031,
		-0.967933, -0.248890, 0.034062,
		-0.057257, 0.086556, -0.994601,
		46.784889, 44.274689, 32.892323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341896, 43.711700, 33.279755>,  <46.824970, 44.214100, 33.588543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341896, 43.711700, 33.279755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594452, 43.799816, 32.982346>,  <46.745987, 43.852684, 32.803902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594452, 43.799816, 32.982346>,  <46.341896, 43.711700, 33.279755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594452, 43.799816, 32.982346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400034, -0.913904, 0.068939,
		-0.664320, -0.340961, -0.665150,
		0.631389, 0.220285, -0.743520,
		46.783867, 43.865902, 32.759289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340927, 43.245129, 32.625858>,  <46.341896, 43.711700, 33.279755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340927, 43.245129, 32.625858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694801, 43.402298, 32.726215>,  <46.907124, 43.496601, 32.786430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694801, 43.402298, 32.726215>,  <46.340927, 43.245129, 32.625858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694801, 43.402298, 32.726215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364124, -0.918453, 0.154456,
		0.291123, -0.045288, -0.955613,
		0.884681, 0.392928, 0.250892,
		46.960205, 43.520176, 32.801483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845955, 42.871563, 32.269566>,  <46.340927, 43.245129, 32.625858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845955, 42.871563, 32.269566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.978336, 43.014984, 32.618717>,  <47.057766, 43.101036, 32.828209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.978336, 43.014984, 32.618717>,  <46.845955, 42.871563, 32.269566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.978336, 43.014984, 32.618717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166097, -0.932694, 0.320146,
		0.928915, 0.039029, -0.368230,
		0.330951, 0.358551, 0.872876,
		47.077621, 43.122551, 32.880581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.460587, 42.584171, 32.473576>,  <46.845955, 42.871563, 32.269566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.460587, 42.584171, 32.473576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.272564, 42.683529, 32.812363>,  <47.159748, 42.743141, 33.015633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.272564, 42.683529, 32.812363>,  <47.460587, 42.584171, 32.473576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.272564, 42.683529, 32.812363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124611, -0.931298, 0.342282,
		0.873794, 0.266434, 0.406813,
		-0.470060, 0.248390, 0.846963,
		47.131546, 42.758045, 33.066452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.894287, 42.448570, 33.019684>,  <47.460587, 42.584171, 32.473576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.894287, 42.448570, 33.019684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511086, 42.381027, 33.112389>,  <47.281166, 42.340500, 33.168011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511086, 42.381027, 33.112389>,  <47.894287, 42.448570, 33.019684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.511086, 42.381027, 33.112389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194335, -0.976637, 0.091726,
		0.210858, 0.132913, 0.968438,
		-0.958005, -0.168860, 0.231762,
		47.223682, 42.330368, 33.181915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726154, 42.207027, 33.806282>,  <47.894287, 42.448570, 33.019684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726154, 42.207027, 33.806282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476551, 42.071129, 33.524803>,  <47.326790, 41.989590, 33.355915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476551, 42.071129, 33.524803>,  <47.726154, 42.207027, 33.806282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.476551, 42.071129, 33.524803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203533, -0.940118, 0.273409,
		-0.754447, 0.027384, 0.655790,
		-0.624007, -0.339748, -0.703695,
		47.289349, 41.969204, 33.313694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330330, 41.697689, 34.223873>,  <47.726154, 42.207027, 33.806282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330330, 41.697689, 34.223873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.232323, 41.613865, 33.845234>,  <47.173519, 41.563572, 33.618050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.232323, 41.613865, 33.845234>,  <47.330330, 41.697689, 34.223873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.232323, 41.613865, 33.845234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075320, -0.977525, 0.196908,
		-0.966588, -0.023051, 0.255297,
		-0.245020, -0.209558, -0.946599,
		47.158817, 41.550999, 33.561253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705654, 41.377460, 34.292362>,  <47.330330, 41.697689, 34.223873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705654, 41.377460, 34.292362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865257, 41.248085, 33.949158>,  <46.961021, 41.170460, 33.743237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865257, 41.248085, 33.949158>,  <46.705654, 41.377460, 34.292362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865257, 41.248085, 33.949158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125215, -0.946177, 0.298445,
		-0.908355, -0.011648, -0.418037,
		0.399014, -0.323438, -0.858006,
		46.984962, 41.151054, 33.691757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205200, 40.900898, 34.142258>,  <46.705654, 41.377460, 34.292362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205200, 40.900898, 34.142258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515953, 40.799797, 33.911579>,  <46.702404, 40.739136, 33.773170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515953, 40.799797, 33.911579>,  <46.205200, 40.900898, 34.142258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.515953, 40.799797, 33.911579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195479, -0.967456, 0.160678,
		-0.598538, -0.012096, -0.801003,
		0.776878, -0.252752, -0.576695,
		46.749016, 40.723972, 33.738571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029709, 40.400024, 33.652779>,  <46.205200, 40.900898, 34.142258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029709, 40.400024, 33.652779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418282, 40.364700, 33.740887>,  <46.651424, 40.343506, 33.793751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418282, 40.364700, 33.740887>,  <46.029709, 40.400024, 33.652779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.418282, 40.364700, 33.740887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141561, -0.960595, 0.239203,
		0.190466, -0.263551, -0.945655,
		0.971434, -0.088308, 0.220269,
		46.709713, 40.338207, 33.806969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.277523, 39.798504, 33.273842>,  <46.029709, 40.400024, 33.652779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.277523, 39.798504, 33.273842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530945, 39.875538, 33.573582>,  <46.682999, 39.921757, 33.753426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530945, 39.875538, 33.573582>,  <46.277523, 39.798504, 33.273842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530945, 39.875538, 33.573582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137182, -0.925221, 0.353763,
		0.761442, -0.326924, -0.559756,
		0.633551, 0.192581, 0.749350,
		46.721012, 39.933311, 33.798386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.623363, 39.231781, 33.330738>,  <46.277523, 39.798504, 33.273842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.623363, 39.231781, 33.330738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717300, 39.409515, 33.676552>,  <46.773663, 39.516155, 33.884041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717300, 39.409515, 33.676552>,  <46.623363, 39.231781, 33.330738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717300, 39.409515, 33.676552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054361, -0.894015, 0.444728,
		0.970513, -0.057443, -0.234106,
		0.234840, 0.444340, 0.864530,
		46.787754, 39.542816, 33.935909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808945, 38.709438, 33.697422>,  <46.623363, 39.231781, 33.330738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808945, 38.709438, 33.697422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773052, 38.974564, 33.994778>,  <46.751514, 39.133640, 34.173191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773052, 38.974564, 33.994778>,  <46.808945, 38.709438, 33.697422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773052, 38.974564, 33.994778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102074, -0.748588, 0.655131,
		0.990721, -0.017093, 0.134830,
		-0.089734, 0.662815, 0.743387,
		46.746132, 39.173409, 34.217793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.298588, 38.478580, 34.263012>,  <46.808945, 38.709438, 33.697422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.298588, 38.478580, 34.263012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007858, 38.704094, 34.419918>,  <46.833420, 38.839401, 34.514061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007858, 38.704094, 34.419918>,  <47.298588, 38.478580, 34.263012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007858, 38.704094, 34.419918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243544, -0.745574, 0.620327,
		0.642194, 0.355335, 0.679208,
		-0.726824, 0.563788, 0.392263,
		46.789810, 38.873230, 34.537598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333370, 38.291378, 34.978226>,  <47.298588, 38.478580, 34.263012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333370, 38.291378, 34.978226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972084, 38.445961, 34.903557>,  <46.755310, 38.538712, 34.858757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972084, 38.445961, 34.903557>,  <47.333370, 38.291378, 34.978226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.972084, 38.445961, 34.903557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418338, -0.695628, 0.584033,
		0.095847, 0.605602, 0.789974,
		-0.903220, 0.386455, -0.186673,
		46.701118, 38.561897, 34.847553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910782, 38.285816, 35.623257>,  <47.333370, 38.291378, 34.978226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910782, 38.285816, 35.623257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632187, 38.321091, 35.338406>,  <46.465031, 38.342255, 35.167496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632187, 38.321091, 35.338406>,  <46.910782, 38.285816, 35.623257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632187, 38.321091, 35.338406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521678, -0.743658, 0.418120,
		-0.492709, 0.662718, 0.563953,
		-0.696484, 0.088190, -0.712132,
		46.423241, 38.347549, 35.124767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214607, 38.357597, 35.829243>,  <46.910782, 38.285816, 35.623257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214607, 38.357597, 35.829243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173084, 38.184631, 35.470970>,  <46.148170, 38.080853, 35.256008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173084, 38.184631, 35.470970>,  <46.214607, 38.357597, 35.829243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173084, 38.184631, 35.470970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486966, -0.763124, 0.424859,
		-0.867230, 0.480270, -0.131350,
		-0.103811, -0.432414, -0.895679,
		46.141941, 38.054909, 35.202267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632023, 38.088573, 35.945137>,  <46.214607, 38.357597, 35.829243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632023, 38.088573, 35.945137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716549, 37.930359, 35.587612>,  <45.767265, 37.835430, 35.373096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716549, 37.930359, 35.587612>,  <45.632023, 38.088573, 35.945137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716549, 37.930359, 35.587612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602762, -0.772606, 0.199395,
		-0.769430, 0.496619, -0.401679,
		0.211316, -0.395538, -0.893809,
		45.779942, 37.811699, 35.319469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037785, 37.730293, 35.790974>,  <45.632023, 38.088573, 35.945137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037785, 37.730293, 35.790974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327679, 37.573463, 35.564335>,  <45.501614, 37.479366, 35.428352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327679, 37.573463, 35.564335>,  <45.037785, 37.730293, 35.790974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327679, 37.573463, 35.564335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351348, -0.917663, 0.185603,
		-0.592716, 0.064560, -0.802820,
		0.724736, -0.392079, -0.566597,
		45.545101, 37.455841, 35.394356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625278, 37.354290, 35.339184>,  <45.037785, 37.730293, 35.790974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625278, 37.354290, 35.339184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990143, 37.190987, 35.324795>,  <45.209061, 37.093006, 35.316162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990143, 37.190987, 35.324795>,  <44.625278, 37.354290, 35.339184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990143, 37.190987, 35.324795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394009, -0.897700, 0.197210,
		-0.112806, -0.165712, -0.979701,
		0.912158, -0.408257, -0.035974,
		45.263790, 37.068508, 35.314003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520432, 36.746372, 35.073875>,  <44.625278, 37.354290, 35.339184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520432, 36.746372, 35.073875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876968, 36.695812, 35.248013>,  <45.090893, 36.665478, 35.352497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876968, 36.695812, 35.248013>,  <44.520432, 36.746372, 35.073875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876968, 36.695812, 35.248013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219720, -0.960460, 0.170998,
		0.396517, -0.248073, -0.883875,
		0.891346, -0.126401, 0.435345,
		45.144371, 36.657890, 35.378616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901787, 36.191757, 34.632298>,  <44.520432, 36.746372, 35.073875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901787, 36.191757, 34.632298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037224, 36.216976, 35.007824>,  <45.118488, 36.232109, 35.233139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037224, 36.216976, 35.007824>,  <44.901787, 36.191757, 34.632298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037224, 36.216976, 35.007824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300932, -0.938092, 0.171533,
		0.891512, -0.340600, -0.298661,
		0.338595, 0.063047, 0.938818,
		45.138802, 36.235889, 35.289471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199749, 35.563976, 34.621124>,  <44.901787, 36.191757, 34.632298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199749, 35.563976, 34.621124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150127, 35.711838, 34.989464>,  <45.120354, 35.800556, 35.210468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150127, 35.711838, 34.989464>,  <45.199749, 35.563976, 34.621124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150127, 35.711838, 34.989464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427657, -0.857324, 0.286540,
		0.895388, -0.358260, 0.264444,
		-0.124058, 0.369656, 0.920850,
		45.112911, 35.822735, 35.265720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574554, 35.134506, 35.111980>,  <45.199749, 35.563976, 34.621124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574554, 35.134506, 35.111980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273228, 35.308109, 35.309624>,  <45.092430, 35.412273, 35.428211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273228, 35.308109, 35.309624>,  <45.574554, 35.134506, 35.111980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273228, 35.308109, 35.309624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283932, -0.892326, 0.350909,
		0.593208, 0.124051, 0.795434,
		-0.753317, 0.434012, 0.494113,
		45.047234, 35.438313, 35.457859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604889, 34.738605, 35.758884>,  <45.574554, 35.134506, 35.111980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604889, 34.738605, 35.758884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253368, 34.926903, 35.727638>,  <45.042454, 35.039883, 35.708889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.253368, 34.926903, 35.727638>,  <45.604889, 34.738605, 35.758884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253368, 34.926903, 35.727638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462384, -0.799616, 0.383164,
		0.117910, 0.372845, 0.920372,
		-0.878805, 0.470744, -0.078115,
		44.989727, 35.068127, 35.704205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305077, 34.756718, 35.530533>,  <45.604889, 34.738605, 35.758884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305077, 34.756718, 35.530533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573181, 34.493553, 35.667881>,  <46.734043, 34.335655, 35.750290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573181, 34.493553, 35.667881>,  <46.305077, 34.756718, 35.530533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.573181, 34.493553, 35.667881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741820, 0.580749, -0.335311,
		0.021190, 0.479468, 0.877304,
		0.670264, -0.657907, 0.343372,
		46.774261, 34.296181, 35.770893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889610, 35.127945, 35.965214>,  <46.305077, 34.756718, 35.530533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889610, 35.127945, 35.965214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984211, 34.776890, 35.798447>,  <47.040974, 34.566257, 35.698387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984211, 34.776890, 35.798447>,  <46.889610, 35.127945, 35.965214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984211, 34.776890, 35.798447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721757, 0.445956, -0.529329,
		0.650485, -0.175725, 0.738911,
		0.236506, -0.877636, -0.416918,
		47.055164, 34.513599, 35.673370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.577362, 35.023373, 36.102032>,  <46.889610, 35.127945, 35.965214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.577362, 35.023373, 36.102032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430920, 34.899811, 35.750908>,  <47.343056, 34.825672, 35.540234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430920, 34.899811, 35.750908>,  <47.577362, 35.023373, 36.102032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.430920, 34.899811, 35.750908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670118, 0.566999, -0.479014,
		0.645685, -0.763603, -0.000578,
		-0.366104, -0.308905, -0.877807,
		47.321087, 34.807140, 35.487564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.169422, 35.061573, 35.671341>,  <47.577362, 35.023373, 36.102032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.169422, 35.061573, 35.671341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843941, 35.093590, 35.441044>,  <47.648651, 35.112801, 35.302868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843941, 35.093590, 35.441044>,  <48.169422, 35.061573, 35.671341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843941, 35.093590, 35.441044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526900, 0.519847, -0.672411,
		0.245479, -0.850502, -0.465174,
		-0.813706, 0.080038, -0.575741,
		47.599831, 35.117599, 35.268322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.323284, 34.647366, 35.027172>,  <48.169422, 35.061573, 35.671341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.323284, 34.647366, 35.027172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.102337, 34.980499, 35.012890>,  <47.969769, 35.180382, 35.004322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.102337, 34.980499, 35.012890>,  <48.323284, 34.647366, 35.027172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.102337, 34.980499, 35.012890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715969, 0.452046, -0.532018,
		-0.426944, -0.319431, -0.845980,
		-0.552365, 0.832837, -0.035704,
		47.936626, 35.230350, 35.002178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.775852, 38.148079, 43.805141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.382767, 38.096638, 43.751869>,  <33.146915, 38.065773, 43.719906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.382767, 38.096638, 43.751869>,  <33.775852, 38.148079, 43.805141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382767, 38.096638, 43.751869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172691, -0.377472, -0.909776,
		0.066734, -0.917047, 0.393156,
		-0.982713, -0.128608, -0.133176,
		33.087952, 38.058056, 43.711918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748329, 37.658249, 43.423840>,  <33.775852, 38.148079, 43.805141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748329, 37.658249, 43.423840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.374123, 37.784336, 43.360031>,  <33.149597, 37.859989, 43.321747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.374123, 37.784336, 43.360031>,  <33.748329, 37.658249, 43.423840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374123, 37.784336, 43.360031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012162, -0.422533, -0.906266,
		-0.353071, -0.849768, 0.391453,
		-0.935517, 0.315216, -0.159519,
		33.093468, 37.878902, 43.312176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351383, 37.092735, 43.077019>,  <33.748329, 37.658249, 43.423840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351383, 37.092735, 43.077019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.174671, 37.437374, 42.977036>,  <33.068645, 37.644157, 42.917046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.174671, 37.437374, 42.977036>,  <33.351383, 37.092735, 43.077019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174671, 37.437374, 42.977036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096413, -0.322600, -0.941612,
		-0.891930, -0.391882, 0.225587,
		-0.441776, 0.861602, -0.249954,
		33.042137, 37.695854, 42.902050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744175, 36.931057, 42.665977>,  <33.351383, 37.092735, 43.077019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744175, 36.931057, 42.665977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.888817, 37.292583, 42.574440>,  <32.975601, 37.509499, 42.519520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.888817, 37.292583, 42.574440>,  <32.744175, 36.931057, 42.665977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888817, 37.292583, 42.574440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090385, -0.278275, -0.956239,
		-0.927941, 0.325094, -0.182316,
		0.361602, 0.903812, -0.228839,
		32.997299, 37.563728, 42.505787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228741, 37.145195, 42.202087>,  <32.744175, 36.931057, 42.665977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228741, 37.145195, 42.202087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.530186, 37.393909, 42.116806>,  <32.711052, 37.543137, 42.065639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.530186, 37.393909, 42.116806>,  <32.228741, 37.145195, 42.202087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530186, 37.393909, 42.116806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074000, -0.242032, -0.967442,
		-0.653145, 0.744850, -0.136385,
		0.753609, 0.621787, -0.213200,
		32.756268, 37.580444, 42.052845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082256, 37.388882, 41.557526>,  <32.228741, 37.145195, 42.202087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082256, 37.388882, 41.557526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.471779, 37.473930, 41.589760>,  <32.705494, 37.524960, 41.609100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.471779, 37.473930, 41.589760>,  <32.082256, 37.388882, 41.557526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471779, 37.473930, 41.589760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129513, -0.227348, -0.965163,
		-0.186894, 0.950318, -0.248931,
		0.973805, 0.212623, 0.080589,
		32.763920, 37.537716, 41.613937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263542, 37.848167, 40.985584>,  <32.082256, 37.388882, 41.557526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263542, 37.848167, 40.985584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.607815, 37.678188, 41.097755>,  <32.814381, 37.576202, 41.165058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.607815, 37.678188, 41.097755>,  <32.263542, 37.848167, 40.985584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607815, 37.678188, 41.097755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277925, -0.069355, -0.958096,
		0.426591, 0.902556, 0.058411,
		0.860684, -0.424949, 0.280429,
		32.866020, 37.550705, 41.181885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761726, 38.196526, 40.679035>,  <32.263542, 37.848167, 40.985584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761726, 38.196526, 40.679035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.941742, 37.847237, 40.753815>,  <33.049751, 37.637665, 40.798683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.941742, 37.847237, 40.753815>,  <32.761726, 38.196526, 40.679035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941742, 37.847237, 40.753815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377854, -0.003485, -0.925859,
		0.809131, 0.487312, 0.328381,
		0.450038, -0.873221, 0.186953,
		33.076752, 37.585270, 40.809902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494301, 38.285797, 40.421700>,  <32.761726, 38.196526, 40.679035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494301, 38.285797, 40.421700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.406727, 37.897785, 40.463860>,  <33.354183, 37.664978, 40.489155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.406727, 37.897785, 40.463860>,  <33.494301, 38.285797, 40.421700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406727, 37.897785, 40.463860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416959, -0.190666, -0.888703,
		0.882164, -0.150623, 0.446206,
		-0.218935, -0.970031, 0.105395,
		33.341045, 37.606777, 40.495480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146694, 38.018318, 40.146877>,  <33.494301, 38.285797, 40.421700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146694, 38.018318, 40.146877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.890945, 37.712196, 40.176605>,  <33.737495, 37.528522, 40.194443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.890945, 37.712196, 40.176605>,  <34.146694, 38.018318, 40.146877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890945, 37.712196, 40.176605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428826, -0.435140, -0.791683,
		0.638213, -0.474309, 0.606395,
		-0.639369, -0.765300, 0.074316,
		33.699135, 37.482605, 40.198898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568840, 37.447632, 40.089817>,  <34.146694, 38.018318, 40.146877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568840, 37.447632, 40.089817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.206982, 37.312679, 39.985676>,  <33.989864, 37.231709, 39.923191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.206982, 37.312679, 39.985676>,  <34.568840, 37.447632, 40.089817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206982, 37.312679, 39.985676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407142, -0.503778, -0.761868,
		0.125876, -0.795226, 0.593103,
		-0.904649, -0.337378, -0.260356,
		33.935585, 37.211468, 39.907570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753616, 36.794376, 39.880199>,  <34.568840, 37.447632, 40.089817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753616, 36.794376, 39.880199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400940, 36.890999, 39.718079>,  <34.189335, 36.948971, 39.620808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400940, 36.890999, 39.718079>,  <34.753616, 36.794376, 39.880199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400940, 36.890999, 39.718079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283942, -0.414401, -0.864667,
		-0.376819, -0.877454, 0.296788,
		-0.881694, 0.241552, -0.405299,
		34.136433, 36.963467, 39.596489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651577, 36.286072, 39.362015>,  <34.753616, 36.794376, 39.880199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651577, 36.286072, 39.362015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.387798, 36.569050, 39.260315>,  <34.229530, 36.738838, 39.199295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.387798, 36.569050, 39.260315>,  <34.651577, 36.286072, 39.362015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387798, 36.569050, 39.260315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201637, -0.159367, -0.966408,
		-0.724202, -0.688565, -0.037553,
		-0.659450, 0.707447, -0.254254,
		34.189964, 36.781284, 39.184040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142845, 36.045216, 38.912815>,  <34.651577, 36.286072, 39.362015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142845, 36.045216, 38.912815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165897, 36.440384, 38.855274>,  <34.179729, 36.677486, 38.820751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165897, 36.440384, 38.855274>,  <34.142845, 36.045216, 38.912815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165897, 36.440384, 38.855274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272622, -0.154186, -0.949686,
		-0.960393, 0.015518, -0.278215,
		0.057635, 0.987920, -0.143849,
		34.183189, 36.736759, 38.812119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776497, 36.207962, 38.241119>,  <34.142845, 36.045216, 38.912815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776497, 36.207962, 38.241119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.047768, 36.490356, 38.322758>,  <34.210529, 36.659794, 38.371742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.047768, 36.490356, 38.322758>,  <33.776497, 36.207962, 38.241119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047768, 36.490356, 38.322758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396073, -0.117188, -0.910710,
		-0.619034, 0.698460, -0.359097,
		0.678176, 0.705989, 0.204098,
		34.251221, 36.702152, 38.383987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987915, 36.409470, 37.573757>,  <33.776497, 36.207962, 38.241119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987915, 36.409470, 37.573757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.255394, 36.616543, 37.787239>,  <34.415882, 36.740788, 37.915329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.255394, 36.616543, 37.787239>,  <33.987915, 36.409470, 37.573757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255394, 36.616543, 37.787239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577578, 0.090363, -0.811318,
		-0.468232, 0.850789, -0.238575,
		0.668702, 0.517681, 0.533708,
		34.456005, 36.771847, 37.947353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221542, 37.031189, 37.190952>,  <33.987915, 36.409470, 37.573757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221542, 37.031189, 37.190952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524151, 36.962490, 37.443359>,  <34.705715, 36.921272, 37.594803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524151, 36.962490, 37.443359>,  <34.221542, 37.031189, 37.190952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524151, 36.962490, 37.443359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638349, -0.015739, -0.769586,
		0.142103, 0.985016, 0.097725,
		0.756517, -0.171743, 0.631020,
		34.751106, 36.910969, 37.632664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733540, 37.667763, 37.201256>,  <34.221542, 37.031189, 37.190952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733540, 37.667763, 37.201256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928593, 37.332760, 37.299885>,  <35.045624, 37.131760, 37.359062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928593, 37.332760, 37.299885>,  <34.733540, 37.667763, 37.201256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928593, 37.332760, 37.299885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638818, 0.149768, -0.754640,
		0.595088, 0.525500, 0.608046,
		0.487629, -0.837508, 0.246574,
		35.074883, 37.081509, 37.373856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334881, 37.876007, 37.286179>,  <34.733540, 37.667763, 37.201256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334881, 37.876007, 37.286179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381847, 37.480198, 37.252556>,  <35.410027, 37.242714, 37.232384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381847, 37.480198, 37.252556>,  <35.334881, 37.876007, 37.286179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381847, 37.480198, 37.252556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723134, 0.143205, -0.675699,
		0.680654, 0.018555, 0.732370,
		0.117416, -0.989519, -0.084055,
		35.417072, 37.183342, 37.227341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057159, 37.794003, 37.332115>,  <35.334881, 37.876007, 37.286179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057159, 37.794003, 37.332115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896755, 37.474163, 37.153305>,  <35.800514, 37.282257, 37.046021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896755, 37.474163, 37.153305>,  <36.057159, 37.794003, 37.332115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896755, 37.474163, 37.153305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728975, 0.016991, -0.684329,
		0.554785, -0.600292, 0.576075,
		-0.401009, -0.799600, -0.447024,
		35.776451, 37.234283, 37.019199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619663, 37.357609, 37.161972>,  <36.057159, 37.794003, 37.332115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619663, 37.357609, 37.161972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.317692, 37.252140, 36.921783>,  <36.136509, 37.188858, 36.777672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.317692, 37.252140, 36.921783>,  <36.619663, 37.357609, 37.161972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317692, 37.252140, 36.921783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646937, -0.149340, -0.747777,
		0.107493, -0.952982, 0.283320,
		-0.754929, -0.263671, -0.600467,
		36.091213, 37.173038, 36.741642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265526, 37.513405, 37.008991>,  <36.619663, 37.357609, 37.161972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265526, 37.513405, 37.008991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461178, 37.588383, 36.668259>,  <37.578568, 37.633369, 36.463818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461178, 37.588383, 36.668259>,  <37.265526, 37.513405, 37.008991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461178, 37.588383, 36.668259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822590, -0.225574, -0.521979,
		-0.289995, 0.956023, 0.043857,
		0.489130, 0.187448, -0.851830,
		37.607918, 37.644619, 36.412708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917484, 37.351337, 37.380180>,  <37.265526, 37.513405, 37.008991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917484, 37.351337, 37.380180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050640, 37.038933, 37.591541>,  <38.130531, 36.851490, 37.718357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050640, 37.038933, 37.591541>,  <37.917484, 37.351337, 37.380180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050640, 37.038933, 37.591541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314058, 0.436543, 0.843088,
		-0.889131, -0.446601, -0.099963,
		0.332886, -0.781010, 0.528403,
		38.150505, 36.804630, 37.750061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352978, 37.071552, 37.712601>,  <37.917484, 37.351337, 37.380180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352978, 37.071552, 37.712601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680950, 36.980690, 37.922787>,  <37.877735, 36.926174, 38.048897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680950, 36.980690, 37.922787>,  <37.352978, 37.071552, 37.712601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680950, 36.980690, 37.922787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397679, 0.434249, 0.808256,
		-0.411784, -0.871681, 0.265719,
		0.819930, -0.227156, 0.525467,
		37.926929, 36.912544, 38.080425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043587, 36.873028, 38.374660>,  <37.352978, 37.071552, 37.712601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043587, 36.873028, 38.374660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431065, 36.910107, 38.466785>,  <37.663551, 36.932354, 38.522060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431065, 36.910107, 38.466785>,  <37.043587, 36.873028, 38.374660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431065, 36.910107, 38.466785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247975, 0.316397, 0.915642,
		0.012006, -0.944087, 0.329478,
		0.968692, 0.092695, 0.230311,
		37.721672, 36.937916, 38.535877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137596, 36.464062, 38.975708>,  <37.043587, 36.873028, 38.374660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137596, 36.464062, 38.975708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459927, 36.700668, 38.986736>,  <37.653324, 36.842632, 38.993355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459927, 36.700668, 38.986736>,  <37.137596, 36.464062, 38.975708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459927, 36.700668, 38.986736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194288, 0.220119, 0.955929,
		0.559375, -0.775667, 0.292301,
		0.805824, 0.591513, 0.027574,
		37.701675, 36.878120, 38.995010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460373, 36.273426, 39.627575>,  <37.137596, 36.464062, 38.975708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460373, 36.273426, 39.627575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604740, 36.631310, 39.522320>,  <37.691360, 36.846039, 39.459167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604740, 36.631310, 39.522320>,  <37.460373, 36.273426, 39.627575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604740, 36.631310, 39.522320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010878, 0.286177, 0.958115,
		0.932535, -0.342936, 0.113019,
		0.360916, 0.894705, -0.263140,
		37.713017, 36.899719, 39.443378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018417, 36.287884, 39.928539>,  <37.460373, 36.273426, 39.627575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018417, 36.287884, 39.928539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959656, 36.676590, 39.854687>,  <37.924400, 36.909813, 39.810375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959656, 36.676590, 39.854687>,  <38.018417, 36.287884, 39.928539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959656, 36.676590, 39.854687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054665, 0.194347, 0.979409,
		0.987639, 0.133785, -0.081672,
		-0.146903, 0.971767, -0.184632,
		37.915585, 36.968121, 39.799297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561558, 36.661716, 40.332092>,  <38.018417, 36.287884, 39.928539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561558, 36.661716, 40.332092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242653, 36.893993, 40.266163>,  <38.051311, 37.033360, 40.226604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.242653, 36.893993, 40.266163>,  <38.561558, 36.661716, 40.332092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242653, 36.893993, 40.266163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017050, 0.251282, 0.967764,
		0.603391, 0.774373, -0.190437,
		-0.797263, 0.580693, -0.164824,
		38.003475, 37.068203, 40.216717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745285, 37.351917, 40.588417>,  <38.561558, 36.661716, 40.332092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745285, 37.351917, 40.588417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348442, 37.329014, 40.543793>,  <38.110336, 37.315273, 40.517017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348442, 37.329014, 40.543793>,  <38.745285, 37.351917, 40.588417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348442, 37.329014, 40.543793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125058, 0.517264, 0.846640,
		0.009232, 0.853909, -0.520341,
		-0.992106, -0.057256, -0.111563,
		38.050812, 37.311836, 40.510323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543850, 38.075695, 40.750580>,  <38.745285, 37.351917, 40.588417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543850, 38.075695, 40.750580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211391, 37.853794, 40.765743>,  <38.011917, 37.720654, 40.774841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211391, 37.853794, 40.765743>,  <38.543850, 38.075695, 40.750580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211391, 37.853794, 40.765743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335946, 0.555304, 0.760774,
		-0.443092, 0.619583, -0.647909,
		-0.831149, -0.554756, 0.037905,
		37.962048, 37.687366, 40.777115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023155, 38.524910, 40.911888>,  <38.543850, 38.075695, 40.750580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023155, 38.524910, 40.911888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893303, 38.157627, 41.002678>,  <37.815392, 37.937260, 41.057152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893303, 38.157627, 41.002678>,  <38.023155, 38.524910, 40.911888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893303, 38.157627, 41.002678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238464, 0.311674, 0.919779,
		-0.915288, 0.244459, -0.320136,
		-0.324626, -0.918204, 0.226977,
		37.795914, 37.882164, 41.070770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309540, 38.687752, 41.293434>,  <38.023155, 38.524910, 40.911888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309540, 38.687752, 41.293434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425766, 38.313332, 41.372807>,  <37.495502, 38.088680, 41.420429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425766, 38.313332, 41.372807>,  <37.309540, 38.687752, 41.293434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425766, 38.313332, 41.372807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356009, 0.086731, 0.930449,
		-0.888160, -0.341000, -0.308043,
		0.290566, -0.936054, 0.198430,
		37.512936, 38.032516, 41.432335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646221, 38.242027, 41.460232>,  <37.309540, 38.687752, 41.293434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646221, 38.242027, 41.460232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974453, 38.075886, 41.617271>,  <37.171391, 37.976200, 41.711494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974453, 38.075886, 41.617271>,  <36.646221, 38.242027, 41.460232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974453, 38.075886, 41.617271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442442, -0.026799, 0.896397,
		-0.361804, -0.909264, -0.205762,
		0.820575, -0.415357, 0.392600,
		37.220627, 37.951279, 41.735050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357971, 37.655376, 41.732117>,  <36.646221, 38.242027, 41.460232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357971, 37.655376, 41.732117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702702, 37.723061, 41.923374>,  <36.909538, 37.763672, 42.038128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702702, 37.723061, 41.923374>,  <36.357971, 37.655376, 41.732117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702702, 37.723061, 41.923374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488897, 0.026134, 0.871950,
		0.135050, -0.985233, 0.105251,
		0.861824, 0.169214, 0.478148,
		36.961250, 37.773823, 42.066818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411224, 37.086143, 42.204266>,  <36.357971, 37.655376, 41.732117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411224, 37.086143, 42.204266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630932, 37.386005, 42.351959>,  <36.762756, 37.565922, 42.440575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630932, 37.386005, 42.351959>,  <36.411224, 37.086143, 42.204266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630932, 37.386005, 42.351959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456643, -0.100785, 0.883923,
		0.699847, -0.654114, 0.286966,
		0.549264, 0.749652, 0.369230,
		36.795712, 37.610901, 42.462727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741756, 36.865276, 42.867870>,  <36.411224, 37.086143, 42.204266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741756, 36.865276, 42.867870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725487, 37.264938, 42.865204>,  <36.715725, 37.504734, 42.863602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725487, 37.264938, 42.865204>,  <36.741756, 36.865276, 42.867870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725487, 37.264938, 42.865204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346419, -0.007839, 0.938047,
		0.937198, 0.040462, 0.346443,
		-0.040671, 0.999150, -0.006670,
		36.713284, 37.564682, 42.863201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800625, 37.016552, 43.606541>,  <36.741756, 36.865276, 42.867870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800625, 37.016552, 43.606541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686443, 37.355339, 43.427139>,  <36.617935, 37.558613, 43.319496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686443, 37.355339, 43.427139>,  <36.800625, 37.016552, 43.606541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686443, 37.355339, 43.427139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611218, 0.199571, 0.765888,
		0.738192, 0.492764, 0.460713,
		-0.285458, 0.846968, -0.448508,
		36.600807, 37.609428, 43.292587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927288, 37.606224, 44.090023>,  <36.800625, 37.016552, 43.606541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927288, 37.606224, 44.090023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614208, 37.704590, 43.861320>,  <36.426361, 37.763607, 43.724098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614208, 37.704590, 43.861320>,  <36.927288, 37.606224, 44.090023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614208, 37.704590, 43.861320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570173, 0.085039, 0.817111,
		0.249559, 0.965554, 0.073653,
		-0.782702, 0.245912, -0.571756,
		36.379398, 37.778362, 43.689793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699036, 38.218441, 44.349228>,  <36.927288, 37.606224, 44.090023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699036, 38.218441, 44.349228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395660, 38.090656, 44.121998>,  <36.213634, 38.013985, 43.985661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395660, 38.090656, 44.121998>,  <36.699036, 38.218441, 44.349228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395660, 38.090656, 44.121998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601152, 0.006198, 0.799111,
		-0.251768, 0.947578, -0.196749,
		-0.758439, -0.319466, -0.568077,
		36.168129, 37.994816, 43.951576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.017689, 38.773239, 44.427494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885281, 38.427418, 44.276245>,  <35.805836, 38.219925, 44.185497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.885281, 38.427418, 44.276245>,  <36.017689, 38.773239, 44.427494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885281, 38.427418, 44.276245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702249, -0.041957, 0.710695,
		-0.630298, 0.500787, -0.593243,
		-0.331016, -0.864553, -0.378122,
		35.785976, 38.168053, 44.162807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317261, 38.926884, 44.454060>,  <36.017689, 38.773239, 44.427494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317261, 38.926884, 44.454060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341042, 38.528202, 44.432014>,  <35.355312, 38.288994, 44.418785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341042, 38.528202, 44.432014>,  <35.317261, 38.926884, 44.454060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341042, 38.528202, 44.432014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731104, -0.081071, 0.677432,
		-0.679670, 0.000019, -0.733518,
		0.059454, -0.996708, -0.055115,
		35.358879, 38.229191, 44.415482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715633, 38.689098, 44.374496>,  <35.317261, 38.926884, 44.454060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715633, 38.689098, 44.374496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892735, 38.356380, 44.508415>,  <34.998997, 38.156750, 44.588768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892735, 38.356380, 44.508415>,  <34.715633, 38.689098, 44.374496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892735, 38.356380, 44.508415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743291, -0.131652, 0.655886,
		-0.501485, -0.539248, -0.676554,
		0.442754, -0.831793, 0.334796,
		35.025562, 38.106842, 44.608852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187214, 38.150742, 44.561577>,  <34.715633, 38.689098, 44.374496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187214, 38.150742, 44.561577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516094, 38.012001, 44.742104>,  <34.713421, 37.928757, 44.850418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516094, 38.012001, 44.742104>,  <34.187214, 38.150742, 44.561577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516094, 38.012001, 44.742104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551742, -0.290788, 0.781680,
		-0.139890, -0.891705, -0.430457,
		0.822199, -0.346851, 0.451313,
		34.762753, 37.907944, 44.877499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099457, 37.373222, 44.710648>,  <34.187214, 38.150742, 44.561577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099457, 37.373222, 44.710648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409931, 37.475018, 44.941391>,  <34.596214, 37.536095, 45.079838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409931, 37.475018, 44.941391>,  <34.099457, 37.373222, 44.710648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409931, 37.475018, 44.941391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424958, -0.464723, 0.776816,
		0.465772, -0.848096, -0.252564,
		0.776187, 0.254491, 0.576861,
		34.642788, 37.551365, 45.114449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080757, 36.832767, 45.144615>,  <34.099457, 37.373222, 44.710648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080757, 36.832767, 45.144615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306389, 37.113586, 45.318489>,  <34.441769, 37.282078, 45.422813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306389, 37.113586, 45.318489>,  <34.080757, 36.832767, 45.144615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306389, 37.113586, 45.318489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445834, -0.184151, 0.875968,
		0.695015, -0.687912, 0.209119,
		0.564080, 0.702044, 0.434682,
		34.475613, 37.324200, 45.448895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372200, 36.486271, 45.758942>,  <34.080757, 36.832767, 45.144615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372200, 36.486271, 45.758942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378506, 36.878708, 45.836102>,  <34.382290, 37.114170, 45.882397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378506, 36.878708, 45.836102>,  <34.372200, 36.486271, 45.758942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378506, 36.878708, 45.836102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549092, -0.152739, 0.821687,
		0.835613, -0.118875, 0.536301,
		0.015764, 0.981091, 0.192904,
		34.383236, 37.173035, 45.893974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760895, 36.659492, 46.475567>,  <34.372200, 36.486271, 45.758942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760895, 36.659492, 46.475567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492508, 36.946152, 46.399437>,  <34.331474, 37.118145, 46.353760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492508, 36.946152, 46.399437>,  <34.760895, 36.659492, 46.475567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492508, 36.946152, 46.399437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352465, -0.082432, 0.932187,
		0.652358, 0.692550, 0.307901,
		-0.670967, 0.716645, -0.190325,
		34.291218, 37.161144, 46.342339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821854, 37.122467, 47.141682>,  <34.760895, 36.659492, 46.475567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821854, 37.122467, 47.141682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479843, 37.233921, 46.966732>,  <34.274639, 37.300793, 46.861763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479843, 37.233921, 46.966732>,  <34.821854, 37.122467, 47.141682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479843, 37.233921, 46.966732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413678, 0.142159, 0.899256,
		0.312740, 0.949818, -0.006285,
		-0.855023, 0.278633, -0.437377,
		34.223335, 37.317513, 46.835518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579117, 37.708649, 47.572941>,  <34.821854, 37.122467, 47.141682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579117, 37.708649, 47.572941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260574, 37.557789, 47.383808>,  <34.069450, 37.467274, 47.270329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260574, 37.557789, 47.383808>,  <34.579117, 37.708649, 47.572941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260574, 37.557789, 47.383808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493912, -0.045705, 0.868310,
		-0.349096, 0.925023, -0.149883,
		-0.796356, -0.377153, -0.472835,
		34.021667, 37.444645, 47.241959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909576, 38.148891, 47.749191>,  <34.579117, 37.708649, 47.572941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909576, 38.148891, 47.749191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795334, 37.782497, 47.636482>,  <33.726788, 37.562660, 47.568855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795334, 37.782497, 47.636482>,  <33.909576, 38.148891, 47.749191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795334, 37.782497, 47.636482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584060, -0.066743, 0.808962,
		-0.759806, 0.395616, -0.515929,
		-0.285604, -0.915987, -0.281775,
		33.709652, 37.507702, 47.551949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328651, 38.159706, 48.081207>,  <33.909576, 38.148891, 47.749191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328651, 38.159706, 48.081207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363609, 37.781483, 47.955807>,  <33.384583, 37.554550, 47.880566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363609, 37.781483, 47.955807>,  <33.328651, 38.159706, 48.081207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363609, 37.781483, 47.955807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507745, -0.313041, 0.802621,
		-0.857063, 0.089035, -0.507460,
		0.087394, -0.945557, -0.313503,
		33.389828, 37.497814, 47.861755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636360, 37.833252, 48.157310>,  <33.328651, 38.159706, 48.081207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636360, 37.833252, 48.157310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929417, 37.561035, 48.161442>,  <33.105251, 37.397705, 48.163921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929417, 37.561035, 48.161442>,  <32.636360, 37.833252, 48.157310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929417, 37.561035, 48.161442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371062, -0.386654, 0.844282,
		-0.570576, -0.622384, -0.535800,
		0.732636, -0.680542, 0.010328,
		33.149208, 37.356873, 48.164539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321285, 37.146229, 48.348930>,  <32.636360, 37.833252, 48.157310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321285, 37.146229, 48.348930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706123, 37.090370, 48.442631>,  <32.937027, 37.056854, 48.498852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706123, 37.090370, 48.442631>,  <32.321285, 37.146229, 48.348930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706123, 37.090370, 48.442631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271950, -0.426858, 0.862459,
		-0.020444, -0.893472, -0.448654,
		0.962094, -0.139644, 0.234252,
		32.994751, 37.048477, 48.512905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377247, 36.478134, 48.628952>,  <32.321285, 37.146229, 48.348930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377247, 36.478134, 48.628952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691975, 36.671062, 48.782982>,  <32.880810, 36.786819, 48.875401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.691975, 36.671062, 48.782982>,  <32.377247, 36.478134, 48.628952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691975, 36.671062, 48.782982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190687, -0.403412, 0.894929,
		0.586987, -0.777575, -0.225440,
		0.786819, 0.482323, 0.385071,
		32.928020, 36.815758, 48.898502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683945, 35.964104, 49.036575>,  <32.377247, 36.478134, 48.628952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683945, 35.964104, 49.036575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839420, 36.305424, 49.175598>,  <32.932705, 36.510216, 49.259014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839420, 36.305424, 49.175598>,  <32.683945, 35.964104, 49.036575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839420, 36.305424, 49.175598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032698, -0.389761, 0.920336,
		0.920788, -0.346361, -0.179398,
		0.388691, 0.853300, 0.347562,
		32.956028, 36.561413, 49.279865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469257, 35.933258, 49.344181>,  <32.683945, 35.964104, 49.036575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469257, 35.933258, 49.344181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.274353, 36.237602, 49.515610>,  <33.157410, 36.420208, 49.618465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.274353, 36.237602, 49.515610>,  <33.469257, 35.933258, 49.344181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274353, 36.237602, 49.515610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330627, -0.293500, 0.896964,
		0.808248, 0.578751, -0.108550,
		-0.487260, 0.760858, 0.428571,
		33.128174, 36.465858, 49.644180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838371, 36.212437, 49.976490>,  <33.469257, 35.933258, 49.344181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838371, 36.212437, 49.976490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479305, 36.378757, 50.034866>,  <33.263866, 36.478550, 50.069893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479305, 36.378757, 50.034866>,  <33.838371, 36.212437, 49.976490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479305, 36.378757, 50.034866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000544, -0.330143, 0.943931,
		0.440669, 0.847417, 0.296133,
		-0.897670, 0.415800, 0.145945,
		33.210003, 36.503498, 50.078651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041386, 36.387463, 50.608879>,  <33.838371, 36.212437, 49.976490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041386, 36.387463, 50.608879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648937, 36.464684, 50.604164>,  <33.413467, 36.511017, 50.601334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648937, 36.464684, 50.604164>,  <34.041386, 36.387463, 50.608879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648937, 36.464684, 50.604164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042176, -0.154065, 0.987160,
		0.188760, 0.969017, 0.159298,
		-0.981117, 0.193055, -0.011788,
		33.354603, 36.522598, 50.600628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970398, 36.727161, 51.237839>,  <34.041386, 36.387463, 50.608879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970398, 36.727161, 51.237839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613865, 36.605640, 51.103237>,  <33.399944, 36.532726, 51.022476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613865, 36.605640, 51.103237>,  <33.970398, 36.727161, 51.237839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613865, 36.605640, 51.103237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309872, -0.133539, 0.941354,
		-0.330923, 0.943329, 0.024887,
		-0.891330, -0.303804, -0.336502,
		33.346466, 36.514500, 51.002285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545258, 36.880718, 51.807556>,  <33.970398, 36.727161, 51.237839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545258, 36.880718, 51.807556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322285, 36.644398, 51.574242>,  <33.188499, 36.502605, 51.434254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322285, 36.644398, 51.574242>,  <33.545258, 36.880718, 51.807556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322285, 36.644398, 51.574242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408835, -0.416134, 0.812211,
		-0.722582, 0.691219, -0.009575,
		-0.557431, -0.590804, -0.583286,
		33.155056, 36.467155, 51.399258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899029, 37.023045, 51.974594>,  <33.545258, 36.880718, 51.807556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899029, 37.023045, 51.974594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923313, 36.649456, 51.833733>,  <32.937885, 36.425304, 51.749214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923313, 36.649456, 51.833733>,  <32.899029, 37.023045, 51.974594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923313, 36.649456, 51.833733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397763, -0.346218, 0.849657,
		-0.915477, 0.088490, -0.392519,
		0.060711, -0.933972, -0.352152,
		32.941528, 36.369263, 51.728088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327644, 37.227619, 52.556492>,  <32.899029, 37.023045, 51.974594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327644, 37.227619, 52.556492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.068413, 37.490910, 52.709709>,  <31.912872, 37.648884, 52.801640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.068413, 37.490910, 52.709709>,  <32.327644, 37.227619, 52.556492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068413, 37.490910, 52.709709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417713, 0.727793, -0.543905,
		-0.636792, -0.192492, -0.746621,
		-0.648083, 0.658228, 0.383046,
		31.873987, 37.688377, 52.824623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942963, 37.580555, 52.046028>,  <32.327644, 37.227619, 52.556492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942963, 37.580555, 52.046028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001350, 37.798237, 52.376492>,  <32.036381, 37.928844, 52.574768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001350, 37.798237, 52.376492>,  <31.942963, 37.580555, 52.046028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001350, 37.798237, 52.376492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441361, 0.711562, -0.546699,
		-0.885378, 0.444434, -0.136326,
		0.145967, 0.544204, 0.826157,
		32.045139, 37.961498, 52.624340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757189, 37.978191, 51.524258>,  <31.942963, 37.580555, 52.046028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757189, 37.978191, 51.524258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364706, 37.949238, 51.452713>,  <31.129215, 37.931866, 51.409786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364706, 37.949238, 51.452713>,  <31.757189, 37.978191, 51.524258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364706, 37.949238, 51.452713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192136, -0.281358, -0.940171,
		0.017731, -0.956869, 0.289978,
		-0.981208, -0.072386, -0.178861,
		31.070343, 37.927521, 51.399055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743752, 37.462112, 51.091896>,  <31.757189, 37.978191, 51.524258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743752, 37.462112, 51.091896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.401888, 37.660007, 51.028912>,  <31.196770, 37.778744, 50.991119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.401888, 37.660007, 51.028912>,  <31.743752, 37.462112, 51.091896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401888, 37.660007, 51.028912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132907, -0.084705, -0.987502,
		-0.501890, -0.864906, 0.006640,
		-0.854659, 0.494735, -0.157465,
		31.145491, 37.808430, 50.981670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311932, 37.043282, 50.599091>,  <31.743752, 37.462112, 51.091896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311932, 37.043282, 50.599091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.177885, 37.419903, 50.585369>,  <31.097456, 37.645874, 50.577137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.177885, 37.419903, 50.585369>,  <31.311932, 37.043282, 50.599091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177885, 37.419903, 50.585369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007824, -0.033624, -0.999404,
		-0.942144, -0.335186, 0.003901,
		-0.335117, 0.941552, -0.034301,
		31.077351, 37.702370, 50.575077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808432, 36.993561, 50.081505>,  <31.311932, 37.043282, 50.599091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808432, 36.993561, 50.081505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.927799, 37.375095, 50.095062>,  <30.999420, 37.604015, 50.103199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.927799, 37.375095, 50.095062>,  <30.808432, 36.993561, 50.081505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927799, 37.375095, 50.095062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069820, 0.013603, -0.997467,
		-0.951878, 0.300030, -0.062537,
		0.298419, 0.953833, 0.033896,
		31.017324, 37.661243, 50.105232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421204, 37.349258, 49.601974>,  <30.808432, 36.993561, 50.081505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421204, 37.349258, 49.601974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699751, 37.631874, 49.652363>,  <30.866879, 37.801445, 49.682594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699751, 37.631874, 49.652363>,  <30.421204, 37.349258, 49.601974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699751, 37.631874, 49.652363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005592, 0.170171, -0.985399,
		-0.717662, 0.686905, 0.114551,
		0.696369, 0.706543, 0.125967,
		30.908661, 37.843838, 49.690151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180191, 38.038231, 49.200508>,  <30.421204, 37.349258, 49.601974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180191, 38.038231, 49.200508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578339, 38.032948, 49.238598>,  <30.817226, 38.029778, 49.261452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578339, 38.032948, 49.238598>,  <30.180191, 38.038231, 49.200508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578339, 38.032948, 49.238598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095962, 0.196350, -0.975827,
		-0.005809, 0.980445, 0.196708,
		0.995368, -0.013208, 0.095226,
		30.876949, 38.028984, 49.267166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355953, 38.633068, 48.889637>,  <30.180191, 38.038231, 49.200508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355953, 38.633068, 48.889637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699478, 38.430626, 48.921383>,  <30.905592, 38.309158, 48.940430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.699478, 38.430626, 48.921383>,  <30.355953, 38.633068, 48.889637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699478, 38.430626, 48.921383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154518, 0.108202, -0.982047,
		0.488436, 0.855655, 0.171128,
		0.858810, -0.506109, 0.079364,
		30.957121, 38.278793, 48.945190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790871, 39.061127, 48.537659>,  <30.355953, 38.633068, 48.889637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790871, 39.061127, 48.537659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.918617, 38.682186, 48.528511>,  <30.995266, 38.454823, 48.523022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.918617, 38.682186, 48.528511>,  <30.790871, 39.061127, 48.537659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918617, 38.682186, 48.528511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140986, 0.071361, -0.987436,
		0.937085, 0.312130, 0.156354,
		0.319366, -0.947356, -0.022865,
		31.014427, 38.397980, 48.521652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400785, 39.102760, 48.089500>,  <30.790871, 39.061127, 48.537659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400785, 39.102760, 48.089500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320368, 38.710960, 48.094643>,  <31.272118, 38.475880, 48.097729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320368, 38.710960, 48.094643>,  <31.400785, 39.102760, 48.089500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320368, 38.710960, 48.094643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172447, -0.048305, -0.983834,
		0.964284, -0.195577, 0.178623,
		-0.201044, -0.979498, 0.012853,
		31.260056, 38.417110, 48.098499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005634, 38.732925, 47.807667>,  <31.400785, 39.102760, 48.089500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005634, 38.732925, 47.807667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703299, 38.474342, 47.766094>,  <31.521898, 38.319191, 47.741150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703299, 38.474342, 47.766094>,  <32.005634, 38.732925, 47.807667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703299, 38.474342, 47.766094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266662, -0.158955, -0.950592,
		0.597997, -0.746208, 0.292530,
		-0.755838, -0.646458, -0.103931,
		31.476547, 38.280403, 47.734917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277126, 38.115963, 47.498775>,  <32.005634, 38.732925, 47.807667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277126, 38.115963, 47.498775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886280, 38.161469, 47.426891>,  <31.651772, 38.188774, 47.383762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886280, 38.161469, 47.426891>,  <32.277126, 38.115963, 47.498775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886280, 38.161469, 47.426891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178371, -0.021929, -0.983719,
		-0.115857, -0.993265, 0.001134,
		-0.977118, 0.113769, -0.179710,
		31.593143, 38.195599, 47.372978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113609, 37.563301, 47.121468>,  <32.277126, 38.115963, 47.498775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113609, 37.563301, 47.121468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837116, 37.845112, 47.057163>,  <31.671221, 38.014198, 47.018581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837116, 37.845112, 47.057163>,  <32.113609, 37.563301, 47.121468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837116, 37.845112, 47.057163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120418, -0.107051, -0.986934,
		-0.712533, -0.701555, -0.010841,
		-0.691228, 0.704529, -0.160757,
		31.629747, 38.056469, 47.008938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869370, 37.381065, 46.536369>,  <32.113609, 37.563301, 47.121468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869370, 37.381065, 46.536369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709352, 37.746101, 46.570194>,  <31.613342, 37.965122, 46.590488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709352, 37.746101, 46.570194>,  <31.869370, 37.381065, 46.536369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709352, 37.746101, 46.570194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238825, 0.192878, -0.951715,
		-0.884834, -0.360529, -0.295108,
		-0.400040, 0.912588, 0.084562,
		31.589340, 38.019878, 46.595562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589909, 37.455227, 45.880943>,  <31.869370, 37.381065, 46.536369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589909, 37.455227, 45.880943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626364, 37.825607, 46.027538>,  <31.648237, 38.047836, 46.115494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626364, 37.825607, 46.027538>,  <31.589909, 37.455227, 45.880943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626364, 37.825607, 46.027538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370139, 0.310151, -0.875673,
		-0.924495, 0.215459, -0.314463,
		0.091140, 0.925950, 0.366483,
		31.653706, 38.103394, 46.137482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289549, 37.934116, 45.328674>,  <31.589909, 37.455227, 45.880943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289549, 37.934116, 45.328674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539415, 38.133255, 45.569321>,  <31.689335, 38.252739, 45.713707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539415, 38.133255, 45.569321>,  <31.289549, 37.934116, 45.328674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539415, 38.133255, 45.569321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508802, 0.324954, -0.797198,
		-0.592378, 0.804088, -0.050315,
		0.624667, 0.497843, 0.601617,
		31.726816, 38.282608, 45.749805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263189, 38.703564, 45.063774>,  <31.289549, 37.934116, 45.328674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263189, 38.703564, 45.063774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593954, 38.562645, 45.239090>,  <31.792414, 38.478092, 45.344280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593954, 38.562645, 45.239090>,  <31.263189, 38.703564, 45.063774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593954, 38.562645, 45.239090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524585, 0.202546, -0.826913,
		0.202546, 0.913707, 0.352299,
		0.826913, -0.352299, 0.438293,
		31.842028, 38.456955, 45.370579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667471, 38.947868, 44.636696>,  <31.263189, 38.703564, 45.063774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667471, 38.947868, 44.636696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.908524, 38.725883, 44.866077>,  <32.053154, 38.592693, 45.003708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.908524, 38.725883, 44.866077>,  <31.667471, 38.947868, 44.636696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908524, 38.725883, 44.866077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653405, -0.069408, -0.753820,
		0.458145, 0.828974, 0.320789,
		0.602631, -0.554964, 0.573455,
		32.089314, 38.559395, 45.038113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285248, 39.276615, 44.506615>,  <31.667471, 38.947868, 44.636696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285248, 39.276615, 44.506615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.374588, 38.905880, 44.627342>,  <32.428192, 38.683441, 44.699780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.374588, 38.905880, 44.627342>,  <32.285248, 39.276615, 44.506615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374588, 38.905880, 44.627342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575134, -0.124683, -0.808502,
		0.786978, 0.354166, 0.505205,
		0.223353, -0.926834, 0.301816,
		32.441593, 38.627831, 44.717888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960171, 39.187572, 44.272118>,  <32.285248, 39.276615, 44.506615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960171, 39.187572, 44.272118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826347, 38.816750, 44.339798>,  <32.746052, 38.594254, 44.380405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826347, 38.816750, 44.339798>,  <32.960171, 39.187572, 44.272118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826347, 38.816750, 44.339798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527071, -0.332919, -0.781896,
		0.781195, -0.172411, 0.600008,
		-0.334561, -0.927060, 0.169201,
		32.725979, 38.538631, 44.390560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490139, 38.873589, 43.976585>,  <32.960171, 39.187572, 44.272118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490139, 38.873589, 43.976585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198292, 38.600838, 43.997375>,  <33.023182, 38.437187, 44.009850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198292, 38.600838, 43.997375>,  <33.490139, 38.873589, 43.976585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198292, 38.600838, 43.997375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171966, -0.256503, -0.951123,
		0.661877, -0.685021, 0.304409,
		-0.729621, -0.681874, 0.051974,
		32.979404, 38.396275, 44.012966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.164135, 41.658623, 36.146969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877831, 41.902832, 36.011349>,  <46.706047, 42.049358, 35.929977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877831, 41.902832, 36.011349>,  <47.164135, 41.658623, 36.146969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877831, 41.902832, 36.011349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697151, -0.596239, 0.398094,
		0.040893, 0.521306, 0.852390,
		-0.715757, 0.610524, -0.339047,
		46.663105, 42.085991, 35.909634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737000, 41.885098, 36.789837>,  <47.164135, 41.658623, 36.146969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737000, 41.885098, 36.789837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.563553, 41.858749, 36.430363>,  <46.459484, 41.842941, 36.214676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.563553, 41.858749, 36.430363>,  <46.737000, 41.885098, 36.789837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563553, 41.858749, 36.430363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699830, -0.603642, 0.381909,
		-0.567641, 0.794530, 0.215651,
		-0.433615, -0.065868, -0.898688,
		46.433468, 41.838989, 36.160755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012798, 42.199310, 36.817284>,  <46.737000, 41.885098, 36.789837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012798, 42.199310, 36.817284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.043713, 41.933716, 36.519787>,  <46.062263, 41.774361, 36.341290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.043713, 41.933716, 36.519787>,  <46.012798, 42.199310, 36.817284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043713, 41.933716, 36.519787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762414, -0.520055, 0.385056,
		-0.642457, 0.537279, -0.546425,
		0.077289, -0.663984, -0.743742,
		46.066898, 41.734520, 36.296665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342754, 42.211826, 36.507603>,  <46.012798, 42.199310, 36.817284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342754, 42.211826, 36.507603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513706, 41.867165, 36.398129>,  <45.616276, 41.660366, 36.332443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513706, 41.867165, 36.398129>,  <45.342754, 42.211826, 36.507603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513706, 41.867165, 36.398129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859474, -0.481135, 0.172665,
		-0.280456, 0.161429, -0.946195,
		0.427375, -0.861655, -0.273681,
		45.641918, 41.608669, 36.316025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911697, 41.848827, 36.101482>,  <45.342754, 42.211826, 36.507603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911697, 41.848827, 36.101482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151615, 41.556377, 36.231533>,  <45.295567, 41.380909, 36.309563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151615, 41.556377, 36.231533>,  <44.911697, 41.848827, 36.101482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151615, 41.556377, 36.231533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793079, -0.597120, 0.120303,
		0.106186, -0.330012, -0.937986,
		0.599792, -0.731122, 0.325131,
		45.331554, 41.337040, 36.329071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687572, 41.259731, 35.720741>,  <44.911697, 41.848827, 36.101482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687572, 41.259731, 35.720741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898952, 41.127426, 36.033497>,  <45.025780, 41.048042, 36.221149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898952, 41.127426, 36.033497>,  <44.687572, 41.259731, 35.720741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898952, 41.127426, 36.033497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634152, -0.766112, 0.104512,
		0.564443, -0.551063, -0.614600,
		0.528446, -0.330759, 0.781885,
		45.057487, 41.028198, 36.268063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401802, 40.578735, 35.790237>,  <44.687572, 41.259731, 35.720741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401802, 40.578735, 35.790237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.630943, 40.573513, 36.118061>,  <44.768429, 40.570377, 36.314754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.630943, 40.573513, 36.118061>,  <44.401802, 40.578735, 35.790237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630943, 40.573513, 36.118061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233906, -0.960900, 0.148185,
		0.785577, -0.276587, -0.553506,
		0.572850, -0.013058, 0.819556,
		44.802799, 40.569595, 36.363930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858643, 40.053753, 35.760353>,  <44.401802, 40.578735, 35.790237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858643, 40.053753, 35.760353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810810, 40.107761, 36.153793>,  <44.782112, 40.140167, 36.389858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810810, 40.107761, 36.153793>,  <44.858643, 40.053753, 35.760353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810810, 40.107761, 36.153793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313032, -0.945305, 0.091706,
		0.942184, -0.296932, 0.155307,
		-0.119582, 0.135020, 0.983600,
		44.774937, 40.148266, 36.448872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962158, 39.442574, 35.951714>,  <44.858643, 40.053753, 35.760353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962158, 39.442574, 35.951714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798515, 39.613213, 36.274364>,  <44.700329, 39.715595, 36.467953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798515, 39.613213, 36.274364>,  <44.962158, 39.442574, 35.951714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798515, 39.613213, 36.274364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510329, -0.839778, 0.185303,
		0.756435, -0.335833, 0.561269,
		-0.409110, 0.426601, 0.806623,
		44.675781, 39.741192, 36.516350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990837, 38.930691, 36.390514>,  <44.962158, 39.442574, 35.951714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990837, 38.930691, 36.390514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.729656, 39.196468, 36.535934>,  <44.572948, 39.355934, 36.623188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.729656, 39.196468, 36.535934>,  <44.990837, 38.930691, 36.390514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729656, 39.196468, 36.535934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565948, -0.747011, 0.348822,
		0.503349, 0.022013, 0.863803,
		-0.652949, 0.664447, 0.363549,
		44.533772, 39.395802, 36.645000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776630, 38.731785, 37.069580>,  <44.990837, 38.930691, 36.390514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776630, 38.731785, 37.069580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478981, 38.952744, 36.919304>,  <44.300392, 39.085320, 36.829140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478981, 38.952744, 36.919304>,  <44.776630, 38.731785, 37.069580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478981, 38.952744, 36.919304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634351, -0.760615, 0.138071,
		-0.209483, 0.341058, 0.916404,
		-0.744121, 0.552398, -0.375686,
		44.255745, 39.118462, 36.806599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322884, 38.664730, 37.525124>,  <44.776630, 38.731785, 37.069580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322884, 38.664730, 37.525124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.146069, 38.757767, 37.178596>,  <44.039982, 38.813591, 36.970680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.146069, 38.757767, 37.178596>,  <44.322884, 38.664730, 37.525124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146069, 38.757767, 37.178596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587215, -0.805117, 0.083460,
		-0.678075, 0.545606, 0.492472,
		-0.442034, 0.232594, -0.866317,
		44.013458, 38.827545, 36.918701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622707, 38.778107, 37.725475>,  <44.322884, 38.664730, 37.525124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622707, 38.778107, 37.725475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587357, 38.740681, 37.328800>,  <43.566147, 38.718224, 37.090797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587357, 38.740681, 37.328800>,  <43.622707, 38.778107, 37.725475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587357, 38.740681, 37.328800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364691, -0.923413, 0.119624,
		-0.926926, 0.372229, 0.047481,
		-0.088373, -0.093567, -0.991683,
		43.560844, 38.712612, 37.031296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885300, 38.675400, 37.617260>,  <43.622707, 38.778107, 37.725475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885300, 38.675400, 37.617260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069725, 38.533813, 37.291775>,  <43.180382, 38.448864, 37.096485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069725, 38.533813, 37.291775>,  <42.885300, 38.675400, 37.617260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069725, 38.533813, 37.291775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546485, -0.835733, 0.053896,
		-0.699125, 0.419834, -0.578761,
		0.461062, -0.353964, -0.813715,
		43.208042, 38.427624, 37.047661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298126, 38.533157, 37.150646>,  <42.885300, 38.675400, 37.617260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298126, 38.533157, 37.150646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614922, 38.319920, 37.031609>,  <42.805000, 38.191975, 36.960186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614922, 38.319920, 37.031609>,  <42.298126, 38.533157, 37.150646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614922, 38.319920, 37.031609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582648, -0.805580, -0.107521,
		-0.182420, 0.258551, -0.948617,
		0.791987, -0.533096, -0.297598,
		42.852516, 38.159992, 36.942329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047596, 38.251469, 36.493999>,  <42.298126, 38.533157, 37.150646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047596, 38.251469, 36.493999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.340763, 38.017654, 36.633224>,  <42.516663, 37.877365, 36.716759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.340763, 38.017654, 36.633224>,  <42.047596, 38.251469, 36.493999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340763, 38.017654, 36.633224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597078, -0.797905, -0.082738,
		0.326081, -0.147178, -0.933815,
		0.732918, -0.584540, 0.348058,
		42.560638, 37.842293, 36.737640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130630, 37.773354, 35.988407>,  <42.047596, 38.251469, 36.493999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130630, 37.773354, 35.988407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302048, 37.600712, 36.305916>,  <42.404896, 37.497128, 36.496422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302048, 37.600712, 36.305916>,  <42.130630, 37.773354, 35.988407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302048, 37.600712, 36.305916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326960, -0.893067, -0.309077,
		0.842289, -0.127080, -0.523832,
		0.428539, -0.431604, 0.793771,
		42.430611, 37.471230, 36.544048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660767, 37.341679, 35.744473>,  <42.130630, 37.773354, 35.988407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660767, 37.341679, 35.744473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551559, 37.202591, 36.103260>,  <42.486034, 37.119141, 36.318531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.551559, 37.202591, 36.103260>,  <42.660767, 37.341679, 35.744473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551559, 37.202591, 36.103260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191913, -0.893964, -0.404966,
		0.942671, -0.282704, 0.177339,
		-0.273020, -0.347716, 0.896969,
		42.469654, 37.098278, 36.372353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867676, 36.649387, 35.721588>,  <42.660767, 37.341679, 35.744473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867676, 36.649387, 35.721588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626026, 36.637524, 36.040123>,  <42.481037, 36.630405, 36.231243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626026, 36.637524, 36.040123>,  <42.867676, 36.649387, 35.721588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626026, 36.637524, 36.040123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329861, -0.900367, -0.283781,
		0.725413, -0.434120, 0.534149,
		-0.604125, -0.029663, 0.796337,
		42.444790, 36.628624, 36.279026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889683, 35.911068, 35.825241>,  <42.867676, 36.649387, 35.721588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889683, 35.911068, 35.825241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567379, 36.066006, 36.004448>,  <42.373997, 36.158966, 36.111973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567379, 36.066006, 36.004448>,  <42.889683, 35.911068, 35.825241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567379, 36.066006, 36.004448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534593, -0.801243, -0.268738,
		0.254876, -0.456044, 0.852680,
		-0.805760, 0.387341, 0.448015,
		42.325649, 36.182209, 36.138851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640656, 35.408443, 36.270397>,  <42.889683, 35.911068, 35.825241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640656, 35.408443, 36.270397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.332020, 35.648731, 36.186703>,  <42.146839, 35.792904, 36.136486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.332020, 35.648731, 36.186703>,  <42.640656, 35.408443, 36.270397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332020, 35.648731, 36.186703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570907, -0.799030, -0.188724,
		-0.280557, -0.026163, 0.959481,
		-0.771591, 0.600722, -0.209237,
		42.100544, 35.828949, 36.123932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259579, 35.236626, 35.796532>,  <42.640656, 35.408443, 36.270397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259579, 35.236626, 35.796532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.057167, 35.287380, 35.455276>,  <42.935722, 35.317833, 35.250523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.057167, 35.287380, 35.455276>,  <43.259579, 35.236626, 35.796532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057167, 35.287380, 35.455276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790758, -0.463251, 0.400126,
		-0.344442, 0.877096, 0.334756,
		-0.506025, 0.126891, -0.853133,
		42.905361, 35.325447, 35.199337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847935, 35.746899, 35.719040>,  <43.259579, 35.236626, 35.796532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847935, 35.746899, 35.719040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181034, 35.526997, 35.692799>,  <44.380894, 35.395054, 35.677052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181034, 35.526997, 35.692799>,  <43.847935, 35.746899, 35.719040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181034, 35.526997, 35.692799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545988, 0.835078, -0.067397,
		0.091838, 0.020304, 0.995567,
		0.832744, -0.549757, -0.065606,
		44.430859, 35.362068, 35.673119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222279, 35.914013, 36.301407>,  <43.847935, 35.746899, 35.719040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222279, 35.914013, 36.301407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458008, 35.775177, 36.009590>,  <44.599445, 35.691875, 35.834499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458008, 35.775177, 36.009590>,  <44.222279, 35.914013, 36.301407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458008, 35.775177, 36.009590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632987, 0.759494, 0.149990,
		0.502021, -0.550182, 0.667289,
		0.589323, -0.347087, -0.729540,
		44.634804, 35.671051, 35.790730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983791, 36.055965, 36.537407>,  <44.222279, 35.914013, 36.301407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983791, 36.055965, 36.537407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985317, 36.006351, 36.140499>,  <44.986233, 35.976585, 35.902355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985317, 36.006351, 36.140499>,  <44.983791, 36.055965, 36.537407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985317, 36.006351, 36.140499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598390, 0.795298, -0.097110,
		0.801196, -0.593395, 0.077253,
		0.003814, -0.124032, -0.992271,
		44.986462, 35.969143, 35.842819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609169, 36.338470, 36.483818>,  <44.983791, 36.055965, 36.537407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609169, 36.338470, 36.483818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.446770, 36.306175, 36.119698>,  <45.349331, 36.286797, 35.901226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.446770, 36.306175, 36.119698>,  <45.609169, 36.338470, 36.483818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.446770, 36.306175, 36.119698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478423, 0.829908, -0.286991,
		0.778638, -0.552026, -0.298313,
		-0.405999, -0.080742, -0.910299,
		45.324970, 36.281952, 35.846607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226456, 36.514950, 36.012314>,  <45.609169, 36.338470, 36.483818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226456, 36.514950, 36.012314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.892536, 36.553043, 35.795414>,  <45.692184, 36.575901, 35.665276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.892536, 36.553043, 35.795414>,  <46.226456, 36.514950, 36.012314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892536, 36.553043, 35.795414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365115, 0.832945, -0.415805,
		0.412063, -0.545099, -0.730117,
		-0.834802, 0.095239, -0.542250,
		45.642094, 36.581615, 35.632740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498291, 36.666691, 35.408092>,  <46.226456, 36.514950, 36.012314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498291, 36.666691, 35.408092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115723, 36.776226, 35.367558>,  <45.886181, 36.841949, 35.343235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115723, 36.776226, 35.367558>,  <46.498291, 36.666691, 35.408092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115723, 36.776226, 35.367558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285125, 0.801049, -0.526331,
		-0.062953, -0.532289, -0.844219,
		-0.956421, 0.273842, -0.101340,
		45.828796, 36.858379, 35.337154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375065, 36.743103, 34.710636>,  <46.498291, 36.666691, 35.408092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375065, 36.743103, 34.710636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.136421, 36.993046, 34.912075>,  <45.993237, 37.143013, 35.032940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.136421, 36.993046, 34.912075>,  <46.375065, 36.743103, 34.710636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136421, 36.993046, 34.912075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340561, 0.765330, -0.546157,
		-0.726692, -0.154335, -0.669403,
		-0.596605, 0.624860, 0.503599,
		45.957439, 37.180504, 35.063156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.155174, 37.199928, 34.217926>,  <46.375065, 36.743103, 34.710636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.155174, 37.199928, 34.217926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.046837, 37.384438, 34.555889>,  <45.981834, 37.495144, 34.758667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.046837, 37.384438, 34.555889>,  <46.155174, 37.199928, 34.217926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046837, 37.384438, 34.555889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229500, 0.883349, -0.408686,
		-0.934866, 0.083218, -0.345109,
		-0.270842, 0.461269, 0.844911,
		45.965584, 37.522820, 34.809364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736660, 37.793133, 33.995647>,  <46.155174, 37.199928, 34.217926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736660, 37.793133, 33.995647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.891602, 37.843334, 34.360985>,  <45.984566, 37.873455, 34.580189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.891602, 37.843334, 34.360985>,  <45.736660, 37.793133, 33.995647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891602, 37.843334, 34.360985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150105, 0.968887, -0.196792,
		-0.909627, 0.213327, 0.356468,
		0.387359, 0.125500, 0.913347,
		46.007809, 37.880985, 34.634991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596386, 38.462273, 34.126175>,  <45.736660, 37.793133, 33.995647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596386, 38.462273, 34.126175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.843136, 38.427021, 34.439018>,  <45.991184, 38.405869, 34.626724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.843136, 38.427021, 34.439018>,  <45.596386, 38.462273, 34.126175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843136, 38.427021, 34.439018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285803, 0.950963, -0.118260,
		-0.733337, 0.296481, 0.611814,
		0.616874, -0.088134, 0.782112,
		46.028198, 38.400581, 34.673653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556225, 39.131199, 34.469013>,  <45.596386, 38.462273, 34.126175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556225, 39.131199, 34.469013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.889603, 38.966183, 34.616077>,  <46.089630, 38.867172, 34.704315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.889603, 38.966183, 34.616077>,  <45.556225, 39.131199, 34.469013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889603, 38.966183, 34.616077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498786, 0.848001, -0.179183,
		-0.237859, 0.332725, 0.912533,
		0.833448, -0.412539, 0.367663,
		46.139637, 38.842422, 34.726376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874187, 39.591221, 35.068783>,  <45.556225, 39.131199, 34.469013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874187, 39.591221, 35.068783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.137012, 39.367271, 34.866867>,  <46.294708, 39.232903, 34.745720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.137012, 39.367271, 34.866867>,  <45.874187, 39.591221, 35.068783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.137012, 39.367271, 34.866867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519975, 0.821437, -0.234239,
		0.545793, -0.108566, 0.830857,
		0.657066, -0.559871, -0.504786,
		46.334133, 39.199310, 34.715431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434731, 40.027615, 35.059170>,  <45.874187, 39.591221, 35.068783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434731, 40.027615, 35.059170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.561028, 39.744308, 34.806610>,  <46.636806, 39.574326, 34.655075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.561028, 39.744308, 34.806610>,  <46.434731, 40.027615, 35.059170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561028, 39.744308, 34.806610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610826, 0.660943, -0.435943,
		0.726083, -0.248030, 0.641315,
		0.315746, -0.708262, -0.631402,
		46.655750, 39.531830, 34.617191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.143185, 40.037083, 35.098186>,  <46.434731, 40.027615, 35.059170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.143185, 40.037083, 35.098186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.047443, 39.885727, 34.740520>,  <46.989998, 39.794914, 34.525921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.047443, 39.885727, 34.740520>,  <47.143185, 40.037083, 35.098186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047443, 39.885727, 34.740520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503585, 0.738999, -0.447530,
		0.830129, -0.557404, 0.013674,
		-0.239350, -0.378394, -0.894164,
		46.975639, 39.772209, 34.472271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.699951, 40.254726, 34.571655>,  <47.143185, 40.037083, 35.098186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.699951, 40.254726, 34.571655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.397560, 40.136063, 34.338249>,  <47.216125, 40.064865, 34.198204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.397560, 40.136063, 34.338249>,  <47.699951, 40.254726, 34.571655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.397560, 40.136063, 34.338249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194108, 0.749727, -0.632638,
		0.625155, -0.591526, -0.509194,
		-0.755978, -0.296658, -0.583515,
		47.170765, 40.047066, 34.163193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.997173, 40.216267, 33.873295>,  <47.699951, 40.254726, 34.571655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.997173, 40.216267, 33.873295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.601223, 40.266296, 33.846466>,  <47.363651, 40.296314, 33.830368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.601223, 40.266296, 33.846466>,  <47.997173, 40.216267, 33.873295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.601223, 40.266296, 33.846466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140493, 0.796734, -0.587772,
		-0.020078, -0.591246, -0.806242,
		-0.989878, 0.125073, -0.067070,
		47.304260, 40.303818, 33.826344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.891560, 40.520546, 33.176678>,  <47.997173, 40.216267, 33.873295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.891560, 40.520546, 33.176678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.534218, 40.592278, 33.341484>,  <47.319813, 40.635315, 33.440369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.534218, 40.592278, 33.341484>,  <47.891560, 40.520546, 33.176678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.534218, 40.592278, 33.341484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061663, 0.859318, -0.507710,
		-0.445101, -0.478971, -0.756618,
		-0.893355, 0.179327, 0.412018,
		47.266212, 40.646076, 33.465088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.519901, 40.723343, 32.599262>,  <47.891560, 40.520546, 33.176678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.519901, 40.723343, 32.599262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.358730, 40.865738, 32.936527>,  <47.262028, 40.951176, 33.138885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.358730, 40.865738, 32.936527>,  <47.519901, 40.723343, 32.599262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358730, 40.865738, 32.936527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127602, 0.890407, -0.436913,
		-0.906293, -0.283633, -0.313345,
		-0.402927, 0.355988, 0.843162,
		47.237850, 40.972534, 33.189476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991665, 41.085453, 32.348476>,  <47.519901, 40.723343, 32.599262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991665, 41.085453, 32.348476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.052990, 41.230984, 32.715981>,  <47.089787, 41.318302, 32.936485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.052990, 41.230984, 32.715981>,  <46.991665, 41.085453, 32.348476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052990, 41.230984, 32.715981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128780, 0.929182, -0.346464,
		-0.979751, -0.065201, 0.189308,
		0.153312, 0.363827, 0.918763,
		47.098984, 41.340134, 32.991608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379284, 41.548237, 32.546703>,  <46.991665, 41.085453, 32.348476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379284, 41.548237, 32.546703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.691776, 41.668240, 32.765671>,  <46.879272, 41.740242, 32.897053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.691776, 41.668240, 32.765671>,  <46.379284, 41.548237, 32.546703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691776, 41.668240, 32.765671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235431, 0.953784, -0.186729,
		-0.578141, 0.016999, 0.815760,
		0.781233, 0.300011, 0.547420,
		46.926147, 41.758244, 32.929897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.158112, 37.267265, 42.301186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864574, 37.474686, 42.125652>,  <37.688454, 37.599140, 42.020332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864574, 37.474686, 42.125652>,  <38.158112, 37.267265, 42.301186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864574, 37.474686, 42.125652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417725, -0.164965, -0.893472,
		-0.535706, -0.838980, -0.095555,
		-0.733843, 0.518554, -0.438836,
		37.644421, 37.630253, 41.994003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882137, 36.821964, 41.744366>,  <38.158112, 37.267265, 42.301186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882137, 36.821964, 41.744366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754326, 37.188026, 41.646065>,  <37.677639, 37.407661, 41.587082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754326, 37.188026, 41.646065>,  <37.882137, 36.821964, 41.744366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754326, 37.188026, 41.646065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019471, -0.265639, -0.963876,
		-0.947376, -0.303202, 0.102698,
		-0.319530, 0.915153, -0.245757,
		37.658466, 37.462574, 41.572338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213871, 36.689301, 41.308300>,  <37.882137, 36.821964, 41.744366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213871, 36.689301, 41.308300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402405, 37.038696, 41.259541>,  <37.515526, 37.248333, 41.230286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402405, 37.038696, 41.259541>,  <37.213871, 36.689301, 41.308300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402405, 37.038696, 41.259541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074877, -0.177342, -0.981297,
		-0.878771, 0.453390, -0.148992,
		0.471332, 0.873492, -0.121895,
		37.543804, 37.300743, 41.222973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859798, 36.941444, 40.751789>,  <37.213871, 36.689301, 41.308300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859798, 36.941444, 40.751789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202339, 37.146133, 40.779480>,  <37.407864, 37.268948, 40.796097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202339, 37.146133, 40.779480>,  <36.859798, 36.941444, 40.751789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202339, 37.146133, 40.779480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115965, -0.059933, -0.991443,
		-0.503197, 0.857057, -0.110666,
		0.856356, 0.511724, 0.069231,
		37.459248, 37.299652, 40.800251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712963, 37.440228, 40.338806>,  <36.859798, 36.941444, 40.751789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712963, 37.440228, 40.338806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110062, 37.449173, 40.386066>,  <37.348320, 37.454540, 40.414421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110062, 37.449173, 40.386066>,  <36.712963, 37.440228, 40.338806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110062, 37.449173, 40.386066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118163, 0.000556, -0.992994,
		-0.022269, 0.999750, -0.002090,
		0.992744, 0.022360, 0.118146,
		37.407887, 37.455879, 40.421509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050289, 37.907265, 39.915840>,  <36.712963, 37.440228, 40.338806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050289, 37.907265, 39.915840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336853, 37.638981, 39.992680>,  <37.508793, 37.478012, 40.038784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336853, 37.638981, 39.992680>,  <37.050289, 37.907265, 39.915840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336853, 37.638981, 39.992680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105757, -0.167763, -0.980138,
		0.689615, 0.722499, -0.049256,
		0.716413, -0.670709, 0.192101,
		37.551777, 37.437767, 40.050308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677505, 38.216576, 39.515579>,  <37.050289, 37.907265, 39.915840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677505, 38.216576, 39.515579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732624, 37.831757, 39.609787>,  <37.765697, 37.600864, 39.666313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732624, 37.831757, 39.609787>,  <37.677505, 38.216576, 39.515579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732624, 37.831757, 39.609787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283845, -0.189458, -0.939967,
		0.948917, 0.196378, 0.246966,
		0.137799, -0.962050, 0.235521,
		37.773964, 37.543140, 39.680443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150215, 38.024689, 39.114758>,  <37.677505, 38.216576, 39.515579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150215, 38.024689, 39.114758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022026, 37.663143, 39.228127>,  <37.945114, 37.446217, 39.296146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022026, 37.663143, 39.228127>,  <38.150215, 38.024689, 39.114758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022026, 37.663143, 39.228127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291363, -0.378756, -0.878437,
		0.901335, -0.198936, 0.384733,
		-0.320473, -0.903863, 0.283423,
		37.925884, 37.391983, 39.313152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666393, 37.664692, 38.962864>,  <38.150215, 38.024689, 39.114758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666393, 37.664692, 38.962864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354359, 37.416897, 38.997978>,  <38.167137, 37.268219, 39.019047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354359, 37.416897, 38.997978>,  <38.666393, 37.664692, 38.962864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354359, 37.416897, 38.997978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362358, -0.561695, -0.743771,
		0.510067, -0.548392, 0.662645,
		-0.780082, -0.619488, 0.087788,
		38.120335, 37.231052, 39.024315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043045, 36.955498, 38.893555>,  <38.666393, 37.664692, 38.962864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043045, 36.955498, 38.893555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665215, 36.940514, 38.763096>,  <38.438515, 36.931522, 38.684818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665215, 36.940514, 38.763096>,  <39.043045, 36.955498, 38.893555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665215, 36.940514, 38.763096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295461, -0.530066, -0.794816,
		-0.143106, -0.847128, 0.511756,
		-0.944576, -0.037461, -0.326149,
		38.381844, 36.929276, 38.665253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907372, 36.288551, 38.794479>,  <39.043045, 36.955498, 38.893555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907372, 36.288551, 38.794479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616501, 36.452869, 38.574493>,  <38.441978, 36.551460, 38.442501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616501, 36.452869, 38.574493>,  <38.907372, 36.288551, 38.794479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616501, 36.452869, 38.574493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191495, -0.647970, -0.737200,
		-0.659203, -0.641388, 0.392521,
		-0.727173, 0.410799, -0.549966,
		38.398350, 36.576107, 38.409504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669575, 35.774002, 38.402817>,  <38.907372, 36.288551, 38.794479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669575, 35.774002, 38.402817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498890, 36.079395, 38.208904>,  <38.396481, 36.262630, 38.092556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498890, 36.079395, 38.208904>,  <38.669575, 35.774002, 38.402817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498890, 36.079395, 38.208904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110164, -0.488165, -0.865771,
		-0.897654, -0.422839, 0.124197,
		-0.426711, 0.763480, -0.484785,
		38.370876, 36.308441, 38.063469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187664, 35.578926, 37.968021>,  <38.669575, 35.774002, 38.402817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187664, 35.578926, 37.968021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388100, 35.899021, 37.836250>,  <38.508362, 36.091080, 37.757187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388100, 35.899021, 37.836250>,  <38.187664, 35.578926, 37.968021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388100, 35.899021, 37.836250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077297, -0.420534, -0.903978,
		-0.861934, 0.427513, -0.272583,
		0.501093, 0.800240, -0.329427,
		38.538429, 36.139091, 37.737423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917641, 35.803207, 37.407330>,  <38.187664, 35.578926, 37.968021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917641, 35.803207, 37.407330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300137, 35.917480, 37.382057>,  <38.529633, 35.986046, 37.366894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300137, 35.917480, 37.382057>,  <37.917641, 35.803207, 37.407330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300137, 35.917480, 37.382057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091690, -0.497653, -0.862516,
		-0.277851, 0.818978, -0.502069,
		0.956238, 0.285686, -0.063181,
		38.587009, 36.003185, 37.363102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809216, 35.561382, 36.819721>,  <37.917641, 35.803207, 37.407330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809216, 35.561382, 36.819721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635857, 35.403069, 36.495865>,  <37.531841, 35.308079, 36.301552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635857, 35.403069, 36.495865>,  <37.809216, 35.561382, 36.819721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635857, 35.403069, 36.495865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673453, -0.454758, 0.582800,
		-0.598857, 0.797839, -0.069454,
		-0.433396, -0.395788, -0.809642,
		37.505836, 35.284332, 36.252972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127491, 35.639446, 36.743912>,  <37.809216, 35.561382, 36.819721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127491, 35.639446, 36.743912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140163, 35.338177, 36.481087>,  <37.147766, 35.157417, 36.323391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140163, 35.338177, 36.481087>,  <37.127491, 35.639446, 36.743912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140163, 35.338177, 36.481087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735443, -0.462741, 0.494969,
		-0.676846, 0.467550, -0.568574,
		0.031679, -0.753172, -0.657061,
		37.149666, 35.112225, 36.283970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391594, 35.471573, 36.406574>,  <37.127491, 35.639446, 36.743912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391594, 35.471573, 36.406574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606953, 35.135818, 36.376755>,  <36.736168, 34.934364, 36.358864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606953, 35.135818, 36.376755>,  <36.391594, 35.471573, 36.406574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606953, 35.135818, 36.376755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678812, -0.484417, 0.551865,
		-0.499348, -0.246507, -0.830594,
		0.538392, -0.839389, -0.074561,
		36.768471, 34.884003, 36.354389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836132, 34.965046, 36.233757>,  <36.391594, 35.471573, 36.406574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836132, 34.965046, 36.233757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160412, 34.765266, 36.355942>,  <36.354980, 34.645397, 36.429253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160412, 34.765266, 36.355942>,  <35.836132, 34.965046, 36.233757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160412, 34.765266, 36.355942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548082, -0.464017, 0.695912,
		-0.205834, -0.731598, -0.649921,
		0.810702, -0.499452, 0.305465,
		36.403622, 34.615429, 36.447582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550514, 34.281967, 36.325497>,  <35.836132, 34.965046, 36.233757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550514, 34.281967, 36.325497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894997, 34.320023, 36.525208>,  <36.101685, 34.342857, 36.645035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894997, 34.320023, 36.525208>,  <35.550514, 34.281967, 36.325497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894997, 34.320023, 36.525208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359918, -0.579438, 0.731239,
		0.358870, -0.809444, -0.464771,
		0.861203, 0.095140, 0.499276,
		36.153358, 34.348564, 36.674992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819782, 33.620037, 36.454376>,  <35.550514, 34.281967, 36.325497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819782, 33.620037, 36.454376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989468, 33.867401, 36.718987>,  <36.091278, 34.015820, 36.877754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989468, 33.867401, 36.718987>,  <35.819782, 33.620037, 36.454376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989468, 33.867401, 36.718987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268876, -0.611554, 0.744115,
		0.864727, -0.493529, -0.093151,
		0.424209, 0.618410, 0.661525,
		36.116730, 34.052925, 36.917442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081680, 33.111557, 36.930637>,  <35.819782, 33.620037, 36.454376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081680, 33.111557, 36.930637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057144, 33.454029, 37.135849>,  <36.042423, 33.659512, 37.258976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057144, 33.454029, 37.135849>,  <36.081680, 33.111557, 36.930637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057144, 33.454029, 37.135849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117171, -0.516617, 0.848161,
		0.991215, -0.008084, 0.132010,
		-0.061342, 0.856178, 0.513026,
		36.038742, 33.710884, 37.289757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385044, 32.955990, 37.530106>,  <36.081680, 33.111557, 36.930637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385044, 32.955990, 37.530106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215591, 33.304504, 37.629215>,  <36.113918, 33.513615, 37.688683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215591, 33.304504, 37.629215>,  <36.385044, 32.955990, 37.530106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215591, 33.304504, 37.629215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174146, -0.346768, 0.921642,
		0.888938, 0.347287, 0.298633,
		-0.423631, 0.871289, 0.247777,
		36.088501, 33.565891, 37.703548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597752, 33.072929, 38.241734>,  <36.385044, 32.955990, 37.530106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597752, 33.072929, 38.241734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276058, 33.307583, 38.203632>,  <36.083042, 33.448376, 38.180771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276058, 33.307583, 38.203632>,  <36.597752, 33.072929, 38.241734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276058, 33.307583, 38.203632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292312, -0.250902, 0.922823,
		0.517459, 0.770007, 0.373263,
		-0.804232, 0.586632, -0.095251,
		36.034790, 33.483574, 38.175056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598984, 33.493881, 38.887959>,  <36.597752, 33.072929, 38.241734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598984, 33.493881, 38.887959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226326, 33.512482, 38.743809>,  <36.002731, 33.523640, 38.657318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226326, 33.512482, 38.743809>,  <36.598984, 33.493881, 38.887959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226326, 33.512482, 38.743809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363259, -0.143260, 0.920608,
		-0.008820, 0.988592, 0.150359,
		-0.931646, 0.046499, -0.360379,
		35.946831, 33.526432, 38.635696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321201, 34.154865, 39.190975>,  <36.598984, 33.493881, 38.887959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321201, 34.154865, 39.190975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993347, 33.956711, 39.075886>,  <35.796635, 33.837818, 39.006832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993347, 33.956711, 39.075886>,  <36.321201, 34.154865, 39.190975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993347, 33.956711, 39.075886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383927, 0.102233, 0.917687,
		-0.425194, 0.862637, -0.273986,
		-0.819640, -0.495386, -0.287721,
		35.747456, 33.808094, 38.989571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786217, 34.492767, 39.465073>,  <36.321201, 34.154865, 39.190975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786217, 34.492767, 39.465073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611927, 34.144985, 39.371964>,  <35.507355, 33.936314, 39.316097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611927, 34.144985, 39.371964>,  <35.786217, 34.492767, 39.465073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611927, 34.144985, 39.371964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337601, -0.081862, 0.937723,
		-0.834368, 0.487174, -0.257861,
		-0.435725, -0.869460, -0.232773,
		35.481209, 33.884148, 39.302132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093018, 34.531181, 39.609089>,  <35.786217, 34.492767, 39.465073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093018, 34.531181, 39.609089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181351, 34.141289, 39.622562>,  <35.234352, 33.907352, 39.630646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181351, 34.141289, 39.622562>,  <35.093018, 34.531181, 39.609089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181351, 34.141289, 39.622562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105056, 0.010560, 0.994410,
		-0.969636, -0.223139, -0.100069,
		0.220835, -0.974729, 0.033682,
		35.247601, 33.848869, 39.632668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616707, 34.220798, 40.022598>,  <35.093018, 34.531181, 39.609089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616707, 34.220798, 40.022598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892479, 33.932442, 40.050896>,  <35.057941, 33.759426, 40.067875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892479, 33.932442, 40.050896>,  <34.616707, 34.220798, 40.022598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892479, 33.932442, 40.050896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144545, -0.041215, 0.988640,
		-0.709787, -0.691821, -0.132616,
		0.689427, -0.720892, 0.070745,
		35.099308, 33.716175, 40.072121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971317, 33.700161, 39.861153>,  <34.616707, 34.220798, 40.022598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971317, 33.700161, 39.861153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764072, 33.358376, 39.876423>,  <33.639725, 33.153305, 39.885586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764072, 33.358376, 39.876423>,  <33.971317, 33.700161, 39.861153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764072, 33.358376, 39.876423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220191, -0.176376, -0.959379,
		0.826487, -0.488656, 0.279527,
		-0.518108, -0.854463, 0.038175,
		33.608639, 33.102036, 39.887875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381344, 33.157757, 39.699539>,  <33.971317, 33.700161, 39.861153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381344, 33.157757, 39.699539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008690, 33.045525, 39.607166>,  <33.785099, 32.978184, 39.551743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008690, 33.045525, 39.607166>,  <34.381344, 33.157757, 39.699539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008690, 33.045525, 39.607166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285678, -0.172707, -0.942635,
		0.224601, -0.944164, 0.241056,
		-0.931634, -0.280582, -0.230937,
		33.729198, 32.961349, 39.537884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423878, 32.627224, 39.178898>,  <34.381344, 33.157757, 39.699539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423878, 32.627224, 39.178898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031277, 32.692799, 39.139362>,  <33.795715, 32.732143, 39.115643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031277, 32.692799, 39.139362>,  <34.423878, 32.627224, 39.178898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031277, 32.692799, 39.139362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063142, -0.210177, -0.975622,
		-0.180710, -0.963821, 0.195939,
		-0.981508, 0.163933, -0.098839,
		33.736824, 32.741982, 39.109711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161835, 31.973688, 38.934200>,  <34.423878, 32.627224, 39.178898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161835, 31.973688, 38.934200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938133, 32.288776, 38.830875>,  <33.803913, 32.477829, 38.768879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938133, 32.288776, 38.830875>,  <34.161835, 31.973688, 38.934200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938133, 32.288776, 38.830875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021900, -0.325529, -0.945278,
		-0.828706, -0.522995, 0.199305,
		-0.559256, 0.787722, -0.258315,
		33.770355, 32.525093, 38.753380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493721, 31.680914, 38.644997>,  <34.161835, 31.973688, 38.934200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493721, 31.680914, 38.644997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524010, 32.059563, 38.519669>,  <33.542183, 32.286751, 38.444473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524010, 32.059563, 38.519669>,  <33.493721, 31.680914, 38.644997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524010, 32.059563, 38.519669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444552, -0.249218, -0.860386,
		-0.892547, 0.204434, 0.401953,
		0.075718, 0.946624, -0.313320,
		33.546726, 32.343552, 38.425671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898853, 31.758141, 38.199139>,  <33.493721, 31.680914, 38.644997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898853, 31.758141, 38.199139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124603, 32.074169, 38.103416>,  <33.260056, 32.263786, 38.045982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124603, 32.074169, 38.103416>,  <32.898853, 31.758141, 38.199139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124603, 32.074169, 38.103416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257184, -0.107181, -0.960400,
		-0.784432, 0.603574, 0.142702,
		0.564378, 0.790070, -0.239306,
		33.293915, 32.311192, 38.031624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464836, 32.133369, 37.718365>,  <32.898853, 31.758141, 38.199139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464836, 32.133369, 37.718365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829243, 32.270443, 37.626617>,  <33.047886, 32.352688, 37.571568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829243, 32.270443, 37.626617>,  <32.464836, 32.133369, 37.718365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829243, 32.270443, 37.626617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246445, 0.006500, -0.969135,
		-0.330619, 0.939427, 0.090375,
		0.911019, 0.342687, -0.229368,
		33.102547, 32.373249, 37.557808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366062, 32.705189, 37.232830>,  <32.464836, 32.133369, 37.718365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366062, 32.705189, 37.232830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749256, 32.597008, 37.194645>,  <32.979172, 32.532101, 37.171734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749256, 32.597008, 37.194645>,  <32.366062, 32.705189, 37.232830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749256, 32.597008, 37.194645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128577, -0.107462, -0.985860,
		0.256370, 0.956717, -0.137722,
		0.957989, -0.270453, -0.095462,
		33.036652, 32.515873, 37.166008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577549, 33.125832, 36.714710>,  <32.366062, 32.705189, 37.232830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577549, 33.125832, 36.714710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831261, 32.816807, 36.726284>,  <32.983486, 32.631390, 36.733231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831261, 32.816807, 36.726284>,  <32.577549, 33.125832, 36.714710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831261, 32.816807, 36.726284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083497, -0.105668, -0.990890,
		0.768584, 0.626082, -0.131530,
		0.634277, -0.772564, 0.028939,
		33.021545, 32.585037, 36.734966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824928, 33.216999, 36.166679>,  <32.577549, 33.125832, 36.714710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824928, 33.216999, 36.166679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933239, 32.839111, 36.240646>,  <32.998226, 32.612381, 36.285027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933239, 32.839111, 36.240646>,  <32.824928, 33.216999, 36.166679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933239, 32.839111, 36.240646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050046, -0.205646, -0.977346,
		0.961340, 0.255390, -0.102964,
		0.270778, -0.944715, 0.184914,
		33.014473, 32.555698, 36.296120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322289, 33.004169, 35.633266>,  <32.824928, 33.216999, 36.166679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322289, 33.004169, 35.633266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157181, 32.674404, 35.788166>,  <33.058117, 32.476543, 35.881107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157181, 32.674404, 35.788166>,  <33.322289, 33.004169, 35.633266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157181, 32.674404, 35.788166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322940, -0.265076, -0.908540,
		0.851663, -0.500077, -0.156821,
		-0.412771, -0.824413, 0.387250,
		33.033348, 32.427082, 35.904343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505337, 32.568909, 35.193752>,  <33.322289, 33.004169, 35.633266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505337, 32.568909, 35.193752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156902, 32.465519, 35.360798>,  <32.947842, 32.403484, 35.461025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156902, 32.465519, 35.360798>,  <33.505337, 32.568909, 35.193752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156902, 32.465519, 35.360798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372201, -0.207352, -0.904694,
		0.320437, -0.943501, 0.084415,
		-0.871083, -0.258478, 0.417615,
		32.895576, 32.387978, 35.486084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.129070, 32.368225, 43.778809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774906, 32.307491, 43.603085>,  <32.562408, 32.271053, 43.497650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774906, 32.307491, 43.603085>,  <33.129070, 32.368225, 43.778809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774906, 32.307491, 43.603085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447909, -0.026170, -0.893696,
		0.124193, -0.988060, 0.091177,
		-0.885412, -0.151830, -0.439311,
		32.509281, 32.261944, 43.471291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285351, 31.916491, 43.153275>,  <33.129070, 32.368225, 43.778809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285351, 31.916491, 43.153275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.934772, 32.094387, 43.079464>,  <32.724426, 32.201126, 43.035175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.934772, 32.094387, 43.079464>,  <33.285351, 31.916491, 43.153275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934772, 32.094387, 43.079464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354879, 0.337624, -0.871821,
		-0.325433, -0.829587, -0.453738,
		-0.876444, 0.444741, -0.184529,
		32.671841, 32.227810, 43.024105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114902, 31.669275, 42.503983>,  <33.285351, 31.916491, 43.153275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114902, 31.669275, 42.503983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864902, 31.976976, 42.557079>,  <32.714901, 32.161598, 42.588936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864902, 31.976976, 42.557079>,  <33.114902, 31.669275, 42.503983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864902, 31.976976, 42.557079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144614, 0.281198, -0.948691,
		-0.767111, -0.573738, -0.286995,
		-0.625003, 0.769254, 0.132739,
		32.677402, 32.207752, 42.596901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627766, 31.580883, 41.985500>,  <33.114902, 31.669275, 42.503983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627766, 31.580883, 41.985500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.634342, 31.959631, 42.113983>,  <32.638287, 32.186878, 42.191071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.634342, 31.959631, 42.113983>,  <32.627766, 31.580883, 41.985500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634342, 31.959631, 42.113983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197793, 0.311817, -0.929327,
		-0.980106, 0.078812, -0.182157,
		0.016443, 0.946868, 0.321203,
		32.639275, 32.243690, 42.210342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336800, 31.835211, 41.460133>,  <32.627766, 31.580883, 41.985500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336800, 31.835211, 41.460133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526459, 32.148449, 41.621101>,  <32.640255, 32.336391, 41.717682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526459, 32.148449, 41.621101>,  <32.336800, 31.835211, 41.460133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526459, 32.148449, 41.621101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328857, 0.266472, -0.906005,
		-0.816725, 0.561917, -0.131182,
		0.474144, 0.783098, 0.402425,
		32.668701, 32.383377, 41.741829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272438, 32.354736, 40.971973>,  <32.336800, 31.835211, 41.460133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272438, 32.354736, 40.971973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.573261, 32.503914, 41.189350>,  <32.753754, 32.593418, 41.319775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.573261, 32.503914, 41.189350>,  <32.272438, 32.354736, 40.971973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573261, 32.503914, 41.189350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348969, 0.474157, -0.808329,
		-0.559134, 0.797553, 0.226449,
		0.752057, 0.372941, 0.543439,
		32.798878, 32.615795, 41.352383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302120, 33.134048, 40.892437>,  <32.272438, 32.354736, 40.971973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302120, 33.134048, 40.892437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.660248, 32.978554, 40.979427>,  <32.875122, 32.885258, 41.031620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.660248, 32.978554, 40.979427>,  <32.302120, 33.134048, 40.892437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660248, 32.978554, 40.979427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370850, 0.380077, -0.847356,
		0.246737, 0.839303, 0.484450,
		0.895316, -0.388732, 0.217476,
		32.928844, 32.861935, 41.044670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839180, 33.727020, 40.848267>,  <32.302120, 33.134048, 40.892437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839180, 33.727020, 40.848267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.028988, 33.379772, 40.790031>,  <33.142872, 33.171425, 40.755089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.028988, 33.379772, 40.790031>,  <32.839180, 33.727020, 40.848267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028988, 33.379772, 40.790031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374763, 0.348905, -0.858963,
		0.796481, 0.353034, 0.490902,
		0.474522, -0.868120, -0.145592,
		33.171345, 33.119335, 40.746353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492561, 33.851028, 40.388546>,  <32.839180, 33.727020, 40.848267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492561, 33.851028, 40.388546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.418819, 33.460915, 40.339832>,  <33.374577, 33.226845, 40.310604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.418819, 33.460915, 40.339832>,  <33.492561, 33.851028, 40.388546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418819, 33.460915, 40.339832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343012, 0.052274, -0.937875,
		0.921063, -0.214672, 0.324898,
		-0.184352, -0.975286, -0.121783,
		33.363514, 33.168327, 40.303299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381649, 33.672729, 40.462345>,  <33.492561, 33.851028, 40.388546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381649, 33.672729, 40.462345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.765747, 33.561062, 40.462624>,  <34.996204, 33.494061, 40.462791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.765747, 33.561062, 40.462624>,  <34.381649, 33.672729, 40.462345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765747, 33.561062, 40.462624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078574, -0.267881, 0.960243,
		-0.267881, -0.922121, -0.279166,
		-0.960243, 0.279166, -0.000695,
		35.053822, 33.477314, 40.462833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327003, 33.068241, 40.864532>,  <34.381649, 33.672729, 40.462345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327003, 33.068241, 40.864532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.713699, 33.170433, 40.869282>,  <34.945717, 33.231747, 40.872131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.713699, 33.170433, 40.869282>,  <34.327003, 33.068241, 40.864532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713699, 33.170433, 40.869282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037681, -0.188189, 0.981410,
		0.252960, -0.948323, -0.191557,
		0.966743, 0.255476, 0.011870,
		35.003723, 33.247074, 40.872845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804111, 32.492989, 41.324173>,  <34.327003, 33.068241, 40.864532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804111, 32.492989, 41.324173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.985435, 32.849480, 41.318207>,  <35.094231, 33.063374, 41.314629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.985435, 32.849480, 41.318207>,  <34.804111, 32.492989, 41.324173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985435, 32.849480, 41.318207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247938, -0.110001, 0.962511,
		0.856178, -0.440010, -0.270833,
		0.453306, 0.891230, -0.014915,
		35.121426, 33.116848, 41.313732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479240, 32.431511, 41.688076>,  <34.804111, 32.492989, 41.324173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479240, 32.431511, 41.688076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423729, 32.827610, 41.683228>,  <35.390423, 33.065269, 41.680317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423729, 32.827610, 41.683228>,  <35.479240, 32.431511, 41.688076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423729, 32.827610, 41.683228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218406, 0.042542, 0.974930,
		0.965939, 0.132654, -0.222181,
		-0.138781, 0.990249, -0.012121,
		35.382095, 33.124683, 41.679592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019169, 32.686790, 42.112942>,  <35.479240, 32.431511, 41.688076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019169, 32.686790, 42.112942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739216, 32.971886, 42.094276>,  <35.571243, 33.142941, 42.083076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739216, 32.971886, 42.094276>,  <36.019169, 32.686790, 42.112942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739216, 32.971886, 42.094276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083237, 0.146269, 0.985737,
		0.709394, 0.686013, -0.161697,
		-0.699880, 0.712735, -0.046660,
		35.529251, 33.185707, 42.080276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352982, 33.279846, 42.523319>,  <36.019169, 32.686790, 42.112942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352982, 33.279846, 42.523319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955627, 33.318542, 42.498600>,  <35.717213, 33.341763, 42.483768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955627, 33.318542, 42.498600>,  <36.352982, 33.279846, 42.523319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955627, 33.318542, 42.498600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028329, 0.315124, 0.948627,
		0.111249, 0.944107, -0.310300,
		-0.993389, 0.096744, -0.061803,
		35.657612, 33.347565, 42.480061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212765, 33.985615, 42.792072>,  <36.352982, 33.279846, 42.523319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212765, 33.985615, 42.792072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854813, 33.807106, 42.794205>,  <35.640041, 33.700001, 42.795483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854813, 33.807106, 42.794205>,  <36.212765, 33.985615, 42.792072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854813, 33.807106, 42.794205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099115, 0.210363, 0.972586,
		-0.435156, 0.869823, -0.232482,
		-0.894883, -0.446269, 0.005329,
		35.586349, 33.673225, 42.795803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644741, 34.434494, 43.208767>,  <36.212765, 33.985615, 42.792072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644741, 34.434494, 43.208767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.506466, 34.059189, 43.213833>,  <35.423500, 33.834007, 43.216873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.506466, 34.059189, 43.213833>,  <35.644741, 34.434494, 43.208767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506466, 34.059189, 43.213833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331771, 0.134837, 0.933674,
		-0.877739, 0.318562, -0.357900,
		-0.345692, -0.938263, 0.012662,
		35.402760, 33.777710, 43.217632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935585, 34.453556, 43.670551>,  <35.644741, 34.434494, 43.208767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935585, 34.453556, 43.670551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048634, 34.069984, 43.680195>,  <35.116463, 33.839840, 43.685982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048634, 34.069984, 43.680195>,  <34.935585, 34.453556, 43.670551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048634, 34.069984, 43.680195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359120, -0.082465, 0.929641,
		-0.889472, -0.271393, -0.367677,
		0.282619, -0.958929, 0.024112,
		35.133419, 33.782307, 43.687428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306221, 34.065674, 43.980133>,  <34.935585, 34.453556, 43.670551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306221, 34.065674, 43.980133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647823, 33.859997, 44.011822>,  <34.852783, 33.736591, 44.030834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647823, 33.859997, 44.011822>,  <34.306221, 34.065674, 43.980133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647823, 33.859997, 44.011822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199709, -0.183396, 0.962540,
		-0.480405, -0.837836, -0.259310,
		0.854007, -0.514196, 0.079219,
		34.904026, 33.705738, 44.035587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078411, 33.407223, 44.402363>,  <34.306221, 34.065674, 43.980133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078411, 33.407223, 44.402363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.474770, 33.417454, 44.455235>,  <34.712585, 33.423592, 44.486958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.474770, 33.417454, 44.455235>,  <34.078411, 33.407223, 44.402363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474770, 33.417454, 44.455235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124403, -0.201495, 0.971557,
		0.051482, -0.979156, -0.196479,
		0.990895, 0.025575, 0.132183,
		34.772038, 33.425125, 44.494888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227371, 32.890087, 44.810432>,  <34.078411, 33.407223, 44.402363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227371, 32.890087, 44.810432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.548683, 33.125122, 44.849369>,  <34.741470, 33.266144, 44.872730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.548683, 33.125122, 44.849369>,  <34.227371, 32.890087, 44.810432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548683, 33.125122, 44.849369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018217, -0.187604, 0.982076,
		0.595321, -0.787110, -0.161403,
		0.803281, 0.587591, 0.097346,
		34.789669, 33.301399, 44.878574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663738, 32.604218, 45.429924>,  <34.227371, 32.890087, 44.810432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663738, 32.604218, 45.429924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824097, 32.968025, 45.386017>,  <34.920311, 33.186310, 45.359673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824097, 32.968025, 45.386017>,  <34.663738, 32.604218, 45.429924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824097, 32.968025, 45.386017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053665, 0.096298, 0.993905,
		0.914550, -0.404345, -0.010204,
		0.400898, 0.909523, -0.109768,
		34.944366, 33.240883, 45.353085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136436, 32.535755, 45.890121>,  <34.663738, 32.604218, 45.429924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136436, 32.535755, 45.890121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.057369, 32.922352, 45.824615>,  <35.009930, 33.154312, 45.785313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.057369, 32.922352, 45.824615>,  <35.136436, 32.535755, 45.890121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057369, 32.922352, 45.824615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042038, 0.158551, 0.986455,
		0.979368, 0.201872, 0.009289,
		-0.197665, 0.966493, -0.163766,
		34.998070, 33.212299, 45.775486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.425312, 38.120331, 44.743530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.490458, 37.729134, 44.795677>,  <29.529545, 37.494415, 44.826965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.490458, 37.729134, 44.795677>,  <29.425312, 38.120331, 44.743530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490458, 37.729134, 44.795677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264222, -0.084075, -0.960790,
		0.950611, 0.190926, 0.244715,
		0.162865, -0.977997, 0.130370,
		29.539316, 37.435734, 44.834789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008034, 38.006348, 44.336121>,  <29.425312, 38.120331, 44.743530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008034, 38.006348, 44.336121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.911451, 37.622726, 44.395344>,  <29.853502, 37.392555, 44.430878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.911451, 37.622726, 44.395344>,  <30.008034, 38.006348, 44.336121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911451, 37.622726, 44.395344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359250, -0.230078, -0.904436,
		0.901465, -0.165190, 0.400092,
		-0.241456, -0.959050, 0.148062,
		29.839014, 37.335011, 44.439762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656427, 37.625664, 44.264126>,  <30.008034, 38.006348, 44.336121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656427, 37.625664, 44.264126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.355553, 37.375465, 44.181206>,  <30.175028, 37.225346, 44.131454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.355553, 37.375465, 44.181206>,  <30.656427, 37.625664, 44.264126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355553, 37.375465, 44.181206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499748, -0.336441, -0.798160,
		0.429499, -0.703963, 0.565656,
		-0.752185, -0.625494, -0.207303,
		30.129896, 37.187817, 44.119015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935759, 36.983223, 44.096806>,  <30.656427, 37.625664, 44.264126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935759, 36.983223, 44.096806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.578039, 36.978378, 43.917881>,  <30.363407, 36.975471, 43.810528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.578039, 36.978378, 43.917881>,  <30.935759, 36.983223, 44.096806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578039, 36.978378, 43.917881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430923, -0.292666, -0.853611,
		-0.120571, -0.956138, 0.266951,
		-0.894297, -0.012115, -0.447309,
		30.309750, 36.974743, 43.783688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104445, 36.495911, 43.598347>,  <30.935759, 36.983223, 44.096806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104445, 36.495911, 43.598347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.758034, 36.649773, 43.470570>,  <30.550188, 36.742088, 43.393906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.758034, 36.649773, 43.470570>,  <31.104445, 36.495911, 43.598347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758034, 36.649773, 43.470570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223094, -0.274490, -0.935353,
		-0.447470, -0.881304, 0.151901,
		-0.866025, 0.384654, -0.319440,
		30.498226, 36.765167, 43.374737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625937, 35.842602, 43.304058>,  <31.104445, 36.495911, 43.598347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625937, 35.842602, 43.304058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517191, 36.203327, 43.169697>,  <30.451944, 36.419762, 43.089081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.517191, 36.203327, 43.169697>,  <30.625937, 35.842602, 43.304058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517191, 36.203327, 43.169697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127127, -0.312331, -0.941429,
		-0.953902, -0.298643, -0.029733,
		-0.271864, 0.901810, -0.335899,
		30.435631, 36.473869, 43.068928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186623, 35.658451, 42.774708>,  <30.625937, 35.842602, 43.304058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186623, 35.658451, 42.774708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.293560, 36.035698, 42.695648>,  <30.357723, 36.262047, 42.648212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.293560, 36.035698, 42.695648>,  <30.186623, 35.658451, 42.774708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293560, 36.035698, 42.695648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347888, -0.285750, -0.892928,
		-0.898611, 0.169957, -0.404491,
		0.267343, 0.943113, -0.197652,
		30.373762, 36.318630, 42.636353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882111, 35.812233, 42.144436>,  <30.186623, 35.658451, 42.774708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882111, 35.812233, 42.144436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180128, 36.076885, 42.178265>,  <30.358938, 36.235676, 42.198563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180128, 36.076885, 42.178265>,  <29.882111, 35.812233, 42.144436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180128, 36.076885, 42.178265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267543, -0.180284, -0.946530,
		-0.611009, 0.727831, -0.311335,
		0.745043, 0.661634, 0.084571,
		30.403641, 36.275375, 42.203636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767248, 36.176163, 41.506371>,  <29.882111, 35.812233, 42.144436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767248, 36.176163, 41.506371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.136795, 36.266693, 41.629822>,  <30.358522, 36.321011, 41.703892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.136795, 36.266693, 41.629822>,  <29.767248, 36.176163, 41.506371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136795, 36.266693, 41.629822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325378, -0.039916, -0.944741,
		-0.201496, 0.973234, -0.110518,
		0.923866, 0.226322, 0.308626,
		30.413956, 36.334591, 41.722408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885241, 36.842888, 41.264755>,  <29.767248, 36.176163, 41.506371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885241, 36.842888, 41.264755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223349, 36.638203, 41.326294>,  <30.426212, 36.515392, 41.363216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223349, 36.638203, 41.326294>,  <29.885241, 36.842888, 41.264755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223349, 36.638203, 41.326294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232281, 0.092588, -0.968232,
		0.481214, 0.854152, 0.197123,
		0.845268, -0.511715, 0.153848,
		30.476929, 36.484688, 41.372448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432766, 37.225166, 40.881931>,  <29.885241, 36.842888, 41.264755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432766, 37.225166, 40.881931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.580431, 36.860741, 40.955345>,  <30.669029, 36.642086, 40.999393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.580431, 36.860741, 40.955345>,  <30.432766, 37.225166, 40.881931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580431, 36.860741, 40.955345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556994, 0.058803, -0.828433,
		0.743962, 0.408053, 0.529164,
		0.369161, -0.911063, 0.183536,
		30.691179, 36.587421, 41.010406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195400, 37.197536, 40.977100>,  <30.432766, 37.225166, 40.881931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195400, 37.197536, 40.977100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.064331, 36.841190, 40.851246>,  <30.985689, 36.627384, 40.775734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.064331, 36.841190, 40.851246>,  <31.195400, 37.197536, 40.977100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064331, 36.841190, 40.851246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303672, 0.216047, -0.927959,
		0.894659, -0.399613, 0.199736,
		-0.327672, -0.890861, -0.314640,
		30.966030, 36.573933, 40.756855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679708, 37.022594, 40.515083>,  <31.195400, 37.197536, 40.977100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679708, 37.022594, 40.515083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.402420, 36.748051, 40.427116>,  <31.236048, 36.583324, 40.374336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.402420, 36.748051, 40.427116>,  <31.679708, 37.022594, 40.515083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402420, 36.748051, 40.427116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368816, -0.075669, -0.926417,
		0.619210, -0.723320, 0.305594,
		-0.693220, -0.686355, -0.219917,
		31.194454, 36.542145, 40.361141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040775, 36.549133, 40.128101>,  <31.679708, 37.022594, 40.515083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040775, 36.549133, 40.128101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.665075, 36.471573, 40.014816>,  <31.439655, 36.425037, 39.946846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.665075, 36.471573, 40.014816>,  <32.040775, 36.549133, 40.128101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665075, 36.471573, 40.014816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280377, 0.042509, -0.958948,
		0.197983, -0.980099, 0.014440,
		-0.939251, -0.193904, -0.283213,
		31.383301, 36.413403, 39.929852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837387, 36.479416, 40.135334>,  <32.040775, 36.549133, 40.128101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837387, 36.479416, 40.135334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104794, 36.775776, 40.161102>,  <33.265236, 36.953594, 40.176563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.104794, 36.775776, 40.161102>,  <32.837387, 36.479416, 40.135334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104794, 36.775776, 40.161102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257683, 0.149509, 0.954592,
		0.697631, -0.654757, 0.290867,
		0.668514, 0.740905, 0.064418,
		33.305347, 36.998047, 40.180428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296070, 36.343853, 40.676994>,  <32.837387, 36.479416, 40.135334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296070, 36.343853, 40.676994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330894, 36.735725, 40.604721>,  <33.351788, 36.970848, 40.561356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330894, 36.735725, 40.604721>,  <33.296070, 36.343853, 40.676994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330894, 36.735725, 40.604721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041998, 0.184821, 0.981874,
		0.995318, -0.077892, 0.057235,
		0.087058, 0.979681, -0.180684,
		33.357014, 37.029629, 40.550514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787228, 36.547848, 41.110035>,  <33.296070, 36.343853, 40.676994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787228, 36.547848, 41.110035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.547779, 36.857471, 41.027580>,  <33.404110, 37.043243, 40.978107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.547779, 36.857471, 41.027580>,  <33.787228, 36.547848, 41.110035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547779, 36.857471, 41.027580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062295, 0.211571, 0.975375,
		0.798607, 0.596721, -0.078431,
		-0.598620, 0.774056, -0.206135,
		33.368195, 37.089687, 40.965740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979973, 37.073502, 41.609760>,  <33.787228, 36.547848, 41.110035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979973, 37.073502, 41.609760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643490, 37.236546, 41.467648>,  <33.441601, 37.334370, 41.382378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643490, 37.236546, 41.467648>,  <33.979973, 37.073502, 41.609760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643490, 37.236546, 41.467648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181489, 0.406108, 0.895622,
		0.509347, 0.817883, -0.267645,
		-0.841206, 0.407607, -0.355286,
		33.391129, 37.358829, 41.361061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027512, 37.722122, 41.783520>,  <33.979973, 37.073502, 41.609760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027512, 37.722122, 41.783520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.635872, 37.682529, 41.712448>,  <33.400887, 37.658772, 41.669807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.635872, 37.682529, 41.712448>,  <34.027512, 37.722122, 41.783520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635872, 37.682529, 41.712448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203284, 0.504374, 0.839216,
		0.006544, 0.857793, -0.513954,
		-0.979098, -0.098986, -0.177676,
		33.342144, 37.652832, 41.659145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767681, 38.389130, 41.829220>,  <34.027512, 37.722122, 41.783520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767681, 38.389130, 41.829220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.453842, 38.148571, 41.889534>,  <33.265541, 38.004234, 41.925724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.453842, 38.148571, 41.889534>,  <33.767681, 38.389130, 41.829220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453842, 38.148571, 41.889534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135158, 0.403249, 0.905054,
		-0.605100, 0.689719, -0.397669,
		-0.784593, -0.601397, 0.150785,
		33.218464, 37.968151, 41.934769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222691, 38.835991, 42.195114>,  <33.767681, 38.389130, 41.829220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222691, 38.835991, 42.195114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149067, 38.452103, 42.280029>,  <33.104893, 38.221771, 42.330978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149067, 38.452103, 42.280029>,  <33.222691, 38.835991, 42.195114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149067, 38.452103, 42.280029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279388, 0.258149, 0.924825,
		-0.942371, 0.110916, -0.315649,
		-0.184063, -0.959717, 0.212284,
		33.093849, 38.164188, 42.343716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620674, 38.852741, 42.526318>,  <33.222691, 38.835991, 42.195114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620674, 38.852741, 42.526318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.758102, 38.498955, 42.652607>,  <32.840561, 38.286682, 42.728382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.758102, 38.498955, 42.652607>,  <32.620674, 38.852741, 42.526318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758102, 38.498955, 42.652607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274081, 0.227118, 0.934504,
		-0.898240, -0.407606, -0.164383,
		0.343575, -0.884463, 0.315723,
		32.861176, 38.233616, 42.747322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064064, 38.438049, 42.894249>,  <32.620674, 38.852741, 42.526318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064064, 38.438049, 42.894249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406311, 38.296120, 43.044987>,  <32.611660, 38.210960, 43.135429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406311, 38.296120, 43.044987>,  <32.064064, 38.438049, 42.894249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406311, 38.296120, 43.044987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382787, 0.056284, 0.922121,
		-0.348404, -0.933236, -0.087666,
		0.855622, -0.354828, 0.376840,
		32.662998, 38.189671, 43.158039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834705, 38.126163, 43.507477>,  <32.064064, 38.438049, 42.894249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834705, 38.126163, 43.507477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230267, 38.108974, 43.564362>,  <32.467602, 38.098663, 43.598492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230267, 38.108974, 43.564362>,  <31.834705, 38.126163, 43.507477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230267, 38.108974, 43.564362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132104, 0.183617, 0.974081,
		-0.067968, -0.982058, 0.175903,
		0.988903, -0.042969, 0.142214,
		32.526939, 38.096085, 43.607025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901806, 37.607044, 44.025364>,  <31.834705, 38.126163, 43.507477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901806, 37.607044, 44.025364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.223991, 37.843979, 44.032978>,  <32.417301, 37.986141, 44.037548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.223991, 37.843979, 44.032978>,  <31.901806, 37.607044, 44.025364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223991, 37.843979, 44.032978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148920, 0.171197, 0.973917,
		0.573632, -0.787288, 0.226104,
		0.805462, 0.592342, 0.019039,
		32.465630, 38.021683, 44.038689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291687, 37.323032, 44.512856>,  <31.901806, 37.607044, 44.025364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291687, 37.323032, 44.512856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406433, 37.704983, 44.482059>,  <32.475281, 37.934151, 44.463581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406433, 37.704983, 44.482059>,  <32.291687, 37.323032, 44.512856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406433, 37.704983, 44.482059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218532, 0.143479, 0.965224,
		0.932714, -0.260059, 0.249829,
		0.286861, 0.954873, -0.076993,
		32.492493, 37.991444, 44.458961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718777, 37.442898, 45.135155>,  <32.291687, 37.323032, 44.512856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718777, 37.442898, 45.135155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.629280, 37.815254, 45.019653>,  <32.575581, 38.038670, 44.950352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.629280, 37.815254, 45.019653>,  <32.718777, 37.442898, 45.135155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629280, 37.815254, 45.019653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217825, 0.241009, 0.945763,
		0.949996, 0.274503, 0.148848,
		-0.223741, 0.930893, -0.288752,
		32.562157, 38.094521, 44.933029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978580, 37.913551, 45.677380>,  <32.718777, 37.442898, 45.135155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978580, 37.913551, 45.677380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705368, 38.140396, 45.493271>,  <32.541439, 38.276505, 45.382805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.705368, 38.140396, 45.493271>,  <32.978580, 37.913551, 45.677380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705368, 38.140396, 45.493271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426392, 0.202032, 0.881687,
		0.593008, 0.798475, 0.103820,
		-0.683030, 0.567116, -0.460270,
		32.500458, 38.310532, 45.355190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538097, 38.200596, 46.055115>,  <32.978580, 37.913551, 45.677380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538097, 38.200596, 46.055115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.760696, 37.887871, 46.167599>,  <33.894257, 37.700237, 46.235088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.760696, 37.887871, 46.167599>,  <33.538097, 38.200596, 46.055115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760696, 37.887871, 46.167599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572910, 0.115962, -0.811373,
		0.601730, 0.612638, 0.512440,
		0.556502, -0.781810, 0.281209,
		33.927647, 37.653328, 46.251961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318867, 38.449028, 46.161098>,  <33.538097, 38.200596, 46.055115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318867, 38.449028, 46.161098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335724, 38.060585, 46.067139>,  <34.345840, 37.827518, 46.010761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335724, 38.060585, 46.067139>,  <34.318867, 38.449028, 46.161098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335724, 38.060585, 46.067139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642552, 0.206383, -0.737924,
		0.765082, -0.119834, 0.632684,
		0.042147, -0.971106, -0.234900,
		34.348370, 37.769253, 45.996670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075024, 38.306679, 46.095745>,  <34.318867, 38.449028, 46.161098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075024, 38.306679, 46.095745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888741, 38.009892, 45.902828>,  <34.776970, 37.831821, 45.787079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888741, 38.009892, 45.902828>,  <35.075024, 38.306679, 46.095745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888741, 38.009892, 45.902828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678261, 0.050788, -0.733064,
		0.568402, -0.668512, 0.479594,
		-0.465705, -0.741965, -0.482293,
		34.749027, 37.787300, 45.758141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582485, 37.773705, 45.932552>,  <35.075024, 38.306679, 46.095745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582485, 37.773705, 45.932552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.274567, 37.725964, 45.681736>,  <35.089817, 37.697319, 45.531246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.274567, 37.725964, 45.681736>,  <35.582485, 37.773705, 45.932552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274567, 37.725964, 45.681736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617165, 0.111497, -0.778894,
		0.162875, -0.986572, -0.012171,
		-0.769792, -0.119351, -0.627038,
		35.043629, 37.690159, 45.493626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897961, 37.444405, 45.383255>,  <35.582485, 37.773705, 45.932552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897961, 37.444405, 45.383255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.550694, 37.590786, 45.249168>,  <35.342335, 37.678616, 45.168716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.550694, 37.590786, 45.249168>,  <35.897961, 37.444405, 45.383255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550694, 37.590786, 45.249168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446109, 0.279532, -0.850205,
		-0.217428, -0.887662, -0.405933,
		-0.868165, 0.365949, -0.335216,
		35.290245, 37.700569, 45.148605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742313, 37.064587, 44.859776>,  <35.897961, 37.444405, 45.383255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742313, 37.064587, 44.859776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519234, 37.390678, 44.797321>,  <35.385387, 37.586334, 44.759850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519234, 37.390678, 44.797321>,  <35.742313, 37.064587, 44.859776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519234, 37.390678, 44.797321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228005, -0.030404, -0.973185,
		-0.798113, -0.578344, -0.168919,
		-0.557700, 0.815226, -0.156131,
		35.351925, 37.635246, 44.750481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427067, 36.904003, 44.277298>,  <35.742313, 37.064587, 44.859776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427067, 36.904003, 44.277298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411503, 37.300655, 44.326538>,  <35.402164, 37.538647, 44.356083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411503, 37.300655, 44.326538>,  <35.427067, 36.904003, 44.277298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411503, 37.300655, 44.326538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375444, 0.128675, -0.917870,
		-0.926028, 0.010500, -0.377309,
		-0.038913, 0.991631, 0.123098,
		35.399830, 37.598145, 44.363468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151695, 37.120300, 43.656017>,  <35.427067, 36.904003, 44.277298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151695, 37.120300, 43.656017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353832, 37.423363, 43.821224>,  <35.475117, 37.605202, 43.920349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353832, 37.423363, 43.821224>,  <35.151695, 37.120300, 43.656017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353832, 37.423363, 43.821224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417629, 0.204094, -0.885399,
		-0.755124, 0.619918, -0.213282,
		0.505345, 0.757659, 0.413013,
		35.505436, 37.650661, 43.945129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231468, 37.664177, 43.121082>,  <35.151695, 37.120300, 43.656017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231468, 37.664177, 43.121082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511227, 37.768974, 43.387074>,  <35.679081, 37.831852, 43.546669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511227, 37.768974, 43.387074>,  <35.231468, 37.664177, 43.121082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511227, 37.768974, 43.387074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609882, 0.266361, -0.746389,
		-0.372673, 0.927584, 0.026508,
		0.699399, 0.261992, 0.664982,
		35.721046, 37.847572, 43.586567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423248, 38.255791, 42.936661>,  <35.231468, 37.664177, 43.121082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423248, 38.255791, 42.936661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.731476, 38.132343, 43.159721>,  <35.916412, 38.058273, 43.293560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.731476, 38.132343, 43.159721>,  <35.423248, 38.255791, 42.936661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731476, 38.132343, 43.159721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627173, 0.211376, -0.749649,
		0.113484, 0.927401, 0.356439,
		0.770568, -0.308622, 0.557653,
		35.962646, 38.039757, 43.327019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094578, 38.676151, 42.718342>,  <35.423248, 38.255791, 42.936661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094578, 38.676151, 42.718342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.229454, 38.347187, 42.901615>,  <36.310379, 38.149807, 43.011581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.229454, 38.347187, 42.901615>,  <36.094578, 38.676151, 42.718342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229454, 38.347187, 42.901615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759204, -0.050245, -0.648910,
		0.556694, 0.566666, 0.607438,
		0.337194, -0.822414, 0.458187,
		36.330612, 38.100464, 43.039070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840858, 38.842175, 42.834972>,  <36.094578, 38.676151, 42.718342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840858, 38.842175, 42.834972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.790665, 38.445572, 42.848648>,  <36.760548, 38.207611, 42.856853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.790665, 38.445572, 42.848648>,  <36.840858, 38.842175, 42.834972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790665, 38.445572, 42.848648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782469, -0.120096, -0.610999,
		0.609915, -0.049923, 0.790893,
		-0.125485, -0.991506, 0.034185,
		36.753017, 38.148121, 42.858902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515694, 38.602703, 42.820602>,  <36.840858, 38.842175, 42.834972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515694, 38.602703, 42.820602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.285717, 38.292740, 42.715569>,  <37.147732, 38.106762, 42.652546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.285717, 38.292740, 42.715569>,  <37.515694, 38.602703, 42.820602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285717, 38.292740, 42.715569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630676, -0.215279, -0.745589,
		0.521235, -0.594281, 0.612491,
		-0.574946, -0.774910, -0.262587,
		37.113232, 38.060268, 42.636791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033001, 37.944302, 42.741966>,  <37.515694, 38.602703, 42.820602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033001, 37.944302, 42.741966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.688927, 37.881878, 42.547760>,  <37.482483, 37.844421, 42.431236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.688927, 37.881878, 42.547760>,  <38.033001, 37.944302, 42.741966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688927, 37.881878, 42.547760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509809, -0.287948, -0.810667,
		-0.013288, -0.944844, 0.327251,
		-0.860185, -0.156063, -0.485516,
		37.430870, 37.835060, 42.402103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.099552, 38.795940, 26.551628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838106, 38.507057, 26.461117>,  <27.681238, 38.333729, 26.406811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838106, 38.507057, 26.461117>,  <28.099552, 38.795940, 26.551628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838106, 38.507057, 26.461117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321228, -0.005984, 0.946983,
		-0.685272, 0.691651, -0.228081,
		-0.653617, -0.722207, -0.226279,
		27.642021, 38.290394, 26.393232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355160, 39.065346, 26.601206>,  <28.099552, 38.795940, 26.551628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355160, 39.065346, 26.601206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325441, 38.667877, 26.634924>,  <27.307610, 38.429398, 26.655155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325441, 38.667877, 26.634924>,  <27.355160, 39.065346, 26.601206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325441, 38.667877, 26.634924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595357, 0.112010, 0.795615,
		-0.800019, 0.008926, -0.599908,
		-0.074298, -0.993667, 0.084296,
		27.303152, 38.369778, 26.660213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675653, 38.909054, 26.842098>,  <27.355160, 39.065346, 26.601206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675653, 38.909054, 26.842098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.904655, 38.595119, 26.936979>,  <27.042057, 38.406757, 26.993908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.904655, 38.595119, 26.936979>,  <26.675653, 38.909054, 26.842098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904655, 38.595119, 26.936979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435716, -0.046161, 0.898900,
		-0.694542, -0.617978, -0.368395,
		0.572505, -0.784839, 0.237202,
		27.076406, 38.359669, 27.008141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219959, 38.320068, 27.023136>,  <26.675653, 38.909054, 26.842098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219959, 38.320068, 27.023136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571457, 38.250942, 27.201101>,  <26.782354, 38.209469, 27.307880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571457, 38.250942, 27.201101>,  <26.219959, 38.320068, 27.023136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571457, 38.250942, 27.201101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471788, -0.173281, 0.864517,
		-0.072302, -0.969593, -0.233799,
		0.878742, -0.172810, 0.444914,
		26.835079, 38.199097, 27.334576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180740, 37.640285, 27.463718>,  <26.219959, 38.320068, 27.023136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180740, 37.640285, 27.463718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504917, 37.820206, 27.613844>,  <26.699423, 37.928158, 27.703920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504917, 37.820206, 27.613844>,  <26.180740, 37.640285, 27.463718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504917, 37.820206, 27.613844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304699, -0.223530, 0.925847,
		0.500339, -0.864706, -0.044105,
		0.810444, 0.449799, 0.375316,
		26.748051, 37.955147, 27.726439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272644, 37.245289, 28.040516>,  <26.180740, 37.640285, 27.463718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272644, 37.245289, 28.040516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531448, 37.549633, 28.060394>,  <26.686731, 37.732239, 28.072321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531448, 37.549633, 28.060394>,  <26.272644, 37.245289, 28.040516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531448, 37.549633, 28.060394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007874, -0.071843, 0.997385,
		0.762440, -0.644928, -0.052474,
		0.647011, 0.760859, 0.049698,
		26.725552, 37.777889, 28.075304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816566, 37.028282, 28.460783>,  <26.272644, 37.245289, 28.040516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816566, 37.028282, 28.460783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.759314, 37.423729, 28.479298>,  <26.724962, 37.660999, 28.490406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.759314, 37.423729, 28.479298>,  <26.816566, 37.028282, 28.460783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759314, 37.423729, 28.479298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112717, -0.062749, 0.991644,
		0.983264, 0.136718, 0.120415,
		-0.143132, 0.988621, 0.046289,
		26.716373, 37.720314, 28.493185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300385, 37.237381, 28.940130>,  <26.816566, 37.028282, 28.460783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300385, 37.237381, 28.940130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034624, 37.536228, 28.932266>,  <26.875168, 37.715534, 28.927547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034624, 37.536228, 28.932266>,  <27.300385, 37.237381, 28.940130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034624, 37.536228, 28.932266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145961, -0.103914, 0.983818,
		0.732983, 0.656521, 0.178090,
		-0.664403, 0.747116, -0.019659,
		26.835302, 37.760365, 28.926369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557083, 37.650841, 29.446543>,  <27.300385, 37.237381, 28.940130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557083, 37.650841, 29.446543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.176308, 37.767933, 29.410498>,  <26.947842, 37.838188, 29.388870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.176308, 37.767933, 29.410498>,  <27.557083, 37.650841, 29.446543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176308, 37.767933, 29.410498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060789, 0.107786, 0.992314,
		0.300198, 0.950099, -0.084811,
		-0.951938, 0.292735, -0.090112,
		26.890726, 37.855755, 29.383465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566404, 38.383991, 29.739704>,  <27.557083, 37.650841, 29.446543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566404, 38.383991, 29.739704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194038, 38.238098, 29.731968>,  <26.970619, 38.150562, 29.727325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194038, 38.238098, 29.731968>,  <27.566404, 38.383991, 29.739704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194038, 38.238098, 29.731968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140471, 0.308643, 0.940748,
		-0.337148, 0.878472, -0.338554,
		-0.930913, -0.364729, -0.019341,
		26.914764, 38.128681, 29.726166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270510, 38.815571, 30.172878>,  <27.566404, 38.383991, 29.739704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270510, 38.815571, 30.172878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038160, 38.490749, 30.150431>,  <26.898750, 38.295856, 30.136963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038160, 38.490749, 30.150431>,  <27.270510, 38.815571, 30.172878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038160, 38.490749, 30.150431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094910, -0.000903, 0.995486,
		-0.808442, 0.583577, -0.076548,
		-0.580873, -0.812058, -0.056118,
		26.863899, 38.247131, 30.133595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834185, 38.927334, 30.678530>,  <27.270510, 38.815571, 30.172878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834185, 38.927334, 30.678530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767641, 38.537716, 30.617142>,  <26.727715, 38.303944, 30.580309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767641, 38.537716, 30.617142>,  <26.834185, 38.927334, 30.678530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767641, 38.537716, 30.617142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099018, -0.138348, 0.985422,
		-0.981081, 0.179131, -0.073433,
		-0.166360, -0.974049, -0.153468,
		26.717733, 38.245502, 30.571102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187283, 38.695606, 31.035334>,  <26.834185, 38.927334, 30.678530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187283, 38.695606, 31.035334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.419575, 38.371746, 31.001354>,  <26.558950, 38.177429, 30.980967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.419575, 38.371746, 31.001354>,  <26.187283, 38.695606, 31.035334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419575, 38.371746, 31.001354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057280, -0.144723, 0.987813,
		-0.812079, -0.568786, -0.130422,
		0.580730, -0.809653, -0.084947,
		26.593794, 38.128849, 30.975870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786798, 38.079979, 31.252840>,  <26.187283, 38.695606, 31.035334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786798, 38.079979, 31.252840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.179382, 38.007713, 31.278454>,  <26.414932, 37.964355, 31.293821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.179382, 38.007713, 31.278454>,  <25.786798, 38.079979, 31.252840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179382, 38.007713, 31.278454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109982, -0.257196, 0.960080,
		-0.156982, -0.949321, -0.272297,
		0.981458, -0.180663, 0.064033,
		26.473820, 37.953514, 31.297663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866343, 37.549946, 31.676018>,  <25.786798, 38.079979, 31.252840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866343, 37.549946, 31.676018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240641, 37.686226, 31.712469>,  <26.465219, 37.767994, 31.734341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240641, 37.686226, 31.712469>,  <25.866343, 37.549946, 31.676018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240641, 37.686226, 31.712469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049611, -0.128659, 0.990447,
		0.349174, -0.931326, -0.103489,
		0.935744, 0.340704, 0.091128,
		26.521364, 37.788437, 31.739807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158701, 37.145958, 32.193245>,  <25.866343, 37.549946, 31.676018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158701, 37.145958, 32.193245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436636, 37.432259, 32.165249>,  <26.603397, 37.604038, 32.148453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436636, 37.432259, 32.165249>,  <26.158701, 37.145958, 32.193245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436636, 37.432259, 32.165249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187147, -0.085992, 0.978561,
		0.694391, -0.693037, -0.193701,
		0.694836, 0.715755, -0.069988,
		26.645086, 37.646984, 32.144253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772654, 36.799400, 32.339310>,  <26.158701, 37.145958, 32.193245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772654, 36.799400, 32.339310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.800531, 37.193542, 32.401550>,  <26.817257, 37.430027, 32.438896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.800531, 37.193542, 32.401550>,  <26.772654, 36.799400, 32.339310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800531, 37.193542, 32.401550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316672, -0.169768, 0.933219,
		0.945971, -0.015763, -0.323867,
		0.069693, 0.985358, 0.155604,
		26.821440, 37.489151, 32.448231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361099, 36.818359, 32.688614>,  <26.772654, 36.799400, 32.339310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361099, 36.818359, 32.688614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.213762, 37.185692, 32.746574>,  <27.125360, 37.406090, 32.781349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.213762, 37.185692, 32.746574>,  <27.361099, 36.818359, 32.688614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213762, 37.185692, 32.746574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389843, 0.011073, 0.920815,
		0.844006, 0.395663, -0.362083,
		-0.368341, 0.918329, 0.144901,
		27.103260, 37.461189, 32.790043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916925, 37.203354, 32.946037>,  <27.361099, 36.818359, 32.688614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916925, 37.203354, 32.946037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574774, 37.372459, 33.065765>,  <27.369482, 37.473923, 33.137600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574774, 37.372459, 33.065765>,  <27.916925, 37.203354, 32.946037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574774, 37.372459, 33.065765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325356, -0.011141, 0.945526,
		0.403073, 0.906169, -0.128021,
		-0.855380, 0.422768, 0.299318,
		27.318159, 37.499290, 33.155560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117151, 37.716293, 33.404388>,  <27.916925, 37.203354, 32.946037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117151, 37.716293, 33.404388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.736242, 37.621601, 33.481472>,  <27.507696, 37.564785, 33.527721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.736242, 37.621601, 33.481472>,  <28.117151, 37.716293, 33.404388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736242, 37.621601, 33.481472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234056, -0.161003, 0.958799,
		-0.195947, 0.958143, 0.208726,
		-0.952272, -0.236727, 0.192712,
		27.450562, 37.550583, 33.539284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804623, 37.815289, 33.536877>,  <28.117151, 37.716293, 33.404388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804623, 37.815289, 33.536877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151346, 37.723499, 33.713959>,  <29.359381, 37.668427, 33.820210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151346, 37.723499, 33.713959>,  <28.804623, 37.815289, 33.536877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151346, 37.723499, 33.713959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452554, -0.010776, -0.891672,
		0.209382, 0.973256, 0.094506,
		0.866807, -0.229469, 0.442707,
		29.411388, 37.654659, 33.846771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228643, 38.338642, 33.311901>,  <28.804623, 37.815289, 33.536877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228643, 38.338642, 33.311901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471712, 38.045017, 33.433151>,  <29.617554, 37.868843, 33.505901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471712, 38.045017, 33.433151>,  <29.228643, 38.338642, 33.311901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471712, 38.045017, 33.433151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553140, 0.117317, -0.824787,
		0.569885, 0.668869, 0.477331,
		0.607674, -0.734064, 0.303121,
		29.654015, 37.824799, 33.524086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939102, 38.560432, 33.291832>,  <29.228643, 38.338642, 33.311901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939102, 38.560432, 33.291832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.967703, 38.162121, 33.268806>,  <29.984863, 37.923134, 33.254990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.967703, 38.162121, 33.268806>,  <29.939102, 38.560432, 33.291832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967703, 38.162121, 33.268806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418403, 0.082332, -0.904522,
		0.905443, 0.040592, 0.422523,
		0.071504, -0.995778, -0.057563,
		29.989155, 37.863388, 33.251537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540380, 38.491093, 33.055058>,  <29.939102, 38.560432, 33.291832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540380, 38.491093, 33.055058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376814, 38.143616, 32.943230>,  <30.278673, 37.935127, 32.876133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376814, 38.143616, 32.943230>,  <30.540380, 38.491093, 33.055058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376814, 38.143616, 32.943230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511293, 0.035661, -0.858667,
		0.755889, -0.494063, 0.429575,
		-0.408916, -0.868695, -0.279567,
		30.254139, 37.883007, 32.859360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046148, 38.060879, 32.683739>,  <30.540380, 38.491093, 33.055058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046148, 38.060879, 32.683739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703014, 37.887489, 32.573307>,  <30.497133, 37.783455, 32.507046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703014, 37.887489, 32.573307>,  <31.046148, 38.060879, 32.683739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703014, 37.887489, 32.573307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368815, -0.145135, -0.918102,
		0.357901, -0.889404, 0.284372,
		-0.857836, -0.433470, -0.276082,
		30.445663, 37.757450, 32.490482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307428, 37.620308, 32.238037>,  <31.046148, 38.060879, 32.683739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307428, 37.620308, 32.238037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.918842, 37.648323, 32.147396>,  <30.685690, 37.665134, 32.093014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.918842, 37.648323, 32.147396>,  <31.307428, 37.620308, 32.238037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918842, 37.648323, 32.147396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230156, 0.047637, -0.971987,
		-0.057285, -0.996406, -0.062398,
		-0.971466, 0.070041, -0.226600,
		30.627403, 37.669334, 32.079414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107765, 36.990860, 31.717840>,  <31.307428, 37.620308, 32.238037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107765, 36.990860, 31.717840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.854856, 37.299801, 31.693512>,  <30.703112, 37.485165, 31.678915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.854856, 37.299801, 31.693512>,  <31.107765, 36.990860, 31.717840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854856, 37.299801, 31.693512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145375, 0.041168, -0.988520,
		-0.760984, -0.633856, -0.138310,
		-0.632273, 0.772354, -0.060819,
		30.665174, 37.531506, 31.675266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774008, 36.912472, 31.106634>,  <31.107765, 36.990860, 31.717840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774008, 36.912472, 31.106634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.650803, 37.287712, 31.169996>,  <30.576880, 37.512856, 31.208014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.650803, 37.287712, 31.169996>,  <30.774008, 36.912472, 31.106634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650803, 37.287712, 31.169996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090011, 0.194490, -0.976766,
		-0.947114, -0.286600, -0.144346,
		-0.308015, 0.938101, 0.158407,
		30.558397, 37.569141, 31.217518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136396, 37.071678, 30.668959>,  <30.774008, 36.912472, 31.106634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136396, 37.071678, 30.668959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291946, 37.429344, 30.757727>,  <30.385277, 37.643944, 30.810987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291946, 37.429344, 30.757727>,  <30.136396, 37.071678, 30.668959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291946, 37.429344, 30.757727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117887, 0.287193, -0.950591,
		-0.913717, 0.343501, 0.217092,
		0.388876, 0.894163, 0.221918,
		30.408609, 37.697594, 30.824303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673290, 37.609451, 30.289890>,  <30.136396, 37.071678, 30.668959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673290, 37.609451, 30.289890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.022440, 37.794075, 30.353197>,  <30.231930, 37.904850, 30.391182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.022440, 37.794075, 30.353197>,  <29.673290, 37.609451, 30.289890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022440, 37.794075, 30.353197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015845, 0.351000, -0.936241,
		-0.487687, 0.814714, 0.313693,
		0.872875, 0.461563, 0.158269,
		30.284302, 37.932545, 30.400679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680124, 38.122757, 29.890316>,  <29.673290, 37.609451, 30.289890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680124, 38.122757, 29.890316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066502, 38.168396, 29.983212>,  <30.298328, 38.195778, 30.038948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066502, 38.168396, 29.983212>,  <29.680124, 38.122757, 29.890316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066502, 38.168396, 29.983212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151231, 0.479341, -0.864501,
		-0.209957, 0.870181, 0.445762,
		0.965944, 0.114095, 0.232239,
		30.356285, 38.202625, 30.052883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783125, 38.816719, 29.740961>,  <29.680124, 38.122757, 29.890316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783125, 38.816719, 29.740961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109993, 38.588898, 29.705545>,  <30.306114, 38.452206, 29.684296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109993, 38.588898, 29.705545>,  <29.783125, 38.816719, 29.740961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109993, 38.588898, 29.705545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249530, 0.488030, -0.836398,
		0.519586, 0.661386, 0.540925,
		0.817169, -0.569558, -0.088538,
		30.355145, 38.418030, 29.678984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312475, 39.285957, 29.440983>,  <29.783125, 38.816719, 29.740961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312475, 39.285957, 29.440983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470655, 38.926693, 29.364109>,  <30.565563, 38.711136, 29.317986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470655, 38.926693, 29.364109>,  <30.312475, 39.285957, 29.440983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470655, 38.926693, 29.364109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177786, 0.280131, -0.943355,
		0.901117, 0.338882, 0.270458,
		0.395450, -0.898157, -0.192182,
		30.589291, 38.657246, 29.306454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001667, 39.422050, 29.124163>,  <30.312475, 39.285957, 29.440983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001667, 39.422050, 29.124163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.881350, 39.057289, 29.012484>,  <30.809158, 38.838432, 28.945477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.881350, 39.057289, 29.012484>,  <31.001667, 39.422050, 29.124163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881350, 39.057289, 29.012484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212120, 0.221450, -0.951822,
		0.929800, -0.345526, 0.126823,
		-0.300795, -0.911905, -0.279197,
		30.791111, 38.783718, 28.928724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388563, 39.259445, 28.463293>,  <31.001667, 39.422050, 29.124163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388563, 39.259445, 28.463293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089815, 38.993568, 28.455521>,  <30.910566, 38.834042, 28.450857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089815, 38.993568, 28.455521>,  <31.388563, 39.259445, 28.463293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089815, 38.993568, 28.455521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032106, 0.065234, -0.997353,
		0.664196, -0.744268, -0.070062,
		-0.746869, -0.664688, -0.019433,
		30.865755, 38.794163, 28.449690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590393, 38.701038, 28.002430>,  <31.388563, 39.259445, 28.463293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590393, 38.701038, 28.002430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.191938, 38.674950, 28.025946>,  <30.952866, 38.659294, 28.040054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.191938, 38.674950, 28.025946>,  <31.590393, 38.701038, 28.002430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191938, 38.674950, 28.025946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052240, -0.097903, -0.993824,
		0.070580, -0.993056, 0.094117,
		-0.996138, -0.065228, 0.058788,
		30.893097, 38.655380, 28.043581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352612, 38.093292, 27.590666>,  <31.590393, 38.701038, 28.002430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352612, 38.093292, 27.590666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018288, 38.312134, 27.608971>,  <30.817694, 38.443439, 27.619953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018288, 38.312134, 27.608971>,  <31.352612, 38.093292, 27.590666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018288, 38.312134, 27.608971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179731, -0.193903, -0.964416,
		-0.518764, -0.814295, 0.260398,
		-0.835811, 0.547106, 0.045764,
		30.767544, 38.476265, 27.622700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863972, 37.730347, 27.110893>,  <31.352612, 38.093292, 27.590666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863972, 37.730347, 27.110893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747078, 38.108826, 27.166491>,  <30.676943, 38.335911, 27.199848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747078, 38.108826, 27.166491>,  <30.863972, 37.730347, 27.110893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747078, 38.108826, 27.166491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210896, 0.078000, -0.974392,
		-0.932804, -0.314062, 0.176754,
		-0.292232, 0.946193, 0.138993,
		30.659409, 38.392685, 27.208189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281855, 37.771233, 26.641930>,  <30.863972, 37.730347, 27.110893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281855, 37.771233, 26.641930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389853, 38.144321, 26.737532>,  <30.454651, 38.368176, 26.794893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389853, 38.144321, 26.737532>,  <30.281855, 37.771233, 26.641930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389853, 38.144321, 26.737532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178433, 0.292391, -0.939505,
		-0.946184, 0.211017, 0.245374,
		0.269997, 0.932727, 0.239003,
		30.470852, 38.424141, 26.809233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750278, 38.220047, 26.322788>,  <30.281855, 37.771233, 26.641930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750278, 38.220047, 26.322788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.061968, 38.467754, 26.361403>,  <30.248981, 38.616379, 26.384571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.061968, 38.467754, 26.361403>,  <29.750278, 38.220047, 26.322788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061968, 38.467754, 26.361403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336544, 0.543368, -0.769083,
		-0.528722, 0.566800, 0.631816,
		0.779224, 0.619265, 0.096538,
		30.295734, 38.653534, 26.390364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489975, 38.910229, 26.251535>,  <29.750278, 38.220047, 26.322788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489975, 38.910229, 26.251535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882420, 38.956448, 26.189480>,  <30.117887, 38.984177, 26.152246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882420, 38.956448, 26.189480>,  <29.489975, 38.910229, 26.251535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882420, 38.956448, 26.189480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191746, 0.475048, -0.858815,
		-0.025532, 0.872341, 0.488230,
		0.981112, 0.115543, -0.155139,
		30.176754, 38.991112, 26.142939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672401, 39.626148, 26.095783>,  <29.489975, 38.910229, 26.251535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672401, 39.626148, 26.095783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956865, 39.402576, 25.925207>,  <30.127544, 39.268433, 25.822863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956865, 39.402576, 25.925207>,  <29.672401, 39.626148, 26.095783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956865, 39.402576, 25.925207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206570, 0.413668, -0.886683,
		0.671997, 0.718663, 0.178727,
		0.711160, -0.558929, -0.426438,
		30.170214, 39.234898, 25.797276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.704498, 33.094837, 46.368664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378887, 33.296448, 46.253204>,  <35.183521, 33.417416, 46.183929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378887, 33.296448, 46.253204>,  <35.704498, 33.094837, 46.368664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378887, 33.296448, 46.253204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294344, 0.070450, 0.953099,
		0.500722, 0.860811, 0.091008,
		-0.814027, 0.504025, -0.288650,
		35.134678, 33.447655, 46.166611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796108, 33.825371, 46.619362>,  <35.704498, 33.094837, 46.368664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796108, 33.825371, 46.619362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410286, 33.733147, 46.568031>,  <35.178791, 33.677811, 46.537231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.410286, 33.733147, 46.568031>,  <35.796108, 33.825371, 46.619362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410286, 33.733147, 46.568031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184958, 0.243912, 0.951996,
		-0.188194, 0.941992, -0.277912,
		-0.964559, -0.230562, -0.128327,
		35.120918, 33.663979, 46.529533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454712, 34.277630, 47.123844>,  <35.796108, 33.825371, 46.619362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454712, 34.277630, 47.123844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155910, 34.028061, 47.032009>,  <34.976627, 33.878319, 46.976910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155910, 34.028061, 47.032009>,  <35.454712, 34.277630, 47.123844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155910, 34.028061, 47.032009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413246, 0.165254, 0.895499,
		-0.520778, 0.763818, -0.381278,
		-0.747006, -0.623918, -0.229584,
		34.931808, 33.840885, 46.963135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825714, 34.582573, 47.096657>,  <35.454712, 34.277630, 47.123844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825714, 34.582573, 47.096657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762077, 34.202892, 47.205254>,  <34.723896, 33.975082, 47.270412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762077, 34.202892, 47.205254>,  <34.825714, 34.582573, 47.096657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762077, 34.202892, 47.205254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312821, 0.309287, 0.898045,
		-0.936393, 0.057947, -0.346136,
		-0.159094, -0.949201, 0.271488,
		34.714348, 33.918133, 47.286701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258377, 34.697582, 47.462387>,  <34.825714, 34.582573, 47.096657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258377, 34.697582, 47.462387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324776, 34.307835, 47.523106>,  <34.364613, 34.073986, 47.559536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324776, 34.307835, 47.523106>,  <34.258377, 34.697582, 47.462387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324776, 34.307835, 47.523106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381277, 0.078546, 0.921118,
		-0.909436, -0.210776, -0.358468,
		0.165993, -0.974374, 0.151796,
		34.374573, 34.015522, 47.568645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636364, 34.576927, 47.845154>,  <34.258377, 34.697582, 47.462387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636364, 34.576927, 47.845154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.880348, 34.263500, 47.892445>,  <34.026737, 34.075443, 47.920818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.880348, 34.263500, 47.892445>,  <33.636364, 34.576927, 47.845154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880348, 34.263500, 47.892445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260202, -0.057121, 0.963863,
		-0.748496, -0.618679, -0.238726,
		0.609958, -0.783564, 0.118227,
		34.063335, 34.028431, 47.927914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311882, 34.120506, 48.139896>,  <33.636364, 34.576927, 47.845154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311882, 34.120506, 48.139896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683949, 34.027813, 48.253803>,  <33.907188, 33.972195, 48.322147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683949, 34.027813, 48.253803>,  <33.311882, 34.120506, 48.139896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683949, 34.027813, 48.253803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288278, 0.019322, 0.957352,
		-0.227357, -0.972586, -0.048832,
		0.930164, -0.231738, 0.284768,
		33.962997, 33.958290, 48.339233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301189, 33.479465, 48.583378>,  <33.311882, 34.120506, 48.139896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301189, 33.479465, 48.583378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640881, 33.672703, 48.668640>,  <33.844696, 33.788647, 48.719799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640881, 33.672703, 48.668640>,  <33.301189, 33.479465, 48.583378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640881, 33.672703, 48.668640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245206, 0.003285, 0.969465,
		0.467641, -0.875563, 0.121247,
		0.849227, 0.483092, 0.213157,
		33.895649, 33.817631, 48.732586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609013, 33.088974, 49.148251>,  <33.301189, 33.479465, 48.583378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609013, 33.088974, 49.148251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800068, 33.438721, 49.182529>,  <33.914700, 33.648571, 49.203094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800068, 33.438721, 49.182529>,  <33.609013, 33.088974, 49.148251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800068, 33.438721, 49.182529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166694, -0.005577, 0.985993,
		0.862600, -0.485228, 0.143089,
		0.477633, 0.874369, 0.085695,
		33.943359, 33.701031, 49.208237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867931, 33.073265, 49.820229>,  <33.609013, 33.088974, 49.148251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867931, 33.073265, 49.820229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885365, 33.460258, 49.720573>,  <33.895824, 33.692455, 49.660782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885365, 33.460258, 49.720573>,  <33.867931, 33.073265, 49.820229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885365, 33.460258, 49.720573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341075, 0.248797, 0.906514,
		0.939025, 0.045465, 0.340829,
		0.043582, 0.967488, -0.249134,
		33.898438, 33.750504, 49.645832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237713, 33.418098, 50.356804>,  <33.867931, 33.073265, 49.820229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237713, 33.418098, 50.356804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017746, 33.700378, 50.178108>,  <33.885765, 33.869747, 50.070889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017746, 33.700378, 50.178108>,  <34.237713, 33.418098, 50.356804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017746, 33.700378, 50.178108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272703, 0.353860, 0.894660,
		0.789447, 0.613815, -0.002146,
		-0.549915, 0.705701, -0.446742,
		33.852772, 33.912090, 50.044086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428329, 34.062012, 50.658684>,  <34.237713, 33.418098, 50.356804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428329, 34.062012, 50.658684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064861, 34.117622, 50.501209>,  <33.846779, 34.150990, 50.406723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064861, 34.117622, 50.501209>,  <34.428329, 34.062012, 50.658684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064861, 34.117622, 50.501209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350203, 0.259601, 0.899980,
		0.227320, 0.955656, -0.187206,
		-0.908671, 0.139024, -0.393686,
		33.792259, 34.159328, 50.383102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173691, 34.647289, 51.005604>,  <34.428329, 34.062012, 50.658684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173691, 34.647289, 51.005604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867249, 34.414944, 50.895565>,  <33.683384, 34.275536, 50.829540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867249, 34.414944, 50.895565>,  <34.173691, 34.647289, 51.005604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867249, 34.414944, 50.895565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504181, 0.277688, 0.817736,
		-0.398605, 0.765169, -0.505599,
		-0.766105, -0.580867, -0.275096,
		33.637417, 34.240685, 50.813038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511841, 35.049091, 50.955589>,  <34.173691, 34.647289, 51.005604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511841, 35.049091, 50.955589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419025, 34.672005, 51.051460>,  <33.363335, 34.445751, 51.108982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419025, 34.672005, 51.051460>,  <33.511841, 35.049091, 50.955589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419025, 34.672005, 51.051460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443769, 0.321861, 0.836346,
		-0.865578, 0.087708, -0.493033,
		-0.232042, -0.942716, 0.239674,
		33.349411, 34.389191, 51.123363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876263, 35.151196, 51.414951>,  <33.511841, 35.049091, 50.955589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876263, 35.151196, 51.414951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854565, 35.546535, 51.471821>,  <32.841545, 35.783741, 51.505943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854565, 35.546535, 51.471821>,  <32.876263, 35.151196, 51.414951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854565, 35.546535, 51.471821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182067, 0.149792, -0.971810,
		-0.981789, -0.026834, -0.188072,
		-0.054249, 0.988354, 0.142178,
		32.838291, 35.843040, 51.514473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419270, 35.479721, 50.856339>,  <32.876263, 35.151196, 51.414951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419270, 35.479721, 50.856339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656685, 35.773041, 50.988991>,  <32.799133, 35.949032, 51.068581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656685, 35.773041, 50.988991>,  <32.419270, 35.479721, 50.856339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656685, 35.773041, 50.988991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115799, 0.329956, -0.936867,
		-0.796430, 0.594471, 0.110926,
		0.593541, 0.733303, 0.331626,
		32.834747, 35.993031, 51.088478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110710, 36.109436, 50.733913>,  <32.419270, 35.479721, 50.856339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110710, 36.109436, 50.733913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.493896, 36.207748, 50.793110>,  <32.723808, 36.266735, 50.828629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.493896, 36.207748, 50.793110>,  <32.110710, 36.109436, 50.733913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493896, 36.207748, 50.793110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033812, 0.608944, -0.792492,
		-0.284897, 0.754173, 0.591656,
		0.957962, 0.245784, 0.147987,
		32.781284, 36.281483, 50.837505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071774, 36.742996, 50.521683>,  <32.110710, 36.109436, 50.733913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071774, 36.742996, 50.521683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.467403, 36.688175, 50.543415>,  <32.704781, 36.655285, 50.556454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.467403, 36.688175, 50.543415>,  <32.071774, 36.742996, 50.521683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467403, 36.688175, 50.543415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122724, 0.561175, -0.818549,
		0.081693, 0.816272, 0.571862,
		0.989073, -0.137051, 0.054332,
		32.764126, 36.647060, 50.559715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415154, 37.397293, 50.531315>,  <32.071774, 36.742996, 50.521683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415154, 37.397293, 50.531315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628902, 37.096306, 50.377304>,  <32.757153, 36.915714, 50.284897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628902, 37.096306, 50.377304>,  <32.415154, 37.397293, 50.531315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628902, 37.096306, 50.377304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067757, 0.492182, -0.867852,
		0.842530, 0.437667, 0.313992,
		0.534371, -0.752466, -0.385023,
		32.789215, 36.870567, 50.261799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664894, 37.626019, 49.973660>,  <32.415154, 37.397293, 50.531315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664894, 37.626019, 49.973660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804790, 37.264507, 49.874969>,  <32.888729, 37.047600, 49.815754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804790, 37.264507, 49.874969>,  <32.664894, 37.626019, 49.973660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804790, 37.264507, 49.874969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219684, 0.335130, -0.916202,
		0.910725, 0.266233, 0.315754,
		0.349742, -0.903774, -0.246724,
		32.909714, 36.993374, 49.800953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431232, 37.630875, 49.721233>,  <32.664894, 37.626019, 49.973660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431232, 37.630875, 49.721233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269730, 37.290749, 49.586205>,  <33.172829, 37.086674, 49.505188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269730, 37.290749, 49.586205>,  <33.431232, 37.630875, 49.721233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269730, 37.290749, 49.586205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242182, 0.256480, -0.935717,
		0.882231, -0.459551, 0.102376,
		-0.403752, -0.850312, -0.337569,
		33.148605, 37.035656, 49.484932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004276, 37.385578, 49.315269>,  <33.431232, 37.630875, 49.721233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004276, 37.385578, 49.315269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657578, 37.225868, 49.195721>,  <33.449558, 37.130043, 49.123989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657578, 37.225868, 49.195721>,  <34.004276, 37.385578, 49.315269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657578, 37.225868, 49.195721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273776, 0.120003, -0.954278,
		0.416883, -0.908945, 0.005298,
		-0.866750, -0.399273, -0.298874,
		33.397552, 37.106087, 49.106060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222626, 36.982082, 48.862534>,  <34.004276, 37.385578, 49.315269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222626, 36.982082, 48.862534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840004, 37.004917, 48.748165>,  <33.610432, 37.018620, 48.679543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.840004, 37.004917, 48.748165>,  <34.222626, 36.982082, 48.862534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840004, 37.004917, 48.748165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277216, -0.125809, -0.952535,
		-0.090344, -0.990411, 0.104519,
		-0.956551, 0.057082, -0.285924,
		33.553040, 37.022045, 48.662388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111778, 36.497360, 48.296993>,  <34.222626, 36.982082, 48.862534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111778, 36.497360, 48.296993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816704, 36.761532, 48.240910>,  <33.639660, 36.920036, 48.207260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816704, 36.761532, 48.240910>,  <34.111778, 36.497360, 48.296993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816704, 36.761532, 48.240910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102354, -0.095870, -0.990117,
		-0.667345, -0.744742, 0.003124,
		-0.737682, 0.660430, -0.140206,
		33.595398, 36.959660, 48.198849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906345, 36.341389, 47.631367>,  <34.111778, 36.497360, 48.296993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906345, 36.341389, 47.631367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724892, 36.692139, 47.694996>,  <33.616020, 36.902588, 47.733173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724892, 36.692139, 47.694996>,  <33.906345, 36.341389, 47.631367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724892, 36.692139, 47.694996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048848, 0.153759, -0.986900,
		-0.889850, -0.455460, -0.026917,
		-0.453632, 0.876878, 0.159071,
		33.588802, 36.955200, 47.742718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357830, 36.349976, 47.085751>,  <33.906345, 36.341389, 47.631367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357830, 36.349976, 47.085751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454765, 36.713501, 47.221592>,  <33.512924, 36.931618, 47.303097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454765, 36.713501, 47.221592>,  <33.357830, 36.349976, 47.085751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454765, 36.713501, 47.221592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186763, 0.299789, -0.935546,
		-0.952047, 0.290141, -0.097084,
		0.242336, 0.908815, 0.339601,
		33.527466, 36.986145, 47.323471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963497, 36.935398, 46.679245>,  <33.357830, 36.349976, 47.085751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963497, 36.935398, 46.679245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289738, 37.085873, 46.855103>,  <33.485481, 37.176155, 46.960617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289738, 37.085873, 46.855103>,  <32.963497, 36.935398, 46.679245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289738, 37.085873, 46.855103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292446, 0.387619, -0.874201,
		-0.499274, 0.841568, 0.206128,
		0.815598, 0.376184, 0.439641,
		33.534416, 37.198727, 46.986996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031719, 37.594414, 46.305099>,  <32.963497, 36.935398, 46.679245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031719, 37.594414, 46.305099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381424, 37.490265, 46.468990>,  <33.591248, 37.427776, 46.567326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381424, 37.490265, 46.468990>,  <33.031719, 37.594414, 46.305099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381424, 37.490265, 46.468990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475253, 0.286889, -0.831763,
		0.099025, 0.921899, 0.374560,
		0.874259, -0.260377, 0.409726,
		33.643703, 37.412151, 46.591908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869987, 38.453499, 46.205341>,  <33.031719, 37.594414, 46.305099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869987, 38.453499, 46.205341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558670, 38.482197, 45.955830>,  <32.371880, 38.499416, 45.806122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558670, 38.482197, 45.955830>,  <32.869987, 38.453499, 46.205341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558670, 38.482197, 45.955830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595118, 0.232498, 0.769272,
		0.200218, 0.969947, -0.138257,
		-0.778297, 0.071743, -0.623784,
		32.325180, 38.503719, 45.768696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428497, 39.053703, 46.406414>,  <32.869987, 38.453499, 46.205341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428497, 39.053703, 46.406414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192657, 38.817455, 46.186035>,  <32.051155, 38.675705, 46.053806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.192657, 38.817455, 46.186035>,  <32.428497, 39.053703, 46.406414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192657, 38.817455, 46.186035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631159, -0.088739, 0.770561,
		-0.503999, 0.802056, -0.320454,
		-0.589596, -0.590620, -0.550949,
		32.015778, 38.640270, 46.020752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716778, 39.305645, 46.473892>,  <32.428497, 39.053703, 46.406414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716778, 39.305645, 46.473892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684521, 38.923412, 46.360508>,  <31.665167, 38.694073, 46.292477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684521, 38.923412, 46.360508>,  <31.716778, 39.305645, 46.473892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684521, 38.923412, 46.360508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782227, -0.115583, 0.612178,
		-0.617752, 0.271100, -0.738164,
		-0.080642, -0.955586, -0.283464,
		31.660328, 38.636738, 46.275467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109709, 39.235390, 46.569305>,  <31.716778, 39.305645, 46.473892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109709, 39.235390, 46.569305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.237700, 38.856926, 46.588871>,  <31.314493, 38.629848, 46.600609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.237700, 38.856926, 46.588871>,  <31.109709, 39.235390, 46.569305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237700, 38.856926, 46.588871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523987, -0.133722, 0.841164,
		-0.789337, -0.294781, -0.538565,
		0.319977, -0.946162, 0.048909,
		31.333693, 38.573078, 46.603542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526539, 38.768749, 46.870720>,  <31.109709, 39.235390, 46.569305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526539, 38.768749, 46.870720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.860035, 38.550499, 46.904594>,  <31.060133, 38.419548, 46.924919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.860035, 38.550499, 46.904594>,  <30.526539, 38.768749, 46.870720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860035, 38.550499, 46.904594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297319, -0.314387, 0.901533,
		-0.465273, -0.776824, -0.424342,
		0.833740, -0.545624, 0.084689,
		31.110157, 38.386810, 46.930000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341145, 38.095200, 47.051838>,  <30.526539, 38.768749, 46.870720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341145, 38.095200, 47.051838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.721565, 38.149982, 47.162651>,  <30.949818, 38.182854, 47.229137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.721565, 38.149982, 47.162651>,  <30.341145, 38.095200, 47.051838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721565, 38.149982, 47.162651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232330, -0.274260, 0.933169,
		0.203784, -0.951853, -0.229016,
		0.951050, 0.136958, 0.277033,
		31.006880, 38.191071, 47.245762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462341, 37.536354, 47.459957>,  <30.341145, 38.095200, 47.051838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462341, 37.536354, 47.459957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.776823, 37.765858, 47.551773>,  <30.965511, 37.903561, 47.606861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.776823, 37.765858, 47.551773>,  <30.462341, 37.536354, 47.459957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776823, 37.765858, 47.551773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061451, -0.297016, 0.952893,
		0.614907, -0.763272, -0.198257,
		0.786202, 0.573758, 0.229541,
		31.012684, 37.937984, 47.620636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278416, 36.703064, 47.562290>,  <30.462341, 37.536354, 47.459957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278416, 36.703064, 47.562290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880074, 36.721874, 47.531143>,  <29.641069, 36.733158, 47.512455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880074, 36.721874, 47.531143>,  <30.278416, 36.703064, 47.562290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880074, 36.721874, 47.531143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083361, 0.129072, -0.988125,
		-0.036412, -0.990520, -0.132456,
		-0.995854, 0.047021, -0.077871,
		29.581318, 36.735981, 47.507782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042967, 36.231392, 47.012428>,  <30.278416, 36.703064, 47.562290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042967, 36.231392, 47.012428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.738428, 36.488255, 47.048168>,  <29.555704, 36.642372, 47.069611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.738428, 36.488255, 47.048168>,  <30.042967, 36.231392, 47.012428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738428, 36.488255, 47.048168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032680, 0.099630, -0.994488,
		-0.647519, -0.760072, -0.054867,
		-0.761348, 0.642156, 0.089351,
		29.510023, 36.680901, 47.074974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385841, 36.032856, 46.693573>,  <30.042967, 36.231392, 47.012428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385841, 36.032856, 46.693573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.316971, 36.424965, 46.732414>,  <29.275648, 36.660229, 46.755718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.316971, 36.424965, 46.732414>,  <29.385841, 36.032856, 46.693573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316971, 36.424965, 46.732414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150575, 0.071228, -0.986029,
		-0.973490, -0.184393, 0.135340,
		-0.172177, 0.980268, 0.097104,
		29.265318, 36.719044, 46.761547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853540, 36.142548, 46.290871>,  <29.385841, 36.032856, 46.693573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853540, 36.142548, 46.290871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.044720, 36.490906, 46.336655>,  <29.159428, 36.699921, 46.364124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.044720, 36.490906, 46.336655>,  <28.853540, 36.142548, 46.290871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044720, 36.490906, 46.336655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195109, 0.232307, -0.952873,
		-0.856444, 0.433094, 0.280951,
		0.477950, 0.870898, 0.114457,
		29.188105, 36.752174, 46.370991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459211, 36.562279, 45.916397>,  <28.853540, 36.142548, 46.290871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459211, 36.562279, 45.916397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.769379, 36.807194, 45.978146>,  <28.955479, 36.954144, 46.015194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.769379, 36.807194, 45.978146>,  <28.459211, 36.562279, 45.916397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769379, 36.807194, 45.978146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101410, 0.362056, -0.926624,
		-0.623252, 0.702865, 0.342837,
		0.775418, 0.612287, 0.154375,
		29.002005, 36.990879, 46.024460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382622, 37.163155, 45.666916>,  <28.459211, 36.562279, 45.916397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382622, 37.163155, 45.666916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782337, 37.149624, 45.660198>,  <29.022165, 37.141506, 45.656166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782337, 37.149624, 45.660198>,  <28.382622, 37.163155, 45.666916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782337, 37.149624, 45.660198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011363, 0.154858, -0.987872,
		0.036022, 0.987357, 0.154363,
		0.999286, -0.033831, -0.016797,
		29.082123, 37.139473, 45.655159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519611, 37.611134, 45.112869>,  <28.382622, 37.163155, 45.666916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519611, 37.611134, 45.112869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.856001, 37.402084, 45.168919>,  <29.057835, 37.276657, 45.202549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.856001, 37.402084, 45.168919>,  <28.519611, 37.611134, 45.112869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856001, 37.402084, 45.168919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184344, 0.033268, -0.982299,
		0.508706, 0.851917, 0.124319,
		0.840973, -0.522619, 0.140122,
		29.108294, 37.245300, 45.210957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.393829, 31.817623, 49.970371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.302975, 32.207104, 49.963322>,  <31.248461, 32.440792, 49.959091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.302975, 32.207104, 49.963322>,  <31.393829, 31.817623, 49.970371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302975, 32.207104, 49.963322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015881, -0.014391, -0.999770,
		-0.973733, -0.227365, -0.012195,
		-0.227138, 0.973703, -0.017624,
		31.234833, 32.499214, 49.958035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827951, 31.977551, 49.529037>,  <31.393829, 31.817623, 49.970371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827951, 31.977551, 49.529037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.051355, 32.306786, 49.570202>,  <31.185398, 32.504326, 49.594898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.051355, 32.306786, 49.570202>,  <30.827951, 31.977551, 49.529037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051355, 32.306786, 49.570202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019793, 0.137249, -0.990339,
		-0.829261, 0.551078, 0.092946,
		0.558511, 0.823089, 0.102908,
		31.218908, 32.553711, 49.601074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661419, 32.714455, 49.206688>,  <30.827951, 31.977551, 49.529037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661419, 32.714455, 49.206688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.061266, 32.724792, 49.210548>,  <31.301174, 32.730995, 49.212864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.061266, 32.724792, 49.210548>,  <30.661419, 32.714455, 49.206688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061266, 32.724792, 49.210548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010132, -0.018698, -0.999774,
		-0.025661, 0.999491, -0.018952,
		0.999619, 0.025847, 0.009647,
		31.361153, 32.732548, 49.213444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881123, 33.311993, 48.765945>,  <30.661419, 32.714455, 49.206688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881123, 33.311993, 48.765945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.179552, 33.045650, 48.767086>,  <31.358610, 32.885845, 48.767773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.179552, 33.045650, 48.767086>,  <30.881123, 33.311993, 48.765945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179552, 33.045650, 48.767086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037687, -0.046506, -0.998207,
		0.664795, 0.744630, -0.059792,
		0.746075, -0.665856, 0.002854,
		31.403374, 32.845894, 48.767941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253376, 33.478424, 48.145802>,  <30.881123, 33.311993, 48.765945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253376, 33.478424, 48.145802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398033, 33.117424, 48.239365>,  <31.484827, 32.900826, 48.295502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398033, 33.117424, 48.239365>,  <31.253376, 33.478424, 48.145802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398033, 33.117424, 48.239365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064228, -0.226172, -0.971968,
		0.930102, 0.366528, -0.023828,
		0.361643, -0.902498, 0.233904,
		31.506527, 32.846676, 48.309536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868240, 33.456886, 47.727955>,  <31.253376, 33.478424, 48.145802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868240, 33.456886, 47.727955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.758430, 33.081821, 47.813213>,  <31.692545, 32.856785, 47.864368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.758430, 33.081821, 47.813213>,  <31.868240, 33.456886, 47.727955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758430, 33.081821, 47.813213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149940, -0.260691, -0.953708,
		0.949818, -0.229857, 0.212158,
		-0.274524, -0.937660, 0.213144,
		31.676073, 32.800522, 47.877155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322533, 33.139030, 47.307907>,  <31.868240, 33.456886, 47.727955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322533, 33.139030, 47.307907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.044464, 32.866833, 47.400570>,  <31.877623, 32.703514, 47.456165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.044464, 32.866833, 47.400570>,  <32.322533, 33.139030, 47.307907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044464, 32.866833, 47.400570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025089, -0.345032, -0.938256,
		0.718406, -0.646436, 0.256929,
		-0.695171, -0.680494, 0.231655,
		31.835913, 32.662685, 47.470066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538815, 32.360867, 47.242535>,  <32.322533, 33.139030, 47.307907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538815, 32.360867, 47.242535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.141460, 32.376389, 47.199318>,  <31.903048, 32.385704, 47.173389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.141460, 32.376389, 47.199318>,  <32.538815, 32.360867, 47.242535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141460, 32.376389, 47.199318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079977, -0.441176, -0.893850,
		-0.082352, -0.896581, 0.435155,
		-0.993389, 0.038808, -0.108038,
		31.843443, 32.388031, 47.166908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279114, 31.755259, 46.816204>,  <32.538815, 32.360867, 47.242535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279114, 31.755259, 46.816204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.952629, 31.986361, 46.816467>,  <31.756739, 32.125023, 46.816624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.952629, 31.986361, 46.816467>,  <32.279114, 31.755259, 46.816204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952629, 31.986361, 46.816467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227379, -0.320177, -0.919666,
		-0.531132, -0.750789, 0.392701,
		-0.816209, 0.577756, 0.000657,
		31.707766, 32.159687, 46.816666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859394, 31.425337, 46.486076>,  <32.279114, 31.755259, 46.816204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859394, 31.425337, 46.486076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648838, 31.765091, 46.470802>,  <31.522505, 31.968945, 46.461639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648838, 31.765091, 46.470802>,  <31.859394, 31.425337, 46.486076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648838, 31.765091, 46.470802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253652, -0.199745, -0.946447,
		-0.811527, -0.488513, 0.320592,
		-0.526388, 0.849386, -0.038187,
		31.490921, 32.019905, 46.459347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154819, 31.226004, 46.268719>,  <31.859394, 31.425337, 46.486076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154819, 31.226004, 46.268719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.249840, 31.604797, 46.182194>,  <31.306852, 31.832073, 46.130280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.249840, 31.604797, 46.182194>,  <31.154819, 31.226004, 46.268719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249840, 31.604797, 46.182194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087566, -0.200906, -0.975689,
		-0.967420, 0.250719, 0.035198,
		0.237552, 0.946983, -0.216315,
		31.321106, 31.888893, 46.117298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687632, 31.453100, 45.675739>,  <31.154819, 31.226004, 46.268719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687632, 31.453100, 45.675739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.006166, 31.694878, 45.666828>,  <31.197287, 31.839945, 45.661484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.006166, 31.694878, 45.666828>,  <30.687632, 31.453100, 45.675739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006166, 31.694878, 45.666828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013817, -0.054994, -0.998391,
		-0.604696, 0.794748, -0.052145,
		0.796337, 0.604443, -0.022273,
		31.245068, 31.876211, 45.660145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328777, 32.069931, 45.799782>,  <30.687632, 31.453100, 45.675739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328777, 32.069931, 45.799782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.970289, 32.224789, 45.713150>,  <29.755196, 32.317703, 45.661171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.970289, 32.224789, 45.713150>,  <30.328777, 32.069931, 45.799782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970289, 32.224789, 45.713150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018267, 0.455601, 0.889997,
		0.443229, 0.801591, -0.401247,
		-0.896222, 0.387143, -0.216579,
		29.701422, 32.340931, 45.648178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330135, 32.781284, 46.116360>,  <30.328777, 32.069931, 45.799782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330135, 32.781284, 46.116360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.936960, 32.733345, 46.060551>,  <29.701056, 32.704582, 46.027065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.936960, 32.733345, 46.060551>,  <30.330135, 32.781284, 46.116360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936960, 32.733345, 46.060551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181634, 0.513088, 0.838898,
		-0.028957, 0.849927, -0.526103,
		-0.982940, -0.119850, -0.139518,
		29.642078, 32.697392, 46.018696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969246, 33.471859, 46.222599>,  <30.330135, 32.781284, 46.116360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969246, 33.471859, 46.222599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.698399, 33.188072, 46.300743>,  <29.535891, 33.017799, 46.347630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.698399, 33.188072, 46.300743>,  <29.969246, 33.471859, 46.222599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698399, 33.188072, 46.300743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218650, 0.447466, 0.867160,
		-0.702637, 0.544456, -0.458114,
		-0.677121, -0.709466, 0.195361,
		29.495262, 32.975231, 46.359352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574385, 33.750271, 46.595299>,  <29.969246, 33.471859, 46.222599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574385, 33.750271, 46.595299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.387852, 33.400394, 46.648136>,  <29.275932, 33.190468, 46.679840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.387852, 33.400394, 46.648136>,  <29.574385, 33.750271, 46.595299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387852, 33.400394, 46.648136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400415, 0.341867, 0.850173,
		-0.788797, 0.343572, -0.509664,
		-0.466333, -0.874691, 0.132092,
		29.247952, 33.137985, 46.687763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812237, 33.914253, 46.654022>,  <29.574385, 33.750271, 46.595299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812237, 33.914253, 46.654022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.923803, 33.579384, 46.842213>,  <28.990744, 33.378464, 46.955128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.923803, 33.579384, 46.842213>,  <28.812237, 33.914253, 46.654022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923803, 33.579384, 46.842213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486303, 0.299323, 0.820923,
		-0.828078, -0.457764, -0.323633,
		0.278918, -0.837173, 0.470475,
		29.007479, 33.328232, 46.983356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233244, 33.759846, 47.192108>,  <28.812237, 33.914253, 46.654022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233244, 33.759846, 47.192108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.536673, 33.526493, 47.308201>,  <28.718729, 33.386482, 47.377857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.536673, 33.526493, 47.308201>,  <28.233244, 33.759846, 47.192108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536673, 33.526493, 47.308201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392114, -0.052962, 0.918391,
		-0.520401, -0.810470, -0.268928,
		0.758570, -0.583382, 0.290235,
		28.764244, 33.351479, 47.395271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941048, 33.119061, 47.465378>,  <28.233244, 33.759846, 47.192108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941048, 33.119061, 47.465378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.300274, 33.176327, 47.631744>,  <28.515810, 33.210686, 47.731564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.300274, 33.176327, 47.631744>,  <27.941048, 33.119061, 47.465378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300274, 33.176327, 47.631744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412064, -0.057004, 0.909370,
		0.153897, -0.988056, 0.007799,
		0.898064, 0.143163, 0.415916,
		28.569693, 33.219276, 47.756519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914198, 32.736691, 48.031334>,  <27.941048, 33.119061, 47.465378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914198, 32.736691, 48.031334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.197319, 33.012981, 48.090546>,  <28.367191, 33.178757, 48.126072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.197319, 33.012981, 48.090546>,  <27.914198, 32.736691, 48.031334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197319, 33.012981, 48.090546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373677, 0.188269, 0.908251,
		0.599486, -0.698175, 0.391366,
		0.707801, 0.690728, 0.148027,
		28.409658, 33.220200, 48.134953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109407, 32.621780, 48.704784>,  <27.914198, 32.736691, 48.031334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109407, 32.621780, 48.704784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.249317, 32.990433, 48.637539>,  <28.333263, 33.211624, 48.597191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.249317, 32.990433, 48.637539>,  <28.109407, 32.621780, 48.704784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249317, 32.990433, 48.637539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271462, 0.271457, 0.923374,
		0.896642, -0.277335, 0.345135,
		0.349773, 0.921627, -0.168114,
		28.354250, 33.266922, 48.587105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555014, 32.784706, 49.238102>,  <28.109407, 32.621780, 48.704784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555014, 32.784706, 49.238102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.406338, 33.125481, 49.090565>,  <28.317133, 33.329945, 49.002041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.406338, 33.125481, 49.090565>,  <28.555014, 32.784706, 49.238102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406338, 33.125481, 49.090565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291216, 0.270257, 0.917690,
		0.881499, 0.448508, 0.147648,
		-0.371688, 0.851940, -0.368844,
		28.294830, 33.381062, 48.979912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698425, 33.194077, 49.688068>,  <28.555014, 32.784706, 49.238102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698425, 33.194077, 49.688068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.436655, 33.424736, 49.492432>,  <28.279593, 33.563129, 49.375050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.436655, 33.424736, 49.492432>,  <28.698425, 33.194077, 49.688068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436655, 33.424736, 49.492432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348501, 0.344003, 0.871900,
		0.671025, 0.741041, -0.024163,
		-0.654425, 0.576646, -0.489088,
		28.240328, 33.597729, 49.345707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849171, 33.876160, 49.927856>,  <28.698425, 33.194077, 49.688068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849171, 33.876160, 49.927856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.488159, 33.895519, 49.756695>,  <28.271553, 33.907135, 49.653996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.488159, 33.895519, 49.756695>,  <28.849171, 33.876160, 49.927856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488159, 33.895519, 49.756695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397735, 0.287239, 0.871378,
		0.165082, 0.956635, -0.239993,
		-0.902527, 0.048396, -0.427906,
		28.217402, 33.910038, 49.628323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535418, 34.516609, 50.106236>,  <28.849171, 33.876160, 49.927856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535418, 34.516609, 50.106236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.217617, 34.296383, 50.003754>,  <28.026937, 34.164246, 49.942265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.217617, 34.296383, 50.003754>,  <28.535418, 34.516609, 50.106236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217617, 34.296383, 50.003754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512708, 0.382082, 0.768859,
		-0.325419, 0.742218, -0.585846,
		-0.794502, -0.550569, -0.256204,
		27.979267, 34.131214, 49.926891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050827, 34.941872, 50.016411>,  <28.535418, 34.516609, 50.106236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050827, 34.941872, 50.016411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.859066, 34.598156, 50.087734>,  <27.744009, 34.391926, 50.130527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.859066, 34.598156, 50.087734>,  <28.050827, 34.941872, 50.016411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859066, 34.598156, 50.087734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437281, 0.410049, 0.800403,
		-0.760894, 0.305743, -0.572329,
		-0.479401, -0.859290, 0.178309,
		27.715246, 34.340370, 50.141228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625223, 35.473923, 49.968472>,  <28.050827, 34.941872, 50.016411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625223, 35.473923, 49.968472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.828987, 35.803745, 50.066944>,  <28.951246, 36.001640, 50.126026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.828987, 35.803745, 50.066944>,  <28.625223, 35.473923, 49.968472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828987, 35.803745, 50.066944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012773, 0.293298, -0.955936,
		-0.860428, 0.483821, 0.159942,
		0.509412, 0.824557, 0.246182,
		28.981812, 36.051113, 50.140800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314165, 36.049961, 49.714252>,  <28.625223, 35.473923, 49.968472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314165, 36.049961, 49.714252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.695189, 36.171551, 49.720390>,  <28.923801, 36.244503, 49.724075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.695189, 36.171551, 49.720390>,  <28.314165, 36.049961, 49.714252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695189, 36.171551, 49.720390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078087, 0.292819, -0.952974,
		-0.294174, 0.906563, 0.302664,
		0.952557, 0.303974, 0.015349,
		28.980955, 36.262741, 49.724995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340027, 36.631481, 49.458088>,  <28.314165, 36.049961, 49.714252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340027, 36.631481, 49.458088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.730001, 36.556820, 49.409657>,  <28.963985, 36.512024, 49.380600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.730001, 36.556820, 49.409657>,  <28.340027, 36.631481, 49.458088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730001, 36.556820, 49.409657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045460, 0.365596, -0.929663,
		0.217789, 0.911866, 0.347948,
		0.974936, -0.186653, -0.121076,
		29.022482, 36.500824, 49.373333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535486, 37.181263, 49.150047>,  <28.340027, 36.631481, 49.458088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535486, 37.181263, 49.150047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.808002, 36.898914, 49.072491>,  <28.971512, 36.729507, 49.025955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.808002, 36.898914, 49.072491>,  <28.535486, 37.181263, 49.150047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808002, 36.898914, 49.072491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039668, 0.228883, -0.972645,
		0.730939, 0.670343, 0.127935,
		0.681289, -0.705870, -0.193891,
		29.012388, 36.687153, 49.014324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876842, 37.526623, 48.593376>,  <28.535486, 37.181263, 49.150047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876842, 37.526623, 48.593376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.991377, 37.143394, 48.589153>,  <29.060099, 36.913456, 48.586620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.991377, 37.143394, 48.589153>,  <28.876842, 37.526623, 48.593376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991377, 37.143394, 48.589153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203565, 0.071599, -0.976440,
		0.936255, 0.277442, 0.215531,
		0.286337, -0.958071, -0.010557,
		29.077278, 36.855972, 48.585987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668104, 37.476192, 48.505116>,  <28.876842, 37.526623, 48.593376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668104, 37.476192, 48.505116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.437553, 37.183022, 48.360554>,  <29.299223, 37.007118, 48.273819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.437553, 37.183022, 48.360554>,  <29.668104, 37.476192, 48.505116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437553, 37.183022, 48.360554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440632, 0.093711, -0.892783,
		0.688210, -0.673825, 0.268937,
		-0.576377, -0.732925, -0.361401,
		29.264641, 36.963142, 48.252132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101583, 37.115524, 48.141930>,  <29.668104, 37.476192, 48.505116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101583, 37.115524, 48.141930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.755341, 36.949184, 48.030365>,  <29.547594, 36.849380, 47.963425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.755341, 36.949184, 48.030365>,  <30.101583, 37.115524, 48.141930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755341, 36.949184, 48.030365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380815, -0.185068, -0.905941,
		0.325118, -0.890404, 0.318558,
		-0.865608, -0.415850, -0.278910,
		29.495659, 36.824429, 47.946693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901274, 37.157524, 48.189339>,  <30.101583, 37.115524, 48.141930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901274, 37.157524, 48.189339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.045015, 37.529697, 48.160595>,  <31.131260, 37.753002, 48.143349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.045015, 37.529697, 48.160595>,  <30.901274, 37.157524, 48.189339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045015, 37.529697, 48.160595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000486, 0.077185, 0.997017,
		0.933201, -0.358248, 0.028189,
		0.359355, 0.930430, -0.071855,
		31.152822, 37.808826, 48.139038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592386, 37.247925, 48.600708>,  <30.901274, 37.157524, 48.189339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592386, 37.247925, 48.600708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.405951, 37.598919, 48.555473>,  <31.294088, 37.809513, 48.528332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.405951, 37.598919, 48.555473>,  <31.592386, 37.247925, 48.600708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405951, 37.598919, 48.555473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150668, 0.204674, 0.967165,
		0.871814, 0.433746, -0.227605,
		-0.466089, 0.877481, -0.113086,
		31.266125, 37.862164, 48.521549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103725, 37.660545, 48.985119>,  <31.592386, 37.247925, 48.600708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103725, 37.660545, 48.985119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748543, 37.843834, 48.969318>,  <31.535433, 37.953808, 48.959839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748543, 37.843834, 48.969318>,  <32.103725, 37.660545, 48.985119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748543, 37.843834, 48.969318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045478, 0.172935, 0.983883,
		0.457669, 0.871851, -0.174398,
		-0.887959, 0.458224, -0.039497,
		31.482155, 37.981300, 48.957470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111774, 38.235661, 49.363632>,  <32.103725, 37.660545, 48.985119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111774, 38.235661, 49.363632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.715546, 38.186039, 49.340363>,  <31.477810, 38.156265, 49.326401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.715546, 38.186039, 49.340363>,  <32.111774, 38.235661, 49.363632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715546, 38.186039, 49.340363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067386, 0.071386, 0.995170,
		-0.119300, 0.989705, -0.079072,
		-0.990569, -0.124052, -0.058175,
		31.418375, 38.148823, 49.322910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867641, 38.702969, 49.851665>,  <32.111774, 38.235661, 49.363632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867641, 38.702969, 49.851665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.578680, 38.432049, 49.795952>,  <31.405304, 38.269497, 49.762524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.578680, 38.432049, 49.795952>,  <31.867641, 38.702969, 49.851665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578680, 38.432049, 49.795952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169137, -0.022237, 0.985342,
		-0.670469, 0.735371, -0.098492,
		-0.722402, -0.677300, -0.139287,
		31.361959, 38.228859, 49.754166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412449, 38.881046, 50.353252>,  <31.867641, 38.702969, 49.851665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412449, 38.881046, 50.353252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.283596, 38.511658, 50.269897>,  <31.206284, 38.290024, 50.219883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.283596, 38.511658, 50.269897>,  <31.412449, 38.881046, 50.353252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283596, 38.511658, 50.269897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391438, -0.070499, 0.917500,
		-0.861979, 0.377129, -0.338772,
		-0.322133, -0.923474, -0.208391,
		31.186956, 38.234615, 50.207378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681408, 38.911079, 50.454136>,  <31.412449, 38.881046, 50.353252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681408, 38.911079, 50.454136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.818987, 38.537079, 50.488708>,  <30.901535, 38.312679, 50.509453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.818987, 38.537079, 50.488708>,  <30.681408, 38.911079, 50.454136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818987, 38.537079, 50.488708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464062, -0.089244, 0.881296,
		-0.816300, -0.343229, -0.464594,
		0.343948, -0.935002, 0.086430,
		30.922171, 38.256577, 50.514637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080269, 38.526726, 50.841461>,  <30.681408, 38.911079, 50.454136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080269, 38.526726, 50.841461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.399490, 38.292843, 50.899742>,  <30.591022, 38.152512, 50.934711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.399490, 38.292843, 50.899742>,  <30.080269, 38.526726, 50.841461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399490, 38.292843, 50.899742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363473, -0.274234, 0.890328,
		-0.480626, -0.763486, -0.431379,
		0.798051, -0.584709, 0.145702,
		30.638906, 38.117432, 50.943455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835346, 37.791809, 51.166294>,  <30.080269, 38.526726, 50.841461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835346, 37.791809, 51.166294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.222918, 37.862129, 51.235889>,  <30.455460, 37.904324, 51.277645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.222918, 37.862129, 51.235889>,  <29.835346, 37.791809, 51.166294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222918, 37.862129, 51.235889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173319, -0.019282, 0.984677,
		0.176466, -0.984236, 0.011787,
		0.968927, 0.175804, 0.173989,
		30.513596, 37.914871, 51.288086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.713612, 36.498981, 35.952026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691933, 36.813709, 35.706104>,  <35.678925, 37.002544, 35.558552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691933, 36.813709, 35.706104>,  <35.713612, 36.498981, 35.952026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691933, 36.813709, 35.706104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973656, -0.178213, -0.142250,
		-0.221491, 0.590897, 0.775746,
		-0.054193, 0.786817, -0.614803,
		35.675674, 37.049755, 35.521664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105026, 36.882004, 36.199162>,  <35.713612, 36.498981, 35.952026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105026, 36.882004, 36.199162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183453, 36.931095, 35.810009>,  <35.230507, 36.960552, 35.576519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183453, 36.931095, 35.810009>,  <35.105026, 36.882004, 36.199162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183453, 36.931095, 35.810009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921337, -0.316600, -0.225617,
		-0.335705, 0.940585, 0.051004,
		0.196064, 0.122733, -0.972880,
		35.242271, 36.967915, 35.518147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330315, 36.090179, 36.464142>,  <35.105026, 36.882004, 36.199162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330315, 36.090179, 36.464142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490993, 36.409676, 36.643318>,  <35.587402, 36.601372, 36.750824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490993, 36.409676, 36.643318>,  <35.330315, 36.090179, 36.464142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490993, 36.409676, 36.643318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466655, -0.242336, 0.850592,
		0.787954, -0.550717, 0.275389,
		0.401698, 0.798739, 0.447945,
		35.611504, 36.649296, 36.777702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672749, 35.849678, 37.139027>,  <35.330315, 36.090179, 36.464142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672749, 35.849678, 37.139027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604980, 36.243362, 37.159550>,  <35.564320, 36.479572, 37.171864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604980, 36.243362, 37.159550>,  <35.672749, 35.849678, 37.139027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604980, 36.243362, 37.159550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298063, -0.100792, 0.949210,
		0.939391, 0.145520, 0.310431,
		-0.169418, 0.984208, 0.051309,
		35.554153, 36.538624, 37.174942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782589, 36.035095, 37.885235>,  <35.672749, 35.849678, 37.139027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782589, 36.035095, 37.885235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567738, 36.329716, 37.720802>,  <35.438828, 36.506489, 37.622143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567738, 36.329716, 37.720802>,  <35.782589, 36.035095, 37.885235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567738, 36.329716, 37.720802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506325, 0.108244, 0.855522,
		0.674629, 0.667669, 0.314791,
		-0.537131, 0.736547, -0.411082,
		35.406597, 36.550678, 37.597477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768223, 36.594570, 38.404472>,  <35.782589, 36.035095, 37.885235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768223, 36.594570, 38.404472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452827, 36.676300, 38.172421>,  <35.263592, 36.725338, 38.033192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452827, 36.676300, 38.172421>,  <35.768223, 36.594570, 38.404472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452827, 36.676300, 38.172421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560329, 0.150309, 0.814517,
		0.253622, 0.967295, -0.004029,
		-0.788484, 0.204322, -0.580125,
		35.216282, 36.737598, 37.998383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496941, 37.222443, 38.569786>,  <35.768223, 36.594570, 38.404472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496941, 37.222443, 38.569786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165874, 37.079597, 38.396610>,  <34.967236, 36.993889, 38.292706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165874, 37.079597, 38.396610>,  <35.496941, 37.222443, 38.569786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165874, 37.079597, 38.396610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544879, 0.326533, 0.772323,
		-0.134440, 0.875126, -0.464845,
		-0.827667, -0.357115, -0.432939,
		34.917576, 36.972462, 38.266727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977859, 37.730072, 38.568802>,  <35.496941, 37.222443, 38.569786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977859, 37.730072, 38.568802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760921, 37.397015, 38.523964>,  <34.630760, 37.197182, 38.497063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760921, 37.397015, 38.523964>,  <34.977859, 37.730072, 38.568802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760921, 37.397015, 38.523964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617257, 0.304386, 0.725495,
		-0.569960, 0.462658, -0.679038,
		-0.542346, -0.832644, -0.112091,
		34.598217, 37.147221, 38.490337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354950, 37.984043, 38.700024>,  <34.977859, 37.730072, 38.568802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354950, 37.984043, 38.700024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312206, 37.586887, 38.721031>,  <34.286560, 37.348595, 38.733635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312206, 37.586887, 38.721031>,  <34.354950, 37.984043, 38.700024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312206, 37.586887, 38.721031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626494, 0.108250, 0.771873,
		-0.772067, 0.049578, -0.633604,
		-0.106856, -0.992887, 0.052515,
		34.280151, 37.289021, 38.736786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606449, 37.861343, 38.882969>,  <34.354950, 37.984043, 38.700024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606449, 37.861343, 38.882969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780769, 37.507748, 38.950668>,  <33.885361, 37.295589, 38.991287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780769, 37.507748, 38.950668>,  <33.606449, 37.861343, 38.882969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780769, 37.507748, 38.950668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521931, -0.095009, 0.847680,
		-0.733257, -0.457757, -0.502785,
		0.435801, -0.883986, 0.169252,
		33.911510, 37.242554, 39.001446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099380, 37.412575, 38.953514>,  <33.606449, 37.861343, 38.882969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099380, 37.412575, 38.953514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417103, 37.267746, 39.148647>,  <33.607735, 37.180847, 39.265728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417103, 37.267746, 39.148647>,  <33.099380, 37.412575, 38.953514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417103, 37.267746, 39.148647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511289, 0.035281, 0.858684,
		-0.328117, -0.931482, -0.157100,
		0.794306, -0.362073, 0.487832,
		33.655396, 37.159122, 39.294998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777340, 36.824299, 39.526134>,  <33.099380, 37.412575, 38.953514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777340, 36.824299, 39.526134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142124, 36.937855, 39.644611>,  <33.360996, 37.005989, 39.715698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142124, 36.937855, 39.644611>,  <32.777340, 36.824299, 39.526134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142124, 36.937855, 39.644611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340674, 0.121706, 0.932271,
		0.228615, -0.951101, 0.207706,
		0.911963, 0.283891, 0.296191,
		33.415714, 37.023022, 39.733467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119804, 36.338253, 39.414665>,  <32.777340, 36.824299, 39.526134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119804, 36.338253, 39.414665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721718, 36.344231, 39.453266>,  <31.482864, 36.347816, 39.476425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721718, 36.344231, 39.453266>,  <32.119804, 36.338253, 39.414665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721718, 36.344231, 39.453266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095803, 0.041911, -0.994518,
		-0.018913, -0.999010, -0.040279,
		-0.995221, 0.014950, 0.096500,
		31.423151, 36.348717, 39.482216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965193, 35.758167, 39.067581>,  <32.119804, 36.338253, 39.414665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965193, 35.758167, 39.067581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659805, 36.016495, 39.065399>,  <31.476572, 36.171494, 39.064091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659805, 36.016495, 39.065399>,  <31.965193, 35.758167, 39.067581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659805, 36.016495, 39.065399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034417, 0.032245, -0.998887,
		-0.644926, -0.762808, -0.046845,
		-0.763470, 0.645820, -0.005458,
		31.430765, 36.210239, 39.063763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381533, 35.427876, 38.744999>,  <31.965193, 35.758167, 39.067581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381533, 35.427876, 38.744999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294817, 35.816425, 38.706154>,  <31.242788, 36.049557, 38.682846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294817, 35.816425, 38.706154>,  <31.381533, 35.427876, 38.744999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294817, 35.816425, 38.706154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079098, -0.081677, -0.993515,
		-0.973009, -0.223065, -0.059127,
		-0.216789, 0.971376, -0.097117,
		31.229780, 36.107838, 38.677017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740269, 35.565353, 38.294228>,  <31.381533, 35.427876, 38.744999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740269, 35.565353, 38.294228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941013, 35.910034, 38.264267>,  <31.061460, 36.116840, 38.246292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941013, 35.910034, 38.264267>,  <30.740269, 35.565353, 38.294228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941013, 35.910034, 38.264267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122934, -0.014657, -0.992306,
		-0.856168, 0.507207, 0.098576,
		0.501860, 0.861700, -0.074902,
		31.091572, 36.168545, 38.241795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299904, 35.907372, 37.824230>,  <30.740269, 35.565353, 38.294228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299904, 35.907372, 37.824230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668234, 36.061680, 37.847084>,  <30.889233, 36.154263, 37.860794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668234, 36.061680, 37.847084>,  <30.299904, 35.907372, 37.824230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668234, 36.061680, 37.847084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033042, 0.068794, -0.997083,
		-0.388573, 0.920027, 0.050601,
		0.920825, 0.385768, 0.057131,
		30.944481, 36.177410, 37.864223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284708, 36.175323, 37.218861>,  <30.299904, 35.907372, 37.824230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284708, 36.175323, 37.218861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673721, 36.195015, 37.309860>,  <30.907129, 36.206829, 37.364460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673721, 36.195015, 37.309860>,  <30.284708, 36.175323, 37.218861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673721, 36.195015, 37.309860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228567, -0.017285, -0.973375,
		-0.043983, 0.998638, -0.028062,
		0.972534, 0.049226, 0.227496,
		30.965481, 36.209782, 37.378109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477655, 36.763786, 36.940132>,  <30.284708, 36.175323, 37.218861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477655, 36.763786, 36.940132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813982, 36.554775, 36.996689>,  <31.015778, 36.429367, 37.030621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813982, 36.554775, 36.996689>,  <30.477655, 36.763786, 36.940132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813982, 36.554775, 36.996689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203906, 0.063774, -0.976911,
		0.501448, 0.850233, 0.160169,
		0.840816, -0.522530, 0.141388,
		31.066227, 36.398018, 37.039104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914583, 37.015991, 36.435272>,  <30.477655, 36.763786, 36.940132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914583, 37.015991, 36.435272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083340, 36.673622, 36.554878>,  <31.184593, 36.468201, 36.626644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083340, 36.673622, 36.554878>,  <30.914583, 37.015991, 36.435272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083340, 36.673622, 36.554878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249245, -0.207608, -0.945926,
		0.871714, 0.473606, 0.125745,
		0.421891, -0.855918, 0.299019,
		31.209908, 36.416847, 36.644585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505840, 36.842804, 36.034595>,  <30.914583, 37.015991, 36.435272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505840, 36.842804, 36.034595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429205, 36.469212, 36.155243>,  <31.383224, 36.245056, 36.227631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429205, 36.469212, 36.155243>,  <31.505840, 36.842804, 36.034595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429205, 36.469212, 36.155243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282892, -0.346815, -0.894255,
		0.939823, -0.086002, 0.330661,
		-0.191586, -0.933982, 0.301615,
		31.371729, 36.189018, 36.245728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004494, 36.551380, 35.751217>,  <31.505840, 36.842804, 36.034595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004494, 36.551380, 35.751217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753771, 36.249466, 35.828583>,  <31.603336, 36.068317, 35.875004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753771, 36.249466, 35.828583>,  <32.004494, 36.551380, 35.751217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753771, 36.249466, 35.828583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234010, -0.419136, -0.877248,
		0.743201, -0.504606, 0.439345,
		-0.626810, -0.754783, 0.193419,
		31.565727, 36.023029, 35.886608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445568, 36.003666, 35.529591>,  <32.004494, 36.551380, 35.751217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445568, 36.003666, 35.529591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060532, 35.898975, 35.557625>,  <31.829510, 35.836163, 35.574448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060532, 35.898975, 35.557625>,  <32.445568, 36.003666, 35.529591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060532, 35.898975, 35.557625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112608, -0.621722, -0.775100,
		0.246440, -0.738214, 0.627938,
		-0.962593, -0.261727, 0.070088,
		31.771753, 35.820457, 35.578651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421150, 35.245338, 35.573906>,  <32.445568, 36.003666, 35.529591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421150, 35.245338, 35.573906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073383, 35.382378, 35.431503>,  <31.864723, 35.464600, 35.346062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073383, 35.382378, 35.431503>,  <32.421150, 35.245338, 35.573906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073383, 35.382378, 35.431503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142723, -0.515676, -0.844812,
		-0.473011, -0.785306, 0.399443,
		-0.869420, 0.342595, -0.356002,
		31.812557, 35.485157, 35.324703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014965, 34.576607, 35.256645>,  <32.421150, 35.245338, 35.573906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014965, 34.576607, 35.256645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835600, 34.896961, 35.097897>,  <31.727980, 35.089172, 35.002647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835600, 34.896961, 35.097897>,  <32.014965, 34.576607, 35.256645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835600, 34.896961, 35.097897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193715, -0.520540, -0.831572,
		-0.872581, -0.296010, 0.388562,
		-0.448416, 0.800885, -0.396871,
		31.701075, 35.137226, 34.978836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622152, 34.311180, 34.698692>,  <32.014965, 34.576607, 35.256645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622152, 34.311180, 34.698692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631117, 34.699581, 34.603489>,  <31.636496, 34.932621, 34.546368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631117, 34.699581, 34.603489>,  <31.622152, 34.311180, 34.698692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631117, 34.699581, 34.603489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136885, -0.232843, -0.962833,
		-0.990333, 0.054159, 0.127698,
		0.022413, 0.971005, -0.238006,
		31.637840, 34.990883, 34.532085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730286, 33.529495, 34.753319>,  <31.622152, 34.311180, 34.698692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730286, 33.529495, 34.753319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725166, 33.211403, 34.995785>,  <31.722094, 33.020546, 35.141266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725166, 33.211403, 34.995785>,  <31.730286, 33.529495, 34.753319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725166, 33.211403, 34.995785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976280, 0.140974, 0.164330,
		-0.216135, -0.589687, -0.778174,
		-0.012799, -0.795233, 0.606168,
		31.721327, 32.972832, 35.177635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077040, 33.576008, 34.928505>,  <31.730286, 33.529495, 34.753319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077040, 33.576008, 34.928505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161705, 33.231361, 35.113029>,  <31.212503, 33.024574, 35.223743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161705, 33.231361, 35.113029>,  <31.077040, 33.576008, 34.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161705, 33.231361, 35.113029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954564, -0.080940, 0.286805,
		-0.209778, -0.501059, -0.839603,
		0.211664, -0.861620, 0.461313,
		31.225204, 32.972874, 35.251423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381083, 33.193726, 34.876839>,  <31.077040, 33.576008, 34.928505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381083, 33.193726, 34.876839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629391, 33.047810, 35.154419>,  <30.778376, 32.960262, 35.320969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629391, 33.047810, 35.154419>,  <30.381083, 33.193726, 34.876839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629391, 33.047810, 35.154419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782100, -0.226690, 0.580458,
		-0.054431, -0.903074, -0.426022,
		0.620772, -0.364786, 0.693955,
		30.815622, 32.938374, 35.362606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935564, 32.594059, 35.248989>,  <30.381083, 33.193726, 34.876839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935564, 32.594059, 35.248989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235945, 32.699574, 35.491142>,  <30.416172, 32.762882, 35.636433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235945, 32.699574, 35.491142>,  <29.935564, 32.594059, 35.248989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235945, 32.699574, 35.491142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578281, -0.179952, 0.795744,
		0.318850, -0.947645, 0.017410,
		0.750950, 0.263791, 0.605383,
		30.461229, 32.778709, 35.672756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886312, 32.109814, 35.789642>,  <29.935564, 32.594059, 35.248989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886312, 32.109814, 35.789642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111483, 32.403599, 35.941265>,  <30.246584, 32.579868, 36.032238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111483, 32.403599, 35.941265>,  <29.886312, 32.109814, 35.789642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111483, 32.403599, 35.941265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415645, -0.144844, 0.897920,
		0.714391, -0.663014, 0.223738,
		0.562926, 0.734461, 0.379053,
		30.280361, 32.623936, 36.054981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119507, 31.890131, 36.409313>,  <29.886312, 32.109814, 35.789642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119507, 31.890131, 36.409313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166712, 32.284634, 36.455570>,  <30.195034, 32.521336, 36.483322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166712, 32.284634, 36.455570>,  <30.119507, 31.890131, 36.409313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166712, 32.284634, 36.455570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198756, -0.090638, 0.975849,
		0.972918, -0.138145, 0.185328,
		0.118011, 0.986256, 0.115640,
		30.202116, 32.580509, 36.490261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503893, 31.906342, 37.005398>,  <30.119507, 31.890131, 36.409313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503893, 31.906342, 37.005398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345537, 32.271729, 36.967773>,  <30.250525, 32.490963, 36.945198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345537, 32.271729, 36.967773>,  <30.503893, 31.906342, 37.005398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345537, 32.271729, 36.967773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361834, -0.061030, 0.930242,
		0.844008, 0.402304, 0.354686,
		-0.395887, 0.913469, -0.094057,
		30.226770, 32.545769, 36.939556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751198, 32.291946, 37.560898>,  <30.503893, 31.906342, 37.005398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751198, 32.291946, 37.560898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427551, 32.498772, 37.449203>,  <30.233364, 32.622868, 37.382187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427551, 32.498772, 37.449203>,  <30.751198, 32.291946, 37.560898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427551, 32.498772, 37.449203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166752, 0.253622, 0.952822,
		0.563493, 0.817507, -0.118988,
		-0.809116, 0.517067, -0.279236,
		30.184816, 32.653893, 37.365433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857025, 32.923107, 37.845970>,  <30.751198, 32.291946, 37.560898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857025, 32.923107, 37.845970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466953, 32.848167, 37.798775>,  <30.232910, 32.803204, 37.770458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466953, 32.848167, 37.798775>,  <30.857025, 32.923107, 37.845970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466953, 32.848167, 37.798775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157154, 0.210330, 0.964916,
		-0.155965, 0.959510, -0.234553,
		-0.975181, -0.187354, -0.117987,
		30.174398, 32.791962, 37.763378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502968, 33.400723, 38.320072>,  <30.857025, 32.923107, 37.845970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502968, 33.400723, 38.320072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203566, 33.160885, 38.206779>,  <30.023924, 33.016983, 38.138805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203566, 33.160885, 38.206779>,  <30.502968, 33.400723, 38.320072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203566, 33.160885, 38.206779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435523, 0.122420, 0.891815,
		-0.500056, 0.790884, -0.352770,
		-0.748508, -0.599597, -0.283231,
		29.979013, 32.981007, 38.121811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900024, 33.717739, 38.590496>,  <30.502968, 33.400723, 38.320072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900024, 33.717739, 38.590496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812708, 33.332214, 38.529297>,  <29.760317, 33.100899, 38.492577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812708, 33.332214, 38.529297>,  <29.900024, 33.717739, 38.590496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812708, 33.332214, 38.529297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445532, -0.041063, 0.894324,
		-0.868245, 0.263391, -0.420446,
		-0.218292, -0.963815, -0.153002,
		29.747221, 33.043072, 38.483395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264471, 33.636715, 39.045685>,  <29.900024, 33.717739, 38.590496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264471, 33.636715, 39.045685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378416, 33.260582, 38.971260>,  <29.446783, 33.034901, 38.926605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378416, 33.260582, 38.971260>,  <29.264471, 33.636715, 39.045685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378416, 33.260582, 38.971260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210853, -0.250822, 0.944791,
		-0.935091, -0.229902, -0.269722,
		0.284862, -0.940337, -0.186066,
		29.463875, 32.978481, 38.915440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735737, 33.184494, 39.370171>,  <29.264471, 33.636715, 39.045685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735737, 33.184494, 39.370171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037958, 32.929401, 39.310246>,  <29.219290, 32.776348, 39.274288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037958, 32.929401, 39.310246>,  <28.735737, 33.184494, 39.370171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037958, 32.929401, 39.310246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161099, -0.402552, 0.901110,
		-0.634973, -0.656699, -0.406886,
		0.755550, -0.637730, -0.149816,
		29.264624, 32.738083, 39.265301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459969, 32.510029, 39.532707>,  <28.735737, 33.184494, 39.370171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459969, 32.510029, 39.532707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858437, 32.500965, 39.566486>,  <29.097517, 32.495525, 39.586754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858437, 32.500965, 39.566486>,  <28.459969, 32.510029, 39.532707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858437, 32.500965, 39.566486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087394, -0.289180, 0.953277,
		0.002818, -0.957006, -0.290053,
		0.996170, -0.022662, 0.084451,
		29.157288, 32.494167, 39.591820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590462, 31.859312, 39.896378>,  <28.459969, 32.510029, 39.532707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590462, 31.859312, 39.896378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921228, 32.079922, 39.940250>,  <29.119688, 32.212288, 39.966576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921228, 32.079922, 39.940250>,  <28.590462, 31.859312, 39.896378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921228, 32.079922, 39.940250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076054, -0.302949, 0.949967,
		0.557157, -0.777203, -0.292459,
		0.826917, 0.551523, 0.109681,
		29.169304, 32.245380, 39.973156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099472, 31.501446, 40.217644>,  <28.590462, 31.859312, 39.896378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099472, 31.501446, 40.217644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217068, 31.876936, 40.289600>,  <29.287626, 32.102230, 40.332775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217068, 31.876936, 40.289600>,  <29.099472, 31.501446, 40.217644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217068, 31.876936, 40.289600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049768, -0.202992, 0.977915,
		0.954512, -0.278545, -0.106396,
		0.293991, 0.938726, 0.179895,
		29.305265, 32.158554, 40.343571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655367, 31.505819, 40.604698>,  <29.099472, 31.501446, 40.217644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655367, 31.505819, 40.604698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528292, 31.877804, 40.678722>,  <29.452045, 32.100994, 40.723137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528292, 31.877804, 40.678722>,  <29.655367, 31.505819, 40.604698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528292, 31.877804, 40.678722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138125, -0.147704, 0.979339,
		0.938080, 0.336688, -0.081527,
		-0.317689, 0.929960, 0.185064,
		29.432985, 32.156792, 40.734241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028877, 31.653660, 41.199543>,  <29.655367, 31.505819, 40.604698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028877, 31.653660, 41.199543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790064, 31.973980, 41.218609>,  <29.646776, 32.166172, 41.230049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790064, 31.973980, 41.218609>,  <30.028877, 31.653660, 41.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790064, 31.973980, 41.218609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100683, 0.015846, 0.994792,
		0.795874, 0.598722, -0.090088,
		-0.597032, 0.800800, 0.047669,
		29.610954, 32.214218, 41.232910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409092, 32.202606, 41.559368>,  <30.028877, 31.653660, 41.199543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409092, 32.202606, 41.559368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021452, 32.296268, 41.590397>,  <29.788868, 32.352467, 41.609013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021452, 32.296268, 41.590397>,  <30.409092, 32.202606, 41.559368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021452, 32.296268, 41.590397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103392, 0.100088, 0.989592,
		0.223958, 0.967033, -0.121205,
		-0.969099, 0.234158, 0.077568,
		29.730722, 32.366516, 41.613667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303976, 32.813786, 41.879875>,  <30.409092, 32.202606, 41.559368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303976, 32.813786, 41.879875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968443, 32.610832, 41.958790>,  <29.767122, 32.489059, 42.006138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968443, 32.610832, 41.958790>,  <30.303976, 32.813786, 41.879875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968443, 32.610832, 41.958790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205485, 0.040491, 0.977822,
		-0.504115, 0.860771, 0.070294,
		-0.838835, -0.507380, 0.197288,
		29.716793, 32.458618, 42.017975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033030, 33.201595, 42.452576>,  <30.303976, 32.813786, 41.879875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033030, 33.201595, 42.452576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864397, 32.838905, 42.456871>,  <29.763218, 32.621292, 42.459446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864397, 32.838905, 42.456871>,  <30.033030, 33.201595, 42.452576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864397, 32.838905, 42.456871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039326, -0.006453, 0.999206,
		-0.905938, 0.421667, 0.038379,
		-0.421580, -0.906728, 0.010736,
		29.737923, 32.566887, 42.460091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401297, 33.247887, 42.835365>,  <30.033030, 33.201595, 42.452576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401297, 33.247887, 42.835365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503551, 32.861187, 42.832684>,  <29.564903, 32.629166, 42.831074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503551, 32.861187, 42.832684>,  <29.401297, 33.247887, 42.835365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503551, 32.861187, 42.832684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189774, -0.056975, 0.980173,
		-0.947964, -0.249296, -0.198029,
		0.255636, -0.966750, -0.006700,
		29.580242, 32.571163, 42.830673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892349, 32.881683, 43.216133>,  <29.401297, 33.247887, 42.835365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892349, 32.881683, 43.216133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178171, 32.601856, 43.214596>,  <29.349665, 32.433960, 43.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178171, 32.601856, 43.214596>,  <28.892349, 32.881683, 43.216133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178171, 32.601856, 43.214596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169357, -0.178310, 0.969290,
		-0.678772, -0.691959, -0.245889,
		0.714553, -0.699570, -0.003844,
		29.392538, 32.391987, 43.213444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652805, 32.409325, 43.670856>,  <28.892349, 32.881683, 43.216133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652805, 32.409325, 43.670856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041603, 32.319408, 43.643448>,  <29.274881, 32.265461, 43.627003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041603, 32.319408, 43.643448>,  <28.652805, 32.409325, 43.670856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041603, 32.319408, 43.643448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029615, -0.172087, 0.984637,
		-0.233127, -0.959091, -0.160611,
		0.971995, -0.224788, -0.068522,
		29.333202, 32.251972, 43.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612295, 31.868685, 44.160847>,  <28.652805, 32.409325, 43.670856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612295, 31.868685, 44.160847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982885, 32.012321, 44.115768>,  <29.205238, 32.098503, 44.088722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982885, 32.012321, 44.115768>,  <28.612295, 31.868685, 44.160847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982885, 32.012321, 44.115768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149157, -0.075419, 0.985933,
		0.345541, -0.930250, -0.123435,
		0.926474, 0.359092, -0.112693,
		29.260828, 32.120049, 44.081959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995996, 31.393818, 44.515949>,  <28.612295, 31.868685, 44.160847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995996, 31.393818, 44.515949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196045, 31.739323, 44.491310>,  <29.316074, 31.946625, 44.476528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196045, 31.739323, 44.491310>,  <28.995996, 31.393818, 44.515949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196045, 31.739323, 44.491310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058226, 0.037427, 0.997602,
		0.863995, -0.502510, -0.031575,
		0.500123, 0.863761, -0.061596,
		29.346083, 31.998451, 44.472832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536444, 31.230843, 45.001785>,  <28.995996, 31.393818, 44.515949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536444, 31.230843, 45.001785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491262, 31.626844, 44.968006>,  <29.464153, 31.864445, 44.947739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491262, 31.626844, 44.968006>,  <29.536444, 31.230843, 45.001785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491262, 31.626844, 44.968006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223818, 0.108157, 0.968611,
		0.968063, 0.090509, -0.233798,
		-0.112955, 0.990005, -0.084445,
		29.457376, 31.923845, 44.942673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109436, 31.566732, 45.262566>,  <29.536444, 31.230843, 45.001785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109436, 31.566732, 45.262566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845188, 31.867018, 45.261269>,  <29.686640, 32.047188, 45.260490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845188, 31.867018, 45.261269>,  <30.109436, 31.566732, 45.262566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845188, 31.867018, 45.261269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195217, 0.175957, 0.964847,
		0.724894, 0.636764, -0.262792,
		-0.660620, 0.750713, -0.003243,
		29.647001, 32.092232, 45.260296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645502, 31.870533, 44.919006>,  <30.109436, 31.566732, 45.262566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645502, 31.870533, 44.919006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986832, 32.031055, 45.052147>,  <31.191629, 32.127369, 45.132030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986832, 32.031055, 45.052147>,  <30.645502, 31.870533, 44.919006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986832, 32.031055, 45.052147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366273, -0.007079, -0.930481,
		-0.371053, 0.915916, -0.153029,
		0.853325, 0.401308, 0.332848,
		31.242828, 32.151447, 45.152000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808508, 32.582874, 44.600338>,  <30.645502, 31.870533, 44.919006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808508, 32.582874, 44.600338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143532, 32.408230, 44.731709>,  <31.344547, 32.303444, 44.810532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143532, 32.408230, 44.731709>,  <30.808508, 32.582874, 44.600338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143532, 32.408230, 44.731709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417038, 0.122577, -0.900585,
		0.352947, 0.891261, 0.284749,
		0.837561, -0.436610, 0.328427,
		31.394800, 32.277248, 44.830238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322002, 33.039013, 44.386795>,  <30.808508, 32.582874, 44.600338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322002, 33.039013, 44.386795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473209, 32.671974, 44.435970>,  <31.563934, 32.451752, 44.465473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473209, 32.671974, 44.435970>,  <31.322002, 33.039013, 44.386795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473209, 32.671974, 44.435970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497306, 0.089257, -0.862971,
		0.780889, 0.387356, 0.490069,
		0.378019, -0.917600, 0.122935,
		31.586615, 32.396694, 44.472851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942537, 33.205944, 44.169842>,  <31.322002, 33.039013, 44.386795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942537, 33.205944, 44.169842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913630, 32.807777, 44.144791>,  <31.896284, 32.568878, 44.129761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913630, 32.807777, 44.144791>,  <31.942537, 33.205944, 44.169842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913630, 32.807777, 44.144791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700353, -0.005942, -0.713772,
		0.710128, -0.095446, 0.697573,
		-0.072272, -0.995417, -0.062626,
		31.891949, 32.509151, 44.126003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581791, 32.892807, 44.168686>,  <31.942537, 33.205944, 44.169842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581791, 32.892807, 44.168686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361050, 32.610004, 43.991779>,  <32.228607, 32.440323, 43.885635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361050, 32.610004, 43.991779>,  <32.581791, 32.892807, 44.168686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361050, 32.610004, 43.991779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594762, 0.038077, -0.802999,
		0.584568, -0.706179, 0.399489,
		-0.551850, -0.707009, -0.442267,
		32.195496, 32.397903, 43.859100>
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
