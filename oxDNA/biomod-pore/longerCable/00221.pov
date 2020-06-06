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
	<24.130587, 35.261528, 34.407417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330004, 35.290470, 34.752953>,  <24.449654, 35.307835, 34.960274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330004, 35.290470, 34.752953>,  <24.130587, 35.261528, 34.407417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330004, 35.290470, 34.752953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530237, -0.813804, -0.237847,
		0.685789, 0.576617, -0.444080,
		0.498541, 0.072355, 0.863841,
		24.479567, 35.312176, 35.012104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.808552, 35.033539, 34.348873>,  <24.130587, 35.261528, 34.407417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.808552, 35.033539, 34.348873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778017, 35.029831, 34.747688>,  <24.759697, 35.027607, 34.986977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778017, 35.029831, 34.747688>,  <24.808552, 35.033539, 34.348873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.778017, 35.029831, 34.747688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442950, -0.896181, 0.025585,
		0.893290, 0.443592, 0.072516,
		-0.076337, -0.009266, 0.997039,
		24.755116, 35.027050, 35.046799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495804, 34.770653, 34.621956>,  <24.808552, 35.033539, 34.348873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495804, 34.770653, 34.621956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184137, 34.697681, 34.861828>,  <24.997137, 34.653900, 35.005753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184137, 34.697681, 34.861828>,  <25.495804, 34.770653, 34.621956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184137, 34.697681, 34.861828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313349, -0.941950, 0.120590,
		0.542872, 0.281869, 0.791100,
		-0.779168, -0.182426, 0.599682,
		24.950386, 34.642952, 35.041733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915306, 34.830818, 35.171528>,  <25.495804, 34.770653, 34.621956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915306, 34.830818, 35.171528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270164, 34.966633, 35.296551>,  <26.483080, 35.048122, 35.371567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270164, 34.966633, 35.296551>,  <25.915306, 34.830818, 35.171528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270164, 34.966633, 35.296551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054928, -0.594781, 0.802009,
		0.458213, -0.728666, -0.509006,
		0.887144, 0.339532, 0.312560,
		26.536308, 35.068493, 35.390320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579298, 34.374977, 35.435574>,  <25.915306, 34.830818, 35.171528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579298, 34.374977, 35.435574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547720, 34.722668, 35.630802>,  <26.528774, 34.931282, 35.747940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547720, 34.722668, 35.630802>,  <26.579298, 34.374977, 35.435574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547720, 34.722668, 35.630802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213937, -0.492963, 0.843338,
		0.973652, -0.037839, 0.224876,
		-0.078944, 0.869227, 0.488070,
		26.524036, 34.983437, 35.777222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838285, 34.191391, 36.073551>,  <26.579298, 34.374977, 35.435574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838285, 34.191391, 36.073551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621920, 34.514957, 36.165695>,  <26.492100, 34.709099, 36.220982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621920, 34.514957, 36.165695>,  <26.838285, 34.191391, 36.073551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621920, 34.514957, 36.165695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251583, -0.416954, 0.873416,
		0.802570, 0.414488, 0.429046,
		-0.540913, 0.808918, 0.230357,
		26.459646, 34.757633, 36.234802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935995, 34.203339, 36.673386>,  <26.838285, 34.191391, 36.073551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935995, 34.203339, 36.673386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613079, 34.436111, 36.634117>,  <26.419329, 34.575775, 36.610558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613079, 34.436111, 36.634117>,  <26.935995, 34.203339, 36.673386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613079, 34.436111, 36.634117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415138, -0.441735, 0.795318,
		0.419457, 0.682806, 0.598191,
		-0.807290, 0.581933, -0.098170,
		26.370892, 34.610691, 36.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715590, 34.378349, 37.330544>,  <26.935995, 34.203339, 36.673386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715590, 34.378349, 37.330544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398870, 34.426781, 37.091080>,  <26.208839, 34.455837, 36.947403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398870, 34.426781, 37.091080>,  <26.715590, 34.378349, 37.330544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398870, 34.426781, 37.091080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561239, -0.530920, 0.634929,
		-0.240966, 0.838728, 0.488335,
		-0.791800, 0.121076, -0.598660,
		26.161331, 34.463104, 36.911480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196259, 34.514172, 37.755615>,  <26.715590, 34.378349, 37.330544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196259, 34.514172, 37.755615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984230, 34.425900, 37.428120>,  <25.857014, 34.372936, 37.231625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984230, 34.425900, 37.428120>,  <26.196259, 34.514172, 37.755615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984230, 34.425900, 37.428120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713107, -0.406420, 0.571228,
		-0.458808, 0.886636, 0.058063,
		-0.530070, -0.220679, -0.818735,
		25.825209, 34.359695, 37.182499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522579, 34.914757, 37.736351>,  <26.196259, 34.514172, 37.755615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522579, 34.914757, 37.736351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488827, 34.570541, 37.535416>,  <25.468575, 34.364010, 37.414852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488827, 34.570541, 37.535416>,  <25.522579, 34.914757, 37.736351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488827, 34.570541, 37.535416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765880, -0.266489, 0.585160,
		-0.637423, 0.434111, -0.636584,
		-0.084382, -0.860541, -0.502343,
		25.463512, 34.312378, 37.384712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894304, 34.910057, 37.738670>,  <25.522579, 34.914757, 37.736351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894304, 34.910057, 37.738670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995741, 34.534264, 37.646523>,  <25.056602, 34.308788, 37.591232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995741, 34.534264, 37.646523>,  <24.894304, 34.910057, 37.738670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995741, 34.534264, 37.646523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682421, -0.342544, 0.645728,
		-0.685560, -0.006541, -0.727987,
		0.253591, -0.939479, -0.230371,
		25.071817, 34.252419, 37.577412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.279856, 34.587208, 37.667870>,  <24.894304, 34.910057, 37.738670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.279856, 34.587208, 37.667870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539665, 34.304630, 37.780338>,  <24.695551, 34.135082, 37.847820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539665, 34.304630, 37.780338>,  <24.279856, 34.587208, 37.667870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539665, 34.304630, 37.780338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598106, -0.246398, 0.762599,
		-0.469453, -0.663496, -0.582570,
		0.649525, -0.706443, 0.281168,
		24.734524, 34.092697, 37.864689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.939688, 33.997978, 37.841434>,  <24.279856, 34.587208, 37.667870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.939688, 33.997978, 37.841434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282272, 33.955193, 38.043438>,  <24.487823, 33.929523, 38.164639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282272, 33.955193, 38.043438>,  <23.939688, 33.997978, 37.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282272, 33.955193, 38.043438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475640, -0.543673, 0.691510,
		0.200593, -0.832454, -0.516510,
		0.856463, -0.106961, 0.505006,
		24.539211, 33.923103, 38.194939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188282, 33.758980, 38.542847>,  <23.939688, 33.997978, 37.841434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188282, 33.758980, 38.542847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140070, 33.575390, 38.190754>,  <24.111143, 33.465237, 37.979496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140070, 33.575390, 38.190754>,  <24.188282, 33.758980, 38.542847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.140070, 33.575390, 38.190754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899188, 0.325236, -0.292714,
		0.420633, -0.826777, 0.373506,
		-0.120532, -0.458978, -0.880234,
		24.103910, 33.437698, 37.926685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708403, 33.251270, 38.451138>,  <24.188282, 33.758980, 38.542847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708403, 33.251270, 38.451138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582205, 33.393684, 38.099297>,  <24.506487, 33.479134, 37.888191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582205, 33.393684, 38.099297>,  <24.708403, 33.251270, 38.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582205, 33.393684, 38.099297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936900, 0.263989, -0.229189,
		0.150605, -0.896407, -0.416860,
		-0.315493, 0.356039, -0.879602,
		24.487556, 33.500496, 37.835415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355772, 33.215992, 37.965157>,  <24.708403, 33.251270, 38.451138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355772, 33.215992, 37.965157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080757, 33.447517, 37.789761>,  <24.915749, 33.586433, 37.684525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080757, 33.447517, 37.789761>,  <25.355772, 33.215992, 37.965157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080757, 33.447517, 37.789761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697650, 0.359007, -0.619999,
		-0.201443, -0.732182, -0.650638,
		-0.687535, 0.578812, -0.438488,
		24.874496, 33.621162, 37.658215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445372, 33.082916, 37.227444>,  <25.355772, 33.215992, 37.965157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445372, 33.082916, 37.227444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293846, 33.443836, 37.309761>,  <25.202930, 33.660389, 37.359150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293846, 33.443836, 37.309761>,  <25.445372, 33.082916, 37.227444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293846, 33.443836, 37.309761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593712, 0.407510, -0.693860,
		-0.709933, -0.140663, -0.690078,
		-0.378814, 0.902302, 0.205792,
		25.180202, 33.714527, 37.371498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377930, 33.310898, 36.601532>,  <25.445372, 33.082916, 37.227444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377930, 33.310898, 36.601532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402609, 33.627708, 36.844475>,  <25.417416, 33.817795, 36.990242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402609, 33.627708, 36.844475>,  <25.377930, 33.310898, 36.601532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402609, 33.627708, 36.844475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566271, 0.473325, -0.674760,
		-0.821907, 0.385561, -0.419299,
		0.061696, 0.792027, 0.607361,
		25.421118, 33.865318, 37.026684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261118, 33.886139, 36.121002>,  <25.377930, 33.310898, 36.601532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261118, 33.886139, 36.121002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423893, 34.029419, 36.457119>,  <25.521557, 34.115387, 36.658791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423893, 34.029419, 36.457119>,  <25.261118, 33.886139, 36.121002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423893, 34.029419, 36.457119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527866, 0.658543, -0.536357,
		-0.745493, 0.661826, 0.078904,
		0.406936, 0.358200, 0.840295,
		25.545975, 34.136879, 36.709206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175434, 34.655014, 36.056980>,  <25.261118, 33.886139, 36.121002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175434, 34.655014, 36.056980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462824, 34.572899, 36.322807>,  <25.635258, 34.523628, 36.482304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462824, 34.572899, 36.322807>,  <25.175434, 34.655014, 36.056980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462824, 34.572899, 36.322807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572636, 0.716931, -0.397615,
		-0.394823, 0.666232, 0.632653,
		0.718473, -0.205292, 0.664569,
		25.678366, 34.511311, 36.522179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974785, 34.805244, 36.721569>,  <25.175434, 34.655014, 36.056980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974785, 34.805244, 36.721569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357302, 34.758484, 36.828785>,  <25.586811, 34.730427, 36.893112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357302, 34.758484, 36.828785>,  <24.974785, 34.805244, 36.721569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357302, 34.758484, 36.828785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292107, 0.339619, -0.894054,
		0.013484, 0.933270, 0.358922,
		0.956291, -0.116899, 0.268036,
		25.644188, 34.723415, 36.909195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299435, 35.292786, 36.344017>,  <24.974785, 34.805244, 36.721569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299435, 35.292786, 36.344017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627028, 35.078739, 36.426880>,  <25.823584, 34.950310, 36.476597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627028, 35.078739, 36.426880>,  <25.299435, 35.292786, 36.344017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627028, 35.078739, 36.426880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533918, 0.578372, -0.616781,
		0.210235, 0.615739, 0.759386,
		0.818983, -0.535118, 0.207160,
		25.872723, 34.918205, 36.489029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786280, 35.801773, 36.478207>,  <25.299435, 35.292786, 36.344017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786280, 35.801773, 36.478207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974836, 35.467369, 36.365868>,  <26.087971, 35.266727, 36.298462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974836, 35.467369, 36.365868>,  <25.786280, 35.801773, 36.478207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974836, 35.467369, 36.365868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599789, 0.537365, -0.592868,
		0.646563, 0.111021, 0.754739,
		0.471391, -0.836010, -0.280851,
		26.116253, 35.216564, 36.281612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300756, 35.862469, 35.981766>,  <25.786280, 35.801773, 36.478207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300756, 35.862469, 35.981766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450035, 35.542286, 36.169376>,  <26.539602, 35.350174, 36.281944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450035, 35.542286, 36.169376>,  <26.300756, 35.862469, 35.981766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450035, 35.542286, 36.169376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692320, -0.096260, -0.715142,
		0.617591, 0.591607, 0.518250,
		0.373196, -0.800460, 0.469030,
		26.561995, 35.302147, 36.310085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939703, 36.006001, 36.119068>,  <26.300756, 35.862469, 35.981766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939703, 36.006001, 36.119068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858541, 35.619019, 36.058578>,  <26.809845, 35.386829, 36.022285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858541, 35.619019, 36.058578>,  <26.939703, 36.006001, 36.119068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858541, 35.619019, 36.058578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540383, 0.018155, -0.841223,
		0.816588, -0.252405, 0.519111,
		-0.202905, -0.967451, -0.151221,
		26.797670, 35.328785, 36.013214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543352, 35.638676, 35.942284>,  <26.939703, 36.006001, 36.119068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543352, 35.638676, 35.942284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230377, 35.461319, 35.767380>,  <27.042591, 35.354904, 35.662437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230377, 35.461319, 35.767380>,  <27.543352, 35.638676, 35.942284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230377, 35.461319, 35.767380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381788, 0.213162, -0.899333,
		0.491964, -0.870612, 0.002495,
		-0.782438, -0.443392, -0.437258,
		26.995646, 35.328300, 35.636204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762438, 35.729393, 36.645000>,  <27.543352, 35.638676, 35.942284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762438, 35.729393, 36.645000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772926, 35.954048, 36.975788>,  <27.779219, 36.088840, 37.174259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772926, 35.954048, 36.975788>,  <27.762438, 35.729393, 36.645000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772926, 35.954048, 36.975788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896163, -0.379762, 0.229505,
		0.442949, 0.735079, -0.513279,
		0.026219, 0.561641, 0.826966,
		27.780792, 36.122540, 37.223877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415316, 36.095322, 36.778713>,  <27.762438, 35.729393, 36.645000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415316, 36.095322, 36.778713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234625, 35.983772, 37.117695>,  <28.126211, 35.916843, 37.321083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234625, 35.983772, 37.117695>,  <28.415316, 36.095322, 36.778713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234625, 35.983772, 37.117695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799509, -0.548047, 0.245823,
		0.395889, 0.788590, 0.470530,
		-0.451726, -0.278874, 0.847451,
		28.099108, 35.900108, 37.371929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638586, 36.275730, 37.416935>,  <28.415316, 36.095322, 36.778713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638586, 36.275730, 37.416935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467430, 35.920151, 37.482277>,  <28.364737, 35.706802, 37.521481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467430, 35.920151, 37.482277>,  <28.638586, 36.275730, 37.416935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467430, 35.920151, 37.482277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837409, -0.321909, 0.441725,
		-0.340086, 0.325800, 0.882154,
		-0.427888, -0.888948, 0.163351,
		28.339064, 35.653465, 37.531281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896378, 36.399185, 38.151218>,  <28.638586, 36.275730, 37.416935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896378, 36.399185, 38.151218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813385, 36.647877, 37.849117>,  <28.763590, 36.797092, 37.667858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813385, 36.647877, 37.849117>,  <28.896378, 36.399185, 38.151218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813385, 36.647877, 37.849117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428469, 0.636296, 0.641514,
		0.879412, 0.456704, 0.134373,
		-0.207481, 0.621730, -0.755250,
		28.751141, 36.834396, 37.622543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858784, 37.102093, 38.361843>,  <28.896378, 36.399185, 38.151218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858784, 37.102093, 38.361843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562500, 37.045033, 38.099239>,  <28.384729, 37.010796, 37.941677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562500, 37.045033, 38.099239>,  <28.858784, 37.102093, 38.361843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562500, 37.045033, 38.099239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657621, 0.353849, 0.665076,
		0.137428, 0.924360, -0.355912,
		-0.740708, -0.142655, -0.656506,
		28.340288, 37.002235, 37.902287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405777, 37.652229, 37.967598>,  <28.858784, 37.102093, 38.361843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405777, 37.652229, 37.967598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286114, 37.899223, 37.676609>,  <28.214315, 38.047421, 37.502014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286114, 37.899223, 37.676609>,  <28.405777, 37.652229, 37.967598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286114, 37.899223, 37.676609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471751, 0.758406, 0.449746,
		0.829431, -0.208642, -0.518182,
		-0.299156, 0.617486, -0.727473,
		28.196367, 38.084469, 37.458366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967529, 37.964188, 37.816059>,  <28.405777, 37.652229, 37.967598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967529, 37.964188, 37.816059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667490, 38.206848, 37.710743>,  <28.487467, 38.352444, 37.647552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667490, 38.206848, 37.710743>,  <28.967529, 37.964188, 37.816059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667490, 38.206848, 37.710743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464093, 0.766502, 0.443950,
		0.471134, 0.210818, -0.856498,
		-0.750101, 0.606655, -0.263286,
		28.442459, 38.388844, 37.631756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297537, 38.555958, 37.510246>,  <28.967529, 37.964188, 37.816059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297537, 38.555958, 37.510246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959709, 38.581150, 37.722939>,  <28.757011, 38.596268, 37.850552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959709, 38.581150, 37.722939>,  <29.297537, 38.555958, 37.510246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959709, 38.581150, 37.722939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456160, 0.604659, 0.652921,
		-0.280391, 0.793991, -0.539407,
		-0.844570, 0.062983, 0.531728,
		28.706339, 38.600044, 37.882458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973417, 39.237514, 37.550617>,  <29.297537, 38.555958, 37.510246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973417, 39.237514, 37.550617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876537, 39.035835, 37.882191>,  <28.818409, 38.914829, 38.081135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876537, 39.035835, 37.882191>,  <28.973417, 39.237514, 37.550617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876537, 39.035835, 37.882191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420372, 0.715477, 0.558015,
		-0.874429, 0.483611, 0.038661,
		-0.242201, -0.504196, 0.828930,
		28.803877, 38.884575, 38.130871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554050, 39.651760, 37.985828>,  <28.973417, 39.237514, 37.550617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554050, 39.651760, 37.985828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782333, 39.388317, 38.182003>,  <28.919304, 39.230251, 38.299709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782333, 39.388317, 38.182003>,  <28.554050, 39.651760, 37.985828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782333, 39.388317, 38.182003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409363, 0.745941, 0.525352,
		-0.711838, -0.099055, 0.695323,
		0.570709, -0.658605, 0.490440,
		28.953547, 39.190735, 38.329136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449926, 39.810070, 38.719212>,  <28.554050, 39.651760, 37.985828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449926, 39.810070, 38.719212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793676, 39.629375, 38.623371>,  <28.999926, 39.520958, 38.565865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793676, 39.629375, 38.623371>,  <28.449926, 39.810070, 38.719212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793676, 39.629375, 38.623371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510990, 0.741150, 0.435415,
		-0.019112, -0.496619, 0.867758,
		0.859374, -0.451737, -0.239603,
		29.051489, 39.493855, 38.551491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846371, 39.825794, 39.285801>,  <28.449926, 39.810070, 38.719212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846371, 39.825794, 39.285801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109194, 39.780563, 38.987679>,  <29.266888, 39.753426, 38.808804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109194, 39.780563, 38.987679>,  <28.846371, 39.825794, 39.285801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109194, 39.780563, 38.987679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588422, 0.694936, 0.413308,
		0.471205, -0.710125, 0.523153,
		0.657058, -0.113082, -0.745311,
		29.306311, 39.746639, 38.764084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378872, 39.786270, 39.649181>,  <28.846371, 39.825794, 39.285801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378872, 39.786270, 39.649181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503464, 39.881680, 39.281250>,  <29.578218, 39.938927, 39.060490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503464, 39.881680, 39.281250>,  <29.378872, 39.786270, 39.649181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503464, 39.881680, 39.281250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726615, 0.564022, 0.392314,
		0.612381, -0.790560, 0.002365,
		0.311481, 0.238527, -0.919828,
		29.596909, 39.953236, 39.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248877, 39.724228, 39.488049>,  <29.378872, 39.786270, 39.649181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248877, 39.724228, 39.488049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098883, 40.006260, 39.247299>,  <30.008886, 40.175480, 39.102848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098883, 40.006260, 39.247299>,  <30.248877, 39.724228, 39.488049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098883, 40.006260, 39.247299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761392, 0.604616, 0.233926,
		0.528838, -0.370543, -0.763563,
		-0.374983, 0.705080, -0.601873,
		29.986387, 40.217785, 39.066738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969267, 40.372459, 39.525394>,  <30.248877, 39.724228, 39.488049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969267, 40.372459, 39.525394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179190, 40.626450, 39.298630>,  <30.305143, 40.778843, 39.162571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179190, 40.626450, 39.298630>,  <29.969267, 40.372459, 39.525394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179190, 40.626450, 39.298630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110610, -0.609476, -0.785050,
		-0.844003, 0.474706, -0.249624,
		0.524808, 0.634975, -0.566907,
		30.336632, 40.816940, 39.128559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478762, 40.714146, 38.914818>,  <29.969267, 40.372459, 39.525394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478762, 40.714146, 38.914818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872000, 40.651596, 38.876713>,  <30.107943, 40.614067, 38.853851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872000, 40.651596, 38.876713>,  <29.478762, 40.714146, 38.914818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872000, 40.651596, 38.876713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180030, -0.730603, -0.658641,
		0.033396, 0.664656, -0.746403,
		0.983094, -0.156371, -0.095259,
		30.166927, 40.604683, 38.848137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676113, 40.900810, 38.188892>,  <29.478762, 40.714146, 38.914818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676113, 40.900810, 38.188892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855700, 40.608753, 38.394928>,  <29.963451, 40.433517, 38.518547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855700, 40.608753, 38.394928>,  <29.676113, 40.900810, 38.188892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855700, 40.608753, 38.394928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526354, -0.681929, -0.507863,
		0.722067, -0.043103, -0.690480,
		0.448968, -0.730147, 0.515086,
		29.990391, 40.389709, 38.549454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989521, 40.251575, 37.740757>,  <29.676113, 40.900810, 38.188892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989521, 40.251575, 37.740757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902719, 40.144238, 38.116184>,  <29.850639, 40.079834, 38.341438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902719, 40.144238, 38.116184>,  <29.989521, 40.251575, 37.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902719, 40.144238, 38.116184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456811, -0.821788, -0.340571,
		0.862690, -0.502651, 0.055749,
		-0.217002, -0.268340, 0.938564,
		29.837618, 40.063736, 38.397755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177292, 39.584389, 37.839779>,  <29.989521, 40.251575, 37.740757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177292, 39.584389, 37.839779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901522, 39.630733, 38.125790>,  <29.736059, 39.658543, 38.297398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901522, 39.630733, 38.125790>,  <30.177292, 39.584389, 37.839779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901522, 39.630733, 38.125790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300825, -0.943771, -0.137120,
		0.658938, -0.309633, 0.685514,
		-0.689424, 0.115866, 0.715031,
		29.694695, 39.665493, 38.340298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060856, 38.889030, 38.035145>,  <30.177292, 39.584389, 37.839779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060856, 38.889030, 38.035145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758114, 39.092613, 38.199158>,  <29.576469, 39.214764, 38.297565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758114, 39.092613, 38.199158>,  <30.060856, 38.889030, 38.035145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758114, 39.092613, 38.199158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595076, -0.796067, -0.110280,
		0.270287, -0.327468, 0.905378,
		-0.756855, 0.508962, 0.410034,
		29.531057, 39.245300, 38.322166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614031, 38.523170, 37.615788>,  <30.060856, 38.889030, 38.035145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614031, 38.523170, 37.615788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941952, 38.325153, 37.730930>,  <31.138704, 38.206345, 37.800014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941952, 38.325153, 37.730930>,  <30.614031, 38.523170, 37.615788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941952, 38.325153, 37.730930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087140, 0.604663, 0.791700,
		-0.565978, -0.623953, 0.538842,
		0.819802, -0.495040, 0.287855,
		31.187893, 38.176640, 37.817287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495495, 38.363308, 38.356510>,  <30.614031, 38.523170, 37.615788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495495, 38.363308, 38.356510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882076, 38.417580, 38.269279>,  <31.114025, 38.450142, 38.216942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882076, 38.417580, 38.269279>,  <30.495495, 38.363308, 38.356510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882076, 38.417580, 38.269279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113328, 0.536681, 0.836140,
		0.230487, -0.832805, 0.503300,
		0.966454, 0.135681, -0.218078,
		31.172012, 38.458282, 38.203857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656487, 38.339615, 38.925278>,  <30.495495, 38.363308, 38.356510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656487, 38.339615, 38.925278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997889, 38.472454, 38.764656>,  <31.202730, 38.552158, 38.668285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997889, 38.472454, 38.764656>,  <30.656487, 38.339615, 38.925278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997889, 38.472454, 38.764656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187586, 0.523121, 0.831358,
		0.486149, -0.784893, 0.384190,
		0.853505, 0.332095, -0.401550,
		31.253939, 38.572083, 38.644192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245474, 38.167156, 39.250359>,  <30.656487, 38.339615, 38.925278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245474, 38.167156, 39.250359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339487, 38.498173, 39.046425>,  <31.395895, 38.696785, 38.924065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339487, 38.498173, 39.046425>,  <31.245474, 38.167156, 39.250359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339487, 38.498173, 39.046425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328757, 0.425928, 0.842914,
		0.914701, -0.365723, -0.171955,
		0.235033, 0.827546, -0.509831,
		31.409998, 38.746437, 38.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701975, 37.515373, 39.061798>,  <31.245474, 38.167156, 39.250359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701975, 37.515373, 39.061798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880964, 37.157883, 39.049030>,  <31.988358, 36.943390, 39.041370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880964, 37.157883, 39.049030>,  <31.701975, 37.515373, 39.061798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880964, 37.157883, 39.049030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460940, 0.261077, -0.848158,
		0.766356, 0.364815, 0.528780,
		0.447473, -0.893727, -0.031920,
		32.015205, 36.889763, 39.039455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455669, 37.490475, 39.066212>,  <31.701975, 37.515373, 39.061798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455669, 37.490475, 39.066212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324055, 37.170643, 38.865250>,  <32.245087, 36.978745, 38.744671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324055, 37.170643, 38.865250>,  <32.455669, 37.490475, 39.066212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324055, 37.170643, 38.865250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514006, 0.294662, -0.805588,
		0.792170, -0.523307, 0.314033,
		-0.329036, -0.799577, -0.502406,
		32.225346, 36.930771, 38.714527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987808, 37.068066, 38.957600>,  <32.455669, 37.490475, 39.066212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987808, 37.068066, 38.957600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704700, 37.046425, 38.675850>,  <32.534836, 37.033440, 38.506802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704700, 37.046425, 38.675850>,  <32.987808, 37.068066, 38.957600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704700, 37.046425, 38.675850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639446, 0.374770, -0.671310,
		0.300297, -0.925538, -0.230654,
		-0.707765, -0.054101, -0.704374,
		32.492371, 37.030193, 38.464539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286430, 36.761345, 38.477192>,  <32.987808, 37.068066, 38.957600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286430, 36.761345, 38.477192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008469, 37.000011, 38.316643>,  <32.841694, 37.143211, 38.220314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008469, 37.000011, 38.316643>,  <33.286430, 36.761345, 38.477192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008469, 37.000011, 38.316643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713063, 0.499532, -0.491945,
		-0.093031, -0.628055, -0.772588,
		-0.694901, 0.596670, -0.401370,
		32.799999, 37.179012, 38.196232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856106, 36.255043, 38.055069>,  <33.286430, 36.761345, 38.477192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856106, 36.255043, 38.055069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201862, 36.080620, 37.954926>,  <33.409317, 35.975967, 37.894840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201862, 36.080620, 37.954926>,  <32.856106, 36.255043, 38.055069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201862, 36.080620, 37.954926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317796, 0.087926, 0.944074,
		-0.389656, -0.895614, 0.214579,
		0.864392, -0.436057, -0.250361,
		33.461182, 35.949802, 37.879818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009361, 35.701794, 38.580734>,  <32.856106, 36.255043, 38.055069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009361, 35.701794, 38.580734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365505, 35.786404, 38.419483>,  <33.579193, 35.837170, 38.322731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365505, 35.786404, 38.419483>,  <33.009361, 35.701794, 38.580734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365505, 35.786404, 38.419483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430623, -0.103989, 0.896521,
		0.147714, -0.971825, -0.183675,
		0.890362, 0.211523, -0.403129,
		33.632614, 35.849861, 38.298546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450661, 35.276417, 38.950996>,  <33.009361, 35.701794, 38.580734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450661, 35.276417, 38.950996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712891, 35.542820, 38.808643>,  <33.870228, 35.702663, 38.723232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712891, 35.542820, 38.808643>,  <33.450661, 35.276417, 38.950996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712891, 35.542820, 38.808643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584495, -0.149153, 0.797570,
		0.478111, -0.730876, -0.487062,
		0.655572, 0.666013, -0.355882,
		33.909561, 35.742622, 38.701878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173553, 34.942497, 38.745438>,  <33.450661, 35.276417, 38.950996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173553, 34.942497, 38.745438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167957, 35.321064, 38.874489>,  <34.164600, 35.548206, 38.951920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167957, 35.321064, 38.874489>,  <34.173553, 34.942497, 38.745438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167957, 35.321064, 38.874489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439621, -0.283980, 0.852108,
		0.898074, 0.153760, -0.412093,
		-0.013994, 0.946421, 0.322631,
		34.163761, 35.604992, 38.971279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896820, 35.391171, 38.797173>,  <34.173553, 34.942497, 38.745438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896820, 35.391171, 38.797173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615726, 35.479053, 39.067844>,  <34.447071, 35.531784, 39.230247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615726, 35.479053, 39.067844>,  <34.896820, 35.391171, 38.797173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615726, 35.479053, 39.067844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662864, -0.143272, 0.734904,
		0.258412, 0.964988, -0.044953,
		-0.702733, 0.219706, 0.676679,
		34.404907, 35.544964, 39.270847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982502, 35.173485, 39.556450>,  <34.896820, 35.391171, 38.797173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982502, 35.173485, 39.556450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189587, 35.511002, 39.613018>,  <35.313835, 35.713512, 39.646961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189587, 35.511002, 39.613018>,  <34.982502, 35.173485, 39.556450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189587, 35.511002, 39.613018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497639, 0.431445, -0.752470,
		-0.695941, 0.319182, 0.643264,
		0.517708, 0.843788, 0.141423,
		35.344898, 35.764137, 39.655445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496582, 35.722038, 39.845219>,  <34.982502, 35.173485, 39.556450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496582, 35.722038, 39.845219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823479, 35.799240, 39.628014>,  <35.019619, 35.845562, 39.497692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823479, 35.799240, 39.628014>,  <34.496582, 35.722038, 39.845219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823479, 35.799240, 39.628014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575904, 0.307953, -0.757298,
		0.021062, 0.931620, 0.362823,
		0.817246, 0.193001, -0.543010,
		35.068653, 35.857140, 39.465111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520844, 36.370522, 39.568764>,  <34.496582, 35.722038, 39.845219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520844, 36.370522, 39.568764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685921, 36.102169, 39.322315>,  <34.784966, 35.941158, 39.174446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685921, 36.102169, 39.322315>,  <34.520844, 36.370522, 39.568764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685921, 36.102169, 39.322315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677462, 0.226076, -0.699953,
		0.608876, 0.706262, -0.361198,
		0.412692, -0.670883, -0.616118,
		34.809727, 35.900906, 39.137478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684555, 36.660130, 38.845779>,  <34.520844, 36.370522, 39.568764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684555, 36.660130, 38.845779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635773, 36.265079, 38.806347>,  <34.606503, 36.028049, 38.782688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635773, 36.265079, 38.806347>,  <34.684555, 36.660130, 38.845779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635773, 36.265079, 38.806347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771056, 0.156811, -0.617157,
		0.624981, 0.000749, -0.780640,
		-0.121951, -0.987628, -0.098581,
		34.599186, 35.968792, 38.776772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849335, 36.557774, 38.206192>,  <34.684555, 36.660130, 38.845779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849335, 36.557774, 38.206192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576778, 36.296253, 38.337795>,  <34.413246, 36.139339, 38.416759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576778, 36.296253, 38.337795>,  <34.849335, 36.557774, 38.206192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576778, 36.296253, 38.337795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522861, 0.120253, -0.843893,
		0.512177, -0.747046, -0.423788,
		-0.681389, -0.653805, 0.329011,
		34.372360, 36.100113, 38.436497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756416, 36.026505, 37.713284>,  <34.849335, 36.557774, 38.206192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756416, 36.026505, 37.713284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410343, 35.967617, 37.905025>,  <34.202698, 35.932285, 38.020069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410343, 35.967617, 37.905025>,  <34.756416, 36.026505, 37.713284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410343, 35.967617, 37.905025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469391, -0.098569, -0.877471,
		0.176428, -0.984181, 0.016178,
		-0.865185, -0.147217, 0.479356,
		34.150787, 35.923450, 38.048832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529095, 35.329216, 37.633640>,  <34.756416, 36.026505, 37.713284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529095, 35.329216, 37.633640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195591, 35.536346, 37.710278>,  <33.995491, 35.660625, 37.756260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195591, 35.536346, 37.710278>,  <34.529095, 35.329216, 37.633640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195591, 35.536346, 37.710278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270282, -0.080204, -0.959435,
		-0.481453, -0.851719, 0.206830,
		-0.833757, 0.517825, 0.191590,
		33.945465, 35.691692, 37.767754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915787, 35.102245, 37.162983>,  <34.529095, 35.329216, 37.633640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915787, 35.102245, 37.162983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850872, 35.485107, 37.258911>,  <33.811924, 35.714825, 37.316467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850872, 35.485107, 37.258911>,  <33.915787, 35.102245, 37.162983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850872, 35.485107, 37.258911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405744, 0.156818, -0.900433,
		-0.899464, -0.243434, 0.362911,
		-0.162285, 0.957156, 0.239824,
		33.802185, 35.772255, 37.330860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336815, 35.319523, 36.793293>,  <33.915787, 35.102245, 37.162983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336815, 35.319523, 36.793293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470230, 35.693336, 36.842926>,  <33.550282, 35.917625, 36.872704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470230, 35.693336, 36.842926>,  <33.336815, 35.319523, 36.793293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470230, 35.693336, 36.842926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468895, 0.278635, -0.838152,
		-0.817855, 0.221378, 0.531135,
		0.333542, 0.934534, 0.124080,
		33.570293, 35.973698, 36.880150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805866, 35.841980, 36.706917>,  <33.336815, 35.319523, 36.793293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805866, 35.841980, 36.706917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122036, 36.078102, 36.641476>,  <33.311737, 36.219776, 36.602211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122036, 36.078102, 36.641476>,  <32.805866, 35.841980, 36.706917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122036, 36.078102, 36.641476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382968, 0.267776, -0.884099,
		-0.478080, 0.761470, 0.437726,
		0.790427, 0.590305, -0.163600,
		33.359165, 36.255192, 36.592396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521523, 36.498577, 36.424633>,  <32.805866, 35.841980, 36.706917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521523, 36.498577, 36.424633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907955, 36.471519, 36.324947>,  <33.139816, 36.455284, 36.265137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907955, 36.471519, 36.324947>,  <32.521523, 36.498577, 36.424633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907955, 36.471519, 36.324947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241019, 0.110267, -0.964236,
		0.092708, 0.991597, 0.090223,
		0.966082, -0.067647, -0.249216,
		33.197781, 36.451225, 36.250183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606289, 36.980770, 35.961540>,  <32.521523, 36.498577, 36.424633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606289, 36.980770, 35.961540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906338, 36.722446, 35.904610>,  <33.086365, 36.567451, 35.870453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906338, 36.722446, 35.904610>,  <32.606289, 36.980770, 35.961540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906338, 36.722446, 35.904610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082281, 0.122404, -0.989064,
		0.656163, 0.753627, 0.038680,
		0.750120, -0.645805, -0.142326,
		33.131374, 36.528706, 35.861912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709454, 37.288029, 35.419640>,  <32.606289, 36.980770, 35.961540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709454, 37.288029, 35.419640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947807, 36.967102, 35.433609>,  <33.090820, 36.774548, 35.441990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947807, 36.967102, 35.433609>,  <32.709454, 37.288029, 35.419640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947807, 36.967102, 35.433609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088720, 0.022541, -0.995802,
		0.798158, 0.596477, 0.084613,
		0.595880, -0.802314, 0.034928,
		33.126572, 36.726406, 35.444088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292938, 37.428387, 35.001171>,  <32.709454, 37.288029, 35.419640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292938, 37.428387, 35.001171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214336, 37.037277, 35.030422>,  <33.167175, 36.802612, 35.047974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214336, 37.037277, 35.030422>,  <33.292938, 37.428387, 35.001171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214336, 37.037277, 35.030422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011776, -0.076925, -0.996967,
		0.980433, -0.195046, 0.026630,
		-0.196503, -0.977773, 0.073123,
		33.155384, 36.743946, 35.052361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779438, 37.105000, 34.732414>,  <33.292938, 37.428387, 35.001171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779438, 37.105000, 34.732414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490368, 36.830669, 34.698044>,  <33.316925, 36.666069, 34.677422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490368, 36.830669, 34.698044>,  <33.779438, 37.105000, 34.732414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490368, 36.830669, 34.698044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211360, -0.100911, -0.972185,
		0.658082, -0.720732, 0.217883,
		-0.722672, -0.685830, -0.085926,
		33.273567, 36.624920, 34.672264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003433, 36.720970, 34.242859>,  <33.779438, 37.105000, 34.732414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003433, 36.720970, 34.242859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642300, 36.551395, 34.271595>,  <33.425617, 36.449650, 34.288837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642300, 36.551395, 34.271595>,  <34.003433, 36.720970, 34.242859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642300, 36.551395, 34.271595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017689, -0.203561, -0.978903,
		0.429616, -0.882520, 0.191282,
		-0.902839, -0.423936, 0.071842,
		33.371449, 36.424213, 34.293148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106373, 36.053284, 33.866993>,  <34.003433, 36.720970, 34.242859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106373, 36.053284, 33.866993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728359, 36.183784, 33.858261>,  <33.501553, 36.262085, 33.853020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728359, 36.183784, 33.858261>,  <34.106373, 36.053284, 33.866993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728359, 36.183784, 33.858261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021447, -0.128476, -0.991481,
		-0.326276, -0.936512, 0.128411,
		-0.945031, 0.326251, -0.021833,
		33.444851, 36.281658, 33.851711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845394, 35.758972, 33.275478>,  <34.106373, 36.053284, 33.866993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845394, 35.758972, 33.275478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530334, 35.999157, 33.330685>,  <33.341297, 36.143269, 33.363808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530334, 35.999157, 33.330685>,  <33.845394, 35.758972, 33.275478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530334, 35.999157, 33.330685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248240, -0.104269, -0.963071,
		-0.563899, -0.792824, 0.231187,
		-0.787651, 0.600465, 0.138013,
		33.294041, 36.179295, 33.372089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339622, 35.520744, 32.806660>,  <33.845394, 35.758972, 33.275478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339622, 35.520744, 32.806660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226189, 35.895767, 32.887226>,  <33.158127, 36.120781, 32.935566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226189, 35.895767, 32.887226>,  <33.339622, 35.520744, 32.806660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226189, 35.895767, 32.887226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230150, 0.137359, -0.963413,
		-0.930918, -0.319568, 0.176824,
		-0.283588, 0.937554, 0.201418,
		33.141113, 36.177032, 32.947651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679890, 35.748116, 32.326138>,  <33.339622, 35.520744, 32.806660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679890, 35.748116, 32.326138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836391, 36.102551, 32.425545>,  <32.930294, 36.315212, 32.485188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836391, 36.102551, 32.425545>,  <32.679890, 35.748116, 32.326138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836391, 36.102551, 32.425545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236790, 0.357883, -0.903244,
		-0.889296, 0.294555, 0.349842,
		0.391257, 0.886091, 0.248516,
		32.953770, 36.368378, 32.500099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242550, 36.187172, 32.044167>,  <32.679890, 35.748116, 32.326138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242550, 36.187172, 32.044167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560276, 36.410099, 32.140881>,  <32.750912, 36.543854, 32.198910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560276, 36.410099, 32.140881>,  <32.242550, 36.187172, 32.044167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560276, 36.410099, 32.140881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033470, 0.437544, -0.898574,
		-0.606581, 0.705659, 0.366202,
		0.794316, 0.557315, 0.241788,
		32.798573, 36.577293, 32.213417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056412, 36.884377, 31.864889>,  <32.242550, 36.187172, 32.044167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056412, 36.884377, 31.864889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453747, 36.915035, 31.899315>,  <32.692146, 36.933430, 31.919970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453747, 36.915035, 31.899315>,  <32.056412, 36.884377, 31.864889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453747, 36.915035, 31.899315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025461, 0.582394, -0.812508,
		-0.112395, 0.809286, 0.576562,
		0.993337, 0.076642, 0.086063,
		32.751747, 36.938026, 31.925135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196457, 37.509163, 31.918255>,  <32.056412, 36.884377, 31.864889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196457, 37.509163, 31.918255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530056, 37.373554, 31.744123>,  <32.730217, 37.292187, 31.639645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530056, 37.373554, 31.744123>,  <32.196457, 37.509163, 31.918255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530056, 37.373554, 31.744123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033370, 0.756534, -0.653102,
		0.550758, 0.559212, 0.619635,
		0.833997, -0.339024, -0.435328,
		32.780254, 37.271847, 31.613525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716187, 38.087498, 31.886604>,  <32.196457, 37.509163, 31.918255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716187, 38.087498, 31.886604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772022, 37.823776, 31.591082>,  <32.805523, 37.665543, 31.413767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772022, 37.823776, 31.591082>,  <32.716187, 38.087498, 31.886604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772022, 37.823776, 31.591082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035034, 0.742358, -0.669087,
		0.989589, 0.119283, 0.080530,
		0.139592, -0.659300, -0.738809,
		32.813900, 37.625988, 31.369438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107899, 38.482853, 31.377186>,  <32.716187, 38.087498, 31.886604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107899, 38.482853, 31.377186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957829, 38.174343, 31.171515>,  <32.867786, 37.989239, 31.048111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957829, 38.174343, 31.171515>,  <33.107899, 38.482853, 31.377186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957829, 38.174343, 31.171515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139244, 0.595295, -0.791350,
		0.916437, -0.225296, -0.330734,
		-0.375172, -0.771275, -0.514179,
		32.845276, 37.942959, 31.017262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447868, 38.556866, 30.728054>,  <33.107899, 38.482853, 31.377186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447868, 38.556866, 30.728054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153545, 38.302593, 30.634680>,  <32.976952, 38.150028, 30.578655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153545, 38.302593, 30.634680>,  <33.447868, 38.556866, 30.728054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153545, 38.302593, 30.634680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255903, 0.580162, -0.773256,
		0.626980, -0.509229, -0.589561,
		-0.735806, -0.635687, -0.233437,
		32.932804, 38.111889, 30.564650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461941, 38.326614, 30.061274>,  <33.447868, 38.556866, 30.728054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461941, 38.326614, 30.061274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094555, 38.185699, 30.133171>,  <32.874123, 38.101151, 30.176310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094555, 38.185699, 30.133171>,  <33.461941, 38.326614, 30.061274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094555, 38.185699, 30.133171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351540, 0.518974, -0.779157,
		0.181203, -0.778820, -0.600504,
		-0.918469, -0.352287, 0.179747,
		32.819016, 38.080013, 30.187096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286507, 37.938625, 29.413530>,  <33.461941, 38.326614, 30.061274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286507, 37.938625, 29.413530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955170, 38.064148, 29.599163>,  <32.756367, 38.139462, 29.710543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955170, 38.064148, 29.599163>,  <33.286507, 37.938625, 29.413530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955170, 38.064148, 29.599163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286519, 0.474547, -0.832293,
		-0.481403, -0.822395, -0.303179,
		-0.828346, 0.313802, 0.464081,
		32.706665, 38.158287, 29.738388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690365, 37.773598, 28.988508>,  <33.286507, 37.938625, 29.413530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690365, 37.773598, 28.988508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575066, 38.076138, 29.223406>,  <32.505886, 38.257660, 29.364344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575066, 38.076138, 29.223406>,  <32.690365, 37.773598, 28.988508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575066, 38.076138, 29.223406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425583, 0.448181, -0.786138,
		-0.857783, -0.476524, 0.192701,
		-0.288248, 0.756346, 0.587242,
		32.488590, 38.303040, 29.399578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108288, 37.917004, 28.790201>,  <32.690365, 37.773598, 28.988508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108288, 37.917004, 28.790201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210419, 38.254101, 28.979767>,  <32.271698, 38.456360, 29.093506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210419, 38.254101, 28.979767>,  <32.108288, 37.917004, 28.790201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210419, 38.254101, 28.979767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527796, 0.532171, -0.661986,
		-0.810087, -0.081108, 0.580673,
		0.255325, 0.842743, 0.473914,
		32.287018, 38.506924, 29.121941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427181, 38.199253, 28.752895>,  <32.108288, 37.917004, 28.790201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427181, 38.199253, 28.752895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727728, 38.455940, 28.814400>,  <31.908056, 38.609955, 28.851303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727728, 38.455940, 28.814400>,  <31.427181, 38.199253, 28.752895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727728, 38.455940, 28.814400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342832, 0.578710, -0.739974,
		-0.563841, 0.503276, 0.654826,
		0.751365, 0.641723, 0.153760,
		31.953138, 38.648457, 28.860527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125900, 38.864815, 28.793612>,  <31.427181, 38.199253, 28.752895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125900, 38.864815, 28.793612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515873, 38.925713, 28.728704>,  <31.749857, 38.962254, 28.689760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515873, 38.925713, 28.728704>,  <31.125900, 38.864815, 28.793612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515873, 38.925713, 28.728704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215547, 0.465230, -0.858546,
		-0.055221, 0.871998, 0.486383,
		0.974931, 0.152249, -0.162266,
		31.808352, 38.971386, 28.680025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188999, 39.551003, 28.465624>,  <31.125900, 38.864815, 28.793612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188999, 39.551003, 28.465624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528000, 39.363354, 28.366291>,  <31.731400, 39.250767, 28.306690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528000, 39.363354, 28.366291>,  <31.188999, 39.551003, 28.465624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528000, 39.363354, 28.366291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055670, 0.386714, -0.920518,
		0.527866, 0.793965, 0.301624,
		0.847501, -0.469119, -0.248334,
		31.782249, 39.222618, 28.291790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403833, 39.900097, 27.952480>,  <31.188999, 39.551003, 28.465624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403833, 39.900097, 27.952480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644785, 39.583385, 27.912024>,  <31.789356, 39.393360, 27.887749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644785, 39.583385, 27.912024>,  <31.403833, 39.900097, 27.952480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644785, 39.583385, 27.912024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110851, 0.208465, -0.971727,
		0.790475, 0.574137, 0.213345,
		0.602380, -0.791776, -0.101143,
		31.825499, 39.345852, 27.881681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033466, 40.117512, 27.744318>,  <31.403833, 39.900097, 27.952480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033466, 40.117512, 27.744318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994574, 39.742943, 27.609463>,  <31.971239, 39.518200, 27.528549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994574, 39.742943, 27.609463>,  <32.033466, 40.117512, 27.744318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994574, 39.742943, 27.609463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049627, 0.333760, -0.941351,
		0.994024, -0.108259, 0.014020,
		-0.097230, -0.936421, -0.337138,
		31.965405, 39.462017, 27.508322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535461, 40.059620, 27.191401>,  <32.033466, 40.117512, 27.744318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535461, 40.059620, 27.191401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308449, 39.739643, 27.113432>,  <32.172241, 39.547657, 27.066650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308449, 39.739643, 27.113432>,  <32.535461, 40.059620, 27.191401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308449, 39.739643, 27.113432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139315, 0.140028, -0.980298,
		0.811478, -0.583508, 0.031974,
		-0.567534, -0.799944, -0.194921,
		32.138187, 39.499660, 27.054956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936451, 39.696198, 26.735569>,  <32.535461, 40.059620, 27.191401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936451, 39.696198, 26.735569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562099, 39.565434, 26.683023>,  <32.337486, 39.486977, 26.651497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562099, 39.565434, 26.683023>,  <32.936451, 39.696198, 26.735569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562099, 39.565434, 26.683023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095778, 0.122743, -0.987806,
		0.339048, -0.937051, -0.083562,
		-0.935881, -0.326910, -0.131364,
		32.281334, 39.467361, 26.643614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936970, 39.199844, 26.357958>,  <32.936451, 39.696198, 26.735569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936970, 39.199844, 26.357958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550808, 39.292046, 26.309208>,  <32.319111, 39.347366, 26.279959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550808, 39.292046, 26.309208>,  <32.936970, 39.199844, 26.357958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550808, 39.292046, 26.309208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151647, 0.116143, -0.981587,
		-0.212106, -0.966115, -0.147081,
		-0.965409, 0.230505, -0.121874,
		32.261185, 39.361198, 26.272646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578537, 38.783123, 25.778341>,  <32.936970, 39.199844, 26.357958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578537, 38.783123, 25.778341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333820, 39.096184, 25.824245>,  <32.186989, 39.284019, 25.851788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333820, 39.096184, 25.824245>,  <32.578537, 38.783123, 25.778341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333820, 39.096184, 25.824245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004129, 0.141918, -0.989870,
		-0.791006, -0.606071, -0.083593,
		-0.611795, 0.782648, 0.114760,
		32.150280, 39.330978, 25.858673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965454, 38.710449, 25.289539>,  <32.578537, 38.783123, 25.778341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965454, 38.710449, 25.289539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972839, 39.102680, 25.367645>,  <31.977270, 39.338020, 25.414509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972839, 39.102680, 25.367645>,  <31.965454, 38.710449, 25.289539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972839, 39.102680, 25.367645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026560, 0.194747, -0.980494,
		-0.999477, 0.023290, -0.022448,
		0.018464, 0.980577, 0.195264,
		31.978378, 39.396854, 25.426224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534912, 39.038074, 24.777006>,  <31.965454, 38.710449, 25.289539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534912, 39.038074, 24.777006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726545, 39.349163, 24.939795>,  <31.841526, 39.535816, 25.037468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726545, 39.349163, 24.939795>,  <31.534912, 39.038074, 24.777006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726545, 39.349163, 24.939795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137625, 0.524460, -0.840239,
		-0.866913, 0.346536, 0.358295,
		0.479084, 0.777724, 0.406969,
		31.870270, 39.582481, 25.061886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137674, 39.673786, 24.706221>,  <31.534912, 39.038074, 24.777006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137674, 39.673786, 24.706221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503359, 39.824188, 24.766666>,  <31.722771, 39.914429, 24.802933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503359, 39.824188, 24.766666>,  <31.137674, 39.673786, 24.706221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503359, 39.824188, 24.766666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096948, 0.565013, -0.819367,
		-0.393466, 0.734426, 0.552995,
		0.914213, 0.376005, 0.151113,
		31.777622, 39.936989, 24.812000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120928, 40.428360, 24.632347>,  <31.137674, 39.673786, 24.706221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120928, 40.428360, 24.632347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505674, 40.351284, 24.554695>,  <31.736523, 40.305038, 24.508104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505674, 40.351284, 24.554695>,  <31.120928, 40.428360, 24.632347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505674, 40.351284, 24.554695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057685, 0.550873, -0.832593,
		0.267373, 0.812041, 0.518750,
		0.961865, -0.192689, -0.194131,
		31.794233, 40.293476, 24.496456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427965, 41.085812, 24.471424>,  <31.120928, 40.428360, 24.632347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427965, 41.085812, 24.471424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695185, 40.831146, 24.317350>,  <31.855516, 40.678345, 24.224905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695185, 40.831146, 24.317350>,  <31.427965, 41.085812, 24.471424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695185, 40.831146, 24.317350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100660, 0.590203, -0.800955,
		0.737279, 0.496303, 0.458370,
		0.668047, -0.636667, -0.385186,
		31.895599, 40.640148, 24.201794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093529, 41.354969, 24.475517>,  <31.427965, 41.085812, 24.471424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093529, 41.354969, 24.475517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084206, 41.103085, 24.164925>,  <32.078613, 40.951954, 23.978569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084206, 41.103085, 24.164925>,  <32.093529, 41.354969, 24.475517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084206, 41.103085, 24.164925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275871, 0.742486, -0.610417,
		0.960912, -0.228435, 0.156413,
		-0.023307, -0.629707, -0.776483,
		32.077213, 40.914173, 23.931980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583950, 41.612453, 24.083096>,  <32.093529, 41.354969, 24.475517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583950, 41.612453, 24.083096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400890, 41.352131, 23.840769>,  <32.291054, 41.195938, 23.695374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400890, 41.352131, 23.840769>,  <32.583950, 41.612453, 24.083096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400890, 41.352131, 23.840769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174684, 0.602266, -0.778949,
		0.871804, -0.462312, -0.161942,
		-0.457650, -0.650802, -0.605816,
		32.263596, 41.156891, 23.659023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933018, 41.612766, 23.501760>,  <32.583950, 41.612453, 24.083096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933018, 41.612766, 23.501760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602104, 41.448650, 23.348261>,  <32.403557, 41.350182, 23.256161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602104, 41.448650, 23.348261>,  <32.933018, 41.612766, 23.501760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602104, 41.448650, 23.348261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007700, 0.691308, -0.722519,
		0.561726, -0.594776, -0.575069,
		-0.827287, -0.410286, -0.383746,
		32.353920, 41.325565, 23.233137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106628, 41.543552, 22.791952>,  <32.933018, 41.612766, 23.501760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106628, 41.543552, 22.791952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707642, 41.516270, 22.799971>,  <32.468250, 41.499901, 22.804781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707642, 41.516270, 22.799971>,  <33.106628, 41.543552, 22.791952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707642, 41.516270, 22.799971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054012, 0.543724, -0.837525,
		0.046227, -0.836488, -0.546032,
		-0.997470, -0.068208, 0.020046,
		32.408401, 41.495808, 22.805984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908897, 41.304737, 22.174299>,  <33.106628, 41.543552, 22.791952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908897, 41.304737, 22.174299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576328, 41.489620, 22.297653>,  <32.376785, 41.600552, 22.371666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576328, 41.489620, 22.297653>,  <32.908897, 41.304737, 22.174299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576328, 41.489620, 22.297653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048320, 0.492756, -0.868825,
		-0.553538, -0.737261, -0.387353,
		-0.831421, 0.462211, 0.308383,
		32.326900, 41.628284, 22.390167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353313, 41.219429, 21.625700>,  <32.908897, 41.304737, 22.174299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353313, 41.219429, 21.625700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278111, 41.532181, 21.863464>,  <32.232990, 41.719830, 22.006123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278111, 41.532181, 21.863464>,  <32.353313, 41.219429, 21.625700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278111, 41.532181, 21.863464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195644, 0.563260, -0.802784,
		-0.962485, -0.267221, 0.047073,
		-0.188006, 0.781877, 0.594409,
		32.221710, 41.766743, 22.041788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670231, 41.504311, 21.412254>,  <32.353313, 41.219429, 21.625700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670231, 41.504311, 21.412254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861008, 41.798286, 21.605082>,  <31.975473, 41.974670, 21.720778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861008, 41.798286, 21.605082>,  <31.670231, 41.504311, 21.412254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861008, 41.798286, 21.605082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252505, 0.639920, -0.725771,
		-0.841883, 0.224425, 0.490780,
		0.476942, 0.734939, 0.482070,
		32.004089, 42.018768, 21.749702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205471, 42.194889, 21.407719>,  <31.670231, 41.504311, 21.412254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205471, 42.194889, 21.407719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594343, 42.273132, 21.459263>,  <31.827665, 42.320080, 21.490189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594343, 42.273132, 21.459263>,  <31.205471, 42.194889, 21.407719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594343, 42.273132, 21.459263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054814, 0.724824, -0.686750,
		-0.227739, 0.660580, 0.715380,
		0.972178, 0.195613, 0.128861,
		31.885996, 42.331818, 21.497921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278107, 42.866440, 21.676237>,  <31.205471, 42.194889, 21.407719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278107, 42.866440, 21.676237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629669, 42.786179, 21.503143>,  <31.840607, 42.738022, 21.399286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629669, 42.786179, 21.503143>,  <31.278107, 42.866440, 21.676237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629669, 42.786179, 21.503143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126570, 0.776591, -0.617160,
		0.459892, 0.597198, 0.657156,
		0.878908, -0.200651, -0.432735,
		31.893341, 42.725983, 21.373323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669197, 43.486660, 21.730772>,  <31.278107, 42.866440, 21.676237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669197, 43.486660, 21.730772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766670, 43.250755, 21.422800>,  <31.825155, 43.109211, 21.238016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766670, 43.250755, 21.422800>,  <31.669197, 43.486660, 21.730772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766670, 43.250755, 21.422800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080346, 0.778857, -0.622034,
		0.966521, 0.213441, 0.142410,
		0.243685, -0.589766, -0.769931,
		31.839775, 43.073826, 21.191820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211948, 43.796001, 21.308706>,  <31.669197, 43.486660, 21.730772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211948, 43.796001, 21.308706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950346, 43.588432, 21.088526>,  <31.793385, 43.463890, 20.956417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950346, 43.588432, 21.088526>,  <32.211948, 43.796001, 21.308706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950346, 43.588432, 21.088526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096571, 0.778951, -0.619604,
		0.750304, -0.352065, -0.559549,
		-0.654002, -0.518927, -0.550451,
		31.754145, 43.432755, 20.923391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863895, 44.211113, 21.436502>,  <32.211948, 43.796001, 21.308706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863895, 44.211113, 21.436502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171860, 44.398350, 21.263006>,  <33.356636, 44.510693, 21.158909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171860, 44.398350, 21.263006>,  <32.863895, 44.211113, 21.436502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171860, 44.398350, 21.263006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259984, -0.390645, -0.883065,
		-0.582794, 0.792645, -0.179065,
		0.769909, 0.468091, -0.433741,
		33.402832, 44.538776, 21.132883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638657, 44.423061, 20.766008>,  <32.863895, 44.211113, 21.436502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638657, 44.423061, 20.766008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036690, 44.421890, 20.726412>,  <33.275509, 44.421188, 20.702654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036690, 44.421890, 20.726412>,  <32.638657, 44.423061, 20.766008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036690, 44.421890, 20.726412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093510, -0.357025, -0.929403,
		-0.032623, 0.934090, -0.355544,
		0.995084, -0.002927, -0.098994,
		33.335217, 44.421013, 20.696714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410507, 45.009243, 21.103731>,  <32.638657, 44.423061, 20.766008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410507, 45.009243, 21.103731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437824, 45.277401, 21.399273>,  <32.454216, 45.438297, 21.576599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437824, 45.277401, 21.399273>,  <32.410507, 45.009243, 21.103731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437824, 45.277401, 21.399273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356513, -0.708084, 0.609521,
		0.931791, 0.221786, -0.287361,
		0.068292, 0.670394, 0.738856,
		32.458313, 45.478519, 21.620930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136471, 45.052269, 21.366402>,  <32.410507, 45.009243, 21.103731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136471, 45.052269, 21.366402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862602, 45.131878, 21.646862>,  <32.698280, 45.179642, 21.815138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862602, 45.131878, 21.646862>,  <33.136471, 45.052269, 21.366402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862602, 45.131878, 21.646862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394678, -0.707506, 0.586229,
		0.612739, 0.678105, 0.405862,
		-0.684675, 0.199021, 0.701150,
		32.657200, 45.191586, 21.857206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389465, 44.865334, 22.076256>,  <33.136471, 45.052269, 21.366402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389465, 44.865334, 22.076256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002758, 44.925659, 22.158833>,  <32.770733, 44.961857, 22.208378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002758, 44.925659, 22.158833>,  <33.389465, 44.865334, 22.076256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002758, 44.925659, 22.158833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062532, -0.643462, 0.762920,
		0.247900, 0.750474, 0.612646,
		-0.966766, 0.150818, 0.206443,
		32.712727, 44.970905, 22.220766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295200, 45.144257, 22.786840>,  <33.389465, 44.865334, 22.076256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295200, 45.144257, 22.786840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972038, 44.941784, 22.666134>,  <32.778141, 44.820301, 22.593710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972038, 44.941784, 22.666134>,  <33.295200, 45.144257, 22.786840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972038, 44.941784, 22.666134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153531, -0.675175, 0.721503,
		-0.568958, 0.536577, 0.623194,
		-0.807907, -0.506185, -0.301765,
		32.729668, 44.789928, 22.575603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724968, 45.184513, 23.277943>,  <33.295200, 45.144257, 22.786840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724968, 45.184513, 23.277943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701065, 44.841183, 23.074099>,  <32.686726, 44.635185, 22.951792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701065, 44.841183, 23.074099>,  <32.724968, 45.184513, 23.277943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701065, 44.841183, 23.074099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116669, -0.513030, 0.850405,
		-0.991372, -0.008642, 0.130795,
		-0.059753, -0.858328, -0.509611,
		32.683140, 44.583683, 22.921215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413162, 44.757362, 23.734732>,  <32.724968, 45.184513, 23.277943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413162, 44.757362, 23.734732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595039, 44.518017, 23.470848>,  <32.704166, 44.374409, 23.312519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595039, 44.518017, 23.470848>,  <32.413162, 44.757362, 23.734732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595039, 44.518017, 23.470848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258159, -0.620364, 0.740610,
		-0.852411, -0.507063, -0.127605,
		0.454697, -0.598361, -0.659708,
		32.731449, 44.338509, 23.272936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057285, 44.069977, 23.817213>,  <32.413162, 44.757362, 23.734732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057285, 44.069977, 23.817213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404518, 43.977619, 23.641428>,  <32.612858, 43.922207, 23.535957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404518, 43.977619, 23.641428>,  <32.057285, 44.069977, 23.817213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404518, 43.977619, 23.641428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283091, -0.496965, 0.820296,
		-0.407799, -0.836489, -0.366041,
		0.868078, -0.230893, -0.439464,
		32.664944, 43.908352, 23.509588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182224, 43.345890, 23.823185>,  <32.057285, 44.069977, 23.817213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182224, 43.345890, 23.823185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542709, 43.518143, 23.803688>,  <32.758999, 43.621494, 23.791990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542709, 43.518143, 23.803688>,  <32.182224, 43.345890, 23.823185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542709, 43.518143, 23.803688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329702, -0.608263, 0.722020,
		0.281278, -0.666762, -0.690153,
		0.901210, 0.430633, -0.048742,
		32.813072, 43.647331, 23.789066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547859, 42.763000, 24.025951>,  <32.182224, 43.345890, 23.823185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547859, 42.763000, 24.025951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794044, 43.076218, 24.061853>,  <32.941753, 43.264149, 24.083395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794044, 43.076218, 24.061853>,  <32.547859, 42.763000, 24.025951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794044, 43.076218, 24.061853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392093, -0.402968, 0.826971,
		0.683720, -0.473775, -0.555035,
		0.615459, 0.783042, 0.089754,
		32.978683, 43.311131, 24.088779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194538, 42.490738, 24.175146>,  <32.547859, 42.763000, 24.025951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194538, 42.490738, 24.175146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199291, 42.872471, 24.294554>,  <33.202145, 43.101509, 24.366198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199291, 42.872471, 24.294554>,  <33.194538, 42.490738, 24.175146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199291, 42.872471, 24.294554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356025, -0.283013, 0.890589,
		0.934401, 0.095693, -0.343129,
		0.011887, 0.954330, 0.298517,
		33.202858, 43.158772, 24.384109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780891, 42.653076, 24.439245>,  <33.194538, 42.490738, 24.175146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780891, 42.653076, 24.439245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560894, 42.932423, 24.622458>,  <33.428898, 43.100033, 24.732386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560894, 42.932423, 24.622458>,  <33.780891, 42.653076, 24.439245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560894, 42.932423, 24.622458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150326, -0.456690, 0.876833,
		0.821531, 0.551103, 0.146192,
		-0.549990, 0.698369, 0.458031,
		33.395897, 43.141933, 24.759867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201607, 42.745674, 24.914576>,  <33.780891, 42.653076, 24.439245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201607, 42.745674, 24.914576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871902, 42.939968, 25.030958>,  <33.674080, 43.056545, 25.100788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871902, 42.939968, 25.030958>,  <34.201607, 42.745674, 24.914576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871902, 42.939968, 25.030958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074545, -0.416299, 0.906167,
		0.561278, 0.768609, 0.306931,
		-0.824263, 0.485732, 0.290955,
		33.624622, 43.085686, 25.118244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380013, 43.181919, 25.510685>,  <34.201607, 42.745674, 24.914576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380013, 43.181919, 25.510685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983078, 43.151695, 25.549805>,  <33.744919, 43.133560, 25.573277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983078, 43.151695, 25.549805>,  <34.380013, 43.181919, 25.510685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983078, 43.151695, 25.549805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111532, -0.206625, 0.972042,
		-0.053240, 0.975498, 0.213469,
		-0.992334, -0.075560, 0.097799,
		33.685379, 43.129028, 25.579144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233067, 43.689442, 25.935471>,  <34.380013, 43.181919, 25.510685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233067, 43.689442, 25.935471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941978, 43.415665, 25.953156>,  <33.767326, 43.251396, 25.963766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941978, 43.415665, 25.953156>,  <34.233067, 43.689442, 25.935471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941978, 43.415665, 25.953156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136522, -0.081380, 0.987289,
		-0.672147, 0.724509, 0.152664,
		-0.727723, -0.684445, 0.044212,
		33.723663, 43.210331, 25.966419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729183, 43.922806, 26.485203>,  <34.233067, 43.689442, 25.935471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729183, 43.922806, 26.485203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643513, 43.533024, 26.458187>,  <33.592110, 43.299152, 26.441978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643513, 43.533024, 26.458187>,  <33.729183, 43.922806, 26.485203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643513, 43.533024, 26.458187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153790, -0.034640, 0.987496,
		-0.964612, 0.221886, -0.142443,
		-0.214178, -0.974457, -0.067538,
		33.579258, 43.240688, 26.437925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195957, 43.785660, 26.951807>,  <33.729183, 43.922806, 26.485203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195957, 43.785660, 26.951807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347046, 43.417866, 26.908213>,  <33.437698, 43.197189, 26.882055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347046, 43.417866, 26.908213>,  <33.195957, 43.785660, 26.951807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347046, 43.417866, 26.908213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171368, -0.185095, 0.967663,
		-0.909924, -0.346827, -0.227484,
		0.377718, -0.919484, -0.108988,
		33.460361, 43.142021, 26.875517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609043, 43.304123, 27.097349>,  <33.195957, 43.785660, 26.951807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609043, 43.304123, 27.097349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937256, 43.077679, 27.128977>,  <33.134182, 42.941814, 27.147953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937256, 43.077679, 27.128977>,  <32.609043, 43.304123, 27.097349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937256, 43.077679, 27.128977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411933, -0.489736, 0.768420,
		-0.396283, -0.663086, -0.635041,
		0.820531, -0.566106, 0.079073,
		33.183414, 42.907845, 27.152699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378349, 42.497589, 27.023296>,  <32.609043, 43.304123, 27.097349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378349, 42.497589, 27.023296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726761, 42.507900, 27.219517>,  <32.935810, 42.514088, 27.337248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726761, 42.507900, 27.219517>,  <32.378349, 42.497589, 27.023296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726761, 42.507900, 27.219517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362507, -0.640175, 0.677323,
		0.331500, -0.767797, -0.548266,
		0.871032, 0.025782, 0.490549,
		32.988071, 42.515636, 27.366682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516468, 41.816021, 27.195625>,  <32.378349, 42.497589, 27.023296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516468, 41.816021, 27.195625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730122, 42.030773, 27.456842>,  <32.858315, 42.159622, 27.613573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730122, 42.030773, 27.456842>,  <32.516468, 41.816021, 27.195625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730122, 42.030773, 27.456842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301435, -0.600748, 0.740431,
		0.789836, -0.592338, -0.159045,
		0.534131, 0.536878, 0.653044,
		32.890362, 42.191837, 27.652756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753521, 41.296082, 27.647385>,  <32.516468, 41.816021, 27.195625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753521, 41.296082, 27.647385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822559, 41.628235, 27.859297>,  <32.863983, 41.827526, 27.986444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822559, 41.628235, 27.859297>,  <32.753521, 41.296082, 27.647385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822559, 41.628235, 27.859297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152208, -0.508908, 0.847257,
		0.973162, -0.226870, 0.038556,
		0.172595, 0.830387, 0.529781,
		32.874336, 41.877350, 28.018230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326721, 41.250774, 28.074915>,  <32.753521, 41.296082, 27.647385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326721, 41.250774, 28.074915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121201, 41.538837, 28.261415>,  <32.997890, 41.711674, 28.373316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121201, 41.538837, 28.261415>,  <33.326721, 41.250774, 28.074915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121201, 41.538837, 28.261415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270436, -0.379810, 0.884652,
		0.814172, 0.580623, 0.000389,
		-0.513798, 0.720154, 0.466252,
		32.967060, 41.754883, 28.401291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741211, 41.581211, 28.654497>,  <33.326721, 41.250774, 28.074915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741211, 41.581211, 28.654497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374249, 41.713345, 28.743261>,  <33.154072, 41.792625, 28.796520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374249, 41.713345, 28.743261>,  <33.741211, 41.581211, 28.654497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374249, 41.713345, 28.743261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153059, -0.221843, 0.962995,
		0.367342, 0.917422, 0.152959,
		-0.917405, 0.330337, 0.221912,
		33.099026, 41.812447, 28.809835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768852, 41.915401, 29.230009>,  <33.741211, 41.581211, 28.654497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768852, 41.915401, 29.230009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376656, 41.836952, 29.224733>,  <33.141338, 41.789883, 29.221569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376656, 41.836952, 29.224733>,  <33.768852, 41.915401, 29.230009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376656, 41.836952, 29.224733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030806, -0.219579, 0.975108,
		-0.194137, 0.955678, 0.221337,
		-0.980491, -0.196123, -0.013188,
		33.082508, 41.778114, 29.220778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457359, 42.255962, 29.750263>,  <33.768852, 41.915401, 29.230009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457359, 42.255962, 29.750263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195114, 41.965019, 29.669147>,  <33.037766, 41.790455, 29.620478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195114, 41.965019, 29.669147>,  <33.457359, 42.255962, 29.750263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195114, 41.965019, 29.669147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016625, -0.254592, 0.966906,
		-0.754912, 0.637290, 0.154822,
		-0.655615, -0.727355, -0.202790,
		32.998428, 41.746815, 29.608311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005692, 42.273098, 30.343092>,  <33.457359, 42.255962, 29.750263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005692, 42.273098, 30.343092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921623, 41.914833, 30.186314>,  <32.871181, 41.699875, 30.092247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921623, 41.914833, 30.186314>,  <33.005692, 42.273098, 30.343092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921623, 41.914833, 30.186314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033489, -0.394069, 0.918470,
		-0.977090, 0.206166, 0.052829,
		-0.210175, -0.895659, -0.391945,
		32.858570, 41.646137, 30.068729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472179, 42.038742, 30.756950>,  <33.005692, 42.273098, 30.343092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472179, 42.038742, 30.756950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605675, 41.695518, 30.600819>,  <32.685772, 41.489586, 30.507139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605675, 41.695518, 30.600819>,  <32.472179, 42.038742, 30.756950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605675, 41.695518, 30.600819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007093, -0.416345, 0.909179,
		-0.942638, -0.300661, -0.145037,
		0.333740, -0.858056, -0.390330,
		32.705795, 41.438103, 30.483719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009399, 41.478649, 30.875494>,  <32.472179, 42.038742, 30.756950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009399, 41.478649, 30.875494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351688, 41.291492, 30.787123>,  <32.557064, 41.179199, 30.734100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351688, 41.291492, 30.787123>,  <32.009399, 41.478649, 30.875494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351688, 41.291492, 30.787123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027973, -0.384515, 0.922695,
		-0.516675, -0.795752, -0.315951,
		0.855724, -0.467896, -0.220929,
		32.608406, 41.151123, 30.720844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895563, 40.692085, 31.027861>,  <32.009399, 41.478649, 30.875494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895563, 40.692085, 31.027861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286861, 40.764103, 31.069084>,  <32.521641, 40.807312, 31.093819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286861, 40.764103, 31.069084>,  <31.895563, 40.692085, 31.027861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286861, 40.764103, 31.069084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012812, -0.548265, 0.836206,
		0.207059, -0.816694, -0.538644,
		0.978245, 0.180045, 0.103060,
		32.580334, 40.818115, 31.100002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078915, 40.129955, 31.318970>,  <31.895563, 40.692085, 31.027861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078915, 40.129955, 31.318970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408958, 40.345612, 31.386536>,  <32.606983, 40.475006, 31.427074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408958, 40.345612, 31.386536>,  <32.078915, 40.129955, 31.318970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408958, 40.345612, 31.386536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103299, -0.437891, 0.893074,
		0.555456, -0.719431, -0.416998,
		0.825105, 0.539138, 0.168913,
		32.656490, 40.507355, 31.437210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749279, 39.657936, 31.495525>,  <32.078915, 40.129955, 31.318970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749279, 39.657936, 31.495525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802097, 40.007053, 31.683481>,  <32.833790, 40.216522, 31.796255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802097, 40.007053, 31.683481>,  <32.749279, 39.657936, 31.495525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802097, 40.007053, 31.683481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137940, -0.485607, 0.863225,
		0.981599, -0.049171, -0.184516,
		0.132048, 0.872793, 0.469889,
		32.841713, 40.268890, 31.824448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338512, 39.570648, 31.923653>,  <32.749279, 39.657936, 31.495525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338512, 39.570648, 31.923653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128513, 39.881721, 32.061981>,  <33.002514, 40.068363, 32.144978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128513, 39.881721, 32.061981>,  <33.338512, 39.570648, 31.923653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128513, 39.881721, 32.061981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159255, -0.309385, 0.937507,
		0.836073, 0.547260, 0.038577,
		-0.524995, 0.777680, 0.345822,
		32.971016, 40.115025, 32.165730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715885, 39.788235, 32.456314>,  <33.338512, 39.570648, 31.923653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715885, 39.788235, 32.456314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378860, 39.988762, 32.535072>,  <33.176647, 40.109077, 32.582329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378860, 39.988762, 32.535072>,  <33.715885, 39.788235, 32.456314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378860, 39.988762, 32.535072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213224, -0.025240, 0.976677,
		0.494594, 0.864896, -0.085626,
		-0.842563, 0.501317, 0.196900,
		33.126091, 40.139156, 32.594143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862747, 40.357983, 32.902660>,  <33.715885, 39.788235, 32.456314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862747, 40.357983, 32.902660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480320, 40.258968, 32.965485>,  <33.250866, 40.199558, 33.003178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480320, 40.258968, 32.965485>,  <33.862747, 40.357983, 32.902660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480320, 40.258968, 32.965485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184690, -0.092519, 0.978432,
		-0.227667, 0.964451, 0.134172,
		-0.956064, -0.247537, 0.157061,
		33.193501, 40.184708, 33.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605511, 40.837078, 33.342892>,  <33.862747, 40.357983, 32.902660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605511, 40.837078, 33.342892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359257, 40.526176, 33.394848>,  <33.211506, 40.339634, 33.426022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359257, 40.526176, 33.394848>,  <33.605511, 40.837078, 33.342892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359257, 40.526176, 33.394848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162727, 0.035884, 0.986018,
		-0.771048, 0.628162, 0.104389,
		-0.615634, -0.777254, 0.129887,
		33.174568, 40.292999, 33.433815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381973, 40.903576, 34.033405>,  <33.605511, 40.837078, 33.342892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381973, 40.903576, 34.033405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272602, 40.529697, 33.942562>,  <33.206982, 40.305370, 33.888058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272602, 40.529697, 33.942562>,  <33.381973, 40.903576, 34.033405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272602, 40.529697, 33.942562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154492, -0.275712, 0.948743,
		-0.949405, 0.224324, 0.219791,
		-0.273425, -0.934699, -0.227107,
		33.190575, 40.249287, 33.874432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925068, 40.731270, 34.643028>,  <33.381973, 40.903576, 34.033405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925068, 40.731270, 34.643028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048012, 40.393196, 34.468128>,  <33.121780, 40.190350, 34.363190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048012, 40.393196, 34.468128>,  <32.925068, 40.731270, 34.643028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048012, 40.393196, 34.468128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176995, -0.400699, 0.898951,
		-0.934987, -0.353696, 0.026434,
		0.307363, -0.845186, -0.437251,
		33.140221, 40.139641, 34.336952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624489, 40.226269, 35.001339>,  <32.925068, 40.731270, 34.643028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624489, 40.226269, 35.001339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952278, 40.067883, 34.835602>,  <33.148952, 39.972851, 34.736160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952278, 40.067883, 34.835602>,  <32.624489, 40.226269, 35.001339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952278, 40.067883, 34.835602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218163, -0.453019, 0.864395,
		-0.529976, -0.798740, -0.284850,
		0.819470, -0.395965, -0.414344,
		33.198120, 39.949093, 34.711300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638901, 39.528652, 35.203079>,  <32.624489, 40.226269, 35.001339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638901, 39.528652, 35.203079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012501, 39.571171, 35.066643>,  <33.236660, 39.596684, 34.984783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012501, 39.571171, 35.066643>,  <32.638901, 39.528652, 35.203079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012501, 39.571171, 35.066643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339360, -0.562440, 0.753987,
		-0.111692, -0.819976, -0.561394,
		0.934002, 0.106301, -0.341087,
		33.292702, 39.603062, 34.964317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881813, 38.925365, 35.525082>,  <32.638901, 39.528652, 35.203079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881813, 38.925365, 35.525082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199295, 39.123291, 35.383553>,  <33.389786, 39.242046, 35.298634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199295, 39.123291, 35.383553>,  <32.881813, 38.925365, 35.525082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199295, 39.123291, 35.383553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606478, -0.598708, 0.523195,
		0.047044, -0.629851, -0.775290,
		0.793707, 0.494810, -0.353825,
		33.437408, 39.271732, 35.277405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485851, 38.368523, 35.311718>,  <32.881813, 38.925365, 35.525082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485851, 38.368523, 35.311718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640793, 38.727009, 35.398209>,  <33.733757, 38.942101, 35.450104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640793, 38.727009, 35.398209>,  <33.485851, 38.368523, 35.311718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640793, 38.727009, 35.398209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736598, -0.441890, 0.512011,
		0.554421, -0.039058, -0.831319,
		0.387350, 0.896218, 0.216223,
		33.756996, 38.995872, 35.463074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165165, 38.372345, 35.164410>,  <33.485851, 38.368523, 35.311718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165165, 38.372345, 35.164410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126804, 38.659786, 35.439919>,  <34.103786, 38.832253, 35.605225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126804, 38.659786, 35.439919>,  <34.165165, 38.372345, 35.164410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126804, 38.659786, 35.439919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714338, -0.432203, 0.550383,
		0.693198, 0.544804, -0.471875,
		-0.095905, 0.718602, 0.688776,
		34.098034, 38.875366, 35.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924541, 38.503498, 35.321861>,  <34.165165, 38.372345, 35.164410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924541, 38.503498, 35.321861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687492, 38.646896, 35.610382>,  <34.545261, 38.732937, 35.783493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687492, 38.646896, 35.610382>,  <34.924541, 38.503498, 35.321861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687492, 38.646896, 35.610382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591763, -0.413744, 0.691832,
		0.546453, 0.836837, 0.033052,
		-0.592626, 0.358495, 0.721301,
		34.509705, 38.754444, 35.826771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304417, 38.873524, 35.784363>,  <34.924541, 38.503498, 35.321861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304417, 38.873524, 35.784363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976837, 38.792564, 35.999157>,  <34.780289, 38.743988, 36.128033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976837, 38.792564, 35.999157>,  <35.304417, 38.873524, 35.784363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976837, 38.792564, 35.999157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569498, -0.171425, 0.803919,
		-0.070656, 0.964184, 0.255652,
		-0.818950, -0.202395, 0.536988,
		34.731152, 38.731846, 36.160252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444267, 38.872181, 36.644440>,  <35.304417, 38.873524, 35.784363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444267, 38.872181, 36.644440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767052, 38.661140, 36.538265>,  <35.960720, 38.534515, 36.474560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767052, 38.661140, 36.538265>,  <35.444267, 38.872181, 36.644440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767052, 38.661140, 36.538265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200596, 0.667544, -0.717040,
		0.555501, 0.525376, 0.644514,
		0.806957, -0.527603, -0.265433,
		36.009140, 38.502861, 36.458633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093849, 39.374870, 36.505955>,  <35.444267, 38.872181, 36.644440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093849, 39.374870, 36.505955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176029, 39.032600, 36.315964>,  <36.225338, 38.827236, 36.201969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176029, 39.032600, 36.315964>,  <36.093849, 39.374870, 36.505955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176029, 39.032600, 36.315964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206071, 0.512272, -0.833733,
		0.956726, 0.073414, 0.281578,
		0.205452, -0.855679, -0.474976,
		36.237663, 38.775898, 36.173470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814102, 39.507271, 36.195312>,  <36.093849, 39.374870, 36.505955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814102, 39.507271, 36.195312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645206, 39.204994, 35.995052>,  <36.543869, 39.023628, 35.874897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645206, 39.204994, 35.995052>,  <36.814102, 39.507271, 36.195312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645206, 39.204994, 35.995052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306898, 0.400509, -0.863369,
		0.852952, -0.518197, 0.062808,
		-0.422240, -0.755689, -0.500648,
		36.518536, 38.978287, 35.844856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271114, 39.141911, 35.810242>,  <36.814102, 39.507271, 36.195312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271114, 39.141911, 35.810242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929279, 39.053085, 35.622471>,  <36.724178, 38.999790, 35.509808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929279, 39.053085, 35.622471>,  <37.271114, 39.141911, 35.810242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929279, 39.053085, 35.622471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376488, 0.357672, -0.854592,
		0.357672, -0.907061, -0.222061,
		0.854592, 0.222061, 0.469427,
		36.672901, 38.986465, 35.481644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524597, 38.842125, 35.080948>,  <37.271114, 39.141911, 35.810242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524597, 38.842125, 35.080948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140938, 38.954967, 35.072540>,  <36.910740, 39.022675, 35.067493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140938, 38.954967, 35.072540>,  <37.524597, 38.842125, 35.080948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140938, 38.954967, 35.072540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122327, 0.346602, -0.930002,
		-0.255073, -0.894585, -0.366953,
		-0.959153, 0.282106, -0.021023,
		36.853191, 39.039600, 35.066235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215488, 38.555023, 34.505531>,  <37.524597, 38.842125, 35.080948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215488, 38.555023, 34.505531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996269, 38.876591, 34.597927>,  <36.864738, 39.069530, 34.653366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996269, 38.876591, 34.597927>,  <37.215488, 38.555023, 34.505531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996269, 38.876591, 34.597927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097117, 0.335448, -0.937039,
		-0.830788, -0.491113, -0.261916,
		-0.548051, 0.803917, 0.230991,
		36.831852, 39.117767, 34.667225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922134, 38.728607, 33.861877>,  <37.215488, 38.555023, 34.505531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922134, 38.728607, 33.861877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797981, 39.036709, 34.084721>,  <36.723488, 39.221569, 34.218426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797981, 39.036709, 34.084721>,  <36.922134, 38.728607, 33.861877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797981, 39.036709, 34.084721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035045, 0.594925, -0.803017,
		-0.949966, -0.229719, -0.211648,
		-0.310382, 0.770256, 0.557108,
		36.704868, 39.267784, 34.251854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426651, 39.035664, 33.441925>,  <36.922134, 38.728607, 33.861877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426651, 39.035664, 33.441925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559086, 39.322315, 33.687466>,  <36.638546, 39.494308, 33.834789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559086, 39.322315, 33.687466>,  <36.426651, 39.035664, 33.441925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559086, 39.322315, 33.687466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082634, 0.626027, -0.775411,
		-0.939974, 0.307456, 0.148053,
		0.331089, 0.716632, 0.613856,
		36.658413, 39.537304, 33.871624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081520, 39.567612, 33.292519>,  <36.426651, 39.035664, 33.441925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081520, 39.567612, 33.292519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404942, 39.722519, 33.469723>,  <36.598995, 39.815464, 33.576046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404942, 39.722519, 33.469723>,  <36.081520, 39.567612, 33.292519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404942, 39.722519, 33.469723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192505, 0.537351, -0.821094,
		-0.556037, 0.749183, 0.359927,
		0.808557, 0.387271, 0.443009,
		36.647507, 39.838699, 33.602627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006958, 40.190746, 33.208794>,  <36.081520, 39.567612, 33.292519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006958, 40.190746, 33.208794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398987, 40.155594, 33.280048>,  <36.634205, 40.134502, 33.322800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398987, 40.155594, 33.280048>,  <36.006958, 40.190746, 33.208794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398987, 40.155594, 33.280048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198053, 0.500759, -0.842624,
		-0.015150, 0.861114, 0.508187,
		0.980074, -0.087882, 0.178133,
		36.693008, 40.129230, 33.333488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322445, 40.834599, 33.059052>,  <36.006958, 40.190746, 33.208794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322445, 40.834599, 33.059052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631397, 40.580788, 33.047688>,  <36.816769, 40.428501, 33.040871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631397, 40.580788, 33.047688>,  <36.322445, 40.834599, 33.059052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631397, 40.580788, 33.047688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393330, 0.512938, -0.763011,
		0.498722, 0.578161, 0.645761,
		0.772378, -0.634527, -0.028405,
		36.863110, 40.390430, 33.039165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788223, 41.244839, 32.969559>,  <36.322445, 40.834599, 33.059052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788223, 41.244839, 32.969559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951347, 40.897980, 32.855194>,  <37.049221, 40.689865, 32.786575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951347, 40.897980, 32.855194>,  <36.788223, 41.244839, 32.969559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951347, 40.897980, 32.855194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137679, 0.367954, -0.919595,
		0.902625, 0.335659, 0.269445,
		0.407814, -0.867146, -0.285911,
		37.073692, 40.637836, 32.769421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379959, 41.423992, 32.694851>,  <36.788223, 41.244839, 32.969559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379959, 41.423992, 32.694851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290176, 41.061779, 32.550835>,  <37.236305, 40.844452, 32.464424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290176, 41.061779, 32.550835>,  <37.379959, 41.423992, 32.694851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290176, 41.061779, 32.550835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105255, 0.344780, -0.932764,
		0.968782, -0.247265, 0.017921,
		-0.224461, -0.905531, -0.360043,
		37.222839, 40.790119, 32.442822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978668, 41.175907, 32.299038>,  <37.379959, 41.423992, 32.694851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978668, 41.175907, 32.299038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664692, 40.958939, 32.179276>,  <37.476307, 40.828758, 32.107418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664692, 40.958939, 32.179276>,  <37.978668, 41.175907, 32.299038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664692, 40.958939, 32.179276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090521, 0.377666, -0.921506,
		0.612924, -0.750429, -0.247344,
		-0.784939, -0.542424, -0.299411,
		37.429211, 40.796211, 32.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006313, 41.306343, 31.632278>,  <37.978668, 41.175907, 32.299038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006313, 41.306343, 31.632278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672020, 41.087208, 31.617157>,  <37.471443, 40.955727, 31.608084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672020, 41.087208, 31.617157>,  <38.006313, 41.306343, 31.632278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672020, 41.087208, 31.617157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235808, 0.420192, -0.876261,
		0.495934, -0.723403, -0.480352,
		-0.835730, -0.547838, -0.037803,
		37.421299, 40.922855, 31.605816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950485, 40.777233, 30.962208>,  <38.006313, 41.306343, 31.632278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950485, 40.777233, 30.962208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578873, 40.860523, 31.084545>,  <37.355904, 40.910500, 31.157948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578873, 40.860523, 31.084545>,  <37.950485, 40.777233, 30.962208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578873, 40.860523, 31.084545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229705, 0.323425, -0.917950,
		-0.290060, -0.923059, -0.252641,
		-0.929032, 0.208228, 0.305844,
		37.300163, 40.922993, 31.176298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468414, 40.316959, 30.517700>,  <37.950485, 40.777233, 30.962208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468414, 40.316959, 30.517700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275135, 40.635769, 30.662626>,  <37.159168, 40.827057, 30.749582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275135, 40.635769, 30.662626>,  <37.468414, 40.316959, 30.517700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275135, 40.635769, 30.662626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389951, 0.174600, -0.904131,
		-0.783876, -0.578157, 0.226435,
		-0.483194, 0.797026, 0.362317,
		37.130177, 40.874878, 30.771322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804146, 40.322056, 30.220903>,  <37.468414, 40.316959, 30.517700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804146, 40.322056, 30.220903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808342, 40.697472, 30.358912>,  <36.810860, 40.922722, 30.441717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808342, 40.697472, 30.358912>,  <36.804146, 40.322056, 30.220903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808342, 40.697472, 30.358912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637459, 0.272113, -0.720833,
		-0.770413, -0.212375, 0.601133,
		0.010489, 0.938537, 0.345019,
		36.811489, 40.979034, 30.462418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072540, 40.679363, 30.247349>,  <36.804146, 40.322056, 30.220903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072540, 40.679363, 30.247349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322296, 40.990810, 30.222418>,  <36.472149, 41.177681, 30.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322296, 40.990810, 30.222418>,  <36.072540, 40.679363, 30.247349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322296, 40.990810, 30.222418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496531, 0.334044, -0.801169,
		-0.602987, 0.531190, 0.595183,
		0.624390, 0.778622, -0.062328,
		36.509613, 41.224396, 30.203720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627327, 41.172493, 30.117521>,  <36.072540, 40.679363, 30.247349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627327, 41.172493, 30.117521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974628, 41.319298, 29.983995>,  <36.183010, 41.407379, 29.903879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974628, 41.319298, 29.983995>,  <35.627327, 41.172493, 30.117521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974628, 41.319298, 29.983995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449920, 0.298983, -0.841535,
		-0.209049, 0.880858, 0.424720,
		0.868257, 0.367012, -0.333814,
		36.235107, 41.429401, 29.883852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474312, 41.750618, 29.728146>,  <35.627327, 41.172493, 30.117521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474312, 41.750618, 29.728146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842194, 41.686031, 29.584997>,  <36.062923, 41.647278, 29.499107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842194, 41.686031, 29.584997>,  <35.474312, 41.750618, 29.728146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842194, 41.686031, 29.584997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328464, 0.182879, -0.926643,
		0.215071, 0.969785, 0.115158,
		0.919704, -0.161468, -0.357871,
		36.118103, 41.637592, 29.477636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645378, 42.347881, 29.330812>,  <35.474312, 41.750618, 29.728146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645378, 42.347881, 29.330812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900169, 42.067116, 29.203325>,  <36.053043, 41.898659, 29.126833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900169, 42.067116, 29.203325>,  <35.645378, 42.347881, 29.330812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900169, 42.067116, 29.203325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292232, 0.162723, -0.942402,
		0.713344, 0.693430, -0.101470,
		0.636978, -0.701909, -0.318720,
		36.091263, 41.856544, 29.107710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035961, 42.628689, 28.698650>,  <35.645378, 42.347881, 29.330812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035961, 42.628689, 28.698650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045097, 42.228920, 28.708733>,  <36.050579, 41.989059, 28.714783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045097, 42.228920, 28.708733>,  <36.035961, 42.628689, 28.698650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045097, 42.228920, 28.708733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294409, -0.030817, -0.955183,
		0.955407, 0.014396, -0.294942,
		0.022840, -0.999421, 0.025205,
		36.051949, 41.929092, 28.716293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463741, 42.503548, 28.064409>,  <36.035961, 42.628689, 28.698650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463741, 42.503548, 28.064409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263496, 42.169872, 28.156950>,  <36.143349, 41.969666, 28.212475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263496, 42.169872, 28.156950>,  <36.463741, 42.503548, 28.064409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263496, 42.169872, 28.156950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341309, -0.055404, -0.938317,
		0.795550, -0.548691, -0.256980,
		-0.500608, -0.834187, 0.231350,
		36.113316, 41.919617, 28.226355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668415, 42.029984, 27.545790>,  <36.463741, 42.503548, 28.064409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668415, 42.029984, 27.545790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320110, 41.913258, 27.704094>,  <36.111130, 41.843224, 27.799076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320110, 41.913258, 27.704094>,  <36.668415, 42.029984, 27.545790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320110, 41.913258, 27.704094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363768, -0.159239, -0.917778,
		0.330840, -0.943127, 0.032507,
		-0.870757, -0.291813, 0.395762,
		36.058884, 41.825714, 27.822823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567249, 41.396133, 27.240730>,  <36.668415, 42.029984, 27.545790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567249, 41.396133, 27.240730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209522, 41.508389, 27.380123>,  <35.994884, 41.575741, 27.463758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209522, 41.508389, 27.380123>,  <36.567249, 41.396133, 27.240730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209522, 41.508389, 27.380123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412949, -0.217857, -0.884314,
		-0.172243, -0.934765, 0.310719,
		-0.894318, 0.280628, 0.348486,
		35.941227, 41.592579, 27.484669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065388, 40.792992, 27.126240>,  <36.567249, 41.396133, 27.240730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065388, 40.792992, 27.126240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852146, 41.131332, 27.133650>,  <35.724201, 41.334335, 27.138096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852146, 41.131332, 27.133650>,  <36.065388, 40.792992, 27.126240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852146, 41.131332, 27.133650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333433, -0.189923, -0.923446,
		-0.777576, -0.498468, 0.383282,
		-0.533102, 0.845848, 0.018526,
		35.692215, 41.385086, 27.139208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483185, 40.594284, 26.744095>,  <36.065388, 40.792992, 27.126240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483185, 40.594284, 26.744095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448376, 40.992752, 26.747337>,  <35.427490, 41.231834, 26.749283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448376, 40.992752, 26.747337>,  <35.483185, 40.594284, 26.744095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448376, 40.992752, 26.747337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331517, -0.021283, -0.943209,
		-0.939428, -0.084765, 0.332101,
		-0.087019, 0.996174, 0.008107,
		35.422272, 41.291603, 26.749769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868927, 40.749672, 26.320322>,  <35.483185, 40.594284, 26.744095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868927, 40.749672, 26.320322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041019, 41.110725, 26.325161>,  <35.144276, 41.327358, 26.328064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041019, 41.110725, 26.325161>,  <34.868927, 40.749672, 26.320322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041019, 41.110725, 26.325161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066601, 0.045106, -0.996760,
		-0.900259, 0.428031, 0.079523,
		0.430231, 0.902638, 0.012099,
		35.170090, 41.381516, 26.328791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438324, 41.110443, 25.890661>,  <34.868927, 40.749672, 26.320322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438324, 41.110443, 25.890661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803295, 41.273884, 25.899738>,  <35.022278, 41.371948, 25.905184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803295, 41.273884, 25.899738>,  <34.438324, 41.110443, 25.890661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803295, 41.273884, 25.899738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001087, 0.057865, -0.998324,
		-0.409234, 0.910875, 0.053242,
		0.912429, 0.408606, 0.022691,
		35.077023, 41.396465, 25.906546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373642, 41.554169, 25.433279>,  <34.438324, 41.110443, 25.890661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373642, 41.554169, 25.433279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771175, 41.544235, 25.476500>,  <35.009697, 41.538277, 25.502432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771175, 41.544235, 25.476500>,  <34.373642, 41.554169, 25.433279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771175, 41.544235, 25.476500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110757, 0.178870, -0.977619,
		0.004947, 0.983559, 0.180517,
		0.993835, -0.024830, 0.108051,
		35.069324, 41.536785, 25.508915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694748, 42.191811, 25.106779>,  <34.373642, 41.554169, 25.433279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694748, 42.191811, 25.106779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962013, 41.894291, 25.099493>,  <35.122372, 41.715778, 25.095121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962013, 41.894291, 25.099493>,  <34.694748, 42.191811, 25.106779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962013, 41.894291, 25.099493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151131, 0.159654, -0.975536,
		0.728507, 0.649060, 0.219085,
		0.668159, -0.743795, -0.018216,
		35.162460, 41.671154, 25.094028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149128, 42.485985, 24.641163>,  <34.694748, 42.191811, 25.106779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149128, 42.485985, 24.641163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261597, 42.103035, 24.667614>,  <35.329079, 41.873264, 24.683485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261597, 42.103035, 24.667614>,  <35.149128, 42.485985, 24.641163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261597, 42.103035, 24.667614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157386, -0.021974, -0.987293,
		0.946665, 0.288002, 0.144499,
		0.281167, -0.957378, 0.066129,
		35.345947, 41.815823, 24.687452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711906, 42.449966, 24.325441>,  <35.149128, 42.485985, 24.641163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711906, 42.449966, 24.325441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580490, 42.073448, 24.294416>,  <35.501640, 41.847538, 24.275801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580490, 42.073448, 24.294416>,  <35.711906, 42.449966, 24.325441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580490, 42.073448, 24.294416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027618, 0.072513, -0.996985,
		0.944086, -0.329692, 0.002173,
		-0.328540, -0.941300, -0.077564,
		35.481930, 41.791058, 24.271147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166916, 42.016373, 23.784710>,  <35.711906, 42.449966, 24.325441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166916, 42.016373, 23.784710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803768, 41.860584, 23.846802>,  <35.585880, 41.767113, 23.884058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803768, 41.860584, 23.846802>,  <36.166916, 42.016373, 23.784710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803768, 41.860584, 23.846802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109314, -0.137559, -0.984443,
		0.404761, -0.910710, 0.082311,
		-0.907865, -0.389467, 0.155232,
		35.531410, 41.743744, 23.893372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130287, 41.522614, 23.251106>,  <36.166916, 42.016373, 23.784710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130287, 41.522614, 23.251106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743473, 41.548363, 23.349655>,  <35.511383, 41.563812, 23.408785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743473, 41.548363, 23.349655>,  <36.130287, 41.522614, 23.251106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743473, 41.548363, 23.349655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250202, -0.060246, -0.966317,
		-0.047342, -0.996107, 0.074362,
		-0.967035, 0.064353, 0.246376,
		35.453362, 41.567677, 23.423567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835365, 41.006203, 22.775272>,  <36.130287, 41.522614, 23.251106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835365, 41.006203, 22.775272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545597, 41.254738, 22.894707>,  <35.371738, 41.403858, 22.966368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545597, 41.254738, 22.894707>,  <35.835365, 41.006203, 22.775272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545597, 41.254738, 22.894707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362780, 0.024691, -0.931548,
		-0.586182, -0.783150, 0.207524,
		-0.724418, 0.621342, 0.298585,
		35.328270, 41.441139, 22.984282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178303, 40.691380, 22.559813>,  <35.835365, 41.006203, 22.775272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178303, 40.691380, 22.559813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188229, 41.091194, 22.566904>,  <35.194183, 41.331081, 22.571159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188229, 41.091194, 22.566904>,  <35.178303, 40.691380, 22.559813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188229, 41.091194, 22.566904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125317, 0.020703, -0.991901,
		-0.991806, 0.022394, 0.125772,
		0.024816, 0.999535, 0.017727,
		35.195675, 41.391056, 22.572222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203945, 40.119709, 22.252676>,  <35.178303, 40.691380, 22.559813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203945, 40.119709, 22.252676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550362, 39.967022, 22.123512>,  <35.758213, 39.875412, 22.046015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550362, 39.967022, 22.123512>,  <35.203945, 40.119709, 22.252676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550362, 39.967022, 22.123512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268549, -0.189631, 0.944416,
		-0.421730, -0.904619, -0.061719,
		0.866040, -0.381714, -0.322907,
		35.810173, 39.852509, 22.026640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318111, 39.426075, 22.567112>,  <35.203945, 40.119709, 22.252676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318111, 39.426075, 22.567112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696491, 39.522606, 22.480452>,  <35.923519, 39.580524, 22.428455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696491, 39.522606, 22.480452>,  <35.318111, 39.426075, 22.567112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696491, 39.522606, 22.480452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280638, -0.274317, 0.919779,
		0.162535, -0.930867, -0.327215,
		0.945952, 0.241325, -0.216650,
		35.980278, 39.595005, 22.415457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733036, 38.825687, 22.649038>,  <35.318111, 39.426075, 22.567112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733036, 38.825687, 22.649038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988853, 39.128922, 22.700083>,  <36.142345, 39.310863, 22.730709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988853, 39.128922, 22.700083>,  <35.733036, 38.825687, 22.649038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988853, 39.128922, 22.700083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418694, -0.482705, 0.769215,
		0.644732, -0.438516, -0.626118,
		0.639544, 0.758089, 0.127611,
		36.180717, 39.356350, 22.738365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372715, 38.518471, 22.837683>,  <35.733036, 38.825687, 22.649038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372715, 38.518471, 22.837683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429676, 38.894867, 22.960487>,  <36.463852, 39.120705, 23.034170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429676, 38.894867, 22.960487>,  <36.372715, 38.518471, 22.837683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429676, 38.894867, 22.960487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560919, -0.332276, 0.758263,
		0.815532, 0.064230, -0.575137,
		0.142401, 0.940993, 0.307010,
		36.472397, 39.177166, 23.052589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042271, 38.568050, 22.951313>,  <36.372715, 38.518471, 22.837683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042271, 38.568050, 22.951313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940125, 38.893047, 23.160942>,  <36.878838, 39.088043, 23.286720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940125, 38.893047, 23.160942>,  <37.042271, 38.568050, 22.951313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940125, 38.893047, 23.160942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356976, -0.424513, 0.832080,
		0.898530, 0.399565, -0.181633,
		-0.255364, 0.812488, 0.524073,
		36.863514, 39.136795, 23.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542873, 38.736862, 23.428856>,  <37.042271, 38.568050, 22.951313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542873, 38.736862, 23.428856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260948, 38.958805, 23.605659>,  <37.091793, 39.091972, 23.711742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260948, 38.958805, 23.605659>,  <37.542873, 38.736862, 23.428856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260948, 38.958805, 23.605659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304086, -0.326625, 0.894901,
		0.640918, 0.765143, 0.061483,
		-0.704809, 0.554862, 0.442009,
		37.049507, 39.125263, 23.738262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850735, 39.185108, 23.849833>,  <37.542873, 38.736862, 23.428856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850735, 39.185108, 23.849833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476807, 39.133156, 23.982042>,  <37.252449, 39.101982, 24.061369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476807, 39.133156, 23.982042>,  <37.850735, 39.185108, 23.849833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476807, 39.133156, 23.982042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347082, -0.137155, 0.927752,
		-0.075166, 0.981997, 0.173295,
		-0.934818, -0.129883, 0.330524,
		37.196362, 39.094193, 24.081200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810116, 39.516243, 24.501060>,  <37.850735, 39.185108, 23.849833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810116, 39.516243, 24.501060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476578, 39.295517, 24.506845>,  <37.276455, 39.163082, 24.510317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476578, 39.295517, 24.506845>,  <37.810116, 39.516243, 24.501060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476578, 39.295517, 24.506845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012129, 0.007878, 0.999895,
		-0.551869, 0.833931, 0.000124,
		-0.833843, -0.551813, 0.014462,
		37.226425, 39.129974, 24.511185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393707, 39.826256, 24.938509>,  <37.810116, 39.516243, 24.501060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393707, 39.826256, 24.938509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241219, 39.456478, 24.934921>,  <37.149727, 39.234612, 24.932768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241219, 39.456478, 24.934921>,  <37.393707, 39.826256, 24.938509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241219, 39.456478, 24.934921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229328, 0.085161, 0.969617,
		-0.895589, 0.371695, -0.244465,
		-0.381221, -0.924440, -0.008971,
		37.126854, 39.179146, 24.932230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836540, 39.806370, 25.323084>,  <37.393707, 39.826256, 24.938509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836540, 39.806370, 25.323084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914772, 39.414230, 25.312731>,  <36.961712, 39.178947, 25.306519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914772, 39.414230, 25.312731>,  <36.836540, 39.806370, 25.323084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914772, 39.414230, 25.312731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217382, -0.069072, 0.973639,
		-0.956291, -0.184798, -0.226619,
		0.195580, -0.980346, -0.025881,
		36.973446, 39.120125, 25.304966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399754, 39.593391, 25.852949>,  <36.836540, 39.806370, 25.323084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399754, 39.593391, 25.852949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658028, 39.296272, 25.782135>,  <36.812992, 39.118000, 25.739647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658028, 39.296272, 25.782135>,  <36.399754, 39.593391, 25.852949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658028, 39.296272, 25.782135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145103, -0.346970, 0.926584,
		-0.749691, -0.572592, -0.331815,
		0.645684, -0.742799, -0.177036,
		36.851734, 39.073433, 25.729025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251823, 38.949558, 26.102472>,  <36.399754, 39.593391, 25.852949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251823, 38.949558, 26.102472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639427, 38.853954, 26.077536>,  <36.871990, 38.796593, 26.062574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639427, 38.853954, 26.077536>,  <36.251823, 38.949558, 26.102472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639427, 38.853954, 26.077536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084592, -0.558239, 0.825356,
		-0.232069, -0.794509, -0.561160,
		0.969014, -0.239009, -0.062341,
		36.930130, 38.782253, 26.058834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263702, 38.303368, 26.260180>,  <36.251823, 38.949558, 26.102472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263702, 38.303368, 26.260180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636345, 38.439644, 26.310829>,  <36.859932, 38.521408, 26.341219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636345, 38.439644, 26.310829>,  <36.263702, 38.303368, 26.260180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636345, 38.439644, 26.310829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001476, -0.344840, 0.938660,
		0.363459, -0.874651, -0.320753,
		0.931609, 0.340691, 0.126626,
		36.915829, 38.541851, 26.348818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666706, 37.735886, 26.456720>,  <36.263702, 38.303368, 26.260180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666706, 37.735886, 26.456720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851864, 38.060257, 26.599895>,  <36.962959, 38.254879, 26.685801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851864, 38.060257, 26.599895>,  <36.666706, 37.735886, 26.456720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851864, 38.060257, 26.599895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015389, -0.396393, 0.917952,
		0.886279, -0.430424, -0.171009,
		0.462895, 0.810930, 0.357939,
		36.990734, 38.303535, 26.707277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022552, 37.445759, 26.944145>,  <36.666706, 37.735886, 26.456720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022552, 37.445759, 26.944145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012104, 37.835503, 27.033543>,  <37.005836, 38.069347, 27.087181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012104, 37.835503, 27.033543>,  <37.022552, 37.445759, 26.944145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012104, 37.835503, 27.033543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071764, -0.224820, 0.971754,
		0.997080, 0.009344, 0.075796,
		-0.026121, 0.974356, 0.223493,
		37.004269, 38.127808, 27.100590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453907, 37.469604, 27.476763>,  <37.022552, 37.445759, 26.944145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453907, 37.469604, 27.476763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250019, 37.811344, 27.517321>,  <37.127686, 38.016388, 27.541655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250019, 37.811344, 27.517321>,  <37.453907, 37.469604, 27.476763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250019, 37.811344, 27.517321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073645, -0.074091, 0.994529,
		0.857184, 0.514396, -0.025153,
		-0.509718, 0.854346, 0.101393,
		37.097103, 38.067650, 27.547739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871803, 37.906837, 27.895279>,  <37.453907, 37.469604, 27.476763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871803, 37.906837, 27.895279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503994, 38.057278, 27.940916>,  <37.283306, 38.147541, 27.968298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503994, 38.057278, 27.940916>,  <37.871803, 37.906837, 27.895279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503994, 38.057278, 27.940916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055872, -0.162254, 0.985166,
		0.389035, 0.912261, 0.128184,
		-0.919527, 0.376102, 0.114092,
		37.228134, 38.170109, 27.975143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972149, 38.363007, 28.451717>,  <37.871803, 37.906837, 27.895279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972149, 38.363007, 28.451717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573128, 38.340263, 28.435471>,  <37.333714, 38.326618, 28.425722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573128, 38.340263, 28.435471>,  <37.972149, 38.363007, 28.451717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573128, 38.340263, 28.435471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036044, -0.079236, 0.996204,
		-0.059860, 0.995233, 0.076993,
		-0.997556, -0.056858, -0.040615,
		37.273861, 38.323208, 28.423286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724972, 38.951336, 28.790783>,  <37.972149, 38.363007, 28.451717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724972, 38.951336, 28.790783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452595, 38.659546, 28.816673>,  <37.289169, 38.484474, 28.832207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452595, 38.659546, 28.816673>,  <37.724972, 38.951336, 28.790783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452595, 38.659546, 28.816673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048620, 0.133217, 0.989893,
		-0.730723, 0.670912, -0.126180,
		-0.680941, -0.729473, 0.064725,
		37.248314, 38.440704, 28.836090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285690, 39.190243, 29.325464>,  <37.724972, 38.951336, 28.790783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285690, 39.190243, 29.325464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181282, 38.804424, 29.309824>,  <37.118637, 38.572933, 29.300440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181282, 38.804424, 29.309824>,  <37.285690, 39.190243, 29.325464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181282, 38.804424, 29.309824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201493, -0.094050, 0.974964,
		-0.944071, 0.246606, 0.218897,
		-0.261019, -0.964541, -0.039100,
		37.102978, 38.515060, 29.298094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675835, 39.037853, 29.898396>,  <37.285690, 39.190243, 29.325464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675835, 39.037853, 29.898396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860989, 38.695599, 29.805767>,  <36.972080, 38.490246, 29.750189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860989, 38.695599, 29.805767>,  <36.675835, 39.037853, 29.898396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860989, 38.695599, 29.805767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248621, -0.125440, 0.960444,
		-0.850840, -0.502145, 0.154666,
		0.462881, -0.855637, -0.231573,
		36.999851, 38.438908, 29.736296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440548, 38.665642, 30.378620>,  <36.675835, 39.037853, 29.898396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440548, 38.665642, 30.378620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761982, 38.475975, 30.234722>,  <36.954842, 38.362175, 30.148382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761982, 38.475975, 30.234722>,  <36.440548, 38.665642, 30.378620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761982, 38.475975, 30.234722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345120, -0.121227, 0.930697,
		-0.484918, -0.872049, 0.066229,
		0.803584, -0.474168, -0.359746,
		37.003056, 38.333725, 30.126799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438900, 38.052971, 30.936781>,  <36.440548, 38.665642, 30.378620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438900, 38.052971, 30.936781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785755, 38.099834, 30.743143>,  <36.993866, 38.127953, 30.626961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785755, 38.099834, 30.743143>,  <36.438900, 38.052971, 30.936781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785755, 38.099834, 30.743143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490548, -0.032584, 0.870805,
		0.086254, -0.992578, -0.085730,
		0.867135, 0.117165, -0.484097,
		37.045895, 38.134983, 30.597914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857082, 37.376431, 31.038086>,  <36.438900, 38.052971, 30.936781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857082, 37.376431, 31.038086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119251, 37.664791, 30.948000>,  <37.276554, 37.837807, 30.893950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119251, 37.664791, 30.948000>,  <36.857082, 37.376431, 31.038086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119251, 37.664791, 30.948000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531144, -0.227964, 0.816038,
		0.536945, -0.654469, -0.532316,
		0.655421, 0.720904, -0.225213,
		37.315876, 37.881062, 30.880436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483959, 37.146019, 31.082645>,  <36.857082, 37.376431, 31.038086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483959, 37.146019, 31.082645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564304, 37.536629, 31.113750>,  <37.612511, 37.770996, 31.132414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564304, 37.536629, 31.113750>,  <37.483959, 37.146019, 31.082645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564304, 37.536629, 31.113750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473188, -0.166222, 0.865138,
		0.857758, -0.136975, -0.495469,
		0.200860, 0.976529, 0.077763,
		37.624561, 37.829586, 31.137079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070396, 37.096794, 31.534552>,  <37.483959, 37.146019, 31.082645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070396, 37.096794, 31.534552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004253, 37.491245, 31.528898>,  <37.964565, 37.727917, 31.525507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004253, 37.491245, 31.528898>,  <38.070396, 37.096794, 31.534552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004253, 37.491245, 31.528898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342980, 0.070936, 0.936661,
		0.924673, 0.150040, -0.349953,
		-0.165360, 0.986132, -0.014132,
		37.954647, 37.787086, 31.524658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596966, 37.442341, 31.482357>,  <38.070396, 37.096794, 31.534552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596966, 37.442341, 31.482357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376034, 37.715603, 31.673452>,  <38.243473, 37.879559, 31.788109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376034, 37.715603, 31.673452>,  <38.596966, 37.442341, 31.482357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376034, 37.715603, 31.673452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624561, -0.040456, 0.779928,
		0.552137, 0.729154, -0.404325,
		-0.552330, 0.683152, 0.477738,
		38.210335, 37.920547, 31.816774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043243, 37.964943, 31.696806>,  <38.596966, 37.442341, 31.482357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043243, 37.964943, 31.696806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731564, 38.014347, 31.942598>,  <38.544556, 38.043991, 32.090073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731564, 38.014347, 31.942598>,  <39.043243, 37.964943, 31.696806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731564, 38.014347, 31.942598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621294, 0.022862, 0.783244,
		0.082692, 0.992080, -0.094552,
		-0.779202, 0.123512, 0.614483,
		38.497803, 38.051399, 32.126942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088741, 38.637066, 32.286674>,  <39.043243, 37.964943, 31.696806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088741, 38.637066, 32.286674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811359, 38.389019, 32.433414>,  <38.644932, 38.240192, 32.521458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811359, 38.389019, 32.433414>,  <39.088741, 38.637066, 32.286674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811359, 38.389019, 32.433414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428329, 0.054598, 0.901972,
		-0.579357, 0.782608, 0.227753,
		-0.693455, -0.620117, 0.366845,
		38.603321, 38.202984, 32.543468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068188, 38.785671, 32.946297>,  <39.088741, 38.637066, 32.286674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068188, 38.785671, 32.946297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883297, 38.431412, 32.964081>,  <38.772362, 38.218857, 32.974751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883297, 38.431412, 32.964081>,  <39.068188, 38.785671, 32.946297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883297, 38.431412, 32.964081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473977, -0.204372, 0.856491,
		-0.749463, 0.416964, 0.514243,
		-0.462223, -0.885648, 0.044462,
		38.744629, 38.165718, 32.977421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880936, 38.773563, 33.648121>,  <39.068188, 38.785671, 32.946297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880936, 38.773563, 33.648121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808533, 38.397831, 33.531582>,  <38.765091, 38.172390, 33.461658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808533, 38.397831, 33.531582>,  <38.880936, 38.773563, 33.648121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808533, 38.397831, 33.531582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338162, -0.337624, 0.878440,
		-0.923516, 0.060485, 0.378762,
		-0.181012, -0.939336, -0.291347,
		38.754230, 38.116032, 33.444180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383514, 38.419048, 34.110687>,  <38.880936, 38.773563, 33.648121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383514, 38.419048, 34.110687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603439, 38.141052, 33.925346>,  <38.735394, 37.974255, 33.814144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603439, 38.141052, 33.925346>,  <38.383514, 38.419048, 34.110687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603439, 38.141052, 33.925346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222609, -0.412737, 0.883229,
		-0.805077, -0.588758, -0.072218,
		0.549815, -0.694991, -0.463348,
		38.768383, 37.932556, 33.786343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217827, 37.686340, 34.434990>,  <38.383514, 38.419048, 34.110687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217827, 37.686340, 34.434990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586952, 37.689610, 34.280922>,  <38.808426, 37.691570, 34.188480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586952, 37.689610, 34.280922>,  <38.217827, 37.686340, 34.434990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586952, 37.689610, 34.280922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344493, -0.465081, 0.815490,
		-0.172469, -0.885230, -0.431997,
		0.922810, 0.008173, -0.385168,
		38.863796, 37.692062, 34.165371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459587, 37.005596, 34.616009>,  <38.217827, 37.686340, 34.434990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459587, 37.005596, 34.616009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802250, 37.174744, 34.497807>,  <39.007847, 37.276230, 34.426884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802250, 37.174744, 34.497807>,  <38.459587, 37.005596, 34.616009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802250, 37.174744, 34.497807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508115, -0.592570, 0.625044,
		0.089201, -0.685600, -0.722493,
		0.856658, 0.422864, -0.295505,
		39.059246, 37.301601, 34.409157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846138, 36.514561, 34.452908>,  <38.459587, 37.005596, 34.616009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846138, 36.514561, 34.452908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080811, 36.821709, 34.555801>,  <39.221615, 37.005997, 34.617538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080811, 36.821709, 34.555801>,  <38.846138, 36.514561, 34.452908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080811, 36.821709, 34.555801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520297, -0.600830, 0.606872,
		0.620557, -0.222203, -0.752020,
		0.586685, 0.767873, 0.257238,
		39.256817, 37.052071, 34.632973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489037, 36.365192, 34.224594>,  <38.846138, 36.514561, 34.452908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489037, 36.365192, 34.224594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566803, 36.648849, 34.495686>,  <39.613461, 36.819042, 34.658340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566803, 36.648849, 34.495686>,  <39.489037, 36.365192, 34.224594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566803, 36.648849, 34.495686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617093, -0.625484, 0.477457,
		0.762496, 0.325400, -0.559209,
		0.194412, 0.709143, 0.677732,
		39.625126, 36.861591, 34.699005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927174, 36.072659, 34.539303>,  <39.489037, 36.365192, 34.224594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927174, 36.072659, 34.539303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914539, 36.402027, 34.765923>,  <39.906960, 36.599648, 34.901894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914539, 36.402027, 34.765923>,  <39.927174, 36.072659, 34.539303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914539, 36.402027, 34.765923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635769, -0.420827, 0.647072,
		0.771232, 0.380635, -0.510213,
		-0.031587, 0.823421, 0.566551,
		39.905064, 36.649052, 34.935886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687469, 36.337292, 34.677074>,  <39.927174, 36.072659, 34.539303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687469, 36.337292, 34.677074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473244, 36.493748, 34.976456>,  <40.344707, 36.587620, 35.156082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473244, 36.493748, 34.976456>,  <40.687469, 36.337292, 34.677074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473244, 36.493748, 34.976456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635409, -0.397137, 0.662222,
		0.556259, 0.830236, -0.035842,
		-0.535566, 0.391141, 0.748450,
		40.312572, 36.611092, 35.200993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089489, 36.779457, 35.147835>,  <40.687469, 36.337292, 34.677074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089489, 36.779457, 35.147835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782646, 36.654366, 35.371891>,  <40.598541, 36.579311, 35.506325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782646, 36.654366, 35.371891>,  <41.089489, 36.779457, 35.147835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782646, 36.654366, 35.371891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615386, -0.112017, 0.780226,
		-0.181251, 0.943215, 0.278375,
		-0.767104, -0.312725, 0.560139,
		40.552517, 36.560547, 35.539932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243210, 37.097889, 35.821236>,  <41.089489, 36.779457, 35.147835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243210, 37.097889, 35.821236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993633, 36.788876, 35.868385>,  <40.843887, 36.603466, 35.896675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993633, 36.788876, 35.868385>,  <41.243210, 37.097889, 35.821236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993633, 36.788876, 35.868385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477146, -0.257144, 0.840362,
		-0.618897, 0.580577, 0.529053,
		-0.623938, -0.772533, 0.117874,
		40.806454, 36.557117, 35.903748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560772, 36.903481, 36.467716>,  <41.243210, 37.097889, 35.821236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560772, 36.903481, 36.467716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851559, 36.675869, 36.621452>,  <42.026031, 36.539303, 36.713696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851559, 36.675869, 36.621452>,  <41.560772, 36.903481, 36.467716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851559, 36.675869, 36.621452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398966, 0.105527, 0.910873,
		-0.558875, -0.815516, -0.150310,
		0.726970, -0.569033, 0.384340,
		42.069649, 36.505157, 36.736755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176117, 36.506031, 36.912926>,  <41.560772, 36.903481, 36.467716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176117, 36.506031, 36.912926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551846, 36.444759, 37.035702>,  <41.777283, 36.407997, 37.109367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551846, 36.444759, 37.035702>,  <41.176117, 36.506031, 36.912926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551846, 36.444759, 37.035702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311337, -0.004972, 0.950287,
		-0.144038, -0.988186, -0.052361,
		0.939320, -0.153179, 0.306942,
		41.833641, 36.398808, 37.127785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197014, 35.877941, 37.268490>,  <41.176117, 36.506031, 36.912926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197014, 35.877941, 37.268490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503010, 36.091404, 37.412712>,  <41.686607, 36.219482, 37.499245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503010, 36.091404, 37.412712>,  <41.197014, 35.877941, 37.268490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503010, 36.091404, 37.412712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421576, -0.008311, 0.906755,
		0.486893, -0.845660, 0.218619,
		0.764990, 0.533657, 0.360557,
		41.732506, 36.251499, 37.520878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293854, 35.588417, 37.916775>,  <41.197014, 35.877941, 37.268490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293854, 35.588417, 37.916775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514584, 35.921902, 37.924923>,  <41.647022, 36.121994, 37.929813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514584, 35.921902, 37.924923>,  <41.293854, 35.588417, 37.916775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514584, 35.921902, 37.924923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077069, 0.026656, 0.996669,
		0.830394, -0.551552, 0.078963,
		0.551820, 0.833714, 0.020373,
		41.680130, 36.172016, 37.931034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683842, 35.463959, 38.421730>,  <41.293854, 35.588417, 37.916775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683842, 35.463959, 38.421730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678413, 35.863613, 38.406006>,  <41.675156, 36.103405, 38.396572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678413, 35.863613, 38.406006>,  <41.683842, 35.463959, 38.421730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678413, 35.863613, 38.406006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212169, 0.035543, 0.976586,
		0.977139, 0.021595, 0.211503,
		-0.013572, 0.999135, -0.039312,
		41.674343, 36.163353, 38.394211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035431, 35.692265, 38.972881>,  <41.683842, 35.463959, 38.421730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035431, 35.692265, 38.972881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811218, 36.008877, 38.875488>,  <41.676689, 36.198845, 38.817051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811218, 36.008877, 38.875488>,  <42.035431, 35.692265, 38.972881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811218, 36.008877, 38.875488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241415, 0.125067, 0.962329,
		0.792165, 0.598196, 0.120983,
		-0.560531, 0.791530, -0.243487,
		41.643059, 36.246334, 38.802441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180222, 36.159817, 39.390709>,  <42.035431, 35.692265, 38.972881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180222, 36.159817, 39.390709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818474, 36.258953, 39.251743>,  <41.601425, 36.318436, 39.168365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818474, 36.258953, 39.251743>,  <42.180222, 36.159817, 39.390709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818474, 36.258953, 39.251743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282033, 0.263853, 0.922409,
		0.320275, 0.932178, -0.168722,
		-0.904368, 0.247839, -0.347411,
		41.547165, 36.333305, 39.147522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008381, 36.755432, 39.728275>,  <42.180222, 36.159817, 39.390709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008381, 36.755432, 39.728275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639950, 36.675362, 39.594677>,  <41.418892, 36.627319, 39.514519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639950, 36.675362, 39.594677>,  <42.008381, 36.755432, 39.728275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639950, 36.675362, 39.594677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372831, 0.205926, 0.904760,
		-0.112333, 0.957875, -0.264305,
		-0.921075, -0.200176, -0.333993,
		41.363628, 36.615311, 39.494480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512436, 37.268562, 39.864040>,  <42.008381, 36.755432, 39.728275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512436, 37.268562, 39.864040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311325, 36.926304, 39.814911>,  <41.190659, 36.720947, 39.785435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311325, 36.926304, 39.814911>,  <41.512436, 37.268562, 39.864040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311325, 36.926304, 39.814911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591386, 0.236847, 0.770822,
		-0.630462, 0.460184, -0.625099,
		-0.502773, -0.855649, -0.122824,
		41.160492, 36.669609, 39.778065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753799, 37.230846, 39.650684>,  <41.512436, 37.268562, 39.864040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753799, 37.230846, 39.650684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849289, 36.934887, 39.902260>,  <40.906582, 36.757313, 40.053204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849289, 36.934887, 39.902260>,  <40.753799, 37.230846, 39.650684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849289, 36.934887, 39.902260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603343, 0.394476, 0.693084,
		-0.760913, -0.544919, -0.352243,
		0.238723, -0.739900, 0.628935,
		40.920906, 36.712917, 40.090939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203533, 37.231522, 40.195770>,  <40.753799, 37.230846, 39.650684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203533, 37.231522, 40.195770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419601, 36.917419, 40.316830>,  <40.549240, 36.728958, 40.389465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419601, 36.917419, 40.316830>,  <40.203533, 37.231522, 40.195770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419601, 36.917419, 40.316830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539661, -0.047261, 0.840554,
		-0.645745, -0.617368, -0.449300,
		0.540166, -0.785253, 0.302651,
		40.581650, 36.681843, 40.407623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771305, 36.901707, 40.547039>,  <40.203533, 37.231522, 40.195770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771305, 36.901707, 40.547039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107864, 36.704071, 40.634602>,  <40.309799, 36.585487, 40.687138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107864, 36.704071, 40.634602>,  <39.771305, 36.901707, 40.547039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107864, 36.704071, 40.634602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306040, -0.101793, 0.946561,
		-0.445404, -0.863431, -0.236860,
		0.841400, -0.494091, 0.218905,
		40.360283, 36.555843, 40.700272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575439, 36.386143, 41.082912>,  <39.771305, 36.901707, 40.547039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575439, 36.386143, 41.082912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973515, 36.416466, 41.107761>,  <40.212360, 36.434658, 41.122669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973515, 36.416466, 41.107761>,  <39.575439, 36.386143, 41.082912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973515, 36.416466, 41.107761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071025, 0.121037, 0.990104,
		0.067535, -0.989749, 0.125838,
		0.995186, 0.075805, 0.062123,
		40.272072, 36.439209, 41.126400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787186, 35.841160, 41.487469>,  <39.575439, 36.386143, 41.082912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787186, 35.841160, 41.487469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069229, 36.123039, 41.519009>,  <40.238457, 36.292168, 41.537933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069229, 36.123039, 41.519009>,  <39.787186, 35.841160, 41.487469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069229, 36.123039, 41.519009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123691, 0.012741, 0.992239,
		0.698226, -0.709391, 0.096149,
		0.705110, 0.704700, 0.078849,
		40.280762, 36.334450, 41.542664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285065, 35.606583, 42.062580>,  <39.787186, 35.841160, 41.487469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285065, 35.606583, 42.062580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329987, 36.002388, 42.026253>,  <40.356941, 36.239872, 42.004456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329987, 36.002388, 42.026253>,  <40.285065, 35.606583, 42.062580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329987, 36.002388, 42.026253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001046, 0.091280, 0.995825,
		0.993673, -0.111934, 0.009216,
		0.112308, 0.989515, -0.090820,
		40.363678, 36.299244, 41.999008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833549, 35.936626, 42.576481>,  <40.285065, 35.606583, 42.062580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833549, 35.936626, 42.576481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569756, 36.216408, 42.466324>,  <40.411480, 36.384277, 42.400230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569756, 36.216408, 42.466324>,  <40.833549, 35.936626, 42.576481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569756, 36.216408, 42.466324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024260, 0.346351, 0.937791,
		0.751325, 0.625142, -0.211445,
		-0.659487, 0.699456, -0.275388,
		40.371910, 36.426243, 42.383709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125645, 36.585915, 42.747162>,  <40.833549, 35.936626, 42.576481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125645, 36.585915, 42.747162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725700, 36.589954, 42.752369>,  <40.485733, 36.592381, 42.755493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725700, 36.589954, 42.752369>,  <41.125645, 36.585915, 42.747162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725700, 36.589954, 42.752369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015097, 0.244651, 0.969494,
		0.006608, 0.969559, -0.244770,
		-0.999864, 0.010101, 0.013021,
		40.425739, 36.592983, 42.756275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930267, 37.188137, 43.140522>,  <41.125645, 36.585915, 42.747162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930267, 37.188137, 43.140522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605450, 36.954773, 43.134689>,  <40.410557, 36.814754, 43.131187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605450, 36.954773, 43.134689>,  <40.930267, 37.188137, 43.140522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605450, 36.954773, 43.134689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183943, 0.232152, 0.955129,
		-0.553846, 0.778292, -0.295832,
		-0.812047, -0.583410, -0.014585,
		40.361835, 36.779751, 43.130314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389950, 37.604568, 43.523174>,  <40.930267, 37.188137, 43.140522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389950, 37.604568, 43.523174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278740, 37.220390, 43.529362>,  <40.212013, 36.989883, 43.533073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278740, 37.220390, 43.529362>,  <40.389950, 37.604568, 43.523174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278740, 37.220390, 43.529362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345342, 0.114970, 0.931408,
		-0.896349, 0.253612, -0.363648,
		-0.278025, -0.960450, 0.015470,
		40.195332, 36.932255, 43.534004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699100, 37.578785, 43.858826>,  <40.389950, 37.604568, 43.523174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699100, 37.578785, 43.858826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865520, 37.215443, 43.875774>,  <39.965374, 36.997437, 43.885944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865520, 37.215443, 43.875774>,  <39.699100, 37.578785, 43.858826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865520, 37.215443, 43.875774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295214, -0.090847, 0.951102,
		-0.860088, -0.408216, -0.305956,
		0.416050, -0.908354, 0.042375,
		39.990337, 36.942936, 43.888485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467731, 37.856335, 44.627247>,  <39.699100, 37.578785, 43.858826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467731, 37.856335, 44.627247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807613, 38.053295, 44.702652>,  <40.011543, 38.171471, 44.747894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807613, 38.053295, 44.702652>,  <39.467731, 37.856335, 44.627247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807613, 38.053295, 44.702652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037214, -0.412644, 0.910132,
		0.525941, -0.766329, -0.368951,
		0.849706, 0.492406, 0.188509,
		40.062527, 38.201015, 44.759205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055584, 37.450268, 44.868500>,  <39.467731, 37.856335, 44.627247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055584, 37.450268, 44.868500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151157, 37.798878, 45.039780>,  <40.208500, 38.008045, 45.142548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151157, 37.798878, 45.039780>,  <40.055584, 37.450268, 44.868500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151157, 37.798878, 45.039780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145216, -0.468079, 0.871673,
		0.960117, -0.146087, -0.238397,
		0.238929, 0.871528, 0.428197,
		40.222836, 38.060337, 45.168240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693714, 37.334213, 45.369202>,  <40.055584, 37.450268, 44.868500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693714, 37.334213, 45.369202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466793, 37.642693, 45.484726>,  <40.330639, 37.827782, 45.554043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466793, 37.642693, 45.484726>,  <40.693714, 37.334213, 45.369202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466793, 37.642693, 45.484726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088127, -0.291844, 0.952397,
		0.818779, 0.565751, 0.097601,
		-0.567304, 0.771202, 0.288814,
		40.296600, 37.874054, 45.571369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464703, 36.855370, 44.791927>,  <40.693714, 37.334213, 45.369202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464703, 36.855370, 44.791927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073261, 36.830555, 44.713455>,  <39.838398, 36.815666, 44.666374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073261, 36.830555, 44.713455>,  <40.464703, 36.855370, 44.791927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073261, 36.830555, 44.713455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205750, -0.299311, -0.931708,
		-0.000922, -0.952137, 0.305670,
		-0.978605, -0.062033, -0.196178,
		39.779678, 36.811947, 44.654602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427608, 36.197174, 44.528305>,  <40.464703, 36.855370, 44.791927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427608, 36.197174, 44.528305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096390, 36.396114, 44.424786>,  <39.897659, 36.515480, 44.362675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096390, 36.396114, 44.424786>,  <40.427608, 36.197174, 44.528305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096390, 36.396114, 44.424786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030809, -0.420534, -0.906753,
		-0.559810, -0.758809, 0.332900,
		-0.828048, 0.497353, -0.258798,
		39.847977, 36.545319, 44.347145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886169, 35.861073, 44.184353>,  <40.427608, 36.197174, 44.528305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886169, 35.861073, 44.184353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845188, 36.227806, 44.029991>,  <39.820599, 36.447845, 43.937374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845188, 36.227806, 44.029991>,  <39.886169, 35.861073, 44.184353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845188, 36.227806, 44.029991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014924, -0.386482, -0.922176,
		-0.994625, -0.100242, 0.025915,
		-0.102457, 0.916833, -0.385901,
		39.814449, 36.502857, 43.914223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577431, 35.764496, 43.520538>,  <39.886169, 35.861073, 44.184353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577431, 35.764496, 43.520538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737976, 36.130707, 43.509907>,  <39.834305, 36.350433, 43.503529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737976, 36.130707, 43.509907>,  <39.577431, 35.764496, 43.520538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737976, 36.130707, 43.509907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129925, -0.085634, -0.987819,
		-0.906656, 0.393024, -0.153321,
		0.401366, 0.915532, -0.026577,
		39.858387, 36.405365, 43.501934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214344, 36.158699, 43.016724>,  <39.577431, 35.764496, 43.520538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214344, 36.158699, 43.016724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553379, 36.369473, 43.041794>,  <39.756802, 36.495937, 43.056835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553379, 36.369473, 43.041794>,  <39.214344, 36.158699, 43.016724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553379, 36.369473, 43.041794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025896, 0.076901, -0.996702,
		-0.530017, 0.846419, 0.051536,
		0.847591, 0.526935, 0.062678,
		39.807655, 36.527554, 43.060596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155453, 36.692707, 42.537312>,  <39.214344, 36.158699, 43.016724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155453, 36.692707, 42.537312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544426, 36.624763, 42.601204>,  <39.777809, 36.583996, 42.639542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544426, 36.624763, 42.601204>,  <39.155453, 36.692707, 42.537312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544426, 36.624763, 42.601204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178697, 0.102847, -0.978514,
		0.149782, 0.980087, 0.130365,
		0.972437, -0.169859, 0.159734,
		39.836159, 36.573807, 42.649124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360878, 37.221565, 42.248890>,  <39.155453, 36.692707, 42.537312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360878, 37.221565, 42.248890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662106, 36.960785, 42.284325>,  <39.842842, 36.804317, 42.305584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662106, 36.960785, 42.284325>,  <39.360878, 37.221565, 42.248890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662106, 36.960785, 42.284325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199486, 0.097950, -0.974993,
		0.626975, 0.751904, 0.203819,
		0.753065, -0.651956, 0.088583,
		39.888023, 36.765198, 42.310898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080109, 37.490108, 42.042793>,  <39.360878, 37.221565, 42.248890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080109, 37.490108, 42.042793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028198, 37.097855, 41.984123>,  <39.997051, 36.862503, 41.948921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028198, 37.097855, 41.984123>,  <40.080109, 37.490108, 42.042793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028198, 37.097855, 41.984123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160422, 0.125216, -0.979074,
		0.978480, -0.150591, 0.141066,
		-0.129776, -0.980634, -0.146679,
		39.989265, 36.803665, 41.940121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608189, 37.372791, 41.511681>,  <40.080109, 37.490108, 42.042793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608189, 37.372791, 41.511681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338802, 37.077721, 41.530781>,  <40.177170, 36.900681, 41.542240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338802, 37.077721, 41.530781>,  <40.608189, 37.372791, 41.511681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338802, 37.077721, 41.530781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133031, -0.184487, -0.973790,
		0.727150, -0.649461, 0.222379,
		-0.673465, -0.737675, 0.047751,
		40.136765, 36.856419, 41.545105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289928, 37.229362, 41.501221>,  <40.608189, 37.372791, 41.511681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289928, 37.229362, 41.501221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018501, 36.936108, 41.519352>,  <40.855644, 36.760155, 41.530231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018501, 36.936108, 41.519352>,  <41.289928, 37.229362, 41.501221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018501, 36.936108, 41.519352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138823, -0.188594, -0.972194,
		0.721302, -0.653405, 0.229750,
		-0.678565, -0.733140, 0.045326,
		40.814930, 36.716167, 41.532951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543369, 36.541565, 41.454082>,  <41.289928, 37.229362, 41.501221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543369, 36.541565, 41.454082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164158, 36.487247, 41.338985>,  <40.936630, 36.454655, 41.269928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164158, 36.487247, 41.338985>,  <41.543369, 36.541565, 41.454082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164158, 36.487247, 41.338985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315146, -0.276256, -0.907946,
		0.043806, -0.951442, 0.304695,
		-0.948031, -0.135797, -0.287742,
		40.879749, 36.446507, 41.252663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488091, 36.032772, 41.005512>,  <41.543369, 36.541565, 41.454082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488091, 36.032772, 41.005512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109829, 36.153221, 40.956406>,  <40.882874, 36.225491, 40.926941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109829, 36.153221, 40.956406>,  <41.488091, 36.032772, 41.005512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109829, 36.153221, 40.956406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045683, -0.250759, -0.966971,
		-0.321962, -0.920024, 0.223374,
		-0.945650, 0.301124, -0.122764,
		40.826134, 36.243557, 40.919575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222286, 35.522209, 40.594372>,  <41.488091, 36.032772, 41.005512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222286, 35.522209, 40.594372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999920, 35.853630, 40.567699>,  <40.866501, 36.052483, 40.551697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999920, 35.853630, 40.567699>,  <41.222286, 35.522209, 40.594372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999920, 35.853630, 40.567699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011246, -0.072717, -0.997289,
		-0.831160, -0.555163, 0.031107,
		-0.555920, 0.828557, -0.066683,
		40.833145, 36.102196, 40.547695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718121, 35.352577, 40.189999>,  <41.222286, 35.522209, 40.594372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718121, 35.352577, 40.189999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815479, 35.740406, 40.179588>,  <40.873894, 35.973103, 40.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815479, 35.740406, 40.179588>,  <40.718121, 35.352577, 40.189999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815479, 35.740406, 40.179588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015210, -0.030646, -0.999414,
		-0.969806, 0.242863, -0.022206,
		0.243401, 0.969576, -0.026027,
		40.888500, 36.031281, 40.171780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298134, 35.846939, 39.821682>,  <40.718121, 35.352577, 40.189999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298134, 35.846939, 39.821682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675182, 35.975452, 39.785366>,  <40.901413, 36.052559, 39.763577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675182, 35.975452, 39.785366>,  <40.298134, 35.846939, 39.821682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675182, 35.975452, 39.785366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032798, -0.181503, -0.982843,
		-0.332249, 0.929427, -0.160551,
		0.942621, 0.321283, -0.090787,
		40.957970, 36.071838, 39.758129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264839, 36.116405, 39.012520>,  <40.298134, 35.846939, 39.821682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264839, 36.116405, 39.012520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603664, 36.268379, 39.161186>,  <40.806961, 36.359562, 39.250385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603664, 36.268379, 39.161186>,  <40.264839, 36.116405, 39.012520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603664, 36.268379, 39.161186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341075, 0.147721, -0.928357,
		-0.407616, 0.913143, -0.004456,
		0.847064, 0.379933, 0.371664,
		40.857784, 36.382359, 39.272686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432137, 36.757034, 38.677471>,  <40.264839, 36.116405, 39.012520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432137, 36.757034, 38.677471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778648, 36.621552, 38.824356>,  <40.986553, 36.540264, 38.912487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778648, 36.621552, 38.824356>,  <40.432137, 36.757034, 38.677471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778648, 36.621552, 38.824356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441050, 0.173344, -0.880583,
		0.234604, 0.924787, 0.299549,
		0.866277, -0.338705, 0.367210,
		41.038532, 36.519939, 38.934521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923954, 37.230045, 38.368896>,  <40.432137, 36.757034, 38.677471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923954, 37.230045, 38.368896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111053, 36.902447, 38.501831>,  <41.223312, 36.705887, 38.581593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111053, 36.902447, 38.501831>,  <40.923954, 37.230045, 38.368896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111053, 36.902447, 38.501831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581258, 0.001778, -0.813717,
		0.665843, 0.573791, 0.476883,
		0.467751, -0.819000, 0.332337,
		41.251377, 36.656746, 38.601532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582924, 37.419025, 38.264549>,  <40.923954, 37.230045, 38.368896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582924, 37.419025, 38.264549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592037, 37.020557, 38.298321>,  <41.597507, 36.781475, 38.318584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592037, 37.020557, 38.298321>,  <41.582924, 37.419025, 38.264549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592037, 37.020557, 38.298321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587265, -0.055004, -0.807524,
		0.809074, 0.067980, 0.583761,
		0.022787, -0.996169, 0.084424,
		41.598873, 36.721706, 38.323647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120029, 37.307594, 37.815735>,  <41.582924, 37.419025, 38.264549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120029, 37.307594, 37.815735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001186, 36.938374, 37.913471>,  <41.929882, 36.716839, 37.972111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001186, 36.938374, 37.913471>,  <42.120029, 37.307594, 37.815735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001186, 36.938374, 37.913471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371384, -0.347455, -0.861016,
		0.879661, -0.165067, 0.446038,
		-0.297103, -0.923054, 0.244339,
		41.912056, 36.661457, 37.986774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766964, 36.970695, 37.721447>,  <42.120029, 37.307594, 37.815735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766964, 36.970695, 37.721447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439434, 36.743759, 37.686459>,  <42.242916, 36.607597, 37.665466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439434, 36.743759, 37.686459>,  <42.766964, 36.970695, 37.721447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439434, 36.743759, 37.686459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291117, -0.279075, -0.915078,
		0.494754, -0.774750, 0.393676,
		-0.818822, -0.567344, -0.087469,
		42.193787, 36.573555, 37.660217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986557, 36.285011, 37.621807>,  <42.766964, 36.970695, 37.721447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986557, 36.285011, 37.621807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623116, 36.337280, 37.463131>,  <42.405052, 36.368641, 37.367924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623116, 36.337280, 37.463131>,  <42.986557, 36.285011, 37.621807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623116, 36.337280, 37.463131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315630, -0.407195, -0.857071,
		-0.273521, -0.903946, 0.328737,
		-0.908605, 0.130668, -0.396689,
		42.350533, 36.376480, 37.344124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863724, 35.662067, 37.228153>,  <42.986557, 36.285011, 37.621807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863724, 35.662067, 37.228153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662216, 35.965515, 37.062885>,  <42.541309, 36.147583, 36.963722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662216, 35.965515, 37.062885>,  <42.863724, 35.662067, 37.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662216, 35.965515, 37.062885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296928, -0.297086, -0.907510,
		-0.811201, -0.579861, -0.075591,
		-0.503772, 0.758618, -0.413173,
		42.511086, 36.193100, 36.938934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328037, 35.492455, 36.807472>,  <42.863724, 35.662067, 37.228153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328037, 35.492455, 36.807472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504822, 35.839935, 36.718002>,  <42.610893, 36.048424, 36.664318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504822, 35.839935, 36.718002>,  <42.328037, 35.492455, 36.807472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504822, 35.839935, 36.718002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213123, -0.343898, -0.914501,
		-0.871349, 0.356503, -0.337130,
		0.441961, 0.868700, -0.223677,
		42.637409, 36.100544, 36.650898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004871, 35.786076, 36.132389>,  <42.328037, 35.492455, 36.807472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004871, 35.786076, 36.132389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336594, 35.997250, 36.205647>,  <42.535625, 36.123955, 36.249599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336594, 35.997250, 36.205647>,  <42.004871, 35.786076, 36.132389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336594, 35.997250, 36.205647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382719, -0.297815, -0.874547,
		-0.407162, 0.795357, -0.449029,
		0.829304, 0.527934, 0.183139,
		42.585384, 36.155628, 36.260590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330029, 35.906116, 35.499569>,  <42.004871, 35.786076, 36.132389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330029, 35.906116, 35.499569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627781, 35.915882, 35.766491>,  <42.806435, 35.921741, 35.926643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627781, 35.915882, 35.766491>,  <42.330029, 35.906116, 35.499569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627781, 35.915882, 35.766491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619667, -0.397612, -0.676696,
		0.248810, 0.917229, -0.311102,
		0.744383, 0.024410, 0.667306,
		42.851097, 35.923206, 35.966682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909237, 36.204552, 35.106091>,  <42.330029, 35.906116, 35.499569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909237, 36.204552, 35.106091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980743, 35.953674, 35.409317>,  <43.023647, 35.803146, 35.591255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980743, 35.953674, 35.409317>,  <42.909237, 36.204552, 35.106091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980743, 35.953674, 35.409317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433369, -0.641519, -0.632965,
		0.883308, 0.441677, 0.157125,
		0.178768, -0.627196, 0.758068,
		43.034374, 35.765514, 35.636738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646328, 35.968330, 34.986744>,  <42.909237, 36.204552, 35.106091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646328, 35.968330, 34.986744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373615, 35.712822, 35.129368>,  <43.209988, 35.559517, 35.214943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373615, 35.712822, 35.129368>,  <43.646328, 35.968330, 34.986744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373615, 35.712822, 35.129368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302874, -0.690141, -0.657247,
		0.665911, -0.340107, 0.663995,
		-0.681784, -0.638775, 0.356563,
		43.169079, 35.521191, 35.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842957, 35.338299, 35.314426>,  <43.646328, 35.968330, 34.986744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842957, 35.338299, 35.314426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524548, 35.302166, 35.075031>,  <43.333500, 35.280487, 34.931396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524548, 35.302166, 35.075031>,  <43.842957, 35.338299, 35.314426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524548, 35.302166, 35.075031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435611, -0.772005, -0.462872,
		-0.420220, -0.629164, 0.653886,
		-0.796026, -0.090332, -0.598484,
		43.285740, 35.275066, 34.895485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666676, 34.682236, 35.484558>,  <43.842957, 35.338299, 35.314426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666676, 34.682236, 35.484558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551052, 34.766071, 35.110924>,  <43.481678, 34.816372, 34.886742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551052, 34.766071, 35.110924>,  <43.666676, 34.682236, 35.484558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551052, 34.766071, 35.110924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426736, -0.845223, -0.321706,
		-0.856940, -0.491599, 0.154873,
		-0.289053, 0.209593, -0.934087,
		43.464336, 34.828949, 34.830696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161270, 34.133129, 35.284538>,  <43.666676, 34.682236, 35.484558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161270, 34.133129, 35.284538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380741, 34.293163, 34.990902>,  <43.512424, 34.389183, 34.814720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380741, 34.293163, 34.990902>,  <43.161270, 34.133129, 35.284538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380741, 34.293163, 34.990902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573267, -0.819171, -0.017983,
		-0.608541, -0.410964, -0.678813,
		0.548674, 0.400084, -0.734091,
		43.545341, 34.413189, 34.770676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315586, 33.785858, 34.654602>,  <43.161270, 34.133129, 35.284538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315586, 33.785858, 34.654602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631645, 34.029514, 34.681755>,  <43.821281, 34.175709, 34.698048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631645, 34.029514, 34.681755>,  <43.315586, 33.785858, 34.654602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631645, 34.029514, 34.681755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604541, -0.792805, 0.077394,
		0.100960, -0.020116, -0.994687,
		0.790150, 0.609143, 0.067880,
		43.868690, 34.212257, 34.702118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004410, 33.702423, 34.144424>,  <43.315586, 33.785858, 34.654602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004410, 33.702423, 34.144424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061718, 33.839962, 34.515636>,  <44.096104, 33.922485, 34.738365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061718, 33.839962, 34.515636>,  <44.004410, 33.702423, 34.144424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061718, 33.839962, 34.515636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566308, -0.797501, 0.208056,
		0.811646, 0.495744, -0.308980,
		0.143269, 0.343846, 0.928032,
		44.104698, 33.943115, 34.794044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410698, 33.110344, 34.427689>,  <44.004410, 33.702423, 34.144424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410698, 33.110344, 34.427689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743267, 33.043221, 34.215809>,  <44.942806, 33.002949, 34.088680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743267, 33.043221, 34.215809>,  <44.410698, 33.110344, 34.427689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743267, 33.043221, 34.215809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390610, -0.501486, 0.771968,
		-0.395175, -0.848737, -0.351401,
		0.831421, -0.167802, -0.529700,
		44.992695, 32.992878, 34.056900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577278, 32.385117, 34.380329>,  <44.410698, 33.110344, 34.427689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577278, 32.385117, 34.380329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903217, 32.615597, 34.354950>,  <45.098782, 32.753883, 34.339722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903217, 32.615597, 34.354950>,  <44.577278, 32.385117, 34.380329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903217, 32.615597, 34.354950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345216, -0.394424, 0.851619,
		0.465675, -0.715841, -0.520307,
		0.814845, 0.576196, -0.063446,
		45.147671, 32.788456, 34.335915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272697, 32.043373, 34.371246>,  <44.577278, 32.385117, 34.380329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272697, 32.043373, 34.371246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334476, 32.402744, 34.535671>,  <45.371544, 32.618366, 34.634327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.334476, 32.402744, 34.535671>,  <45.272697, 32.043373, 34.371246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334476, 32.402744, 34.535671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239368, -0.437691, 0.866678,
		0.958566, -0.035462, -0.282656,
		0.154450, 0.898426, 0.411067,
		45.380810, 32.672272, 34.658993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.964073, 32.150856, 34.691338>,  <45.272697, 32.043373, 34.371246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.964073, 32.150856, 34.691338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647770, 32.319363, 34.868984>,  <45.457989, 32.420467, 34.975571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647770, 32.319363, 34.868984>,  <45.964073, 32.150856, 34.691338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647770, 32.319363, 34.868984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258430, -0.427943, 0.866071,
		0.554905, 0.799623, 0.229530,
		-0.790756, 0.421269, 0.444115,
		45.410542, 32.445744, 35.002220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291710, 32.465054, 35.158405>,  <45.964073, 32.150856, 34.691338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291710, 32.465054, 35.158405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910740, 32.398590, 35.260597>,  <45.682156, 32.358711, 35.321915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910740, 32.398590, 35.260597>,  <46.291710, 32.465054, 35.158405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910740, 32.398590, 35.260597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302705, -0.418552, 0.856261,
		-0.035340, 0.892864, 0.448938,
		-0.952429, -0.166156, 0.255483,
		45.625011, 32.348743, 35.337242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.791092, 32.475239, 34.531872>,  <46.291710, 32.465054, 35.158405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.791092, 32.475239, 34.531872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.181480, 32.541698, 34.475487>,  <47.415714, 32.581573, 34.441658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.181480, 32.541698, 34.475487>,  <46.791092, 32.475239, 34.531872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.181480, 32.541698, 34.475487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039633, 0.771517, 0.634973,
		0.214254, -0.614131, 0.759565,
		0.975974, 0.166149, -0.140961,
		47.474274, 32.591545, 34.433197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008717, 32.937267, 35.144199>,  <46.791092, 32.475239, 34.531872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008717, 32.937267, 35.144199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.306885, 33.003510, 34.885921>,  <47.485786, 33.043255, 34.730953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.306885, 33.003510, 34.885921>,  <47.008717, 32.937267, 35.144199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.306885, 33.003510, 34.885921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041328, 0.955303, 0.292726,
		0.665310, -0.244890, 0.705260,
		0.745422, 0.165607, -0.645693,
		47.530510, 33.053192, 34.692215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535191, 33.268028, 35.608524>,  <47.008717, 32.937267, 35.144199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535191, 33.268028, 35.608524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584003, 33.367279, 35.224121>,  <47.613293, 33.426830, 34.993477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584003, 33.367279, 35.224121>,  <47.535191, 33.268028, 35.608524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.584003, 33.367279, 35.224121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002165, 0.968179, 0.250249,
		0.992524, -0.032619, 0.117614,
		0.122034, 0.248123, -0.961011,
		47.620613, 33.441715, 34.935818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.146854, 33.789547, 35.608425>,  <47.535191, 33.268028, 35.608524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.146854, 33.789547, 35.608425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.890156, 33.808868, 35.302265>,  <47.736137, 33.820461, 35.118568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.890156, 33.808868, 35.302265>,  <48.146854, 33.789547, 35.608425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.890156, 33.808868, 35.302265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080783, 0.988204, 0.130102,
		0.762654, 0.145323, -0.630270,
		-0.641742, 0.048307, -0.765397,
		47.697632, 33.823360, 35.072647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.288883, 34.439171, 35.321949>,  <48.146854, 33.789547, 35.608425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.288883, 34.439171, 35.321949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.927914, 34.320499, 35.196983>,  <47.711330, 34.249294, 35.122002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.927914, 34.320499, 35.196983>,  <48.288883, 34.439171, 35.321949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.927914, 34.320499, 35.196983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346595, 0.930641, 0.117386,
		0.255921, 0.214215, -0.942665,
		-0.902428, -0.296681, -0.312416,
		47.657185, 34.231495, 35.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.000164, 35.010246, 34.877316>,  <48.288883, 34.439171, 35.321949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.000164, 35.010246, 34.877316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679993, 34.848709, 35.054504>,  <47.487888, 34.751789, 35.160816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679993, 34.848709, 35.054504>,  <48.000164, 35.010246, 34.877316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679993, 34.848709, 35.054504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414301, 0.906786, 0.078060,
		-0.433205, -0.121043, -0.893130,
		-0.800430, -0.403841, 0.442973,
		47.439865, 34.727558, 35.187397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.621502, 35.726139, 27.254585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311211, 35.961269, 27.346422>,  <34.125038, 36.102348, 27.401525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311211, 35.961269, 27.346422>,  <34.621502, 35.726139, 27.254585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311211, 35.961269, 27.346422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254505, -0.041513, 0.966180,
		0.577474, 0.807923, -0.117401,
		-0.775726, 0.587824, 0.229594,
		34.078491, 36.137615, 27.415300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905613, 36.312088, 27.600716>,  <34.621502, 35.726139, 27.254585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905613, 36.312088, 27.600716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524090, 36.301460, 27.720409>,  <34.295174, 36.295082, 27.792225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524090, 36.301460, 27.720409>,  <34.905613, 36.312088, 27.600716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524090, 36.301460, 27.720409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298176, 0.037570, 0.953771,
		-0.036584, 0.998941, -0.027912,
		-0.953809, -0.026570, 0.299235,
		34.237946, 36.293488, 27.810181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829269, 36.746712, 28.122931>,  <34.905613, 36.312088, 27.600716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829269, 36.746712, 28.122931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506939, 36.515141, 28.172714>,  <34.313541, 36.376198, 28.202585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.506939, 36.515141, 28.172714>,  <34.829269, 36.746712, 28.122931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506939, 36.515141, 28.172714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219239, -0.096439, 0.970893,
		-0.550076, 0.809654, 0.204637,
		-0.805823, -0.578930, 0.124459,
		34.265194, 36.341461, 28.210052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512310, 36.964062, 28.752298>,  <34.829269, 36.746712, 28.122931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512310, 36.964062, 28.752298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.350304, 36.605759, 28.678999>,  <34.253101, 36.390778, 28.635019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.350304, 36.605759, 28.678999>,  <34.512310, 36.964062, 28.752298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350304, 36.605759, 28.678999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079604, -0.234210, 0.968921,
		-0.910839, 0.377838, 0.166164,
		-0.405012, -0.895759, -0.183250,
		34.228802, 36.337032, 28.624023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121952, 36.973904, 29.276867>,  <34.512310, 36.964062, 28.752298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121952, 36.973904, 29.276867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.184769, 36.598862, 29.152777>,  <34.222458, 36.373837, 29.078321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.184769, 36.598862, 29.152777>,  <34.121952, 36.973904, 29.276867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184769, 36.598862, 29.152777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048535, -0.306418, 0.950659,
		-0.986399, -0.164351, -0.002614,
		0.157043, -0.937602, -0.310227,
		34.231880, 36.317581, 29.059708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771854, 36.633232, 29.753412>,  <34.121952, 36.973904, 29.276867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771854, 36.633232, 29.753412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027107, 36.380619, 29.577253>,  <34.180260, 36.229050, 29.471558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027107, 36.380619, 29.577253>,  <33.771854, 36.633232, 29.753412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027107, 36.380619, 29.577253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244032, -0.376604, 0.893654,
		-0.730231, -0.677739, -0.086207,
		0.638130, -0.631537, -0.440398,
		34.218548, 36.191158, 29.445133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555351, 35.879948, 29.938465>,  <33.771854, 36.633232, 29.753412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555351, 35.879948, 29.938465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948391, 35.888981, 29.864731>,  <34.184216, 35.894402, 29.820490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948391, 35.888981, 29.864731>,  <33.555351, 35.879948, 29.938465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948391, 35.888981, 29.864731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177831, -0.400526, 0.898863,
		-0.053531, -0.916007, -0.397574,
		0.982604, 0.022584, -0.184335,
		34.243172, 35.895756, 29.809431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741959, 35.280487, 30.299252>,  <33.555351, 35.879948, 29.938465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741959, 35.280487, 30.299252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.078960, 35.493389, 30.266047>,  <34.281162, 35.621128, 30.246122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.078960, 35.493389, 30.266047>,  <33.741959, 35.280487, 30.299252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078960, 35.493389, 30.266047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281956, -0.304403, 0.909857,
		0.459003, -0.789967, -0.406533,
		0.842507, 0.532252, -0.083014,
		34.331711, 35.653065, 30.241142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306339, 34.802715, 30.545738>,  <33.741959, 35.280487, 30.299252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306339, 34.802715, 30.545738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.482521, 35.161343, 30.564377>,  <34.588230, 35.376518, 30.575560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.482521, 35.161343, 30.564377>,  <34.306339, 34.802715, 30.545738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482521, 35.161343, 30.564377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379829, -0.233123, 0.895200,
		0.813470, -0.376592, -0.443221,
		0.440450, 0.896567, 0.046598,
		34.614655, 35.430313, 30.578356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919731, 34.618259, 30.949333>,  <34.306339, 34.802715, 30.545738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919731, 34.618259, 30.949333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.865551, 35.014545, 30.944798>,  <34.833042, 35.252319, 30.942076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.865551, 35.014545, 30.944798>,  <34.919731, 34.618259, 30.949333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865551, 35.014545, 30.944798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254248, 0.045818, 0.966053,
		0.957606, 0.127974, -0.258094,
		-0.135455, 0.990719, -0.011339,
		34.824913, 35.311760, 30.941397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524670, 34.985607, 31.183409>,  <34.919731, 34.618259, 30.949333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524670, 34.985607, 31.183409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236145, 35.254028, 31.251991>,  <35.063030, 35.415081, 31.293140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236145, 35.254028, 31.251991>,  <35.524670, 34.985607, 31.183409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236145, 35.254028, 31.251991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332126, 0.117886, 0.935839,
		0.607788, 0.731975, -0.307907,
		-0.721309, 0.671055, 0.171458,
		35.019753, 35.455345, 31.303429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913612, 35.609482, 31.381403>,  <35.524670, 34.985607, 31.183409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913612, 35.609482, 31.381403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540268, 35.666412, 31.513212>,  <35.316261, 35.700573, 31.592297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540268, 35.666412, 31.513212>,  <35.913612, 35.609482, 31.381403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540268, 35.666412, 31.513212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354342, 0.218776, 0.909164,
		0.057310, 0.965339, -0.254630,
		-0.933358, 0.142331, 0.329522,
		35.260262, 35.709110, 31.612068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964386, 36.255615, 31.751204>,  <35.913612, 35.609482, 31.381403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964386, 36.255615, 31.751204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.652016, 36.036957, 31.872095>,  <35.464596, 35.905762, 31.944630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.652016, 36.036957, 31.872095>,  <35.964386, 36.255615, 31.751204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652016, 36.036957, 31.872095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290570, 0.110397, 0.950464,
		-0.552930, 0.830056, 0.072627,
		-0.780921, -0.546643, 0.302231,
		35.417740, 35.872963, 31.962765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688240, 36.579132, 32.356205>,  <35.964386, 36.255615, 31.751204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688240, 36.579132, 32.356205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534126, 36.210567, 32.376434>,  <35.441658, 35.989429, 32.388573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534126, 36.210567, 32.376434>,  <35.688240, 36.579132, 32.356205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534126, 36.210567, 32.376434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258978, -0.055366, 0.964295,
		-0.885712, 0.384625, 0.259957,
		-0.385285, -0.921411, 0.050571,
		35.418541, 35.934143, 32.391605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267815, 36.598354, 33.035793>,  <35.688240, 36.579132, 32.356205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267815, 36.598354, 33.035793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356823, 36.224583, 32.924568>,  <35.410229, 36.000320, 32.857834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356823, 36.224583, 32.924568>,  <35.267815, 36.598354, 33.035793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356823, 36.224583, 32.924568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370733, -0.182687, 0.910595,
		-0.901688, -0.305714, 0.305773,
		0.222521, -0.934433, -0.278065,
		35.423580, 35.944252, 32.841148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123260, 36.230251, 33.625977>,  <35.267815, 36.598354, 33.035793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123260, 36.230251, 33.625977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361465, 35.983475, 33.420162>,  <35.504391, 35.835411, 33.296673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361465, 35.983475, 33.420162>,  <35.123260, 36.230251, 33.625977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361465, 35.983475, 33.420162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464949, -0.257631, 0.847024,
		-0.655122, -0.743649, 0.133421,
		0.595515, -0.616937, -0.514539,
		35.540119, 35.798393, 33.265800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088913, 35.622459, 33.995689>,  <35.123260, 36.230251, 33.625977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088913, 35.622459, 33.995689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424454, 35.582451, 33.781651>,  <35.625778, 35.558445, 33.653229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424454, 35.582451, 33.781651>,  <35.088913, 35.622459, 33.995689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424454, 35.582451, 33.781651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444427, -0.441790, 0.779298,
		-0.314349, -0.891525, -0.326142,
		0.838850, -0.100025, -0.535094,
		35.676109, 35.552444, 33.621120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368595, 34.947193, 34.240025>,  <35.088913, 35.622459, 33.995689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368595, 34.947193, 34.240025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687634, 35.115898, 34.067532>,  <35.879055, 35.217121, 33.964035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687634, 35.115898, 34.067532>,  <35.368595, 34.947193, 34.240025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687634, 35.115898, 34.067532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556803, -0.239850, 0.795262,
		0.231985, -0.874405, -0.426144,
		0.797592, 0.421768, -0.431230,
		35.926910, 35.242428, 33.938164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930218, 34.482594, 34.230503>,  <35.368595, 34.947193, 34.240025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930218, 34.482594, 34.230503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113422, 34.837341, 34.206219>,  <36.223343, 35.050190, 34.191650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113422, 34.837341, 34.206219>,  <35.930218, 34.482594, 34.230503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113422, 34.837341, 34.206219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699720, -0.317552, 0.639963,
		0.548288, -0.335586, -0.766004,
		0.458009, 0.886873, -0.060707,
		36.250824, 35.103401, 34.188007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645561, 34.470890, 34.033188>,  <35.930218, 34.482594, 34.230503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645561, 34.470890, 34.033188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610325, 34.805531, 34.249462>,  <36.589184, 35.006313, 34.379227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610325, 34.805531, 34.249462>,  <36.645561, 34.470890, 34.033188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610325, 34.805531, 34.249462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840544, -0.228845, 0.491036,
		0.534533, 0.497730, -0.683037,
		-0.088093, 0.836597, 0.540689,
		36.583897, 35.056511, 34.411671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169479, 35.017757, 34.227230>,  <36.645561, 34.470890, 34.033188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169479, 35.017757, 34.227230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551147, 35.003502, 34.108376>,  <37.780148, 34.994949, 34.037064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551147, 35.003502, 34.108376>,  <37.169479, 35.017757, 34.227230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551147, 35.003502, 34.108376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226448, -0.563166, 0.794711,
		-0.195658, -0.825575, -0.529286,
		0.954169, -0.035636, -0.297137,
		37.837399, 34.992809, 34.019234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846546, 35.123810, 34.580898>,  <37.169479, 35.017757, 34.227230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846546, 35.123810, 34.580898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227680, 35.016102, 34.636883>,  <38.456360, 34.951477, 34.670475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227680, 35.016102, 34.636883>,  <37.846546, 35.123810, 34.580898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227680, 35.016102, 34.636883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187408, 0.159340, -0.969272,
		0.238697, 0.949791, 0.202289,
		0.952839, -0.269273, 0.139964,
		38.513531, 34.935318, 34.678871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151108, 35.543148, 34.108665>,  <37.846546, 35.123810, 34.580898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151108, 35.543148, 34.108665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.457012, 35.297081, 34.185303>,  <38.640553, 35.149441, 34.231285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.457012, 35.297081, 34.185303>,  <38.151108, 35.543148, 34.108665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457012, 35.297081, 34.185303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389468, 0.204469, -0.898058,
		0.513284, 0.761417, 0.395959,
		0.764758, -0.615171, 0.191597,
		38.686440, 35.112530, 34.242783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848068, 35.929607, 33.882370>,  <38.151108, 35.543148, 34.108665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848068, 35.929607, 33.882370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918320, 35.536556, 33.906376>,  <38.960472, 35.300728, 33.920780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918320, 35.536556, 33.906376>,  <38.848068, 35.929607, 33.882370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918320, 35.536556, 33.906376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341138, 0.003558, -0.940007,
		0.923461, 0.185567, 0.335836,
		0.175629, -0.982625, 0.060018,
		38.971008, 35.241768, 33.924381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392757, 35.818211, 33.458149>,  <38.848068, 35.929607, 33.882370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392757, 35.818211, 33.458149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.236416, 35.451447, 33.490402>,  <39.142612, 35.231388, 33.509754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.236416, 35.451447, 33.490402>,  <39.392757, 35.818211, 33.458149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236416, 35.451447, 33.490402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242710, -0.187170, -0.951872,
		0.887877, -0.352471, 0.295700,
		-0.390853, -0.916914, 0.080636,
		39.119160, 35.176373, 33.514591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992348, 35.394581, 33.291237>,  <39.392757, 35.818211, 33.458149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992348, 35.394581, 33.291237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634907, 35.226471, 33.228199>,  <39.420441, 35.125603, 33.190376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634907, 35.226471, 33.228199>,  <39.992348, 35.394581, 33.291237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634907, 35.226471, 33.228199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222462, -0.109758, -0.968743,
		0.389845, -0.900733, 0.191577,
		-0.893606, -0.420278, -0.157591,
		39.366825, 35.100388, 33.180923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117554, 34.733826, 32.855400>,  <39.992348, 35.394581, 33.291237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117554, 34.733826, 32.855400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.735329, 34.845032, 32.816185>,  <39.505993, 34.911755, 32.792656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.735329, 34.845032, 32.816185>,  <40.117554, 34.733826, 32.855400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735329, 34.845032, 32.816185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057142, -0.151564, -0.986794,
		-0.289201, -0.948544, 0.128942,
		-0.955561, 0.278014, -0.098034,
		39.448662, 34.928436, 32.786774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923809, 34.295383, 32.330662>,  <40.117554, 34.733826, 32.855400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923809, 34.295383, 32.330662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605495, 34.535812, 32.360153>,  <39.414509, 34.680069, 32.377846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605495, 34.535812, 32.360153>,  <39.923809, 34.295383, 32.330662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605495, 34.535812, 32.360153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196398, -0.141004, -0.970333,
		-0.572847, -0.786656, 0.230259,
		-0.795785, 0.601074, 0.073724,
		39.366760, 34.716133, 32.382271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446987, 33.924652, 32.059162>,  <39.923809, 34.295383, 32.330662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446987, 33.924652, 32.059162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.298332, 34.295944, 32.065788>,  <39.209141, 34.518719, 32.069763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.298332, 34.295944, 32.065788>,  <39.446987, 33.924652, 32.059162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298332, 34.295944, 32.065788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339162, -0.119134, -0.933154,
		-0.864209, -0.352410, 0.359096,
		-0.371633, 0.928232, 0.016567,
		39.186844, 34.574413, 32.070759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773716, 33.830608, 31.852228>,  <39.446987, 33.924652, 32.059162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773716, 33.830608, 31.852228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866009, 34.209946, 31.765129>,  <38.921383, 34.437546, 31.712870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866009, 34.209946, 31.765129>,  <38.773716, 33.830608, 31.852228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866009, 34.209946, 31.765129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439143, -0.098204, -0.893034,
		-0.868284, 0.301670, 0.393799,
		0.230729, 0.948341, -0.217745,
		38.935226, 34.494450, 31.699806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159714, 34.200081, 31.571125>,  <38.773716, 33.830608, 31.852228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159714, 34.200081, 31.571125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463413, 34.435146, 31.459272>,  <38.645634, 34.576187, 31.392160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463413, 34.435146, 31.459272>,  <38.159714, 34.200081, 31.571125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463413, 34.435146, 31.459272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360631, 0.022236, -0.932444,
		-0.541749, 0.808797, 0.228813,
		0.759246, 0.587667, -0.279631,
		38.691189, 34.611446, 31.375383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831688, 34.810642, 31.270233>,  <38.159714, 34.200081, 31.571125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831688, 34.810642, 31.270233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206020, 34.813465, 31.129286>,  <38.430622, 34.815159, 31.044718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206020, 34.813465, 31.129286>,  <37.831688, 34.810642, 31.270233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206020, 34.813465, 31.129286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343916, 0.236852, -0.908638,
		0.077047, 0.971520, 0.224081,
		0.935834, 0.007057, -0.352370,
		38.486771, 34.815582, 31.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826195, 35.387062, 30.781984>,  <37.831688, 34.810642, 31.270233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826195, 35.387062, 30.781984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151279, 35.175354, 30.684515>,  <38.346329, 35.048328, 30.626034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151279, 35.175354, 30.684515>,  <37.826195, 35.387062, 30.781984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151279, 35.175354, 30.684515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241404, 0.074767, -0.967540,
		0.530308, 0.845154, -0.067003,
		0.812710, -0.529269, -0.243673,
		38.395092, 35.016575, 30.611414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994762, 35.675400, 30.177151>,  <37.826195, 35.387062, 30.781984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994762, 35.675400, 30.177151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200729, 35.332504, 30.177992>,  <38.324310, 35.126766, 30.178497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200729, 35.332504, 30.177992>,  <37.994762, 35.675400, 30.177151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200729, 35.332504, 30.177992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139745, -0.086362, -0.986414,
		0.845771, 0.507631, -0.164264,
		0.514921, -0.857235, 0.002104,
		38.355206, 35.075333, 30.178623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508568, 35.746670, 29.596273>,  <37.994762, 35.675400, 30.177151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508568, 35.746670, 29.596273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409443, 35.375313, 29.707037>,  <38.349968, 35.152500, 29.773495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409443, 35.375313, 29.707037>,  <38.508568, 35.746670, 29.596273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409443, 35.375313, 29.707037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295664, -0.199717, -0.934182,
		0.922591, -0.313370, -0.225001,
		-0.247808, -0.928392, 0.276909,
		38.335102, 35.096794, 29.790110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798363, 35.283199, 29.065485>,  <38.508568, 35.746670, 29.596273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798363, 35.283199, 29.065485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487537, 35.106892, 29.245214>,  <38.301041, 35.001106, 29.353052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487537, 35.106892, 29.245214>,  <38.798363, 35.283199, 29.065485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487537, 35.106892, 29.245214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398280, -0.208439, -0.893267,
		0.487381, -0.873084, -0.013578,
		-0.777067, -0.440769, 0.449321,
		38.254417, 34.974663, 29.380011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667988, 34.588104, 28.713003>,  <38.798363, 35.283199, 29.065485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667988, 34.588104, 28.713003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341717, 34.665085, 28.931229>,  <38.145954, 34.711273, 29.062164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341717, 34.665085, 28.931229>,  <38.667988, 34.588104, 28.713003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341717, 34.665085, 28.931229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578188, -0.239602, -0.779929,
		-0.019380, -0.951605, 0.306711,
		-0.815673, 0.192452, 0.545564,
		38.097015, 34.722820, 29.094898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151081, 34.049885, 28.612316>,  <38.667988, 34.588104, 28.713003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151081, 34.049885, 28.612316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939869, 34.360611, 28.749575>,  <37.813141, 34.547047, 28.831930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939869, 34.360611, 28.749575>,  <38.151081, 34.049885, 28.612316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939869, 34.360611, 28.749575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616286, -0.072513, -0.784177,
		-0.584276, -0.625544, 0.517027,
		-0.528028, 0.776812, 0.343146,
		37.781460, 34.593655, 28.852518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577343, 33.946609, 28.256001>,  <38.151081, 34.049885, 28.612316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577343, 33.946609, 28.256001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544819, 34.307098, 28.426262>,  <37.525307, 34.523392, 28.528419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544819, 34.307098, 28.426262>,  <37.577343, 33.946609, 28.256001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544819, 34.307098, 28.426262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607526, 0.293746, -0.737988,
		-0.790128, -0.318599, 0.523635,
		-0.081306, 0.901226, 0.425654,
		37.520428, 34.577465, 28.553959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812279, 34.038609, 28.324408>,  <37.577343, 33.946609, 28.256001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812279, 34.038609, 28.324408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940987, 34.413502, 28.378172>,  <37.018211, 34.638435, 28.410431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.940987, 34.413502, 28.378172>,  <36.812279, 34.038609, 28.324408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940987, 34.413502, 28.378172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683174, 0.328109, -0.652394,
		-0.655543, 0.118097, 0.745866,
		0.321772, 0.937228, 0.134409,
		37.037518, 34.694672, 28.418495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.098564, 34.640793, 28.430096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404121, 34.876305, 28.324409>,  <36.587456, 35.017612, 28.260998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404121, 34.876305, 28.324409>,  <36.098564, 34.640793, 28.430096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404121, 34.876305, 28.324409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600207, 0.497764, -0.626085,
		-0.237107, 0.636846, 0.733626,
		0.763893, 0.588776, -0.264216,
		36.633289, 35.052937, 28.245144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782841, 35.285469, 28.252502>,  <36.098564, 34.640793, 28.430096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782841, 35.285469, 28.252502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138947, 35.299294, 28.070848>,  <36.352608, 35.307590, 27.961855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138947, 35.299294, 28.070848>,  <35.782841, 35.285469, 28.252502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138947, 35.299294, 28.070848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406388, 0.510468, -0.757807,
		0.205628, 0.859202, 0.468497,
		0.890262, 0.034566, -0.454136,
		36.406025, 35.309662, 27.934608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827778, 35.958778, 27.940617>,  <35.782841, 35.285469, 28.252502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827778, 35.958778, 27.940617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139206, 35.809757, 27.738613>,  <36.326061, 35.720345, 27.617411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139206, 35.809757, 27.738613>,  <35.827778, 35.958778, 27.940617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139206, 35.809757, 27.738613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333737, 0.435695, -0.835936,
		0.531462, 0.819374, 0.214883,
		0.778568, -0.372554, -0.505011,
		36.372776, 35.697990, 27.587111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251442, 36.541767, 27.522730>,  <35.827778, 35.958778, 27.940617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251442, 36.541767, 27.522730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270512, 36.181782, 27.349394>,  <36.281952, 35.965790, 27.245392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270512, 36.181782, 27.349394>,  <36.251442, 36.541767, 27.522730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270512, 36.181782, 27.349394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274372, 0.405349, -0.872016,
		0.960441, 0.160467, -0.227603,
		0.047671, -0.899968, -0.433342,
		36.284813, 35.911793, 27.219391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629139, 36.603897, 26.964518>,  <36.251442, 36.541767, 27.522730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629139, 36.603897, 26.964518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.453415, 36.266277, 26.841499>,  <36.347980, 36.063705, 26.767689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.453415, 36.266277, 26.841499>,  <36.629139, 36.603897, 26.964518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453415, 36.266277, 26.841499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170048, 0.414295, -0.894116,
		0.882095, -0.340494, -0.325532,
		-0.439308, -0.844052, -0.307547,
		36.321621, 36.013062, 26.749235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719360, 36.476215, 26.228817>,  <36.629139, 36.603897, 26.964518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719360, 36.476215, 26.228817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406013, 36.236492, 26.294739>,  <36.218006, 36.092659, 26.334291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406013, 36.236492, 26.294739>,  <36.719360, 36.476215, 26.228817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406013, 36.236492, 26.294739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276166, 0.098069, -0.956093,
		0.556835, -0.794487, -0.242333,
		-0.783369, -0.599310, 0.164803,
		36.171001, 36.056698, 26.344179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795937, 36.028744, 25.713078>,  <36.719360, 36.476215, 26.228817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795937, 36.028744, 25.713078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412529, 35.987370, 25.819315>,  <36.182484, 35.962543, 25.883057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412529, 35.987370, 25.819315>,  <36.795937, 36.028744, 25.713078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412529, 35.987370, 25.819315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274559, 0.084896, -0.957815,
		0.076540, -0.991005, -0.109778,
		-0.958519, -0.103451, 0.265591,
		36.124973, 35.956337, 25.898993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508747, 35.507538, 25.338305>,  <36.795937, 36.028744, 25.713078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508747, 35.507538, 25.338305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204430, 35.734070, 25.465088>,  <36.021839, 35.869987, 25.541159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204430, 35.734070, 25.465088>,  <36.508747, 35.507538, 25.338305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204430, 35.734070, 25.465088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356908, 0.042801, -0.933159,
		-0.542043, -0.823065, 0.169566,
		-0.760793, 0.566332, 0.316958,
		35.976192, 35.903969, 25.560175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054409, 35.228317, 24.989485>,  <36.508747, 35.507538, 25.338305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054409, 35.228317, 24.989485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911007, 35.586624, 25.094616>,  <35.824966, 35.801609, 25.157694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911007, 35.586624, 25.094616>,  <36.054409, 35.228317, 24.989485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911007, 35.586624, 25.094616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358025, 0.128083, -0.924885,
		-0.862144, -0.425674, 0.274788,
		-0.358504, 0.895766, 0.262828,
		35.803455, 35.855354, 25.173464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404610, 35.196156, 24.703787>,  <36.054409, 35.228317, 24.989485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404610, 35.196156, 24.703787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471867, 35.583843, 24.775717>,  <35.512222, 35.816456, 24.818874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471867, 35.583843, 24.775717>,  <35.404610, 35.196156, 24.703787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471867, 35.583843, 24.775717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380462, 0.232092, -0.895199,
		-0.909382, 0.082106, 0.407777,
		0.168143, 0.969222, 0.179823,
		35.522308, 35.874611, 24.829664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768650, 35.496471, 24.494829>,  <35.404610, 35.196156, 24.703787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768650, 35.496471, 24.494829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033669, 35.795643, 24.511003>,  <35.192680, 35.975143, 24.520708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033669, 35.795643, 24.511003>,  <34.768650, 35.496471, 24.494829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033669, 35.795643, 24.511003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354657, 0.360805, -0.862576,
		-0.659733, 0.557158, 0.504309,
		0.662549, 0.747926, 0.040435,
		35.232433, 36.020020, 24.523134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525879, 35.984653, 24.038549>,  <34.768650, 35.496471, 24.494829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525879, 35.984653, 24.038549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890808, 36.140091, 24.090178>,  <35.109764, 36.233353, 24.121155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890808, 36.140091, 24.090178>,  <34.525879, 35.984653, 24.038549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890808, 36.140091, 24.090178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085419, 0.488893, -0.868152,
		-0.400463, 0.781009, 0.479222,
		0.912323, 0.388598, 0.129070,
		35.164505, 36.256672, 24.128899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410339, 36.686024, 23.963152>,  <34.525879, 35.984653, 24.038549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410339, 36.686024, 23.963152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802074, 36.640949, 23.895973>,  <35.037113, 36.613903, 23.855665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802074, 36.640949, 23.895973>,  <34.410339, 36.686024, 23.963152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802074, 36.640949, 23.895973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089890, 0.501355, -0.860560,
		0.181176, 0.857872, 0.480864,
		0.979334, -0.112688, -0.167948,
		35.095875, 36.607143, 23.845589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658794, 37.353096, 23.814747>,  <34.410339, 36.686024, 23.963152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658794, 37.353096, 23.814747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935871, 37.107956, 23.662651>,  <35.102119, 36.960873, 23.571394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935871, 37.107956, 23.662651>,  <34.658794, 37.353096, 23.814747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935871, 37.107956, 23.662651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016510, 0.540550, -0.841150,
		0.721040, 0.576384, 0.384555,
		0.692696, -0.612852, -0.380242,
		35.143681, 36.924099, 23.548578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250134, 37.833958, 23.508600>,  <34.658794, 37.353096, 23.814747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250134, 37.833958, 23.508600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275417, 37.473476, 23.337099>,  <35.290588, 37.257187, 23.234198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275417, 37.473476, 23.337099>,  <35.250134, 37.833958, 23.508600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275417, 37.473476, 23.337099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007282, 0.429186, -0.903187,
		0.997974, 0.060214, 0.020567,
		0.063211, -0.901207, -0.428755,
		35.294380, 37.203114, 23.208473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832077, 37.911190, 22.965784>,  <35.250134, 37.833958, 23.508600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832077, 37.911190, 22.965784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.613670, 37.595345, 22.853802>,  <35.482624, 37.405838, 22.786613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.613670, 37.595345, 22.853802>,  <35.832077, 37.911190, 22.965784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613670, 37.595345, 22.853802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063509, 0.372216, -0.925971,
		0.835362, -0.487817, -0.253385,
		-0.546018, -0.789613, -0.279954,
		35.449863, 37.358459, 22.769815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215141, 37.762489, 22.414398>,  <35.832077, 37.911190, 22.965784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215141, 37.762489, 22.414398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861034, 37.577759, 22.392393>,  <35.648571, 37.466923, 22.379190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861034, 37.577759, 22.392393>,  <36.215141, 37.762489, 22.414398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861034, 37.577759, 22.392393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123169, 0.346857, -0.929795,
		0.448482, -0.816339, -0.363943,
		-0.885264, -0.461824, -0.055012,
		35.595455, 37.439213, 22.375889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161835, 37.300354, 21.770309>,  <36.215141, 37.762489, 22.414398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161835, 37.300354, 21.770309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795410, 37.415340, 21.882162>,  <35.575554, 37.484333, 21.949274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795410, 37.415340, 21.882162>,  <36.161835, 37.300354, 21.770309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795410, 37.415340, 21.882162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137382, 0.430141, -0.892247,
		-0.376771, -0.855770, -0.354543,
		-0.916062, 0.287465, 0.279632,
		35.520592, 37.501579, 21.966051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819843, 37.145359, 21.128357>,  <36.161835, 37.300354, 21.770309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819843, 37.145359, 21.128357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554100, 37.345524, 21.350430>,  <35.394653, 37.465622, 21.483673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554100, 37.345524, 21.350430>,  <35.819843, 37.145359, 21.128357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554100, 37.345524, 21.350430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339803, 0.459372, -0.820677,
		-0.665707, -0.733873, -0.135146,
		-0.664355, 0.500407, 0.555180,
		35.354794, 37.495647, 21.516983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121296, 37.094688, 20.822773>,  <35.819843, 37.145359, 21.128357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121296, 37.094688, 20.822773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115723, 37.434933, 21.033020>,  <35.112381, 37.639080, 21.159168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115723, 37.434933, 21.033020>,  <35.121296, 37.094688, 20.822773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115723, 37.434933, 21.033020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395697, 0.478068, -0.784140,
		-0.918276, -0.218908, 0.329923,
		-0.013929, 0.850606, 0.525619,
		35.111546, 37.690113, 21.190706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409626, 37.387074, 20.637836>,  <35.121296, 37.094688, 20.822773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409626, 37.387074, 20.637836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638847, 37.672577, 20.798910>,  <34.776382, 37.843880, 20.895555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638847, 37.672577, 20.798910>,  <34.409626, 37.387074, 20.637836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638847, 37.672577, 20.798910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076890, 0.536030, -0.840690,
		-0.815900, 0.450801, 0.362056,
		0.573057, 0.713758, 0.402685,
		34.810764, 37.886703, 20.919716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995083, 38.003605, 20.630236>,  <34.409626, 37.387074, 20.637836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995083, 38.003605, 20.630236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375134, 38.123787, 20.663656>,  <34.603165, 38.195896, 20.683708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375134, 38.123787, 20.663656>,  <33.995083, 38.003605, 20.630236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375134, 38.123787, 20.663656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124031, 0.609893, -0.782718,
		-0.286126, 0.733321, 0.616743,
		0.950131, 0.300451, 0.083552,
		34.660172, 38.213921, 20.688723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008030, 38.665668, 20.818703>,  <33.995083, 38.003605, 20.630236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008030, 38.665668, 20.818703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353790, 38.598232, 20.629223>,  <34.561245, 38.557770, 20.515535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353790, 38.598232, 20.629223>,  <34.008030, 38.665668, 20.818703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353790, 38.598232, 20.629223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315327, 0.552054, -0.771885,
		0.391641, 0.816586, 0.424033,
		0.864400, -0.168593, -0.473698,
		34.613110, 38.547653, 20.487114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142986, 39.284992, 20.464821>,  <34.008030, 38.665668, 20.818703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142986, 39.284992, 20.464821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350143, 38.980274, 20.309153>,  <34.474438, 38.797443, 20.215752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350143, 38.980274, 20.309153>,  <34.142986, 39.284992, 20.464821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350143, 38.980274, 20.309153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151632, 0.365980, -0.918186,
		0.841900, 0.534532, 0.074026,
		0.517892, -0.761796, -0.389171,
		34.505512, 38.751736, 20.192402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682796, 39.461590, 20.058340>,  <34.142986, 39.284992, 20.464821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682796, 39.461590, 20.058340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314625, 39.553013, 20.185192>,  <33.093723, 39.607868, 20.261303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314625, 39.553013, 20.185192>,  <33.682796, 39.461590, 20.058340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314625, 39.553013, 20.185192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342887, 0.082473, 0.935749,
		0.187722, 0.970030, -0.154282,
		-0.920429, 0.228562, 0.317128,
		33.038498, 39.621582, 20.280331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778008, 39.942005, 20.515863>,  <33.682796, 39.461590, 20.058340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778008, 39.942005, 20.515863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408382, 39.812576, 20.597260>,  <33.186607, 39.734917, 20.646097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408382, 39.812576, 20.597260>,  <33.778008, 39.942005, 20.515863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408382, 39.812576, 20.597260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227910, -0.039020, 0.972900,
		-0.306865, 0.945398, 0.109803,
		-0.924062, -0.323574, 0.203492,
		33.131165, 39.715504, 20.658306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678562, 40.223030, 21.096165>,  <33.778008, 39.942005, 20.515863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678562, 40.223030, 21.096165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395424, 39.940887, 21.081060>,  <33.225540, 39.771603, 21.071997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.395424, 39.940887, 21.081060>,  <33.678562, 40.223030, 21.096165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395424, 39.940887, 21.081060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089851, -0.142937, 0.985645,
		-0.700627, 0.694294, 0.164555,
		-0.707848, -0.705354, -0.037763,
		33.183071, 39.729282, 21.069731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235748, 40.416088, 21.587864>,  <33.678562, 40.223030, 21.096165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235748, 40.416088, 21.587864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.182339, 40.027214, 21.510887>,  <33.150295, 39.793892, 21.464701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.182339, 40.027214, 21.510887>,  <33.235748, 40.416088, 21.587864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182339, 40.027214, 21.510887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132953, -0.209995, 0.968620,
		-0.982087, 0.103746, 0.157294,
		-0.133522, -0.972182, -0.192440,
		33.142281, 39.735558, 21.453156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748764, 40.245338, 22.003683>,  <33.235748, 40.416088, 21.587864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748764, 40.245338, 22.003683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923580, 39.903339, 21.891983>,  <33.028469, 39.698139, 21.824963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923580, 39.903339, 21.891983>,  <32.748764, 40.245338, 22.003683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923580, 39.903339, 21.891983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059783, -0.337397, 0.939462,
		-0.897455, -0.393885, -0.198570,
		0.437037, -0.854995, -0.279251,
		33.054691, 39.646839, 21.808208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319969, 39.727493, 22.277159>,  <32.748764, 40.245338, 22.003683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319969, 39.727493, 22.277159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.681271, 39.572376, 22.203684>,  <32.898052, 39.479305, 22.159599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.681271, 39.572376, 22.203684>,  <32.319969, 39.727493, 22.277159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681271, 39.572376, 22.203684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008978, -0.445059, 0.895456,
		-0.428994, -0.807183, -0.405487,
		0.903263, -0.387786, -0.183680,
		32.952248, 39.456036, 22.148579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285801, 38.948929, 22.478077>,  <32.319969, 39.727493, 22.277159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285801, 38.948929, 22.478077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.666302, 39.069988, 22.501839>,  <32.894600, 39.142624, 22.516096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.666302, 39.069988, 22.501839>,  <32.285801, 38.948929, 22.478077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666302, 39.069988, 22.501839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104288, -0.496889, 0.861525,
		0.290257, -0.813330, -0.504228,
		0.951249, 0.302648, 0.059405,
		32.951675, 39.160782, 22.519661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552505, 38.366840, 22.673717>,  <32.285801, 38.948929, 22.478077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552505, 38.366840, 22.673717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823326, 38.646168, 22.766623>,  <32.985817, 38.813766, 22.822365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823326, 38.646168, 22.766623>,  <32.552505, 38.366840, 22.673717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823326, 38.646168, 22.766623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243937, -0.510708, 0.824423,
		0.694330, -0.501521, -0.516123,
		0.677053, 0.698323, 0.232260,
		33.026443, 38.855663, 22.836300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159927, 38.011108, 22.798471>,  <32.552505, 38.366840, 22.673717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159927, 38.011108, 22.798471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227734, 38.365189, 22.971766>,  <33.268417, 38.577637, 23.075741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227734, 38.365189, 22.971766>,  <33.159927, 38.011108, 22.798471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227734, 38.365189, 22.971766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477291, -0.458343, 0.749743,
		0.862240, 0.079684, -0.500193,
		0.169517, 0.885196, 0.433234,
		33.278587, 38.630749, 23.101736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835976, 38.039646, 22.978386>,  <33.159927, 38.011108, 22.798471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835976, 38.039646, 22.978386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663712, 38.296841, 23.231716>,  <33.560352, 38.451157, 23.383715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663712, 38.296841, 23.231716>,  <33.835976, 38.039646, 22.978386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663712, 38.296841, 23.231716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531880, -0.386108, 0.753674,
		0.729134, 0.661430, -0.175711,
		-0.430659, 0.642986, 0.633326,
		33.534515, 38.489735, 23.421715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406528, 38.283184, 23.573978>,  <33.835976, 38.039646, 22.978386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406528, 38.283184, 23.573978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033012, 38.310360, 23.714506>,  <33.808903, 38.326664, 23.798822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033012, 38.310360, 23.714506>,  <34.406528, 38.283184, 23.573978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033012, 38.310360, 23.714506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273314, -0.498282, 0.822809,
		0.230959, 0.864349, 0.446720,
		-0.933787, 0.067940, 0.351321,
		33.752876, 38.330742, 23.819902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572014, 38.295132, 24.205402>,  <34.406528, 38.283184, 23.573978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572014, 38.295132, 24.205402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179440, 38.218735, 24.212303>,  <33.943893, 38.172897, 24.216444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179440, 38.218735, 24.212303>,  <34.572014, 38.295132, 24.205402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179440, 38.218735, 24.212303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114776, -0.512926, 0.850725,
		-0.153635, 0.836916, 0.525327,
		-0.981439, -0.190996, 0.017254,
		33.885006, 38.161434, 24.217480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389786, 38.428764, 24.933622>,  <34.572014, 38.295132, 24.205402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389786, 38.428764, 24.933622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114429, 38.182327, 24.780497>,  <33.949215, 38.034466, 24.688622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114429, 38.182327, 24.780497>,  <34.389786, 38.428764, 24.933622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114429, 38.182327, 24.780497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050884, -0.485456, 0.872779,
		-0.723552, 0.620293, 0.302834,
		-0.688392, -0.616092, -0.382815,
		33.907913, 37.997501, 24.665651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874294, 38.378910, 25.446611>,  <34.389786, 38.428764, 24.933622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874294, 38.378910, 25.446611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.791157, 38.060211, 25.219633>,  <33.741272, 37.868992, 25.083447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.791157, 38.060211, 25.219633>,  <33.874294, 38.378910, 25.446611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791157, 38.060211, 25.219633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251185, -0.517188, 0.818182,
		-0.945360, 0.312590, -0.092635,
		-0.207846, -0.796746, -0.567447,
		33.728802, 37.821186, 25.049398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246258, 38.220551, 25.707972>,  <33.874294, 38.378910, 25.446611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246258, 38.220551, 25.707972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397934, 37.900230, 25.522526>,  <33.488941, 37.708038, 25.411259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397934, 37.900230, 25.522526>,  <33.246258, 38.220551, 25.707972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397934, 37.900230, 25.522526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228841, -0.566627, 0.791559,
		-0.896574, -0.194059, -0.398115,
		0.379192, -0.800796, -0.463614,
		33.511692, 37.659992, 25.383442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761166, 37.673828, 25.890795>,  <33.246258, 38.220551, 25.707972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761166, 37.673828, 25.890795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098816, 37.500843, 25.764034>,  <33.301407, 37.397053, 25.687977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098816, 37.500843, 25.764034>,  <32.761166, 37.673828, 25.890795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098816, 37.500843, 25.764034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065632, -0.669983, 0.739470,
		-0.532112, -0.603407, -0.593934,
		0.844127, -0.432462, -0.316902,
		33.352055, 37.371105, 25.668962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655167, 36.921776, 26.040522>,  <32.761166, 37.673828, 25.890795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655167, 36.921776, 26.040522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.049828, 36.959164, 25.987175>,  <33.286625, 36.981598, 25.955166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.049828, 36.959164, 25.987175>,  <32.655167, 36.921776, 26.040522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049828, 36.959164, 25.987175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162678, -0.526615, 0.834394,
		0.007759, -0.844949, -0.534790,
		0.986649, 0.093473, -0.133369,
		33.345821, 36.987206, 25.947165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909874, 36.250641, 26.192516>,  <32.655167, 36.921776, 26.040522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909874, 36.250641, 26.192516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224720, 36.486279, 26.265631>,  <33.413628, 36.627663, 26.309500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224720, 36.486279, 26.265631>,  <32.909874, 36.250641, 26.192516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224720, 36.486279, 26.265631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158875, -0.479984, 0.862771,
		0.595988, -0.650064, -0.471397,
		0.787119, 0.589095, 0.182786,
		33.460857, 36.663006, 26.320467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469608, 35.827316, 26.357727>,  <32.909874, 36.250641, 26.192516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469608, 35.827316, 26.357727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586197, 36.174641, 26.518270>,  <33.656151, 36.383034, 26.614597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586197, 36.174641, 26.518270>,  <33.469608, 35.827316, 26.357727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586197, 36.174641, 26.518270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383718, -0.490470, 0.782432,
		0.876245, -0.074047, -0.476142,
		0.291471, 0.868307, 0.401359,
		33.673637, 36.435131, 26.638678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049816, 35.634716, 26.755434>,  <33.469608, 35.827316, 26.357727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049816, 35.634716, 26.755434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964478, 35.995838, 26.904795>,  <33.913273, 36.212509, 26.994411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964478, 35.995838, 26.904795>,  <34.049816, 35.634716, 26.755434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964478, 35.995838, 26.904795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300827, -0.302924, 0.904290,
		0.929508, 0.305259, -0.206958,
		-0.213350, 0.902803, 0.373401,
		33.900471, 36.266678, 27.016815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.880455, 33.887142, 30.054234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719955, 34.250504, 30.101223>,  <38.623653, 34.468521, 30.129417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719955, 34.250504, 30.101223>,  <38.880455, 33.887142, 30.054234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719955, 34.250504, 30.101223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549256, 0.135987, 0.824516,
		0.733018, 0.395362, -0.553511,
		-0.401252, 0.908403, 0.117474,
		38.599579, 34.523026, 30.136465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412537, 34.105305, 30.338703>,  <38.880455, 33.887142, 30.054234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412537, 34.105305, 30.338703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.112820, 34.354946, 30.427290>,  <38.932987, 34.504730, 30.480442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.112820, 34.354946, 30.427290>,  <39.412537, 34.105305, 30.338703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112820, 34.354946, 30.427290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418738, 0.187424, 0.888556,
		0.513044, 0.758528, -0.401772,
		-0.749296, 0.624105, 0.221468,
		38.888031, 34.542179, 30.493731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674225, 34.744450, 30.545080>,  <39.412537, 34.105305, 30.338703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674225, 34.744450, 30.545080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.305470, 34.762917, 30.698956>,  <39.084217, 34.773994, 30.791281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.305470, 34.762917, 30.698956>,  <39.674225, 34.744450, 30.545080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305470, 34.762917, 30.698956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386899, 0.162588, 0.907675,
		-0.020645, 0.985614, -0.167748,
		-0.921891, 0.046163, 0.384690,
		39.028904, 34.776764, 30.814362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758472, 35.243202, 31.010784>,  <39.674225, 34.744450, 30.545080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758472, 35.243202, 31.010784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.418259, 35.055920, 31.106598>,  <39.214130, 34.943550, 31.164085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.418259, 35.055920, 31.106598>,  <39.758472, 35.243202, 31.010784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418259, 35.055920, 31.106598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200992, 0.131504, 0.970726,
		-0.486002, 0.873777, -0.017743,
		-0.850532, -0.468209, 0.239534,
		39.163097, 34.915459, 31.178457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232105, 35.719643, 31.266012>,  <39.758472, 35.243202, 31.010784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232105, 35.719643, 31.266012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.159103, 35.357193, 31.418661>,  <39.115303, 35.139725, 31.510250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.159103, 35.357193, 31.418661>,  <39.232105, 35.719643, 31.266012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159103, 35.357193, 31.418661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062311, 0.376703, 0.924236,
		-0.981229, 0.192457, -0.012289,
		-0.182505, -0.906121, 0.381624,
		39.104351, 35.085358, 31.533148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925453, 35.833542, 31.890863>,  <39.232105, 35.719643, 31.266012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925453, 35.833542, 31.890863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006607, 35.444027, 31.931993>,  <39.055298, 35.210316, 31.956673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006607, 35.444027, 31.931993>,  <38.925453, 35.833542, 31.890863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006607, 35.444027, 31.931993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009408, 0.103067, 0.994630,
		-0.979158, -0.202758, 0.011749,
		0.202880, -0.973789, 0.102826,
		39.067471, 35.151890, 31.962841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491852, 35.633018, 32.496834>,  <38.925453, 35.833542, 31.890863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491852, 35.633018, 32.496834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.735374, 35.319477, 32.447948>,  <38.881489, 35.131351, 32.418617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.735374, 35.319477, 32.447948>,  <38.491852, 35.633018, 32.496834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735374, 35.319477, 32.447948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202928, -0.302799, 0.931200,
		-0.766929, -0.542116, -0.343410,
		0.608802, -0.783852, -0.122215,
		38.918015, 35.084320, 32.411285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081505, 35.047176, 32.744034>,  <38.491852, 35.633018, 32.496834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081505, 35.047176, 32.744034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478821, 35.003204, 32.758400>,  <38.717209, 34.976822, 32.767021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.478821, 35.003204, 32.758400>,  <38.081505, 35.047176, 32.744034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478821, 35.003204, 32.758400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058848, -0.213064, 0.975264,
		-0.099556, -0.970834, -0.218103,
		0.993290, -0.109928, 0.035920,
		38.776810, 34.970226, 32.769176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329220, 34.258968, 32.952312>,  <38.081505, 35.047176, 32.744034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329220, 34.258968, 32.952312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.618687, 34.519016, 33.044956>,  <38.792366, 34.675045, 33.100544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.618687, 34.519016, 33.044956>,  <38.329220, 34.258968, 32.952312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618687, 34.519016, 33.044956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009969, -0.345412, 0.938398,
		0.690076, -0.676780, -0.256444,
		0.723668, 0.650123, 0.231614,
		38.835789, 34.714054, 33.114441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627556, 33.992222, 33.567299>,  <38.329220, 34.258968, 32.952312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627556, 33.992222, 33.567299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794559, 34.355564, 33.557671>,  <38.894760, 34.573570, 33.551895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794559, 34.355564, 33.557671>,  <38.627556, 33.992222, 33.567299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794559, 34.355564, 33.557671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100975, -0.020053, 0.994687,
		0.903044, -0.417723, -0.100093,
		0.417511, 0.908353, -0.024071,
		38.919811, 34.628071, 33.550449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199455, 33.974815, 33.937355>,  <38.627556, 33.992222, 33.567299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199455, 33.974815, 33.937355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.121490, 34.367138, 33.935265>,  <39.074711, 34.602531, 33.934010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.121490, 34.367138, 33.935265>,  <39.199455, 33.974815, 33.937355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121490, 34.367138, 33.935265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137921, 0.032687, 0.989904,
		0.971075, 0.192226, -0.141645,
		-0.194915, 0.980806, -0.005229,
		39.063015, 34.661381, 33.933697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648548, 34.208363, 34.452530>,  <39.199455, 33.974815, 33.937355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648548, 34.208363, 34.452530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348904, 34.465988, 34.390545>,  <39.169117, 34.620564, 34.353355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348904, 34.465988, 34.390545>,  <39.648548, 34.208363, 34.452530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348904, 34.465988, 34.390545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071676, 0.153741, 0.985508,
		0.658555, 0.749362, -0.069006,
		-0.749112, 0.644065, -0.154958,
		39.124168, 34.659206, 34.344059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811218, 34.798038, 34.860157>,  <39.648548, 34.208363, 34.452530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811218, 34.798038, 34.860157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417347, 34.807026, 34.790989>,  <39.181023, 34.812420, 34.749489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.417347, 34.807026, 34.790989>,  <39.811218, 34.798038, 34.860157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417347, 34.807026, 34.790989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171643, 0.049788, 0.983900,
		0.030718, 0.998507, -0.045168,
		-0.984680, 0.022471, -0.172916,
		39.121944, 34.813766, 34.739113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521225, 35.347427, 35.231758>,  <39.811218, 34.798038, 34.860157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521225, 35.347427, 35.231758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.248528, 35.059052, 35.182003>,  <39.084908, 34.886024, 35.152149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.248528, 35.059052, 35.182003>,  <39.521225, 35.347427, 35.231758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248528, 35.059052, 35.182003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226460, 0.046284, 0.972920,
		-0.695659, 0.691451, -0.194818,
		-0.681743, -0.720939, -0.124388,
		39.044006, 34.842770, 35.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764473, 35.584938, 35.994564>,  <39.521225, 35.347427, 35.231758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764473, 35.584938, 35.994564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048218, 35.866730, 36.003712>,  <40.218464, 36.035805, 36.009201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.048218, 35.866730, 36.003712>,  <39.764473, 35.584938, 35.994564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048218, 35.866730, 36.003712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480049, 0.506624, -0.716160,
		-0.516104, 0.497036, 0.697561,
		0.709359, 0.704477, 0.022868,
		40.261024, 36.078072, 36.010571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484940, 36.244751, 36.180702>,  <39.764473, 35.584938, 35.994564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484940, 36.244751, 36.180702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811085, 36.358814, 35.979164>,  <40.006771, 36.427254, 35.858242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811085, 36.358814, 35.979164>,  <39.484940, 36.244751, 36.180702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811085, 36.358814, 35.979164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565189, 0.580645, -0.586015,
		0.125450, 0.762586, 0.634606,
		0.815367, 0.285157, -0.503847,
		40.055695, 36.444363, 35.828011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509579, 37.029766, 36.084702>,  <39.484940, 36.244751, 36.180702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509579, 37.029766, 36.084702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733379, 36.887768, 35.785118>,  <39.867661, 36.802570, 35.605366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733379, 36.887768, 35.785118>,  <39.509579, 37.029766, 36.084702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733379, 36.887768, 35.785118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419958, 0.657631, -0.625426,
		0.714561, 0.664456, 0.218861,
		0.559498, -0.354992, -0.748961,
		39.901230, 36.781269, 35.560429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993534, 37.583813, 35.968418>,  <39.509579, 37.029766, 36.084702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993534, 37.583813, 35.968418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951237, 37.330898, 35.661423>,  <39.925858, 37.179150, 35.477226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951237, 37.330898, 35.661423>,  <39.993534, 37.583813, 35.968418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951237, 37.330898, 35.661423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166497, 0.772174, -0.613209,
		0.980355, 0.062939, -0.186928,
		-0.105746, -0.632286, -0.767484,
		39.919514, 37.141212, 35.431179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956520, 37.964382, 35.425438>,  <39.993534, 37.583813, 35.968418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956520, 37.964382, 35.425438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886353, 37.634998, 35.209606>,  <39.844254, 37.437370, 35.080105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886353, 37.634998, 35.209606>,  <39.956520, 37.964382, 35.425438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886353, 37.634998, 35.209606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337783, 0.565151, -0.752667,
		0.924734, 0.050233, -0.377286,
		-0.175414, -0.823457, -0.539582,
		39.833729, 37.387962, 35.047733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989925, 38.185833, 34.771729>,  <39.956520, 37.964382, 35.425438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989925, 38.185833, 34.771729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.814316, 37.829292, 34.726570>,  <39.708950, 37.615368, 34.699474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.814316, 37.829292, 34.726570>,  <39.989925, 38.185833, 34.771729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814316, 37.829292, 34.726570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434229, 0.320504, -0.841856,
		0.786576, -0.320573, -0.527761,
		-0.439026, -0.891353, -0.112899,
		39.682610, 37.561886, 34.692699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114769, 37.984730, 34.081665>,  <39.989925, 38.185833, 34.771729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114769, 37.984730, 34.081665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801918, 37.755379, 34.179249>,  <39.614208, 37.617767, 34.237801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801918, 37.755379, 34.179249>,  <40.114769, 37.984730, 34.081665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801918, 37.755379, 34.179249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376697, 0.123208, -0.918106,
		0.496363, -0.809974, -0.312354,
		-0.782127, -0.573377, 0.243959,
		39.567280, 37.583366, 34.252438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994114, 37.425591, 33.630264>,  <40.114769, 37.984730, 34.081665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994114, 37.425591, 33.630264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643532, 37.545403, 33.781055>,  <39.433182, 37.617290, 33.871532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643532, 37.545403, 33.781055>,  <39.994114, 37.425591, 33.630264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643532, 37.545403, 33.781055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363062, 0.103134, -0.926040,
		-0.316254, -0.948497, 0.018355,
		-0.876453, 0.299528, 0.376980,
		39.380596, 37.635262, 33.894150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559952, 37.147186, 33.138580>,  <39.994114, 37.425591, 33.630264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559952, 37.147186, 33.138580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.306530, 37.375435, 33.347580>,  <39.154476, 37.512386, 33.472980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.306530, 37.375435, 33.347580>,  <39.559952, 37.147186, 33.138580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306530, 37.375435, 33.347580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536076, 0.163194, -0.828245,
		-0.557884, -0.804833, 0.202506,
		-0.633551, 0.570624, 0.522495,
		39.116463, 37.546623, 33.504330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854031, 36.947575, 32.911148>,  <39.559952, 37.147186, 33.138580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854031, 36.947575, 32.911148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.809338, 37.304077, 33.086956>,  <38.782520, 37.517979, 33.192440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.809338, 37.304077, 33.086956>,  <38.854031, 36.947575, 32.911148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809338, 37.304077, 33.086956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395286, 0.365929, -0.842523,
		-0.911737, -0.267875, 0.311415,
		-0.111735, 0.891257, 0.439518,
		38.775818, 37.571453, 33.218811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141441, 37.046333, 32.919640>,  <38.854031, 36.947575, 32.911148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141441, 37.046333, 32.919640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323978, 37.400723, 32.952621>,  <38.433502, 37.613358, 32.972408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.323978, 37.400723, 32.952621>,  <38.141441, 37.046333, 32.919640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323978, 37.400723, 32.952621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470835, 0.319060, -0.822505,
		-0.755026, 0.336525, 0.562750,
		0.456344, 0.885975, 0.082451,
		38.460880, 37.666515, 32.977356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586140, 37.507027, 32.963459>,  <38.141441, 37.046333, 32.919640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586140, 37.507027, 32.963459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.920734, 37.685387, 32.836048>,  <38.121490, 37.792400, 32.759602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.920734, 37.685387, 32.836048>,  <37.586140, 37.507027, 32.963459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920734, 37.685387, 32.836048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508677, 0.415663, -0.753971,
		-0.203794, 0.792716, 0.574516,
		0.836490, 0.445898, -0.318527,
		38.171680, 37.819157, 32.740490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361526, 38.141266, 32.789707>,  <37.586140, 37.507027, 32.963459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361526, 38.141266, 32.789707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711430, 38.106934, 32.598946>,  <37.921371, 38.086334, 32.484489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711430, 38.106934, 32.598946>,  <37.361526, 38.141266, 32.789707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711430, 38.106934, 32.598946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402360, 0.419759, -0.813578,
		0.270011, 0.903568, 0.332653,
		0.874757, -0.085829, -0.476899,
		37.973858, 38.081184, 32.455875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386406, 38.706326, 32.478527>,  <37.361526, 38.141266, 32.789707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386406, 38.706326, 32.478527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640224, 38.486118, 32.261539>,  <37.792515, 38.353992, 32.131348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640224, 38.486118, 32.261539>,  <37.386406, 38.706326, 32.478527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640224, 38.486118, 32.261539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342876, 0.428514, -0.835950,
		0.692665, 0.716451, 0.083153,
		0.634549, -0.550522, -0.542470,
		37.830589, 38.320961, 32.098797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578461, 39.486397, 32.518661>,  <37.386406, 38.706326, 32.478527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578461, 39.486397, 32.518661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409504, 39.843895, 32.579060>,  <37.308132, 40.058395, 32.615299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409504, 39.843895, 32.579060>,  <37.578461, 39.486397, 32.518661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409504, 39.843895, 32.579060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053354, -0.141783, 0.988459,
		0.904843, 0.425571, 0.012203,
		-0.422389, 0.893749, 0.150997,
		37.282787, 40.112019, 32.624359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948376, 39.677578, 33.055470>,  <37.578461, 39.486397, 32.518661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948376, 39.677578, 33.055470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.604675, 39.882042, 33.047398>,  <37.398457, 40.004719, 33.042553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.604675, 39.882042, 33.047398>,  <37.948376, 39.677578, 33.055470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604675, 39.882042, 33.047398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135907, -0.190071, 0.972318,
		0.493175, 0.838205, 0.232789,
		-0.859248, 0.511161, -0.020180,
		37.346901, 40.035389, 33.041344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949982, 40.128727, 33.647411>,  <37.948376, 39.677578, 33.055470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949982, 40.128727, 33.647411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564247, 40.127571, 33.541550>,  <37.332806, 40.126877, 33.478031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564247, 40.127571, 33.541550>,  <37.949982, 40.128727, 33.647411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564247, 40.127571, 33.541550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258132, -0.210695, 0.942855,
		-0.058485, 0.977548, 0.202436,
		-0.964338, -0.002887, -0.264659,
		37.274944, 40.126705, 33.462151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676628, 40.475700, 34.165485>,  <37.949982, 40.128727, 33.647411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676628, 40.475700, 34.165485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.367863, 40.274117, 34.010475>,  <37.182606, 40.153168, 33.917469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.367863, 40.274117, 34.010475>,  <37.676628, 40.475700, 34.165485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367863, 40.274117, 34.010475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194416, -0.393243, 0.898645,
		-0.605274, 0.769015, 0.205571,
		-0.771910, -0.503960, -0.387528,
		37.136288, 40.122929, 33.894218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014977, 40.560505, 34.567707>,  <37.676628, 40.475700, 34.165485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014977, 40.560505, 34.567707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.939777, 40.218739, 34.373955>,  <36.894657, 40.013680, 34.257702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.939777, 40.218739, 34.373955>,  <37.014977, 40.560505, 34.567707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939777, 40.218739, 34.373955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401696, -0.383151, 0.831767,
		-0.896268, 0.350947, -0.271183,
		-0.188002, -0.854419, -0.484380,
		36.883377, 39.962414, 34.228642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336979, 40.386230, 34.778568>,  <37.014977, 40.560505, 34.567707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336979, 40.386230, 34.778568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465626, 40.033096, 34.641651>,  <36.542812, 39.821217, 34.559502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465626, 40.033096, 34.641651>,  <36.336979, 40.386230, 34.778568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465626, 40.033096, 34.641651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393703, -0.453452, 0.799612,
		-0.861140, -0.122405, -0.493412,
		0.321616, -0.882835, -0.342294,
		36.562111, 39.768246, 34.538963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842854, 40.015102, 34.844765>,  <36.336979, 40.386230, 34.778568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842854, 40.015102, 34.844765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.138054, 39.749420, 34.797115>,  <36.315174, 39.590012, 34.768524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.138054, 39.749420, 34.797115>,  <35.842854, 40.015102, 34.844765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138054, 39.749420, 34.797115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361654, -0.538348, 0.761175,
		-0.569711, -0.518660, -0.637511,
		0.737994, -0.664209, -0.119127,
		36.359451, 39.550159, 34.761379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550758, 39.299595, 34.850792>,  <35.842854, 40.015102, 34.844765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550758, 39.299595, 34.850792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939888, 39.272243, 34.939281>,  <36.173367, 39.255833, 34.992374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939888, 39.272243, 34.939281>,  <35.550758, 39.299595, 34.850792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939888, 39.272243, 34.939281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218420, -0.588153, 0.778697,
		0.076870, -0.805854, -0.587103,
		0.972823, -0.068377, 0.221226,
		36.231735, 39.251732, 35.005650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570572, 38.595829, 35.008675>,  <35.550758, 39.299595, 34.850792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570572, 38.595829, 35.008675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.920429, 38.725090, 35.153214>,  <36.130344, 38.802647, 35.239937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.920429, 38.725090, 35.153214>,  <35.570572, 38.595829, 35.008675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920429, 38.725090, 35.153214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141491, -0.542764, 0.827881,
		0.463662, -0.775227, -0.429000,
		0.874641, 0.323157, 0.361347,
		36.182823, 38.822037, 35.261616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926380, 38.003822, 35.161175>,  <35.570572, 38.595829, 35.008675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926380, 38.003822, 35.161175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107182, 38.293522, 35.369469>,  <36.215664, 38.467342, 35.494446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107182, 38.293522, 35.369469>,  <35.926380, 38.003822, 35.161175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107182, 38.293522, 35.369469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148667, -0.514439, 0.844542,
		0.879541, -0.459150, -0.124856,
		0.452002, 0.724248, 0.520730,
		36.242783, 38.510796, 35.525688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579716, 37.699871, 35.688007>,  <35.926380, 38.003822, 35.161175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579716, 37.699871, 35.688007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445976, 38.057438, 35.807423>,  <36.365730, 38.271976, 35.879070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445976, 38.057438, 35.807423>,  <36.579716, 37.699871, 35.688007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445976, 38.057438, 35.807423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049000, -0.299849, 0.952727,
		0.941173, 0.333175, 0.056453,
		-0.334352, 0.893916, 0.298535,
		36.345669, 38.325611, 35.896984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100357, 37.972679, 36.194458>,  <36.579716, 37.699871, 35.688007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100357, 37.972679, 36.194458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.715656, 38.072498, 36.239628>,  <36.484837, 38.132389, 36.266727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.715656, 38.072498, 36.239628>,  <37.100357, 37.972679, 36.194458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715656, 38.072498, 36.239628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012799, -0.370871, 0.928596,
		0.273607, 0.894529, 0.353493,
		-0.961757, 0.249546, 0.112922,
		36.427128, 38.147362, 36.273506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.356861, 41.391048, 29.062757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993343, 41.488853, 29.197994>,  <36.775234, 41.547535, 29.279137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993343, 41.488853, 29.197994>,  <37.356861, 41.391048, 29.062757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993343, 41.488853, 29.197994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382770, 0.166064, 0.908796,
		0.166064, 0.955321, -0.244509,
		-0.908796, 0.244509, 0.338091,
		36.720703, 41.562206, 29.299421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445087, 41.918396, 29.509726>,  <37.356861, 41.391048, 29.062757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445087, 41.918396, 29.509726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090755, 41.775208, 29.627819>,  <36.878159, 41.689293, 29.698675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090755, 41.775208, 29.627819>,  <37.445087, 41.918396, 29.509726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090755, 41.775208, 29.627819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272707, 0.113145, 0.955421,
		-0.375422, 0.926850, -0.002604,
		-0.885827, -0.357976, 0.295236,
		36.825008, 41.667816, 29.716391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273788, 42.284885, 30.144072>,  <37.445087, 41.918396, 29.509726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273788, 42.284885, 30.144072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042355, 41.959335, 30.165428>,  <36.903496, 41.764008, 30.178242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042355, 41.959335, 30.165428>,  <37.273788, 42.284885, 30.144072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042355, 41.959335, 30.165428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396356, -0.223353, 0.890514,
		-0.712840, 0.536400, 0.451812,
		-0.578586, -0.813872, 0.053391,
		36.868778, 41.715172, 30.181446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980343, 42.198345, 30.863422>,  <37.273788, 42.284885, 30.144072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980343, 42.198345, 30.863422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932129, 41.821682, 30.737726>,  <36.903202, 41.595684, 30.662310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932129, 41.821682, 30.737726>,  <36.980343, 42.198345, 30.863422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932129, 41.821682, 30.737726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308028, -0.336400, 0.889918,
		-0.943711, 0.010471, 0.330606,
		-0.120534, -0.941661, -0.314239,
		36.895969, 41.539185, 30.643454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534374, 41.857986, 31.368328>,  <36.980343, 42.198345, 30.863422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534374, 41.857986, 31.368328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696785, 41.553776, 31.165646>,  <36.794231, 41.371250, 31.044037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696785, 41.553776, 31.165646>,  <36.534374, 41.857986, 31.368328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696785, 41.553776, 31.165646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136197, -0.497917, 0.856464,
		-0.903657, -0.416755, -0.098585,
		0.406023, -0.760522, -0.506706,
		36.818592, 41.325619, 31.013634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174328, 41.317722, 31.645227>,  <36.534374, 41.857986, 31.368328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174328, 41.317722, 31.645227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515388, 41.186687, 31.482414>,  <36.720024, 41.108067, 31.384726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515388, 41.186687, 31.482414>,  <36.174328, 41.317722, 31.645227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515388, 41.186687, 31.482414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194158, -0.524593, 0.828918,
		-0.485066, -0.785806, -0.383692,
		0.852651, -0.327583, -0.407033,
		36.771183, 41.088413, 31.360304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162777, 40.574276, 31.640465>,  <36.174328, 41.317722, 31.645227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162777, 40.574276, 31.640465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543877, 40.695446, 31.649431>,  <36.772537, 40.768147, 31.654810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543877, 40.695446, 31.649431>,  <36.162777, 40.574276, 31.640465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543877, 40.695446, 31.649431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184605, -0.636055, 0.749236,
		0.241220, -0.709698, -0.661923,
		0.952751, 0.302925, 0.022415,
		36.829700, 40.786324, 31.656157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560429, 39.918678, 31.584175>,  <36.162777, 40.574276, 31.640465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560429, 39.918678, 31.584175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806858, 40.199783, 31.726488>,  <36.954716, 40.368446, 31.811876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806858, 40.199783, 31.726488>,  <36.560429, 39.918678, 31.584175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806858, 40.199783, 31.726488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108600, -0.523142, 0.845298,
		0.780169, -0.482125, -0.398612,
		0.616070, 0.702764, 0.355780,
		36.991680, 40.410614, 31.833221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127930, 39.616745, 31.916067>,  <36.560429, 39.918678, 31.584175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127930, 39.616745, 31.916067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136524, 39.988873, 32.062511>,  <37.141682, 40.212151, 32.150379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136524, 39.988873, 32.062511>,  <37.127930, 39.616745, 31.916067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136524, 39.988873, 32.062511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142526, -0.365307, 0.919911,
		0.989558, 0.032417, -0.140444,
		0.021485, 0.930322, 0.366113,
		37.142971, 40.267971, 32.172344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474388, 39.037209, 31.720875>,  <37.127930, 39.616745, 31.916067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474388, 39.037209, 31.720875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632870, 38.675747, 31.655842>,  <37.727959, 38.458870, 31.616821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632870, 38.675747, 31.655842>,  <37.474388, 39.037209, 31.720875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632870, 38.675747, 31.655842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174981, 0.099515, -0.979530,
		0.901336, 0.416539, -0.118694,
		0.396201, -0.903655, -0.162583,
		37.751728, 38.404652, 31.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857487, 39.069214, 31.156918>,  <37.474388, 39.037209, 31.720875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857487, 39.069214, 31.156918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768314, 38.679291, 31.159954>,  <37.714809, 38.445339, 31.161776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768314, 38.679291, 31.159954>,  <37.857487, 39.069214, 31.156918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768314, 38.679291, 31.159954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153148, 0.027332, -0.987825,
		0.962729, -0.221380, -0.155383,
		-0.222931, -0.974805, 0.007590,
		37.701435, 38.386848, 31.162231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197979, 38.779930, 30.515432>,  <37.857487, 39.069214, 31.156918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197979, 38.779930, 30.515432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919472, 38.517052, 30.630880>,  <37.752365, 38.359325, 30.700150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919472, 38.517052, 30.630880>,  <38.197979, 38.779930, 30.515432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919472, 38.517052, 30.630880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213388, -0.194400, -0.957431,
		0.685327, -0.728219, -0.004883,
		-0.696270, -0.657195, 0.288621,
		37.710590, 38.319893, 30.717466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279137, 38.259834, 30.058178>,  <38.197979, 38.779930, 30.515432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279137, 38.259834, 30.058178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913197, 38.198833, 30.207735>,  <37.693634, 38.162231, 30.297470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913197, 38.198833, 30.207735>,  <38.279137, 38.259834, 30.058178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913197, 38.198833, 30.207735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349526, -0.164583, -0.922358,
		0.202202, -0.974502, 0.097263,
		-0.914848, -0.152507, 0.373893,
		37.638741, 38.153080, 30.319902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976631, 37.637695, 29.733719>,  <38.279137, 38.259834, 30.058178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976631, 37.637695, 29.733719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670013, 37.863213, 29.856709>,  <37.486042, 37.998524, 29.930502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670013, 37.863213, 29.856709>,  <37.976631, 37.637695, 29.733719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670013, 37.863213, 29.856709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379547, -0.011519, -0.925101,
		-0.518027, -0.825834, 0.222817,
		-0.766546, 0.563796, 0.307475,
		37.440048, 38.032352, 29.948952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426407, 37.236046, 29.534637>,  <37.976631, 37.637695, 29.733719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426407, 37.236046, 29.534637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334763, 37.623135, 29.576618>,  <37.279778, 37.855389, 29.601807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334763, 37.623135, 29.576618>,  <37.426407, 37.236046, 29.534637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334763, 37.623135, 29.576618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364734, 0.014618, -0.930997,
		-0.902485, -0.251578, 0.349613,
		-0.229108, 0.967726, 0.104951,
		37.266029, 37.913452, 29.608103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837505, 37.250797, 29.177229>,  <37.426407, 37.236046, 29.534637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837505, 37.250797, 29.177229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922386, 37.640667, 29.205471>,  <36.973316, 37.874588, 29.222416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922386, 37.640667, 29.205471>,  <36.837505, 37.250797, 29.177229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922386, 37.640667, 29.205471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256053, 0.125182, -0.958523,
		-0.943083, 0.185326, 0.276132,
		0.212206, 0.974671, 0.070604,
		36.986050, 37.933067, 29.226652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269207, 37.533398, 28.816219>,  <36.837505, 37.250797, 29.177229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269207, 37.533398, 28.816219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546341, 37.821804, 28.811907>,  <36.712624, 37.994846, 28.809319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546341, 37.821804, 28.811907>,  <36.269207, 37.533398, 28.816219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546341, 37.821804, 28.811907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316212, 0.290349, -0.903165,
		-0.648063, 0.629156, 0.429158,
		0.692838, 0.721013, -0.010782,
		36.754192, 38.038109, 28.808672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996662, 38.034119, 28.363733>,  <36.269207, 37.533398, 28.816219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996662, 38.034119, 28.363733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381195, 38.140083, 28.393808>,  <36.611916, 38.203663, 28.411854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381195, 38.140083, 28.393808>,  <35.996662, 38.034119, 28.363733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381195, 38.140083, 28.393808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062366, 0.475391, -0.877561,
		-0.268223, 0.838942, 0.473532,
		0.961336, 0.264914, 0.075189,
		36.669598, 38.219559, 28.416365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045994, 38.768608, 28.140957>,  <35.996662, 38.034119, 28.363733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045994, 38.768608, 28.140957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397114, 38.583256, 28.092390>,  <36.607788, 38.472046, 28.063250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397114, 38.583256, 28.092390>,  <36.045994, 38.768608, 28.140957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397114, 38.583256, 28.092390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065605, 0.367372, -0.927757,
		0.474506, 0.806424, 0.352881,
		0.877804, -0.463377, -0.121415,
		36.660454, 38.444244, 28.055965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349548, 39.070980, 27.606310>,  <36.045994, 38.768608, 28.140957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349548, 39.070980, 27.606310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613049, 38.770477, 27.622593>,  <36.771149, 38.590176, 27.632362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613049, 38.770477, 27.622593>,  <36.349548, 39.070980, 27.606310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613049, 38.770477, 27.622593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442244, 0.342880, -0.828766,
		0.608662, 0.563951, 0.558112,
		0.658750, -0.751260, 0.040706,
		36.810673, 38.545097, 27.634804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995750, 39.343147, 27.492264>,  <36.349548, 39.070980, 27.606310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995750, 39.343147, 27.492264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997696, 38.963696, 27.365723>,  <36.998863, 38.736023, 27.289799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997696, 38.963696, 27.365723>,  <36.995750, 39.343147, 27.492264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997696, 38.963696, 27.365723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510878, 0.274313, -0.814712,
		0.859639, -0.157657, 0.485967,
		0.004862, -0.948629, -0.316353,
		36.999153, 38.679108, 27.270817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619335, 39.270790, 27.205627>,  <36.995750, 39.343147, 27.492264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619335, 39.270790, 27.205627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390682, 38.993240, 27.030457>,  <37.253490, 38.826710, 26.925354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390682, 38.993240, 27.030457>,  <37.619335, 39.270790, 27.205627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390682, 38.993240, 27.030457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374032, 0.254686, -0.891759,
		0.730300, -0.673557, 0.113943,
		-0.571631, -0.693870, -0.437930,
		37.219193, 38.785080, 26.899078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104485, 38.956291, 26.683517>,  <37.619335, 39.270790, 27.205627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104485, 38.956291, 26.683517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745583, 38.830555, 26.559498>,  <37.530243, 38.755116, 26.485086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745583, 38.830555, 26.559498>,  <38.104485, 38.956291, 26.683517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745583, 38.830555, 26.559498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288697, 0.113623, -0.950654,
		0.334057, -0.942486, -0.011200,
		-0.897251, -0.314339, -0.310049,
		37.476406, 38.736252, 26.466482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.477762, 38.412247, 26.922935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.678617, 38.756245, 26.959316>,  <31.799131, 38.962643, 26.981146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.678617, 38.756245, 26.959316>,  <31.477762, 38.412247, 26.922935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678617, 38.756245, 26.959316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143392, -0.186516, 0.971931,
		0.852816, -0.475002, -0.216973,
		0.502139, 0.859991, 0.090953,
		31.829260, 39.014240, 26.986603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053787, 38.200600, 27.277649>,  <31.477762, 38.412247, 26.922935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053787, 38.200600, 27.277649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.018612, 38.595299, 27.332203>,  <31.997507, 38.832119, 27.364935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.018612, 38.595299, 27.332203>,  <32.053787, 38.200600, 27.277649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018612, 38.595299, 27.332203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152451, -0.121972, 0.980756,
		0.984391, 0.107038, -0.139704,
		-0.087938, 0.986745, 0.136386,
		31.992231, 38.891323, 27.373119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584476, 38.303490, 27.662745>,  <32.053787, 38.200600, 27.277649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584476, 38.303490, 27.662745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.361816, 38.628323, 27.732796>,  <32.228222, 38.823223, 27.774826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.361816, 38.628323, 27.732796>,  <32.584476, 38.303490, 27.662745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361816, 38.628323, 27.732796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269715, -0.022726, 0.962672,
		0.785746, 0.583104, -0.206380,
		-0.556648, 0.812079, 0.175129,
		32.194820, 38.871948, 27.785334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943134, 38.684628, 28.085312>,  <32.584476, 38.303490, 27.662745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943134, 38.684628, 28.085312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.578510, 38.841457, 28.134859>,  <32.359737, 38.935555, 28.164587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.578510, 38.841457, 28.134859>,  <32.943134, 38.684628, 28.085312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578510, 38.841457, 28.134859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102894, -0.074148, 0.991925,
		0.398089, 0.916942, 0.027248,
		-0.911558, 0.392071, 0.123866,
		32.305042, 38.959080, 28.172018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030792, 39.295738, 28.554375>,  <32.943134, 38.684628, 28.085312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030792, 39.295738, 28.554375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.655430, 39.160046, 28.580679>,  <32.430214, 39.078632, 28.596462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.655430, 39.160046, 28.580679>,  <33.030792, 39.295738, 28.554375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655430, 39.160046, 28.580679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124482, -0.154348, 0.980143,
		-0.322341, 0.927956, 0.187068,
		-0.938403, -0.339227, 0.065762,
		32.373909, 39.058277, 28.600407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933865, 39.504059, 29.201069>,  <33.030792, 39.295738, 28.554375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933865, 39.504059, 29.201069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.626045, 39.275768, 29.086483>,  <32.441353, 39.138794, 29.017731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.626045, 39.275768, 29.086483>,  <32.933865, 39.504059, 29.201069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626045, 39.275768, 29.086483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065641, -0.375520, 0.924487,
		-0.635202, 0.730244, 0.251519,
		-0.769551, -0.570726, -0.286465,
		32.395180, 39.104549, 29.000544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472050, 39.620880, 29.703081>,  <32.933865, 39.504059, 29.201069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472050, 39.620880, 29.703081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395504, 39.268639, 29.529688>,  <32.349575, 39.057293, 29.425652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.395504, 39.268639, 29.529688>,  <32.472050, 39.620880, 29.703081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395504, 39.268639, 29.529688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087395, -0.455181, 0.886100,
		-0.977620, 0.131684, 0.164067,
		-0.191366, -0.880608, -0.433485,
		32.338093, 39.004456, 29.399643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080238, 39.215279, 30.142313>,  <32.472050, 39.620880, 29.703081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080238, 39.215279, 30.142313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.250134, 38.954868, 29.890673>,  <32.352070, 38.798622, 29.739689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.250134, 38.954868, 29.890673>,  <32.080238, 39.215279, 30.142313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250134, 38.954868, 29.890673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130904, -0.643428, 0.754231,
		-0.895805, -0.402698, -0.188063,
		0.424733, -0.651026, -0.629101,
		32.377552, 38.759560, 29.701942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733042, 38.762791, 30.414314>,  <32.080238, 39.215279, 30.142313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733042, 38.762791, 30.414314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.029564, 38.592747, 30.206566>,  <32.207478, 38.490719, 30.081917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.029564, 38.592747, 30.206566>,  <31.733042, 38.762791, 30.414314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029564, 38.592747, 30.206566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152238, -0.647163, 0.746997,
		-0.653649, -0.632835, -0.415045,
		0.741327, -0.425088, -0.519359,
		32.251957, 38.465214, 30.050755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579359, 38.007366, 30.491007>,  <31.733042, 38.762791, 30.414314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579359, 38.007366, 30.491007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.968447, 38.062366, 30.416265>,  <32.201900, 38.095367, 30.371420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.968447, 38.062366, 30.416265>,  <31.579359, 38.007366, 30.491007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968447, 38.062366, 30.416265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231682, -0.617347, 0.751802,
		-0.011984, -0.774582, -0.632360,
		0.972718, 0.137497, -0.186855,
		32.260262, 38.103615, 30.360209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894176, 37.328018, 30.408787>,  <31.579359, 38.007366, 30.491007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894176, 37.328018, 30.408787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.228344, 37.546825, 30.430128>,  <32.428844, 37.678108, 30.442934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.228344, 37.546825, 30.430128>,  <31.894176, 37.328018, 30.408787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228344, 37.546825, 30.430128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422007, -0.700623, 0.575359,
		0.352112, -0.458150, -0.816159,
		0.835420, 0.547016, 0.053355,
		32.478970, 37.710930, 30.446135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549862, 36.876705, 30.296505>,  <31.894176, 37.328018, 30.408787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549862, 36.876705, 30.296505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.649830, 37.197605, 30.513367>,  <32.709808, 37.390144, 30.643484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.649830, 37.197605, 30.513367>,  <32.549862, 36.876705, 30.296505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649830, 37.197605, 30.513367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319829, -0.596891, 0.735819,
		0.913921, -0.010496, -0.405756,
		0.249916, 0.802253, 0.542155,
		32.724804, 37.438282, 30.676014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231632, 36.796955, 30.507629>,  <32.549862, 36.876705, 30.296505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231632, 36.796955, 30.507629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.098785, 37.062607, 30.775549>,  <33.019077, 37.221996, 30.936300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.098785, 37.062607, 30.775549>,  <33.231632, 36.796955, 30.507629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098785, 37.062607, 30.775549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445120, -0.515710, 0.732059,
		0.831604, 0.541271, -0.124340,
		-0.332119, 0.664130, 0.669798,
		32.999149, 37.261845, 30.976488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818588, 36.906078, 31.007929>,  <33.231632, 36.796955, 30.507629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818588, 36.906078, 31.007929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.481194, 36.998787, 31.201759>,  <33.278755, 37.054413, 31.318058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.481194, 36.998787, 31.201759>,  <33.818588, 36.906078, 31.007929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481194, 36.998787, 31.201759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309398, -0.527805, 0.791009,
		0.439095, 0.817132, 0.373486,
		-0.843486, 0.231772, 0.484575,
		33.228149, 37.068317, 31.347132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526646, 36.585186, 30.994347>,  <33.818588, 36.906078, 31.007929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526646, 36.585186, 30.994347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639111, 36.201786, 30.975458>,  <34.706589, 35.971745, 30.964125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.639111, 36.201786, 30.975458>,  <34.526646, 36.585186, 30.994347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639111, 36.201786, 30.975458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021122, 0.043016, -0.998851,
		0.959429, 0.281834, -0.008151,
		0.281159, -0.958498, -0.047223,
		34.723457, 35.914238, 30.961290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184345, 36.574528, 30.720072>,  <34.526646, 36.585186, 30.994347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184345, 36.574528, 30.720072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998463, 36.227684, 30.648335>,  <34.886932, 36.019577, 30.605291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.998463, 36.227684, 30.648335>,  <35.184345, 36.574528, 30.720072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998463, 36.227684, 30.648335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009439, 0.207383, -0.978214,
		0.885412, -0.452894, -0.104557,
		-0.464711, -0.867110, -0.179344,
		34.859051, 35.967552, 30.594532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397392, 36.308105, 29.939188>,  <35.184345, 36.574528, 30.720072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397392, 36.308105, 29.939188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084373, 36.078869, 30.036499>,  <34.896561, 35.941326, 30.094885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084373, 36.078869, 30.036499>,  <35.397392, 36.308105, 29.939188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084373, 36.078869, 30.036499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321582, 0.037481, -0.946140,
		0.533106, -0.818634, -0.213626,
		-0.782549, -0.573091, 0.243277,
		34.849609, 35.906940, 30.109482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481071, 35.714497, 29.606880>,  <35.397392, 36.308105, 29.939188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481071, 35.714497, 29.606880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093025, 35.791061, 29.666538>,  <34.860199, 35.837002, 29.702333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093025, 35.791061, 29.666538>,  <35.481071, 35.714497, 29.606880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093025, 35.791061, 29.666538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140465, 0.058216, -0.988373,
		-0.197871, -0.979781, -0.029590,
		-0.970112, 0.191414, 0.149144,
		34.801991, 35.848484, 29.711281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091908, 35.360683, 29.081589>,  <35.481071, 35.714497, 29.606880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091908, 35.360683, 29.081589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.792999, 35.589302, 29.217190>,  <34.613655, 35.726475, 29.298550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.792999, 35.589302, 29.217190>,  <35.091908, 35.360683, 29.081589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792999, 35.589302, 29.217190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418070, -0.007816, -0.908381,
		-0.516534, -0.820531, 0.244788,
		-0.747268, 0.571548, 0.339002,
		34.568817, 35.760765, 29.318890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382313, 34.997242, 28.862440>,  <35.091908, 35.360683, 29.081589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382313, 34.997242, 28.862440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.336620, 35.388176, 28.933743>,  <34.309204, 35.622734, 28.976524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.336620, 35.388176, 28.933743>,  <34.382313, 34.997242, 28.862440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336620, 35.388176, 28.933743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471292, 0.104642, -0.875747,
		-0.874548, -0.184052, 0.448655,
		-0.114235, 0.977331, 0.178257,
		34.302349, 35.681374, 28.987219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761959, 35.131409, 28.531197>,  <34.382313, 34.997242, 28.862440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761959, 35.131409, 28.531197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881577, 35.510853, 28.572592>,  <33.953346, 35.738518, 28.597429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881577, 35.510853, 28.572592>,  <33.761959, 35.131409, 28.531197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881577, 35.510853, 28.572592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449309, 0.235652, -0.861736,
		-0.841839, 0.211203, 0.496690,
		0.299048, 0.948610, 0.103486,
		33.971291, 35.795437, 28.603638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284878, 35.461281, 28.230230>,  <33.761959, 35.131409, 28.531197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284878, 35.461281, 28.230230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.567017, 35.744717, 28.238157>,  <33.736301, 35.914776, 28.242912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.567017, 35.744717, 28.238157>,  <33.284878, 35.461281, 28.230230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567017, 35.744717, 28.238157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325394, 0.348488, -0.879019,
		-0.629766, 0.613565, 0.476374,
		0.705346, 0.708586, 0.019815,
		33.778622, 35.957291, 28.244102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984268, 36.172150, 28.107798>,  <33.284878, 35.461281, 28.230230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984268, 36.172150, 28.107798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.366695, 36.220020, 28.000757>,  <33.596153, 36.248741, 27.936533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.366695, 36.220020, 28.000757>,  <32.984268, 36.172150, 28.107798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366695, 36.220020, 28.000757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292952, 0.356947, -0.886999,
		-0.010634, 0.926426, 0.376326,
		0.956068, 0.119677, -0.267603,
		33.653515, 36.255924, 27.920477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009567, 36.802387, 27.725235>,  <32.984268, 36.172150, 28.107798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009567, 36.802387, 27.725235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.345203, 36.609013, 27.625458>,  <33.546585, 36.492989, 27.565592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.345203, 36.609013, 27.625458>,  <33.009567, 36.802387, 27.725235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345203, 36.609013, 27.625458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016093, 0.480394, -0.876905,
		0.543761, 0.731784, 0.410872,
		0.839086, -0.483439, -0.249443,
		33.596928, 36.463982, 27.550625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458855, 37.358585, 27.478951>,  <33.009567, 36.802387, 27.725235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458855, 37.358585, 27.478951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.608936, 37.015614, 27.338074>,  <33.698986, 36.809830, 27.253548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.608936, 37.015614, 27.338074>,  <33.458855, 37.358585, 27.478951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608936, 37.015614, 27.338074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196239, 0.444816, -0.873859,
		0.905932, 0.258760, 0.335157,
		0.375203, -0.857428, -0.352194,
		33.721497, 36.758385, 27.232416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991531, 37.592125, 27.090012>,  <33.458855, 37.358585, 27.478951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991531, 37.592125, 27.090012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.880962, 37.232822, 26.953348>,  <33.814621, 37.017242, 26.871349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.880962, 37.232822, 26.953348>,  <33.991531, 37.592125, 27.090012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880962, 37.232822, 26.953348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015398, 0.351327, -0.936126,
		0.960912, -0.264031, -0.083284,
		-0.276426, -0.898252, -0.341660,
		33.798035, 36.963348, 26.850849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327152, 37.625957, 26.511003>,  <33.991531, 37.592125, 27.090012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327152, 37.625957, 26.511003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.063255, 37.331604, 26.450048>,  <33.904919, 37.154991, 26.413475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.063255, 37.331604, 26.450048>,  <34.327152, 37.625957, 26.511003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063255, 37.331604, 26.450048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029454, 0.227944, -0.973229,
		0.750918, -0.637588, -0.172058,
		-0.659739, -0.735882, -0.152387,
		33.865334, 37.110840, 26.404333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627316, 37.180542, 26.035637>,  <34.327152, 37.625957, 26.511003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627316, 37.180542, 26.035637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.229889, 37.145866, 26.006510>,  <33.991432, 37.125061, 25.989033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.229889, 37.145866, 26.006510>,  <34.627316, 37.180542, 26.035637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229889, 37.145866, 26.006510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061560, 0.126137, -0.990101,
		0.095017, -0.988218, -0.119990,
		-0.993570, -0.086689, -0.072819,
		33.931816, 37.119858, 25.984663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920654, 36.456585, 25.950670>,  <34.627316, 37.180542, 26.035637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920654, 36.456585, 25.950670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.260109, 36.299828, 25.808550>,  <35.463779, 36.205772, 25.723278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.260109, 36.299828, 25.808550>,  <34.920654, 36.456585, 25.950670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260109, 36.299828, 25.808550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184984, -0.409406, 0.893402,
		-0.495583, -0.823896, -0.274941,
		0.848633, -0.391895, -0.355303,
		35.514698, 36.182259, 25.701960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876408, 35.860703, 26.276520>,  <34.920654, 36.456585, 25.950670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876408, 35.860703, 26.276520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.258762, 35.832386, 26.162491>,  <35.488174, 35.815395, 26.094074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.258762, 35.832386, 26.162491>,  <34.876408, 35.860703, 26.276520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258762, 35.832386, 26.162491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258772, -0.256223, 0.931336,
		-0.138972, -0.964022, -0.226602,
		0.955889, -0.070791, -0.285070,
		35.545528, 35.811150, 26.076969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272820, 35.162254, 26.387415>,  <34.876408, 35.860703, 26.276520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272820, 35.162254, 26.387415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549343, 35.451279, 26.386101>,  <35.715256, 35.624691, 26.385311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549343, 35.451279, 26.386101>,  <35.272820, 35.162254, 26.387415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549343, 35.451279, 26.386101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376705, -0.356523, 0.854976,
		0.616597, -0.592287, -0.518657,
		0.691304, 0.722556, -0.003286,
		35.756733, 35.668045, 26.385115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850330, 34.814972, 26.431009>,  <35.272820, 35.162254, 26.387415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850330, 34.814972, 26.431009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980659, 35.179726, 26.530848>,  <36.058857, 35.398579, 26.590752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980659, 35.179726, 26.530848>,  <35.850330, 34.814972, 26.431009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980659, 35.179726, 26.530848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454101, -0.382500, 0.804665,
		0.829236, -0.148835, -0.538717,
		0.325822, 0.911889, 0.249597,
		36.078407, 35.453293, 26.605726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494286, 34.758408, 26.754383>,  <35.850330, 34.814972, 26.431009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494286, 34.758408, 26.754383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.457497, 35.135006, 26.884081>,  <36.435425, 35.360966, 26.961899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.457497, 35.135006, 26.884081>,  <36.494286, 34.758408, 26.754383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457497, 35.135006, 26.884081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569327, -0.217433, 0.792836,
		0.816951, 0.257517, -0.516019,
		-0.091969, 0.941492, 0.324244,
		36.429905, 35.417454, 26.981354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225323, 34.987919, 26.966413>,  <36.494286, 34.758408, 26.754383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225323, 34.987919, 26.966413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.956440, 35.202583, 27.170429>,  <36.795113, 35.331383, 27.292839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.956440, 35.202583, 27.170429>,  <37.225323, 34.987919, 26.966413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956440, 35.202583, 27.170429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525708, -0.139104, 0.839215,
		0.521320, 0.832255, -0.188619,
		-0.672203, 0.536658, 0.510041,
		36.754780, 35.363583, 27.323441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565342, 35.419117, 27.413963>,  <37.225323, 34.987919, 26.966413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565342, 35.419117, 27.413963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204933, 35.403549, 27.586771>,  <36.988686, 35.394207, 27.690456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204933, 35.403549, 27.586771>,  <37.565342, 35.419117, 27.413963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204933, 35.403549, 27.586771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433563, -0.050167, 0.899725,
		-0.013342, 0.997982, 0.062075,
		-0.901024, -0.038918, 0.432019,
		36.934628, 35.391872, 27.716377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780449, 35.609875, 27.950302>,  <37.565342, 35.419117, 27.413963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780449, 35.609875, 27.950302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.414768, 35.471336, 28.034481>,  <37.195362, 35.388214, 28.084988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.414768, 35.471336, 28.034481>,  <37.780449, 35.609875, 27.950302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414768, 35.471336, 28.034481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309548, -0.261580, 0.914197,
		-0.261580, 0.900900, 0.346346,
		-0.914197, -0.346346, 0.210448,
		37.140511, 35.367432, 28.097616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526115, 35.924702, 28.510683>,  <37.780449, 35.609875, 27.950302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526115, 35.924702, 28.510683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382320, 35.553444, 28.472069>,  <37.296043, 35.330688, 28.448900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382320, 35.553444, 28.472069>,  <37.526115, 35.924702, 28.510683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382320, 35.553444, 28.472069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432075, -0.257252, 0.864368,
		-0.827090, 0.269022, 0.493507,
		-0.359490, -0.928142, -0.096533,
		37.274475, 35.275002, 28.443110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142632, 35.702824, 29.056423>,  <37.526115, 35.924702, 28.510683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142632, 35.702824, 29.056423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277916, 35.362461, 28.895638>,  <37.359089, 35.158245, 28.799166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277916, 35.362461, 28.895638>,  <37.142632, 35.702824, 29.056423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277916, 35.362461, 28.895638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395896, -0.258851, 0.881058,
		-0.853744, -0.457122, 0.249322,
		0.338213, -0.850903, -0.401965,
		37.379379, 35.107189, 28.775047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850212, 35.220654, 29.460478>,  <37.142632, 35.702824, 29.056423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850212, 35.220654, 29.460478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162529, 35.052090, 29.275970>,  <37.349918, 34.950951, 29.165266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162529, 35.052090, 29.275970>,  <36.850212, 35.220654, 29.460478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162529, 35.052090, 29.275970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258524, -0.454203, 0.852564,
		-0.568792, -0.784927, -0.245694,
		0.780795, -0.421414, -0.461269,
		37.396767, 34.925667, 29.137590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939720, 34.672146, 29.771326>,  <36.850212, 35.220654, 29.460478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939720, 34.672146, 29.771326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.286320, 34.688244, 29.572304>,  <37.494278, 34.697903, 29.452890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.286320, 34.688244, 29.572304>,  <36.939720, 34.672146, 29.771326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286320, 34.688244, 29.572304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495298, -0.193366, 0.846929,
		-0.062124, -0.980301, -0.187485,
		0.866499, 0.040246, -0.497554,
		37.546268, 34.700317, 29.423037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422112, 34.185345, 30.152809>,  <36.939720, 34.672146, 29.771326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422112, 34.185345, 30.152809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.652363, 34.395939, 29.902542>,  <37.790512, 34.522297, 29.752382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.652363, 34.395939, 29.902542>,  <37.422112, 34.185345, 30.152809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652363, 34.395939, 29.902542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747401, -0.028352, 0.663767,
		0.331726, -0.849710, -0.409818,
		0.575629, 0.526488, -0.625669,
		37.825050, 34.553886, 29.714842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068363, 33.820152, 30.049231>,  <37.422112, 34.185345, 30.152809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068363, 33.820152, 30.049231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176922, 34.197067, 29.970816>,  <38.242058, 34.423218, 29.923767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176922, 34.197067, 29.970816>,  <38.068363, 33.820152, 30.049231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176922, 34.197067, 29.970816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632446, -0.021066, 0.774318,
		0.725503, -0.334134, -0.601664,
		0.271401, 0.942290, -0.196038,
		38.258343, 34.479755, 29.912004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.182144, 38.502548, 26.089993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795071, 38.599586, 26.062443>,  <37.562828, 38.657810, 26.045914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795071, 38.599586, 26.062443>,  <38.182144, 38.502548, 26.089993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795071, 38.599586, 26.062443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126228, 0.229522, -0.965083,
		-0.218314, -0.942586, -0.252726,
		-0.967681, 0.242592, -0.068874,
		37.504768, 38.672363, 26.041780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918049, 38.375229, 25.461731>,  <38.182144, 38.502548, 26.089993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918049, 38.375229, 25.461731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.581760, 38.557346, 25.578959>,  <37.379986, 38.666615, 25.649296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.581760, 38.557346, 25.578959>,  <37.918049, 38.375229, 25.461731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581760, 38.557346, 25.578959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270631, 0.115463, -0.955734,
		-0.468977, -0.882824, 0.026143,
		-0.840725, 0.455292, 0.293069,
		37.329544, 38.693935, 25.666880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439156, 37.930805, 25.184879>,  <37.918049, 38.375229, 25.461731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439156, 37.930805, 25.184879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.291225, 38.299969, 25.227716>,  <37.202465, 38.521465, 25.253420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.291225, 38.299969, 25.227716>,  <37.439156, 37.930805, 25.184879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291225, 38.299969, 25.227716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272952, 0.002255, -0.962025,
		-0.888101, -0.385016, 0.251075,
		-0.369829, 0.922907, 0.107094,
		37.180275, 38.576839, 25.259844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700394, 37.948513, 24.856970>,  <37.439156, 37.930805, 25.184879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700394, 37.948513, 24.856970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832878, 38.325321, 24.878489>,  <36.912369, 38.551407, 24.891399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832878, 38.325321, 24.878489>,  <36.700394, 37.948513, 24.856970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832878, 38.325321, 24.878489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282692, 0.153467, -0.946854,
		-0.900213, 0.298401, 0.317132,
		0.331211, 0.942022, 0.053798,
		36.932243, 38.607929, 24.894629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183739, 38.382782, 24.595106>,  <36.700394, 37.948513, 24.856970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183739, 38.382782, 24.595106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515675, 38.603069, 24.559149>,  <36.714836, 38.735241, 24.537575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515675, 38.603069, 24.559149>,  <36.183739, 38.382782, 24.595106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515675, 38.603069, 24.559149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275423, 0.264135, -0.924324,
		-0.485298, 0.791797, 0.370869,
		0.829836, 0.550718, -0.089895,
		36.764626, 38.768284, 24.532181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905262, 39.063755, 24.429403>,  <36.183739, 38.382782, 24.595106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905262, 39.063755, 24.429403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.289688, 39.053185, 24.319378>,  <36.520344, 39.046841, 24.253363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.289688, 39.053185, 24.319378>,  <35.905262, 39.063755, 24.429403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289688, 39.053185, 24.319378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236372, 0.436985, -0.867855,
		0.143136, 0.899080, 0.413723,
		0.961062, -0.026428, -0.275066,
		36.578007, 39.045258, 24.236858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939949, 39.684471, 24.160351>,  <35.905262, 39.063755, 24.429403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939949, 39.684471, 24.160351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278851, 39.510067, 24.038984>,  <36.482189, 39.405422, 23.966164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278851, 39.510067, 24.038984>,  <35.939949, 39.684471, 24.160351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278851, 39.510067, 24.038984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046332, 0.508360, -0.859897,
		0.529171, 0.742605, 0.410507,
		0.847249, -0.436013, -0.303416,
		36.533024, 39.379265, 23.947960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303810, 40.250278, 23.944702>,  <35.939949, 39.684471, 24.160351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303810, 40.250278, 23.944702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.422207, 39.903748, 23.783772>,  <36.493244, 39.695827, 23.687214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.422207, 39.903748, 23.783772>,  <36.303810, 40.250278, 23.944702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422207, 39.903748, 23.783772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195991, 0.357155, -0.913251,
		0.934867, 0.349166, -0.064078,
		0.295991, -0.866327, -0.402326,
		36.511005, 39.643848, 23.663074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692482, 40.419617, 23.373579>,  <36.303810, 40.250278, 23.944702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692482, 40.419617, 23.373579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.595612, 40.041309, 23.286982>,  <36.537491, 39.814323, 23.235023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.595612, 40.041309, 23.286982>,  <36.692482, 40.419617, 23.373579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595612, 40.041309, 23.286982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143317, 0.255559, -0.956112,
		0.959589, -0.200521, -0.197435,
		-0.242176, -0.945770, -0.216493,
		36.522957, 39.757580, 23.222034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957016, 40.376976, 22.683872>,  <36.692482, 40.419617, 23.373579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957016, 40.376976, 22.683872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741688, 40.040470, 22.703848>,  <36.612492, 39.838566, 22.715834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741688, 40.040470, 22.703848>,  <36.957016, 40.376976, 22.683872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741688, 40.040470, 22.703848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177745, 0.055412, -0.982515,
		0.823784, -0.537783, -0.179359,
		-0.538319, -0.841261, 0.049941,
		36.580193, 39.788094, 22.718830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133461, 40.005188, 22.148243>,  <36.957016, 40.376976, 22.683872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133461, 40.005188, 22.148243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.770111, 39.855331, 22.222544>,  <36.552101, 39.765419, 22.267124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.770111, 39.855331, 22.222544>,  <37.133461, 40.005188, 22.148243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770111, 39.855331, 22.222544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252323, 0.136853, -0.957917,
		0.333453, -0.917015, -0.218844,
		-0.908373, -0.374639, 0.185750,
		36.497601, 39.742939, 22.278269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988586, 39.430717, 21.715723>,  <37.133461, 40.005188, 22.148243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988586, 39.430717, 21.715723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.635162, 39.586296, 21.820061>,  <36.423107, 39.679642, 21.882664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.635162, 39.586296, 21.820061>,  <36.988586, 39.430717, 21.715723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635162, 39.586296, 21.820061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253207, 0.071798, -0.964744,
		-0.393962, -0.918458, 0.035046,
		-0.883561, 0.388946, 0.260846,
		36.370094, 39.702980, 21.898315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534767, 39.176868, 21.200716>,  <36.988586, 39.430717, 21.715723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534767, 39.176868, 21.200716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387970, 39.512020, 21.362349>,  <36.299892, 39.713112, 21.459328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387970, 39.512020, 21.362349>,  <36.534767, 39.176868, 21.200716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387970, 39.512020, 21.362349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161523, 0.370393, -0.914724,
		-0.916094, -0.400963, -0.000595,
		-0.366990, 0.837877, 0.404079,
		36.277874, 39.763382, 21.483572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816113, 39.356941, 20.896917>,  <36.534767, 39.176868, 21.200716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816113, 39.356941, 20.896917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062737, 39.641819, 21.031158>,  <36.210712, 39.812748, 21.111704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.062737, 39.641819, 21.031158>,  <35.816113, 39.356941, 20.896917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062737, 39.641819, 21.031158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186052, 0.282393, -0.941084,
		-0.765010, 0.642673, 0.041606,
		0.616559, 0.712198, 0.335604,
		36.247704, 39.855480, 21.131840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907829, 38.681965, 20.801125>,  <35.816113, 39.356941, 20.896917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907829, 38.681965, 20.801125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535851, 38.535847, 20.784336>,  <35.312664, 38.448177, 20.774263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535851, 38.535847, 20.784336>,  <35.907829, 38.681965, 20.801125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535851, 38.535847, 20.784336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149896, -0.480859, 0.863890,
		-0.335754, 0.797081, 0.501928,
		-0.929947, -0.365292, -0.041971,
		35.256866, 38.426258, 20.771744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632084, 38.701584, 21.515499>,  <35.907829, 38.681965, 20.801125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632084, 38.701584, 21.515499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385677, 38.451221, 21.324183>,  <35.237831, 38.301006, 21.209393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385677, 38.451221, 21.324183>,  <35.632084, 38.701584, 21.515499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385677, 38.451221, 21.324183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179702, -0.479509, 0.858940,
		-0.766959, 0.615075, 0.182911,
		-0.616020, -0.625902, -0.478294,
		35.200871, 38.263451, 21.180695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969086, 38.718479, 21.866331>,  <35.632084, 38.701584, 21.515499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969086, 38.718479, 21.866331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039433, 38.381783, 21.662155>,  <35.081642, 38.179764, 21.539650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039433, 38.381783, 21.662155>,  <34.969086, 38.718479, 21.866331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039433, 38.381783, 21.662155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123010, -0.533248, 0.836968,
		-0.976698, -0.084405, -0.197322,
		0.175865, -0.841738, -0.510440,
		35.092194, 38.129261, 21.509024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526173, 38.293907, 22.147202>,  <34.969086, 38.718479, 21.866331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526173, 38.293907, 22.147202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767483, 38.036514, 21.958742>,  <34.912270, 37.882076, 21.845667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767483, 38.036514, 21.958742>,  <34.526173, 38.293907, 22.147202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767483, 38.036514, 21.958742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028092, -0.573249, 0.818900,
		-0.797036, -0.507260, -0.327752,
		0.603279, -0.643485, -0.471150,
		34.948467, 37.843468, 21.817398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265862, 37.692307, 22.203011>,  <34.526173, 38.293907, 22.147202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265862, 37.692307, 22.203011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649509, 37.607952, 22.127512>,  <34.879696, 37.557339, 22.082212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649509, 37.607952, 22.127512>,  <34.265862, 37.692307, 22.203011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649509, 37.607952, 22.127512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016974, -0.708575, 0.705431,
		-0.282506, -0.673386, -0.683185,
		0.959116, -0.210885, -0.188747,
		34.937244, 37.544685, 22.070889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364983, 36.944347, 22.260166>,  <34.265862, 37.692307, 22.203011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364983, 36.944347, 22.260166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725479, 37.110435, 22.309750>,  <34.941776, 37.210087, 22.339499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725479, 37.110435, 22.309750>,  <34.364983, 36.944347, 22.260166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725479, 37.110435, 22.309750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195816, -0.645428, 0.738295,
		0.386558, -0.641106, -0.662990,
		0.901237, 0.415218, 0.123957,
		34.995850, 37.235001, 22.346937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845867, 36.383003, 22.287365>,  <34.364983, 36.944347, 22.260166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845867, 36.383003, 22.287365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032619, 36.695011, 22.454023>,  <35.144672, 36.882214, 22.554018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032619, 36.695011, 22.454023>,  <34.845867, 36.383003, 22.287365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032619, 36.695011, 22.454023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198106, -0.551432, 0.810356,
		0.861843, -0.295803, -0.411981,
		0.466885, 0.780015, 0.416647,
		35.172684, 36.929016, 22.579018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457539, 36.078106, 22.606131>,  <34.845867, 36.383003, 22.287365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457539, 36.078106, 22.606131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389809, 36.423695, 22.795818>,  <35.349171, 36.631046, 22.909632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389809, 36.423695, 22.795818>,  <35.457539, 36.078106, 22.606131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389809, 36.423695, 22.795818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206288, -0.439440, 0.874264,
		0.963729, 0.245861, -0.103819,
		-0.169325, 0.863971, 0.474219,
		35.339012, 36.682884, 22.938084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969009, 36.088234, 23.051275>,  <35.457539, 36.078106, 22.606131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969009, 36.088234, 23.051275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.716793, 36.359207, 23.202799>,  <35.565464, 36.521793, 23.293713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.716793, 36.359207, 23.202799>,  <35.969009, 36.088234, 23.051275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716793, 36.359207, 23.202799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246063, -0.288407, 0.925351,
		0.736116, 0.676686, 0.015161,
		-0.630544, 0.677435, 0.378808,
		35.527630, 36.562439, 23.316441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378887, 36.535477, 23.551682>,  <35.969009, 36.088234, 23.051275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378887, 36.535477, 23.551682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990704, 36.535351, 23.648186>,  <35.757793, 36.535275, 23.706089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990704, 36.535351, 23.648186>,  <36.378887, 36.535477, 23.551682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990704, 36.535351, 23.648186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234288, -0.239881, 0.942107,
		0.057581, 0.970802, 0.232868,
		-0.970460, -0.000311, 0.241260,
		35.699566, 36.535259, 23.720564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367771, 36.731922, 24.201546>,  <36.378887, 36.535477, 23.551682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367771, 36.731922, 24.201546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002003, 36.573452, 24.168369>,  <35.782543, 36.478371, 24.148464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002003, 36.573452, 24.168369>,  <36.367771, 36.731922, 24.201546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002003, 36.573452, 24.168369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019340, -0.161912, 0.986616,
		-0.404305, 0.903785, 0.140394,
		-0.914420, -0.396179, -0.082942,
		35.727676, 36.454597, 24.143486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913822, 37.073235, 24.495787>,  <36.367771, 36.731922, 24.201546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913822, 37.073235, 24.495787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775555, 36.699387, 24.529238>,  <35.692593, 36.475079, 24.549309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775555, 36.699387, 24.529238>,  <35.913822, 37.073235, 24.495787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775555, 36.699387, 24.529238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073437, 0.061903, 0.995377,
		-0.935477, 0.350216, 0.047237,
		-0.345673, -0.934621, 0.083627,
		35.671852, 36.418999, 24.554325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896687, 37.070503, 25.194468>,  <35.913822, 37.073235, 24.495787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896687, 37.070503, 25.194468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757137, 36.715675, 25.073544>,  <35.673409, 36.502777, 25.000990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757137, 36.715675, 25.073544>,  <35.896687, 37.070503, 25.194468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757137, 36.715675, 25.073544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192826, -0.383620, 0.903136,
		-0.917118, 0.256787, 0.304885,
		-0.348873, -0.887072, -0.302309,
		35.652473, 36.449554, 24.982851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246334, 36.965992, 25.584364>,  <35.896687, 37.070503, 25.194468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246334, 36.965992, 25.584364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413532, 36.627754, 25.451544>,  <35.513851, 36.424812, 25.371853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413532, 36.627754, 25.451544>,  <35.246334, 36.965992, 25.584364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413532, 36.627754, 25.451544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134823, -0.303721, 0.943174,
		-0.898389, -0.439009, -0.012949,
		0.417994, -0.845591, -0.332048,
		35.538929, 36.374077, 25.351929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504620, 36.797356, 25.448818>,  <35.246334, 36.965992, 25.584364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504620, 36.797356, 25.448818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150833, 36.977634, 25.497156>,  <33.938560, 37.085800, 25.526159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.150833, 36.977634, 25.497156>,  <34.504620, 36.797356, 25.448818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150833, 36.977634, 25.497156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008201, 0.243923, -0.969760,
		-0.466540, -0.858707, -0.212045,
		-0.884462, 0.450692, 0.120843,
		33.885494, 37.112843, 25.533409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995995, 36.658356, 24.761402>,  <34.504620, 36.797356, 25.448818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995995, 36.658356, 24.761402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.846405, 36.969528, 24.963379>,  <33.756649, 37.156231, 25.084564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.846405, 36.969528, 24.963379>,  <33.995995, 36.658356, 24.761402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846405, 36.969528, 24.963379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036834, 0.531559, -0.846220,
		-0.926706, -0.335067, -0.170136,
		-0.373978, 0.777931, 0.504940,
		33.734211, 37.202908, 25.114861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286469, 36.781235, 24.451374>,  <33.995995, 36.658356, 24.761402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286469, 36.781235, 24.451374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411278, 37.120327, 24.622952>,  <33.486164, 37.323784, 24.725897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411278, 37.120327, 24.622952>,  <33.286469, 36.781235, 24.451374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411278, 37.120327, 24.622952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222224, 0.504079, -0.834578,
		-0.923720, 0.165085, 0.345670,
		0.312021, 0.847733, 0.428943,
		33.504883, 37.374645, 24.751635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942101, 37.257191, 24.038744>,  <33.286469, 36.781235, 24.451374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942101, 37.257191, 24.038744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224228, 37.466808, 24.229702>,  <33.393505, 37.592579, 24.344276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.224228, 37.466808, 24.229702>,  <32.942101, 37.257191, 24.038744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224228, 37.466808, 24.229702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088314, 0.733146, -0.674312,
		-0.703370, 0.433443, 0.563381,
		0.705316, 0.524045, 0.477394,
		33.435822, 37.624023, 24.372921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658695, 37.915035, 24.313704>,  <32.942101, 37.257191, 24.038744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658695, 37.915035, 24.313704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052979, 37.971420, 24.276810>,  <33.289547, 38.005253, 24.254673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.052979, 37.971420, 24.276810>,  <32.658695, 37.915035, 24.313704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052979, 37.971420, 24.276810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162496, 0.651304, -0.741214,
		-0.044411, 0.745609, 0.664903,
		0.985709, 0.140962, -0.092233,
		33.348690, 38.013710, 24.249140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570335, 38.623672, 24.228647>,  <32.658695, 37.915035, 24.313704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570335, 38.623672, 24.228647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926929, 38.504128, 24.092449>,  <33.140884, 38.432400, 24.010731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926929, 38.504128, 24.092449>,  <32.570335, 38.623672, 24.228647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926929, 38.504128, 24.092449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021426, 0.722903, -0.690617,
		0.452546, 0.622969, 0.638053,
		0.891483, -0.298865, -0.340495,
		33.194374, 38.414467, 23.990301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007816, 39.247391, 24.241709>,  <32.570335, 38.623672, 24.228647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007816, 39.247391, 24.241709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.175583, 39.012581, 23.964725>,  <33.276241, 38.871696, 23.798534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.175583, 39.012581, 23.964725>,  <33.007816, 39.247391, 24.241709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175583, 39.012581, 23.964725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224193, 0.672185, -0.705624,
		0.879677, 0.451192, 0.150316,
		0.419412, -0.587021, -0.692460,
		33.301407, 38.836475, 23.756989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001259, 39.958984, 24.290379>,  <33.007816, 39.247391, 24.241709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001259, 39.958984, 24.290379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.625134, 40.072701, 24.365204>,  <32.399460, 40.140930, 24.410099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.625134, 40.072701, 24.365204>,  <33.001259, 39.958984, 24.290379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625134, 40.072701, 24.365204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066334, -0.386026, 0.920100,
		0.333786, 0.877590, 0.344127,
		-0.940312, 0.284289, 0.187064,
		32.343040, 40.157986, 24.421324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992867, 40.202625, 25.012793>,  <33.001259, 39.958984, 24.290379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992867, 40.202625, 25.012793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600872, 40.146992, 24.955828>,  <32.365677, 40.113609, 24.921648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600872, 40.146992, 24.955828>,  <32.992867, 40.202625, 25.012793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600872, 40.146992, 24.955828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089058, -0.333488, 0.938539,
		-0.178032, 0.932438, 0.314426,
		-0.979986, -0.139088, -0.142413,
		32.306877, 40.105267, 24.913103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674568, 40.472595, 25.574125>,  <32.992867, 40.202625, 25.012793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674568, 40.472595, 25.574125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419403, 40.209583, 25.413765>,  <32.266304, 40.051777, 25.317549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419403, 40.209583, 25.413765>,  <32.674568, 40.472595, 25.574125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419403, 40.209583, 25.413765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231476, -0.332792, 0.914149,
		-0.734493, 0.675950, 0.060092,
		-0.637917, -0.657526, -0.400900,
		32.228027, 40.012325, 25.293495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943642, 40.591957, 25.807478>,  <32.674568, 40.472595, 25.574125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943642, 40.591957, 25.807478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972103, 40.210964, 25.689013>,  <31.989180, 39.982368, 25.617933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972103, 40.210964, 25.689013>,  <31.943642, 40.591957, 25.807478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972103, 40.210964, 25.689013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244106, -0.304517, 0.920696,
		-0.967135, 0.006785, -0.254174,
		0.071153, -0.952483, -0.296165,
		31.993448, 39.925220, 25.600163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323669, 40.283157, 26.023355>,  <31.943642, 40.591957, 25.807478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323669, 40.283157, 26.023355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606869, 40.004574, 25.976568>,  <31.776789, 39.837421, 25.948496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606869, 40.004574, 25.976568>,  <31.323669, 40.283157, 26.023355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606869, 40.004574, 25.976568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374961, -0.511067, 0.773443,
		-0.598453, -0.503736, -0.622980,
		0.707996, -0.696463, -0.116967,
		31.819267, 39.795635, 25.941479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013756, 39.704689, 26.268797>,  <31.323669, 40.283157, 26.023355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013756, 39.704689, 26.268797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.399954, 39.600594, 26.264954>,  <31.631674, 39.538136, 26.262648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.399954, 39.600594, 26.264954>,  <31.013756, 39.704689, 26.268797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399954, 39.600594, 26.264954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144395, -0.565696, 0.811873,
		-0.216715, -0.782473, -0.583755,
		0.965497, -0.260237, -0.009610,
		31.689604, 39.522522, 26.262070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044704, 39.000511, 26.561380>,  <31.013756, 39.704689, 26.268797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044704, 39.000511, 26.561380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.417942, 39.143269, 26.579092>,  <31.641886, 39.228924, 26.589720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.417942, 39.143269, 26.579092>,  <31.044704, 39.000511, 26.561380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417942, 39.143269, 26.579092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054843, -0.262897, 0.963264,
		0.355422, -0.896389, -0.264882,
		0.933096, 0.356892, 0.044279,
		31.697870, 39.250336, 26.592375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.845371, 42.626442, 22.734070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.943619, 42.245075, 22.664013>,  <35.002567, 42.016254, 22.621979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.943619, 42.245075, 22.664013>,  <34.845371, 42.626442, 22.734070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943619, 42.245075, 22.664013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256541, -0.110301, 0.960219,
		-0.934804, -0.280779, 0.217498,
		0.245619, -0.953413, -0.175141,
		35.017303, 41.959053, 22.611471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470203, 42.338074, 23.327490>,  <34.845371, 42.626442, 22.734070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470203, 42.338074, 23.327490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717522, 42.040615, 23.225746>,  <34.865913, 41.862141, 23.164700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717522, 42.040615, 23.225746>,  <34.470203, 42.338074, 23.327490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717522, 42.040615, 23.225746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203103, -0.161463, 0.965753,
		-0.759251, -0.648780, 0.051205,
		0.618293, -0.743649, -0.254360,
		34.903011, 41.817520, 23.149439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263134, 41.814487, 23.811459>,  <34.470203, 42.338074, 23.327490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263134, 41.814487, 23.811459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.636082, 41.747162, 23.683481>,  <34.859848, 41.706768, 23.606695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.636082, 41.747162, 23.683481>,  <34.263134, 41.814487, 23.811459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636082, 41.747162, 23.683481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265350, -0.282450, 0.921852,
		-0.245521, -0.944402, -0.218687,
		0.932368, -0.168305, -0.319944,
		34.915791, 41.696667, 23.587498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391003, 41.126244, 23.915548>,  <34.263134, 41.814487, 23.811459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391003, 41.126244, 23.915548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.739376, 41.322403, 23.928104>,  <34.948399, 41.440098, 23.935638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.739376, 41.322403, 23.928104>,  <34.391003, 41.126244, 23.915548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739376, 41.322403, 23.928104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232340, -0.467238, 0.853058,
		0.433005, -0.735663, -0.520872,
		0.870933, 0.490397, 0.031392,
		35.000656, 41.469521, 23.937523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865822, 40.640381, 24.204327>,  <34.391003, 41.126244, 23.915548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865822, 40.640381, 24.204327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034988, 41.000916, 24.241692>,  <35.136490, 41.217236, 24.264111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.034988, 41.000916, 24.241692>,  <34.865822, 40.640381, 24.204327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034988, 41.000916, 24.241692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204692, -0.195442, 0.959116,
		0.882747, -0.386506, -0.267153,
		0.422917, 0.901341, 0.093411,
		35.161865, 41.271317, 24.269714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543468, 40.497108, 24.579199>,  <34.865822, 40.640381, 24.204327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543468, 40.497108, 24.579199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.489460, 40.891182, 24.621515>,  <35.457054, 41.127625, 24.646906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.489460, 40.891182, 24.621515>,  <35.543468, 40.497108, 24.579199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489460, 40.891182, 24.621515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223769, -0.073695, 0.971852,
		0.965245, 0.154892, -0.210503,
		-0.135019, 0.985179, 0.105793,
		35.448956, 41.186737, 24.653254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161972, 40.812771, 25.010622>,  <35.543468, 40.497108, 24.579199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161972, 40.812771, 25.010622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.837215, 41.044571, 25.038952>,  <35.642361, 41.183651, 25.055950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.837215, 41.044571, 25.038952>,  <36.161972, 40.812771, 25.010622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837215, 41.044571, 25.038952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115313, 0.040255, 0.992513,
		0.572312, 0.813976, -0.099507,
		-0.811888, 0.579502, 0.070824,
		35.593651, 41.218422, 25.060200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370014, 41.334549, 25.496481>,  <36.161972, 40.812771, 25.010622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370014, 41.334549, 25.496481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.974068, 41.391193, 25.500589>,  <35.736500, 41.425182, 25.503054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.974068, 41.391193, 25.500589>,  <36.370014, 41.334549, 25.496481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974068, 41.391193, 25.500589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037135, 0.188397, 0.981391,
		0.137043, 0.971830, -0.191747,
		-0.989869, 0.141613, 0.010270,
		35.677109, 41.433678, 25.503670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234566, 42.029736, 25.846542>,  <36.370014, 41.334549, 25.496481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234566, 42.029736, 25.846542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.882225, 41.842289, 25.873358>,  <35.670818, 41.729820, 25.889446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.882225, 41.842289, 25.873358>,  <36.234566, 42.029736, 25.846542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882225, 41.842289, 25.873358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072549, 0.273574, 0.959111,
		-0.467797, 0.839972, -0.274977,
		-0.880853, -0.468619, 0.067038,
		35.617970, 41.701702, 25.893469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833984, 42.488014, 26.249285>,  <36.234566, 42.029736, 25.846542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833984, 42.488014, 26.249285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.618580, 42.151493, 26.268082>,  <35.489334, 41.949581, 26.279360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.618580, 42.151493, 26.268082>,  <35.833984, 42.488014, 26.249285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618580, 42.151493, 26.268082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270483, 0.225417, 0.935963,
		-0.798022, 0.491320, -0.348949,
		-0.538516, -0.841304, 0.046993,
		35.457024, 41.899101, 26.282179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318718, 42.599129, 26.707512>,  <35.833984, 42.488014, 26.249285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318718, 42.599129, 26.707512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338959, 42.199776, 26.717808>,  <35.351101, 41.960163, 26.723986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338959, 42.199776, 26.717808>,  <35.318718, 42.599129, 26.707512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338959, 42.199776, 26.717808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008905, 0.026222, 0.999617,
		-0.998679, -0.050350, 0.010218,
		0.050599, -0.998388, 0.025739,
		35.354137, 41.900261, 26.725529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898972, 42.410793, 27.320732>,  <35.318718, 42.599129, 26.707512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898972, 42.410793, 27.320732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.141857, 42.097538, 27.267090>,  <35.287586, 41.909584, 27.234905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.141857, 42.097538, 27.267090>,  <34.898972, 42.410793, 27.320732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141857, 42.097538, 27.267090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078156, -0.109093, 0.990954,
		-0.790686, -0.612201, -0.005036,
		0.607212, -0.783141, -0.134106,
		35.324020, 41.862595, 27.226858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215408, 42.109978, 27.332891>,  <34.898972, 42.410793, 27.320732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215408, 42.109978, 27.332891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.915276, 42.367931, 27.274767>,  <33.735195, 42.522705, 27.239891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.915276, 42.367931, 27.274767>,  <34.215408, 42.109978, 27.332891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915276, 42.367931, 27.274767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206651, 0.020021, -0.978210,
		-0.627926, -0.764015, -0.148289,
		-0.750336, 0.644888, -0.145313,
		33.690174, 42.561398, 27.231173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868626, 41.934803, 26.737314>,  <34.215408, 42.109978, 27.332891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868626, 41.934803, 26.737314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.765095, 42.318573, 26.782045>,  <33.702976, 42.548836, 26.808884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.765095, 42.318573, 26.782045>,  <33.868626, 41.934803, 26.737314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765095, 42.318573, 26.782045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074470, 0.095608, -0.992629,
		-0.963049, -0.265245, 0.046703,
		-0.258824, 0.959429, 0.111828,
		33.687447, 42.606403, 26.815594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289204, 42.008801, 26.279430>,  <33.868626, 41.934803, 26.737314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289204, 42.008801, 26.279430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356956, 42.398308, 26.340210>,  <33.397606, 42.632011, 26.376678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.356956, 42.398308, 26.340210>,  <33.289204, 42.008801, 26.279430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356956, 42.398308, 26.340210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286078, 0.196118, -0.937922,
		-0.943117, 0.115394, 0.311791,
		0.169379, 0.973767, 0.151950,
		33.407768, 42.690437, 26.385796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721504, 42.359047, 26.064247>,  <33.289204, 42.008801, 26.279430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721504, 42.359047, 26.064247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.027637, 42.615299, 26.039404>,  <33.211315, 42.769051, 26.024498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.027637, 42.615299, 26.039404>,  <32.721504, 42.359047, 26.064247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027637, 42.615299, 26.039404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247527, 0.203883, -0.947187,
		-0.594137, 0.740284, 0.314612,
		0.765331, 0.640634, -0.062106,
		33.257236, 42.807487, 26.020773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394661, 42.992138, 25.729830>,  <32.721504, 42.359047, 26.064247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394661, 42.992138, 25.729830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788288, 43.044525, 25.681726>,  <33.024464, 43.075958, 25.652864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788288, 43.044525, 25.681726>,  <32.394661, 42.992138, 25.729830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788288, 43.044525, 25.681726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164956, 0.420024, -0.892395,
		-0.066367, 0.898012, 0.434936,
		0.984065, 0.130971, -0.120257,
		33.083508, 43.083817, 25.645649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347183, 43.545811, 25.272213>,  <32.394661, 42.992138, 25.729830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347183, 43.545811, 25.272213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.731964, 43.436527, 25.271475>,  <32.962833, 43.370956, 25.271032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.731964, 43.436527, 25.271475>,  <32.347183, 43.545811, 25.272213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731964, 43.436527, 25.271475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168832, 0.599727, -0.782192,
		0.214809, 0.752120, 0.623035,
		0.961953, -0.273210, -0.001845,
		33.020550, 43.354565, 25.270922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718597, 44.152431, 25.143883>,  <32.347183, 43.545811, 25.272213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718597, 44.152431, 25.143883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.932304, 43.832848, 25.033449>,  <33.060528, 43.641098, 24.967190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.932304, 43.832848, 25.033449>,  <32.718597, 44.152431, 25.143883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932304, 43.832848, 25.033449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189659, 0.431576, -0.881913,
		0.823762, 0.418819, 0.382108,
		0.534271, -0.798957, -0.276084,
		33.092587, 43.593159, 24.950624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200836, 44.410713, 24.722639>,  <32.718597, 44.152431, 25.143883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200836, 44.410713, 24.722639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.219872, 44.021839, 24.630915>,  <33.231293, 43.788513, 24.575880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.219872, 44.021839, 24.630915>,  <33.200836, 44.410713, 24.722639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219872, 44.021839, 24.630915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180198, 0.234160, -0.955352,
		0.982479, 0.004144, 0.186330,
		0.047590, -0.972189, -0.229310,
		33.234150, 43.730183, 24.562122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763542, 44.353298, 24.253464>,  <33.200836, 44.410713, 24.722639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763542, 44.353298, 24.253464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.518364, 44.041943, 24.199186>,  <33.371258, 43.855129, 24.166620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.518364, 44.041943, 24.199186>,  <33.763542, 44.353298, 24.253464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518364, 44.041943, 24.199186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042356, 0.139123, -0.989369,
		0.788990, -0.612175, -0.052305,
		-0.612944, -0.778387, -0.135696,
		33.334480, 43.808426, 24.158478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068542, 43.891651, 23.660351>,  <33.763542, 44.353298, 24.253464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068542, 43.891651, 23.660351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.672329, 43.851730, 23.698057>,  <33.434601, 43.827778, 23.720680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.672329, 43.851730, 23.698057>,  <34.068542, 43.891651, 23.660351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672329, 43.851730, 23.698057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112168, 0.192484, -0.974868,
		0.079149, -0.976212, -0.201857,
		-0.990532, -0.099801, 0.094265,
		33.375168, 43.821789, 23.726337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796024, 43.732124, 22.914036>,  <34.068542, 43.891651, 23.660351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796024, 43.732124, 22.914036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.447025, 43.791710, 23.100176>,  <33.237625, 43.827461, 23.211861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.447025, 43.791710, 23.100176>,  <33.796024, 43.732124, 22.914036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447025, 43.791710, 23.100176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403290, 0.318152, -0.857984,
		-0.275862, -0.936263, -0.217512,
		-0.872501, 0.148965, 0.465352,
		33.185276, 43.836399, 23.239780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350861, 43.468819, 22.483604>,  <33.796024, 43.732124, 22.914036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350861, 43.468819, 22.483604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.158592, 43.735516, 22.711432>,  <33.043232, 43.895535, 22.848127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.158592, 43.735516, 22.711432>,  <33.350861, 43.468819, 22.483604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158592, 43.735516, 22.711432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535791, 0.290873, -0.792667,
		-0.694179, -0.686179, 0.217423,
		-0.480669, 0.666746, 0.569566,
		33.014393, 43.935539, 22.882301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777454, 43.575752, 22.079855>,  <33.350861, 43.468819, 22.483604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777454, 43.575752, 22.079855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.748108, 43.864639, 22.354959>,  <32.730499, 44.037971, 22.520021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.748108, 43.864639, 22.354959>,  <32.777454, 43.575752, 22.079855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748108, 43.864639, 22.354959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549740, 0.546104, -0.632105,
		-0.832108, -0.424463, 0.356969,
		-0.073363, 0.722220, 0.687762,
		32.726101, 44.081306, 22.561289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595097, 42.885109, 22.506252>,  <32.777454, 43.575752, 22.079855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595097, 42.885109, 22.506252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.407932, 42.618561, 22.274044>,  <32.295631, 42.458633, 22.134718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.407932, 42.618561, 22.274044>,  <32.595097, 42.885109, 22.506252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407932, 42.618561, 22.274044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135653, -0.594929, 0.792249,
		-0.873301, 0.449454, 0.187980,
		-0.467913, -0.666372, -0.580522,
		32.267559, 42.418648, 22.099888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049706, 42.762070, 22.947874>,  <32.595097, 42.885109, 22.506252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049706, 42.762070, 22.947874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.101265, 42.476295, 22.672787>,  <32.132202, 42.304829, 22.507734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.101265, 42.476295, 22.672787>,  <32.049706, 42.762070, 22.947874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101265, 42.476295, 22.672787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208894, -0.697507, 0.685454,
		-0.969406, 0.055306, -0.239152,
		0.128901, -0.714440, -0.687721,
		32.139935, 42.261963, 22.466471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396433, 42.324963, 22.871918>,  <32.049706, 42.762070, 22.947874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396433, 42.324963, 22.871918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.702791, 42.110992, 22.729225>,  <31.886606, 41.982609, 22.643610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.702791, 42.110992, 22.729225>,  <31.396433, 42.324963, 22.871918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702791, 42.110992, 22.729225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211100, -0.733275, 0.646332,
		-0.607320, -0.419718, -0.674536,
		0.765897, -0.534925, -0.356731,
		31.932560, 41.950516, 22.622206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158392, 41.593384, 22.862614>,  <31.396433, 42.324963, 22.871918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158392, 41.593384, 22.862614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.554853, 41.545570, 22.839554>,  <31.792730, 41.516884, 22.825718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.554853, 41.545570, 22.839554>,  <31.158392, 41.593384, 22.862614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554853, 41.545570, 22.839554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069493, -0.837566, 0.541898,
		-0.113060, -0.533099, -0.838465,
		0.991155, -0.119534, -0.057648,
		31.852200, 41.509708, 22.822260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280075, 40.877804, 22.679850>,  <31.158392, 41.593384, 22.862614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280075, 40.877804, 22.679850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.603802, 41.022251, 22.865147>,  <31.798038, 41.108921, 22.976326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.603802, 41.022251, 22.865147>,  <31.280075, 40.877804, 22.679850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603802, 41.022251, 22.865147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001406, -0.789863, 0.613282,
		0.587369, -0.495689, -0.639758,
		0.809318, 0.361122, 0.463244,
		31.846598, 41.130589, 23.004120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700932, 40.267452, 22.899357>,  <31.280075, 40.877804, 22.679850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700932, 40.267452, 22.899357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.862572, 40.546638, 23.135847>,  <31.959557, 40.714149, 23.277740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.862572, 40.546638, 23.135847>,  <31.700932, 40.267452, 22.899357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862572, 40.546638, 23.135847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212275, -0.700261, 0.681596,
		0.889743, -0.149931, -0.431136,
		0.404100, 0.697965, 0.591226,
		31.983801, 40.756027, 23.313215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180107, 39.939030, 23.125032>,  <31.700932, 40.267452, 22.899357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180107, 39.939030, 23.125032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.150955, 40.246849, 23.378798>,  <32.133465, 40.431541, 23.531055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.150955, 40.246849, 23.378798>,  <32.180107, 39.939030, 23.125032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150955, 40.246849, 23.378798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172680, -0.616760, 0.767977,
		0.982278, 0.165518, -0.087939,
		-0.072877, 0.769553, 0.634411,
		32.129093, 40.477715, 23.569120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737488, 39.876816, 23.629570>,  <32.180107, 39.939030, 23.125032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737488, 39.876816, 23.629570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453255, 40.086151, 23.817692>,  <32.282715, 40.211754, 23.930565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453255, 40.086151, 23.817692>,  <32.737488, 39.876816, 23.629570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453255, 40.086151, 23.817692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263613, -0.421715, 0.867562,
		0.652367, 0.740452, 0.161703,
		-0.710581, 0.523343, 0.470306,
		32.240082, 40.243153, 23.958784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451290, 39.737877, 23.706848>,  <32.737488, 39.876816, 23.629570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451290, 39.737877, 23.706848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.402420, 39.389366, 23.516712>,  <33.373096, 39.180260, 23.402630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.402420, 39.389366, 23.516712>,  <33.451290, 39.737877, 23.706848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402420, 39.389366, 23.516712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074534, 0.485630, -0.870981,
		0.989706, -0.070985, -0.124272,
		-0.122177, -0.871278, -0.475340,
		33.365768, 39.127983, 23.374111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900303, 39.767479, 23.121126>,  <33.451290, 39.737877, 23.706848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900303, 39.767479, 23.121126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.630264, 39.486942, 23.029600>,  <33.468239, 39.318619, 22.974686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.630264, 39.486942, 23.029600>,  <33.900303, 39.767479, 23.121126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630264, 39.486942, 23.029600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065279, 0.252151, -0.965483,
		0.734833, -0.666734, -0.124444,
		-0.675099, -0.701346, -0.228813,
		33.427734, 39.276539, 22.960957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228374, 39.385517, 22.521973>,  <33.900303, 39.767479, 23.121126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228374, 39.385517, 22.521973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.833553, 39.322121, 22.531776>,  <33.596661, 39.284084, 22.537659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.833553, 39.322121, 22.531776>,  <34.228374, 39.385517, 22.521973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833553, 39.322121, 22.531776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072391, 0.303931, -0.949940,
		0.143108, -0.939418, -0.311471,
		-0.987056, -0.158492, 0.024510,
		33.537437, 39.274574, 22.539129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144493, 39.027111, 21.941805>,  <34.228374, 39.385517, 22.521973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144493, 39.027111, 21.941805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.772877, 39.154423, 22.017252>,  <33.549908, 39.230808, 22.062521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.772877, 39.154423, 22.017252>,  <34.144493, 39.027111, 21.941805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772877, 39.154423, 22.017252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204436, -0.016721, -0.978737,
		-0.308356, -0.947850, 0.080602,
		-0.929044, 0.318278, 0.188619,
		33.494164, 39.249905, 22.073837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727268, 38.563446, 21.561832>,  <34.144493, 39.027111, 21.941805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727268, 38.563446, 21.561832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.525696, 38.898403, 21.646521>,  <33.404755, 39.099377, 21.697332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.525696, 38.898403, 21.646521>,  <33.727268, 38.563446, 21.561832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525696, 38.898403, 21.646521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210659, 0.118562, -0.970343,
		-0.837663, -0.533585, 0.116657,
		-0.503929, 0.837395, 0.211719,
		33.374516, 39.149620, 21.710037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056477, 38.470619, 21.114178>,  <33.727268, 38.563446, 21.561832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056477, 38.470619, 21.114178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.077301, 38.856335, 21.218048>,  <33.089794, 39.087765, 21.280371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.077301, 38.856335, 21.218048>,  <33.056477, 38.470619, 21.114178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077301, 38.856335, 21.218048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394611, 0.258730, -0.881669,
		-0.917372, -0.056571, 0.393990,
		0.052060, 0.964292, 0.259675,
		33.092918, 39.145622, 21.295950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370396, 38.710300, 21.103834>,  <33.056477, 38.470619, 21.114178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370396, 38.710300, 21.103834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.608654, 39.030605, 21.078575>,  <32.751610, 39.222790, 21.063419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.608654, 39.030605, 21.078575>,  <32.370396, 38.710300, 21.103834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608654, 39.030605, 21.078575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488607, 0.298804, -0.819744,
		-0.637551, 0.519130, 0.569239,
		0.595644, 0.800762, -0.063148,
		32.787346, 39.270836, 21.059631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894274, 39.342842, 20.995810>,  <32.370396, 38.710300, 21.103834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894274, 39.342842, 20.995810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.263889, 39.458027, 20.895229>,  <32.485661, 39.527138, 20.834881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.263889, 39.458027, 20.895229>,  <31.894274, 39.342842, 20.995810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263889, 39.458027, 20.895229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370617, 0.513418, -0.773980,
		-0.093781, 0.808379, 0.581144,
		0.924039, 0.287967, -0.251451,
		32.541100, 39.544418, 20.819794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768160, 39.884716, 20.717600>,  <31.894274, 39.342842, 20.995810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768160, 39.884716, 20.717600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.131706, 39.808491, 20.569197>,  <32.349834, 39.762756, 20.480156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.131706, 39.808491, 20.569197>,  <31.768160, 39.884716, 20.717600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131706, 39.808491, 20.569197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284265, 0.367910, -0.885345,
		0.305209, 0.910126, 0.280212,
		0.908868, -0.190561, -0.371007,
		32.404366, 39.751324, 20.457895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.063663, 37.530262, 33.852859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911793, 37.405449, 34.201221>,  <35.820671, 37.330563, 34.410240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911793, 37.405449, 34.201221>,  <36.063663, 37.530262, 33.852859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911793, 37.405449, 34.201221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530941, -0.844423, -0.071076,
		0.757592, 0.435415, 0.486279,
		-0.379678, -0.312032, 0.870908,
		35.797890, 37.311840, 34.462494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069008, 36.904915, 33.353439>,  <36.063663, 37.530262, 33.852859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069008, 36.904915, 33.353439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421562, 36.949368, 33.537094>,  <36.633095, 36.976040, 33.647285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421562, 36.949368, 33.537094>,  <36.069008, 36.904915, 33.353439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421562, 36.949368, 33.537094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464434, -0.026211, -0.885220,
		-0.086345, 0.993460, -0.074717,
		0.881388, 0.111136, 0.459133,
		36.685978, 36.982708, 33.674835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281681, 36.514542, 33.934986>,  <36.069008, 36.904915, 33.353439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281681, 36.514542, 33.934986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151127, 36.139442, 33.982475>,  <36.072796, 35.914383, 34.010971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151127, 36.139442, 33.982475>,  <36.281681, 36.514542, 33.934986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151127, 36.139442, 33.982475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915678, -0.282511, 0.285871,
		-0.234534, 0.202019, 0.950885,
		-0.326387, -0.937751, 0.118726,
		36.053211, 35.858116, 34.018093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951687, 36.205765, 34.077435>,  <36.281681, 36.514542, 33.934986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951687, 36.205765, 34.077435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727627, 35.876896, 34.117958>,  <36.593193, 35.679573, 34.142273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727627, 35.876896, 34.117958>,  <36.951687, 36.205765, 34.077435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727627, 35.876896, 34.117958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369623, 0.138609, -0.918785,
		0.741360, -0.552101, -0.381536,
		-0.560147, -0.822175, 0.101310,
		36.559582, 35.630245, 34.148350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008972, 35.718895, 33.496441>,  <36.951687, 36.205765, 34.077435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008972, 35.718895, 33.496441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646568, 35.626797, 33.638500>,  <36.429127, 35.571537, 33.723736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.646568, 35.626797, 33.638500>,  <37.008972, 35.718895, 33.496441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646568, 35.626797, 33.638500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383798, 0.093140, -0.918708,
		0.178453, -0.968664, -0.172755,
		-0.906010, -0.230249, 0.355150,
		36.374763, 35.557724, 33.745045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776829, 35.408863, 32.948307>,  <37.008972, 35.718895, 33.496441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776829, 35.408863, 32.948307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.451599, 35.464424, 33.174446>,  <36.256462, 35.497761, 33.310127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.451599, 35.464424, 33.174446>,  <36.776829, 35.408863, 32.948307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451599, 35.464424, 33.174446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574558, -0.035066, -0.817712,
		-0.093766, -0.989684, 0.108325,
		-0.813075, 0.138913, 0.565343,
		36.207676, 35.506096, 33.344048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326778, 34.888119, 32.657063>,  <36.776829, 35.408863, 32.948307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326778, 34.888119, 32.657063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086361, 35.150047, 32.840347>,  <35.942108, 35.307205, 32.950317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086361, 35.150047, 32.840347>,  <36.326778, 34.888119, 32.657063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086361, 35.150047, 32.840347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590651, 0.022284, -0.806619,
		-0.538399, -0.755458, 0.373376,
		-0.601047, 0.654818, 0.458210,
		35.906048, 35.346493, 32.977810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627625, 34.709282, 32.512707>,  <36.326778, 34.888119, 32.657063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627625, 34.709282, 32.512707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585274, 35.092674, 32.618614>,  <35.559864, 35.322708, 32.682159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585274, 35.092674, 32.618614>,  <35.627625, 34.709282, 32.512707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585274, 35.092674, 32.618614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622914, 0.143614, -0.768995,
		-0.775092, -0.246350, 0.581845,
		-0.105881, 0.958481, 0.264769,
		35.553509, 35.380219, 32.698044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899055, 34.750721, 32.527744>,  <35.627625, 34.709282, 32.512707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899055, 34.750721, 32.527744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060394, 35.114399, 32.486416>,  <35.157196, 35.332607, 32.461620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060394, 35.114399, 32.486416>,  <34.899055, 34.750721, 32.527744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060394, 35.114399, 32.486416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622788, 0.190037, -0.758961,
		-0.670410, 0.370467, 0.642887,
		0.403343, 0.909197, -0.103319,
		35.181396, 35.387157, 32.455421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372883, 35.181442, 32.375046>,  <34.899055, 34.750721, 32.527744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372883, 35.181442, 32.375046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669521, 35.425327, 32.263134>,  <34.847504, 35.571659, 32.195988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669521, 35.425327, 32.263134>,  <34.372883, 35.181442, 32.375046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669521, 35.425327, 32.263134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559044, 0.331163, -0.760132,
		-0.370812, 0.720123, 0.586449,
		0.741598, 0.609717, -0.279781,
		34.892002, 35.608242, 32.179199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105675, 35.903023, 32.220261>,  <34.372883, 35.181442, 32.375046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105675, 35.903023, 32.220261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445930, 35.833237, 32.021881>,  <34.650085, 35.791367, 31.902853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445930, 35.833237, 32.021881>,  <34.105675, 35.903023, 32.220261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445930, 35.833237, 32.021881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478392, 0.134399, -0.867801,
		0.218056, 0.975448, 0.030864,
		0.850642, -0.174464, -0.495953,
		34.701122, 35.780899, 31.873095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146172, 36.343216, 31.576460>,  <34.105675, 35.903023, 32.220261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146172, 36.343216, 31.576460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400471, 36.044033, 31.500166>,  <34.553051, 35.864521, 31.454390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400471, 36.044033, 31.500166>,  <34.146172, 36.343216, 31.576460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400471, 36.044033, 31.500166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227770, 0.054316, -0.972199,
		0.737526, 0.661517, -0.135831,
		0.635748, -0.747961, -0.190733,
		34.591194, 35.819645, 31.442945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015419, 37.048702, 31.778502>,  <34.146172, 36.343216, 31.576460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015419, 37.048702, 31.778502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621838, 36.996613, 31.827291>,  <33.385689, 36.965359, 31.856565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621838, 36.996613, 31.827291>,  <34.015419, 37.048702, 31.778502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621838, 36.996613, 31.827291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139739, -0.137352, 0.980616,
		-0.110947, 0.981925, 0.153345,
		-0.983953, -0.130224, 0.121975,
		33.326653, 36.957546, 31.863884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840927, 37.381809, 32.399033>,  <34.015419, 37.048702, 31.778502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840927, 37.381809, 32.399033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538498, 37.126461, 32.341290>,  <33.357040, 36.973251, 32.306644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538498, 37.126461, 32.341290>,  <33.840927, 37.381809, 32.399033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538498, 37.126461, 32.341290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011944, -0.233983, 0.972167,
		-0.654378, 0.733306, 0.184533,
		-0.756073, -0.638369, -0.144354,
		33.311676, 36.934952, 32.297985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457001, 37.477509, 32.986717>,  <33.840927, 37.381809, 32.399033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457001, 37.477509, 32.986717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285492, 37.148521, 32.837208>,  <33.182587, 36.951130, 32.747501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285492, 37.148521, 32.837208>,  <33.457001, 37.477509, 32.986717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285492, 37.148521, 32.837208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189952, -0.322414, 0.927344,
		-0.883219, 0.468615, -0.017989,
		-0.428767, -0.822465, -0.373777,
		33.156860, 36.901783, 32.725075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741364, 37.375515, 33.183407>,  <33.457001, 37.477509, 32.986717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741364, 37.375515, 33.183407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.876015, 37.006332, 33.108746>,  <32.956806, 36.784824, 33.063950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.876015, 37.006332, 33.108746>,  <32.741364, 37.375515, 33.183407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876015, 37.006332, 33.108746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231435, -0.273240, 0.933691,
		-0.912755, -0.271106, -0.305583,
		0.336626, -0.922953, -0.186658,
		32.977001, 36.729446, 33.052750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242786, 36.962963, 33.384995>,  <32.741364, 37.375515, 33.183407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242786, 36.962963, 33.384995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570473, 36.735020, 33.410732>,  <32.767086, 36.598255, 33.426174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570473, 36.735020, 33.410732>,  <32.242786, 36.962963, 33.384995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570473, 36.735020, 33.410732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176204, -0.143346, 0.973860,
		-0.545741, -0.809142, -0.217843,
		0.819218, -0.569860, 0.064344,
		32.816238, 36.564060, 33.430035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130325, 36.388206, 33.815567>,  <32.242786, 36.962963, 33.384995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130325, 36.388206, 33.815567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526108, 36.357754, 33.864838>,  <32.763577, 36.339481, 33.894398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526108, 36.357754, 33.864838>,  <32.130325, 36.388206, 33.815567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526108, 36.357754, 33.864838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119325, 0.053194, 0.991429,
		-0.082031, -0.995678, 0.043549,
		0.989461, -0.076131, 0.123173,
		32.822945, 36.334915, 33.901791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124748, 36.168701, 34.425022>,  <32.130325, 36.388206, 33.815567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124748, 36.168701, 34.425022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516804, 36.214317, 34.360126>,  <32.752037, 36.241688, 34.321190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516804, 36.214317, 34.360126>,  <32.124748, 36.168701, 34.425022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516804, 36.214317, 34.360126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168613, -0.048600, 0.984483,
		0.104385, -0.992287, -0.066863,
		0.980139, 0.114039, -0.162239,
		32.810844, 36.248528, 34.311455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475243, 35.627251, 34.832150>,  <32.124748, 36.168701, 34.425022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475243, 35.627251, 34.832150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.734795, 35.925556, 34.771763>,  <32.890526, 36.104542, 34.735531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.734795, 35.925556, 34.771763>,  <32.475243, 35.627251, 34.832150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734795, 35.925556, 34.771763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269968, -0.040153, 0.962032,
		0.711390, -0.664996, -0.227388,
		0.648877, 0.745767, -0.150963,
		32.929459, 36.149288, 34.726475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007435, 35.444698, 35.109734>,  <32.475243, 35.627251, 34.832150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007435, 35.444698, 35.109734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054691, 35.841297, 35.087914>,  <33.083046, 36.079258, 35.074821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054691, 35.841297, 35.087914>,  <33.007435, 35.444698, 35.109734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054691, 35.841297, 35.087914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171683, 0.033709, 0.984575,
		0.978043, -0.125682, -0.166241,
		0.118139, 0.991498, -0.054546,
		33.090134, 36.138748, 35.071548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626450, 35.505913, 35.394714>,  <33.007435, 35.444698, 35.109734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626450, 35.505913, 35.394714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481304, 35.878433, 35.407433>,  <33.394215, 36.101944, 35.415062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481304, 35.878433, 35.407433>,  <33.626450, 35.505913, 35.394714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481304, 35.878433, 35.407433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454165, 0.146959, 0.878713,
		0.813671, 0.333297, -0.476290,
		-0.362868, 0.931298, 0.031796,
		33.372444, 36.157822, 35.416973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191204, 35.835121, 35.467590>,  <33.626450, 35.505913, 35.394714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191204, 35.835121, 35.467590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875839, 36.046028, 35.594334>,  <33.686619, 36.172573, 35.670380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875839, 36.046028, 35.594334>,  <34.191204, 35.835121, 35.467590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875839, 36.046028, 35.594334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434730, 0.113151, 0.893424,
		0.435222, 0.842131, -0.318429,
		-0.788411, 0.527268, 0.316854,
		33.639317, 36.204208, 35.689388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460609, 36.214653, 35.940113>,  <34.191204, 35.835121, 35.467590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460609, 36.214653, 35.940113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076229, 36.296654, 36.014450>,  <33.845600, 36.345856, 36.059052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076229, 36.296654, 36.014450>,  <34.460609, 36.214653, 35.940113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076229, 36.296654, 36.014450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210582, 0.106116, 0.971800,
		0.179501, 0.972992, -0.145143,
		-0.960955, 0.205004, 0.185846,
		33.787941, 36.358154, 36.070206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471954, 36.833389, 36.306499>,  <34.460609, 36.214653, 35.940113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471954, 36.833389, 36.306499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123856, 36.650303, 36.379345>,  <33.914997, 36.540451, 36.423050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123856, 36.650303, 36.379345>,  <34.471954, 36.833389, 36.306499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123856, 36.650303, 36.379345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243833, -0.079019, 0.966593,
		-0.428039, 0.885578, 0.180373,
		-0.870246, -0.457720, 0.182110,
		33.862782, 36.512985, 36.433979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142231, 37.227833, 36.880093>,  <34.471954, 36.833389, 36.306499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142231, 37.227833, 36.880093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036667, 36.842567, 36.859440>,  <33.973328, 36.611408, 36.847046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036667, 36.842567, 36.859440>,  <34.142231, 37.227833, 36.880093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036667, 36.842567, 36.859440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112400, -0.083879, 0.990117,
		-0.957976, 0.255498, 0.130396,
		-0.263910, -0.963164, -0.051636,
		33.957493, 36.553619, 36.843948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696014, 37.682377, 36.760513>,  <34.142231, 37.227833, 36.880093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696014, 37.682377, 36.760513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697712, 38.032780, 36.953426>,  <34.698730, 38.243023, 37.069172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697712, 38.032780, 36.953426>,  <34.696014, 37.682377, 36.760513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697712, 38.032780, 36.953426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464857, 0.428733, -0.774659,
		-0.885376, -0.220904, 0.409037,
		0.004242, 0.876008, 0.482278,
		34.698986, 38.295582, 37.098110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023132, 37.894211, 36.618900>,  <34.696014, 37.682377, 36.760513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023132, 37.894211, 36.618900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273773, 38.194908, 36.701122>,  <34.424156, 38.375328, 36.750458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273773, 38.194908, 36.701122>,  <34.023132, 37.894211, 36.618900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273773, 38.194908, 36.701122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522192, 0.600778, -0.605295,
		-0.578521, 0.271937, 0.769002,
		0.626602, 0.751742, 0.205559,
		34.461754, 38.420429, 36.762791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679024, 38.500771, 36.892460>,  <34.023132, 37.894211, 36.618900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679024, 38.500771, 36.892460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009602, 38.577526, 36.680733>,  <34.207947, 38.623581, 36.553696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009602, 38.577526, 36.680733>,  <33.679024, 38.500771, 36.892460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009602, 38.577526, 36.680733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537142, 0.550486, -0.639096,
		0.168747, 0.812493, 0.558014,
		0.826440, 0.191888, -0.529317,
		34.257534, 38.635094, 36.521938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802711, 39.158260, 36.869850>,  <33.679024, 38.500771, 36.892460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802711, 39.158260, 36.869850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.998291, 39.031628, 36.544716>,  <34.115639, 38.955647, 36.349636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.998291, 39.031628, 36.544716>,  <33.802711, 39.158260, 36.869850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998291, 39.031628, 36.544716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503059, 0.658922, -0.559243,
		0.712643, 0.682347, 0.162921,
		0.488950, -0.316582, -0.812837,
		34.144978, 38.936653, 36.300865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249542, 39.705647, 36.479481>,  <33.802711, 39.158260, 36.869850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249542, 39.705647, 36.479481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082146, 39.436531, 36.235439>,  <33.981709, 39.275063, 36.089016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082146, 39.436531, 36.235439>,  <34.249542, 39.705647, 36.479481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082146, 39.436531, 36.235439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209627, 0.725167, -0.655888,
		0.883699, -0.146589, -0.444509,
		-0.418489, -0.672788, -0.610100,
		33.956600, 39.234695, 36.052410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284019, 40.114002, 35.825207>,  <34.249542, 39.705647, 36.479481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284019, 40.114002, 35.825207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105770, 39.772018, 35.719025>,  <33.998821, 39.566830, 35.655315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105770, 39.772018, 35.719025>,  <34.284019, 40.114002, 35.825207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105770, 39.772018, 35.719025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279201, 0.414465, -0.866179,
		0.850567, -0.311877, -0.423402,
		-0.445627, -0.854957, -0.265453,
		33.972080, 39.515530, 35.639389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426285, 40.055622, 35.158401>,  <34.284019, 40.114002, 35.825207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426285, 40.055622, 35.158401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123886, 39.795708, 35.190025>,  <33.942448, 39.639759, 35.209000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123886, 39.795708, 35.190025>,  <34.426285, 40.055622, 35.158401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123886, 39.795708, 35.190025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261956, 0.189645, -0.946263,
		0.599879, -0.736076, -0.313587,
		-0.755992, -0.649789, 0.079056,
		33.897087, 39.600773, 35.213741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479561, 39.657166, 34.550049>,  <34.426285, 40.055622, 35.158401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479561, 39.657166, 34.550049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102093, 39.619690, 34.676991>,  <33.875614, 39.597202, 34.753155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102093, 39.619690, 34.676991>,  <34.479561, 39.657166, 34.550049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102093, 39.619690, 34.676991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329819, 0.189056, -0.924920,
		0.026661, -0.977486, -0.209308,
		-0.943667, -0.093693, 0.317354,
		33.818993, 39.591583, 34.772198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122555, 39.412071, 33.993275>,  <34.479561, 39.657166, 34.550049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122555, 39.412071, 33.993275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826328, 39.541412, 34.228905>,  <33.648594, 39.619015, 34.370285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826328, 39.541412, 34.228905>,  <34.122555, 39.412071, 33.993275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826328, 39.541412, 34.228905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524287, 0.270326, -0.807494,
		-0.420347, -0.906845, -0.030665,
		-0.740562, 0.323350, 0.589078,
		33.604160, 39.638416, 34.405628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539738, 39.056564, 33.700001>,  <34.122555, 39.412071, 33.993275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539738, 39.056564, 33.700001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410645, 39.379444, 33.897694>,  <33.333187, 39.573174, 34.016312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410645, 39.379444, 33.897694>,  <33.539738, 39.056564, 33.700001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410645, 39.379444, 33.897694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526113, 0.281080, -0.802620,
		-0.786797, -0.519054, 0.333967,
		-0.322732, 0.807203, 0.494234,
		33.313824, 39.621605, 34.045963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680065, 39.054626, 33.675755>,  <33.539738, 39.056564, 33.700001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680065, 39.054626, 33.675755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838097, 39.417645, 33.732700>,  <32.932915, 39.635456, 33.766869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838097, 39.417645, 33.732700>,  <32.680065, 39.054626, 33.675755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838097, 39.417645, 33.732700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485725, 0.337913, -0.806155,
		-0.779731, 0.249346, 0.574322,
		0.395082, 0.907547, 0.142367,
		32.956623, 39.689907, 33.775410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212303, 39.435844, 33.445667>,  <32.680065, 39.054626, 33.675755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212303, 39.435844, 33.445667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507309, 39.705940, 33.450092>,  <32.684315, 39.867996, 33.452747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507309, 39.705940, 33.450092>,  <32.212303, 39.435844, 33.445667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507309, 39.705940, 33.450092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241864, 0.279398, -0.929214,
		-0.630533, 0.682634, 0.369376,
		0.737516, 0.675238, 0.011064,
		32.728565, 39.908512, 33.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926973, 40.076286, 33.246193>,  <32.212303, 39.435844, 33.445667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926973, 40.076286, 33.246193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321255, 40.107227, 33.186325>,  <32.557823, 40.125793, 33.150402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321255, 40.107227, 33.186325>,  <31.926973, 40.076286, 33.246193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321255, 40.107227, 33.186325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163480, 0.224276, -0.960716,
		-0.040747, 0.971451, 0.233716,
		0.985705, 0.077354, -0.149674,
		32.616966, 40.130432, 33.141422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009129, 40.719383, 32.875824>,  <31.926973, 40.076286, 33.246193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009129, 40.719383, 32.875824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358158, 40.542301, 32.793247>,  <32.567577, 40.436050, 32.743702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358158, 40.542301, 32.793247>,  <32.009129, 40.719383, 32.875824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358158, 40.542301, 32.793247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086947, 0.275108, -0.957474,
		0.480674, 0.853420, 0.201561,
		0.872578, -0.442708, -0.206440,
		32.619930, 40.409489, 32.731316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566769, 41.216217, 32.731266>,  <32.009129, 40.719383, 32.875824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566769, 41.216217, 32.731266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675579, 40.872211, 32.558582>,  <32.740868, 40.665810, 32.454971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675579, 40.872211, 32.558582>,  <32.566769, 41.216217, 32.731266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675579, 40.872211, 32.558582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089268, 0.424143, -0.901184,
		0.958140, 0.283685, 0.038607,
		0.272028, -0.860014, -0.431713,
		32.757187, 40.614208, 32.429070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165932, 41.439354, 32.311523>,  <32.566769, 41.216217, 32.731266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165932, 41.439354, 32.311523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061188, 41.094154, 32.138706>,  <32.998341, 40.887035, 32.035015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061188, 41.094154, 32.138706>,  <33.165932, 41.439354, 32.311523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061188, 41.094154, 32.138706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116149, 0.416233, -0.901809,
		0.958091, -0.286331, -0.008760,
		-0.261862, -0.862997, -0.432046,
		32.982628, 40.835255, 32.009094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569782, 41.363297, 31.721632>,  <33.165932, 41.439354, 32.311523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569782, 41.363297, 31.721632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314289, 41.073643, 31.617596>,  <33.160992, 40.899853, 31.555174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314289, 41.073643, 31.617596>,  <33.569782, 41.363297, 31.721632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314289, 41.073643, 31.617596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177408, 0.190320, -0.965559,
		0.748693, -0.662881, 0.006903,
		-0.638737, -0.724132, -0.260092,
		33.122669, 40.856403, 31.539568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856983, 40.947491, 31.159170>,  <33.569782, 41.363297, 31.721632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856983, 40.947491, 31.159170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459660, 40.910217, 31.131903>,  <33.221264, 40.887852, 31.115543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459660, 40.910217, 31.131903>,  <33.856983, 40.947491, 31.159170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459660, 40.910217, 31.131903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044507, 0.235734, -0.970798,
		0.106534, -0.967339, -0.230010,
		-0.993312, -0.093186, -0.068167,
		33.161667, 40.882259, 31.111452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750111, 40.573067, 30.486944>,  <33.856983, 40.947491, 31.159170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750111, 40.573067, 30.486944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391705, 40.738823, 30.550745>,  <33.176662, 40.838276, 30.589025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391705, 40.738823, 30.550745>,  <33.750111, 40.573067, 30.486944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391705, 40.738823, 30.550745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058185, 0.246546, -0.967383,
		-0.440195, -0.876070, -0.196798,
		-0.896015, 0.414387, 0.159502,
		33.122902, 40.863140, 30.598597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217510, 40.246830, 30.019812>,  <33.750111, 40.573067, 30.486944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217510, 40.246830, 30.019812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092697, 40.609463, 30.133471>,  <33.017811, 40.827042, 30.201666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092697, 40.609463, 30.133471>,  <33.217510, 40.246830, 30.019812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092697, 40.609463, 30.133471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174357, 0.239355, -0.955148,
		-0.933935, -0.347580, 0.083383,
		-0.312032, 0.906585, 0.284146,
		32.999088, 40.881439, 30.218714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777645, 40.447525, 29.551247>,  <33.217510, 40.246830, 30.019812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777645, 40.447525, 29.551247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806141, 40.811279, 29.715166>,  <32.823238, 41.029533, 29.813517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806141, 40.811279, 29.715166>,  <32.777645, 40.447525, 29.551247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806141, 40.811279, 29.715166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125876, 0.415753, -0.900725,
		-0.989485, 0.012584, 0.144088,
		0.071240, 0.909391, 0.409797,
		32.827515, 41.084095, 29.838106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192535, 40.771084, 29.396572>,  <32.777645, 40.447525, 29.551247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192535, 40.771084, 29.396572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482903, 41.041630, 29.446487>,  <32.657124, 41.203957, 29.476437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482903, 41.041630, 29.446487>,  <32.192535, 40.771084, 29.396572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482903, 41.041630, 29.446487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330658, 0.502290, -0.798980,
		-0.603084, 0.538731, 0.588267,
		0.725917, 0.676368, 0.124788,
		32.700676, 41.244541, 29.483923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840117, 41.398567, 29.203209>,  <32.192535, 40.771084, 29.396572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840117, 41.398567, 29.203209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.216484, 41.533794, 29.211018>,  <32.442303, 41.614933, 29.215702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.216484, 41.533794, 29.211018>,  <31.840117, 41.398567, 29.203209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216484, 41.533794, 29.211018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163590, 0.504263, -0.847914,
		-0.296499, 0.794624, 0.529775,
		0.940918, 0.338071, 0.019521,
		32.498760, 41.635216, 29.216873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871731, 42.217270, 28.915930>,  <31.840117, 41.398567, 29.203209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871731, 42.217270, 28.915930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238075, 42.057880, 28.896259>,  <32.457882, 41.962246, 28.884457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238075, 42.057880, 28.896259>,  <31.871731, 42.217270, 28.915930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238075, 42.057880, 28.896259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160126, 0.474833, -0.865386,
		0.368186, 0.784698, 0.498687,
		0.915860, -0.398476, -0.049176,
		32.512833, 41.938339, 28.881506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365307, 42.861893, 28.828104>,  <31.871731, 42.217270, 28.915930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365307, 42.861893, 28.828104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527809, 42.514294, 28.715101>,  <32.625309, 42.305737, 28.647299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527809, 42.514294, 28.715101>,  <32.365307, 42.861893, 28.828104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527809, 42.514294, 28.715101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476767, 0.465331, -0.745762,
		0.779521, 0.168277, 0.603349,
		0.406251, -0.868994, -0.282506,
		32.649685, 42.253597, 28.630350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077145, 42.924297, 28.737350>,  <32.365307, 42.861893, 28.828104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077145, 42.924297, 28.737350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999466, 42.604927, 28.509384>,  <32.952858, 42.413303, 28.372604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999466, 42.604927, 28.509384>,  <33.077145, 42.924297, 28.737350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999466, 42.604927, 28.509384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494858, 0.421900, -0.759682,
		0.846997, -0.429554, 0.313176,
		-0.194195, -0.798426, -0.569916,
		32.941208, 42.365398, 28.338409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737637, 42.742611, 28.434212>,  <33.077145, 42.924297, 28.737350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737637, 42.742611, 28.434212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470356, 42.584545, 28.182070>,  <33.309986, 42.489704, 28.030785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470356, 42.584545, 28.182070>,  <33.737637, 42.742611, 28.434212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470356, 42.584545, 28.182070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519631, 0.358465, -0.775556,
		0.532433, -0.845781, -0.034188,
		-0.668206, -0.395166, -0.630353,
		33.269894, 42.465996, 27.992964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167114, 42.498192, 27.952381>,  <33.737637, 42.742611, 28.434212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167114, 42.498192, 27.952381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812302, 42.510090, 27.768080>,  <33.599415, 42.517227, 27.657499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.812302, 42.510090, 27.768080>,  <34.167114, 42.498192, 27.952381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812302, 42.510090, 27.768080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452344, 0.255996, -0.854313,
		0.092537, -0.966220, -0.240532,
		-0.887030, 0.029748, -0.460753,
		33.546192, 42.519012, 27.629854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810570, 42.033028, 27.977407>,  <34.167114, 42.498192, 27.952381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810570, 42.033028, 27.977407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147053, 41.879570, 27.824995>,  <35.348942, 41.787495, 27.733547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147053, 41.879570, 27.824995>,  <34.810570, 42.033028, 27.977407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147053, 41.879570, 27.824995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319881, -0.215046, 0.922730,
		-0.435936, -0.898095, -0.058179,
		0.841211, -0.383641, -0.381030,
		35.399418, 41.764477, 27.710686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946026, 41.344643, 28.300608>,  <34.810570, 42.033028, 27.977407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946026, 41.344643, 28.300608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302914, 41.441284, 28.147991>,  <35.517048, 41.499271, 28.056421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302914, 41.441284, 28.147991>,  <34.946026, 41.344643, 28.300608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302914, 41.441284, 28.147991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431494, -0.206777, 0.878098,
		0.133261, -0.948087, -0.288743,
		0.892218, 0.241607, -0.381539,
		35.570580, 41.513767, 28.033529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470474, 40.790623, 28.568995>,  <34.946026, 41.344643, 28.300608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470474, 40.790623, 28.568995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686989, 41.103603, 28.445848>,  <35.816898, 41.291389, 28.371962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686989, 41.103603, 28.445848>,  <35.470474, 40.790623, 28.568995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686989, 41.103603, 28.445848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585631, -0.088089, 0.805777,
		0.603361, -0.616452, -0.505908,
		0.541288, 0.782450, -0.307864,
		35.849377, 41.338337, 28.353489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177536, 40.644016, 28.677677>,  <35.470474, 40.790623, 28.568995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177536, 40.644016, 28.677677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138222, 41.042046, 28.682802>,  <36.114632, 41.280865, 28.685877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138222, 41.042046, 28.682802>,  <36.177536, 40.644016, 28.677677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138222, 41.042046, 28.682802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514907, 0.039833, 0.856320,
		0.851593, 0.090766, -0.516286,
		-0.098290, 0.995075, 0.012815,
		36.108734, 41.340569, 28.686647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873341, 40.854500, 28.893999>,  <36.177536, 40.644016, 28.677677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873341, 40.854500, 28.893999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629391, 41.168968, 28.933989>,  <36.483021, 41.357651, 28.957983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629391, 41.168968, 28.933989>,  <36.873341, 40.854500, 28.893999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629391, 41.168968, 28.933989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409748, 0.204823, 0.888906,
		0.678354, 0.583083, -0.447047,
		-0.609871, 0.786170, 0.099975,
		36.446430, 41.404819, 28.963982>
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
