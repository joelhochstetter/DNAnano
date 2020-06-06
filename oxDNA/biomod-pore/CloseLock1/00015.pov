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
	<24.873859, 34.766033, 34.866974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539944, 34.971130, 34.947189>,  <24.339594, 35.094189, 34.995319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539944, 34.971130, 34.947189>,  <24.873859, 34.766033, 34.866974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539944, 34.971130, 34.947189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177984, -0.093355, 0.979595,
		0.521006, 0.853449, -0.013329,
		-0.834790, 0.512748, 0.200539,
		24.289507, 35.124954, 35.007351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960894, 35.037556, 35.532394>,  <24.873859, 34.766033, 34.866974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960894, 35.037556, 35.532394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561710, 35.063099, 35.532753>,  <24.322201, 35.078426, 35.532970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561710, 35.063099, 35.532753>,  <24.960894, 35.037556, 35.532394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561710, 35.063099, 35.532753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003878, -0.074649, 0.997202,
		0.063748, 0.995163, 0.074744,
		-0.997959, 0.063859, 0.000900,
		24.262323, 35.082256, 35.533024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537945, 35.579430, 35.835674>,  <24.960894, 35.037556, 35.532394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537945, 35.579430, 35.835674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270470, 35.283550, 35.865864>,  <24.109985, 35.106022, 35.883976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270470, 35.283550, 35.865864>,  <24.537945, 35.579430, 35.835674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270470, 35.283550, 35.865864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158764, 0.241210, 0.957398,
		-0.726395, 0.628218, -0.278732,
		-0.668688, -0.739703, 0.075475,
		24.069862, 35.061638, 35.888508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126469, 36.023304, 36.165546>,  <24.537945, 35.579430, 35.835674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126469, 36.023304, 36.165546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525612, 35.998833, 36.174774>,  <25.765099, 35.984150, 36.180309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525612, 35.998833, 36.174774>,  <25.126469, 36.023304, 36.165546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525612, 35.998833, 36.174774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061492, 0.758256, -0.649051,
		0.022217, 0.649081, 0.760395,
		0.997860, -0.061178, 0.023067,
		25.824970, 35.980480, 36.181694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375027, 36.693817, 36.251217>,  <25.126469, 36.023304, 36.165546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375027, 36.693817, 36.251217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653841, 36.481754, 36.058105>,  <25.821131, 36.354519, 35.942238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653841, 36.481754, 36.058105>,  <25.375027, 36.693817, 36.251217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653841, 36.481754, 36.058105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053505, 0.709878, -0.702289,
		0.715035, 0.463691, 0.523178,
		0.697038, -0.530154, -0.482778,
		25.862953, 36.322708, 35.913273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771112, 37.239613, 35.986679>,  <25.375027, 36.693817, 36.251217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771112, 37.239613, 35.986679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873037, 36.924179, 35.762821>,  <25.934193, 36.734917, 35.628506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873037, 36.924179, 35.762821>,  <25.771112, 37.239613, 35.986679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873037, 36.924179, 35.762821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232972, 0.611766, -0.755954,
		0.938507, 0.062244, 0.339603,
		0.254811, -0.788586, -0.559645,
		25.949480, 36.687603, 35.594929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381990, 37.366425, 35.694443>,  <25.771112, 37.239613, 35.986679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381990, 37.366425, 35.694443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273817, 37.081482, 35.435394>,  <26.208912, 36.910519, 35.279964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273817, 37.081482, 35.435394>,  <26.381990, 37.366425, 35.694443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273817, 37.081482, 35.435394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424107, 0.515754, -0.744400,
		0.864291, -0.475974, 0.162635,
		-0.270435, -0.712353, -0.647625,
		26.192686, 36.867775, 35.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018026, 37.298988, 35.307858>,  <26.381990, 37.366425, 35.694443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018026, 37.298988, 35.307858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720604, 37.141563, 35.091621>,  <26.542150, 37.047108, 34.961880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720604, 37.141563, 35.091621>,  <27.018026, 37.298988, 35.307858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720604, 37.141563, 35.091621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372096, 0.428191, -0.823527,
		0.555583, -0.813489, -0.171941,
		-0.743553, -0.393559, -0.540591,
		26.497538, 37.023495, 34.929443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384665, 37.025547, 34.787323>,  <27.018026, 37.298988, 35.307858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384665, 37.025547, 34.787323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006083, 37.062592, 34.663616>,  <26.778933, 37.084820, 34.589394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006083, 37.062592, 34.663616>,  <27.384665, 37.025547, 34.787323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006083, 37.062592, 34.663616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321929, 0.199016, -0.925611,
		-0.024175, -0.975610, -0.218174,
		-0.946455, 0.092613, -0.309266,
		26.722145, 37.090374, 34.570835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361084, 36.648087, 34.165936>,  <27.384665, 37.025547, 34.787323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361084, 36.648087, 34.165936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041149, 36.888161, 34.168278>,  <26.849188, 37.032207, 34.169682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041149, 36.888161, 34.168278>,  <27.361084, 36.648087, 34.165936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041149, 36.888161, 34.168278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212057, 0.291692, -0.932710,
		-0.561508, -0.744776, -0.360580,
		-0.799838, 0.600188, 0.005852,
		26.801197, 37.068218, 34.170033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064491, 36.507866, 33.517982>,  <27.361084, 36.648087, 34.165936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064491, 36.507866, 33.517982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957859, 36.872856, 33.642128>,  <26.893881, 37.091850, 33.716618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957859, 36.872856, 33.642128>,  <27.064491, 36.507866, 33.517982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957859, 36.872856, 33.642128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250917, 0.376618, -0.891740,
		-0.930579, -0.159842, -0.329354,
		-0.266578, 0.912474, 0.310366,
		26.877886, 37.146599, 33.735237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781868, 36.741138, 32.938980>,  <27.064491, 36.507866, 33.517982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781868, 36.741138, 32.938980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857586, 37.069469, 33.154541>,  <26.903017, 37.266468, 33.283878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857586, 37.069469, 33.154541>,  <26.781868, 36.741138, 32.938980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857586, 37.069469, 33.154541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206952, 0.503143, -0.839058,
		-0.959864, 0.270354, -0.074630,
		0.189293, 0.820826, 0.538899,
		26.914373, 37.315716, 33.316212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176352, 37.278484, 32.625328>,  <26.781868, 36.741138, 32.938980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176352, 37.278484, 32.625328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482800, 37.460411, 32.806965>,  <26.666668, 37.569565, 32.915947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482800, 37.460411, 32.806965>,  <26.176352, 37.278484, 32.625328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482800, 37.460411, 32.806965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076005, 0.637471, -0.766717,
		-0.638185, 0.621912, 0.453812,
		0.766122, 0.454815, 0.454093,
		26.712637, 37.596855, 32.943192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196318, 38.042713, 32.459049>,  <26.176352, 37.278484, 32.625328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196318, 38.042713, 32.459049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580774, 37.992199, 32.557236>,  <26.811449, 37.961891, 32.616150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580774, 37.992199, 32.557236>,  <26.196318, 38.042713, 32.459049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580774, 37.992199, 32.557236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265905, 0.662405, -0.700367,
		-0.074154, 0.738425, 0.670246,
		0.961143, -0.126287, 0.245470,
		26.869118, 37.954311, 32.630878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528904, 38.734169, 32.362202>,  <26.196318, 38.042713, 32.459049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528904, 38.734169, 32.362202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853373, 38.506992, 32.417973>,  <27.048054, 38.370686, 32.451435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853373, 38.506992, 32.417973>,  <26.528904, 38.734169, 32.362202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853373, 38.506992, 32.417973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495950, 0.541744, -0.678636,
		0.309891, 0.619641, 0.721119,
		0.811172, -0.567943, 0.139430,
		27.096724, 38.336609, 32.459801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009989, 39.169548, 32.423523>,  <26.528904, 38.734169, 32.362202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009989, 39.169548, 32.423523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238695, 38.856674, 32.324512>,  <27.375919, 38.668949, 32.265106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238695, 38.856674, 32.324512>,  <27.009989, 39.169548, 32.423523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238695, 38.856674, 32.324512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576837, 0.597817, -0.556663,
		0.583388, 0.175500, 0.793006,
		0.571767, -0.782185, -0.247524,
		27.410225, 38.622017, 32.250256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744734, 39.378963, 32.523129>,  <27.009989, 39.169548, 32.423523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744734, 39.378963, 32.523129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758408, 39.058876, 32.283634>,  <27.766611, 38.866825, 32.139938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758408, 39.058876, 32.283634>,  <27.744734, 39.378963, 32.523129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758408, 39.058876, 32.283634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629401, 0.482598, -0.609059,
		0.776328, -0.356025, 0.520154,
		0.034185, -0.800216, -0.598737,
		27.768663, 38.818810, 32.104012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391689, 39.373337, 32.342232>,  <27.744734, 39.378963, 32.523129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391689, 39.373337, 32.342232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226480, 39.138042, 32.064125>,  <28.127356, 38.996868, 31.897261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226480, 39.138042, 32.064125>,  <28.391689, 39.373337, 32.342232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226480, 39.138042, 32.064125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607210, 0.391110, -0.691613,
		0.678756, -0.707823, 0.195645,
		-0.413021, -0.588234, -0.695266,
		28.102573, 38.961571, 31.855545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017250, 39.181477, 32.064499>,  <28.391689, 39.373337, 32.342232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017250, 39.181477, 32.064499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701366, 39.125080, 31.825676>,  <28.511835, 39.091244, 31.682383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701366, 39.125080, 31.825676>,  <29.017250, 39.181477, 32.064499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701366, 39.125080, 31.825676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466832, 0.493323, -0.733962,
		0.398024, -0.858344, -0.323764,
		-0.789712, -0.140991, -0.597057,
		28.464453, 39.082783, 31.646559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217346, 38.848785, 31.479963>,  <29.017250, 39.181477, 32.064499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217346, 38.848785, 31.479963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883423, 39.048416, 31.387001>,  <28.683069, 39.168194, 31.331224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883423, 39.048416, 31.387001>,  <29.217346, 38.848785, 31.479963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883423, 39.048416, 31.387001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544901, 0.688759, -0.478219,
		-0.078598, -0.525860, -0.846932,
		-0.834809, 0.499081, -0.232406,
		28.632980, 39.198139, 31.317280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270544, 39.029987, 30.747141>,  <29.217346, 38.848785, 31.479963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270544, 39.029987, 30.747141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995132, 39.292259, 30.871086>,  <28.829885, 39.449623, 30.945454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995132, 39.292259, 30.871086>,  <29.270544, 39.029987, 30.747141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995132, 39.292259, 30.871086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382353, 0.691271, -0.613148,
		-0.616226, -0.303694, -0.726661,
		-0.688529, 0.655679, 0.309861,
		28.788574, 39.488964, 30.964045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915262, 39.360710, 30.164877>,  <29.270544, 39.029987, 30.747141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915262, 39.360710, 30.164877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847569, 39.620045, 30.461800>,  <28.806952, 39.775646, 30.639954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847569, 39.620045, 30.461800>,  <28.915262, 39.360710, 30.164877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847569, 39.620045, 30.461800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336479, 0.745927, -0.574782,
		-0.926359, 0.152498, -0.344388,
		-0.169235, 0.648334, 0.742309,
		28.796799, 39.814545, 30.684492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556158, 39.875298, 29.855844>,  <28.915262, 39.360710, 30.164877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556158, 39.875298, 29.855844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728659, 40.046165, 30.173725>,  <28.832159, 40.148685, 30.364454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728659, 40.046165, 30.173725>,  <28.556158, 39.875298, 29.855844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728659, 40.046165, 30.173725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427385, 0.679007, -0.596902,
		-0.794585, 0.597058, 0.110259,
		0.431252, 0.427166, 0.794702,
		28.858034, 40.174316, 30.412136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507721, 40.636391, 29.708418>,  <28.556158, 39.875298, 29.855844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507721, 40.636391, 29.708418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783859, 40.639858, 29.997789>,  <28.949541, 40.641937, 30.171412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783859, 40.639858, 29.997789>,  <28.507721, 40.636391, 29.708418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783859, 40.639858, 29.997789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468619, 0.756461, -0.456248,
		-0.551199, 0.653981, 0.518158,
		0.690344, 0.008665, 0.723429,
		28.990963, 40.642456, 30.214819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699183, 41.365360, 29.941690>,  <28.507721, 40.636391, 29.708418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699183, 41.365360, 29.941690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003227, 41.155998, 30.095716>,  <29.185654, 41.030380, 30.188133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003227, 41.155998, 30.095716>,  <28.699183, 41.365360, 29.941690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003227, 41.155998, 30.095716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593780, 0.800184, -0.084443,
		-0.263927, 0.292831, 0.919017,
		0.760110, -0.523407, 0.385067,
		29.231260, 40.998978, 30.211237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964304, 41.881771, 30.377167>,  <28.699183, 41.365360, 29.941690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964304, 41.881771, 30.377167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229116, 41.593197, 30.295929>,  <29.388004, 41.420052, 30.247187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229116, 41.593197, 30.295929>,  <28.964304, 41.881771, 30.377167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229116, 41.593197, 30.295929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694734, 0.692377, -0.194828,
		0.281173, -0.012114, 0.959580,
		0.662032, -0.721434, -0.203094,
		29.427727, 41.376766, 30.235001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595110, 41.758530, 30.813700>,  <28.964304, 41.881771, 30.377167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595110, 41.758530, 30.813700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619101, 41.719639, 30.416319>,  <29.633495, 41.696304, 30.177891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619101, 41.719639, 30.416319>,  <29.595110, 41.758530, 30.813700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619101, 41.719639, 30.416319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644301, 0.763931, -0.035864,
		0.762417, -0.637932, 0.108460,
		0.059977, -0.097224, -0.993454,
		29.637094, 41.690472, 30.118282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408220, 41.613983, 30.568911>,  <29.595110, 41.758530, 30.813700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408220, 41.613983, 30.568911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145760, 41.791794, 30.324989>,  <29.988283, 41.898479, 30.178637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145760, 41.791794, 30.324989>,  <30.408220, 41.613983, 30.568911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145760, 41.791794, 30.324989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570392, 0.821234, -0.015088,
		0.494085, -0.357727, -0.792409,
		-0.656150, 0.444529, -0.609804,
		29.948914, 41.925152, 30.142048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487375, 41.222233, 29.824039>,  <30.408220, 41.613983, 30.568911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487375, 41.222233, 29.824039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351225, 41.226593, 29.447948>,  <30.269535, 41.229210, 29.222294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351225, 41.226593, 29.447948>,  <30.487375, 41.222233, 29.824039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351225, 41.226593, 29.447948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221692, 0.972674, -0.068975,
		0.913782, -0.231919, -0.333490,
		-0.340374, 0.010904, -0.940227,
		30.249113, 41.229866, 29.165880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964399, 41.482246, 29.269173>,  <30.487375, 41.222233, 29.824039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964399, 41.482246, 29.269173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591640, 41.557301, 29.145006>,  <30.367985, 41.602333, 29.070505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591640, 41.557301, 29.145006>,  <30.964399, 41.482246, 29.269173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591640, 41.557301, 29.145006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208875, 0.977267, -0.036324,
		0.296545, -0.098689, -0.949906,
		-0.931897, 0.187640, -0.310417,
		30.312071, 41.613594, 29.051882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025890, 40.674282, 29.219156>,  <30.964399, 41.482246, 29.269173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025890, 40.674282, 29.219156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412500, 40.646980, 29.120226>,  <31.644466, 40.630600, 29.060867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412500, 40.646980, 29.120226>,  <31.025890, 40.674282, 29.219156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412500, 40.646980, 29.120226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164565, -0.574657, 0.801678,
		-0.196844, -0.815544, -0.544189,
		0.966525, -0.068251, -0.247327,
		31.702457, 40.626503, 29.046028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091389, 39.997082, 29.292089>,  <31.025890, 40.674282, 29.219156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091389, 39.997082, 29.292089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455124, 40.162048, 29.314068>,  <31.673365, 40.261028, 29.327255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455124, 40.162048, 29.314068>,  <31.091389, 39.997082, 29.292089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455124, 40.162048, 29.314068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215091, -0.579024, 0.786427,
		0.356152, -0.703308, -0.615235,
		0.909336, 0.412419, 0.054945,
		31.727924, 40.285774, 29.330551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689463, 39.530144, 29.223833>,  <31.091389, 39.997082, 29.292089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689463, 39.530144, 29.223833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710434, 39.843998, 29.470930>,  <31.723017, 40.032310, 29.619188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710434, 39.843998, 29.470930>,  <31.689463, 39.530144, 29.223833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710434, 39.843998, 29.470930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100299, -0.619601, 0.778482,
		0.993575, 0.021145, -0.111181,
		0.052427, 0.784632, 0.617741,
		31.726162, 40.079388, 29.656252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357388, 39.493855, 29.554543>,  <31.689463, 39.530144, 29.223833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357388, 39.493855, 29.554543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055065, 39.662647, 29.754818>,  <31.873671, 39.763924, 29.874983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055065, 39.662647, 29.754818>,  <32.357388, 39.493855, 29.554543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055065, 39.662647, 29.754818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096850, -0.684196, 0.722839,
		0.647592, 0.594819, 0.476252,
		-0.755807, 0.421980, 0.500688,
		31.828323, 39.789242, 29.905024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634727, 39.719715, 30.302788>,  <32.357388, 39.493855, 29.554543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634727, 39.719715, 30.302788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239761, 39.659893, 30.282230>,  <32.002781, 39.624001, 30.269896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239761, 39.659893, 30.282230>,  <32.634727, 39.719715, 30.302788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239761, 39.659893, 30.282230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049192, -0.599336, 0.798985,
		-0.150298, 0.786402, 0.599151,
		-0.987416, -0.149559, -0.051395,
		31.943537, 39.615025, 30.266811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443546, 39.351955, 30.830166>,  <32.634727, 39.719715, 30.302788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443546, 39.351955, 30.830166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071835, 39.407391, 30.693207>,  <31.848808, 39.440651, 30.611032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071835, 39.407391, 30.693207>,  <32.443546, 39.351955, 30.830166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071835, 39.407391, 30.693207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340336, -0.681539, 0.647824,
		-0.143574, 0.718538, 0.680506,
		-0.929278, 0.138590, -0.342396,
		31.793051, 39.448967, 30.590488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065666, 39.323338, 31.447086>,  <32.443546, 39.351955, 30.830166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065666, 39.323338, 31.447086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819160, 39.252831, 31.140064>,  <31.671255, 39.210526, 30.955851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819160, 39.252831, 31.140064>,  <32.065666, 39.323338, 31.447086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819160, 39.252831, 31.140064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435297, -0.735977, 0.518512,
		-0.656300, 0.653658, 0.376831,
		-0.616269, -0.176266, -0.767557,
		31.634279, 39.199951, 30.909798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409157, 39.338661, 31.670938>,  <32.065666, 39.323338, 31.447086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409157, 39.338661, 31.670938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365847, 39.135101, 31.329344>,  <31.339861, 39.012966, 31.124386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365847, 39.135101, 31.329344>,  <31.409157, 39.338661, 31.670938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365847, 39.135101, 31.329344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577944, -0.666731, 0.470586,
		-0.808862, 0.544510, -0.221926,
		-0.108274, -0.508900, -0.853989,
		31.333364, 38.982430, 31.073147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701771, 39.214954, 31.702063>,  <31.409157, 39.338661, 31.670938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701771, 39.214954, 31.702063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874584, 38.964642, 31.442295>,  <30.978271, 38.814453, 31.286434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874584, 38.964642, 31.442295>,  <30.701771, 39.214954, 31.702063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874584, 38.964642, 31.442295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476010, -0.769846, 0.425149,
		-0.765993, 0.125437, -0.630492,
		0.432052, -0.625782, -0.649406,
		31.004194, 38.776909, 31.247469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137920, 38.972561, 31.287941>,  <30.701771, 39.214954, 31.702063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137920, 38.972561, 31.287941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444410, 38.716747, 31.262976>,  <30.628304, 38.563259, 31.247997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444410, 38.716747, 31.262976>,  <30.137920, 38.972561, 31.287941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444410, 38.716747, 31.262976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615197, -0.758159, 0.216164,
		-0.185563, -0.127235, -0.974360,
		0.766223, -0.639536, -0.062412,
		30.674278, 38.524887, 31.244251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848061, 38.312611, 30.970579>,  <30.137920, 38.972561, 31.287941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848061, 38.312611, 30.970579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170713, 38.234371, 31.193678>,  <30.364305, 38.187428, 31.327538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170713, 38.234371, 31.193678>,  <29.848061, 38.312611, 30.970579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170713, 38.234371, 31.193678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454070, -0.809166, 0.372922,
		0.378367, -0.554068, -0.741517,
		0.806634, -0.195599, 0.557748,
		30.412704, 38.175690, 31.361002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100403, 37.592312, 30.800047>,  <29.848061, 38.312611, 30.970579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100403, 37.592312, 30.800047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256491, 37.681427, 31.157393>,  <30.350143, 37.734898, 31.371799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256491, 37.681427, 31.157393>,  <30.100403, 37.592312, 30.800047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256491, 37.681427, 31.157393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310100, -0.881795, 0.355353,
		0.866930, -0.415697, -0.275006,
		0.390218, 0.222787, 0.893362,
		30.373556, 37.748264, 31.425402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406576, 37.018009, 31.003929>,  <30.100403, 37.592312, 30.800047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406576, 37.018009, 31.003929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360966, 37.213966, 31.349648>,  <30.333599, 37.331539, 31.557077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360966, 37.213966, 31.349648>,  <30.406576, 37.018009, 31.003929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360966, 37.213966, 31.349648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412183, -0.814888, 0.407507,
		0.903938, -0.309780, 0.294844,
		-0.114027, 0.489891, 0.864294,
		30.326757, 37.360935, 31.608936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560476, 36.496155, 31.458498>,  <30.406576, 37.018009, 31.003929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560476, 36.496155, 31.458498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358015, 36.772911, 31.664450>,  <30.236538, 36.938965, 31.788021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358015, 36.772911, 31.664450>,  <30.560476, 36.496155, 31.458498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358015, 36.772911, 31.664450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477429, -0.721963, 0.500831,
		0.718242, 0.007680, 0.695751,
		-0.506153, 0.691890, 0.514877,
		30.206169, 36.980476, 31.818913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532969, 36.166515, 32.178688>,  <30.560476, 36.496155, 31.458498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532969, 36.166515, 32.178688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281050, 36.475937, 32.206909>,  <30.129898, 36.661591, 32.223843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281050, 36.475937, 32.206909>,  <30.532969, 36.166515, 32.178688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281050, 36.475937, 32.206909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575384, -0.525609, 0.626633,
		0.521814, 0.354057, 0.776115,
		-0.629797, 0.773549, 0.070552,
		30.092112, 36.708000, 32.228073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441160, 36.364925, 32.921852>,  <30.532969, 36.166515, 32.178688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441160, 36.364925, 32.921852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118359, 36.492001, 32.722725>,  <29.924677, 36.568245, 32.603249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118359, 36.492001, 32.722725>,  <30.441160, 36.364925, 32.921852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118359, 36.492001, 32.722725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588210, -0.507289, 0.629815,
		-0.052452, 0.801083, 0.596250,
		-0.807006, 0.317685, -0.497813,
		29.876257, 36.587307, 32.573380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115385, 36.704861, 33.410439>,  <30.441160, 36.364925, 32.921852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115385, 36.704861, 33.410439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853664, 36.603237, 33.125526>,  <29.696632, 36.542263, 32.954578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853664, 36.603237, 33.125526>,  <30.115385, 36.704861, 33.410439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853664, 36.603237, 33.125526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607103, -0.385132, 0.695054,
		-0.450908, 0.887202, 0.097752,
		-0.654300, -0.254060, -0.712281,
		29.657373, 36.527020, 32.911842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459055, 37.071045, 33.577496>,  <30.115385, 36.704861, 33.410439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459055, 37.071045, 33.577496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368040, 36.760880, 33.341881>,  <29.313431, 36.574780, 33.200512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368040, 36.760880, 33.341881>,  <29.459055, 37.071045, 33.577496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368040, 36.760880, 33.341881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625379, -0.347304, 0.698771,
		-0.746409, 0.527369, -0.405900,
		-0.227540, -0.775411, -0.589036,
		29.299778, 36.528255, 33.165169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867943, 36.909908, 33.814537>,  <29.459055, 37.071045, 33.577496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867943, 36.909908, 33.814537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943298, 36.581303, 33.599270>,  <28.988512, 36.384140, 33.470108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943298, 36.581303, 33.599270>,  <28.867943, 36.909908, 33.814537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943298, 36.581303, 33.599270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602930, -0.529303, 0.596921,
		-0.775232, 0.212023, -0.595031,
		0.188390, -0.821514, -0.538168,
		28.999815, 36.334850, 33.437820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165649, 36.591969, 33.808434>,  <28.867943, 36.909908, 33.814537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165649, 36.591969, 33.808434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429041, 36.305038, 33.717346>,  <28.587076, 36.132881, 33.662693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429041, 36.305038, 33.717346>,  <28.165649, 36.591969, 33.808434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429041, 36.305038, 33.717346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487015, -0.636816, 0.597730,
		-0.573777, -0.282693, -0.768677,
		0.658480, -0.717321, -0.227715,
		28.626585, 36.089844, 33.649033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780647, 35.980453, 33.766987>,  <28.165649, 36.591969, 33.808434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780647, 35.980453, 33.766987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155706, 35.868073, 33.848850>,  <28.380741, 35.800644, 33.897968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155706, 35.868073, 33.848850>,  <27.780647, 35.980453, 33.766987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155706, 35.868073, 33.848850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312670, -0.424526, 0.849715,
		-0.151848, -0.860722, -0.485901,
		0.937646, -0.280954, 0.204659,
		28.437000, 35.783787, 33.910248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732880, 35.374107, 33.992287>,  <27.780647, 35.980453, 33.766987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732880, 35.374107, 33.992287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088587, 35.470757, 34.147629>,  <28.302011, 35.528748, 34.240833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088587, 35.470757, 34.147629>,  <27.732880, 35.374107, 33.992287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088587, 35.470757, 34.147629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258808, -0.434251, 0.862812,
		0.377123, -0.867780, -0.323631,
		0.889268, 0.241628, 0.388354,
		28.355368, 35.543243, 34.264133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806063, 34.881367, 34.452721>,  <27.732880, 35.374107, 33.992287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806063, 34.881367, 34.452721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095295, 35.129955, 34.573338>,  <28.268833, 35.279110, 34.645706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095295, 35.129955, 34.573338>,  <27.806063, 34.881367, 34.452721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095295, 35.129955, 34.573338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142269, -0.293190, 0.945409,
		0.675955, -0.726507, -0.123583,
		0.723079, 0.621472, 0.301543,
		28.312220, 35.316399, 34.663799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181017, 34.506130, 34.929783>,  <27.806063, 34.881367, 34.452721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181017, 34.506130, 34.929783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291721, 34.884991, 34.994667>,  <28.358143, 35.112305, 35.033596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291721, 34.884991, 34.994667>,  <28.181017, 34.506130, 34.929783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291721, 34.884991, 34.994667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156113, -0.122244, 0.980146,
		0.948173, -0.296588, 0.114030,
		0.276760, 0.947150, 0.162210,
		28.374750, 35.169136, 35.043331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825459, 34.585838, 35.373852>,  <28.181017, 34.506130, 34.929783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825459, 34.585838, 35.373852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595350, 34.910427, 35.414993>,  <28.457285, 35.105179, 35.439678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595350, 34.910427, 35.414993>,  <28.825459, 34.585838, 35.373852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595350, 34.910427, 35.414993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020095, -0.139725, 0.989987,
		0.817717, 0.567443, 0.096686,
		-0.575270, 0.811472, 0.102852,
		28.422770, 35.153870, 35.445850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053093, 34.874062, 35.974854>,  <28.825459, 34.585838, 35.373852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053093, 34.874062, 35.974854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677717, 35.006275, 35.934700>,  <28.452492, 35.085606, 35.910606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677717, 35.006275, 35.934700>,  <29.053093, 34.874062, 35.974854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677717, 35.006275, 35.934700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107640, -0.003664, 0.994183,
		0.328245, 0.943786, 0.039018,
		-0.938439, 0.330536, -0.100387,
		28.396185, 35.105434, 35.904583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909637, 35.483898, 36.400448>,  <29.053093, 34.874062, 35.974854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909637, 35.483898, 36.400448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554632, 35.316883, 36.322491>,  <28.341629, 35.216675, 36.275719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554632, 35.316883, 36.322491>,  <28.909637, 35.483898, 36.400448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554632, 35.316883, 36.322491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255886, 0.094868, 0.962041,
		-0.383201, 0.903693, -0.191039,
		-0.887513, -0.417539, -0.194889,
		28.288378, 35.191620, 36.264023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515114, 35.756203, 36.972553>,  <28.909637, 35.483898, 36.400448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515114, 35.756203, 36.972553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312408, 35.453590, 36.807217>,  <28.190786, 35.272022, 36.708015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312408, 35.453590, 36.807217>,  <28.515114, 35.756203, 36.972553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312408, 35.453590, 36.807217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485455, -0.145794, 0.862020,
		-0.712408, 0.637497, -0.293380,
		-0.506762, -0.756533, -0.413341,
		28.160379, 35.226631, 36.683216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894714, 35.515980, 37.618023>,  <28.515114, 35.756203, 36.972553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894714, 35.515980, 37.618023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525127, 35.668858, 37.612122>,  <28.303375, 35.760582, 37.608582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525127, 35.668858, 37.612122>,  <28.894714, 35.515980, 37.618023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525127, 35.668858, 37.612122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220840, 0.564595, 0.795275,
		0.312278, 0.731548, -0.606069,
		-0.923965, 0.382192, -0.014755,
		28.247938, 35.783516, 37.607697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459780, 35.002476, 37.662891>,  <28.894714, 35.515980, 37.618023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459780, 35.002476, 37.662891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683283, 34.772099, 37.424198>,  <28.817385, 34.633873, 37.280983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683283, 34.772099, 37.424198>,  <28.459780, 35.002476, 37.662891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683283, 34.772099, 37.424198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008999, -0.715277, 0.698783,
		-0.829284, -0.395818, -0.394482,
		0.558755, -0.575939, -0.596730,
		28.850910, 34.599316, 37.245178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328325, 34.237156, 37.414349>,  <28.459780, 35.002476, 37.662891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328325, 34.237156, 37.414349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697689, 34.365269, 37.498951>,  <28.919308, 34.442139, 37.549713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697689, 34.365269, 37.498951>,  <28.328325, 34.237156, 37.414349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697689, 34.365269, 37.498951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016287, -0.517863, 0.855308,
		0.383474, -0.793243, -0.472983,
		0.923408, 0.320285, 0.211506,
		28.974712, 34.461353, 37.562405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741520, 33.657665, 37.413635>,  <28.328325, 34.237156, 37.414349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741520, 33.657665, 37.413635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863916, 33.930180, 37.679634>,  <28.937355, 34.093689, 37.839233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863916, 33.930180, 37.679634>,  <28.741520, 33.657665, 37.413635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863916, 33.930180, 37.679634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043706, -0.687708, 0.724670,
		0.951030, -0.250808, -0.180658,
		0.305993, 0.681287, 0.664993,
		28.955715, 34.134567, 37.879131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355520, 33.338684, 37.043037>,  <28.741520, 33.657665, 37.413635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355520, 33.338684, 37.043037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452467, 32.958019, 37.118500>,  <29.510635, 32.729618, 37.163776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452467, 32.958019, 37.118500>,  <29.355520, 33.338684, 37.043037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452467, 32.958019, 37.118500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381264, -0.085380, -0.920515,
		0.892130, 0.295029, 0.342143,
		0.242367, -0.951666, 0.188654,
		29.525177, 32.672520, 37.175095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029114, 33.218712, 36.768314>,  <29.355520, 33.338684, 37.043037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029114, 33.218712, 36.768314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831043, 32.873089, 36.804558>,  <29.712200, 32.665714, 36.826305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831043, 32.873089, 36.804558>,  <30.029114, 33.218712, 36.768314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831043, 32.873089, 36.804558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333676, -0.285438, -0.898435,
		0.802160, -0.414651, 0.429656,
		-0.495177, -0.864054, 0.090608,
		29.682489, 32.613873, 36.831741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558342, 32.629364, 36.735817>,  <30.029114, 33.218712, 36.768314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558342, 32.629364, 36.735817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184874, 32.576298, 36.602757>,  <29.960793, 32.544456, 36.522919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184874, 32.576298, 36.602757>,  <30.558342, 32.629364, 36.735817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184874, 32.576298, 36.602757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353527, -0.192989, -0.915300,
		0.057230, -0.972191, 0.227089,
		-0.933672, -0.132665, -0.332651,
		29.904772, 32.536499, 36.502960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109867, 32.710743, 36.168602>,  <30.558342, 32.629364, 36.735817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109867, 32.710743, 36.168602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459833, 32.517307, 36.178883>,  <31.669813, 32.401245, 36.185051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459833, 32.517307, 36.178883>,  <31.109867, 32.710743, 36.168602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459833, 32.517307, 36.178883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408072, 0.764781, 0.498585,
		-0.260767, -0.425733, 0.866459,
		0.874916, -0.483592, 0.025700,
		31.722307, 32.372231, 36.186592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411522, 32.680702, 36.860249>,  <31.109867, 32.710743, 36.168602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411522, 32.680702, 36.860249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729395, 32.634022, 36.621967>,  <31.920118, 32.606014, 36.479000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729395, 32.634022, 36.621967>,  <31.411522, 32.680702, 36.860249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729395, 32.634022, 36.621967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480283, 0.721023, 0.499454,
		0.371226, -0.683012, 0.629035,
		0.794682, -0.116705, -0.595702,
		31.967800, 32.599010, 36.443256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996510, 32.520893, 37.311428>,  <31.411522, 32.680702, 36.860249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996510, 32.520893, 37.311428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149475, 32.661381, 36.969574>,  <32.241253, 32.745674, 36.764462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149475, 32.661381, 36.969574>,  <31.996510, 32.520893, 37.311428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149475, 32.661381, 36.969574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499450, 0.699603, 0.510985,
		0.777373, -0.622258, 0.092124,
		0.382414, 0.351215, -0.854639,
		32.264198, 32.766747, 36.713181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682697, 32.705048, 37.482620>,  <31.996510, 32.520893, 37.311428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682697, 32.705048, 37.482620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566750, 32.908413, 37.158276>,  <32.497181, 33.030434, 36.963669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566750, 32.908413, 37.158276>,  <32.682697, 32.705048, 37.482620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566750, 32.908413, 37.158276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525394, 0.792689, 0.309199,
		0.799960, -0.336392, -0.496895,
		-0.289871, 0.508413, -0.810858,
		32.479790, 33.060936, 36.915020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247807, 33.123623, 37.258827>,  <32.682697, 32.705048, 37.482620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247807, 33.123623, 37.258827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939480, 33.300785, 37.075665>,  <32.754486, 33.407082, 36.965767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939480, 33.300785, 37.075665>,  <33.247807, 33.123623, 37.258827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939480, 33.300785, 37.075665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429341, 0.892189, 0.140231,
		0.470651, -0.088508, -0.877869,
		-0.770814, 0.442905, -0.457910,
		32.708237, 33.433655, 36.938290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508659, 33.639561, 36.754013>,  <33.247807, 33.123623, 37.258827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508659, 33.639561, 36.754013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138824, 33.764481, 36.841286>,  <32.916924, 33.839432, 36.893650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138824, 33.764481, 36.841286>,  <33.508659, 33.639561, 36.754013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138824, 33.764481, 36.841286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362543, 0.897236, 0.252051,
		-0.117045, 0.312143, -0.942797,
		-0.924588, 0.312304, 0.218182,
		32.861446, 33.858173, 36.906742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411972, 34.396820, 36.516769>,  <33.508659, 33.639561, 36.754013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411972, 34.396820, 36.516769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093372, 34.361496, 36.756035>,  <32.902214, 34.340302, 36.899593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093372, 34.361496, 36.756035>,  <33.411972, 34.396820, 36.516769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093372, 34.361496, 36.756035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156118, 0.925696, 0.344548,
		-0.584142, 0.367815, -0.723526,
		-0.796496, -0.088309, 0.598161,
		32.854424, 34.335003, 36.935482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934998, 34.950081, 36.394817>,  <33.411972, 34.396820, 36.516769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934998, 34.950081, 36.394817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853432, 34.832634, 36.768387>,  <32.804493, 34.762165, 36.992527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853432, 34.832634, 36.768387>,  <32.934998, 34.950081, 36.394817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853432, 34.832634, 36.768387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234087, 0.911670, 0.337728,
		-0.950591, 0.287486, -0.117169,
		-0.203912, -0.293614, 0.933922,
		32.792259, 34.744549, 37.048565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526981, 35.547306, 36.734081>,  <32.934998, 34.950081, 36.394817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526981, 35.547306, 36.734081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671093, 35.313713, 37.025055>,  <32.757561, 35.173557, 37.199638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671093, 35.313713, 37.025055>,  <32.526981, 35.547306, 36.734081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671093, 35.313713, 37.025055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219690, 0.810990, 0.542247,
		-0.906606, -0.035550, 0.420478,
		0.360281, -0.583979, 0.727438,
		32.779179, 35.138519, 37.243286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316124, 35.935818, 37.316483>,  <32.526981, 35.547306, 36.734081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316124, 35.935818, 37.316483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619057, 35.692268, 37.410900>,  <32.800816, 35.546139, 37.467552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619057, 35.692268, 37.410900>,  <32.316124, 35.935818, 37.316483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619057, 35.692268, 37.410900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431132, 0.737680, 0.519570,
		-0.490476, -0.291724, 0.821176,
		0.757336, -0.608872, 0.236043,
		32.846256, 35.509605, 37.481712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201824, 35.907269, 38.030540>,  <32.316124, 35.935818, 37.316483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201824, 35.907269, 38.030540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583202, 35.800014, 37.975330>,  <32.812027, 35.735661, 37.942204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583202, 35.800014, 37.975330>,  <32.201824, 35.907269, 38.030540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583202, 35.800014, 37.975330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293799, 0.722561, 0.625770,
		-0.068058, -0.637187, 0.767698,
		0.953441, -0.268138, -0.138029,
		32.869236, 35.719574, 37.933922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469589, 35.847321, 38.720577>,  <32.201824, 35.907269, 38.030540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469589, 35.847321, 38.720577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776646, 35.914745, 38.473251>,  <32.960880, 35.955200, 38.324856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776646, 35.914745, 38.473251>,  <32.469589, 35.847321, 38.720577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776646, 35.914745, 38.473251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333922, 0.718282, 0.610383,
		0.547007, -0.675025, 0.495100,
		0.767646, 0.168558, -0.618311,
		33.006939, 35.965313, 38.287758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016457, 35.975624, 39.199604>,  <32.469589, 35.847321, 38.720577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016457, 35.975624, 39.199604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149731, 36.118267, 38.850475>,  <33.229694, 36.203854, 38.640999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149731, 36.118267, 38.850475>,  <33.016457, 35.975624, 39.199604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149731, 36.118267, 38.850475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466590, 0.742055, 0.481299,
		0.819317, -0.567611, 0.080852,
		0.333187, 0.356612, -0.872820,
		33.249687, 36.225250, 38.588631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721306, 36.252880, 39.238327>,  <33.016457, 35.975624, 39.199604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721306, 36.252880, 39.238327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572441, 36.443115, 38.919502>,  <33.483120, 36.557259, 38.728207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572441, 36.443115, 38.919502>,  <33.721306, 36.252880, 39.238327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572441, 36.443115, 38.919502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422040, 0.851549, 0.311041,
		0.826665, -0.220633, -0.517636,
		-0.372166, 0.475590, -0.797061,
		33.460793, 36.585793, 38.680386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336845, 36.533039, 38.991577>,  <33.721306, 36.252880, 39.238327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336845, 36.533039, 38.991577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034943, 36.740707, 38.831177>,  <33.853802, 36.865307, 38.734936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034943, 36.740707, 38.831177>,  <34.336845, 36.533039, 38.991577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034943, 36.740707, 38.831177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283754, 0.809508, 0.513985,
		0.591455, 0.274152, -0.758302,
		-0.754761, 0.519170, -0.400996,
		33.808514, 36.896458, 38.710876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610756, 37.194607, 38.831432>,  <34.336845, 36.533039, 38.991577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610756, 37.194607, 38.831432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219742, 37.275726, 38.808491>,  <33.985134, 37.324398, 38.794727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219742, 37.275726, 38.808491>,  <34.610756, 37.194607, 38.831432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219742, 37.275726, 38.808491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163707, 0.902051, 0.399379,
		0.132728, 0.381020, -0.914990,
		-0.977540, 0.202799, -0.057352,
		33.926479, 37.336567, 38.791286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590240, 37.893620, 38.710503>,  <34.610756, 37.194607, 38.831432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590240, 37.893620, 38.710503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228142, 37.810596, 38.858799>,  <34.010883, 37.760780, 38.947777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228142, 37.810596, 38.858799>,  <34.590240, 37.893620, 38.710503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228142, 37.810596, 38.858799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042988, 0.912825, 0.406083,
		-0.422712, 0.351667, -0.835252,
		-0.905244, -0.207561, 0.370744,
		33.956570, 37.748329, 38.970024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133884, 38.447456, 38.504745>,  <34.590240, 37.893620, 38.710503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133884, 38.447456, 38.504745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003952, 38.254425, 38.830101>,  <33.925991, 38.138607, 39.025314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003952, 38.254425, 38.830101>,  <34.133884, 38.447456, 38.504745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003952, 38.254425, 38.830101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055699, 0.848771, 0.525819,
		-0.944130, 0.216107, -0.248828,
		-0.324831, -0.482583, 0.813387,
		33.906502, 38.109650, 39.074116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623753, 38.887119, 38.713814>,  <34.133884, 38.447456, 38.504745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623753, 38.887119, 38.713814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674835, 38.673328, 39.048004>,  <33.705486, 38.545055, 39.248520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674835, 38.673328, 39.048004>,  <33.623753, 38.887119, 38.713814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674835, 38.673328, 39.048004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148999, 0.822477, 0.548936,
		-0.980556, -0.194591, 0.025403,
		0.127711, -0.534477, 0.835479,
		33.713150, 38.512985, 39.298649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069954, 38.984837, 39.080444>,  <33.623753, 38.887119, 38.713814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069954, 38.984837, 39.080444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335545, 38.885452, 39.362549>,  <33.494900, 38.825821, 39.531811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335545, 38.885452, 39.362549>,  <33.069954, 38.984837, 39.080444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335545, 38.885452, 39.362549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233547, 0.827088, 0.511254,
		-0.710344, -0.504174, 0.491142,
		0.663979, -0.248462, 0.705265,
		33.534737, 38.810913, 39.574127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683247, 38.925900, 39.803696>,  <33.069954, 38.984837, 39.080444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683247, 38.925900, 39.803696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076694, 38.970837, 39.860069>,  <33.312763, 38.997799, 39.893894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076694, 38.970837, 39.860069>,  <32.683247, 38.925900, 39.803696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076694, 38.970837, 39.860069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178587, 0.712992, 0.678048,
		-0.024309, -0.692113, 0.721380,
		0.983624, 0.112347, 0.140934,
		33.371780, 39.004539, 39.902351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727520, 39.479382, 40.253109>,  <32.683247, 38.925900, 39.803696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727520, 39.479382, 40.253109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124241, 39.450726, 40.210800>,  <33.362274, 39.433533, 40.185417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124241, 39.450726, 40.210800>,  <32.727520, 39.479382, 40.253109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124241, 39.450726, 40.210800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111942, 0.886296, 0.449387,
		0.061549, -0.457545, 0.887054,
		0.991807, -0.071640, -0.105769,
		33.421783, 39.429234, 40.179070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980518, 39.527977, 40.884609>,  <32.727520, 39.479382, 40.253109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980518, 39.527977, 40.884609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289539, 39.627968, 40.651138>,  <33.474953, 39.687962, 40.511055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289539, 39.627968, 40.651138>,  <32.980518, 39.527977, 40.884609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289539, 39.627968, 40.651138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040710, 0.897851, 0.438413,
		0.633644, -0.362459, 0.683461,
		0.772553, 0.249974, -0.583673,
		33.521305, 39.702961, 40.476036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619118, 39.724434, 41.320927>,  <32.980518, 39.527977, 40.884609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619118, 39.724434, 41.320927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670635, 39.890141, 40.960529>,  <33.701546, 39.989563, 40.744289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670635, 39.890141, 40.960529>,  <33.619118, 39.724434, 41.320927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670635, 39.890141, 40.960529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229818, 0.871361, 0.433490,
		0.964674, -0.262897, 0.017023,
		0.128797, 0.414264, -0.900997,
		33.709274, 40.014420, 40.690231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263416, 40.120335, 41.407791>,  <33.619118, 39.724434, 41.320927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263416, 40.120335, 41.407791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080093, 40.279583, 41.089935>,  <33.970100, 40.375130, 40.899220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080093, 40.279583, 41.089935>,  <34.263416, 40.120335, 41.407791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080093, 40.279583, 41.089935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182105, 0.917163, 0.354472,
		0.869940, 0.017748, -0.492839,
		-0.458305, 0.398117, -0.794644,
		33.942600, 40.399017, 40.851543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640205, 40.670666, 41.255127>,  <34.263416, 40.120335, 41.407791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640205, 40.670666, 41.255127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294067, 40.721497, 41.061203>,  <34.086384, 40.751995, 40.944851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294067, 40.721497, 41.061203>,  <34.640205, 40.670666, 41.255127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294067, 40.721497, 41.061203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119196, 0.887383, 0.445357,
		0.486803, 0.443173, -0.752742,
		-0.865341, 0.127077, -0.484806,
		34.034466, 40.759621, 40.915760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618073, 41.323254, 40.884827>,  <34.640205, 40.670666, 41.255127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618073, 41.323254, 40.884827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240875, 41.225697, 40.975399>,  <34.014557, 41.167160, 41.029743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240875, 41.225697, 40.975399>,  <34.618073, 41.323254, 40.884827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240875, 41.225697, 40.975399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135726, 0.903072, 0.407480,
		-0.303865, 0.353520, -0.884697,
		-0.942998, -0.243895, 0.226431,
		33.957977, 41.152527, 41.043327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287815, 41.991730, 40.898155>,  <34.618073, 41.323254, 40.884827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287815, 41.991730, 40.898155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025383, 41.735836, 41.058304>,  <33.867924, 41.582298, 41.154392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025383, 41.735836, 41.058304>,  <34.287815, 41.991730, 40.898155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025383, 41.735836, 41.058304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284958, 0.701230, 0.653510,
		-0.698827, 0.314665, -0.642360,
		-0.656079, -0.639736, 0.400373,
		33.828560, 41.543915, 41.178417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664749, 42.316326, 40.817993>,  <34.287815, 41.991730, 40.898155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664749, 42.316326, 40.817993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652405, 42.053028, 41.118862>,  <33.644997, 41.895050, 41.299381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652405, 42.053028, 41.118862>,  <33.664749, 42.316326, 40.817993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652405, 42.053028, 41.118862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342835, 0.713848, 0.610644,
		-0.938889, -0.239025, -0.247699,
		-0.030860, -0.658246, 0.752170,
		33.643147, 41.855553, 41.344513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066322, 42.611362, 41.274685>,  <33.664749, 42.316326, 40.817993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066322, 42.611362, 41.274685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266518, 42.346275, 41.497509>,  <33.386635, 42.187225, 41.631203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266518, 42.346275, 41.497509>,  <33.066322, 42.611362, 41.274685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266518, 42.346275, 41.497509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049830, 0.620332, 0.782755,
		-0.864307, -0.419520, 0.277447,
		0.500490, -0.662715, 0.557062,
		33.416664, 42.147461, 41.664627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606140, 42.593163, 41.920895>,  <33.066322, 42.611362, 41.274685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606140, 42.593163, 41.920895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976719, 42.460678, 41.992451>,  <33.199066, 42.381187, 42.035385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976719, 42.460678, 41.992451>,  <32.606140, 42.593163, 41.920895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976719, 42.460678, 41.992451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059319, 0.597731, 0.799499,
		-0.371731, -0.730079, 0.573411,
		0.926443, -0.331213, 0.178888,
		33.254650, 42.361313, 42.046116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551723, 42.548008, 42.615360>,  <32.606140, 42.593163, 41.920895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551723, 42.548008, 42.615360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938854, 42.554890, 42.514946>,  <33.171131, 42.559017, 42.454697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938854, 42.554890, 42.514946>,  <32.551723, 42.548008, 42.615360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938854, 42.554890, 42.514946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175109, 0.670391, 0.721050,
		0.180697, -0.741808, 0.645809,
		0.967825, 0.017204, -0.251035,
		33.229202, 42.560051, 42.439636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969372, 42.375229, 43.232529>,  <32.551723, 42.548008, 42.615360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969372, 42.375229, 43.232529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225887, 42.565094, 42.991383>,  <33.379795, 42.679012, 42.846695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225887, 42.565094, 42.991383>,  <32.969372, 42.375229, 43.232529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225887, 42.565094, 42.991383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199513, 0.655521, 0.728345,
		0.740911, -0.587357, 0.325674,
		0.641285, 0.474663, -0.602868,
		33.418274, 42.707493, 42.810524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401474, 42.596272, 43.547207>,  <32.969372, 42.375229, 43.232529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401474, 42.596272, 43.547207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487331, 42.857597, 43.256798>,  <33.538845, 43.014393, 43.082554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487331, 42.857597, 43.256798>,  <33.401474, 42.596272, 43.547207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487331, 42.857597, 43.256798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092410, 0.726429, 0.681000,
		0.972312, -0.213261, 0.095547,
		0.214639, 0.653315, -0.726023,
		33.551723, 43.053593, 43.038990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063438, 42.974800, 43.737679>,  <33.401474, 42.596272, 43.547207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063438, 42.974800, 43.737679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836876, 43.178421, 43.478436>,  <33.700939, 43.300594, 43.322891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836876, 43.178421, 43.478436>,  <34.063438, 42.974800, 43.737679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836876, 43.178421, 43.478436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025446, 0.775242, 0.631152,
		0.823733, 0.373980, -0.426148,
		-0.566406, 0.509057, -0.648109,
		33.666954, 43.331139, 43.284004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333557, 43.654007, 43.703297>,  <34.063438, 42.974800, 43.737679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333557, 43.654007, 43.703297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983612, 43.742409, 43.530888>,  <33.773647, 43.795448, 43.427444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983612, 43.742409, 43.530888>,  <34.333557, 43.654007, 43.703297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983612, 43.742409, 43.530888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081539, 0.809950, 0.580803,
		0.477464, 0.543266, -0.690572,
		-0.874860, 0.221004, -0.431019,
		33.721153, 43.808708, 43.401581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271385, 44.401627, 43.651806>,  <34.333557, 43.654007, 43.703297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271385, 44.401627, 43.651806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891922, 44.276165, 43.635506>,  <33.664242, 44.200886, 43.625725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891922, 44.276165, 43.635506>,  <34.271385, 44.401627, 43.651806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891922, 44.276165, 43.635506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284522, 0.789979, 0.543121,
		-0.138162, 0.526832, -0.838665,
		-0.948661, -0.313657, -0.040750,
		33.607323, 44.182068, 43.623280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893684, 44.989037, 43.772385>,  <34.271385, 44.401627, 43.651806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893684, 44.989037, 43.772385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579090, 44.744564, 43.807941>,  <33.390335, 44.597881, 43.829277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579090, 44.744564, 43.807941>,  <33.893684, 44.989037, 43.772385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579090, 44.744564, 43.807941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481976, 0.697364, 0.530454,
		-0.386194, 0.374349, -0.843040,
		-0.786481, -0.611184, 0.088891,
		33.343147, 44.561211, 43.834610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335899, 45.373199, 43.584255>,  <33.893684, 44.989037, 43.772385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335899, 45.373199, 43.584255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208542, 45.061531, 43.800220>,  <33.132126, 44.874531, 43.929802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208542, 45.061531, 43.800220>,  <33.335899, 45.373199, 43.584255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208542, 45.061531, 43.800220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540569, 0.617114, 0.571800,
		-0.778723, -0.109804, -0.617685,
		-0.318396, -0.779175, 0.539917,
		33.113022, 44.827778, 43.962196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608402, 45.295246, 43.538422>,  <33.335899, 45.373199, 43.584255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608402, 45.295246, 43.538422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775669, 45.155430, 43.873791>,  <32.876030, 45.071541, 44.075012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775669, 45.155430, 43.873791>,  <32.608402, 45.295246, 43.538422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775669, 45.155430, 43.873791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539232, 0.647258, 0.538782,
		-0.731005, -0.677405, 0.082175,
		0.418162, -0.349542, 0.838427,
		32.901119, 45.050568, 44.125320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107849, 45.204376, 44.024181>,  <32.608402, 45.295246, 43.538422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107849, 45.204376, 44.024181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449081, 45.282272, 44.217808>,  <32.653824, 45.329010, 44.333984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449081, 45.282272, 44.217808>,  <32.107849, 45.204376, 44.024181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449081, 45.282272, 44.217808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425267, 0.797038, 0.428810,
		-0.302313, -0.571669, 0.762759,
		0.853086, 0.194741, 0.484067,
		32.705006, 45.340694, 44.363029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956102, 45.417103, 44.627987>,  <32.107849, 45.204376, 44.024181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956102, 45.417103, 44.627987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339676, 45.529480, 44.612408>,  <32.569820, 45.596905, 44.603062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339676, 45.529480, 44.612408>,  <31.956102, 45.417103, 44.627987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339676, 45.529480, 44.612408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189095, 0.735599, 0.650491,
		0.211398, -0.616413, 0.758515,
		0.958934, 0.280943, -0.038943,
		32.627357, 45.613762, 44.600723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240311, 45.430874, 45.288582>,  <31.956102, 45.417103, 44.627987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240311, 45.430874, 45.288582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491119, 45.661572, 45.079121>,  <32.641605, 45.799988, 44.953445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491119, 45.661572, 45.079121>,  <32.240311, 45.430874, 45.288582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491119, 45.661572, 45.079121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033793, 0.651437, 0.757949,
		0.778267, -0.492948, 0.388977,
		0.627023, 0.576742, -0.523650,
		32.679226, 45.834595, 44.922024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640480, 45.846840, 45.798435>,  <32.240311, 45.430874, 45.288582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640480, 45.846840, 45.798435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733162, 46.041527, 45.461529>,  <32.788773, 46.158337, 45.259384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733162, 46.041527, 45.461529>,  <32.640480, 45.846840, 45.798435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733162, 46.041527, 45.461529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156091, 0.836013, 0.526040,
		0.960181, -0.253359, 0.117739,
		0.231708, 0.486715, -0.842270,
		32.802673, 46.187542, 45.208847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277069, 46.299988, 45.875484>,  <32.640480, 45.846840, 45.798435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277069, 46.299988, 45.875484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003933, 46.432220, 45.614883>,  <32.840054, 46.511559, 45.458523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003933, 46.432220, 45.614883>,  <33.277069, 46.299988, 45.875484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003933, 46.432220, 45.614883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144338, 0.813147, 0.563878,
		0.716172, 0.479072, -0.507531,
		-0.682835, 0.330578, -0.651501,
		32.799084, 46.531395, 45.419434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583832, 45.853512, 46.276905>,  <33.277069, 46.299988, 45.875484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583832, 45.853512, 46.276905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414257, 46.016674, 46.600361>,  <33.312511, 46.114571, 46.794434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414257, 46.016674, 46.600361>,  <33.583832, 45.853512, 46.276905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414257, 46.016674, 46.600361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896076, 0.318667, 0.309031,
		-0.131630, 0.855608, -0.500608,
		-0.423937, 0.407905, 0.808635,
		33.287075, 46.139046, 46.842953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026512, 46.336590, 46.673023>,  <33.583832, 45.853512, 46.276905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026512, 46.336590, 46.673023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235039, 46.092232, 46.911366>,  <34.360153, 45.945618, 47.054371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235039, 46.092232, 46.911366>,  <34.026512, 46.336590, 46.673023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235039, 46.092232, 46.911366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315710, -0.786761, -0.530409,
		0.792818, 0.088393, -0.603015,
		0.521313, -0.610896, 0.595852,
		34.391434, 45.908962, 47.090122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532394, 45.872398, 46.288204>,  <34.026512, 46.336590, 46.673023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532394, 45.872398, 46.288204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396313, 45.715298, 46.629967>,  <34.314663, 45.621037, 46.835026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396313, 45.715298, 46.629967>,  <34.532394, 45.872398, 46.288204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396313, 45.715298, 46.629967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347310, -0.791880, -0.502297,
		0.873864, -0.467627, 0.132995,
		-0.340204, -0.392749, 0.854406,
		34.294250, 45.597473, 46.886288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772247, 45.239349, 46.286594>,  <34.532394, 45.872398, 46.288204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772247, 45.239349, 46.286594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438545, 45.237995, 46.507137>,  <34.238323, 45.237183, 46.639465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438545, 45.237995, 46.507137>,  <34.772247, 45.239349, 46.286594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438545, 45.237995, 46.507137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277979, -0.861012, -0.425894,
		0.476170, -0.508573, 0.717367,
		-0.834260, -0.003385, 0.551361,
		34.188267, 45.236980, 46.672546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962944, 44.786610, 46.871380>,  <34.772247, 45.239349, 46.286594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962944, 44.786610, 46.871380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571159, 44.770187, 46.792412>,  <34.336090, 44.760334, 46.745029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571159, 44.770187, 46.792412>,  <34.962944, 44.786610, 46.871380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571159, 44.770187, 46.792412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075602, -0.982406, -0.170773,
		-0.186939, -0.182191, 0.965330,
		-0.979458, -0.041057, -0.197424,
		34.277321, 44.757870, 46.733185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701893, 44.404625, 47.414970>,  <34.962944, 44.786610, 46.871380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701893, 44.404625, 47.414970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512436, 44.384979, 47.063232>,  <34.398762, 44.373192, 46.852188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512436, 44.384979, 47.063232>,  <34.701893, 44.404625, 47.414970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512436, 44.384979, 47.063232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182399, -0.982267, -0.043381,
		-0.861623, -0.180939, 0.474200,
		-0.473641, -0.049116, -0.879348,
		34.370342, 44.370243, 46.799427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370747, 43.809330, 47.364700>,  <34.701893, 44.404625, 47.414970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370747, 43.809330, 47.364700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358017, 43.911373, 46.978146>,  <34.350380, 43.972599, 46.746212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358017, 43.911373, 46.978146>,  <34.370747, 43.809330, 47.364700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358017, 43.911373, 46.978146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010484, -0.966740, -0.255545,
		-0.999439, -0.018263, 0.028090,
		-0.031823, 0.255107, -0.966389,
		34.348469, 43.987904, 46.688229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836334, 43.302078, 47.155502>,  <34.370747, 43.809330, 47.364700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836334, 43.302078, 47.155502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044487, 43.424690, 46.836697>,  <34.169380, 43.498257, 46.645412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044487, 43.424690, 46.836697>,  <33.836334, 43.302078, 47.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044487, 43.424690, 46.836697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076411, -0.912892, -0.400985,
		-0.850507, 0.269567, -0.451632,
		0.520384, 0.306531, -0.797019,
		34.200603, 43.516651, 46.597591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447056, 43.101166, 46.633804>,  <33.836334, 43.302078, 47.155502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447056, 43.101166, 46.633804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804356, 43.165459, 46.465866>,  <34.018738, 43.204033, 46.365105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804356, 43.165459, 46.465866>,  <33.447056, 43.101166, 46.633804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804356, 43.165459, 46.465866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047030, -0.895368, -0.442837,
		-0.447089, 0.415310, -0.792230,
		0.893252, 0.160729, -0.419841,
		34.072330, 43.213676, 46.339912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380421, 42.889790, 45.890686>,  <33.447056, 43.101166, 46.633804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380421, 42.889790, 45.890686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761055, 42.876167, 46.012886>,  <33.989433, 42.867992, 46.086205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761055, 42.876167, 46.012886>,  <33.380421, 42.889790, 45.890686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761055, 42.876167, 46.012886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088680, -0.921169, -0.378924,
		0.294319, 0.387669, -0.873549,
		0.951584, -0.034059, 0.305496,
		34.046532, 42.865952, 46.104534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934635, 42.765385, 45.342098>,  <33.380421, 42.889790, 45.890686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934635, 42.765385, 45.342098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131062, 42.653137, 45.671974>,  <34.248917, 42.585789, 45.869900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131062, 42.653137, 45.671974>,  <33.934635, 42.765385, 45.342098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131062, 42.653137, 45.671974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135915, -0.910421, -0.390719,
		0.860453, 0.303956, -0.408939,
		0.491068, -0.280615, 0.824687,
		34.278381, 42.568954, 45.919380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468384, 42.429798, 45.100651>,  <33.934635, 42.765385, 45.342098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468384, 42.429798, 45.100651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488297, 42.289627, 45.474758>,  <34.500244, 42.205524, 45.699223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488297, 42.289627, 45.474758>,  <34.468384, 42.429798, 45.100651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488297, 42.289627, 45.474758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340891, -0.874233, -0.345701,
		0.938784, 0.336034, 0.075935,
		0.049782, -0.350424, 0.935267,
		34.503231, 42.184502, 45.755337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059341, 42.109077, 45.117634>,  <34.468384, 42.429798, 45.100651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059341, 42.109077, 45.117634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855770, 41.937271, 45.416035>,  <34.733627, 41.834187, 45.595074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855770, 41.937271, 45.416035>,  <35.059341, 42.109077, 45.117634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855770, 41.937271, 45.416035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400096, -0.885352, -0.236801,
		0.762181, 0.177957, 0.622424,
		-0.508925, -0.429514, 0.745998,
		34.703094, 41.808418, 45.639835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531055, 41.746304, 45.563118>,  <35.059341, 42.109077, 45.117634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531055, 41.746304, 45.563118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164688, 41.591415, 45.605366>,  <34.944866, 41.498482, 45.630714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164688, 41.591415, 45.605366>,  <35.531055, 41.746304, 45.563118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164688, 41.591415, 45.605366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350919, -0.900299, -0.257521,
		0.194807, -0.198804, 0.960483,
		-0.915918, -0.387219, 0.105620,
		34.889912, 41.475250, 45.637051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638241, 41.125046, 45.897408>,  <35.531055, 41.746304, 45.563118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638241, 41.125046, 45.897408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280785, 41.080204, 45.723583>,  <35.066311, 41.053299, 45.619289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280785, 41.080204, 45.723583>,  <35.638241, 41.125046, 45.897408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280785, 41.080204, 45.723583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248325, -0.930079, -0.270719,
		-0.373827, -0.349837, 0.858992,
		-0.893637, -0.112107, -0.434562,
		35.012691, 41.046574, 45.593216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446793, 40.412655, 46.071724>,  <35.638241, 41.125046, 45.897408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446793, 40.412655, 46.071724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210403, 40.523167, 45.768559>,  <35.068569, 40.589474, 45.586658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210403, 40.523167, 45.768559>,  <35.446793, 40.412655, 46.071724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210403, 40.523167, 45.768559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028725, -0.931722, -0.362035,
		-0.806183, -0.235722, 0.542682,
		-0.590968, 0.276278, -0.757910,
		35.033112, 40.606049, 45.541187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309399, 39.717915, 45.770905>,  <35.446793, 40.412655, 46.071724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309399, 39.717915, 45.770905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155575, 39.968277, 45.499508>,  <35.063278, 40.118496, 45.336670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155575, 39.968277, 45.499508>,  <35.309399, 39.717915, 45.770905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155575, 39.968277, 45.499508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235502, -0.777217, -0.583500,
		-0.892553, -0.064606, 0.446291,
		-0.384563, 0.625907, -0.678492,
		35.040207, 40.156048, 45.295959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727116, 39.332256, 45.516727>,  <35.309399, 39.717915, 45.770905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727116, 39.332256, 45.516727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821869, 39.619694, 45.255192>,  <34.878719, 39.792156, 45.098270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821869, 39.619694, 45.255192>,  <34.727116, 39.332256, 45.516727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821869, 39.619694, 45.255192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197367, -0.623365, -0.756612,
		-0.951279, 0.308276, -0.005838,
		0.236884, 0.718597, -0.653838,
		34.892933, 39.835274, 45.059040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220242, 39.295120, 45.075443>,  <34.727116, 39.332256, 45.516727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220242, 39.295120, 45.075443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538006, 39.453381, 44.891109>,  <34.728664, 39.548336, 44.780510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538006, 39.453381, 44.891109>,  <34.220242, 39.295120, 45.075443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538006, 39.453381, 44.891109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095678, -0.667734, -0.738225,
		-0.599795, 0.630547, -0.492602,
		0.794413, 0.395653, -0.460833,
		34.776329, 39.572075, 44.752861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999805, 39.540459, 44.400646>,  <34.220242, 39.295120, 45.075443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999805, 39.540459, 44.400646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393536, 39.470577, 44.390934>,  <34.629772, 39.428646, 44.385105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393536, 39.470577, 44.390934>,  <33.999805, 39.540459, 44.400646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393536, 39.470577, 44.390934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124307, -0.589430, -0.798198,
		0.125138, 0.788701, -0.601906,
		0.984321, -0.174706, -0.024281,
		34.688831, 39.418167, 44.383648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172241, 39.507320, 43.649620>,  <33.999805, 39.540459, 44.400646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172241, 39.507320, 43.649620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505203, 39.354687, 43.810371>,  <34.704979, 39.263107, 43.906822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505203, 39.354687, 43.810371>,  <34.172241, 39.507320, 43.649620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505203, 39.354687, 43.810371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056677, -0.779997, -0.623211,
		0.551266, 0.495985, -0.670898,
		0.832402, -0.381580, 0.401875,
		34.754925, 39.240211, 43.930935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515579, 39.088482, 42.996185>,  <34.172241, 39.507320, 43.649620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515579, 39.088482, 42.996185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699535, 38.959141, 43.326988>,  <34.809910, 38.881535, 43.525471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699535, 38.959141, 43.326988>,  <34.515579, 39.088482, 42.996185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699535, 38.959141, 43.326988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280032, -0.831006, -0.480636,
		0.842666, 0.452627, -0.291619,
		0.459886, -0.323353, 0.827011,
		34.837502, 38.862133, 43.575092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284897, 39.092968, 42.790096>,  <34.515579, 39.088482, 42.996185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284897, 39.092968, 42.790096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175541, 38.827827, 43.068920>,  <35.109928, 38.668743, 43.236214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175541, 38.827827, 43.068920>,  <35.284897, 39.092968, 42.790096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175541, 38.827827, 43.068920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097307, -0.740004, -0.665526,
		0.956968, -0.114121, 0.266811,
		-0.273392, -0.662850, 0.697056,
		35.093525, 38.628971, 43.278038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786663, 38.592800, 42.797047>,  <35.284897, 39.092968, 42.790096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786663, 38.592800, 42.797047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463402, 38.423561, 42.960938>,  <35.269444, 38.322018, 43.059273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463402, 38.423561, 42.960938>,  <35.786663, 38.592800, 42.797047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463402, 38.423561, 42.960938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023934, -0.718681, -0.694928,
		0.588485, -0.551802, 0.590931,
		-0.808153, -0.423098, 0.409726,
		35.220955, 38.296631, 43.083855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028912, 37.923183, 42.857746>,  <35.786663, 38.592800, 42.797047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028912, 37.923183, 42.857746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632690, 37.897335, 42.906132>,  <35.394958, 37.881824, 42.935165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632690, 37.897335, 42.906132>,  <36.028912, 37.923183, 42.857746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632690, 37.897335, 42.906132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044233, -0.684352, -0.727809,
		0.129820, -0.726282, 0.675027,
		-0.990550, -0.064625, 0.120968,
		35.335526, 37.877949, 42.942421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921707, 37.169231, 42.931198>,  <36.028912, 37.923183, 42.857746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921707, 37.169231, 42.931198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555225, 37.303894, 42.844261>,  <35.335339, 37.384693, 42.792099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555225, 37.303894, 42.844261>,  <35.921707, 37.169231, 42.931198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555225, 37.303894, 42.844261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133746, -0.768183, -0.626104,
		-0.377743, -0.544568, 0.748836,
		-0.916200, 0.336660, -0.217342,
		35.280365, 37.404892, 42.779057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486408, 36.548061, 42.858944>,  <35.921707, 37.169231, 42.931198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486408, 36.548061, 42.858944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288921, 36.849689, 42.685684>,  <35.170429, 37.030666, 42.581730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288921, 36.849689, 42.685684>,  <35.486408, 36.548061, 42.858944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288921, 36.849689, 42.685684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193176, -0.580743, -0.790835,
		-0.847896, -0.306773, 0.432391,
		-0.493715, 0.754074, -0.433149,
		35.140808, 37.075912, 42.555740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755566, 36.315948, 42.919220>,  <35.486408, 36.548061, 42.858944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755566, 36.315948, 42.919220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817596, 36.571896, 42.618149>,  <34.854813, 36.725464, 42.437508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817596, 36.571896, 42.618149>,  <34.755566, 36.315948, 42.919220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817596, 36.571896, 42.618149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292829, -0.697881, -0.653616,
		-0.943506, 0.321764, 0.079149,
		0.155074, 0.639867, -0.752676,
		34.864117, 36.763855, 42.392345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119221, 36.266075, 42.578438>,  <34.755566, 36.315948, 42.919220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119221, 36.266075, 42.578438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376831, 36.438503, 42.325645>,  <34.531399, 36.541962, 42.173969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376831, 36.438503, 42.325645>,  <34.119221, 36.266075, 42.578438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376831, 36.438503, 42.325645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391992, -0.523473, -0.756517,
		-0.656938, 0.734953, -0.168157,
		0.644030, 0.431069, -0.631985,
		34.570042, 36.567825, 42.136051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659313, 36.325531, 41.985344>,  <34.119221, 36.266075, 42.578438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659313, 36.325531, 41.985344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040569, 36.352074, 41.867279>,  <34.269321, 36.368000, 41.796440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040569, 36.352074, 41.867279>,  <33.659313, 36.325531, 41.985344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040569, 36.352074, 41.867279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189619, -0.629183, -0.753773,
		-0.235729, 0.774419, -0.587117,
		0.953140, 0.066358, -0.295161,
		34.326511, 36.371983, 41.778732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644897, 36.487095, 41.304447>,  <33.659313, 36.325531, 41.985344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644897, 36.487095, 41.304447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009113, 36.329258, 41.353771>,  <34.227642, 36.234554, 41.383366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009113, 36.329258, 41.353771>,  <33.644897, 36.487095, 41.304447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009113, 36.329258, 41.353771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171713, -0.632306, -0.755449,
		0.376066, 0.666695, -0.643500,
		0.910543, -0.394596, 0.123309,
		34.282276, 36.210880, 41.390762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849869, 36.410213, 40.660530>,  <33.644897, 36.487095, 41.304447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849869, 36.410213, 40.660530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077320, 36.165379, 40.880348>,  <34.213791, 36.018478, 41.012241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077320, 36.165379, 40.880348>,  <33.849869, 36.410213, 40.660530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077320, 36.165379, 40.880348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025155, -0.680697, -0.732133,
		0.822207, 0.402491, -0.402463,
		0.568633, -0.612089, 0.549549,
		34.247910, 35.981750, 41.045212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397110, 36.174564, 40.209568>,  <33.849869, 36.410213, 40.660530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397110, 36.174564, 40.209568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356789, 35.898178, 40.495899>,  <34.332596, 35.732346, 40.667698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356789, 35.898178, 40.495899>,  <34.397110, 36.174564, 40.209568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356789, 35.898178, 40.495899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115200, -0.706548, -0.698226,
		0.988214, -0.152847, -0.008375,
		-0.100804, -0.690962, 0.715829,
		34.326546, 35.690891, 40.710648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674889, 35.666977, 39.848068>,  <34.397110, 36.174564, 40.209568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674889, 35.666977, 39.848068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559677, 35.465405, 40.173790>,  <34.490551, 35.344460, 40.369221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559677, 35.465405, 40.173790>,  <34.674889, 35.666977, 39.848068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559677, 35.465405, 40.173790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034037, -0.844413, -0.534610,
		0.957015, -0.181702, 0.226066,
		-0.288033, -0.503936, 0.814301,
		34.473267, 35.314224, 40.418079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201187, 35.151268, 39.946850>,  <34.674889, 35.666977, 39.848068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201187, 35.151268, 39.946850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851654, 35.034702, 40.102543>,  <34.641933, 34.964764, 40.195961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851654, 35.034702, 40.102543>,  <35.201187, 35.151268, 39.946850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851654, 35.034702, 40.102543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059618, -0.858680, -0.509032,
		0.482566, -0.421601, 0.767712,
		-0.873828, -0.291411, 0.389235,
		34.589504, 34.947281, 40.219315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323730, 34.419514, 40.115963>,  <35.201187, 35.151268, 39.946850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323730, 34.419514, 40.115963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925556, 34.426414, 40.153500>,  <34.686649, 34.430553, 40.176022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925556, 34.426414, 40.153500>,  <35.323730, 34.419514, 40.115963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925556, 34.426414, 40.153500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063593, -0.853154, -0.517769,
		0.071127, -0.521374, 0.850359,
		-0.995438, 0.017249, 0.093837,
		34.626926, 34.431591, 40.181652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075077, 33.708271, 40.349598>,  <35.323730, 34.419514, 40.115963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075077, 33.708271, 40.349598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773170, 33.901798, 40.172401>,  <34.592026, 34.017914, 40.066086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773170, 33.901798, 40.172401>,  <35.075077, 33.708271, 40.349598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773170, 33.901798, 40.172401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084908, -0.741672, -0.665366,
		-0.650472, -0.464585, 0.600872,
		-0.754770, 0.483821, -0.442990,
		34.546738, 34.046944, 40.039505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474926, 33.330685, 40.380497>,  <35.075077, 33.708271, 40.349598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474926, 33.330685, 40.380497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385590, 33.579350, 40.080189>,  <34.331989, 33.728546, 39.900005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385590, 33.579350, 40.080189>,  <34.474926, 33.330685, 40.380497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385590, 33.579350, 40.080189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215648, -0.782654, -0.583909,
		-0.950586, 0.031490, 0.308860,
		-0.223343, 0.621661, -0.750771,
		34.318588, 33.765846, 39.854958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961605, 33.097439, 40.111034>,  <34.474926, 33.330685, 40.380497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961605, 33.097439, 40.111034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126377, 33.295158, 39.804836>,  <34.225239, 33.413788, 39.621117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126377, 33.295158, 39.804836>,  <33.961605, 33.097439, 40.111034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126377, 33.295158, 39.804836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015093, -0.843669, -0.536651,
		-0.911092, 0.209506, -0.354990,
		0.411926, 0.494296, -0.765499,
		34.249954, 33.443447, 39.575188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667393, 32.832851, 39.527252>,  <33.961605, 33.097439, 40.111034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667393, 32.832851, 39.527252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998241, 33.001980, 39.379150>,  <34.196751, 33.103458, 39.290291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998241, 33.001980, 39.379150>,  <33.667393, 32.832851, 39.527252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998241, 33.001980, 39.379150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075449, -0.736364, -0.672366,
		-0.556930, 0.528196, -0.640967,
		0.827125, 0.422821, -0.370251,
		34.246380, 33.128826, 39.268074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635555, 32.635139, 38.820496>,  <33.667393, 32.832851, 39.527252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635555, 32.635139, 38.820496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017071, 32.751129, 38.852020>,  <34.245979, 32.820721, 38.870937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017071, 32.751129, 38.852020>,  <33.635555, 32.635139, 38.820496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017071, 32.751129, 38.852020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250225, -0.621200, -0.742629,
		-0.166381, 0.728030, -0.665049,
		0.953784, 0.289971, 0.078816,
		34.303207, 32.838120, 38.875664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821083, 32.656761, 38.129116>,  <33.635555, 32.635139, 38.820496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821083, 32.656761, 38.129116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171356, 32.684883, 38.320210>,  <34.381519, 32.701756, 38.434864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171356, 32.684883, 38.320210>,  <33.821083, 32.656761, 38.129116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171356, 32.684883, 38.320210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453936, -0.457227, -0.764778,
		0.164663, 0.886567, -0.432303,
		0.875687, 0.070307, 0.477733,
		34.434063, 32.705975, 38.463528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409336, 32.999336, 37.653393>,  <33.821083, 32.656761, 38.129116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409336, 32.999336, 37.653393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553261, 32.755650, 37.936062>,  <34.639614, 32.609436, 38.105663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553261, 32.755650, 37.936062>,  <34.409336, 32.999336, 37.653393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553261, 32.755650, 37.936062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483511, -0.526017, -0.699659,
		0.797969, 0.593429, 0.105299,
		0.359809, -0.609219, 0.706675,
		34.661205, 32.572884, 38.148064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061668, 32.950665, 37.515591>,  <34.409336, 32.999336, 37.653393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061668, 32.950665, 37.515591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983864, 32.618855, 37.724991>,  <34.937180, 32.419769, 37.850632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983864, 32.618855, 37.724991>,  <35.061668, 32.950665, 37.515591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983864, 32.618855, 37.724991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606114, -0.521262, -0.600760,
		0.771227, 0.200447, 0.604177,
		-0.194514, -0.829522, 0.523505,
		34.925510, 32.369999, 37.882042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708984, 32.671402, 37.474167>,  <35.061668, 32.950665, 37.515591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708984, 32.671402, 37.474167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501099, 32.367641, 37.630730>,  <35.376366, 32.185383, 37.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501099, 32.367641, 37.630730>,  <35.708984, 32.671402, 37.474167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501099, 32.367641, 37.630730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674132, -0.645959, -0.358165,
		0.524827, 0.077720, 0.847653,
		-0.519713, -0.759405, 0.391410,
		35.345184, 32.139820, 37.748154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102245, 33.343887, 37.452274>,  <35.708984, 32.671402, 37.474167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102245, 33.343887, 37.452274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466976, 33.262825, 37.309444>,  <36.685814, 33.214188, 37.223747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466976, 33.262825, 37.309444>,  <36.102245, 33.343887, 37.452274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466976, 33.262825, 37.309444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408108, 0.352148, 0.842282,
		-0.044950, -0.913741, 0.403804,
		0.911827, -0.202656, -0.357076,
		36.740524, 33.202026, 37.202320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426575, 32.957706, 37.923847>,  <36.102245, 33.343887, 37.452274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426575, 32.957706, 37.923847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702118, 33.172958, 37.729572>,  <36.867443, 33.302109, 37.613007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702118, 33.172958, 37.729572>,  <36.426575, 32.957706, 37.923847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702118, 33.172958, 37.729572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446409, 0.212977, 0.869115,
		0.571134, -0.815513, -0.093514,
		0.688858, 0.538126, -0.485690,
		36.908775, 33.334396, 37.583866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027145, 32.806141, 38.311947>,  <36.426575, 32.957706, 37.923847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027145, 32.806141, 38.311947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117104, 33.118168, 38.078392>,  <37.171078, 33.305382, 37.938259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117104, 33.118168, 38.078392>,  <37.027145, 32.806141, 38.311947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117104, 33.118168, 38.078392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484440, 0.430410, 0.761620,
		0.845422, -0.454144, -0.281096,
		0.224899, 0.780064, -0.583884,
		37.184574, 33.352188, 37.903225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698673, 32.913795, 38.501724>,  <37.027145, 32.806141, 38.311947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698673, 32.913795, 38.501724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577198, 33.245949, 38.314857>,  <37.504311, 33.445240, 38.202740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577198, 33.245949, 38.314857>,  <37.698673, 32.913795, 38.501724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577198, 33.245949, 38.314857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324447, 0.551147, 0.768746,
		0.895827, 0.081891, -0.436792,
		-0.303690, 0.830380, -0.467164,
		37.486092, 33.495064, 38.174709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252403, 33.286736, 38.581364>,  <37.698673, 32.913795, 38.501724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252403, 33.286736, 38.581364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927746, 33.514481, 38.529114>,  <37.732952, 33.651127, 38.497765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927746, 33.514481, 38.529114>,  <38.252403, 33.286736, 38.581364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927746, 33.514481, 38.529114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200734, 0.481836, 0.852960,
		0.548587, 0.666075, -0.505368,
		-0.811639, 0.569367, -0.130625,
		37.684254, 33.685291, 38.489925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540943, 33.915699, 38.549183>,  <38.252403, 33.286736, 38.581364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540943, 33.915699, 38.549183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159172, 33.977642, 38.651237>,  <37.930111, 34.014809, 38.712471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159172, 33.977642, 38.651237>,  <38.540943, 33.915699, 38.549183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159172, 33.977642, 38.651237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298099, 0.536411, 0.789557,
		-0.014593, 0.829629, -0.558125,
		-0.954423, 0.154854, 0.255139,
		37.872845, 34.024097, 38.727779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432178, 34.592712, 38.665585>,  <38.540943, 33.915699, 38.549183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432178, 34.592712, 38.665585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094326, 34.469208, 38.840519>,  <37.891613, 34.395103, 38.945480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094326, 34.469208, 38.840519>,  <38.432178, 34.592712, 38.665585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094326, 34.469208, 38.840519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049130, 0.768765, 0.637641,
		-0.533088, 0.560058, -0.634154,
		-0.844632, -0.308763, 0.437335,
		37.840935, 34.376579, 38.971718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142742, 35.190533, 38.849411>,  <38.432178, 34.592712, 38.665585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142742, 35.190533, 38.849411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953831, 34.923210, 39.079304>,  <37.840485, 34.762817, 39.217239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953831, 34.923210, 39.079304>,  <38.142742, 35.190533, 38.849411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953831, 34.923210, 39.079304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029992, 0.663841, 0.747272,
		-0.880937, 0.335686, -0.333564,
		-0.472282, -0.668304, 0.574735,
		37.812145, 34.722717, 39.251724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664139, 35.595440, 39.133091>,  <38.142742, 35.190533, 38.849411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664139, 35.595440, 39.133091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681404, 35.262981, 39.354839>,  <37.691761, 35.063507, 39.487888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681404, 35.262981, 39.354839>,  <37.664139, 35.595440, 39.133091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681404, 35.262981, 39.354839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044144, 0.552760, 0.832171,
		-0.998092, -0.060388, -0.012834,
		0.043159, -0.831150, 0.554371,
		37.694351, 35.013638, 39.521152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154854, 35.617111, 39.709747>,  <37.664139, 35.595440, 39.133091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154854, 35.617111, 39.709747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398090, 35.339378, 39.863697>,  <37.544033, 35.172737, 39.956066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398090, 35.339378, 39.863697>,  <37.154854, 35.617111, 39.709747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398090, 35.339378, 39.863697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036871, 0.508989, 0.859983,
		-0.793011, -0.508757, 0.335112,
		0.608091, -0.694332, 0.384875,
		37.580517, 35.131081, 39.979160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914001, 35.426189, 40.385624>,  <37.154854, 35.617111, 39.709747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914001, 35.426189, 40.385624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294743, 35.305256, 40.405899>,  <37.523186, 35.232697, 40.418064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294743, 35.305256, 40.405899>,  <36.914001, 35.426189, 40.385624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294743, 35.305256, 40.405899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061500, 0.350307, 0.934614,
		-0.300320, -0.886499, 0.352034,
		0.951854, -0.302334, 0.050684,
		37.580299, 35.214558, 40.421104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959610, 35.215614, 41.054180>,  <36.914001, 35.426189, 40.385624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959610, 35.215614, 41.054180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329514, 35.284992, 40.918686>,  <37.551456, 35.326618, 40.837391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329514, 35.284992, 40.918686>,  <36.959610, 35.215614, 41.054180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329514, 35.284992, 40.918686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210162, 0.509297, 0.834535,
		0.317258, -0.842932, 0.434526,
		0.924759, 0.173442, -0.338731,
		37.606941, 35.337025, 40.817066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350174, 35.049782, 41.621948>,  <36.959610, 35.215614, 41.054180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350174, 35.049782, 41.621948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588406, 35.285694, 41.403793>,  <37.731346, 35.427242, 41.272900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588406, 35.285694, 41.403793>,  <37.350174, 35.049782, 41.621948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588406, 35.285694, 41.403793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105935, 0.615336, 0.781115,
		0.796281, -0.522991, 0.304003,
		0.595579, 0.589782, -0.545383,
		37.767078, 35.462627, 41.240177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000877, 35.239948, 42.042919>,  <37.350174, 35.049782, 41.621948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000877, 35.239948, 42.042919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022121, 35.533154, 41.771664>,  <38.034870, 35.709076, 41.608910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022121, 35.533154, 41.771664>,  <38.000877, 35.239948, 42.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022121, 35.533154, 41.771664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240836, 0.649644, 0.721083,
		0.969111, -0.201619, -0.142032,
		0.053114, 0.733016, -0.678134,
		38.038055, 35.753059, 41.568222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530548, 35.560848, 42.208878>,  <38.000877, 35.239948, 42.042919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530548, 35.560848, 42.208878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310837, 35.814194, 41.990833>,  <38.179012, 35.966202, 41.860008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310837, 35.814194, 41.990833>,  <38.530548, 35.560848, 42.208878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310837, 35.814194, 41.990833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115060, 0.703433, 0.701387,
		0.827683, 0.322534, -0.459253,
		-0.549274, 0.633367, -0.545109,
		38.146053, 36.004204, 41.827301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871094, 36.184105, 42.129757>,  <38.530548, 35.560848, 42.208878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871094, 36.184105, 42.129757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483620, 36.275509, 42.090912>,  <38.251133, 36.330349, 42.067604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483620, 36.275509, 42.090912>,  <38.871094, 36.184105, 42.129757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483620, 36.275509, 42.090912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106451, 0.735589, 0.669012,
		0.224306, 0.637726, -0.736880,
		-0.968687, 0.228505, -0.097110,
		38.193012, 36.344059, 42.061779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951385, 36.887817, 42.262623>,  <38.871094, 36.184105, 42.129757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951385, 36.887817, 42.262623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574242, 36.761845, 42.306141>,  <38.347958, 36.686260, 42.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574242, 36.761845, 42.306141>,  <38.951385, 36.887817, 42.262623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574242, 36.761845, 42.306141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120006, 0.625575, 0.770879,
		-0.310834, 0.713774, -0.627622,
		-0.942858, -0.314934, 0.108793,
		38.291386, 36.667366, 42.338779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580456, 37.414219, 42.112949>,  <38.951385, 36.887817, 42.262623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580456, 37.414219, 42.112949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352909, 37.170502, 42.333912>,  <38.216381, 37.024273, 42.466488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352909, 37.170502, 42.333912>,  <38.580456, 37.414219, 42.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352909, 37.170502, 42.333912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222917, 0.760766, 0.609544,
		-0.791640, 0.223611, -0.568599,
		-0.568871, -0.609289, 0.552406,
		38.182247, 36.987717, 42.499634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944843, 37.618690, 41.997044>,  <38.580456, 37.414219, 42.112949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944843, 37.618690, 41.997044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925426, 37.405136, 42.334709>,  <37.913776, 37.277004, 42.537308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925426, 37.405136, 42.334709>,  <37.944843, 37.618690, 41.997044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925426, 37.405136, 42.334709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180751, 0.835903, 0.518262,
		-0.982330, -0.127425, -0.137078,
		-0.048544, -0.533882, 0.844165,
		37.910862, 37.244972, 42.587959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374317, 37.986641, 42.365772>,  <37.944843, 37.618690, 41.997044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374317, 37.986641, 42.365772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521656, 37.764294, 42.663857>,  <37.610062, 37.630886, 42.842705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521656, 37.764294, 42.663857>,  <37.374317, 37.986641, 42.365772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521656, 37.764294, 42.663857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244786, 0.715294, 0.654549,
		-0.896883, -0.423518, 0.127411,
		0.368350, -0.555865, 0.745206,
		37.632160, 37.597534, 42.887417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843884, 38.020710, 42.950542>,  <37.374317, 37.986641, 42.365772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843884, 38.020710, 42.950542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199841, 37.938431, 43.113411>,  <37.413414, 37.889061, 43.211132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199841, 37.938431, 43.113411>,  <36.843884, 38.020710, 42.950542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199841, 37.938431, 43.113411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106297, 0.774488, 0.623594,
		-0.443621, -0.598210, 0.667342,
		0.889889, -0.205702, 0.407167,
		37.466808, 37.876720, 43.235561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827663, 37.956524, 43.730415>,  <36.843884, 38.020710, 42.950542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827663, 37.956524, 43.730415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190422, 38.072460, 43.608089>,  <37.408077, 38.142021, 43.534695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190422, 38.072460, 43.608089>,  <36.827663, 37.956524, 43.730415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190422, 38.072460, 43.608089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088193, 0.840312, 0.534882,
		0.412016, -0.458112, 0.787639,
		0.906898, 0.289844, -0.305819,
		37.462490, 38.159412, 43.516342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990440, 38.390205, 44.261978>,  <36.827663, 37.956524, 43.730415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990440, 38.390205, 44.261978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262341, 38.485462, 43.984493>,  <37.425480, 38.542618, 43.818005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262341, 38.485462, 43.984493>,  <36.990440, 38.390205, 44.261978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262341, 38.485462, 43.984493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033119, 0.954822, 0.295325,
		0.732698, -0.177772, 0.656925,
		0.679747, 0.238141, -0.693709,
		37.466263, 38.556904, 43.776379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512005, 38.781414, 44.611675>,  <36.990440, 38.390205, 44.261978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512005, 38.781414, 44.611675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499424, 38.871181, 44.222080>,  <37.491875, 38.925041, 43.988323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499424, 38.871181, 44.222080>,  <37.512005, 38.781414, 44.611675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499424, 38.871181, 44.222080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219589, 0.949108, 0.225778,
		0.975085, 0.220978, 0.019426,
		-0.031455, 0.224418, -0.973985,
		37.489986, 38.938507, 43.929886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918667, 39.375057, 44.604980>,  <37.512005, 38.781414, 44.611675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918667, 39.375057, 44.604980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704098, 39.395725, 44.268032>,  <37.575356, 39.408127, 44.065865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704098, 39.395725, 44.268032>,  <37.918667, 39.375057, 44.604980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704098, 39.395725, 44.268032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052635, 0.994133, 0.094492,
		0.842309, 0.095025, -0.530552,
		-0.536419, 0.051666, -0.842369,
		37.543171, 39.411224, 44.015320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254341, 39.912128, 44.267654>,  <37.918667, 39.375057, 44.604980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254341, 39.912128, 44.267654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899990, 39.861725, 44.089062>,  <37.687382, 39.831482, 43.981907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899990, 39.861725, 44.089062>,  <38.254341, 39.912128, 44.267654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899990, 39.861725, 44.089062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139606, 0.990204, -0.002476,
		0.442421, 0.060138, -0.894789,
		-0.885875, -0.126013, -0.446483,
		37.634228, 39.823921, 43.955116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129848, 40.586834, 43.831318>,  <38.254341, 39.912128, 44.267654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129848, 40.586834, 43.831318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768276, 40.433655, 43.907478>,  <37.551331, 40.341747, 43.953175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768276, 40.433655, 43.907478>,  <38.129848, 40.586834, 43.831318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768276, 40.433655, 43.907478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376725, 0.923725, 0.069356,
		-0.202442, -0.009037, -0.979253,
		-0.903934, -0.382949, 0.190405,
		37.497097, 40.318771, 43.964600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595718, 40.908863, 43.386066>,  <38.129848, 40.586834, 43.831318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595718, 40.908863, 43.386066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430256, 40.766239, 43.721149>,  <37.330978, 40.680664, 43.922199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430256, 40.766239, 43.721149>,  <37.595718, 40.908863, 43.386066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430256, 40.766239, 43.721149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346016, 0.912647, 0.217595,
		-0.842118, -0.199851, -0.500896,
		-0.413655, -0.356559, 0.837708,
		37.306160, 40.659271, 43.972462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966434, 41.173916, 43.303143>,  <37.595718, 40.908863, 43.386066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966434, 41.173916, 43.303143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998997, 41.104519, 43.695728>,  <37.018536, 41.062881, 43.931278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998997, 41.104519, 43.695728>,  <36.966434, 41.173916, 43.303143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998997, 41.104519, 43.695728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356934, 0.914345, 0.191235,
		-0.930576, -0.365886, 0.012507,
		0.081405, -0.173494, 0.981465,
		37.023418, 41.052471, 43.990170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343201, 41.383884, 43.524300>,  <36.966434, 41.173916, 43.303143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343201, 41.383884, 43.524300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551117, 41.378376, 43.865971>,  <36.675865, 41.375072, 44.070972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551117, 41.378376, 43.865971>,  <36.343201, 41.383884, 43.524300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551117, 41.378376, 43.865971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286041, 0.939352, 0.189205,
		-0.804982, -0.342678, 0.484329,
		0.519792, -0.013768, 0.854182,
		36.707054, 41.374245, 44.122227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928211, 41.608337, 44.201687>,  <36.343201, 41.383884, 43.524300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928211, 41.608337, 44.201687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320557, 41.670170, 44.249039>,  <36.555965, 41.707268, 44.277451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320557, 41.670170, 44.249039>,  <35.928211, 41.608337, 44.201687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320557, 41.670170, 44.249039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188039, 0.909763, 0.370098,
		-0.050489, -0.385276, 0.921419,
		0.980863, 0.154577, 0.118380,
		36.614815, 41.716541, 44.284554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921860, 41.987427, 44.722332>,  <35.928211, 41.608337, 44.201687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921860, 41.987427, 44.722332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291019, 42.071255, 44.593121>,  <36.512516, 42.121552, 44.515594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291019, 42.071255, 44.593121>,  <35.921860, 41.987427, 44.722332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291019, 42.071255, 44.593121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078371, 0.923591, 0.375282,
		0.376992, -0.321030, 0.868802,
		0.922895, 0.209567, -0.323027,
		36.567886, 42.134125, 44.496212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209705, 42.414333, 45.317921>,  <35.921860, 41.987427, 44.722332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209705, 42.414333, 45.317921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448143, 42.492775, 45.006481>,  <36.591206, 42.539841, 44.819618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448143, 42.492775, 45.006481>,  <36.209705, 42.414333, 45.317921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448143, 42.492775, 45.006481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097503, 0.944857, 0.312630,
		0.796970, -0.262274, 0.544106,
		0.596097, 0.196105, -0.778595,
		36.626972, 42.551605, 44.772903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795258, 42.776596, 45.587608>,  <36.209705, 42.414333, 45.317921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795258, 42.776596, 45.587608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744095, 42.867729, 45.201504>,  <36.713398, 42.922409, 44.969841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744095, 42.867729, 45.201504>,  <36.795258, 42.776596, 45.587608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744095, 42.867729, 45.201504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030318, 0.973699, 0.225811,
		0.991323, -0.000383, -0.131449,
		-0.127905, 0.227837, -0.965262,
		36.705723, 42.936081, 44.911926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251289, 43.411983, 45.479584>,  <36.795258, 42.776596, 45.587608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251289, 43.411983, 45.479584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006931, 43.393372, 45.163448>,  <36.860317, 43.382202, 44.973766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006931, 43.393372, 45.163448>,  <37.251289, 43.411983, 45.479584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006931, 43.393372, 45.163448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126657, 0.991158, 0.039543,
		0.781513, 0.124259, -0.611389,
		-0.610897, -0.046533, -0.790341,
		36.823662, 43.379410, 44.926346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559608, 43.739651, 44.938660>,  <37.251289, 43.411983, 45.479584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559608, 43.739651, 44.938660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173523, 43.750454, 44.834629>,  <36.941872, 43.756935, 44.772209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173523, 43.750454, 44.834629>,  <37.559608, 43.739651, 44.938660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173523, 43.750454, 44.834629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023602, 0.999590, 0.016227,
		0.260409, 0.009524, -0.965451,
		-0.965210, 0.027012, -0.260078,
		36.883961, 43.758556, 44.756607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419498, 43.999531, 44.217133>,  <37.559608, 43.739651, 44.938660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419498, 43.999531, 44.217133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098679, 44.082733, 44.441078>,  <36.906185, 44.132656, 44.575447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098679, 44.082733, 44.441078>,  <37.419498, 43.999531, 44.217133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098679, 44.082733, 44.441078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101969, 0.971321, -0.214798,
		-0.588488, -0.115190, -0.800258,
		-0.802050, 0.208007, 0.559866,
		36.858063, 44.145134, 44.609039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009415, 44.335873, 43.783730>,  <37.419498, 43.999531, 44.217133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009415, 44.335873, 43.783730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972298, 44.439526, 44.168278>,  <36.950027, 44.501717, 44.399006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972298, 44.439526, 44.168278>,  <37.009415, 44.335873, 43.783730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972298, 44.439526, 44.168278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120929, 0.961326, -0.247443,
		-0.988314, 0.093297, -0.120542,
		-0.092795, 0.259129, 0.961375,
		36.944458, 44.517265, 44.456692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597050, 44.746113, 43.713963>,  <37.009415, 44.335873, 43.783730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597050, 44.746113, 43.713963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806564, 45.041424, 43.543976>,  <37.932274, 45.218609, 43.441986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806564, 45.041424, 43.543976>,  <37.597050, 44.746113, 43.713963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806564, 45.041424, 43.543976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268659, -0.616581, -0.740034,
		-0.808375, 0.273450, -0.521302,
		0.523787, 0.738277, -0.424964,
		37.963699, 45.262905, 43.416485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320850, 44.938667, 43.061371>,  <37.597050, 44.746113, 43.713963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320850, 44.938667, 43.061371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709431, 45.033562, 43.061844>,  <37.942577, 45.090500, 43.062126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709431, 45.033562, 43.061844>,  <37.320850, 44.938667, 43.061371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709431, 45.033562, 43.061844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182340, -0.743446, -0.643459,
		-0.151773, 0.625305, -0.765479,
		0.971451, 0.237237, 0.001183,
		38.000866, 45.104733, 43.062199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644897, 44.886822, 42.297325>,  <37.320850, 44.938667, 43.061371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644897, 44.886822, 42.297325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973160, 44.878826, 42.525753>,  <38.170116, 44.874031, 42.662811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973160, 44.878826, 42.525753>,  <37.644897, 44.886822, 42.297325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973160, 44.878826, 42.525753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435264, -0.625647, -0.647387,
		0.370228, 0.779850, -0.504743,
		0.820656, -0.019985, 0.571073,
		38.219357, 44.872829, 42.697075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195656, 45.032951, 41.824371>,  <37.644897, 44.886822, 42.297325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195656, 45.032951, 41.824371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345200, 44.850830, 42.147591>,  <38.434925, 44.741558, 42.341522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345200, 44.850830, 42.147591>,  <38.195656, 45.032951, 41.824371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345200, 44.850830, 42.147591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569102, -0.575322, -0.587475,
		0.732362, 0.679491, 0.044024,
		0.373856, -0.455299, 0.808044,
		38.457355, 44.714241, 42.390003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865406, 44.959000, 41.641483>,  <38.195656, 45.032951, 41.824371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865406, 44.959000, 41.641483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769810, 44.686657, 41.918415>,  <38.712452, 44.523251, 42.084576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769810, 44.686657, 41.918415>,  <38.865406, 44.959000, 41.641483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769810, 44.686657, 41.918415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513545, -0.693742, -0.504969,
		0.824108, 0.234860, 0.515448,
		-0.238991, -0.680855, 0.692330,
		38.698112, 44.482399, 42.126114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394245, 44.615841, 41.645187>,  <38.865406, 44.959000, 41.641483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394245, 44.615841, 41.645187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152397, 44.353256, 41.825630>,  <39.007290, 44.195705, 41.933895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152397, 44.353256, 41.825630>,  <39.394245, 44.615841, 41.645187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152397, 44.353256, 41.825630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403616, -0.740759, -0.537001,
		0.686682, -0.142605, 0.712833,
		-0.604617, -0.656460, 0.451108,
		38.971012, 44.156319, 41.960964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809616, 44.093224, 41.835293>,  <39.394245, 44.615841, 41.645187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809616, 44.093224, 41.835293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449993, 43.918915, 41.852291>,  <39.234219, 43.814331, 41.862488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449993, 43.918915, 41.852291>,  <39.809616, 44.093224, 41.835293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449993, 43.918915, 41.852291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400089, -0.857080, -0.324567,
		0.177857, -0.274802, 0.944908,
		-0.899053, -0.435773, 0.042492,
		39.180279, 43.788181, 41.865040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825829, 43.456852, 42.257954>,  <39.809616, 44.093224, 41.835293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825829, 43.456852, 42.257954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525436, 43.425117, 41.995735>,  <39.345203, 43.406078, 41.838406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525436, 43.425117, 41.995735>,  <39.825829, 43.456852, 42.257954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525436, 43.425117, 41.995735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334272, -0.901831, -0.273793,
		-0.569471, -0.424743, 0.703772,
		-0.750976, -0.079334, -0.655546,
		39.300144, 43.401318, 41.799072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750187, 42.750668, 42.242729>,  <39.825829, 43.456852, 42.257954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750187, 42.750668, 42.242729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570942, 42.884609, 41.911171>,  <39.463394, 42.964973, 41.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570942, 42.884609, 41.911171>,  <39.750187, 42.750668, 42.242729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570942, 42.884609, 41.911171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036045, -0.933215, -0.357507,
		-0.893248, -0.130328, 0.430259,
		-0.448117, 0.334851, -0.828894,
		39.436508, 42.985065, 41.662502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344742, 42.340137, 42.117393>,  <39.750187, 42.750668, 42.242729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344742, 42.340137, 42.117393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391693, 42.509373, 41.758011>,  <39.419865, 42.610912, 41.542381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391693, 42.509373, 41.758011>,  <39.344742, 42.340137, 42.117393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391693, 42.509373, 41.758011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022793, -0.903324, -0.428353,
		-0.992826, 0.070756, -0.096384,
		0.117375, 0.423084, -0.898456,
		39.426907, 42.636299, 41.488476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967674, 41.843452, 41.643456>,  <39.344742, 42.340137, 42.117393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967674, 41.843452, 41.643456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161156, 42.082329, 41.387520>,  <39.277245, 42.225655, 41.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161156, 42.082329, 41.387520>,  <38.967674, 41.843452, 41.643456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161156, 42.082329, 41.387520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010743, -0.726948, -0.686608,
		-0.875165, 0.338990, -0.345213,
		0.483705, 0.597187, -0.639841,
		39.306267, 42.261486, 41.195568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641956, 41.837639, 40.988361>,  <38.967674, 41.843452, 41.643456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641956, 41.837639, 40.988361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013954, 41.945633, 40.888584>,  <39.237152, 42.010429, 40.828720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013954, 41.945633, 40.888584>,  <38.641956, 41.837639, 40.988361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013954, 41.945633, 40.888584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016020, -0.707730, -0.706301,
		-0.367230, 0.652858, -0.662508,
		0.929992, 0.269989, -0.249441,
		39.292953, 42.026630, 40.813751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671043, 41.493759, 40.443146>,  <38.641956, 41.837639, 40.988361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671043, 41.493759, 40.443146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054836, 41.597664, 40.486816>,  <39.285110, 41.660007, 40.513020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054836, 41.597664, 40.486816>,  <38.671043, 41.493759, 40.443146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054836, 41.597664, 40.486816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264704, -0.698135, -0.665237,
		-0.096579, 0.667183, -0.738607,
		0.959481, 0.259760, 0.109181,
		39.342682, 41.675591, 40.519569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018135, 41.509777, 39.671967>,  <38.671043, 41.493759, 40.443146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018135, 41.509777, 39.671967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280750, 41.459545, 39.969471>,  <39.438320, 41.429405, 40.147976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280750, 41.459545, 39.969471>,  <39.018135, 41.509777, 39.671967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280750, 41.459545, 39.969471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231499, -0.904909, -0.357139,
		0.717888, 0.406657, -0.565037,
		0.656540, -0.125580, 0.743764,
		39.477711, 41.421871, 40.192600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504677, 41.068810, 39.294312>,  <39.018135, 41.509777, 39.671967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504677, 41.068810, 39.294312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626156, 41.029564, 39.673393>,  <39.699043, 41.006016, 39.900841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626156, 41.029564, 39.673393>,  <39.504677, 41.068810, 39.294312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626156, 41.029564, 39.673393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279462, -0.941760, -0.187052,
		0.910861, 0.321655, -0.258593,
		0.303699, -0.098111, 0.947703,
		39.717266, 41.000130, 39.957703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223053, 40.772144, 39.294052>,  <39.504677, 41.068810, 39.294312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223053, 40.772144, 39.294052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058613, 40.678883, 39.646561>,  <39.959949, 40.622925, 39.858067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058613, 40.678883, 39.646561>,  <40.223053, 40.772144, 39.294052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058613, 40.678883, 39.646561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460346, -0.887513, -0.020058,
		0.786816, 0.397444, 0.472186,
		-0.411099, -0.233151, 0.881271,
		39.935284, 40.608936, 39.910942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690449, 40.301670, 39.530731>,  <40.223053, 40.772144, 39.294052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690449, 40.301670, 39.530731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372807, 40.250504, 39.768402>,  <40.182220, 40.219803, 39.911003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372807, 40.250504, 39.768402>,  <40.690449, 40.301670, 39.530731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372807, 40.250504, 39.768402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270973, -0.949577, 0.157726,
		0.544038, 0.286255, 0.788721,
		-0.794101, -0.127913, 0.594173,
		40.134575, 40.212132, 39.946655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935364, 39.947372, 40.168327>,  <40.690449, 40.301670, 39.530731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935364, 39.947372, 40.168327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540192, 39.887299, 40.153141>,  <40.303089, 39.851254, 40.144032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540192, 39.887299, 40.153141>,  <40.935364, 39.947372, 40.168327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540192, 39.887299, 40.153141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124968, -0.917495, 0.377605,
		-0.091541, 0.368303, 0.925188,
		-0.987929, -0.150185, -0.037962,
		40.243813, 39.842243, 40.141754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761208, 39.411335, 40.827545>,  <40.935364, 39.947372, 40.168327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761208, 39.411335, 40.827545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425400, 39.398399, 40.610600>,  <40.223915, 39.390636, 40.480431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425400, 39.398399, 40.610600>,  <40.761208, 39.411335, 40.827545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425400, 39.398399, 40.610600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054432, -0.988198, 0.143185,
		-0.540593, 0.149728, 0.827853,
		-0.839521, -0.032343, -0.542363,
		40.173542, 39.388695, 40.447891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207546, 39.113159, 41.265011>,  <40.761208, 39.411335, 40.827545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207546, 39.113159, 41.265011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112900, 39.049187, 40.881672>,  <40.056110, 39.010803, 40.651669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112900, 39.049187, 40.881672>,  <40.207546, 39.113159, 41.265011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112900, 39.049187, 40.881672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192391, -0.959117, 0.207557,
		-0.952365, 0.233489, 0.196173,
		-0.236615, -0.159928, -0.958351,
		40.041916, 39.001209, 40.594166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650440, 38.615597, 41.297405>,  <40.207546, 39.113159, 41.265011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650440, 38.615597, 41.297405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804043, 38.604176, 40.928249>,  <39.896202, 38.597321, 40.706757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804043, 38.604176, 40.928249>,  <39.650440, 38.615597, 41.297405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804043, 38.604176, 40.928249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139601, -0.989827, -0.027458,
		-0.912717, 0.139380, -0.384084,
		0.384004, -0.028558, -0.922890,
		39.919243, 38.595608, 40.651382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122292, 38.283142, 40.898865>,  <39.650440, 38.615597, 41.297405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122292, 38.283142, 40.898865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472641, 38.239742, 40.710789>,  <39.682850, 38.213703, 40.597942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472641, 38.239742, 40.710789>,  <39.122292, 38.283142, 40.898865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472641, 38.239742, 40.710789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184601, -0.975614, -0.118741,
		-0.445843, 0.190799, -0.874540,
		0.875869, -0.108501, -0.470192,
		39.735401, 38.207191, 40.569733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884689, 37.974510, 40.308182>,  <39.122292, 38.283142, 40.898865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884689, 37.974510, 40.308182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276669, 37.894901, 40.304440>,  <39.511856, 37.847137, 40.302193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276669, 37.894901, 40.304440>,  <38.884689, 37.974510, 40.308182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276669, 37.894901, 40.304440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193255, -0.938047, -0.287611,
		0.048463, 0.283653, -0.957702,
		0.979951, -0.199020, -0.009357,
		39.570652, 37.835194, 40.301632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001450, 37.765991, 39.598797>,  <38.884689, 37.974510, 40.308182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001450, 37.765991, 39.598797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311184, 37.625420, 39.809284>,  <39.497025, 37.541077, 39.935577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311184, 37.625420, 39.809284>,  <39.001450, 37.765991, 39.598797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311184, 37.625420, 39.809284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007156, -0.826686, -0.562618,
		0.632736, 0.439420, -0.637617,
		0.774335, -0.351426, 0.526218,
		39.543484, 37.519993, 39.967148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552868, 37.597065, 39.124680>,  <39.001450, 37.765991, 39.598797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552868, 37.597065, 39.124680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595600, 37.377422, 39.456238>,  <39.621239, 37.245636, 39.655174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595600, 37.377422, 39.456238>,  <39.552868, 37.597065, 39.124680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595600, 37.377422, 39.456238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272618, -0.785540, -0.555524,
		0.956173, 0.285321, 0.065773,
		0.106835, -0.549108, 0.828895,
		39.627651, 37.212688, 39.704906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173756, 37.213818, 38.962242>,  <39.552868, 37.597065, 39.124680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173756, 37.213818, 38.962242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015034, 37.028313, 39.279095>,  <39.919800, 36.917011, 39.469204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015034, 37.028313, 39.279095>,  <40.173756, 37.213818, 38.962242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015034, 37.028313, 39.279095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242465, -0.885284, -0.396840,
		0.885299, 0.034594, 0.463734,
		-0.396808, -0.463761, 0.792129,
		39.895992, 36.889183, 39.516735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649765, 36.710979, 39.217480>,  <40.173756, 37.213818, 38.962242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649765, 36.710979, 39.217480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291855, 36.591297, 39.350060>,  <40.077110, 36.519489, 39.429607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291855, 36.591297, 39.350060>,  <40.649765, 36.710979, 39.217480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291855, 36.591297, 39.350060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143679, -0.895741, -0.420719,
		0.422773, -0.328826, 0.844474,
		-0.894773, -0.299202, 0.331450,
		40.023422, 36.501537, 39.449493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822117, 36.074421, 39.440983>,  <40.649765, 36.710979, 39.217480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822117, 36.074421, 39.440983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422512, 36.060410, 39.430027>,  <40.182751, 36.052002, 39.423454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422512, 36.060410, 39.430027>,  <40.822117, 36.074421, 39.440983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422512, 36.060410, 39.430027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040932, -0.965081, -0.258733,
		-0.017374, -0.259598, 0.965561,
		-0.999011, -0.035027, -0.027393,
		40.122810, 36.049900, 39.421810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607033, 35.450863, 39.898277>,  <40.822117, 36.074421, 39.440983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607033, 35.450863, 39.898277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324512, 35.517883, 39.623158>,  <40.154999, 35.558094, 39.458088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324512, 35.517883, 39.623158>,  <40.607033, 35.450863, 39.898277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324512, 35.517883, 39.623158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065119, -0.952090, -0.298804,
		-0.704909, -0.255835, 0.661553,
		-0.706302, 0.167550, -0.687796,
		40.112621, 35.568150, 39.416817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398968, 34.816162, 39.702019>,  <40.607033, 35.450863, 39.898277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398968, 34.816162, 39.702019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218079, 35.031296, 39.417419>,  <40.109547, 35.160378, 39.246658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218079, 35.031296, 39.417419>,  <40.398968, 34.816162, 39.702019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218079, 35.031296, 39.417419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124919, -0.751673, -0.647598,
		-0.883115, -0.381737, 0.272737,
		-0.452221, 0.537834, -0.711499,
		40.082413, 35.192646, 39.203968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884010, 34.349926, 39.407772>,  <40.398968, 34.816162, 39.702019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884010, 34.349926, 39.407772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948330, 34.645035, 39.145527>,  <39.986923, 34.822102, 38.988178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948330, 34.645035, 39.145527>,  <39.884010, 34.349926, 39.407772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948330, 34.645035, 39.145527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007397, -0.665140, -0.746682,
		-0.986959, 0.115217, -0.112413,
		0.160801, 0.737776, -0.655614,
		39.996571, 34.866367, 38.948841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319386, 34.236996, 38.859837>,  <39.884010, 34.349926, 39.407772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319386, 34.236996, 38.859837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616558, 34.449814, 38.697365>,  <39.794861, 34.577507, 38.599880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616558, 34.449814, 38.697365>,  <39.319386, 34.236996, 38.859837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616558, 34.449814, 38.697365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015517, -0.592958, -0.805084,
		-0.669193, 0.604421, -0.432269,
		0.742927, 0.532049, -0.406182,
		39.839436, 34.609428, 38.575512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222008, 34.373859, 38.198013>,  <39.319386, 34.236996, 38.859837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222008, 34.373859, 38.198013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617428, 34.429996, 38.175835>,  <39.854679, 34.463676, 38.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617428, 34.429996, 38.175835>,  <39.222008, 34.373859, 38.198013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617428, 34.429996, 38.175835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046658, -0.633725, -0.772150,
		-0.143503, 0.760722, -0.633016,
		0.988549, 0.140341, -0.055447,
		39.913994, 34.472099, 38.159199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302994, 34.328629, 37.523720>,  <39.222008, 34.373859, 38.198013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302994, 34.328629, 37.523720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685108, 34.289913, 37.635479>,  <39.914375, 34.266685, 37.702534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685108, 34.289913, 37.635479>,  <39.302994, 34.328629, 37.523720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685108, 34.289913, 37.635479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141211, -0.680860, -0.718672,
		0.259784, 0.725991, -0.636749,
		0.955286, -0.096784, 0.279394,
		39.971695, 34.260880, 37.719296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753616, 34.335564, 36.942062>,  <39.302994, 34.328629, 37.523720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753616, 34.335564, 36.942062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997082, 34.161434, 37.207397>,  <40.143162, 34.056957, 37.366600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997082, 34.161434, 37.207397>,  <39.753616, 34.335564, 36.942062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997082, 34.161434, 37.207397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333734, -0.618020, -0.711810,
		0.719823, 0.654634, -0.230887,
		0.608668, -0.435322, 0.663338,
		40.179684, 34.030838, 37.406399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370296, 34.397240, 36.606380>,  <39.753616, 34.335564, 36.942062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370296, 34.397240, 36.606380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431057, 34.102612, 36.870014>,  <40.467514, 33.925835, 37.028194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431057, 34.102612, 36.870014>,  <40.370296, 34.397240, 36.606380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431057, 34.102612, 36.870014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522804, -0.506028, -0.686012,
		0.838811, 0.448774, 0.308219,
		0.151897, -0.736572, 0.659082,
		40.476627, 33.881641, 37.067738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115467, 34.274391, 36.586426>,  <40.370296, 34.397240, 36.606380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115467, 34.274391, 36.586426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938465, 33.949287, 36.738007>,  <40.832264, 33.754223, 36.828957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938465, 33.949287, 36.738007>,  <41.115467, 34.274391, 36.586426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938465, 33.949287, 36.738007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712700, -0.575218, -0.401477,
		0.544286, 0.092424, 0.833793,
		-0.442506, -0.812762, 0.378953,
		40.805714, 33.705460, 36.851692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611565, 33.944973, 36.865845>,  <41.115467, 34.274391, 36.586426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611565, 33.944973, 36.865845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336540, 33.658970, 36.815205>,  <41.171524, 33.487370, 36.784821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336540, 33.658970, 36.815205>,  <41.611565, 33.944973, 36.865845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336540, 33.658970, 36.815205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707067, -0.619580, -0.340846,
		0.165267, -0.323868, 0.931556,
		-0.687563, -0.715003, -0.126600,
		41.130272, 33.444469, 36.777225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024559, 33.311001, 36.955612>,  <41.611565, 33.944973, 36.865845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024559, 33.311001, 36.955612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685844, 33.236423, 36.756336>,  <41.482616, 33.191677, 36.636772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685844, 33.236423, 36.756336>,  <42.024559, 33.311001, 36.955612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685844, 33.236423, 36.756336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482601, -0.663172, -0.572101,
		-0.223717, -0.724873, 0.651545,
		-0.846787, -0.186447, -0.498187,
		41.431808, 33.180489, 36.606880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997784, 32.546043, 36.963722>,  <42.024559, 33.311001, 36.955612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997784, 32.546043, 36.963722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845959, 32.765888, 36.666035>,  <41.754864, 32.897797, 36.487423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845959, 32.765888, 36.666035>,  <41.997784, 32.546043, 36.963722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845959, 32.765888, 36.666035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534723, -0.526119, -0.661264,
		-0.754985, -0.648941, -0.094195,
		-0.379564, 0.549613, -0.744216,
		41.732090, 32.930771, 36.442772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698132, 32.009335, 36.501011>,  <41.997784, 32.546043, 36.963722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698132, 32.009335, 36.501011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815784, 32.363750, 36.357674>,  <41.886375, 32.576401, 36.271671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815784, 32.363750, 36.357674>,  <41.698132, 32.009335, 36.501011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815784, 32.363750, 36.357674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534505, -0.463313, -0.706856,
		-0.792332, 0.016371, -0.609871,
		0.294133, 0.886043, -0.358347,
		41.904026, 32.629562, 36.250168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347263, 32.119064, 35.774891>,  <41.698132, 32.009335, 36.501011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347263, 32.119064, 35.774891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659023, 32.367031, 35.811188>,  <41.846081, 32.515812, 35.832966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659023, 32.367031, 35.811188>,  <41.347263, 32.119064, 35.774891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659023, 32.367031, 35.811188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302467, -0.245469, -0.921010,
		-0.548679, 0.745281, -0.378824,
		0.779400, 0.619921, 0.090739,
		41.892845, 32.553009, 35.838409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384869, 32.477001, 35.090710>,  <41.347263, 32.119064, 35.774891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384869, 32.477001, 35.090710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739147, 32.472321, 35.276356>,  <41.951714, 32.469513, 35.387745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739147, 32.472321, 35.276356>,  <41.384869, 32.477001, 35.090710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739147, 32.472321, 35.276356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450056, -0.223786, -0.864505,
		0.113983, 0.974568, -0.192938,
		0.885696, -0.011706, 0.464118,
		42.004856, 32.468807, 35.415592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837132, 33.023651, 34.856678>,  <41.384869, 32.477001, 35.090710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837132, 33.023651, 34.856678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960201, 32.660336, 34.970066>,  <42.034042, 32.442348, 35.038097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960201, 32.660336, 34.970066>,  <41.837132, 33.023651, 34.856678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960201, 32.660336, 34.970066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365022, -0.162447, -0.916717,
		0.878688, 0.385525, 0.281562,
		0.307678, -0.908285, 0.283465,
		42.052505, 32.387852, 35.055107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597134, 33.000919, 34.837433>,  <41.837132, 33.023651, 34.856678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597134, 33.000919, 34.837433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383781, 32.683395, 34.720554>,  <42.255772, 32.492882, 34.650429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383781, 32.683395, 34.720554>,  <42.597134, 33.000919, 34.837433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383781, 32.683395, 34.720554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503699, -0.020549, -0.863635,
		0.679556, -0.607822, 0.410801,
		-0.533377, -0.793808, -0.292195,
		42.223766, 32.445251, 34.632896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521099, 32.563766, 34.089378>,  <42.597134, 33.000919, 34.837433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521099, 32.563766, 34.089378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333241, 32.786221, 33.815109>,  <42.220524, 32.919693, 33.650547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333241, 32.786221, 33.815109>,  <42.521099, 32.563766, 34.089378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333241, 32.786221, 33.815109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189543, -0.822057, -0.536931,
		-0.862266, -0.122205, 0.491491,
		-0.469649, 0.556136, -0.685669,
		42.192345, 32.953060, 33.609409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198376, 32.587147, 34.441704>,  <42.521099, 32.563766, 34.089378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198376, 32.587147, 34.441704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597008, 32.590839, 34.408863>,  <43.836185, 32.593056, 34.389156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597008, 32.590839, 34.408863>,  <43.198376, 32.587147, 34.441704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597008, 32.590839, 34.408863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052475, -0.838324, 0.542641,
		-0.063818, -0.545094, -0.835942,
		0.996581, 0.009236, -0.082104,
		43.895981, 32.593609, 34.384232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497356, 31.891804, 34.165924>,  <43.198376, 32.587147, 34.441704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497356, 31.891804, 34.165924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780937, 32.052940, 34.397476>,  <43.951084, 32.149624, 34.536407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780937, 32.052940, 34.397476>,  <43.497356, 31.891804, 34.165924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780937, 32.052940, 34.397476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183590, -0.897927, 0.400026,
		0.680941, -0.177323, -0.710546,
		0.708953, 0.402844, 0.578881,
		43.993622, 32.173794, 34.571140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035179, 31.368942, 34.193954>,  <43.497356, 31.891804, 34.165924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035179, 31.368942, 34.193954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099644, 31.596991, 34.516193>,  <44.138321, 31.733820, 34.709538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099644, 31.596991, 34.516193>,  <44.035179, 31.368942, 34.193954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099644, 31.596991, 34.516193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213119, -0.817113, 0.535637,
		0.963643, 0.085367, -0.253188,
		0.161158, 0.570122, 0.805599,
		44.147991, 31.768026, 34.757874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824284, 31.182293, 34.500679>,  <44.035179, 31.368942, 34.193954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824284, 31.182293, 34.500679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582539, 31.355270, 34.768330>,  <44.437492, 31.459057, 34.928921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582539, 31.355270, 34.768330>,  <44.824284, 31.182293, 34.500679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582539, 31.355270, 34.768330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135978, -0.771557, 0.621458,
		0.785016, 0.466576, 0.407501,
		-0.604367, 0.432444, 0.669129,
		44.401230, 31.485004, 34.969067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128769, 30.931883, 35.143856>,  <44.824284, 31.182293, 34.500679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128769, 30.931883, 35.143856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777779, 31.093081, 35.247887>,  <44.567184, 31.189798, 35.310307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777779, 31.093081, 35.247887>,  <45.128769, 30.931883, 35.143856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777779, 31.093081, 35.247887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065944, -0.638465, 0.766821,
		0.475073, 0.655713, 0.586810,
		-0.877472, 0.402993, 0.260077,
		44.514538, 31.213978, 35.325909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235298, 31.190708, 35.840385>,  <45.128769, 30.931883, 35.143856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235298, 31.190708, 35.840385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838127, 31.161757, 35.802731>,  <44.599827, 31.144384, 35.780136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838127, 31.161757, 35.802731>,  <45.235298, 31.190708, 35.840385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838127, 31.161757, 35.802731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037843, -0.558568, 0.828595,
		-0.112558, 0.826294, 0.551877,
		-0.992924, -0.072380, -0.094141,
		44.540249, 31.140043, 35.774487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929417, 31.088812, 36.474586>,  <45.235298, 31.190708, 35.840385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929417, 31.088812, 36.474586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620182, 30.948856, 36.262962>,  <44.434639, 30.864883, 36.135986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620182, 30.948856, 36.262962>,  <44.929417, 31.088812, 36.474586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620182, 30.948856, 36.262962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098993, -0.757320, 0.645498,
		-0.626525, 0.551401, 0.550839,
		-0.773089, -0.349891, -0.529064,
		44.388256, 30.843889, 36.104244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435452, 30.914101, 36.979321>,  <44.929417, 31.088812, 36.474586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435452, 30.914101, 36.979321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337315, 30.710825, 36.649094>,  <44.278435, 30.588860, 36.450958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337315, 30.710825, 36.649094>,  <44.435452, 30.914101, 36.979321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337315, 30.710825, 36.649094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235605, -0.794801, 0.559268,
		-0.940372, 0.331717, 0.075264,
		-0.245339, -0.508188, -0.825563,
		44.263714, 30.558369, 36.401424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766544, 30.681973, 37.086704>,  <44.435452, 30.914101, 36.979321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766544, 30.681973, 37.086704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912148, 30.432123, 36.810345>,  <43.999508, 30.282213, 36.644527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912148, 30.432123, 36.810345>,  <43.766544, 30.681973, 37.086704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912148, 30.432123, 36.810345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391828, -0.775651, 0.494810,
		-0.844969, 0.090602, -0.527085,
		0.364003, -0.624625, -0.690902,
		44.021347, 30.244736, 36.603073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409401, 30.114555, 37.222290>,  <43.766544, 30.681973, 37.086704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409401, 30.114555, 37.222290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691113, 29.956472, 36.986389>,  <43.860138, 29.861624, 36.844849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691113, 29.956472, 36.986389>,  <43.409401, 30.114555, 37.222290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691113, 29.956472, 36.986389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139248, -0.891486, 0.431118,
		-0.696134, -0.221505, -0.682886,
		0.704278, -0.395206, -0.589750,
		43.902397, 29.837912, 36.809464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079067, 29.540714, 36.968632>,  <43.409401, 30.114555, 37.222290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079067, 29.540714, 36.968632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473289, 29.490334, 36.923344>,  <43.709824, 29.460106, 36.896172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473289, 29.490334, 36.923344>,  <43.079067, 29.540714, 36.968632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473289, 29.490334, 36.923344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066333, -0.902182, 0.426225,
		-0.155828, -0.412558, -0.897505,
		0.985555, -0.125952, -0.113219,
		43.768955, 29.452547, 36.889378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245174, 28.825003, 36.699375>,  <43.079067, 29.540714, 36.968632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245174, 28.825003, 36.699375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592110, 28.932652, 36.866844>,  <43.800270, 28.997242, 36.967327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592110, 28.932652, 36.866844>,  <43.245174, 28.825003, 36.699375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592110, 28.932652, 36.866844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122369, -0.930688, 0.344741,
		0.482434, -0.247776, -0.840158,
		0.867343, 0.269124, 0.418675,
		43.852314, 29.013390, 36.992447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758228, 28.206600, 36.559414>,  <43.245174, 28.825003, 36.699375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758228, 28.206600, 36.559414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897915, 28.424559, 36.864342>,  <43.981728, 28.555334, 37.047298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897915, 28.424559, 36.864342>,  <43.758228, 28.206600, 36.559414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897915, 28.424559, 36.864342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174922, -0.837148, 0.518253,
		0.920570, -0.047637, -0.387662,
		0.349218, 0.544898, 0.762320,
		44.002682, 28.588028, 37.093037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388737, 27.917679, 36.702610>,  <43.758228, 28.206600, 36.559414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388737, 27.917679, 36.702610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295712, 28.114527, 37.038166>,  <44.239895, 28.232635, 37.239498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295712, 28.114527, 37.038166>,  <44.388737, 27.917679, 36.702610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295712, 28.114527, 37.038166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357891, -0.758715, 0.544303,
		0.904339, 0.426815, 0.000323,
		-0.232562, 0.492119, 0.838889,
		44.225945, 28.262163, 37.289833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029305, 28.017635, 37.137138>,  <44.388737, 27.917679, 36.702610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029305, 28.017635, 37.137138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727032, 28.042372, 37.397942>,  <44.545666, 28.057213, 37.554424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727032, 28.042372, 37.397942>,  <45.029305, 28.017635, 37.137138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727032, 28.042372, 37.397942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546335, -0.489502, 0.679636,
		0.361188, 0.869807, 0.336125,
		-0.755686, 0.061840, 0.652008,
		44.500324, 28.060925, 37.593544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378922, 28.009327, 37.721710>,  <45.029305, 28.017635, 37.137138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378922, 28.009327, 37.721710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002659, 27.928171, 37.830528>,  <44.776901, 27.879478, 37.895817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002659, 27.928171, 37.830528>,  <45.378922, 28.009327, 37.721710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002659, 27.928171, 37.830528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338223, -0.494701, 0.800547,
		-0.027844, 0.845048, 0.533965,
		-0.940654, -0.202889, 0.272041,
		44.720463, 27.867304, 37.912140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324413, 28.075937, 38.466190>,  <45.378922, 28.009327, 37.721710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324413, 28.075937, 38.466190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001461, 27.852489, 38.390213>,  <44.807690, 27.718420, 38.344627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001461, 27.852489, 38.390213>,  <45.324413, 28.075937, 38.466190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001461, 27.852489, 38.390213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195286, -0.556776, 0.807381,
		-0.556776, 0.614771, 0.558621,
		-0.807381, -0.558621, -0.189943,
		44.759247, 27.684904, 38.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031612, 28.000225, 39.115952>,  <45.324413, 28.075937, 38.466190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031612, 28.000225, 39.115952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891403, 27.710083, 38.878971>,  <44.807278, 27.535997, 38.736782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891403, 27.710083, 38.878971>,  <45.031612, 28.000225, 39.115952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891403, 27.710083, 38.878971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166500, -0.670768, 0.722736,
		-0.921636, 0.154691, 0.355889,
		-0.350520, -0.725355, -0.592449,
		44.786247, 27.492476, 38.701237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574909, 27.604242, 39.575005>,  <45.031612, 28.000225, 39.115952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574909, 27.604242, 39.575005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640770, 27.328117, 39.293194>,  <44.680286, 27.162441, 39.124107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640770, 27.328117, 39.293194>,  <44.574909, 27.604242, 39.575005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640770, 27.328117, 39.293194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093956, -0.722002, 0.685482,
		-0.981866, -0.046673, -0.183739,
		0.164654, -0.690315, -0.704524,
		44.690166, 27.121023, 39.081837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999966, 26.932304, 39.648659>,  <44.574909, 27.604242, 39.575005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999966, 26.932304, 39.648659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292519, 26.779593, 39.422623>,  <44.468052, 26.687965, 39.287003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292519, 26.779593, 39.422623>,  <43.999966, 26.932304, 39.648659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292519, 26.779593, 39.422623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013267, -0.836421, 0.547927,
		-0.681840, -0.393246, -0.616807,
		0.731381, -0.381782, -0.565089,
		44.511932, 26.665058, 39.253098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922714, 26.188101, 39.716732>,  <43.999966, 26.932304, 39.648659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922714, 26.188101, 39.716732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290665, 26.166950, 39.561279>,  <44.511436, 26.154261, 39.468010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290665, 26.166950, 39.561279>,  <43.922714, 26.188101, 39.716732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290665, 26.166950, 39.561279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172424, -0.835465, 0.521794,
		-0.352277, -0.546995, -0.759406,
		0.919876, -0.052876, -0.388630,
		44.566628, 26.151087, 39.444691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934219, 25.535633, 39.548988>,  <43.922714, 26.188101, 39.716732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934219, 25.535633, 39.548988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310501, 25.666143, 39.586147>,  <44.536270, 25.744450, 39.608440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310501, 25.666143, 39.586147>,  <43.934219, 25.535633, 39.548988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310501, 25.666143, 39.586147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192678, -0.739244, 0.645286,
		0.279212, -0.589122, -0.758272,
		0.940700, 0.326274, 0.092895,
		44.592712, 25.764025, 39.614017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474072, 24.936811, 39.592819>,  <43.934219, 25.535633, 39.548988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474072, 24.936811, 39.592819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616867, 25.266071, 39.769444>,  <44.702545, 25.463627, 39.875420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616867, 25.266071, 39.769444>,  <44.474072, 24.936811, 39.592819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616867, 25.266071, 39.769444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364331, -0.557972, 0.745607,
		0.860128, -0.105299, -0.499091,
		0.356991, 0.823152, 0.441564,
		44.723965, 25.513018, 39.901913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824165, 24.400858, 39.947544>,  <44.474072, 24.936811, 39.592819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824165, 24.400858, 39.947544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950188, 24.773184, 39.873436>,  <45.025799, 24.996580, 39.828972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950188, 24.773184, 39.873436>,  <44.824165, 24.400858, 39.947544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950188, 24.773184, 39.873436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854122, -0.192970, 0.482947,
		0.413784, -0.310394, -0.855826,
		0.315053, 0.930816, -0.185266,
		45.044704, 25.052429, 39.817856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466595, 24.402737, 39.775005>,  <44.824165, 24.400858, 39.947544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466595, 24.402737, 39.775005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454891, 24.772499, 39.927120>,  <45.447868, 24.994356, 40.018387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454891, 24.772499, 39.927120>,  <45.466595, 24.402737, 39.775005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454891, 24.772499, 39.927120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969062, -0.067043, 0.237539,
		0.245078, 0.375471, -0.893845,
		-0.029263, 0.924406, 0.380286,
		45.446114, 25.049820, 40.041206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171272, 24.635464, 40.059326>,  <45.466595, 24.402737, 39.775005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171272, 24.635464, 40.059326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971043, 24.980398, 40.089806>,  <45.850906, 25.187359, 40.108093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971043, 24.980398, 40.089806>,  <46.171272, 24.635464, 40.059326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971043, 24.980398, 40.089806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839274, 0.461831, 0.286935,
		0.212245, 0.207581, -0.954915,
		-0.500572, 0.862335, 0.076196,
		45.820869, 25.239100, 40.112663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159176, 24.638817, 39.285824>,  <46.171272, 24.635464, 40.059326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159176, 24.638817, 39.285824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925819, 24.321775, 39.214912>,  <45.785805, 24.131550, 39.172363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925819, 24.321775, 39.214912>,  <46.159176, 24.638817, 39.285824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925819, 24.321775, 39.214912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737280, 0.608379, -0.293756,
		0.340687, -0.040669, -0.939297,
		-0.583395, -0.792604, -0.177282,
		45.750801, 24.083994, 39.161728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805294, 24.686842, 38.686626>,  <46.159176, 24.638817, 39.285824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805294, 24.686842, 38.686626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559650, 24.432243, 38.873276>,  <45.412262, 24.279484, 38.985264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559650, 24.432243, 38.873276>,  <45.805294, 24.686842, 38.686626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559650, 24.432243, 38.873276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778362, 0.586192, -0.224792,
		-0.130450, -0.501248, -0.855414,
		-0.614114, -0.636498, 0.466621,
		45.375416, 24.241295, 39.013264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041931, 24.827600, 37.855228>,  <45.805294, 24.686842, 38.686626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041931, 24.827600, 37.855228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396114, 24.699448, 37.989876>,  <46.608624, 24.622555, 38.070663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.396114, 24.699448, 37.989876>,  <46.041931, 24.827600, 37.855228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396114, 24.699448, 37.989876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385945, 0.910465, -0.148660,
		-0.258850, 0.261549, 0.929833,
		0.885462, -0.320384, 0.336617,
		46.661755, 24.603333, 38.090862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361526, 25.217972, 38.260822>,  <46.041931, 24.827600, 37.855228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361526, 25.217972, 38.260822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.677395, 25.041826, 38.089943>,  <46.866917, 24.936138, 37.987415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.677395, 25.041826, 38.089943>,  <46.361526, 25.217972, 38.260822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.677395, 25.041826, 38.089943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393832, 0.897734, -0.197409,
		0.470440, -0.012354, 0.882346,
		0.789673, -0.440365, -0.427196,
		46.914295, 24.909718, 37.961784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.890789, 25.644814, 38.411194>,  <46.361526, 25.217972, 38.260822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.890789, 25.644814, 38.411194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041325, 25.444960, 38.099110>,  <47.131645, 25.325047, 37.911858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041325, 25.444960, 38.099110>,  <46.890789, 25.644814, 38.411194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.041325, 25.444960, 38.099110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407281, 0.845610, -0.345059,
		0.832158, -0.187905, 0.521732,
		0.376344, -0.499636, -0.780211,
		47.154228, 25.295069, 37.865047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.574963, 25.889034, 38.310558>,  <46.890789, 25.644814, 38.411194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.574963, 25.889034, 38.310558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415344, 25.749632, 37.971310>,  <47.319572, 25.665991, 37.767761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415344, 25.749632, 37.971310>,  <47.574963, 25.889034, 38.310558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.415344, 25.749632, 37.971310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378272, 0.780009, -0.498494,
		0.835269, -0.519741, -0.179430,
		-0.399045, -0.348503, -0.848121,
		47.295631, 25.645081, 37.716873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.132355, 25.824696, 37.964371>,  <47.574963, 25.889034, 38.310558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.132355, 25.824696, 37.964371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811707, 25.913223, 37.742226>,  <47.619320, 25.966339, 37.608940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811707, 25.913223, 37.742226>,  <48.132355, 25.824696, 37.964371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.811707, 25.913223, 37.742226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399148, 0.889710, -0.221578,
		0.445072, -0.399293, -0.801546,
		-0.801618, 0.221318, -0.555362,
		47.571220, 25.979618, 37.575619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.334278, 26.228800, 37.452015>,  <48.132355, 25.824696, 37.964371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.334278, 26.228800, 37.452015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.939625, 26.293970, 37.451740>,  <47.702831, 26.333073, 37.451576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.939625, 26.293970, 37.451740>,  <48.334278, 26.228800, 37.452015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.939625, 26.293970, 37.451740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161285, 0.976078, -0.145804,
		-0.023084, -0.143966, -0.989313,
		-0.986638, 0.162927, -0.000687,
		47.643635, 26.342848, 37.451534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.165646, 26.529486, 36.868637>,  <48.334278, 26.228800, 37.452015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.165646, 26.529486, 36.868637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853676, 26.631197, 37.097393>,  <47.666492, 26.692223, 37.234646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853676, 26.631197, 37.097393>,  <48.165646, 26.529486, 36.868637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.853676, 26.631197, 37.097393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012924, 0.920100, -0.391470,
		-0.625741, -0.297926, -0.720894,
		-0.779923, 0.254276, 0.571894,
		47.619698, 26.707479, 37.268963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677204, 26.819393, 36.427387>,  <48.165646, 26.529486, 36.868637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677204, 26.819393, 36.427387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576080, 26.946722, 36.792847>,  <47.515408, 27.023119, 37.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576080, 26.946722, 36.792847>,  <47.677204, 26.819393, 36.427387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.576080, 26.946722, 36.792847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196801, 0.907666, -0.370691,
		-0.947290, -0.273520, -0.166817,
		-0.252806, 0.318323, 0.913652,
		47.500240, 27.042219, 37.066944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078403, 27.258226, 36.196095>,  <47.677204, 26.819393, 36.427387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078403, 27.258226, 36.196095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179016, 27.355516, 36.570812>,  <47.239384, 27.413891, 36.795643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179016, 27.355516, 36.570812>,  <47.078403, 27.258226, 36.196095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.179016, 27.355516, 36.570812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062697, 0.969970, -0.235004,
		-0.965817, 0.000376, 0.259226,
		0.251530, 0.243223, 0.936790,
		47.254475, 27.428484, 36.851849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.574993, 27.837524, 36.439690>,  <47.078403, 27.258226, 36.196095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.574993, 27.837524, 36.439690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.855289, 27.870659, 36.723129>,  <47.023468, 27.890539, 36.893192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.855289, 27.870659, 36.723129>,  <46.574993, 27.837524, 36.439690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.855289, 27.870659, 36.723129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029990, 0.995779, -0.086751,
		-0.712790, 0.039539, 0.700262,
		0.700736, 0.082836, 0.708595,
		47.065510, 27.895510, 36.935707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293919, 28.356529, 36.926773>,  <46.574993, 27.837524, 36.439690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293919, 28.356529, 36.926773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691769, 28.331713, 36.959949>,  <46.930477, 28.316822, 36.979855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691769, 28.331713, 36.959949>,  <46.293919, 28.356529, 36.926773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691769, 28.331713, 36.959949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064670, 0.997474, -0.029376,
		-0.080912, 0.034582, 0.996121,
		0.994621, -0.062042, 0.082944,
		46.990154, 28.313101, 36.984833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490978, 28.768328, 37.493404>,  <46.293919, 28.356529, 36.926773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490978, 28.768328, 37.493404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804218, 28.728729, 37.247822>,  <46.992165, 28.704969, 37.100471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804218, 28.728729, 37.247822>,  <46.490978, 28.768328, 37.493404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.804218, 28.728729, 37.247822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006633, 0.988522, -0.150934,
		0.621855, 0.114124, 0.774772,
		0.783104, -0.098998, -0.613961,
		47.039150, 28.699030, 37.063633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934673, 29.240309, 37.715553>,  <46.490978, 28.768328, 37.493404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934673, 29.240309, 37.715553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.098351, 29.143732, 37.363583>,  <47.196556, 29.085785, 37.152401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.098351, 29.143732, 37.363583>,  <46.934673, 29.240309, 37.715553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.098351, 29.143732, 37.363583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021000, 0.966592, -0.255459,
		0.912208, 0.086053, 0.400590,
		0.409190, -0.241444, -0.879925,
		47.221107, 29.071299, 37.099606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492268, 29.674402, 37.720268>,  <46.934673, 29.240309, 37.715553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492268, 29.674402, 37.720268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405651, 29.577765, 37.341904>,  <47.353683, 29.519781, 37.114887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405651, 29.577765, 37.341904>,  <47.492268, 29.674402, 37.720268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.405651, 29.577765, 37.341904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033971, 0.966445, -0.254616,
		0.975683, -0.087266, -0.201062,
		-0.216535, -0.241595, -0.945909,
		47.340691, 29.505285, 37.058132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.945679, 30.053549, 37.383556>,  <47.492268, 29.674402, 37.720268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.945679, 30.053549, 37.383556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.663433, 29.939514, 37.124069>,  <47.494087, 29.871094, 36.968376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.663433, 29.939514, 37.124069>,  <47.945679, 30.053549, 37.383556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.663433, 29.939514, 37.124069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133500, 0.952587, -0.273416,
		0.695910, -0.106321, -0.710215,
		-0.705612, -0.285086, -0.648720,
		47.451748, 29.853989, 36.929455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.088154, 30.397934, 36.799866>,  <47.945679, 30.053549, 37.383556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.088154, 30.397934, 36.799866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703911, 30.294716, 36.758579>,  <47.473366, 30.232786, 36.733807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703911, 30.294716, 36.758579>,  <48.088154, 30.397934, 36.799866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703911, 30.294716, 36.758579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222798, 0.937007, -0.269034,
		0.166133, -0.235440, -0.957585,
		-0.960604, -0.258043, -0.103213,
		47.415730, 30.217302, 36.727615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.937885, 30.783649, 36.228668>,  <48.088154, 30.397934, 36.799866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.937885, 30.783649, 36.228668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590260, 30.674892, 36.393978>,  <47.381683, 30.609638, 36.493164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.590260, 30.674892, 36.393978>,  <47.937885, 30.783649, 36.228668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.590260, 30.674892, 36.393978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458377, 0.756776, -0.466027,
		-0.186048, -0.594445, -0.782318,
		-0.869066, -0.271893, 0.413276,
		47.329540, 30.593325, 36.517960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.524807, 30.714470, 35.638794>,  <47.937885, 30.783649, 36.228668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.524807, 30.714470, 35.638794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326591, 30.780632, 35.979870>,  <47.207664, 30.820330, 36.184517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326591, 30.780632, 35.979870>,  <47.524807, 30.714470, 35.638794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.326591, 30.780632, 35.979870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430958, 0.805522, -0.406705,
		-0.754135, -0.569012, -0.327881,
		-0.495535, 0.165407, 0.852693,
		47.177933, 30.830254, 36.235680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778938, 30.824480, 35.486111>,  <47.524807, 30.714470, 35.638794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778938, 30.824480, 35.486111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808350, 31.020351, 35.833630>,  <46.825996, 31.137875, 36.042141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808350, 31.020351, 35.833630>,  <46.778938, 30.824480, 35.486111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808350, 31.020351, 35.833630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372923, 0.821457, -0.431435,
		-0.924944, -0.292271, 0.243015,
		0.073530, 0.489679, 0.868797,
		46.830410, 31.167255, 36.094269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160500, 31.232920, 35.645908>,  <46.778938, 30.824480, 35.486111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160500, 31.232920, 35.645908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431145, 31.407658, 35.883015>,  <46.593533, 31.512501, 36.025276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431145, 31.407658, 35.883015>,  <46.160500, 31.232920, 35.645908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431145, 31.407658, 35.883015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417658, 0.890667, -0.179653,
		-0.606433, -0.126016, 0.785085,
		0.676610, 0.436845, 0.592761,
		46.634129, 31.538712, 36.060844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814335, 31.663280, 35.846134>,  <46.160500, 31.232920, 35.645908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814335, 31.663280, 35.846134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166412, 31.819012, 35.954716>,  <46.377659, 31.912451, 36.019867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166412, 31.819012, 35.954716>,  <45.814335, 31.663280, 35.846134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166412, 31.819012, 35.954716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371402, 0.921097, -0.116793,
		-0.295508, 0.001980, 0.955338,
		0.880191, 0.389328, 0.271456,
		46.430470, 31.935810, 36.036152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675117, 32.029144, 36.381813>,  <45.814335, 31.663280, 35.846134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675117, 32.029144, 36.381813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024731, 32.169834, 36.247734>,  <46.234497, 32.254250, 36.167286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024731, 32.169834, 36.247734>,  <45.675117, 32.029144, 36.381813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024731, 32.169834, 36.247734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367730, 0.929781, 0.016764,
		0.317561, 0.108611, 0.941997,
		0.874031, 0.351725, -0.335202,
		46.286942, 32.275352, 36.147175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733009, 32.713997, 36.678772>,  <45.675117, 32.029144, 36.381813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733009, 32.713997, 36.678772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.001949, 32.708717, 36.382725>,  <46.163315, 32.705547, 36.205097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.001949, 32.708717, 36.382725>,  <45.733009, 32.713997, 36.678772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001949, 32.708717, 36.382725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127322, 0.982878, -0.133195,
		0.729202, 0.183787, 0.659157,
		0.672350, -0.013201, -0.740116,
		46.203655, 32.704758, 36.160690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388779, 33.124580, 36.848137>,  <45.733009, 32.713997, 36.678772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.388779, 33.124580, 36.848137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327484, 33.081467, 36.455219>,  <46.290707, 33.055599, 36.219467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327484, 33.081467, 36.455219>,  <46.388779, 33.124580, 36.848137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.327484, 33.081467, 36.455219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063784, 0.993040, -0.099013,
		0.986129, 0.047482, -0.159045,
		-0.153237, -0.107784, -0.982294,
		46.281513, 33.049133, 36.160530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875355, 33.546139, 36.485504>,  <46.388779, 33.124580, 36.848137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875355, 33.546139, 36.485504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587650, 33.488045, 36.213749>,  <46.415028, 33.453186, 36.050697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587650, 33.488045, 36.213749>,  <46.875355, 33.546139, 36.485504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587650, 33.488045, 36.213749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021965, 0.972661, -0.231189,
		0.694388, -0.181209, -0.696411,
		-0.719265, -0.145239, -0.679385,
		46.371872, 33.444473, 36.009933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132042, 33.739365, 35.749168>,  <46.875355, 33.546139, 36.485504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132042, 33.739365, 35.749168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735390, 33.756424, 35.797920>,  <46.497398, 33.766659, 35.827171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735390, 33.756424, 35.797920>,  <47.132042, 33.739365, 35.749168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735390, 33.756424, 35.797920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014182, 0.974146, -0.225474,
		-0.128345, -0.221858, -0.966595,
		-0.991628, 0.042647, 0.121880,
		46.437901, 33.769218, 35.834484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867317, 33.923157, 35.137344>,  <47.132042, 33.739365, 35.749168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867317, 33.923157, 35.137344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627457, 34.020210, 35.442379>,  <46.483540, 34.078442, 35.625401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627457, 34.020210, 35.442379>,  <46.867317, 33.923157, 35.137344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.627457, 34.020210, 35.442379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194564, 0.968538, -0.155171,
		-0.776249, 0.055324, -0.627994,
		-0.599652, 0.242636, 0.762591,
		46.447559, 34.093002, 35.671158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.613449, 34.468925, 34.893444>,  <46.867317, 33.923157, 35.137344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.613449, 34.468925, 34.893444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565014, 34.484161, 35.290207>,  <46.535954, 34.493301, 35.528267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565014, 34.484161, 35.290207>,  <46.613449, 34.468925, 34.893444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565014, 34.484161, 35.290207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232609, 0.972529, -0.008952,
		-0.965004, 0.229643, -0.126618,
		-0.121084, 0.038091, 0.991911,
		46.528690, 34.495590, 35.587780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258106, 34.837643, 35.064224>,  <46.613449, 34.468925, 34.893444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258106, 34.837643, 35.064224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604843, 35.035465, 35.089485>,  <47.812885, 35.154160, 35.104641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604843, 35.035465, 35.089485>,  <47.258106, 34.837643, 35.064224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.604843, 35.035465, 35.089485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285659, 0.388850, 0.875897,
		0.408635, -0.777303, 0.478349,
		0.866843, 0.494567, 0.063146,
		47.864899, 35.183834, 35.108429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.946941, 40.924149, 37.796654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561001, 40.965813, 37.893162>,  <35.329437, 40.990810, 37.951065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561001, 40.965813, 37.893162>,  <35.946941, 40.924149, 37.796654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561001, 40.965813, 37.893162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175034, -0.939529, -0.294362,
		0.196016, -0.326246, 0.924738,
		-0.964853, 0.104161, 0.241267,
		35.271545, 40.997063, 37.965542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790142, 40.250443, 38.081306>,  <35.946941, 40.924149, 37.796654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790142, 40.250443, 38.081306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435463, 40.425678, 38.022194>,  <35.222656, 40.530819, 37.986725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435463, 40.425678, 38.022194>,  <35.790142, 40.250443, 38.081306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435463, 40.425678, 38.022194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375717, -0.869038, -0.321885,
		-0.269441, -0.229893, 0.935174,
		-0.886701, 0.438090, -0.147780,
		35.169453, 40.557106, 37.977859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344261, 39.714661, 38.287155>,  <35.790142, 40.250443, 38.081306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344261, 39.714661, 38.287155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121471, 39.958900, 38.061962>,  <34.987797, 40.105446, 37.926846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.121471, 39.958900, 38.061962>,  <35.344261, 39.714661, 38.287155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121471, 39.958900, 38.061962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510299, -0.786410, -0.348072,
		-0.655264, 0.093419, 0.749601,
		-0.556977, 0.610600, -0.562978,
		34.954380, 40.142082, 37.893070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650150, 39.538830, 38.437263>,  <35.344261, 39.714661, 38.287155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650150, 39.538830, 38.437263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649040, 39.722149, 38.081745>,  <34.648373, 39.832142, 37.868435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649040, 39.722149, 38.081745>,  <34.650150, 39.538830, 38.437263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649040, 39.722149, 38.081745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402270, -0.814224, -0.418589,
		-0.915517, 0.356374, 0.186618,
		-0.002775, 0.458297, -0.888795,
		34.648209, 39.859638, 37.815105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099686, 39.202282, 38.180614>,  <34.650150, 39.538830, 38.437263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099686, 39.202282, 38.180614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.315033, 39.379150, 37.893661>,  <34.444241, 39.485271, 37.721489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.315033, 39.379150, 37.893661>,  <34.099686, 39.202282, 38.180614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315033, 39.379150, 37.893661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149207, -0.787821, -0.597558,
		-0.829395, 0.428746, -0.358163,
		0.538369, 0.442171, -0.717387,
		34.476543, 39.511803, 37.678444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750114, 39.100929, 37.592777>,  <34.099686, 39.202282, 38.180614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750114, 39.100929, 37.592777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.128586, 39.154331, 37.474854>,  <34.355671, 39.186371, 37.404099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.128586, 39.154331, 37.474854>,  <33.750114, 39.100929, 37.592777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128586, 39.154331, 37.474854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045683, -0.846734, -0.530052,
		-0.320392, 0.514994, -0.795066,
		0.946183, 0.133503, -0.294813,
		34.412441, 39.194382, 37.386410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761494, 38.831120, 36.871521>,  <33.750114, 39.100929, 37.592777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761494, 38.831120, 36.871521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143604, 38.830982, 36.989807>,  <34.372871, 38.830898, 37.060780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143604, 38.830982, 36.989807>,  <33.761494, 38.831120, 36.871521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143604, 38.830982, 36.989807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155225, -0.850570, -0.502429,
		0.251701, 0.525861, -0.812476,
		0.955276, -0.000345, 0.295716,
		34.430187, 38.830879, 37.078522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029114, 38.582001, 36.305710>,  <33.761494, 38.831120, 36.871521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029114, 38.582001, 36.305710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306938, 38.526863, 36.588150>,  <34.473633, 38.493782, 36.757614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306938, 38.526863, 36.588150>,  <34.029114, 38.582001, 36.305710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306938, 38.526863, 36.588150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255666, -0.870114, -0.421351,
		0.672471, 0.473182, -0.569107,
		0.694563, -0.137845, 0.706102,
		34.515308, 38.485508, 36.799980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730179, 38.381744, 35.978188>,  <34.029114, 38.582001, 36.305710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730179, 38.381744, 35.978188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.769890, 38.235123, 36.348221>,  <34.793716, 38.147148, 36.570240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.769890, 38.235123, 36.348221>,  <34.730179, 38.381744, 35.978188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769890, 38.235123, 36.348221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379418, -0.845496, -0.375737,
		0.919883, 0.388297, 0.055135,
		0.099281, -0.366554, 0.925084,
		34.799675, 38.125156, 36.625748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301571, 38.021339, 35.952629>,  <34.730179, 38.381744, 35.978188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301571, 38.021339, 35.952629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174923, 37.866108, 36.298840>,  <35.098934, 37.772968, 36.506565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.174923, 37.866108, 36.298840>,  <35.301571, 38.021339, 35.952629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174923, 37.866108, 36.298840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425710, -0.873555, -0.235950,
		0.847656, 0.293757, 0.441799,
		-0.316624, -0.388083, 0.865529,
		35.079937, 37.749683, 36.558498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856754, 37.724609, 36.306080>,  <35.301571, 38.021339, 35.952629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856754, 37.724609, 36.306080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529690, 37.534985, 36.436741>,  <35.333450, 37.421211, 36.515137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529690, 37.534985, 36.436741>,  <35.856754, 37.724609, 36.306080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529690, 37.534985, 36.436741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390792, -0.873685, -0.289751,
		0.422750, -0.109265, 0.899635,
		-0.817658, -0.474062, 0.326650,
		35.284393, 37.392765, 36.534737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031216, 37.248447, 36.920704>,  <35.856754, 37.724609, 36.306080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031216, 37.248447, 36.920704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.683071, 37.113865, 36.776890>,  <35.474182, 37.033115, 36.690601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.683071, 37.113865, 36.776890>,  <36.031216, 37.248447, 36.920704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683071, 37.113865, 36.776890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424800, -0.882306, -0.202687,
		-0.249024, -0.329141, 0.910853,
		-0.870363, -0.336456, -0.359534,
		35.421963, 37.012928, 36.669029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037113, 36.472805, 37.008564>,  <36.031216, 37.248447, 36.920704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037113, 36.472805, 37.008564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713520, 36.505516, 36.775719>,  <35.519363, 36.525143, 36.636009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713520, 36.505516, 36.775719>,  <36.037113, 36.472805, 37.008564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713520, 36.505516, 36.775719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168177, -0.916683, -0.362503,
		-0.563262, -0.391157, 0.727827,
		-0.808982, 0.081781, -0.582116,
		35.470825, 36.530048, 36.601086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725548, 35.883926, 37.048157>,  <36.037113, 36.472805, 37.008564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725548, 35.883926, 37.048157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610809, 36.032650, 36.695004>,  <35.541965, 36.121883, 36.483112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610809, 36.032650, 36.695004>,  <35.725548, 35.883926, 37.048157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610809, 36.032650, 36.695004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248223, -0.861289, -0.443358,
		-0.925260, -0.346326, 0.154763,
		-0.286842, 0.371805, -0.882883,
		35.524757, 36.144192, 36.430138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467999, 35.365105, 36.683178>,  <35.725548, 35.883926, 37.048157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467999, 35.365105, 36.683178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565567, 35.617622, 36.388702>,  <35.624107, 35.769131, 36.212017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565567, 35.617622, 36.388702>,  <35.467999, 35.365105, 36.683178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565567, 35.617622, 36.388702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484663, -0.736873, -0.471296,
		-0.840002, -0.241842, -0.485705,
		0.243924, 0.631292, -0.736187,
		35.638744, 35.807011, 36.167847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283348, 35.061752, 36.071747>,  <35.467999, 35.365105, 36.683178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283348, 35.061752, 36.071747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563942, 35.332535, 35.982624>,  <35.732300, 35.495007, 35.929150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563942, 35.332535, 35.982624>,  <35.283348, 35.061752, 36.071747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563942, 35.332535, 35.982624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484698, -0.682367, -0.547215,
		-0.522480, 0.275867, -0.806791,
		0.701486, 0.676959, -0.222811,
		35.774387, 35.535622, 35.915779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374680, 34.988899, 35.277946>,  <35.283348, 35.061752, 36.071747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374680, 34.988899, 35.277946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698246, 35.177937, 35.417839>,  <35.892384, 35.291359, 35.501774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698246, 35.177937, 35.417839>,  <35.374680, 34.988899, 35.277946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698246, 35.177937, 35.417839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576780, -0.522594, -0.627870,
		-0.113960, 0.709611, -0.695317,
		0.808911, 0.472597, 0.349734,
		35.940918, 35.319717, 35.522758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895111, 34.864880, 34.765537>,  <35.374680, 34.988899, 35.277946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895111, 34.864880, 34.765537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.149563, 35.009464, 35.038208>,  <36.302235, 35.096214, 35.201813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.149563, 35.009464, 35.038208>,  <35.895111, 34.864880, 34.765537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149563, 35.009464, 35.038208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740621, -0.533813, -0.408074,
		0.216385, 0.764453, -0.607280,
		0.636127, 0.361464, 0.681679,
		36.340401, 35.117905, 35.242710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535259, 35.095604, 34.402649>,  <35.895111, 34.864880, 34.765537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535259, 35.095604, 34.402649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617290, 35.008247, 34.784275>,  <36.666508, 34.955833, 35.013252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617290, 35.008247, 34.784275>,  <36.535259, 35.095604, 34.402649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617290, 35.008247, 34.784275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790592, -0.537684, -0.293018,
		0.576980, 0.814371, 0.062392,
		0.205078, -0.218392, 0.954069,
		36.678814, 34.942730, 35.070496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347977, 35.101612, 34.438744>,  <36.535259, 35.095604, 34.402649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347977, 35.101612, 34.438744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203117, 34.891041, 34.746437>,  <37.116203, 34.764698, 34.931053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203117, 34.891041, 34.746437>,  <37.347977, 35.101612, 34.438744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203117, 34.891041, 34.746437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573764, -0.776278, -0.261126,
		0.734605, 0.346793, 0.583173,
		-0.362148, -0.526428, 0.769235,
		37.094475, 34.733112, 34.977207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913555, 34.691681, 34.552258>,  <37.347977, 35.101612, 34.438744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913555, 34.691681, 34.552258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609516, 34.521042, 34.748325>,  <37.427094, 34.418659, 34.865967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.609516, 34.521042, 34.748325>,  <37.913555, 34.691681, 34.552258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609516, 34.521042, 34.748325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350715, -0.904347, -0.243218,
		0.547039, -0.012960, 0.837007,
		-0.760097, -0.426601, 0.490168,
		37.381489, 34.393063, 34.895374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201252, 34.201607, 35.034294>,  <37.913555, 34.691681, 34.552258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201252, 34.201607, 35.034294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.836578, 34.046108, 34.981056>,  <37.617775, 33.952808, 34.949112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.836578, 34.046108, 34.981056>,  <38.201252, 34.201607, 35.034294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836578, 34.046108, 34.981056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401964, -0.910950, -0.092712,
		-0.085203, -0.138024, 0.986757,
		-0.911683, -0.388742, -0.133097,
		37.563072, 33.929485, 34.941128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845062, 34.289223, 35.586536>,  <38.201252, 34.201607, 35.034294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845062, 34.289223, 35.586536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225086, 34.262970, 35.464497>,  <39.453098, 34.247219, 35.391273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225086, 34.262970, 35.464497>,  <38.845062, 34.289223, 35.586536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225086, 34.262970, 35.464497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093385, 0.992628, 0.077255,
		0.297780, -0.101888, 0.949182,
		0.950056, -0.065635, -0.305100,
		39.510101, 34.243279, 35.372967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345078, 34.686588, 36.050293>,  <38.845062, 34.289223, 35.586536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345078, 34.686588, 36.050293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497784, 34.638432, 35.683739>,  <39.589409, 34.609535, 35.463806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497784, 34.638432, 35.683739>,  <39.345078, 34.686588, 36.050293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497784, 34.638432, 35.683739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063622, 0.992551, -0.103898,
		0.922066, -0.018637, 0.386585,
		0.381769, -0.120396, -0.916383,
		39.612316, 34.602314, 35.408825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009113, 35.040447, 36.049080>,  <39.345078, 34.686588, 36.050293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009113, 35.040447, 36.049080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833157, 35.049534, 35.689976>,  <39.727581, 35.054985, 35.474514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833157, 35.049534, 35.689976>,  <40.009113, 35.040447, 36.049080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833157, 35.049534, 35.689976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024334, 0.999615, 0.013367,
		0.897719, -0.015966, -0.440279,
		-0.439896, 0.022713, -0.897761,
		39.701187, 35.056347, 35.420647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512081, 35.391872, 35.645218>,  <40.009113, 35.040447, 36.049080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512081, 35.391872, 35.645218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.170826, 35.433727, 35.440784>,  <39.966072, 35.458839, 35.318123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.170826, 35.433727, 35.440784>,  <40.512081, 35.391872, 35.645218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170826, 35.433727, 35.440784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099377, 0.994336, 0.037683,
		0.512131, -0.018641, -0.858705,
		-0.853139, 0.104634, -0.511082,
		39.914883, 35.465118, 35.287460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616131, 35.787270, 35.116093>,  <40.512081, 35.391872, 35.645218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616131, 35.787270, 35.116093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222088, 35.829945, 35.170040>,  <39.985664, 35.855549, 35.202408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222088, 35.829945, 35.170040>,  <40.616131, 35.787270, 35.116093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222088, 35.829945, 35.170040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091783, 0.989431, -0.112257,
		-0.145423, -0.098206, -0.984483,
		-0.985103, 0.106684, 0.134872,
		39.926556, 35.861950, 35.210503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446621, 36.384209, 34.641197>,  <40.616131, 35.787270, 35.116093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446621, 36.384209, 34.641197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137043, 36.345505, 34.891521>,  <39.951294, 36.322285, 35.041718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137043, 36.345505, 34.891521>,  <40.446621, 36.384209, 34.641197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137043, 36.345505, 34.891521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229506, 0.963927, -0.134800,
		-0.590198, -0.247956, -0.768235,
		-0.773947, -0.096756, 0.625815,
		39.904858, 36.316479, 35.079266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889668, 36.890907, 34.281391>,  <40.446621, 36.384209, 34.641197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889668, 36.890907, 34.281391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.754314, 36.825272, 34.652027>,  <39.673103, 36.785889, 34.874409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.754314, 36.825272, 34.652027>,  <39.889668, 36.890907, 34.281391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754314, 36.825272, 34.652027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096397, 0.985544, 0.139325,
		-0.936059, -0.042176, -0.349306,
		-0.338380, -0.164088, 0.926593,
		39.652802, 36.776047, 34.930004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228252, 37.354023, 34.366352>,  <39.889668, 36.890907, 34.281391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228252, 37.354023, 34.366352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331169, 37.276505, 34.745033>,  <39.392921, 37.229992, 34.972240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331169, 37.276505, 34.745033>,  <39.228252, 37.354023, 34.366352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331169, 37.276505, 34.745033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365426, 0.887421, 0.280976,
		-0.894574, -0.418243, 0.157512,
		0.257296, -0.193795, 0.946701,
		39.408360, 37.218365, 35.029045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597393, 37.530430, 34.801315>,  <39.228252, 37.354023, 34.366352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597393, 37.530430, 34.801315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915779, 37.543537, 35.043098>,  <39.106812, 37.551403, 35.188168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915779, 37.543537, 35.043098>,  <38.597393, 37.530430, 34.801315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915779, 37.543537, 35.043098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277437, 0.907234, 0.316157,
		-0.538023, -0.419349, 0.731217,
		0.795964, 0.032767, 0.604456,
		39.154568, 37.553368, 35.224434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363781, 37.832836, 35.480652>,  <38.597393, 37.530430, 34.801315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363781, 37.832836, 35.480652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758934, 37.857239, 35.537731>,  <38.996025, 37.871880, 35.571980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758934, 37.857239, 35.537731>,  <38.363781, 37.832836, 35.480652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758934, 37.857239, 35.537731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101570, 0.949372, 0.297282,
		-0.117338, -0.308174, 0.944066,
		0.987885, 0.061006, 0.142699,
		39.055298, 37.875542, 35.580540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402771, 37.975868, 36.183685>,  <38.363781, 37.832836, 35.480652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402771, 37.975868, 36.183685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753658, 38.056377, 36.009342>,  <38.964191, 38.104683, 35.904736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.753658, 38.056377, 36.009342>,  <38.402771, 37.975868, 36.183685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753658, 38.056377, 36.009342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005994, 0.903210, 0.429158,
		0.480045, -0.379080, 0.791110,
		0.877223, 0.201273, -0.435854,
		39.016827, 38.116760, 35.878586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710007, 38.158867, 36.753185>,  <38.402771, 37.975868, 36.183685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710007, 38.158867, 36.753185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887695, 38.297783, 36.422840>,  <38.994308, 38.381134, 36.224632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887695, 38.297783, 36.422840>,  <38.710007, 38.158867, 36.753185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887695, 38.297783, 36.422840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050577, 0.910621, 0.410135,
		0.894487, -0.223962, 0.386955,
		0.444224, 0.347289, -0.825866,
		39.020962, 38.401970, 36.175079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338333, 38.438999, 36.968964>,  <38.710007, 38.158867, 36.753185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338333, 38.438999, 36.968964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220142, 38.607960, 36.626205>,  <39.149227, 38.709335, 36.420551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220142, 38.607960, 36.626205>,  <39.338333, 38.438999, 36.968964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220142, 38.607960, 36.626205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037426, 0.891135, 0.452192,
		0.954615, 0.165684, -0.247504,
		-0.295480, 0.422406, -0.856892,
		39.131496, 38.734680, 36.369137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518280, 39.151932, 37.145504>,  <39.338333, 38.438999, 36.968964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518280, 39.151932, 37.145504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.320332, 39.160877, 36.798031>,  <39.201565, 39.166245, 36.589546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.320332, 39.160877, 36.798031>,  <39.518280, 39.151932, 37.145504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320332, 39.160877, 36.798031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263687, 0.948668, 0.174640,
		0.827995, 0.315483, -0.463568,
		-0.494868, 0.022364, -0.868680,
		39.171871, 39.167587, 36.537426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744930, 39.826614, 36.868504>,  <39.518280, 39.151932, 37.145504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744930, 39.826614, 36.868504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.397495, 39.677616, 36.737782>,  <39.189034, 39.588215, 36.659348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.397495, 39.677616, 36.737782>,  <39.744930, 39.826614, 36.868504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397495, 39.677616, 36.737782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494103, 0.701186, 0.514004,
		0.037685, 0.607933, -0.793094,
		-0.868586, -0.372500, -0.326806,
		39.136921, 39.565865, 36.639740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383934, 40.356953, 36.459095>,  <39.744930, 39.826614, 36.868504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383934, 40.356953, 36.459095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109982, 40.090214, 36.576572>,  <38.945610, 39.930172, 36.647060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109982, 40.090214, 36.576572>,  <39.383934, 40.356953, 36.459095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109982, 40.090214, 36.576572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509678, 0.726471, 0.460942,
		-0.520739, 0.165999, -0.837422,
		-0.684879, -0.666846, 0.293695,
		38.904518, 39.890160, 36.664680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759163, 40.731579, 36.354965>,  <39.383934, 40.356953, 36.459095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759163, 40.731579, 36.354965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.664707, 40.416008, 36.581890>,  <38.608036, 40.226665, 36.718044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.664707, 40.416008, 36.581890>,  <38.759163, 40.731579, 36.354965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664707, 40.416008, 36.581890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511414, 0.597322, 0.617788,
		-0.826254, -0.144247, -0.544516,
		-0.236137, -0.788923, 0.567309,
		38.593864, 40.179333, 36.752083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077721, 40.869766, 36.392181>,  <38.759163, 40.731579, 36.354965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077721, 40.869766, 36.392181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158798, 40.610897, 36.686142>,  <38.207447, 40.455574, 36.862518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158798, 40.610897, 36.686142>,  <38.077721, 40.869766, 36.392181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158798, 40.610897, 36.686142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611947, 0.502177, 0.611014,
		-0.764483, -0.573573, -0.294245,
		0.202698, -0.647172, 0.734903,
		38.219608, 40.416744, 36.906612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.419582, 40.680534, 36.893017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746849, 40.589561, 37.104252>,  <37.943211, 40.534977, 37.230991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746849, 40.589561, 37.104252>,  <37.419582, 40.680534, 36.893017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746849, 40.589561, 37.104252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313153, 0.594015, 0.741001,
		-0.482217, -0.771636, 0.414784,
		0.818170, -0.227432, 0.528084,
		37.992302, 40.521332, 37.262676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238796, 40.845566, 37.544579>,  <37.419582, 40.680534, 36.893017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238796, 40.845566, 37.544579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635769, 40.816643, 37.584274>,  <37.873951, 40.799290, 37.608089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635769, 40.816643, 37.584274>,  <37.238796, 40.845566, 37.544579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635769, 40.816643, 37.584274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041194, 0.565266, 0.823880,
		-0.115671, -0.821733, 0.558009,
		0.992433, -0.072313, 0.099236,
		37.933498, 40.794949, 37.614044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387150, 40.651703, 38.240818>,  <37.238796, 40.845566, 37.544579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387150, 40.651703, 38.240818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720413, 40.825844, 38.104404>,  <37.920372, 40.930328, 38.022556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720413, 40.825844, 38.104404>,  <37.387150, 40.651703, 38.240818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720413, 40.825844, 38.104404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015710, 0.597790, 0.801499,
		0.552805, -0.673136, 0.491217,
		0.833162, 0.435356, -0.341037,
		37.970360, 40.956451, 38.002094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603569, 40.802776, 38.824894>,  <37.387150, 40.651703, 38.240818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603569, 40.802776, 38.824894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.797153, 41.023689, 38.553375>,  <37.913303, 41.156239, 38.390465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.797153, 41.023689, 38.553375>,  <37.603569, 40.802776, 38.824894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797153, 41.023689, 38.553375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019317, 0.768757, 0.639249,
		0.874879, -0.322481, 0.361376,
		0.483957, 0.552285, -0.678799,
		37.942341, 41.189373, 38.349735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005520, 41.328781, 39.198093>,  <37.603569, 40.802776, 38.824894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005520, 41.328781, 39.198093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042038, 41.496521, 38.836803>,  <38.063950, 41.597164, 38.620029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042038, 41.496521, 38.836803>,  <38.005520, 41.328781, 39.198093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042038, 41.496521, 38.836803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128041, 0.894538, 0.428260,
		0.987558, -0.154745, 0.027968,
		0.091290, 0.419351, -0.903223,
		38.069424, 41.622326, 38.565838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608906, 41.870426, 39.222939>,  <38.005520, 41.328781, 39.198093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608906, 41.870426, 39.222939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332077, 41.962177, 38.949173>,  <38.165981, 42.017227, 38.784912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332077, 41.962177, 38.949173>,  <38.608906, 41.870426, 39.222939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332077, 41.962177, 38.949173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104007, 0.906585, 0.409007,
		0.714297, 0.354245, -0.603564,
		-0.692071, 0.229378, -0.684415,
		38.124454, 42.030991, 38.743847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674446, 42.531754, 39.191227>,  <38.608906, 41.870426, 39.222939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674446, 42.531754, 39.191227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346207, 42.509182, 38.963741>,  <38.149265, 42.495640, 38.827251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346207, 42.509182, 38.963741>,  <38.674446, 42.531754, 39.191227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346207, 42.509182, 38.963741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217345, 0.951156, 0.219235,
		0.528566, 0.303511, -0.792779,
		-0.820597, -0.056426, -0.568715,
		38.100029, 42.492252, 38.793125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561253, 43.176563, 38.773972>,  <38.674446, 42.531754, 39.191227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561253, 43.176563, 38.773972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.195881, 43.013882, 38.780155>,  <37.976658, 42.916275, 38.783867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.195881, 43.013882, 38.780155>,  <38.561253, 43.176563, 38.773972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195881, 43.013882, 38.780155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395077, 0.895166, 0.206378,
		-0.097772, 0.182405, -0.978350,
		-0.913431, -0.406701, 0.015458,
		37.921852, 42.891872, 38.784794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149384, 43.709202, 38.448357>,  <38.561253, 43.176563, 38.773972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149384, 43.709202, 38.448357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883053, 43.491684, 38.652699>,  <37.723255, 43.361176, 38.775303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883053, 43.491684, 38.652699>,  <38.149384, 43.709202, 38.448357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883053, 43.491684, 38.652699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531994, 0.826076, 0.185959,
		-0.523126, -0.147955, -0.839315,
		-0.665824, -0.543791, 0.510853,
		37.683304, 43.328548, 38.805954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476818, 43.999424, 38.311924>,  <38.149384, 43.709202, 38.448357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476818, 43.999424, 38.311924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421066, 43.767452, 38.632984>,  <37.387615, 43.628269, 38.825623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421066, 43.767452, 38.632984>,  <37.476818, 43.999424, 38.311924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421066, 43.767452, 38.632984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658831, 0.659440, 0.362050,
		-0.739266, -0.478351, -0.473989,
		-0.139380, -0.579930, 0.802654,
		37.379253, 43.593472, 38.873779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819756, 44.089512, 38.511662>,  <37.476818, 43.999424, 38.311924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819756, 44.089512, 38.511662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001732, 43.960190, 38.843567>,  <37.110920, 43.882599, 39.042709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001732, 43.960190, 38.843567>,  <36.819756, 44.089512, 38.511662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001732, 43.960190, 38.843567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221391, 0.861455, 0.457036,
		-0.862562, -0.391627, 0.320337,
		0.454943, -0.323302, 0.829761,
		37.138214, 43.863197, 39.092495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405235, 44.354000, 39.100349>,  <36.819756, 44.089512, 38.511662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405235, 44.354000, 39.100349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770210, 44.308853, 39.257690>,  <36.989193, 44.281765, 39.352097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770210, 44.308853, 39.257690>,  <36.405235, 44.354000, 39.100349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770210, 44.308853, 39.257690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097833, 0.873177, 0.477484,
		-0.397358, -0.474155, 0.785674,
		0.912434, -0.112867, 0.393352,
		37.043941, 44.274994, 39.375694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310219, 44.448044, 39.785484>,  <36.405235, 44.354000, 39.100349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310219, 44.448044, 39.785484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706150, 44.477554, 39.736813>,  <36.943707, 44.495262, 39.707611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706150, 44.477554, 39.736813>,  <36.310219, 44.448044, 39.785484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706150, 44.477554, 39.736813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000984, 0.851514, 0.524331,
		0.142296, -0.519115, 0.842776,
		0.989823, 0.073781, -0.121678,
		37.003098, 44.499687, 39.700310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624710, 44.459019, 40.443371>,  <36.310219, 44.448044, 39.785484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624710, 44.459019, 40.443371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873508, 44.657467, 40.201054>,  <37.022789, 44.776535, 40.055664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873508, 44.657467, 40.201054>,  <36.624710, 44.459019, 40.443371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873508, 44.657467, 40.201054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173812, 0.841843, 0.510970,
		0.763484, -0.212528, 0.609855,
		0.621998, 0.496118, -0.605794,
		37.060108, 44.806301, 40.019314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050476, 44.936966, 40.947441>,  <36.624710, 44.459019, 40.443371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050476, 44.936966, 40.947441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127819, 45.072945, 40.579300>,  <37.174225, 45.154533, 40.358418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.127819, 45.072945, 40.579300>,  <37.050476, 44.936966, 40.947441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127819, 45.072945, 40.579300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034011, 0.935168, 0.352569,
		0.980538, -0.099474, 0.169261,
		0.193359, 0.339950, -0.920351,
		37.185825, 45.174931, 40.303196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660118, 45.393486, 41.012211>,  <37.050476, 44.936966, 40.947441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660118, 45.393486, 41.012211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468525, 45.509541, 40.680813>,  <37.353569, 45.579174, 40.481976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468525, 45.509541, 40.680813>,  <37.660118, 45.393486, 41.012211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468525, 45.509541, 40.680813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037555, 0.936164, 0.349552,
		0.877022, 0.198542, -0.437508,
		-0.478980, 0.290134, -0.828493,
		37.324833, 45.596581, 40.432266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924080, 46.053726, 40.859695>,  <37.660118, 45.393486, 41.012211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924080, 46.053726, 40.859695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578159, 46.049519, 40.658894>,  <37.370605, 46.046993, 40.538414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578159, 46.049519, 40.658894>,  <37.924080, 46.053726, 40.859695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578159, 46.049519, 40.658894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275538, 0.845740, 0.456950,
		0.419757, 0.533492, -0.734296,
		-0.864802, -0.010519, -0.502002,
		37.318718, 46.046364, 40.508293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838196, 46.729992, 40.745644>,  <37.924080, 46.053726, 40.859695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838196, 46.729992, 40.745644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480301, 46.562603, 40.683258>,  <37.265564, 46.462170, 40.645828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480301, 46.562603, 40.683258>,  <37.838196, 46.729992, 40.745644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480301, 46.562603, 40.683258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430876, 0.717091, 0.547838,
		-0.117414, 0.557374, -0.821918,
		-0.894740, -0.418469, -0.155963,
		37.211880, 46.437061, 40.636471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402298, 47.326351, 40.604042>,  <37.838196, 46.729992, 40.745644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402298, 47.326351, 40.604042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162624, 47.018734, 40.693077>,  <37.018822, 46.834164, 40.746498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162624, 47.018734, 40.693077>,  <37.402298, 47.326351, 40.604042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162624, 47.018734, 40.693077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537366, 0.592407, 0.600243,
		-0.593479, 0.240043, -0.768220,
		-0.599183, -0.769047, 0.222590,
		36.982868, 46.788021, 40.759853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753475, 47.562794, 40.565834>,  <37.402298, 47.326351, 40.604042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753475, 47.562794, 40.565834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719704, 47.241714, 40.801987>,  <36.699440, 47.049068, 40.943676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719704, 47.241714, 40.801987>,  <36.753475, 47.562794, 40.565834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719704, 47.241714, 40.801987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405591, 0.568873, 0.715457,
		-0.910147, -0.179045, -0.373598,
		-0.084430, -0.802699, 0.590377,
		36.694374, 47.000904, 40.979099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190983, 47.611179, 40.860859>,  <36.753475, 47.562794, 40.565834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190983, 47.611179, 40.860859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366707, 47.355732, 41.113579>,  <36.472141, 47.202461, 41.265209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366707, 47.355732, 41.113579>,  <36.190983, 47.611179, 40.860859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366707, 47.355732, 41.113579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337616, 0.534368, 0.774897,
		-0.832480, -0.553725, 0.019143,
		0.439310, -0.638623, 0.631797,
		36.498501, 47.164146, 41.303120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661922, 47.470768, 41.360497>,  <36.190983, 47.611179, 40.860859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661922, 47.470768, 41.360497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.024467, 47.367294, 41.494114>,  <36.241993, 47.305210, 41.574284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.024467, 47.367294, 41.494114>,  <35.661922, 47.470768, 41.360497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024467, 47.367294, 41.494114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110924, 0.617208, 0.778941,
		-0.407678, -0.743058, 0.530721,
		0.906364, -0.258688, 0.334045,
		36.296375, 47.289688, 41.594326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704082, 47.204216, 41.989578>,  <35.661922, 47.470768, 41.360497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704082, 47.204216, 41.989578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067699, 47.365685, 41.948219>,  <36.285870, 47.462566, 41.923405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067699, 47.365685, 41.948219>,  <35.704082, 47.204216, 41.989578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067699, 47.365685, 41.948219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100814, 0.453802, 0.885381,
		0.404322, -0.794427, 0.453221,
		0.909044, 0.403670, -0.103393,
		36.340412, 47.486786, 41.917202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703266, 47.745052, 42.544170>,  <35.704082, 47.204216, 41.989578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703266, 47.745052, 42.544170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436840, 47.658234, 42.829620>,  <35.276985, 47.606144, 43.000889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436840, 47.658234, 42.829620>,  <35.703266, 47.745052, 42.544170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436840, 47.658234, 42.829620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174157, -0.885030, -0.431730,
		0.725281, -0.411841, 0.551684,
		-0.666061, -0.217046, 0.713620,
		35.237022, 47.593121, 43.043705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872623, 47.165264, 42.983097>,  <35.703266, 47.745052, 42.544170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872623, 47.165264, 42.983097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478764, 47.222878, 42.943653>,  <35.242447, 47.257446, 42.919987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478764, 47.222878, 42.943653>,  <35.872623, 47.165264, 42.983097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478764, 47.222878, 42.943653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100032, -0.928566, -0.357433,
		-0.143044, -0.342082, 0.928719,
		-0.984648, 0.144030, -0.098607,
		35.183369, 47.266087, 42.914070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628273, 46.541664, 43.082062>,  <35.872623, 47.165264, 42.983097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628273, 46.541664, 43.082062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298710, 46.716019, 42.937183>,  <35.100971, 46.820629, 42.850258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298710, 46.716019, 42.937183>,  <35.628273, 46.541664, 43.082062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298710, 46.716019, 42.937183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215947, -0.832346, -0.510458,
		-0.523969, -0.342355, 0.779903,
		-0.823907, 0.435882, -0.362193,
		35.051537, 46.846783, 42.828526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996250, 46.123741, 43.292171>,  <35.628273, 46.541664, 43.082062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996250, 46.123741, 43.292171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906406, 46.336826, 42.965794>,  <34.852501, 46.464680, 42.769966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906406, 46.336826, 42.965794>,  <34.996250, 46.123741, 43.292171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906406, 46.336826, 42.965794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282717, -0.836948, -0.468604,
		-0.932535, 0.125427, 0.338596,
		-0.224612, 0.532716, -0.815943,
		34.839024, 46.496643, 42.721012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427891, 45.809605, 43.089287>,  <34.996250, 46.123741, 43.292171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427891, 45.809605, 43.089287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567856, 46.014767, 42.775730>,  <34.651833, 46.137863, 42.587597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.567856, 46.014767, 42.775730>,  <34.427891, 45.809605, 43.089287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567856, 46.014767, 42.775730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007544, -0.838307, -0.545146,
		-0.936753, 0.184839, -0.297201,
		0.349910, 0.512909, -0.783892,
		34.672829, 46.168640, 42.540562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031704, 45.546356, 42.546585>,  <34.427891, 45.809605, 43.089287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031704, 45.546356, 42.546585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341496, 45.722839, 42.365250>,  <34.527370, 45.828728, 42.256451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341496, 45.722839, 42.365250>,  <34.031704, 45.546356, 42.546585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341496, 45.722839, 42.365250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024232, -0.695412, -0.718202,
		-0.632131, 0.567220, -0.527893,
		0.774482, 0.441206, -0.453337,
		34.573841, 45.855202, 42.229248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814449, 45.640701, 41.802567>,  <34.031704, 45.546356, 42.546585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814449, 45.640701, 41.802567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213394, 45.633121, 41.830574>,  <34.452763, 45.628574, 41.847378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213394, 45.633121, 41.830574>,  <33.814449, 45.640701, 41.802567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213394, 45.633121, 41.830574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035610, -0.713100, -0.700157,
		0.063197, 0.700806, -0.710547,
		0.997366, -0.018945, 0.070021,
		34.512604, 45.627438, 41.851582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149456, 45.646748, 41.117798>,  <33.814449, 45.640701, 41.802567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149456, 45.646748, 41.117798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.438210, 45.492050, 41.347343>,  <34.611462, 45.399231, 41.485069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.438210, 45.492050, 41.347343>,  <34.149456, 45.646748, 41.117798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438210, 45.492050, 41.347343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183436, -0.692658, -0.697550,
		0.667264, 0.608814, -0.429073,
		0.721879, -0.386742, 0.573865,
		34.654774, 45.376026, 41.519505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621731, 45.600300, 40.649834>,  <34.149456, 45.646748, 41.117798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621731, 45.600300, 40.649834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742867, 45.347561, 40.935226>,  <34.815548, 45.195915, 41.106461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742867, 45.347561, 40.935226>,  <34.621731, 45.600300, 40.649834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742867, 45.347561, 40.935226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273168, -0.659675, -0.700148,
		0.913053, 0.406934, -0.027176,
		0.302842, -0.631849, 0.713480,
		34.833717, 45.158005, 41.149269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193932, 45.237640, 40.322220>,  <34.621731, 45.600300, 40.649834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193932, 45.237640, 40.322220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089878, 45.013805, 40.636974>,  <35.027447, 44.879505, 40.825829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089878, 45.013805, 40.636974>,  <35.193932, 45.237640, 40.322220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089878, 45.013805, 40.636974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322529, -0.818492, -0.475444,
		0.910114, 0.130116, 0.393399,
		-0.260131, -0.559591, 0.786887,
		35.011837, 44.845928, 40.873039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786949, 44.799709, 40.566799>,  <35.193932, 45.237640, 40.322220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786949, 44.799709, 40.566799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.454517, 44.623440, 40.702511>,  <35.255058, 44.517677, 40.783939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.454517, 44.623440, 40.702511>,  <35.786949, 44.799709, 40.566799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454517, 44.623440, 40.702511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206754, -0.811133, -0.547098,
		0.516294, -0.384535, 0.765228,
		-0.831080, -0.440677, 0.339279,
		35.205193, 44.491238, 40.804295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015053, 44.169518, 40.822365>,  <35.786949, 44.799709, 40.566799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015053, 44.169518, 40.822365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631531, 44.125309, 40.717697>,  <35.401417, 44.098785, 40.654896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631531, 44.125309, 40.717697>,  <36.015053, 44.169518, 40.822365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631531, 44.125309, 40.717697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229846, -0.843135, -0.486101,
		-0.166897, -0.526222, 0.833808,
		-0.958810, -0.110519, -0.261666,
		35.343887, 44.092152, 40.639198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936226, 43.487041, 40.797428>,  <36.015053, 44.169518, 40.822365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936226, 43.487041, 40.797428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591183, 43.585072, 40.620415>,  <35.384155, 43.643890, 40.514206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591183, 43.585072, 40.620415>,  <35.936226, 43.487041, 40.797428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591183, 43.585072, 40.620415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104282, -0.769866, -0.629628,
		-0.495002, -0.589273, 0.638537,
		-0.862611, 0.245079, -0.442536,
		35.332401, 43.658596, 40.487656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566898, 42.820621, 40.762398>,  <35.936226, 43.487041, 40.797428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566898, 42.820621, 40.762398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418533, 43.076870, 40.493465>,  <35.329514, 43.230618, 40.332104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418533, 43.076870, 40.493465>,  <35.566898, 42.820621, 40.762398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418533, 43.076870, 40.493465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063629, -0.739806, -0.669804,
		-0.926485, -0.205660, 0.315167,
		-0.370914, 0.640617, -0.672333,
		35.307259, 43.269054, 40.291767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007065, 42.549580, 40.462849>,  <35.566898, 42.820621, 40.762398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007065, 42.549580, 40.462849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111507, 42.809921, 40.177692>,  <35.174175, 42.966125, 40.006599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111507, 42.809921, 40.177692>,  <35.007065, 42.549580, 40.462849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111507, 42.809921, 40.177692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192644, -0.688515, -0.699167,
		-0.945891, 0.319891, -0.054393,
		0.261108, 0.650858, -0.712886,
		35.189838, 43.005180, 39.963825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490627, 42.459091, 39.958652>,  <35.007065, 42.549580, 40.462849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490627, 42.459091, 39.958652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786888, 42.639820, 39.759739>,  <34.964645, 42.748257, 39.640392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786888, 42.639820, 39.759739>,  <34.490627, 42.459091, 39.958652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786888, 42.639820, 39.759739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119500, -0.639743, -0.759242,
		-0.661173, 0.621762, -0.419837,
		0.740655, 0.451820, -0.497281,
		35.009087, 42.775368, 39.610554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206547, 42.428581, 39.270744>,  <34.490627, 42.459091, 39.958652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206547, 42.428581, 39.270744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601078, 42.489330, 39.245182>,  <34.837799, 42.525780, 39.229843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601078, 42.489330, 39.245182>,  <34.206547, 42.428581, 39.270744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601078, 42.489330, 39.245182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034698, -0.570603, -0.820493,
		-0.161081, 0.807060, -0.568074,
		0.986331, 0.151877, -0.063910,
		34.896976, 42.534893, 39.226009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346264, 42.709152, 38.615112>,  <34.206547, 42.428581, 39.270744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346264, 42.709152, 38.615112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704548, 42.554146, 38.702328>,  <34.919518, 42.461143, 38.754658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704548, 42.554146, 38.702328>,  <34.346264, 42.709152, 38.615112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704548, 42.554146, 38.702328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033304, -0.547464, -0.836166,
		0.443395, 0.741699, -0.503274,
		0.895707, -0.387512, 0.218042,
		34.973259, 42.437893, 38.767738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705345, 42.668560, 37.955238>,  <34.346264, 42.709152, 38.615112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705345, 42.668560, 37.955238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890789, 42.423050, 38.210842>,  <35.002056, 42.275742, 38.364204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890789, 42.423050, 38.210842>,  <34.705345, 42.668560, 37.955238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890789, 42.423050, 38.210842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112287, -0.756088, -0.644765,
		0.878894, 0.227169, -0.419452,
		0.463613, -0.613780, 0.639013,
		35.029873, 42.238914, 38.402546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222767, 42.248413, 37.611732>,  <34.705345, 42.668560, 37.955238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222767, 42.248413, 37.611732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163322, 42.026852, 37.939415>,  <35.127655, 41.893913, 38.136024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163322, 42.026852, 37.939415>,  <35.222767, 42.248413, 37.611732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163322, 42.026852, 37.939415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177289, -0.829911, -0.528977,
		0.972874, 0.066625, 0.221536,
		-0.148612, -0.553904, 0.819210,
		35.118740, 41.860680, 38.185177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779469, 41.697174, 37.631878>,  <35.222767, 42.248413, 37.611732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779469, 41.697174, 37.631878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.488918, 41.550850, 37.864620>,  <35.314590, 41.463055, 38.004265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.488918, 41.550850, 37.864620>,  <35.779469, 41.697174, 37.631878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488918, 41.550850, 37.864620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011705, -0.839881, -0.542644,
		0.687201, -0.400973, 0.605785,
		-0.726373, -0.365815, 0.581860,
		35.271008, 41.441105, 38.039177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.860847, 26.020977, 39.718800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.466507, 25.962952, 39.685215>,  <45.229900, 25.928137, 39.665062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.466507, 25.962952, 39.685215>,  <45.860847, 26.020977, 39.718800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466507, 25.962952, 39.685215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054700, 0.751982, -0.656910,
		0.158433, -0.643024, -0.749279,
		-0.985853, -0.145062, -0.083965,
		45.170750, 25.919434, 39.660027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760811, 26.082590, 39.081066>,  <45.860847, 26.020977, 39.718800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760811, 26.082590, 39.081066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381332, 26.127144, 39.199436>,  <45.153645, 26.153877, 39.270458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381332, 26.127144, 39.199436>,  <45.760811, 26.082590, 39.081066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381332, 26.127144, 39.199436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118751, 0.741878, -0.659936,
		-0.293050, -0.661219, -0.690588,
		-0.948694, 0.111386, 0.295928,
		45.096725, 26.160559, 39.288216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435009, 26.204763, 38.422916>,  <45.760811, 26.082590, 39.081066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435009, 26.204763, 38.422916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152309, 26.336767, 38.673229>,  <44.982689, 26.415970, 38.823418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152309, 26.336767, 38.673229>,  <45.435009, 26.204763, 38.422916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152309, 26.336767, 38.673229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264235, 0.697397, -0.666196,
		-0.656268, -0.636186, -0.405684,
		-0.706748, 0.330007, 0.625782,
		44.940285, 26.435770, 38.860962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744072, 26.211178, 38.206856>,  <45.435009, 26.204763, 38.422916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744072, 26.211178, 38.206856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734020, 26.514444, 38.467487>,  <44.727989, 26.696405, 38.623863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734020, 26.514444, 38.467487>,  <44.744072, 26.211178, 38.206856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734020, 26.514444, 38.467487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396737, 0.590692, -0.702626,
		-0.917588, -0.276159, 0.285951,
		-0.025127, 0.758169, 0.651574,
		44.726482, 26.741896, 38.662960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104382, 26.543158, 38.097591>,  <44.744072, 26.211178, 38.206856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104382, 26.543158, 38.097591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317051, 26.823809, 38.287346>,  <44.444653, 26.992199, 38.401199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317051, 26.823809, 38.287346>,  <44.104382, 26.543158, 38.097591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317051, 26.823809, 38.287346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252377, 0.665913, -0.702044,
		-0.808473, 0.253534, 0.531123,
		0.531674, 0.701627, 0.474387,
		44.476555, 27.034296, 38.429661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653198, 27.073147, 38.031818>,  <44.104382, 26.543158, 38.097591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653198, 27.073147, 38.031818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002571, 27.246481, 38.120663>,  <44.212196, 27.350481, 38.173969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002571, 27.246481, 38.120663>,  <43.653198, 27.073147, 38.031818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002571, 27.246481, 38.120663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272219, 0.812726, -0.515143,
		-0.403741, 0.389483, 0.827826,
		0.873436, 0.433335, 0.222106,
		44.264603, 27.376482, 38.187294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546936, 27.685387, 38.448708>,  <43.653198, 27.073147, 38.031818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546936, 27.685387, 38.448708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903893, 27.741833, 38.277256>,  <44.118069, 27.775700, 38.174385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903893, 27.741833, 38.277256>,  <43.546936, 27.685387, 38.448708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903893, 27.741833, 38.277256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346904, 0.822007, -0.451622,
		0.288605, 0.551717, 0.782506,
		0.892393, 0.141114, -0.428628,
		44.171612, 27.784166, 38.148666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568024, 28.428934, 38.390823>,  <43.546936, 27.685387, 38.448708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568024, 28.428934, 38.390823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.845493, 28.293442, 38.136555>,  <44.011974, 28.212147, 37.983994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.845493, 28.293442, 38.136555>,  <43.568024, 28.428934, 38.390823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845493, 28.293442, 38.136555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241892, 0.721717, -0.648547,
		0.678454, 0.603646, 0.418703,
		0.693677, -0.338729, -0.635669,
		44.053596, 28.191824, 37.945854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915314, 28.975035, 38.315224>,  <43.568024, 28.428934, 38.390823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915314, 28.975035, 38.315224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.012318, 28.745157, 38.002579>,  <44.070518, 28.607231, 37.814991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.012318, 28.745157, 38.002579>,  <43.915314, 28.975035, 38.315224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012318, 28.745157, 38.002579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065717, 0.794078, -0.604252,
		0.967921, 0.197902, 0.154804,
		0.242509, -0.574695, -0.781611,
		44.085072, 28.572748, 37.768097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593929, 29.255579, 38.020050>,  <43.915314, 28.975035, 38.315224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593929, 29.255579, 38.020050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.385941, 29.063465, 37.737503>,  <44.261147, 28.948196, 37.567974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.385941, 29.063465, 37.737503>,  <44.593929, 29.255579, 38.020050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385941, 29.063465, 37.737503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020556, 0.833748, -0.551762,
		0.853937, -0.272380, -0.443397,
		-0.519970, -0.480284, -0.706370,
		44.229946, 28.919380, 37.525593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037605, 29.310404, 37.407940>,  <44.593929, 29.255579, 38.020050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037605, 29.310404, 37.407940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.669102, 29.226807, 37.276722>,  <44.448002, 29.176649, 37.197990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.669102, 29.226807, 37.276722>,  <45.037605, 29.310404, 37.407940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669102, 29.226807, 37.276722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099475, 0.688745, -0.718147,
		0.376024, -0.694229, -0.613720,
		-0.921255, -0.208991, -0.328043,
		44.392727, 29.164110, 37.178310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029156, 29.193409, 36.696438>,  <45.037605, 29.310404, 37.407940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029156, 29.193409, 36.696438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641441, 29.263765, 36.765205>,  <44.408813, 29.305979, 36.806465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641441, 29.263765, 36.765205>,  <45.029156, 29.193409, 36.696438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641441, 29.263765, 36.765205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033187, 0.786115, -0.617189,
		-0.243703, -0.592524, -0.767804,
		-0.969282, 0.175892, 0.171915,
		44.350658, 29.316532, 36.816780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743076, 29.211559, 36.066288>,  <45.029156, 29.193409, 36.696438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743076, 29.211559, 36.066288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506119, 29.421335, 36.310921>,  <44.363945, 29.547201, 36.457703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506119, 29.421335, 36.310921>,  <44.743076, 29.211559, 36.066288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506119, 29.421335, 36.310921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097760, 0.800303, -0.591573,
		-0.799698, -0.290654, -0.525361,
		-0.592391, 0.524439, 0.611586,
		44.328400, 29.578667, 36.494396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606369, 29.671871, 35.569557>,  <44.743076, 29.211559, 36.066288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606369, 29.671871, 35.569557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410622, 29.818121, 35.886250>,  <44.293175, 29.905870, 36.076263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410622, 29.818121, 35.886250>,  <44.606369, 29.671871, 35.569557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410622, 29.818121, 35.886250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253768, 0.808876, -0.530397,
		-0.834338, -0.460476, -0.303055,
		-0.489369, 0.365625, 0.791730,
		44.263809, 29.927809, 36.123768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036518, 29.845448, 35.320549>,  <44.606369, 29.671871, 35.569557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036518, 29.845448, 35.320549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113541, 30.059061, 35.649845>,  <44.159756, 30.187229, 35.847424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113541, 30.059061, 35.649845>,  <44.036518, 29.845448, 35.320549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113541, 30.059061, 35.649845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141740, 0.845283, -0.515175,
		-0.970995, -0.017486, 0.238459,
		0.192557, 0.534032, 0.823245,
		44.171307, 30.219271, 35.896820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453083, 30.319334, 35.373455>,  <44.036518, 29.845448, 35.320549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453083, 30.319334, 35.373455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750187, 30.482727, 35.585663>,  <43.928448, 30.580763, 35.712986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750187, 30.482727, 35.585663>,  <43.453083, 30.319334, 35.373455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750187, 30.482727, 35.585663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140845, 0.869934, -0.472628,
		-0.654575, 0.276329, 0.703686,
		0.742761, 0.408481, 0.530518,
		43.973015, 30.605270, 35.744820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229198, 30.987635, 35.455875>,  <43.453083, 30.319334, 35.373455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229198, 30.987635, 35.455875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613876, 31.010324, 35.563152>,  <43.844681, 31.023939, 35.627518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613876, 31.010324, 35.563152>,  <43.229198, 30.987635, 35.455875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613876, 31.010324, 35.563152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086605, 0.865378, -0.493579,
		-0.260089, 0.497899, 0.827315,
		0.961693, 0.056725, 0.268196,
		43.902386, 31.027342, 35.643612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351913, 31.606833, 35.753960>,  <43.229198, 30.987635, 35.455875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351913, 31.606833, 35.753960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.724850, 31.512627, 35.644218>,  <43.948612, 31.456102, 35.578373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.724850, 31.512627, 35.644218>,  <43.351913, 31.606833, 35.753960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724850, 31.512627, 35.644218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078046, 0.871967, -0.483304,
		0.353051, 0.429193, 0.831353,
		0.932343, -0.235515, -0.274352,
		44.004551, 31.441973, 35.561913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811642, 32.190311, 35.876957>,  <43.351913, 31.606833, 35.753960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811642, 32.190311, 35.876957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.028419, 31.971722, 35.621563>,  <44.158485, 31.840569, 35.468327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.028419, 31.971722, 35.621563>,  <43.811642, 32.190311, 35.876957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028419, 31.971722, 35.621563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211378, 0.823939, -0.525779,
		0.813396, 0.149982, 0.562042,
		0.541946, -0.546470, -0.638486,
		44.191002, 31.807781, 35.430016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587902, 32.450924, 35.727776>,  <43.811642, 32.190311, 35.876957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587902, 32.450924, 35.727776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.446724, 32.241028, 35.417915>,  <44.362019, 32.115089, 35.231998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.446724, 32.241028, 35.417915>,  <44.587902, 32.450924, 35.727776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446724, 32.241028, 35.417915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010486, 0.825661, -0.564069,
		0.935586, -0.207207, -0.285909,
		-0.352943, -0.524737, -0.774650,
		44.340839, 32.083607, 35.185520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000229, 32.666874, 35.122463>,  <44.587902, 32.450924, 35.727776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000229, 32.666874, 35.122463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652618, 32.538212, 34.972084>,  <44.444054, 32.461014, 34.881855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652618, 32.538212, 34.972084>,  <45.000229, 32.666874, 35.122463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652618, 32.538212, 34.972084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009800, 0.748503, -0.663059,
		0.494672, -0.579899, -0.647315,
		-0.869024, -0.321653, -0.375947,
		44.391911, 32.441715, 34.859299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562565, 33.064491, 35.088463>,  <45.000229, 32.666874, 35.122463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562565, 33.064491, 35.088463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834305, 33.178669, 35.358871>,  <45.997349, 33.247173, 35.521118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834305, 33.178669, 35.358871>,  <45.562565, 33.064491, 35.088463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834305, 33.178669, 35.358871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258369, -0.955296, 0.143720,
		0.686828, 0.077028, -0.722727,
		0.679347, 0.285441, 0.676026,
		46.038109, 33.264301, 35.561680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220181, 32.737091, 34.899105>,  <45.562565, 33.064491, 35.088463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220181, 32.737091, 34.899105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.279358, 32.871498, 35.271172>,  <46.314865, 32.952145, 35.494411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.279358, 32.871498, 35.271172>,  <46.220181, 32.737091, 34.899105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279358, 32.871498, 35.271172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366829, -0.892068, 0.263915,
		0.918450, 0.302167, -0.255235,
		0.147940, 0.336020, 0.930164,
		46.323742, 32.972305, 35.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976509, 32.629028, 35.086407>,  <46.220181, 32.737091, 34.899105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976509, 32.629028, 35.086407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.738251, 32.639740, 35.407528>,  <46.595295, 32.646168, 35.600201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.738251, 32.639740, 35.407528>,  <46.976509, 32.629028, 35.086407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738251, 32.639740, 35.407528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423938, -0.838430, 0.342507,
		0.682267, 0.544350, 0.488052,
		-0.595641, 0.026777, 0.802804,
		46.559559, 32.647774, 35.648369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427422, 32.635876, 35.621407>,  <46.976509, 32.629028, 35.086407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427422, 32.635876, 35.621407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.080376, 32.537853, 35.794468>,  <46.872147, 32.479042, 35.898304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.080376, 32.537853, 35.794468>,  <47.427422, 32.635876, 35.621407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.080376, 32.537853, 35.794468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423384, -0.820367, 0.384375,
		0.260746, 0.516670, 0.815514,
		-0.867616, -0.245052, 0.432657,
		46.820091, 32.464336, 35.924267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.542385, 32.466682, 36.432545>,  <47.427422, 32.635876, 35.621407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.542385, 32.466682, 36.432545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.195652, 32.303177, 36.318348>,  <46.987610, 32.205074, 36.249828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.195652, 32.303177, 36.318348>,  <47.542385, 32.466682, 36.432545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195652, 32.303177, 36.318348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282057, -0.874191, 0.395265,
		-0.411145, 0.262105, 0.873075,
		-0.866835, -0.408768, -0.285491,
		46.935600, 32.180546, 36.232700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268681, 32.118763, 37.022621>,  <47.542385, 32.466682, 36.432545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268681, 32.118763, 37.022621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.103668, 31.942049, 36.703964>,  <47.004662, 31.836020, 36.512772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.103668, 31.942049, 36.703964>,  <47.268681, 32.118763, 37.022621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.103668, 31.942049, 36.703964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029678, -0.880581, 0.472965,
		-0.910459, 0.171471, 0.376381,
		-0.412534, -0.441786, -0.796644,
		46.979908, 31.809513, 36.464970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008026, 31.537468, 37.321003>,  <47.268681, 32.118763, 37.022621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008026, 31.537468, 37.321003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.965981, 31.426546, 36.938995>,  <46.940754, 31.359993, 36.709793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.965981, 31.426546, 36.938995>,  <47.008026, 31.537468, 37.321003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.965981, 31.426546, 36.938995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125374, -0.956368, 0.263898,
		-0.986526, -0.091996, 0.135292,
		-0.105112, -0.277304, -0.955015,
		46.934448, 31.343355, 36.652493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420750, 30.938532, 37.327450>,  <47.008026, 31.537468, 37.321003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420750, 30.938532, 37.327450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.648624, 30.940134, 36.998707>,  <46.785351, 30.941095, 36.801460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.648624, 30.940134, 36.998707>,  <46.420750, 30.938532, 37.327450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648624, 30.940134, 36.998707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203693, -0.969477, 0.136470,
		-0.796221, -0.245151, -0.553113,
		0.569686, 0.004005, -0.821853,
		46.819530, 30.941336, 36.752151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181557, 30.373051, 37.041012>,  <46.420750, 30.938532, 37.327450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181557, 30.373051, 37.041012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542622, 30.456167, 36.890270>,  <46.759262, 30.506037, 36.799828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542622, 30.456167, 36.890270>,  <46.181557, 30.373051, 37.041012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542622, 30.456167, 36.890270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241327, -0.969469, 0.043498,
		-0.356306, -0.130208, -0.925252,
		0.902667, 0.207789, -0.376850,
		46.813423, 30.518503, 36.777214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186039, 29.906916, 36.568935>,  <46.181557, 30.373051, 37.041012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186039, 29.906916, 36.568935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570770, 30.005991, 36.615482>,  <46.801609, 30.065435, 36.643410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570770, 30.005991, 36.615482>,  <46.186039, 29.906916, 36.568935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570770, 30.005991, 36.615482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265970, -0.946180, -0.184397,
		0.064435, 0.208309, -0.975938,
		0.961825, 0.247689, 0.116371,
		46.859318, 30.080297, 36.650394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536938, 29.506163, 36.077522>,  <46.186039, 29.906916, 36.568935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536938, 29.506163, 36.077522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.829029, 29.601114, 36.333778>,  <47.004284, 29.658085, 36.487534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.829029, 29.601114, 36.333778>,  <46.536938, 29.506163, 36.077522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829029, 29.601114, 36.333778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345570, -0.937234, -0.046620,
		0.589364, 0.255430, -0.766424,
		0.730227, 0.237377, 0.640641,
		47.048096, 29.672327, 36.525970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.972790, 29.104290, 35.853874>,  <46.536938, 29.506163, 36.077522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.972790, 29.104290, 35.853874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.126003, 29.223803, 36.203506>,  <47.217934, 29.295509, 36.413284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.126003, 29.223803, 36.203506>,  <46.972790, 29.104290, 35.853874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.126003, 29.223803, 36.203506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334361, -0.926927, 0.170323,
		0.861096, 0.227017, -0.454948,
		0.383037, 0.298781, 0.874078,
		47.240913, 29.313437, 36.465729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.663349, 28.855238, 35.932068>,  <46.972790, 29.104290, 35.853874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.663349, 28.855238, 35.932068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.520065, 28.914778, 36.300747>,  <47.434093, 28.950502, 36.521954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.520065, 28.914778, 36.300747>,  <47.663349, 28.855238, 35.932068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520065, 28.914778, 36.300747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155512, -0.963906, 0.216104,
		0.920599, 0.220746, 0.322132,
		-0.358209, 0.148849, 0.921700,
		47.412601, 28.959433, 36.577255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.157993, 28.519863, 36.403877>,  <47.663349, 28.855238, 35.932068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.157993, 28.519863, 36.403877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.827213, 28.576420, 36.621563>,  <47.628746, 28.610353, 36.752174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.827213, 28.576420, 36.621563>,  <48.157993, 28.519863, 36.403877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.827213, 28.576420, 36.621563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060726, -0.939749, 0.336429,
		0.558993, 0.311257, 0.768535,
		-0.826946, 0.141392, 0.544214,
		47.579128, 28.618837, 36.784828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.283134, 28.209711, 37.095497>,  <48.157993, 28.519863, 36.403877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.283134, 28.209711, 37.095497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.886215, 28.240650, 37.056808>,  <47.648064, 28.259214, 37.033596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.886215, 28.240650, 37.056808>,  <48.283134, 28.209711, 37.095497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.886215, 28.240650, 37.056808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113200, -0.883257, 0.455020,
		-0.050233, 0.462465, 0.885213,
		-0.992302, 0.077349, -0.096719,
		47.588524, 28.263855, 37.027794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.031750, 28.092680, 37.690514>,  <48.283134, 28.209711, 37.095497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.031750, 28.092680, 37.690514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.732613, 28.021990, 37.434547>,  <47.553131, 27.979576, 37.280968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.732613, 28.021990, 37.434547>,  <48.031750, 28.092680, 37.690514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.732613, 28.021990, 37.434547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110646, -0.917253, 0.382627,
		-0.654587, 0.356951, 0.666410,
		-0.747846, -0.176727, -0.639917,
		47.508259, 27.968971, 37.242573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.526848, 27.819784, 38.094036>,  <48.031750, 28.092680, 37.690514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.526848, 27.819784, 38.094036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.461029, 27.700150, 37.718063>,  <47.421535, 27.628368, 37.492481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.461029, 27.700150, 37.718063>,  <47.526848, 27.819784, 38.094036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461029, 27.700150, 37.718063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145132, -0.935207, 0.322993,
		-0.975633, 0.189563, 0.110482,
		-0.164551, -0.299088, -0.939931,
		47.411663, 27.610424, 37.436085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012661, 27.512228, 38.191467>,  <47.526848, 27.819784, 38.094036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012661, 27.512228, 38.191467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.166557, 27.355644, 37.857105>,  <47.258896, 27.261694, 37.656487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.166557, 27.355644, 37.857105>,  <47.012661, 27.512228, 38.191467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.166557, 27.355644, 37.857105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220279, -0.918387, 0.328698,
		-0.896355, 0.057670, -0.439569,
		0.384739, -0.391458, -0.835905,
		47.281979, 27.238207, 37.606335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546467, 27.014799, 37.956768>,  <47.012661, 27.512228, 38.191467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.546467, 27.014799, 37.956768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877674, 26.920944, 37.753071>,  <47.076401, 26.864632, 37.630852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877674, 26.920944, 37.753071>,  <46.546467, 27.014799, 37.956768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877674, 26.920944, 37.753071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287656, -0.957364, -0.026611,
		-0.481287, 0.168522, -0.860211,
		0.828020, -0.234637, -0.509243,
		47.126080, 26.850554, 37.600296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.314831, 26.503803, 37.599152>,  <46.546467, 27.014799, 37.956768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.314831, 26.503803, 37.599152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.707653, 26.479820, 37.527634>,  <46.943348, 26.465431, 37.484722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.707653, 26.479820, 37.527634>,  <46.314831, 26.503803, 37.599152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707653, 26.479820, 37.527634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112453, -0.947285, -0.300009,
		-0.151383, 0.314732, -0.937031,
		0.982058, -0.059955, -0.178795,
		47.002270, 26.461834, 37.473995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402737, 26.355169, 37.000526>,  <46.314831, 26.503803, 37.599152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402737, 26.355169, 37.000526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.747456, 26.230497, 37.160606>,  <46.954288, 26.155695, 37.256657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.747456, 26.230497, 37.160606>,  <46.402737, 26.355169, 37.000526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.747456, 26.230497, 37.160606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122109, -0.893230, -0.432700,
		0.492339, 0.324031, -0.807841,
		0.861796, -0.311680, 0.400204,
		47.005993, 26.136993, 37.280666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.556950, 39.076698, 35.196739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429783, 38.859272, 35.507469>,  <39.353481, 38.728817, 35.693909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429783, 38.859272, 35.507469>,  <39.556950, 39.076698, 35.196739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429783, 38.859272, 35.507469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402378, -0.819245, -0.408569,
		0.858498, 0.182686, 0.479173,
		-0.317920, -0.543565, 0.776829,
		39.334408, 38.696201, 35.740517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065697, 38.636971, 35.357723>,  <39.556950, 39.076698, 35.196739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065697, 38.636971, 35.357723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754566, 38.460106, 35.536377>,  <39.567890, 38.353989, 35.643570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754566, 38.460106, 35.536377>,  <40.065697, 38.636971, 35.357723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754566, 38.460106, 35.536377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383767, -0.896935, -0.219613,
		0.497711, 0.000586, 0.867343,
		-0.777822, -0.442162, 0.446639,
		39.521221, 38.327457, 35.670368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346260, 37.980175, 35.508068>,  <40.065697, 38.636971, 35.357723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346260, 37.980175, 35.508068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950104, 37.958038, 35.558758>,  <39.712410, 37.944756, 35.589172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950104, 37.958038, 35.558758>,  <40.346260, 37.980175, 35.508068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950104, 37.958038, 35.558758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018630, -0.961469, -0.274280,
		0.137019, -0.269284, 0.953264,
		-0.990393, -0.055341, 0.126722,
		39.652985, 37.941437, 35.596775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250568, 37.469063, 35.933205>,  <40.346260, 37.980175, 35.508068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250568, 37.469063, 35.933205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907963, 37.493366, 35.728191>,  <39.702400, 37.507950, 35.605183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907963, 37.493366, 35.728191>,  <40.250568, 37.469063, 35.933205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907963, 37.493366, 35.728191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022937, -0.987583, -0.155413,
		-0.515612, -0.144869, 0.844486,
		-0.856515, 0.060763, -0.512533,
		39.651009, 37.511597, 35.574432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750687, 37.030994, 36.270760>,  <40.250568, 37.469063, 35.933205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750687, 37.030994, 36.270760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621399, 37.067383, 35.893982>,  <39.543827, 37.089218, 35.667915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621399, 37.067383, 35.893982>,  <39.750687, 37.030994, 36.270760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621399, 37.067383, 35.893982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013052, -0.995702, -0.091688,
		-0.946233, -0.017341, 0.323020,
		-0.323222, 0.090974, -0.941940,
		39.524433, 37.094673, 35.611401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400047, 36.374378, 36.237652>,  <39.750687, 37.030994, 36.270760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400047, 36.374378, 36.237652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440536, 36.507263, 35.862549>,  <39.464828, 36.586994, 35.637486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440536, 36.507263, 35.862549>,  <39.400047, 36.374378, 36.237652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440536, 36.507263, 35.862549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118058, -0.931928, -0.342888,
		-0.987834, 0.145417, -0.055111,
		0.101222, 0.332210, -0.937758,
		39.470901, 36.606926, 35.581223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853275, 36.151062, 35.830811>,  <39.400047, 36.374378, 36.237652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853275, 36.151062, 35.830811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162304, 36.226612, 35.588337>,  <39.347721, 36.271942, 35.442852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162304, 36.226612, 35.588337>,  <38.853275, 36.151062, 35.830811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162304, 36.226612, 35.588337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089534, -0.912780, -0.398518,
		-0.628579, 0.362158, -0.688280,
		0.772574, 0.188876, -0.606180,
		39.394077, 36.283276, 35.406483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660080, 35.852631, 35.114697>,  <38.853275, 36.151062, 35.830811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660080, 35.852631, 35.114697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059429, 35.875275, 35.117321>,  <39.299038, 35.888859, 35.118896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059429, 35.875275, 35.117321>,  <38.660080, 35.852631, 35.114697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059429, 35.875275, 35.117321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056752, -0.977345, -0.203901,
		-0.005133, 0.203942, -0.978970,
		0.998375, 0.056605, 0.006557,
		39.358940, 35.892258, 35.119289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798004, 35.475922, 34.590141>,  <38.660080, 35.852631, 35.114697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798004, 35.475922, 34.590141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116272, 35.485840, 34.832230>,  <39.307232, 35.491791, 34.977482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116272, 35.485840, 34.832230>,  <38.798004, 35.475922, 34.590141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116272, 35.485840, 34.832230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161332, -0.971745, -0.172288,
		0.583850, 0.234727, -0.777189,
		0.795670, 0.024795, 0.605222,
		39.354973, 35.493279, 35.013798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286949, 35.043011, 34.199055>,  <38.798004, 35.475922, 34.590141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286949, 35.043011, 34.199055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416985, 35.053730, 34.577175>,  <39.495007, 35.060162, 34.804047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416985, 35.053730, 34.577175>,  <39.286949, 35.043011, 34.199055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416985, 35.053730, 34.577175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116810, -0.993082, -0.012013,
		0.938443, 0.114327, -0.325966,
		0.325084, 0.026803, 0.945305,
		39.514511, 35.061771, 34.860767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789059, 34.689812, 34.119595>,  <39.286949, 35.043011, 34.199055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789059, 34.689812, 34.119595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725517, 34.668789, 34.513954>,  <39.687393, 34.656174, 34.750572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725517, 34.668789, 34.513954>,  <39.789059, 34.689812, 34.119595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725517, 34.668789, 34.513954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171431, -0.984882, -0.024882,
		0.972305, 0.165062, 0.165462,
		-0.158853, -0.052558, 0.985902,
		39.677860, 34.653023, 34.809727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428452, 34.516548, 34.522163>,  <39.789059, 34.689812, 34.119595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428452, 34.516548, 34.522163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086178, 34.372593, 34.670910>,  <39.880814, 34.286221, 34.760159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086178, 34.372593, 34.670910>,  <40.428452, 34.516548, 34.522163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086178, 34.372593, 34.670910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415947, -0.905820, 0.080487,
		0.307876, 0.223548, 0.924791,
		-0.855687, -0.359884, 0.371864,
		39.829472, 34.264629, 34.782471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545132, 34.163448, 35.172295>,  <40.428452, 34.516548, 34.522163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545132, 34.163448, 35.172295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209438, 34.027206, 35.002743>,  <40.008022, 33.945461, 34.901012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209438, 34.027206, 35.002743>,  <40.545132, 34.163448, 35.172295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209438, 34.027206, 35.002743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354271, -0.933859, 0.048972,
		-0.412523, -0.109069, 0.904394,
		-0.839236, -0.340603, -0.423879,
		39.957668, 33.925026, 34.875580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384815, 33.467617, 34.930431>,  <40.545132, 34.163448, 35.172295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384815, 33.467617, 34.930431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508472, 33.152657, 35.143757>,  <40.582668, 32.963680, 35.271751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508472, 33.152657, 35.143757>,  <40.384815, 33.467617, 34.930431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508472, 33.152657, 35.143757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522548, -0.609185, -0.596520,
		0.794591, -0.094274, -0.599781,
		0.309141, -0.787404, 0.533316,
		40.601215, 32.916435, 35.303753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834198, 33.326851, 35.553555>,  <40.384815, 33.467617, 34.930431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834198, 33.326851, 35.553555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013115, 33.073238, 35.805882>,  <41.120464, 32.921070, 35.957275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013115, 33.073238, 35.805882>,  <40.834198, 33.326851, 35.553555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013115, 33.073238, 35.805882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630027, 0.277244, 0.725398,
		-0.634817, -0.721897, -0.275449,
		0.447296, -0.634035, 0.630813,
		41.147305, 32.883026, 35.995125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261429, 33.037624, 35.861549>,  <40.834198, 33.326851, 35.553555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261429, 33.037624, 35.861549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595646, 32.995888, 36.077316>,  <40.796177, 32.970848, 36.206776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595646, 32.995888, 36.077316>,  <40.261429, 33.037624, 35.861549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595646, 32.995888, 36.077316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464718, 0.389523, 0.795179,
		-0.293086, -0.915087, 0.276977,
		0.835547, -0.104340, 0.539421,
		40.846310, 32.964584, 36.239143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151405, 32.661446, 36.477753>,  <40.261429, 33.037624, 35.861549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151405, 32.661446, 36.477753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456875, 32.900635, 36.575100>,  <40.640156, 33.044147, 36.633507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456875, 32.900635, 36.575100>,  <40.151405, 32.661446, 36.477753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456875, 32.900635, 36.575100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536269, 0.377674, 0.754836,
		0.359456, -0.706962, 0.609094,
		0.763679, 0.597969, 0.243365,
		40.685978, 33.080029, 36.648109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265266, 32.593891, 37.251625>,  <40.151405, 32.661446, 36.477753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265266, 32.593891, 37.251625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459042, 32.924751, 37.137688>,  <40.575306, 33.123268, 37.069324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459042, 32.924751, 37.137688>,  <40.265266, 32.593891, 37.251625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459042, 32.924751, 37.137688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392000, 0.496325, 0.774595,
		0.782084, -0.263585, 0.564684,
		0.484438, 0.827154, -0.284843,
		40.604374, 33.172897, 37.052235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535702, 32.875214, 37.891418>,  <40.265266, 32.593891, 37.251625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535702, 32.875214, 37.891418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536877, 33.194283, 37.650185>,  <40.537582, 33.385723, 37.505444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536877, 33.194283, 37.650185>,  <40.535702, 32.875214, 37.891418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536877, 33.194283, 37.650185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170561, 0.594652, 0.785683,
		0.985343, 0.100556, 0.137798,
		0.002937, 0.797670, -0.603087,
		40.537758, 33.433582, 37.469257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978062, 33.411945, 38.197483>,  <40.535702, 32.875214, 37.891418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978062, 33.411945, 38.197483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725769, 33.605484, 37.954807>,  <40.574394, 33.721607, 37.809204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725769, 33.605484, 37.954807>,  <40.978062, 33.411945, 38.197483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725769, 33.605484, 37.954807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080063, 0.737066, 0.671061,
		0.771857, 0.471835, -0.426155,
		-0.630735, 0.483844, -0.606686,
		40.536549, 33.750637, 37.772800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199375, 34.122021, 38.267715>,  <40.978062, 33.411945, 38.197483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199375, 34.122021, 38.267715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825115, 34.122849, 38.126545>,  <40.600559, 34.123344, 38.041843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825115, 34.122849, 38.126545>,  <41.199375, 34.122021, 38.267715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825115, 34.122849, 38.126545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209083, 0.802363, 0.559015,
		0.284329, 0.596833, -0.750299,
		-0.935650, 0.002070, -0.352923,
		40.544418, 34.123470, 38.020668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188789, 34.753048, 38.086933>,  <41.199375, 34.122021, 38.267715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188789, 34.753048, 38.086933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803539, 34.651073, 38.121326>,  <40.572388, 34.589890, 38.141964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803539, 34.651073, 38.121326>,  <41.188789, 34.753048, 38.086933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803539, 34.651073, 38.121326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162515, 0.805966, 0.569217,
		-0.214415, 0.534255, -0.817679,
		-0.963128, -0.254934, 0.085986,
		40.514603, 34.574593, 38.147121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842709, 35.354076, 38.157986>,  <41.188789, 34.753048, 38.086933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842709, 35.354076, 38.157986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540379, 35.116013, 38.267174>,  <40.358982, 34.973175, 38.332687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540379, 35.116013, 38.267174>,  <40.842709, 35.354076, 38.157986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540379, 35.116013, 38.267174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338334, 0.711918, 0.615388,
		-0.560589, 0.372768, -0.739448,
		-0.755824, -0.595160, 0.272974,
		40.313633, 34.937466, 38.349068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318085, 35.886269, 38.195881>,  <40.842709, 35.354076, 38.157986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318085, 35.886269, 38.195881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187592, 35.555485, 38.379055>,  <40.109295, 35.357014, 38.488960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187592, 35.555485, 38.379055>,  <40.318085, 35.886269, 38.195881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187592, 35.555485, 38.379055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402286, 0.559836, 0.724396,
		-0.855418, 0.052098, -0.515311,
		-0.326229, -0.826964, 0.457936,
		40.089722, 35.307396, 38.516438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637802, 35.950340, 38.222839>,  <40.318085, 35.886269, 38.195881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637802, 35.950340, 38.222839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735603, 35.708458, 38.526035>,  <39.794285, 35.563328, 38.707954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735603, 35.708458, 38.526035>,  <39.637802, 35.950340, 38.222839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735603, 35.708458, 38.526035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449584, 0.621915, 0.641168,
		-0.859124, -0.497545, -0.119810,
		0.244498, -0.604707, 0.757991,
		39.808952, 35.527046, 38.753433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086018, 35.872589, 38.608295>,  <39.637802, 35.950340, 38.222839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086018, 35.872589, 38.608295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396572, 35.787216, 38.845505>,  <39.582905, 35.735992, 38.987831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396572, 35.787216, 38.845505>,  <39.086018, 35.872589, 38.608295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396572, 35.787216, 38.845505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298002, 0.704780, 0.643801,
		-0.555358, -0.676558, 0.483577,
		0.776384, -0.213434, 0.593020,
		39.629486, 35.723186, 39.023411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831142, 35.975994, 39.259220>,  <39.086018, 35.872589, 38.608295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831142, 35.975994, 39.259220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226391, 35.985867, 39.319904>,  <39.463539, 35.991791, 39.356316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226391, 35.985867, 39.319904>,  <38.831142, 35.975994, 39.259220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226391, 35.985867, 39.319904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117106, 0.760196, 0.639052,
		-0.099552, -0.649224, 0.754054,
		0.988118, 0.024685, 0.151707,
		39.522827, 35.993271, 39.365417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953136, 36.071171, 40.008060>,  <38.831142, 35.975994, 39.259220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953136, 36.071171, 40.008060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272495, 36.222954, 39.821053>,  <39.464111, 36.314022, 39.708847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272495, 36.222954, 39.821053>,  <38.953136, 36.071171, 40.008060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272495, 36.222954, 39.821053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053927, 0.728257, 0.683179,
		0.599710, -0.570660, 0.560976,
		0.798398, 0.379458, -0.467517,
		39.512016, 36.336792, 39.680798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820370, 35.518326, 40.422417>,  <38.953136, 36.071171, 40.008060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820370, 35.518326, 40.422417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440506, 35.472378, 40.539001>,  <38.212589, 35.444809, 40.608952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440506, 35.472378, 40.539001>,  <38.820370, 35.518326, 40.422417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440506, 35.472378, 40.539001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128963, -0.704539, -0.697849,
		0.285510, -0.700308, 0.654258,
		-0.949659, -0.114867, 0.291466,
		38.155609, 35.437916, 40.626442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768097, 34.794296, 40.482414>,  <38.820370, 35.518326, 40.422417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768097, 34.794296, 40.482414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385960, 34.912189, 40.490963>,  <38.156677, 34.982925, 40.496094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385960, 34.912189, 40.490963>,  <38.768097, 34.794296, 40.482414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385960, 34.912189, 40.490963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202842, -0.601455, -0.772727,
		-0.214893, -0.742552, 0.634379,
		-0.955341, 0.294732, 0.021372,
		38.099358, 35.000610, 40.497375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452240, 34.253075, 40.250050>,  <38.768097, 34.794296, 40.482414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452240, 34.253075, 40.250050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179272, 34.536385, 40.177776>,  <38.015491, 34.706371, 40.134415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179272, 34.536385, 40.177776>,  <38.452240, 34.253075, 40.250050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179272, 34.536385, 40.177776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210529, -0.427161, -0.879324,
		-0.699981, -0.562034, 0.440617,
		-0.682425, 0.708273, -0.180680,
		37.974545, 34.748867, 40.123573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893536, 33.854843, 40.187328>,  <38.452240, 34.253075, 40.250050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893536, 33.854843, 40.187328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852852, 34.205662, 39.999523>,  <37.828442, 34.416153, 39.886841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852852, 34.205662, 39.999523>,  <37.893536, 33.854843, 40.187328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852852, 34.205662, 39.999523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068582, -0.477015, -0.876215,
		-0.992447, -0.056922, 0.108669,
		-0.101713, 0.877049, -0.469509,
		37.822338, 34.468777, 39.858669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130409, 33.818508, 39.972805>,  <37.893536, 33.854843, 40.187328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130409, 33.818508, 39.972805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337521, 34.076778, 39.748306>,  <37.461788, 34.231743, 39.613605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337521, 34.076778, 39.748306>,  <37.130409, 33.818508, 39.972805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337521, 34.076778, 39.748306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189051, -0.553465, -0.811132,
		-0.834365, 0.526093, -0.164506,
		0.517779, 0.645680, -0.561250,
		37.492855, 34.270481, 39.579929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710079, 34.030342, 39.443542>,  <37.130409, 33.818508, 39.972805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710079, 34.030342, 39.443542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071091, 34.138351, 39.309368>,  <37.287697, 34.203159, 39.228863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071091, 34.138351, 39.309368>,  <36.710079, 34.030342, 39.443542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071091, 34.138351, 39.309368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279297, -0.225832, -0.933270,
		-0.327761, 0.935994, -0.128403,
		0.902533, 0.270026, -0.335440,
		37.341850, 34.219360, 39.208736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695606, 34.492245, 38.889236>,  <36.710079, 34.030342, 39.443542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695606, 34.492245, 38.889236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056152, 34.325951, 38.840740>,  <37.272480, 34.226173, 38.811642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056152, 34.325951, 38.840740>,  <36.695606, 34.492245, 38.889236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056152, 34.325951, 38.840740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195377, -0.140553, -0.970604,
		0.386475, 0.898559, -0.207915,
		0.901368, -0.415736, -0.121238,
		37.326561, 34.201229, 38.804367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861092, 34.699932, 38.229622>,  <36.695606, 34.492245, 38.889236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861092, 34.699932, 38.229622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096691, 34.387146, 38.311222>,  <37.238052, 34.199474, 38.360180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096691, 34.387146, 38.311222>,  <36.861092, 34.699932, 38.229622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096691, 34.387146, 38.311222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096396, -0.318609, -0.942972,
		0.802364, 0.535745, -0.263039,
		0.588999, -0.781963, 0.203997,
		37.273392, 34.152557, 38.372421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223293, 34.676712, 37.698727>,  <36.861092, 34.699932, 38.229622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223293, 34.676712, 37.698727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261284, 34.313007, 37.860828>,  <37.284081, 34.094784, 37.958088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261284, 34.313007, 37.860828>,  <37.223293, 34.676712, 37.698727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261284, 34.313007, 37.860828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203515, -0.416229, -0.886191,
		0.974454, 0.001696, -0.224581,
		0.094980, -0.909258, 0.405251,
		37.289776, 34.040230, 37.982403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393875, 34.339825, 37.131233>,  <37.223293, 34.676712, 37.698727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393875, 34.339825, 37.131233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346298, 34.038807, 37.390320>,  <37.317753, 33.858196, 37.545773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346298, 34.038807, 37.390320>,  <37.393875, 34.339825, 37.131233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346298, 34.038807, 37.390320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039644, -0.648227, -0.760415,
		0.992110, -0.116120, 0.047265,
		-0.118938, -0.752541, 0.647716,
		37.310616, 33.813046, 37.584633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771656, 33.871922, 36.860847>,  <37.393875, 34.339825, 37.131233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771656, 33.871922, 36.860847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503746, 33.674736, 37.082977>,  <37.342999, 33.556427, 37.216255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503746, 33.674736, 37.082977>,  <37.771656, 33.871922, 36.860847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503746, 33.674736, 37.082977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002926, -0.749601, -0.661884,
		0.742558, -0.441689, 0.503507,
		-0.669776, -0.492960, 0.555329,
		37.302814, 33.526848, 37.249577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981785, 33.249641, 37.087746>,  <37.771656, 33.871922, 36.860847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981785, 33.249641, 37.087746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586357, 33.255791, 37.027748>,  <37.349102, 33.259480, 36.991749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586357, 33.255791, 37.027748>,  <37.981785, 33.249641, 37.087746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586357, 33.255791, 37.027748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083587, -0.772042, -0.630051,
		-0.125488, -0.635386, 0.761930,
		-0.988568, 0.015377, -0.149992,
		37.289787, 33.260403, 36.982750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.555370, 37.656990, 43.846813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.212757, 37.696442, 43.644180>,  <38.007191, 37.720112, 43.522602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.212757, 37.696442, 43.644180>,  <38.555370, 37.656990, 43.846813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212757, 37.696442, 43.644180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192066, -0.850145, -0.490270,
		-0.479023, -0.517229, 0.709233,
		-0.856533, 0.098631, -0.506581,
		37.955799, 37.726032, 43.492207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194050, 37.109879, 43.934196>,  <38.555370, 37.656990, 43.846813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194050, 37.109879, 43.934196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041561, 37.249508, 43.591778>,  <37.950069, 37.333286, 43.386326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041561, 37.249508, 43.591778>,  <38.194050, 37.109879, 43.934196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041561, 37.249508, 43.591778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129398, -0.937008, -0.324456,
		-0.915384, -0.012918, 0.402375,
		-0.381220, 0.349069, -0.856051,
		37.927197, 37.354229, 43.334961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684116, 36.645145, 43.697876>,  <38.194050, 37.109879, 43.934196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684116, 36.645145, 43.697876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759125, 36.832188, 43.352348>,  <37.804131, 36.944412, 43.145031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759125, 36.832188, 43.352348>,  <37.684116, 36.645145, 43.697876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759125, 36.832188, 43.352348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061410, -0.883281, -0.464805,
		-0.980339, 0.034115, -0.194351,
		0.187524, 0.467602, -0.863819,
		37.815380, 36.972469, 43.093201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474773, 36.175213, 43.216541>,  <37.684116, 36.645145, 43.697876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474773, 36.175213, 43.216541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673351, 36.439045, 42.990803>,  <37.792500, 36.597343, 42.855358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673351, 36.439045, 42.990803>,  <37.474773, 36.175213, 43.216541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673351, 36.439045, 42.990803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034707, -0.664684, -0.746317,
		-0.867372, 0.350921, -0.352873,
		0.496448, 0.659582, -0.564350,
		37.822285, 36.636921, 42.821499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073757, 36.327248, 42.621891>,  <37.474773, 36.175213, 43.216541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073757, 36.327248, 42.621891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.453308, 36.417389, 42.533489>,  <37.681038, 36.471474, 42.480446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.453308, 36.417389, 42.533489>,  <37.073757, 36.327248, 42.621891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453308, 36.417389, 42.533489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046354, -0.593111, -0.803785,
		-0.312215, 0.772940, -0.552346,
		0.948880, 0.225351, -0.221007,
		37.737972, 36.484993, 42.467186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949768, 36.568775, 41.949104>,  <37.073757, 36.327248, 42.621891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949768, 36.568775, 41.949104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342163, 36.510971, 42.000931>,  <37.577599, 36.476288, 42.032028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342163, 36.510971, 42.000931>,  <36.949768, 36.568775, 41.949104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342163, 36.510971, 42.000931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045072, -0.479704, -0.876272,
		0.188787, 0.865448, -0.464068,
		0.980983, -0.144512, 0.129569,
		37.636459, 36.467617, 42.039803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241982, 36.730045, 41.265873>,  <36.949768, 36.568775, 41.949104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241982, 36.730045, 41.265873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513550, 36.497421, 41.445141>,  <37.676491, 36.357845, 41.552700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513550, 36.497421, 41.445141>,  <37.241982, 36.730045, 41.265873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513550, 36.497421, 41.445141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011893, -0.619037, -0.785272,
		0.734114, 0.527808, -0.427194,
		0.678922, -0.581560, 0.448167,
		37.717228, 36.322952, 41.579590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882046, 36.669479, 40.781254>,  <37.241982, 36.730045, 41.265873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882046, 36.669479, 40.781254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.875626, 36.348293, 41.019581>,  <37.871773, 36.155582, 41.162575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.875626, 36.348293, 41.019581>,  <37.882046, 36.669479, 40.781254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875626, 36.348293, 41.019581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125841, -0.592776, -0.795475,
		0.991921, 0.062211, 0.110559,
		-0.016049, -0.802961, 0.595815,
		37.870811, 36.107407, 41.198326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560501, 36.336929, 40.686050>,  <37.882046, 36.669479, 40.781254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560501, 36.336929, 40.686050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306664, 36.063519, 40.830318>,  <38.154362, 35.899471, 40.916878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306664, 36.063519, 40.830318>,  <38.560501, 36.336929, 40.686050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306664, 36.063519, 40.830318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145573, -0.564041, -0.812814,
		0.759011, -0.463304, 0.457440,
		-0.634595, -0.683526, 0.360669,
		38.116283, 35.858459, 40.938519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298565, 36.393448, 40.562580>,  <38.560501, 36.336929, 40.686050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298565, 36.393448, 40.562580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492115, 36.540577, 40.244946>,  <39.608246, 36.628853, 40.054367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492115, 36.540577, 40.244946>,  <39.298565, 36.393448, 40.562580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492115, 36.540577, 40.244946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243569, 0.814928, 0.525896,
		0.840558, -0.447883, 0.304734,
		0.483876, 0.367823, -0.794085,
		39.637280, 36.650925, 40.006721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976929, 36.697403, 40.801231>,  <39.298565, 36.393448, 40.562580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976929, 36.697403, 40.801231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.876263, 36.865784, 40.452644>,  <39.815865, 36.966812, 40.243492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.876263, 36.865784, 40.452644>,  <39.976929, 36.697403, 40.801231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876263, 36.865784, 40.452644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158130, 0.906236, 0.392085,
		0.954808, -0.039132, -0.294634,
		-0.251665, 0.420956, -0.871470,
		39.800762, 36.992069, 40.191204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565926, 37.131706, 40.680000>,  <39.976929, 36.697403, 40.801231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565926, 37.131706, 40.680000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.270420, 37.255180, 40.440353>,  <40.093117, 37.329266, 40.296566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.270420, 37.255180, 40.440353>,  <40.565926, 37.131706, 40.680000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270420, 37.255180, 40.440353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255709, 0.950856, 0.174604,
		0.623572, -0.024209, -0.781391,
		-0.738763, 0.308687, -0.599117,
		40.048790, 37.347786, 40.260620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850681, 37.644325, 40.413799>,  <40.565926, 37.131706, 40.680000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850681, 37.644325, 40.413799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.455093, 37.690285, 40.376415>,  <40.217739, 37.717861, 40.353985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.455093, 37.690285, 40.376415>,  <40.850681, 37.644325, 40.413799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455093, 37.690285, 40.376415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106086, 0.989874, 0.094320,
		0.103346, 0.083365, -0.991146,
		-0.988972, 0.114894, -0.093456,
		40.158401, 37.724754, 40.348377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824341, 38.137474, 39.834000>,  <40.850681, 37.644325, 40.413799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824341, 38.137474, 39.834000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.486500, 38.149494, 40.047821>,  <40.283794, 38.156708, 40.176113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.486500, 38.149494, 40.047821>,  <40.824341, 38.137474, 39.834000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486500, 38.149494, 40.047821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039962, 0.992100, -0.118910,
		-0.533904, -0.121793, -0.836728,
		-0.844601, 0.030050, 0.534553,
		40.233120, 38.158508, 40.208187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348778, 38.577679, 39.424061>,  <40.824341, 38.137474, 39.834000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348778, 38.577679, 39.424061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.193481, 38.559914, 39.792255>,  <40.100304, 38.549255, 40.013172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.193481, 38.559914, 39.792255>,  <40.348778, 38.577679, 39.424061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193481, 38.559914, 39.792255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143877, 0.989511, -0.012936,
		-0.910258, -0.137459, -0.390558,
		-0.388240, -0.044417, 0.920487,
		40.077011, 38.546589, 40.068401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759914, 38.933475, 39.355629>,  <40.348778, 38.577679, 39.424061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759914, 38.933475, 39.355629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838772, 38.951672, 39.747356>,  <39.886086, 38.962589, 39.982391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838772, 38.951672, 39.747356>,  <39.759914, 38.933475, 39.355629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838772, 38.951672, 39.747356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135772, 0.990564, -0.018679,
		-0.970928, -0.129282, 0.201458,
		0.197143, 0.045488, 0.979319,
		39.897915, 38.965317, 40.041153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195301, 39.392578, 39.616879>,  <39.759914, 38.933475, 39.355629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195301, 39.392578, 39.616879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498127, 39.390743, 39.878204>,  <39.679825, 39.389641, 40.035000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498127, 39.390743, 39.878204>,  <39.195301, 39.392578, 39.616879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498127, 39.390743, 39.878204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111911, 0.984285, 0.136600,
		-0.643679, -0.176529, 0.744658,
		0.757069, -0.004591, 0.653318,
		39.725246, 39.389366, 40.074200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970898, 39.555199, 40.234402>,  <39.195301, 39.392578, 39.616879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970898, 39.555199, 40.234402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358166, 39.650646, 40.204182>,  <39.590527, 39.707916, 40.186050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358166, 39.650646, 40.204182>,  <38.970898, 39.555199, 40.234402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358166, 39.650646, 40.204182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231627, 0.968554, 0.090843,
		0.094855, -0.070452, 0.992995,
		0.968169, 0.238621, -0.075553,
		39.648617, 39.722233, 40.181515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058270, 40.091465, 40.650288>,  <38.970898, 39.555199, 40.234402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058270, 40.091465, 40.650288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416698, 40.109707, 40.473663>,  <39.631756, 40.120651, 40.367687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416698, 40.109707, 40.473663>,  <39.058270, 40.091465, 40.650288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416698, 40.109707, 40.473663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112180, 0.939160, 0.324644,
		0.429499, -0.340438, 0.836440,
		0.896073, 0.045603, -0.441559,
		39.685520, 40.123386, 40.341194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469044, 40.351006, 41.079845>,  <39.058270, 40.091465, 40.650288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469044, 40.351006, 41.079845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641880, 40.443089, 40.731064>,  <39.745583, 40.498337, 40.521793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.641880, 40.443089, 40.731064>,  <39.469044, 40.351006, 41.079845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641880, 40.443089, 40.731064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062641, 0.972197, 0.225629,
		0.899651, -0.042873, 0.434499,
		0.432092, 0.230205, -0.871953,
		39.771507, 40.512150, 40.469479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954010, 40.833076, 41.180035>,  <39.469044, 40.351006, 41.079845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954010, 40.833076, 41.180035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.884933, 40.904964, 40.792660>,  <39.843487, 40.948097, 40.560234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.884933, 40.904964, 40.792660>,  <39.954010, 40.833076, 41.180035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884933, 40.904964, 40.792660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015539, 0.983588, 0.179761,
		0.984854, 0.015994, -0.172646,
		-0.172688, 0.179721, -0.968442,
		39.833126, 40.958881, 40.502129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462875, 41.315460, 40.995235>,  <39.954010, 40.833076, 41.180035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462875, 41.315460, 40.995235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.145264, 41.347469, 40.754200>,  <39.954697, 41.366676, 40.609581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.145264, 41.347469, 40.754200>,  <40.462875, 41.315460, 40.995235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145264, 41.347469, 40.754200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014538, 0.993513, 0.112783,
		0.607702, 0.080793, -0.790045,
		-0.794032, 0.080024, -0.602585,
		39.907055, 41.371475, 40.573425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623493, 41.847530, 40.654198>,  <40.462875, 41.315460, 40.995235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623493, 41.847530, 40.654198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.226944, 41.825508, 40.606613>,  <39.989014, 41.812294, 40.578064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.226944, 41.825508, 40.606613>,  <40.623493, 41.847530, 40.654198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226944, 41.825508, 40.606613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081984, 0.968534, 0.234992,
		0.102281, 0.242717, -0.964690,
		-0.991371, -0.055054, -0.118962,
		39.929531, 41.808990, 40.570923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.826580, 40.975506, 40.448372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198437, 40.897301, 40.573292>,  <33.421551, 40.850376, 40.648243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198437, 40.897301, 40.573292>,  <32.826580, 40.975506, 40.448372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198437, 40.897301, 40.573292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014079, -0.828133, -0.560354,
		0.368186, 0.525327, -0.767118,
		0.929645, -0.195514, 0.312303,
		33.477329, 40.838646, 40.666985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157520, 40.784222, 39.880165>,  <32.826580, 40.975506, 40.448372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157520, 40.784222, 39.880165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412704, 40.666996, 40.165012>,  <33.565815, 40.596661, 40.335922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412704, 40.666996, 40.165012>,  <33.157520, 40.784222, 39.880165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412704, 40.666996, 40.165012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120192, -0.875523, -0.467989,
		0.760629, 0.384150, -0.523327,
		0.637963, -0.293067, 0.712120,
		33.604092, 40.579075, 40.378647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850945, 40.606049, 39.589767>,  <33.157520, 40.784222, 39.880165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850945, 40.606049, 39.589767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820164, 40.416279, 39.940540>,  <33.801697, 40.302418, 40.151005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820164, 40.416279, 39.940540>,  <33.850945, 40.606049, 39.589767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820164, 40.416279, 39.940540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164274, -0.873549, -0.458177,
		0.983409, 0.108800, 0.145154,
		-0.076949, -0.474420, 0.876929,
		33.797077, 40.273952, 40.203617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324265, 40.079197, 39.549618>,  <33.850945, 40.606049, 39.589767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324265, 40.079197, 39.549618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071545, 39.966057, 39.838291>,  <33.919914, 39.898170, 40.011494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071545, 39.966057, 39.838291>,  <34.324265, 40.079197, 39.549618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071545, 39.966057, 39.838291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147004, -0.957870, -0.246729,
		0.761064, -0.049793, 0.646762,
		-0.631799, -0.282854, 0.721681,
		33.882004, 39.881199, 40.054794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615631, 39.532421, 39.853405>,  <34.324265, 40.079197, 39.549618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615631, 39.532421, 39.853405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238754, 39.458748, 39.965363>,  <34.012627, 39.414543, 40.032539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238754, 39.458748, 39.965363>,  <34.615631, 39.532421, 39.853405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238754, 39.458748, 39.965363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142570, -0.976347, -0.162546,
		0.303214, -0.113245, 0.946170,
		-0.942197, -0.184182, 0.279897,
		33.956097, 39.403492, 40.049332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603806, 38.944687, 40.281921>,  <34.615631, 39.532421, 39.853405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603806, 38.944687, 40.281921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230762, 38.977291, 40.141293>,  <34.006939, 38.996853, 40.056915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230762, 38.977291, 40.141293>,  <34.603806, 38.944687, 40.281921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230762, 38.977291, 40.141293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033741, -0.950203, -0.309799,
		-0.359320, -0.300783, 0.883413,
		-0.932604, 0.081510, -0.351576,
		33.950981, 39.001743, 40.035820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288723, 38.350319, 40.505482>,  <34.603806, 38.944687, 40.281921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288723, 38.350319, 40.505482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.076942, 38.474213, 40.189571>,  <33.949875, 38.548550, 40.000027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.076942, 38.474213, 40.189571>,  <34.288723, 38.350319, 40.505482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076942, 38.474213, 40.189571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083190, -0.945435, -0.315012,
		-0.844250, -0.101083, 0.526331,
		-0.529455, 0.309735, -0.789774,
		33.918106, 38.567135, 39.952641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888088, 37.821930, 40.395981>,  <34.288723, 38.350319, 40.505482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888088, 37.821930, 40.395981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.859417, 38.027493, 40.054043>,  <33.842216, 38.150829, 39.848881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.859417, 38.027493, 40.054043>,  <33.888088, 37.821930, 40.395981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859417, 38.027493, 40.054043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114298, -0.855635, -0.504802,
		-0.990858, 0.061526, 0.120065,
		-0.071674, 0.513910, -0.854844,
		33.837914, 38.181667, 39.797588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393635, 37.512325, 40.127842>,  <33.888088, 37.821930, 40.395981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393635, 37.512325, 40.127842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524170, 37.705875, 39.803036>,  <33.602493, 37.822006, 39.608150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524170, 37.705875, 39.803036>,  <33.393635, 37.512325, 40.127842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524170, 37.705875, 39.803036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284956, -0.768722, -0.572596,
		-0.901278, 0.418250, -0.112983,
		0.326341, 0.483872, -0.812015,
		33.622074, 37.851036, 39.559433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863430, 37.391384, 39.603451>,  <33.393635, 37.512325, 40.127842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863430, 37.391384, 39.603451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194935, 37.505779, 39.411049>,  <33.393837, 37.574417, 39.295609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194935, 37.505779, 39.411049>,  <32.863430, 37.391384, 39.603451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194935, 37.505779, 39.411049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228751, -0.611322, -0.757600,
		-0.510713, 0.737900, -0.441220,
		0.828761, 0.285987, -0.481006,
		33.443562, 37.591576, 39.266747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654305, 37.429169, 38.916862>,  <32.863430, 37.391384, 39.603451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654305, 37.429169, 38.916862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.051437, 37.427216, 38.869102>,  <33.289719, 37.426044, 38.840446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.051437, 37.427216, 38.869102>,  <32.654305, 37.429169, 38.916862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051437, 37.427216, 38.869102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086836, -0.715930, -0.692750,
		-0.082096, 0.698154, -0.711225,
		0.992834, -0.004888, -0.119400,
		33.349289, 37.425751, 38.833282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749672, 37.541759, 38.170967>,  <32.654305, 37.429169, 38.916862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749672, 37.541759, 38.170967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050343, 37.339119, 38.339886>,  <33.230743, 37.217533, 38.441238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050343, 37.339119, 38.339886>,  <32.749672, 37.541759, 38.170967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050343, 37.339119, 38.339886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106854, -0.725384, -0.680000,
		0.650818, 0.466016, -0.599387,
		0.751677, -0.506603, 0.422297,
		33.275845, 37.187138, 38.466576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995872, 37.212212, 37.685127>,  <32.749672, 37.541759, 38.170967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995872, 37.212212, 37.685127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.174870, 37.014217, 37.983051>,  <33.282269, 36.895420, 38.161804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.174870, 37.014217, 37.983051>,  <32.995872, 37.212212, 37.685127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174870, 37.014217, 37.983051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114399, -0.857694, -0.501273,
		0.886939, 0.139112, -0.440440,
		0.447495, -0.494984, 0.744808,
		33.309116, 36.865723, 38.206493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610813, 36.842026, 37.433537>,  <32.995872, 37.212212, 37.685127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610813, 36.842026, 37.433537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486473, 36.673260, 37.774208>,  <33.411869, 36.572002, 37.978611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486473, 36.673260, 37.774208>,  <33.610813, 36.842026, 37.433537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486473, 36.673260, 37.774208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132838, -0.867994, -0.478477,
		0.941130, -0.261871, 0.213772,
		-0.310852, -0.421912, 0.851681,
		33.393219, 36.546688, 38.029713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232838, 37.383133, 37.531227>,  <33.610813, 36.842026, 37.433537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232838, 37.383133, 37.531227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.494617, 37.473587, 37.242626>,  <34.651684, 37.527859, 37.069466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.494617, 37.473587, 37.242626>,  <34.232838, 37.383133, 37.531227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494617, 37.473587, 37.242626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097245, 0.921132, 0.376908,
		0.749826, -0.316829, 0.580844,
		0.654449, 0.226131, -0.721499,
		34.690952, 37.541428, 37.026176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853779, 37.872986, 37.877495>,  <34.232838, 37.383133, 37.531227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853779, 37.872986, 37.877495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831760, 37.927448, 37.481831>,  <34.818550, 37.960125, 37.244434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.831760, 37.927448, 37.481831>,  <34.853779, 37.872986, 37.877495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831760, 37.927448, 37.481831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089845, 0.987315, 0.130906,
		0.994434, -0.081665, -0.066578,
		-0.055043, 0.136160, -0.989157,
		34.815247, 37.968296, 37.185085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389965, 38.235390, 37.646900>,  <34.853779, 37.872986, 37.877495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389965, 38.235390, 37.646900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124043, 38.325825, 37.362106>,  <34.964489, 38.380085, 37.191231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124043, 38.325825, 37.362106>,  <35.389965, 38.235390, 37.646900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124043, 38.325825, 37.362106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230340, 0.968701, 0.092527,
		0.710616, -0.102485, -0.696076,
		-0.664807, 0.226086, -0.711981,
		34.924599, 38.393650, 37.148514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682114, 38.927502, 37.346600>,  <35.389965, 38.235390, 37.646900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682114, 38.927502, 37.346600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.305305, 38.882721, 37.220062>,  <35.079220, 38.855850, 37.144142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.305305, 38.882721, 37.220062>,  <35.682114, 38.927502, 37.346600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305305, 38.882721, 37.220062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093586, 0.992951, -0.072728,
		0.322253, -0.038906, -0.945854,
		-0.942016, -0.111956, -0.316340,
		35.022701, 38.849133, 37.125160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589622, 39.548515, 36.969078>,  <35.682114, 38.927502, 37.346600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589622, 39.548515, 36.969078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217819, 39.432007, 37.059566>,  <34.994736, 39.362103, 37.113857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217819, 39.432007, 37.059566>,  <35.589622, 39.548515, 36.969078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217819, 39.432007, 37.059566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261187, 0.952956, 0.153805,
		-0.260376, 0.083877, -0.961857,
		-0.929508, -0.291272, 0.226219,
		34.938965, 39.344624, 37.127434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120228, 39.958630, 36.644379>,  <35.589622, 39.548515, 36.969078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120228, 39.958630, 36.644379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919731, 39.824989, 36.963661>,  <34.799435, 39.744804, 37.155231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919731, 39.824989, 36.963661>,  <35.120228, 39.958630, 36.644379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919731, 39.824989, 36.963661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200478, 0.942195, 0.268473,
		-0.841764, -0.025454, -0.539245,
		-0.501240, -0.334097, 0.798209,
		34.769360, 39.724762, 37.203125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627121, 40.464149, 36.625126>,  <35.120228, 39.958630, 36.644379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627121, 40.464149, 36.625126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621120, 40.302517, 36.990967>,  <34.617519, 40.205536, 37.210472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621120, 40.302517, 36.990967>,  <34.627121, 40.464149, 36.625126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621120, 40.302517, 36.990967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015853, 0.914684, 0.403859,
		-0.999762, -0.008439, -0.020132,
		-0.015006, -0.404082, 0.914600,
		34.616619, 40.181293, 37.265347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320190, 40.989872, 37.047794>,  <34.627121, 40.464149, 36.625126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320190, 40.989872, 37.047794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495564, 40.739910, 37.306179>,  <34.600788, 40.589931, 37.461208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495564, 40.739910, 37.306179>,  <34.320190, 40.989872, 37.047794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495564, 40.739910, 37.306179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320393, 0.780177, 0.537282,
		-0.839715, -0.028602, 0.542273,
		0.438436, -0.624904, 0.645963,
		34.627094, 40.552441, 37.499969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027580, 41.223129, 37.631023>,  <34.320190, 40.989872, 37.047794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027580, 41.223129, 37.631023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.362015, 41.028877, 37.733101>,  <34.562675, 40.912327, 37.794346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.362015, 41.028877, 37.733101>,  <34.027580, 41.223129, 37.631023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362015, 41.028877, 37.733101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245459, 0.747162, 0.617656,
		-0.490620, -0.453776, 0.743894,
		0.836087, -0.485630, 0.255190,
		34.612843, 40.883190, 37.809658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058296, 41.128605, 38.340065>,  <34.027580, 41.223129, 37.631023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058296, 41.128605, 38.340065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437313, 41.071167, 38.225842>,  <34.664722, 41.036705, 38.157307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437313, 41.071167, 38.225842>,  <34.058296, 41.128605, 38.340065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437313, 41.071167, 38.225842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302596, 0.690751, 0.656733,
		0.102949, -0.708692, 0.697967,
		0.947543, -0.143593, -0.285559,
		34.721577, 41.028088, 38.140175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533913, 40.912994, 38.943214>,  <34.058296, 41.128605, 38.340065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533913, 40.912994, 38.943214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.736916, 41.079994, 38.641716>,  <34.858719, 41.180195, 38.460815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.736916, 41.079994, 38.641716>,  <34.533913, 40.912994, 38.943214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736916, 41.079994, 38.641716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347823, 0.701070, 0.622511,
		0.788326, -0.578099, 0.210582,
		0.507506, 0.417496, -0.753747,
		34.889168, 41.205242, 38.415592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198734, 41.077000, 39.251213>,  <34.533913, 40.912994, 38.943214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198734, 41.077000, 39.251213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170197, 41.313145, 38.929623>,  <35.153072, 41.454830, 38.736668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170197, 41.313145, 38.929623>,  <35.198734, 41.077000, 39.251213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170197, 41.313145, 38.929623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200688, 0.798046, 0.568196,
		0.977054, -0.120811, -0.175415,
		-0.071345, 0.590362, -0.803979,
		35.148792, 41.490253, 38.688431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638027, 41.553810, 39.350891>,  <35.198734, 41.077000, 39.251213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638027, 41.553810, 39.350891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464001, 41.758480, 39.054539>,  <35.359585, 41.881283, 38.876728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464001, 41.758480, 39.054539>,  <35.638027, 41.553810, 39.350891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464001, 41.758480, 39.054539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171276, 0.854844, 0.489801,
		0.883959, 0.086200, -0.459550,
		-0.435065, 0.511674, -0.740883,
		35.333481, 41.911983, 38.832275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120293, 42.084885, 39.174820>,  <35.638027, 41.553810, 39.350891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120293, 42.084885, 39.174820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757683, 42.201408, 39.052608>,  <35.540115, 42.271320, 38.979282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757683, 42.201408, 39.052608>,  <36.120293, 42.084885, 39.174820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757683, 42.201408, 39.052608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056334, 0.800757, 0.596335,
		0.418370, 0.523382, -0.742319,
		-0.906528, 0.291307, -0.305528,
		35.485725, 42.288799, 38.960949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740837, 42.428104, 38.822044>,  <36.120293, 42.084885, 39.174820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740837, 42.428104, 38.822044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.125221, 42.537361, 38.839703>,  <37.355850, 42.602913, 38.850300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.125221, 42.537361, 38.839703>,  <36.740837, 42.428104, 38.822044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125221, 42.537361, 38.839703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250878, -0.792879, -0.555341,
		-0.116681, 0.544737, -0.830450,
		0.960961, 0.273139, 0.044149,
		37.413509, 42.619305, 38.852947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956108, 42.212444, 38.158833>,  <36.740837, 42.428104, 38.822044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956108, 42.212444, 38.158833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.296455, 42.287994, 38.354939>,  <37.500664, 42.333324, 38.472603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.296455, 42.287994, 38.354939>,  <36.956108, 42.212444, 38.158833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296455, 42.287994, 38.354939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438177, -0.769966, -0.463846,
		0.289877, 0.609492, -0.737897,
		0.850866, 0.188871, 0.490261,
		37.551716, 42.344654, 38.502018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366871, 42.152245, 37.692738>,  <36.956108, 42.212444, 38.158833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366871, 42.152245, 37.692738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.590176, 42.122440, 38.023262>,  <37.724159, 42.104557, 38.221577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.590176, 42.122440, 38.023262>,  <37.366871, 42.152245, 37.692738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590176, 42.122440, 38.023262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511949, -0.752804, -0.413756,
		0.652881, 0.654014, -0.382115,
		0.558260, -0.074510, 0.826313,
		37.757652, 42.100086, 38.271156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006214, 42.306332, 37.480904>,  <37.366871, 42.152245, 37.692738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006214, 42.306332, 37.480904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015076, 42.080685, 37.811062>,  <38.020393, 41.945297, 38.009159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.015076, 42.080685, 37.811062>,  <38.006214, 42.306332, 37.480904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015076, 42.080685, 37.811062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458665, -0.727855, -0.509759,
		0.888333, 0.389873, 0.242617,
		0.022152, -0.564115, 0.825399,
		38.021721, 41.911449, 38.058681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570473, 41.948639, 37.390285>,  <38.006214, 42.306332, 37.480904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570473, 41.948639, 37.390285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384544, 41.735909, 37.673439>,  <38.272987, 41.608269, 37.843330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384544, 41.735909, 37.673439>,  <38.570473, 41.948639, 37.390285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384544, 41.735909, 37.673439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412364, -0.837533, -0.358461,
		0.783514, 0.125284, 0.608612,
		-0.464823, -0.531829, 0.707882,
		38.245098, 41.576359, 37.885803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050636, 41.493015, 37.613537>,  <38.570473, 41.948639, 37.390285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050636, 41.493015, 37.613537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.700619, 41.329987, 37.717983>,  <38.490608, 41.232170, 37.780651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.700619, 41.329987, 37.717983>,  <39.050636, 41.493015, 37.613537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700619, 41.329987, 37.717983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319514, -0.891587, -0.320910,
		0.363599, -0.197381, 0.910404,
		-0.875046, -0.407570, 0.261115,
		38.438107, 41.207714, 37.796318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216911, 40.835022, 37.760403>,  <39.050636, 41.493015, 37.613537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216911, 40.835022, 37.760403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819653, 40.806324, 37.723492>,  <38.581299, 40.789104, 37.701347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819653, 40.806324, 37.723492>,  <39.216911, 40.835022, 37.760403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819653, 40.806324, 37.723492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109345, -0.849174, -0.516669,
		-0.041289, -0.523218, 0.851198,
		-0.993146, -0.071742, -0.092273,
		38.521709, 40.784801, 37.695808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989597, 40.295010, 38.015011>,  <39.216911, 40.835022, 37.760403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989597, 40.295010, 38.015011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.713097, 40.383793, 37.739937>,  <38.547195, 40.437061, 37.574894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.713097, 40.383793, 37.739937>,  <38.989597, 40.295010, 38.015011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713097, 40.383793, 37.739937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250489, -0.819052, -0.516148,
		-0.677810, -0.529045, 0.510573,
		-0.691251, 0.221958, -0.687681,
		38.505722, 40.450378, 37.533634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693085, 39.594158, 37.839539>,  <38.989597, 40.295010, 38.015011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693085, 39.594158, 37.839539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567596, 39.841335, 37.551170>,  <38.492306, 39.989643, 37.378151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567596, 39.841335, 37.551170>,  <38.693085, 39.594158, 37.839539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567596, 39.841335, 37.551170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086757, -0.737417, -0.669842,
		-0.945545, -0.272685, 0.177728,
		-0.313716, 0.617947, -0.720919,
		38.473480, 40.026718, 37.334896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201588, 39.216911, 37.480530>,  <38.693085, 39.594158, 37.839539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201588, 39.216911, 37.480530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.305454, 39.526245, 37.249176>,  <38.367775, 39.711845, 37.110363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.305454, 39.526245, 37.249176>,  <38.201588, 39.216911, 37.480530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305454, 39.526245, 37.249176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205635, -0.629469, -0.749322,
		-0.943552, 0.075635, -0.322474,
		0.259662, 0.773336, -0.578384,
		38.383354, 39.758247, 37.075661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944401, 38.954441, 36.885391>,  <38.201588, 39.216911, 37.480530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944401, 38.954441, 36.885391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221897, 39.231808, 36.807526>,  <38.388397, 39.398228, 36.760807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221897, 39.231808, 36.807526>,  <37.944401, 38.954441, 36.885391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221897, 39.231808, 36.807526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355700, -0.564890, -0.744565,
		-0.626255, 0.447297, -0.638538,
		0.693745, 0.693415, -0.194661,
		38.430019, 39.439831, 36.749126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021523, 39.050621, 36.185135>,  <37.944401, 38.954441, 36.885391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021523, 39.050621, 36.185135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368958, 39.202663, 36.312309>,  <38.577419, 39.293888, 36.388615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368958, 39.202663, 36.312309>,  <38.021523, 39.050621, 36.185135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368958, 39.202663, 36.312309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470999, -0.433836, -0.768079,
		-0.154018, 0.816889, -0.555851,
		0.868584, 0.380104, 0.317936,
		38.629532, 39.316696, 36.407688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321144, 39.283154, 35.584846>,  <38.021523, 39.050621, 36.185135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321144, 39.283154, 35.584846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601562, 39.251297, 35.868309>,  <38.769814, 39.232182, 36.038387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601562, 39.251297, 35.868309>,  <38.321144, 39.283154, 35.584846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601562, 39.251297, 35.868309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532388, -0.602701, -0.594403,
		0.474447, 0.793983, -0.380120,
		0.701044, -0.079641, 0.708656,
		38.811874, 39.227406, 36.080906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892185, 39.349964, 35.243275>,  <38.321144, 39.283154, 35.584846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892185, 39.349964, 35.243275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.988194, 39.154102, 35.578568>,  <39.045799, 39.036583, 35.779743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.988194, 39.154102, 35.578568>,  <38.892185, 39.349964, 35.243275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988194, 39.154102, 35.578568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485552, -0.687147, -0.540434,
		0.840613, 0.536717, 0.072826,
		0.240018, -0.489657, 0.838229,
		39.060200, 39.007206, 35.830036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.185328, 40.223518, 30.631756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902370, 40.476093, 30.504709>,  <29.732595, 40.627640, 30.428482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902370, 40.476093, 30.504709>,  <30.185328, 40.223518, 30.631756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902370, 40.476093, 30.504709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698413, -0.555338, 0.451463,
		0.108686, 0.541190, 0.833847,
		-0.707394, 0.631437, -0.317617,
		29.690153, 40.665524, 30.409424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820026, 40.555119, 31.194254>,  <30.185328, 40.223518, 30.631756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820026, 40.555119, 31.194254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587580, 40.557323, 30.868734>,  <29.448111, 40.558647, 30.673422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587580, 40.557323, 30.868734>,  <29.820026, 40.555119, 31.194254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587580, 40.557323, 30.868734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722479, -0.463783, 0.512767,
		-0.374600, 0.885932, 0.273495,
		-0.581119, 0.005511, -0.813800,
		29.413244, 40.558975, 30.624594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275434, 40.853455, 31.430555>,  <29.820026, 40.555119, 31.194254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275434, 40.853455, 31.430555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.147284, 40.634178, 31.121532>,  <29.070393, 40.502613, 30.936119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.147284, 40.634178, 31.121532>,  <29.275434, 40.853455, 31.430555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147284, 40.634178, 31.121532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823846, -0.241316, 0.512879,
		-0.467585, 0.800785, -0.374310,
		-0.320378, -0.548188, -0.772559,
		29.051170, 40.469723, 30.889765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483934, 40.647091, 31.638502>,  <29.275434, 40.853455, 31.430555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483934, 40.647091, 31.638502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.612909, 40.396351, 31.354786>,  <28.690294, 40.245907, 31.184557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.612909, 40.396351, 31.354786>,  <28.483934, 40.647091, 31.638502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612909, 40.396351, 31.354786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611322, -0.709992, 0.349567,
		-0.722717, 0.320891, -0.612135,
		0.322438, -0.626849, -0.709291,
		28.709641, 40.208298, 31.141998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837315, 40.233459, 31.333418>,  <28.483934, 40.647091, 31.638502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837315, 40.233459, 31.333418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136524, 40.012112, 31.186861>,  <28.316050, 39.879303, 31.098927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136524, 40.012112, 31.186861>,  <27.837315, 40.233459, 31.333418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136524, 40.012112, 31.186861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540247, -0.828365, 0.148140,
		-0.385482, 0.087130, -0.918593,
		0.748022, -0.553372, -0.366391,
		28.360931, 39.846100, 31.076944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565029, 39.809517, 30.890459>,  <27.837315, 40.233459, 31.333418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565029, 39.809517, 30.890459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.884481, 39.623409, 31.043146>,  <28.076153, 39.511745, 31.134758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.884481, 39.623409, 31.043146>,  <27.565029, 39.809517, 30.890459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884481, 39.623409, 31.043146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581805, -0.759110, 0.291985,
		0.153914, -0.455275, -0.876947,
		0.798632, -0.465271, 0.381719,
		28.124071, 39.483829, 31.157661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347780, 39.132469, 30.806868>,  <27.565029, 39.809517, 30.890459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347780, 39.132469, 30.806868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670195, 39.073349, 31.036114>,  <27.863644, 39.037876, 31.173660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670195, 39.073349, 31.036114>,  <27.347780, 39.132469, 30.806868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670195, 39.073349, 31.036114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493418, -0.702577, 0.512761,
		0.326870, -0.696089, -0.639231,
		0.806036, -0.147802, 0.573115,
		27.912006, 39.029007, 31.208048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448801, 38.412022, 30.874117>,  <27.347780, 39.132469, 30.806868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448801, 38.412022, 30.874117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.633423, 38.593971, 31.178762>,  <27.744196, 38.703140, 31.361549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.633423, 38.593971, 31.178762>,  <27.448801, 38.412022, 30.874117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633423, 38.593971, 31.178762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405710, -0.655253, 0.637215,
		0.788901, -0.603106, -0.117890,
		0.461556, 0.454871, 0.761616,
		27.771889, 38.730431, 31.407248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740425, 37.877262, 31.272022>,  <27.448801, 38.412022, 30.874117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740425, 37.877262, 31.272022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739267, 38.180920, 31.532389>,  <27.738573, 38.363113, 31.688608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739267, 38.180920, 31.532389>,  <27.740425, 37.877262, 31.272022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739267, 38.180920, 31.532389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326128, -0.616045, 0.717028,
		0.945321, -0.210205, 0.249362,
		-0.002895, 0.759146, 0.650914,
		27.738400, 38.408665, 31.727663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893999, 37.535351, 31.781408>,  <27.740425, 37.877262, 31.272022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893999, 37.535351, 31.781408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745197, 37.872971, 31.935913>,  <27.655916, 38.075542, 32.028614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745197, 37.872971, 31.935913>,  <27.893999, 37.535351, 31.781408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745197, 37.872971, 31.935913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402385, -0.521632, 0.752321,
		0.836479, 0.124443, 0.533682,
		-0.372006, 0.844046, 0.386260,
		27.633595, 38.126186, 32.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065744, 37.499931, 32.497349>,  <27.893999, 37.535351, 31.781408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065744, 37.499931, 32.497349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765936, 37.763180, 32.468792>,  <27.586050, 37.921127, 32.451656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765936, 37.763180, 32.468792>,  <28.065744, 37.499931, 32.497349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765936, 37.763180, 32.468792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367568, -0.324051, 0.871713,
		0.550554, 0.679612, 0.484787,
		-0.749522, 0.658118, -0.071396,
		27.541079, 37.960613, 32.447372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103186, 37.920185, 33.025276>,  <28.065744, 37.499931, 32.497349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103186, 37.920185, 33.025276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716721, 37.938011, 32.923653>,  <27.484842, 37.948708, 32.862679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716721, 37.938011, 32.923653>,  <28.103186, 37.920185, 33.025276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716721, 37.938011, 32.923653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251303, -0.384651, 0.888195,
		-0.058140, 0.921986, 0.382835,
		-0.966161, 0.044568, -0.254062,
		27.426872, 37.951382, 32.847435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679346, 38.295315, 33.554714>,  <28.103186, 37.920185, 33.025276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679346, 38.295315, 33.554714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409863, 38.074814, 33.357845>,  <27.248173, 37.942513, 33.239723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409863, 38.074814, 33.357845>,  <27.679346, 38.295315, 33.554714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409863, 38.074814, 33.357845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406149, -0.280200, 0.869788,
		-0.617379, 0.785881, -0.035116,
		-0.673711, -0.551251, -0.492175,
		27.207748, 37.909439, 33.210194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205666, 38.401154, 34.002655>,  <27.679346, 38.295315, 33.554714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205666, 38.401154, 34.002655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100754, 38.075256, 33.795811>,  <27.037807, 37.879719, 33.671703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100754, 38.075256, 33.795811>,  <27.205666, 38.401154, 34.002655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100754, 38.075256, 33.795811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407587, -0.392190, 0.824658,
		-0.874691, 0.427055, -0.229217,
		-0.262278, -0.814746, -0.517107,
		27.022070, 37.830833, 33.640678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447197, 38.274521, 34.209957>,  <27.205666, 38.401154, 34.002655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447197, 38.274521, 34.209957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566566, 37.931156, 34.043068>,  <26.638187, 37.725136, 33.942936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566566, 37.931156, 34.043068>,  <26.447197, 38.274521, 34.209957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566566, 37.931156, 34.043068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553187, -0.511789, 0.657310,
		-0.777771, 0.034644, -0.627592,
		0.298423, -0.858412, -0.417220,
		26.656094, 37.673634, 33.917904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866016, 37.895065, 34.296078>,  <26.447197, 38.274521, 34.209957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866016, 37.895065, 34.296078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.133682, 37.609753, 34.212704>,  <26.294281, 37.438564, 34.162678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.133682, 37.609753, 34.212704>,  <25.866016, 37.895065, 34.296078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133682, 37.609753, 34.212704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490069, -0.634435, 0.597766,
		-0.558616, -0.297855, -0.774100,
		0.669163, -0.713284, -0.208437,
		26.334431, 37.395767, 34.150173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474138, 37.256653, 34.134815>,  <25.866016, 37.895065, 34.296078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474138, 37.256653, 34.134815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.845350, 37.184486, 34.265175>,  <26.068077, 37.141186, 34.343391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.845350, 37.184486, 34.265175>,  <25.474138, 37.256653, 34.134815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845350, 37.184486, 34.265175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356616, -0.683082, 0.637357,
		0.107623, -0.707707, -0.698261,
		0.928032, -0.180416, 0.325895,
		26.123760, 37.130360, 34.362942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437220, 36.497120, 34.269024>,  <25.474138, 37.256653, 34.134815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437220, 36.497120, 34.269024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.756565, 36.651386, 34.454014>,  <25.948172, 36.743946, 34.565006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.756565, 36.651386, 34.454014>,  <25.437220, 36.497120, 34.269024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756565, 36.651386, 34.454014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117496, -0.653470, 0.747778,
		0.590605, -0.651336, -0.476391,
		0.798361, 0.385667, 0.462472,
		25.996073, 36.767086, 34.592754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706413, 35.915665, 34.565201>,  <25.437220, 36.497120, 34.269024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706413, 35.915665, 34.565201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.870922, 36.216896, 34.770622>,  <25.969627, 36.397633, 34.893875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.870922, 36.216896, 34.770622>,  <25.706413, 35.915665, 34.565201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870922, 36.216896, 34.770622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041408, -0.578258, 0.814802,
		0.910571, -0.313841, -0.269005,
		0.411273, 0.753075, 0.513549,
		25.994305, 36.442818, 34.924686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259253, 35.719791, 34.815590>,  <25.706413, 35.915665, 34.565201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259253, 35.719791, 34.815590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188519, 36.014011, 35.077183>,  <26.146078, 36.190544, 35.234138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188519, 36.014011, 35.077183>,  <26.259253, 35.719791, 34.815590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188519, 36.014011, 35.077183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136568, -0.639693, 0.756401,
		0.974720, 0.223070, 0.012667,
		-0.176833, 0.735549, 0.653986,
		26.135469, 36.234676, 35.273380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721066, 35.604973, 35.265415>,  <26.259253, 35.719791, 34.815590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721066, 35.604973, 35.265415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480909, 35.839329, 35.483135>,  <26.336817, 35.979942, 35.613770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480909, 35.839329, 35.483135>,  <26.721066, 35.604973, 35.265415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480909, 35.839329, 35.483135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213650, -0.538373, 0.815174,
		0.770640, 0.605712, 0.198057,
		-0.600389, 0.585891, 0.544302,
		26.300793, 36.015095, 35.646427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280991, 35.750111, 35.752975>,  <26.721066, 35.604973, 35.265415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280991, 35.750111, 35.752975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.636789, 35.573185, 35.798855>,  <27.850267, 35.467030, 35.826382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.636789, 35.573185, 35.798855>,  <27.280991, 35.750111, 35.752975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636789, 35.573185, 35.798855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260104, 0.283732, -0.922953,
		0.375692, 0.850796, 0.367426,
		0.889495, -0.442315, 0.114699,
		27.903637, 35.440491, 35.833263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684053, 36.228447, 35.509640>,  <27.280991, 35.750111, 35.752975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684053, 36.228447, 35.509640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889898, 35.885601, 35.500431>,  <28.013405, 35.679893, 35.494907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889898, 35.885601, 35.500431>,  <27.684053, 36.228447, 35.509640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889898, 35.885601, 35.500431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300318, 0.205330, -0.931477,
		0.803108, 0.472436, 0.363072,
		0.514613, -0.857113, -0.023021,
		28.044283, 35.628468, 35.493526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354618, 36.501625, 35.305504>,  <27.684053, 36.228447, 35.509640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354618, 36.501625, 35.305504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345083, 36.107479, 35.237984>,  <28.339363, 35.870991, 35.197472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.345083, 36.107479, 35.237984>,  <28.354618, 36.501625, 35.305504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345083, 36.107479, 35.237984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134684, 0.164144, -0.977199,
		0.990602, -0.046027, 0.128800,
		-0.023836, -0.985362, -0.168801,
		28.337933, 35.811871, 35.187344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065708, 36.305214, 35.083050>,  <28.354618, 36.501625, 35.305504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065708, 36.305214, 35.083050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.830791, 36.005848, 34.959782>,  <28.689842, 35.826229, 34.885818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.830791, 36.005848, 34.959782>,  <29.065708, 36.305214, 35.083050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830791, 36.005848, 34.959782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357567, 0.101672, -0.928337,
		0.726109, -0.655396, 0.207896,
		-0.587291, -0.748411, -0.308173,
		28.654604, 35.781326, 34.867329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513346, 36.012066, 34.609406>,  <29.065708, 36.305214, 35.083050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513346, 36.012066, 34.609406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166197, 35.839092, 34.511593>,  <28.957909, 35.735306, 34.452904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166197, 35.839092, 34.511593>,  <29.513346, 36.012066, 34.609406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166197, 35.839092, 34.511593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229813, 0.086930, -0.969345,
		0.440440, -0.897463, 0.023936,
		-0.867870, -0.432439, -0.244536,
		28.905836, 35.709362, 34.438232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680984, 35.447666, 34.098534>,  <29.513346, 36.012066, 34.609406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680984, 35.447666, 34.098534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303230, 35.565590, 34.040253>,  <29.076578, 35.636345, 34.005283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303230, 35.565590, 34.040253>,  <29.680984, 35.447666, 34.098534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303230, 35.565590, 34.040253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185984, 0.113415, -0.975985,
		-0.271201, -0.948803, -0.161936,
		-0.944383, 0.294806, -0.145704,
		29.019915, 35.654030, 33.996540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507790, 35.142975, 33.441036>,  <29.680984, 35.447666, 34.098534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507790, 35.142975, 33.441036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.259783, 35.450630, 33.503002>,  <29.110979, 35.635223, 33.540184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.259783, 35.450630, 33.503002>,  <29.507790, 35.142975, 33.441036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259783, 35.450630, 33.503002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144758, 0.306203, -0.940896,
		-0.771117, -0.560948, -0.301191,
		-0.620019, 0.769141, 0.154917,
		29.073776, 35.681374, 33.549477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123810, 35.177883, 32.841724>,  <29.507790, 35.142975, 33.441036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123810, 35.177883, 32.841724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.126949, 35.529762, 33.031910>,  <29.128834, 35.740891, 33.146019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.126949, 35.529762, 33.031910>,  <29.123810, 35.177883, 32.841724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126949, 35.529762, 33.031910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254533, 0.458056, -0.851703,
		-0.967032, 0.127707, -0.220317,
		0.007850, 0.879702, 0.475461,
		29.129305, 35.793674, 33.174549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895615, 35.630135, 32.316101>,  <29.123810, 35.177883, 32.841724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895615, 35.630135, 32.316101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047752, 35.887192, 32.582138>,  <29.139036, 36.041424, 32.741760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047752, 35.887192, 32.582138>,  <28.895615, 35.630135, 32.316101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047752, 35.887192, 32.582138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278085, 0.606395, -0.744952,
		-0.882046, 0.468293, 0.051932,
		0.380347, 0.642641, 0.665093,
		29.161856, 36.079983, 32.781666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866917, 36.251740, 31.878559>,  <28.895615, 35.630135, 32.316101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866917, 36.251740, 31.878559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075821, 36.339142, 32.208286>,  <29.201162, 36.391582, 32.406124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075821, 36.339142, 32.208286>,  <28.866917, 36.251740, 31.878559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075821, 36.339142, 32.208286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421947, 0.773796, -0.472441,
		-0.741084, 0.594556, 0.311926,
		0.522259, 0.218502, 0.824319,
		29.232498, 36.404694, 32.455582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810274, 36.928463, 31.950407>,  <28.866917, 36.251740, 31.878559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810274, 36.928463, 31.950407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145323, 36.830795, 32.145863>,  <29.346352, 36.772194, 32.263138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145323, 36.830795, 32.145863>,  <28.810274, 36.928463, 31.950407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145323, 36.830795, 32.145863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463268, 0.791510, -0.398616,
		-0.289433, 0.560261, 0.776103,
		0.837623, -0.244171, 0.488640,
		29.396610, 36.757545, 32.292454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106060, 37.541306, 32.246239>,  <28.810274, 36.928463, 31.950407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106060, 37.541306, 32.246239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414629, 37.288097, 32.220352>,  <29.599771, 37.136173, 32.204823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414629, 37.288097, 32.220352>,  <29.106060, 37.541306, 32.246239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414629, 37.288097, 32.220352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568175, 0.731027, -0.377859,
		0.286501, 0.254721, 0.923599,
		0.771424, -0.633022, -0.064714,
		29.646057, 37.098190, 32.200939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718025, 37.815662, 32.665413>,  <29.106060, 37.541306, 32.246239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718025, 37.815662, 32.665413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854259, 37.566368, 32.383823>,  <29.936001, 37.416790, 32.214870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854259, 37.566368, 32.383823>,  <29.718025, 37.815662, 32.665413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854259, 37.566368, 32.383823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694535, 0.671447, -0.258418,
		0.633736, -0.400920, 0.661545,
		0.340588, -0.623235, -0.703973,
		29.956436, 37.379398, 32.172630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385397, 37.884022, 32.759972>,  <29.718025, 37.815662, 32.665413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385397, 37.884022, 32.759972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.330503, 37.746281, 32.388470>,  <30.297567, 37.663635, 32.165569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.330503, 37.746281, 32.388470>,  <30.385397, 37.884022, 32.759972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330503, 37.746281, 32.388470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640349, 0.684512, -0.348419,
		0.755725, -0.642542, 0.126570,
		-0.137235, -0.344358, -0.928754,
		30.289333, 37.642975, 32.109844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047590, 37.925945, 32.483307>,  <30.385397, 37.884022, 32.759972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047590, 37.925945, 32.483307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.812651, 37.875397, 32.163544>,  <30.671688, 37.845070, 31.971685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.812651, 37.875397, 32.163544>,  <31.047590, 37.925945, 32.483307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812651, 37.875397, 32.163544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598760, 0.596710, -0.534251,
		0.544525, -0.792446, -0.274814,
		-0.587349, -0.126366, -0.799408,
		30.636446, 37.837486, 31.923721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489670, 37.904552, 32.064796>,  <31.047590, 37.925945, 32.483307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489670, 37.904552, 32.064796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.168455, 37.948227, 31.830462>,  <30.975727, 37.974434, 31.689859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.168455, 37.948227, 31.830462>,  <31.489670, 37.904552, 32.064796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168455, 37.948227, 31.830462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559319, 0.477353, -0.677714,
		0.205653, -0.871901, -0.444405,
		-0.803037, 0.109191, -0.585840,
		30.927544, 37.980984, 31.654709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714756, 37.714973, 31.355539>,  <31.489670, 37.904552, 32.064796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714756, 37.714973, 31.355539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391014, 37.944424, 31.305105>,  <31.196770, 38.082092, 31.274845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391014, 37.944424, 31.305105>,  <31.714756, 37.714973, 31.355539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391014, 37.944424, 31.305105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487272, 0.535976, -0.689417,
		-0.327888, -0.619421, -0.713307,
		-0.809355, 0.573626, -0.126086,
		31.148207, 38.116512, 31.267279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635601, 37.848999, 30.580200>,  <31.714756, 37.714973, 31.355539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635601, 37.848999, 30.580200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.435339, 38.136688, 30.772890>,  <31.315182, 38.309303, 30.888504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.435339, 38.136688, 30.772890>,  <31.635601, 37.848999, 30.580200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435339, 38.136688, 30.772890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471275, 0.693254, -0.545252,
		-0.726117, -0.045958, -0.686033,
		-0.500654, 0.719227, 0.481725,
		31.285143, 38.352455, 30.917408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213448, 38.226978, 30.072227>,  <31.635601, 37.848999, 30.580200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213448, 38.226978, 30.072227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256254, 38.469486, 30.387438>,  <31.281939, 38.614990, 30.576565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256254, 38.469486, 30.387438>,  <31.213448, 38.226978, 30.072227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256254, 38.469486, 30.387438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153627, 0.772976, -0.615555,
		-0.982317, 0.186936, -0.010419,
		0.107016, 0.606271, 0.788025,
		31.288359, 38.651367, 30.623846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009838, 38.859177, 29.808149>,  <31.213448, 38.226978, 30.072227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009838, 38.859177, 29.808149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.205540, 38.965645, 30.140362>,  <31.322960, 39.029526, 30.339689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.205540, 38.965645, 30.140362>,  <31.009838, 38.859177, 29.808149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205540, 38.965645, 30.140362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253882, 0.867583, -0.427602,
		-0.834371, 0.420063, 0.356892,
		0.489253, 0.266171, 0.830533,
		31.352316, 39.045498, 30.389523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695425, 39.522388, 30.054564>,  <31.009838, 38.859177, 29.808149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695425, 39.522388, 30.054564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067883, 39.488739, 30.196491>,  <31.291357, 39.468552, 30.281649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067883, 39.488739, 30.196491>,  <30.695425, 39.522388, 30.054564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067883, 39.488739, 30.196491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260992, 0.833286, -0.487358,
		-0.254670, 0.546405, 0.797863,
		0.931143, -0.084121, 0.354820,
		31.347225, 39.463501, 30.302937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.461792, 42.544998, 40.820435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.113541, 42.349297, 40.799900>,  <39.904591, 42.231876, 40.787579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.113541, 42.349297, 40.799900>,  <40.461792, 42.544998, 40.820435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113541, 42.349297, 40.799900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475665, 0.810608, 0.341552,
		-0.125494, 0.321783, -0.938460,
		-0.870629, -0.489255, -0.051334,
		39.852352, 42.202518, 40.784500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056164, 42.995373, 40.418324>,  <40.461792, 42.544998, 40.820435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056164, 42.995373, 40.418324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816730, 42.770000, 40.646095>,  <39.673073, 42.634777, 40.782757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816730, 42.770000, 40.646095>,  <40.056164, 42.995373, 40.418324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816730, 42.770000, 40.646095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494426, 0.819140, 0.290781,
		-0.630274, -0.107483, -0.768896,
		-0.598579, -0.563434, 0.569425,
		39.637157, 42.600971, 40.816921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344810, 43.138428, 40.317444>,  <40.056164, 42.995373, 40.418324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344810, 43.138428, 40.317444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.379498, 42.994656, 40.689098>,  <39.400311, 42.908394, 40.912090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.379498, 42.994656, 40.689098>,  <39.344810, 43.138428, 40.317444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379498, 42.994656, 40.689098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368515, 0.854920, 0.365113,
		-0.925568, -0.374063, -0.058314,
		0.086722, -0.359427, 0.929135,
		39.405514, 42.886829, 40.967838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721806, 43.327255, 40.651997>,  <39.344810, 43.138428, 40.317444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721806, 43.327255, 40.651997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935051, 43.222523, 40.973801>,  <39.062996, 43.159683, 41.166885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935051, 43.222523, 40.973801>,  <38.721806, 43.327255, 40.651997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935051, 43.222523, 40.973801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438990, 0.727280, 0.527591,
		-0.723243, -0.634437, 0.272780,
		0.533110, -0.261829, 0.804512,
		39.094986, 43.143974, 41.215153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288616, 43.103096, 41.124886>,  <38.721806, 43.327255, 40.651997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288616, 43.103096, 41.124886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.601139, 43.193581, 41.357571>,  <38.788654, 43.247871, 41.497181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.601139, 43.193581, 41.357571>,  <38.288616, 43.103096, 41.124886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601139, 43.193581, 41.357571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580143, 0.606948, 0.543184,
		-0.230195, -0.761869, 0.605447,
		0.781310, 0.226208, 0.581709,
		38.835533, 43.261444, 41.532082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972206, 43.264515, 41.828861>,  <38.288616, 43.103096, 41.124886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972206, 43.264515, 41.828861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346115, 43.401756, 41.865715>,  <38.570461, 43.484100, 41.887825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346115, 43.401756, 41.865715>,  <37.972206, 43.264515, 41.828861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346115, 43.401756, 41.865715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329454, 0.740191, 0.586155,
		0.132916, -0.578273, 0.804944,
		0.934769, 0.343101, 0.092131,
		38.626545, 43.504688, 41.893353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189838, 43.363640, 42.590931>,  <37.972206, 43.264515, 41.828861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189838, 43.363640, 42.590931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.436275, 43.622665, 42.411560>,  <38.584137, 43.778080, 42.303936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.436275, 43.622665, 42.411560>,  <38.189838, 43.363640, 42.590931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436275, 43.622665, 42.411560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250034, 0.700647, 0.668264,
		0.746936, -0.299590, 0.593576,
		0.616092, 0.647565, -0.448430,
		38.621101, 43.816936, 42.277031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603432, 43.739697, 43.156181>,  <38.189838, 43.363640, 42.590931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603432, 43.739697, 43.156181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633026, 43.966557, 42.828068>,  <38.650784, 44.102673, 42.631199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633026, 43.966557, 42.828068>,  <38.603432, 43.739697, 43.156181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633026, 43.966557, 42.828068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052190, 0.823612, 0.564747,
		0.995893, 0.001026, 0.090537,
		0.073989, 0.567152, -0.820283,
		38.655224, 44.136703, 42.581982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141277, 44.178272, 43.380966>,  <38.603432, 43.739697, 43.156181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141277, 44.178272, 43.380966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.941730, 44.337536, 43.073044>,  <38.822002, 44.433094, 42.888290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.941730, 44.337536, 43.073044>,  <39.141277, 44.178272, 43.380966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941730, 44.337536, 43.073044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185453, 0.818610, 0.543585,
		0.846605, 0.413939, -0.334537,
		-0.498866, 0.398161, -0.769805,
		38.792072, 44.456985, 42.842102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310566, 44.856636, 43.412937>,  <39.141277, 44.178272, 43.380966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310566, 44.856636, 43.412937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.986683, 44.858036, 43.178207>,  <38.792355, 44.858875, 43.037369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.986683, 44.858036, 43.178207>,  <39.310566, 44.856636, 43.412937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986683, 44.858036, 43.178207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310033, 0.846484, 0.432834,
		0.498253, 0.532403, -0.684318,
		-0.809706, 0.003500, -0.586826,
		38.743771, 44.859085, 43.002159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222828, 45.471733, 43.128674>,  <39.310566, 44.856636, 43.412937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222828, 45.471733, 43.128674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846588, 45.340126, 43.162197>,  <38.620846, 45.261162, 43.182312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.846588, 45.340126, 43.162197>,  <39.222828, 45.471733, 43.128674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846588, 45.340126, 43.162197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258145, 0.853355, 0.452932,
		-0.220543, 0.404391, -0.887597,
		-0.940597, -0.329019, 0.083810,
		38.564407, 45.241421, 43.187340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796658, 46.053524, 42.828678>,  <39.222828, 45.471733, 43.128674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796658, 46.053524, 42.828678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536270, 45.809216, 43.008984>,  <38.380035, 45.662628, 43.117168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536270, 45.809216, 43.008984>,  <38.796658, 46.053524, 42.828678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536270, 45.809216, 43.008984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418542, 0.784189, 0.458116,
		-0.633291, 0.109556, -0.766120,
		-0.650972, -0.610774, 0.450766,
		38.340977, 45.625984, 43.144215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117237, 46.302673, 42.806110>,  <38.796658, 46.053524, 42.828678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117237, 46.302673, 42.806110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114750, 46.073170, 43.133713>,  <38.113258, 45.935467, 43.330273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114750, 46.073170, 43.133713>,  <38.117237, 46.302673, 42.806110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114750, 46.073170, 43.133713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450048, 0.732989, 0.510083,
		-0.892983, -0.365422, -0.262772,
		-0.006213, -0.573755, 0.819003,
		38.112885, 45.901043, 43.379414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409828, 46.454788, 43.046692>,  <38.117237, 46.302673, 42.806110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409828, 46.454788, 43.046692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653614, 46.294048, 43.320065>,  <37.799885, 46.197605, 43.484089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653614, 46.294048, 43.320065>,  <37.409828, 46.454788, 43.046692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653614, 46.294048, 43.320065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235518, 0.731344, 0.640053,
		-0.757027, -0.551046, 0.351082,
		0.609460, -0.401851, 0.683428,
		37.836452, 46.173492, 43.525093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360229, 46.946190, 42.379005>,  <37.409828, 46.454788, 43.046692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360229, 46.946190, 42.379005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035576, 47.031048, 42.161293>,  <36.840782, 47.081963, 42.030666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035576, 47.031048, 42.161293>,  <37.360229, 46.946190, 42.379005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035576, 47.031048, 42.161293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191326, -0.783793, -0.590815,
		-0.551941, -0.583662, 0.595566,
		-0.811637, 0.212148, -0.544277,
		36.792084, 47.094692, 41.998009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036526, 46.343910, 42.159962>,  <37.360229, 46.946190, 42.379005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036526, 46.343910, 42.159962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880642, 46.600727, 41.895870>,  <36.787109, 46.754818, 41.737415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880642, 46.600727, 41.895870>,  <37.036526, 46.343910, 42.159962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880642, 46.600727, 41.895870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107526, -0.680283, -0.725019,
		-0.914637, -0.353542, 0.196079,
		-0.389714, 0.642046, -0.660227,
		36.763729, 46.793343, 41.697803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570667, 45.942360, 41.732571>,  <37.036526, 46.343910, 42.159962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570667, 45.942360, 41.732571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599972, 46.254570, 41.484241>,  <36.617554, 46.441895, 41.335243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599972, 46.254570, 41.484241>,  <36.570667, 45.942360, 41.732571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599972, 46.254570, 41.484241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096152, -0.625120, -0.774583,
		-0.992667, -0.002943, -0.120848,
		0.073265, 0.780523, -0.620819,
		36.621952, 46.488728, 41.297997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183720, 45.817940, 41.071838>,  <36.570667, 45.942360, 41.732571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183720, 45.817940, 41.071838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447102, 46.109356, 40.996292>,  <36.605129, 46.284206, 40.950962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447102, 46.109356, 40.996292>,  <36.183720, 45.817940, 41.071838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447102, 46.109356, 40.996292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319040, -0.497473, -0.806681,
		-0.681657, 0.470902, -0.559995,
		0.658450, 0.728541, -0.188870,
		36.644638, 46.327919, 40.939632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996635, 45.921833, 40.392117>,  <36.183720, 45.817940, 41.071838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996635, 45.921833, 40.392117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.362396, 46.076408, 40.440346>,  <36.581852, 46.169151, 40.469284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.362396, 46.076408, 40.440346>,  <35.996635, 45.921833, 40.392117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362396, 46.076408, 40.440346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354616, -0.621024, -0.698983,
		-0.195236, 0.681906, -0.704902,
		0.914402, 0.386436, 0.120569,
		36.636715, 46.192341, 40.476517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302925, 46.099152, 39.737659>,  <35.996635, 45.921833, 40.392117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302925, 46.099152, 39.737659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600830, 46.026096, 39.994400>,  <36.779572, 45.982265, 40.148445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600830, 46.026096, 39.994400>,  <36.302925, 46.099152, 39.737659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600830, 46.026096, 39.994400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387583, -0.664589, -0.638828,
		0.543239, 0.724546, -0.424175,
		0.744762, -0.182634, 0.641852,
		36.824257, 45.971306, 40.186954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887798, 46.025211, 39.297291>,  <36.302925, 46.099152, 39.737659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887798, 46.025211, 39.297291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005894, 45.863407, 39.643517>,  <37.076752, 45.766323, 39.851254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005894, 45.863407, 39.643517>,  <36.887798, 46.025211, 39.297291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005894, 45.863407, 39.643517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452183, -0.738899, -0.499558,
		0.841643, 0.538883, -0.035238,
		0.295241, -0.404515, 0.865564,
		37.094467, 45.742054, 39.903187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552498, 45.646797, 39.140312>,  <36.887798, 46.025211, 39.297291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552498, 45.646797, 39.140312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421936, 45.498047, 39.487915>,  <37.343597, 45.408794, 39.696476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.421936, 45.498047, 39.487915>,  <37.552498, 45.646797, 39.140312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421936, 45.498047, 39.487915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217336, -0.924251, -0.313886,
		0.919904, 0.086410, 0.382505,
		-0.326408, -0.371877, 0.869002,
		37.324013, 45.386482, 39.748615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051514, 45.134129, 39.261501>,  <37.552498, 45.646797, 39.140312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051514, 45.134129, 39.261501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743389, 45.049618, 39.502163>,  <37.558517, 44.998909, 39.646561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743389, 45.049618, 39.502163>,  <38.051514, 45.134129, 39.261501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743389, 45.049618, 39.502163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132690, -0.975971, -0.172841,
		0.623716, -0.053307, 0.779832,
		-0.770307, -0.211280, 0.601655,
		37.512299, 44.986233, 39.682659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295765, 44.566036, 39.730785>,  <38.051514, 45.134129, 39.261501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295765, 44.566036, 39.730785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.896378, 44.553223, 39.712780>,  <37.656746, 44.545536, 39.701977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.896378, 44.553223, 39.712780>,  <38.295765, 44.566036, 39.730785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896378, 44.553223, 39.712780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038709, -0.986942, -0.156354,
		-0.039420, -0.157858, 0.986675,
		-0.998473, -0.032030, -0.045015,
		37.596836, 44.543613, 39.699276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171959, 43.935169, 39.997894>,  <38.295765, 44.566036, 39.730785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171959, 43.935169, 39.997894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836460, 44.032703, 39.803146>,  <37.635159, 44.091225, 39.686298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836460, 44.032703, 39.803146>,  <38.171959, 43.935169, 39.997894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836460, 44.032703, 39.803146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137906, -0.960105, -0.243271,
		-0.526762, -0.136902, 0.838916,
		-0.838751, 0.243837, -0.486867,
		37.584835, 44.105854, 39.657085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596317, 43.492661, 40.246510>,  <38.171959, 43.935169, 39.997894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596317, 43.492661, 40.246510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495708, 43.600536, 39.874702>,  <37.435341, 43.665260, 39.651619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495708, 43.600536, 39.874702>,  <37.596317, 43.492661, 40.246510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495708, 43.600536, 39.874702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090301, -0.962744, -0.254891,
		-0.963635, 0.019832, 0.266486,
		-0.251503, 0.269686, -0.929525,
		37.420250, 43.681442, 39.595848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150249, 43.003860, 39.978691>,  <37.596317, 43.492661, 40.246510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150249, 43.003860, 39.978691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.250202, 43.168003, 39.627884>,  <37.310173, 43.266487, 39.417400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.250202, 43.168003, 39.627884>,  <37.150249, 43.003860, 39.978691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250202, 43.168003, 39.627884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039720, -0.909337, -0.414160,
		-0.967462, 0.068654, -0.243523,
		0.249878, 0.410357, -0.877023,
		37.325165, 43.291111, 39.364777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775097, 42.667599, 39.489609>,  <37.150249, 43.003860, 39.978691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775097, 42.667599, 39.489609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055122, 42.830231, 39.254795>,  <37.223137, 42.927811, 39.113907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055122, 42.830231, 39.254795>,  <36.775097, 42.667599, 39.489609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055122, 42.830231, 39.254795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294161, -0.913284, -0.281748,
		-0.650680, 0.024559, -0.758955,
		0.700061, 0.406583, -0.587031,
		37.265141, 42.952206, 39.078686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197506, 42.799034, 39.119019>,  <36.775097, 42.667599, 39.489609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197506, 42.799034, 39.119019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804409, 42.730133, 39.146004>,  <35.568550, 42.688793, 39.162197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804409, 42.730133, 39.146004>,  <36.197506, 42.799034, 39.119019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804409, 42.730133, 39.146004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108941, 0.833605, 0.541511,
		-0.149518, 0.524814, -0.837982,
		-0.982739, -0.172256, 0.067465,
		35.509586, 42.678455, 39.166245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877914, 43.406551, 38.916706>,  <36.197506, 42.799034, 39.119019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877914, 43.406551, 38.916706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622570, 43.214756, 39.157570>,  <35.469364, 43.099678, 39.302086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622570, 43.214756, 39.157570>,  <35.877914, 43.406551, 38.916706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622570, 43.214756, 39.157570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042401, 0.803004, 0.594464,
		-0.768570, 0.353949, -0.532935,
		-0.638359, -0.479484, 0.602157,
		35.431061, 43.070911, 39.338219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440701, 43.978359, 39.107037>,  <35.877914, 43.406551, 38.916706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440701, 43.978359, 39.107037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390572, 43.676334, 39.364464>,  <35.360493, 43.495121, 39.518921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390572, 43.676334, 39.364464>,  <35.440701, 43.978359, 39.107037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390572, 43.676334, 39.364464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231387, 0.653039, 0.721110,
		-0.964756, -0.058542, -0.256552,
		-0.125323, -0.755058, 0.643569,
		35.352974, 43.449818, 39.557533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889206, 44.207653, 39.447262>,  <35.440701, 43.978359, 39.107037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889206, 44.207653, 39.447262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002079, 43.906689, 39.685337>,  <35.069801, 43.726109, 39.828182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002079, 43.906689, 39.685337>,  <34.889206, 44.207653, 39.447262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002079, 43.906689, 39.685337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403167, 0.469954, 0.785239,
		-0.870534, -0.461542, -0.170734,
		0.282183, -0.752411, 0.595189,
		35.086735, 43.680965, 39.863895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271912, 44.044838, 39.882534>,  <34.889206, 44.207653, 39.447262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271912, 44.044838, 39.882534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611244, 43.935055, 40.063648>,  <34.814842, 43.869183, 40.172318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611244, 43.935055, 40.063648>,  <34.271912, 44.044838, 39.882534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611244, 43.935055, 40.063648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166815, 0.673061, 0.720528,
		-0.502508, -0.686775, 0.525192,
		0.848327, -0.274461, 0.452783,
		34.865742, 43.852715, 40.199482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039352, 44.020798, 40.528343>,  <34.271912, 44.044838, 39.882534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039352, 44.020798, 40.528343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437840, 44.048916, 40.548759>,  <34.676933, 44.065784, 40.561008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437840, 44.048916, 40.548759>,  <34.039352, 44.020798, 40.528343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437840, 44.048916, 40.548759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085902, 0.709607, 0.699341,
		0.012937, -0.701082, 0.712963,
		0.996219, 0.070292, 0.051044,
		34.736706, 44.070004, 40.564072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194889, 43.792580, 41.212917>,  <34.039352, 44.020798, 40.528343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194889, 43.792580, 41.212917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486053, 44.034695, 41.084061>,  <34.660751, 44.179962, 41.006744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486053, 44.034695, 41.084061>,  <34.194889, 43.792580, 41.212917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486053, 44.034695, 41.084061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195054, 0.633204, 0.749003,
		0.657351, -0.482365, 0.578976,
		0.727904, 0.605290, -0.322150,
		34.704426, 44.216282, 40.987415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205006, 43.268456, 41.938091>,  <34.194889, 43.792580, 41.212917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205006, 43.268456, 41.938091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950310, 43.085812, 42.186630>,  <33.797493, 42.976223, 42.335754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950310, 43.085812, 42.186630>,  <34.205006, 43.268456, 41.938091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950310, 43.085812, 42.186630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038833, -0.823776, -0.565583,
		0.770101, -0.336001, 0.542262,
		-0.636740, -0.456614, 0.621343,
		33.759289, 42.948826, 42.373032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469471, 42.584827, 42.142189>,  <34.205006, 43.268456, 41.938091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469471, 42.584827, 42.142189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087158, 42.555538, 42.256111>,  <33.857769, 42.537964, 42.324463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087158, 42.555538, 42.256111>,  <34.469471, 42.584827, 42.142189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087158, 42.555538, 42.256111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045111, -0.920531, -0.388056,
		0.290586, -0.383745, 0.876527,
		-0.955785, -0.073223, 0.284804,
		33.800423, 42.533573, 42.341553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479126, 41.938217, 42.371780>,  <34.469471, 42.584827, 42.142189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479126, 41.938217, 42.371780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101040, 42.040001, 42.289978>,  <33.874187, 42.101070, 42.240898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101040, 42.040001, 42.289978>,  <34.479126, 41.938217, 42.371780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101040, 42.040001, 42.289978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089194, -0.803902, -0.588036,
		-0.314035, -0.537578, 0.782555,
		-0.945213, 0.254463, -0.204505,
		33.817474, 42.116341, 42.228626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058052, 41.364384, 42.490913>,  <34.479126, 41.938217, 42.371780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058052, 41.364384, 42.490913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839729, 41.588520, 42.241718>,  <33.708736, 41.723003, 42.092201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839729, 41.588520, 42.241718>,  <34.058052, 41.364384, 42.490913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839729, 41.588520, 42.241718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092093, -0.779114, -0.620081,
		-0.832836, -0.281070, 0.476847,
		-0.545805, 0.560340, -0.622990,
		33.675987, 41.756622, 42.054821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604820, 40.882557, 42.248665>,  <34.058052, 41.364384, 42.490913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604820, 40.882557, 42.248665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615540, 41.182266, 41.983978>,  <33.621971, 41.362091, 41.825165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615540, 41.182266, 41.983978>,  <33.604820, 40.882557, 42.248665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615540, 41.182266, 41.983978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080779, -0.658166, -0.748526,
		-0.996372, 0.073513, 0.042887,
		0.026800, 0.749275, -0.661717,
		33.623581, 41.407047, 41.785461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961048, 40.858406, 41.819420>,  <33.604820, 40.882557, 42.248665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961048, 40.858406, 41.819420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266876, 41.033382, 41.630074>,  <33.450371, 41.138371, 41.516464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266876, 41.033382, 41.630074>,  <32.961048, 40.858406, 41.819420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266876, 41.033382, 41.630074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133038, -0.611502, -0.779978,
		-0.630663, 0.659323, -0.409338,
		0.764569, 0.437446, -0.473367,
		33.496246, 41.164616, 41.488064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731216, 40.884151, 41.213612>,  <32.961048, 40.858406, 41.819420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731216, 40.884151, 41.213612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115875, 40.978706, 41.157959>,  <33.346672, 41.035439, 41.124565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115875, 40.978706, 41.157959>,  <32.731216, 40.884151, 41.213612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115875, 40.978706, 41.157959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030672, -0.596739, -0.801849,
		-0.272570, 0.766828, -0.581103,
		0.961647, 0.236384, -0.139133,
		33.404369, 41.049622, 41.116219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.118164, 44.538868, 45.617661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.309437, 44.560318, 45.267014>,  <36.424202, 44.573189, 45.056625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.309437, 44.560318, 45.267014>,  <36.118164, 44.538868, 45.617661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309437, 44.560318, 45.267014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255196, -0.946584, -0.197115,
		-0.840366, 0.317967, -0.438955,
		0.478184, 0.053630, -0.876621,
		36.452892, 44.576408, 45.004028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671013, 44.217079, 45.079159>,  <36.118164, 44.538868, 45.617661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671013, 44.217079, 45.079159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042606, 44.229362, 44.931622>,  <36.265564, 44.236732, 44.843098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042606, 44.229362, 44.931622>,  <35.671013, 44.217079, 45.079159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042606, 44.229362, 44.931622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134169, -0.900829, -0.412923,
		-0.344949, 0.433086, -0.832735,
		0.928983, 0.030710, -0.368846,
		36.321301, 44.238575, 44.820969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651051, 43.824104, 44.443581>,  <35.671013, 44.217079, 45.079159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651051, 43.824104, 44.443581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042709, 43.799221, 44.520947>,  <36.277702, 43.784290, 44.567368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042709, 43.799221, 44.520947>,  <35.651051, 43.824104, 44.443581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042709, 43.799221, 44.520947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006119, -0.960567, -0.277981,
		0.203084, 0.270999, -0.940913,
		0.979142, -0.062211, 0.193418,
		36.336452, 43.780560, 44.578972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049294, 43.484188, 43.823612>,  <35.651051, 43.824104, 44.443581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049294, 43.484188, 43.823612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.255695, 43.452549, 44.164783>,  <36.379536, 43.433563, 44.369488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.255695, 43.452549, 44.164783>,  <36.049294, 43.484188, 43.823612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255695, 43.452549, 44.164783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145777, -0.973093, -0.178436,
		0.844092, 0.216411, -0.490587,
		0.516002, -0.079100, 0.852927,
		36.410496, 43.428818, 44.420662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680672, 43.162323, 43.596954>,  <36.049294, 43.484188, 43.823612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680672, 43.162323, 43.596954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.668827, 43.111637, 43.993553>,  <36.661720, 43.081226, 44.231514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.668827, 43.111637, 43.993553>,  <36.680672, 43.162323, 43.596954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668827, 43.111637, 43.993553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447088, -0.888855, -0.100241,
		0.893999, 0.440318, 0.082976,
		-0.029616, -0.126713, 0.991497,
		36.659943, 43.073624, 44.291004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285282, 42.875908, 43.729641>,  <36.680672, 43.162323, 43.596954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285282, 42.875908, 43.729641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.106422, 42.772923, 44.072281>,  <36.999107, 42.711132, 44.277866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.106422, 42.772923, 44.072281>,  <37.285282, 42.875908, 43.729641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106422, 42.772923, 44.072281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260032, -0.953733, -0.150921,
		0.855828, 0.155261, 0.493409,
		-0.447148, -0.257465, 0.856604,
		36.972279, 42.695683, 44.329262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762810, 42.426682, 44.167198>,  <37.285282, 42.875908, 43.729641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762810, 42.426682, 44.167198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.389256, 42.322945, 44.265671>,  <37.165123, 42.260704, 44.324753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.389256, 42.322945, 44.265671>,  <37.762810, 42.426682, 44.167198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389256, 42.322945, 44.265671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237379, -0.964515, -0.115592,
		0.267421, -0.049512, 0.962307,
		-0.933883, -0.259343, 0.246179,
		37.109089, 42.245140, 44.339523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809570, 41.854858, 44.613934>,  <37.762810, 42.426682, 44.167198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809570, 41.854858, 44.613934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.428234, 41.820747, 44.498089>,  <37.199432, 41.800282, 44.428581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.428234, 41.820747, 44.498089>,  <37.809570, 41.854858, 44.613934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428234, 41.820747, 44.498089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079979, -0.996342, 0.030096,
		-0.291121, 0.005528, 0.956670,
		-0.953337, -0.085275, -0.289614,
		37.142235, 41.795166, 44.411205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514214, 41.393406, 45.118595>,  <37.809570, 41.854858, 44.613934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514214, 41.393406, 45.118595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.250496, 41.386650, 44.817917>,  <37.092266, 41.382595, 44.637512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.250496, 41.386650, 44.817917>,  <37.514214, 41.393406, 45.118595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250496, 41.386650, 44.817917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030604, -0.999522, -0.004379,
		-0.751260, -0.025892, 0.659498,
		-0.659297, -0.016894, -0.751693,
		37.052708, 41.381580, 44.592407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103798, 40.861359, 45.249256>,  <37.514214, 41.393406, 45.118595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103798, 40.861359, 45.249256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.076496, 40.926178, 44.855488>,  <37.060116, 40.965069, 44.619228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.076496, 40.926178, 44.855488>,  <37.103798, 40.861359, 45.249256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076496, 40.926178, 44.855488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289157, -0.941155, -0.174970,
		-0.954845, -0.296594, 0.017379,
		-0.068251, 0.162044, -0.984420,
		37.056023, 40.974792, 44.560162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809834, 40.274776, 45.029781>,  <37.103798, 40.861359, 45.249256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809834, 40.274776, 45.029781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.978111, 40.414680, 44.694954>,  <37.079079, 40.498623, 44.494057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.978111, 40.414680, 44.694954>,  <36.809834, 40.274776, 45.029781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978111, 40.414680, 44.694954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114807, -0.935799, -0.333314,
		-0.899909, 0.044121, -0.433840,
		0.420693, 0.349761, -0.837069,
		37.104321, 40.519608, 44.443832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352913, 39.972382, 44.464455>,  <36.809834, 40.274776, 45.029781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352913, 39.972382, 44.464455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735371, 40.033089, 44.364246>,  <36.964844, 40.069511, 44.304123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735371, 40.033089, 44.364246>,  <36.352913, 39.972382, 44.464455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735371, 40.033089, 44.364246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009322, -0.870625, -0.491859,
		-0.292757, 0.467951, -0.833855,
		0.956141, 0.151769, -0.250520,
		37.022213, 40.078621, 44.289089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729858, 40.079636, 44.028992>,  <36.352913, 39.972382, 44.464455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729858, 40.079636, 44.028992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428669, 39.936817, 44.250095>,  <35.247955, 39.851128, 44.382759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428669, 39.936817, 44.250095>,  <35.729858, 40.079636, 44.028992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428669, 39.936817, 44.250095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002318, 0.838559, 0.544806,
		-0.658045, 0.411506, -0.630586,
		-0.752975, -0.357045, 0.552764,
		35.202778, 39.829704, 44.415924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351883, 40.612579, 44.161678>,  <35.729858, 40.079636, 44.028992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351883, 40.612579, 44.161678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.198559, 40.371777, 44.441868>,  <35.106564, 40.227295, 44.609982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.198559, 40.371777, 44.441868>,  <35.351883, 40.612579, 44.161678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198559, 40.371777, 44.441868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063549, 0.773796, 0.630239,
		-0.921432, 0.197061, -0.334859,
		-0.383308, -0.602003, 0.700477,
		35.083565, 40.191177, 44.652012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725811, 40.908596, 44.301746>,  <35.351883, 40.612579, 44.161678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725811, 40.908596, 44.301746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.802662, 40.677937, 44.619377>,  <34.848774, 40.539539, 44.809956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.802662, 40.677937, 44.619377>,  <34.725811, 40.908596, 44.301746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802662, 40.677937, 44.619377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296357, 0.737284, 0.607112,
		-0.935553, -0.351974, -0.029242,
		0.192128, -0.576651, 0.794078,
		34.860302, 40.504940, 44.857601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129791, 40.938862, 44.646305>,  <34.725811, 40.908596, 44.301746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129791, 40.938862, 44.646305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.402790, 40.823215, 44.914814>,  <34.566589, 40.753826, 45.075920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.402790, 40.823215, 44.914814>,  <34.129791, 40.938862, 44.646305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402790, 40.823215, 44.914814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316172, 0.711269, 0.627799,
		-0.658967, -0.640707, 0.394026,
		0.682494, -0.289119, 0.671277,
		34.607536, 40.736481, 45.116196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786633, 41.007660, 45.326630>,  <34.129791, 40.938862, 44.646305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786633, 41.007660, 45.326630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177315, 40.994473, 45.411453>,  <34.411724, 40.986561, 45.462345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177315, 40.994473, 45.411453>,  <33.786633, 41.007660, 45.326630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177315, 40.994473, 45.411453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145533, 0.624440, 0.767395,
		-0.157717, -0.780377, 0.605093,
		0.976702, -0.032971, 0.212055,
		34.470325, 40.984581, 45.475071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789192, 40.928349, 46.035606>,  <33.786633, 41.007660, 45.326630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789192, 40.928349, 46.035606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136200, 41.081947, 45.909142>,  <34.344402, 41.174107, 45.833263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136200, 41.081947, 45.909142>,  <33.789192, 40.928349, 46.035606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136200, 41.081947, 45.909142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251615, 0.887082, 0.387009,
		0.429077, -0.256184, 0.866177,
		0.867515, 0.384000, -0.316166,
		34.396454, 41.197147, 45.814293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098862, 41.317276, 46.662937>,  <33.789192, 40.928349, 46.035606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098862, 41.317276, 46.662937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.294041, 41.461456, 46.344948>,  <34.411148, 41.547966, 46.154156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.294041, 41.461456, 46.344948>,  <34.098862, 41.317276, 46.662937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294041, 41.461456, 46.344948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151972, 0.931926, 0.329270,
		0.859542, -0.039853, 0.509510,
		0.487948, 0.360452, -0.794973,
		34.440426, 41.569592, 46.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568600, 41.795761, 46.993198>,  <34.098862, 41.317276, 46.662937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568600, 41.795761, 46.993198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.538010, 41.933590, 46.618942>,  <34.519653, 42.016285, 46.394390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.538010, 41.933590, 46.618942>,  <34.568600, 41.795761, 46.993198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538010, 41.933590, 46.618942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052846, 0.935669, 0.348900,
		0.995670, 0.076129, -0.053350,
		-0.076479, 0.344570, -0.935640,
		34.515064, 42.036961, 46.338249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995792, 42.292503, 46.902992>,  <34.568600, 41.795761, 46.993198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995792, 42.292503, 46.902992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727848, 42.374645, 46.617584>,  <34.567081, 42.423931, 46.446339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727848, 42.374645, 46.617584>,  <34.995792, 42.292503, 46.902992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727848, 42.374645, 46.617584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054447, 0.971990, 0.228630,
		0.740484, 0.114302, -0.662283,
		-0.669865, 0.205357, -0.713519,
		34.526890, 42.436253, 46.403530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302464, 42.815739, 46.485912>,  <34.995792, 42.292503, 46.902992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302464, 42.815739, 46.485912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921291, 42.841640, 46.367435>,  <34.692589, 42.857182, 46.296349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921291, 42.841640, 46.367435>,  <35.302464, 42.815739, 46.485912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921291, 42.841640, 46.367435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047186, 0.996697, 0.066085,
		0.299497, 0.048998, -0.952838,
		-0.952930, 0.064753, -0.296195,
		34.635414, 42.861065, 46.278576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320889, 43.344120, 45.910748>,  <35.302464, 42.815739, 46.485912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320889, 43.344120, 45.910748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.947556, 43.310200, 46.050289>,  <34.723557, 43.289848, 46.134014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.947556, 43.310200, 46.050289>,  <35.320889, 43.344120, 45.910748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947556, 43.310200, 46.050289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054064, 0.993821, 0.096943,
		-0.354921, 0.071619, -0.932149,
		-0.933332, -0.084802, 0.348856,
		34.667557, 43.284760, 46.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975574, 43.883518, 45.586750>,  <35.320889, 43.344120, 45.910748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975574, 43.883518, 45.586750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.712063, 43.783970, 45.870743>,  <34.553955, 43.724243, 46.041138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.712063, 43.783970, 45.870743>,  <34.975574, 43.883518, 45.586750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712063, 43.783970, 45.870743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184260, 0.968334, 0.168455,
		-0.729423, -0.019846, -0.683775,
		-0.658779, -0.248867, 0.709982,
		34.514427, 43.709309, 46.083736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392513, 44.348385, 45.443653>,  <34.975574, 43.883518, 45.586750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392513, 44.348385, 45.443653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.345676, 44.222099, 45.820293>,  <34.317574, 44.146328, 46.046280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.345676, 44.222099, 45.820293>,  <34.392513, 44.348385, 45.443653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345676, 44.222099, 45.820293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227101, 0.931515, 0.284086,
		-0.966806, -0.180573, -0.180774,
		-0.117096, -0.315710, 0.941603,
		34.310547, 44.127388, 46.102776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709259, 44.386177, 45.701969>,  <34.392513, 44.348385, 45.443653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709259, 44.386177, 45.701969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.970608, 44.422672, 46.002575>,  <34.127419, 44.444569, 46.182938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.970608, 44.422672, 46.002575>,  <33.709259, 44.386177, 45.701969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970608, 44.422672, 46.002575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307715, 0.939010, 0.153533,
		-0.691676, -0.331568, 0.641597,
		0.653373, 0.091234, 0.751519,
		34.166618, 44.450043, 46.228031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254425, 44.391354, 45.071564>,  <33.709259, 44.386177, 45.701969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254425, 44.391354, 45.071564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.998501, 44.539223, 44.802052>,  <32.844948, 44.627945, 44.640343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.998501, 44.539223, 44.802052>,  <33.254425, 44.391354, 45.071564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998501, 44.539223, 44.802052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330564, -0.659097, -0.675513,
		-0.693808, -0.654929, 0.299496,
		-0.639811, 0.369674, -0.673783,
		32.806557, 44.650124, 44.599918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777588, 43.856113, 44.695919>,  <33.254425, 44.391354, 45.071564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777588, 43.856113, 44.695919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.822777, 44.171146, 44.453613>,  <32.849888, 44.360165, 44.308231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.822777, 44.171146, 44.453613>,  <32.777588, 43.856113, 44.695919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822777, 44.171146, 44.453613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195660, -0.615362, -0.763574,
		-0.974143, -0.032263, -0.223617,
		0.112970, 0.787584, -0.605764,
		32.856667, 44.407421, 44.271885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415215, 43.690430, 44.136108>,  <32.777588, 43.856113, 44.695919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415215, 43.690430, 44.136108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.700909, 43.949318, 44.029541>,  <32.872326, 44.104652, 43.965603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.700909, 43.949318, 44.029541>,  <32.415215, 43.690430, 44.136108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700909, 43.949318, 44.029541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270983, -0.606669, -0.747343,
		-0.645322, 0.461582, -0.608688,
		0.714232, 0.647221, -0.266416,
		32.915180, 44.143486, 43.949615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352707, 43.854527, 43.371300>,  <32.415215, 43.690430, 44.136108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352707, 43.854527, 43.371300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.730610, 43.942356, 43.468647>,  <32.957352, 43.995052, 43.527054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.730610, 43.942356, 43.468647>,  <32.352707, 43.854527, 43.371300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730610, 43.942356, 43.468647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327474, -0.600479, -0.729510,
		-0.014043, 0.768904, -0.639209,
		0.944756, 0.219569, 0.243364,
		33.014038, 44.008228, 43.541656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652557, 44.038158, 42.736069>,  <32.352707, 43.854527, 43.371300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652557, 44.038158, 42.736069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.947876, 43.930393, 42.983402>,  <33.125069, 43.865734, 43.131802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.947876, 43.930393, 42.983402>,  <32.652557, 44.038158, 42.736069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947876, 43.930393, 42.983402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362199, -0.614987, -0.700430,
		0.568973, 0.741084, -0.356460,
		0.738297, -0.269416, 0.618331,
		33.169365, 43.849567, 43.168903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175457, 44.057137, 42.325787>,  <32.652557, 44.038158, 42.736069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175457, 44.057137, 42.325787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.305119, 43.825520, 42.625019>,  <33.382915, 43.686550, 42.804558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.305119, 43.825520, 42.625019>,  <33.175457, 44.057137, 42.325787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305119, 43.825520, 42.625019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417334, -0.622143, -0.662398,
		0.848974, 0.526920, 0.039985,
		0.324154, -0.579046, 0.748084,
		33.402367, 43.651806, 42.849445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796692, 43.902004, 42.068287>,  <33.175457, 44.057137, 42.325787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796692, 43.902004, 42.068287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.707291, 43.640877, 42.357803>,  <33.653648, 43.484200, 42.531513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.707291, 43.640877, 42.357803>,  <33.796692, 43.902004, 42.068287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707291, 43.640877, 42.357803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223880, -0.757109, -0.613729,
		0.948642, 0.024870, 0.315371,
		-0.223507, -0.652815, 0.723794,
		33.640240, 43.445034, 42.574940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600311, 43.996613, 41.820595>,  <33.796692, 43.902004, 42.068287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600311, 43.996613, 41.820595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.725555, 44.252228, 41.539570>,  <34.800701, 44.405598, 41.370956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.725555, 44.252228, 41.539570>,  <34.600311, 43.996613, 41.820595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725555, 44.252228, 41.539570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075820, 0.720575, 0.689219,
		0.946687, -0.269067, 0.177165,
		0.313106, 0.639042, -0.702560,
		34.819489, 44.443939, 41.328800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161308, 44.352871, 42.097927>,  <34.600311, 43.996613, 41.820595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161308, 44.352871, 42.097927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.060356, 44.600105, 41.800129>,  <34.999786, 44.748447, 41.621449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.060356, 44.600105, 41.800129>,  <35.161308, 44.352871, 42.097927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060356, 44.600105, 41.800129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035840, 0.762904, 0.645518,
		0.966965, 0.189596, -0.170386,
		-0.252376, 0.618087, -0.744497,
		34.984642, 44.785530, 41.576778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628269, 44.894222, 42.145329>,  <35.161308, 44.352871, 42.097927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628269, 44.894222, 42.145329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339661, 45.061089, 41.924282>,  <35.166496, 45.161209, 41.791653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339661, 45.061089, 41.924282>,  <35.628269, 44.894222, 42.145329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339661, 45.061089, 41.924282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030110, 0.816270, 0.576885,
		0.691741, 0.399594, -0.601515,
		-0.721518, 0.417167, -0.552615,
		35.123207, 45.186237, 41.758499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831142, 45.604107, 41.925507>,  <35.628269, 44.894222, 42.145329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831142, 45.604107, 41.925507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.431324, 45.616096, 41.924446>,  <35.191433, 45.623291, 41.923809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.431324, 45.616096, 41.924446>,  <35.831142, 45.604107, 41.925507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431324, 45.616096, 41.924446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027402, 0.943105, 0.331365,
		0.012433, 0.331143, -0.943499,
		-0.999547, 0.029973, -0.002651,
		35.131458, 45.625088, 41.923649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668125, 46.330482, 41.779476>,  <35.831142, 45.604107, 41.925507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668125, 46.330482, 41.779476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.314480, 46.188568, 41.901108>,  <35.102291, 46.103420, 41.974087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.314480, 46.188568, 41.901108>,  <35.668125, 46.330482, 41.779476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314480, 46.188568, 41.901108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221482, 0.891209, 0.395844,
		-0.411439, 0.282624, -0.866512,
		-0.884118, -0.354782, 0.304082,
		35.049244, 46.082134, 41.992332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031780, 46.741722, 41.457153>,  <35.668125, 46.330482, 41.779476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031780, 46.741722, 41.457153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.885540, 46.569347, 41.787155>,  <34.797794, 46.465923, 41.985157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.885540, 46.569347, 41.787155>,  <35.031780, 46.741722, 41.457153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885540, 46.569347, 41.787155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300348, 0.893569, 0.333654,
		-0.880979, -0.125801, -0.456125,
		-0.365605, -0.430938, 0.825000,
		34.775860, 46.440067, 42.034657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557934, 47.220486, 41.638390>,  <35.031780, 46.741722, 41.457153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557934, 47.220486, 41.638390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.621597, 47.004200, 41.968796>,  <34.659798, 46.874428, 42.167038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.621597, 47.004200, 41.968796>,  <34.557934, 47.220486, 41.638390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621597, 47.004200, 41.968796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184166, 0.805730, 0.562923,
		-0.969923, -0.241719, 0.028660,
		0.159161, -0.540714, 0.826012,
		34.669346, 46.841988, 42.216599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209675, 47.537895, 42.129848>,  <34.557934, 47.220486, 41.638390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209675, 47.537895, 42.129848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.474628, 47.329861, 42.345539>,  <34.633598, 47.205040, 42.474953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.474628, 47.329861, 42.345539>,  <34.209675, 47.537895, 42.129848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474628, 47.329861, 42.345539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043606, 0.745309, 0.665292,
		-0.747896, -0.417164, 0.516358,
		0.662382, -0.520086, 0.539223,
		34.673344, 47.173836, 42.507305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943073, 47.507668, 42.886158>,  <34.209675, 47.537895, 42.129848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943073, 47.507668, 42.886158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336956, 47.438507, 42.877556>,  <34.573284, 47.397011, 42.872395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336956, 47.438507, 42.877556>,  <33.943073, 47.507668, 42.886158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336956, 47.438507, 42.877556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152191, 0.793449, 0.589302,
		-0.084830, -0.583561, 0.807627,
		0.984704, -0.172904, -0.021504,
		34.632366, 47.386635, 42.871105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.323303, 33.629944, 34.728222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705570, 33.709690, 34.814896>,  <36.934929, 33.757538, 34.866898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705570, 33.709690, 34.814896>,  <36.323303, 33.629944, 34.728222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705570, 33.709690, 34.814896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265994, 0.900140, 0.344957,
		-0.126271, -0.387300, 0.913266,
		0.955669, 0.199365, 0.216681,
		36.992271, 33.769501, 34.879902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428612, 33.757549, 35.442253>,  <36.323303, 33.629944, 34.728222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428612, 33.757549, 35.442253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731915, 33.959793, 35.277615>,  <36.913895, 34.081139, 35.178833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731915, 33.959793, 35.277615>,  <36.428612, 33.757549, 35.442253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731915, 33.959793, 35.277615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308775, 0.834531, 0.456306,
		0.574198, -0.218909, 0.788908,
		0.758258, 0.505605, -0.411592,
		36.959393, 34.111473, 35.154137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617737, 34.031960, 35.995018>,  <36.428612, 33.757549, 35.442253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617737, 34.031960, 35.995018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766186, 34.239967, 35.687290>,  <36.855255, 34.364773, 35.502655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766186, 34.239967, 35.687290>,  <36.617737, 34.031960, 35.995018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766186, 34.239967, 35.687290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371760, 0.842398, 0.390077,
		0.850921, 0.141239, 0.505950,
		0.371117, 0.520017, -0.769321,
		36.877522, 34.395973, 35.456493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959206, 34.583370, 36.250885>,  <36.617737, 34.031960, 35.995018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959206, 34.583370, 36.250885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880997, 34.709175, 35.879326>,  <36.834072, 34.784657, 35.656391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880997, 34.709175, 35.879326>,  <36.959206, 34.583370, 36.250885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880997, 34.709175, 35.879326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447294, 0.814327, 0.369865,
		0.872754, 0.487808, -0.018541,
		-0.195521, 0.314508, -0.928900,
		36.822342, 34.803528, 35.600655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152428, 35.307114, 36.200027>,  <36.959206, 34.583370, 36.250885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152428, 35.307114, 36.200027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872284, 35.239716, 35.922581>,  <36.704197, 35.199276, 35.756111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872284, 35.239716, 35.922581>,  <37.152428, 35.307114, 36.200027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872284, 35.239716, 35.922581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560774, 0.731103, 0.388614,
		0.441628, 0.661132, -0.606522,
		-0.700355, -0.168499, -0.693621,
		36.662178, 35.189167, 35.714493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939205, 36.008678, 35.975807>,  <37.152428, 35.307114, 36.200027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939205, 36.008678, 35.975807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635838, 35.778606, 35.853188>,  <36.453815, 35.640564, 35.779617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635838, 35.778606, 35.853188>,  <36.939205, 36.008678, 35.975807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635838, 35.778606, 35.853188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636229, 0.755426, 0.156667,
		0.141460, 0.313852, -0.938875,
		-0.758420, -0.575178, -0.306545,
		36.408310, 35.606052, 35.761223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501415, 36.441113, 35.415203>,  <36.939205, 36.008678, 35.975807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501415, 36.441113, 35.415203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292641, 36.150440, 35.593872>,  <36.167374, 35.976036, 35.701073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292641, 36.150440, 35.593872>,  <36.501415, 36.441113, 35.415203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292641, 36.150440, 35.593872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738868, 0.646824, 0.188923,
		-0.426208, -0.231429, -0.874521,
		-0.521939, -0.726677, 0.446677,
		36.136059, 35.932438, 35.727875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916382, 36.709789, 35.309742>,  <36.501415, 36.441113, 35.415203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916382, 36.709789, 35.309742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835999, 36.431553, 35.585648>,  <35.787769, 36.264610, 35.751190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835999, 36.431553, 35.585648>,  <35.916382, 36.709789, 35.309742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835999, 36.431553, 35.585648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737933, 0.570580, 0.360407,
		-0.644259, -0.436569, -0.627963,
		-0.200961, -0.695591, 0.689760,
		35.775711, 36.222878, 35.792576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173153, 36.629421, 35.275505>,  <35.916382, 36.709789, 35.309742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173153, 36.629421, 35.275505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300896, 36.487183, 35.626862>,  <35.377541, 36.401840, 35.837677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300896, 36.487183, 35.626862>,  <35.173153, 36.629421, 35.275505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300896, 36.487183, 35.626862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700974, 0.535113, 0.471476,
		-0.637691, -0.766295, -0.078371,
		0.319352, -0.355592, 0.878389,
		35.396702, 36.380505, 35.890377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603695, 36.818497, 35.715530>,  <35.173153, 36.629421, 35.275505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603695, 36.818497, 35.715530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869736, 36.696369, 35.988121>,  <35.029362, 36.623093, 36.151676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869736, 36.696369, 35.988121>,  <34.603695, 36.818497, 35.715530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869736, 36.696369, 35.988121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476780, 0.528744, 0.702218,
		-0.574731, -0.791965, 0.206098,
		0.665105, -0.305323, 0.681478,
		35.069267, 36.604771, 36.192566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279091, 36.563080, 36.244110>,  <34.603695, 36.818497, 35.715530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279091, 36.563080, 36.244110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631336, 36.712372, 36.360878>,  <34.842686, 36.801949, 36.430939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631336, 36.712372, 36.360878>,  <34.279091, 36.563080, 36.244110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631336, 36.712372, 36.360878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468399, 0.592668, 0.655245,
		0.071545, -0.713754, 0.696733,
		0.880615, 0.373228, 0.291920,
		34.895519, 36.824341, 36.448452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193665, 36.721649, 36.936192>,  <34.279091, 36.563080, 36.244110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193665, 36.721649, 36.936192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498360, 36.943569, 36.802353>,  <34.681175, 37.076721, 36.722050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498360, 36.943569, 36.802353>,  <34.193665, 36.721649, 36.936192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498360, 36.943569, 36.802353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279065, 0.747041, 0.603368,
		0.584703, -0.366235, 0.723874,
		0.761738, 0.554799, -0.334593,
		34.726883, 37.110008, 36.701973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969536, 36.138020, 37.394043>,  <34.193665, 36.721649, 36.936192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969536, 36.138020, 37.394043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707802, 36.074211, 37.689720>,  <33.550762, 36.035927, 37.867126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707802, 36.074211, 37.689720>,  <33.969536, 36.138020, 37.394043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707802, 36.074211, 37.689720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288466, -0.850930, -0.438982,
		0.699025, -0.500472, 0.510776,
		-0.654333, -0.159518, 0.739191,
		33.511501, 36.026356, 37.911476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120735, 35.473183, 37.623943>,  <33.969536, 36.138020, 37.394043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120735, 35.473183, 37.623943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744038, 35.553436, 37.731911>,  <33.518017, 35.601589, 37.796692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744038, 35.553436, 37.731911>,  <34.120735, 35.473183, 37.623943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744038, 35.553436, 37.731911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303600, -0.852455, -0.425614,
		0.144696, -0.482768, 0.863712,
		-0.941748, 0.200638, 0.269915,
		33.461514, 35.613628, 37.812885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845356, 34.808746, 37.877617>,  <34.120735, 35.473183, 37.623943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845356, 34.808746, 37.877617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524128, 35.029297, 37.787231>,  <33.331390, 35.161629, 37.732998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524128, 35.029297, 37.787231>,  <33.845356, 34.808746, 37.877617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524128, 35.029297, 37.787231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500832, -0.830022, -0.245420,
		-0.322878, -0.083916, 0.942713,
		-0.803067, 0.551381, -0.225968,
		33.283207, 35.194710, 37.719440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295914, 34.459576, 38.193779>,  <33.845356, 34.808746, 37.877617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295914, 34.459576, 38.193779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123131, 34.662197, 37.895298>,  <33.019463, 34.783768, 37.716209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123131, 34.662197, 37.895298>,  <33.295914, 34.459576, 38.193779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123131, 34.662197, 37.895298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597786, -0.780330, -0.183673,
		-0.675325, 0.366732, 0.639877,
		-0.431957, 0.506549, -0.746204,
		32.993546, 34.814163, 37.671436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503105, 34.368595, 38.270435>,  <33.295914, 34.459576, 38.193779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503105, 34.368595, 38.270435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598995, 34.451221, 37.890991>,  <32.656528, 34.500797, 37.663326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598995, 34.451221, 37.890991>,  <32.503105, 34.368595, 38.270435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598995, 34.451221, 37.890991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382758, -0.877849, -0.287885,
		-0.892205, 0.432101, -0.131374,
		0.239722, 0.206568, -0.948611,
		32.670910, 34.513191, 37.606407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862879, 34.117329, 37.757935>,  <32.503105, 34.368595, 38.270435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862879, 34.117329, 37.757935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177071, 34.162384, 37.514515>,  <32.365585, 34.189419, 37.368462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177071, 34.162384, 37.514515>,  <31.862879, 34.117329, 37.757935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177071, 34.162384, 37.514515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315331, -0.773249, -0.550139,
		-0.532528, 0.624018, -0.571853,
		0.785481, 0.112642, -0.608548,
		32.412716, 34.196175, 37.331951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589399, 34.048561, 37.075550>,  <31.862879, 34.117329, 37.757935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589399, 34.048561, 37.075550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983070, 33.988949, 37.037228>,  <32.219273, 33.953182, 37.014233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983070, 33.988949, 37.037228>,  <31.589399, 34.048561, 37.075550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983070, 33.988949, 37.037228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176665, -0.784593, -0.594309,
		0.013403, 0.601833, -0.798510,
		0.984180, -0.149034, -0.095807,
		32.278324, 33.944241, 37.008484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769550, 34.103508, 36.363991>,  <31.589399, 34.048561, 37.075550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769550, 34.103508, 36.363991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054619, 33.893803, 36.550430>,  <32.225658, 33.767979, 36.662292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054619, 33.893803, 36.550430>,  <31.769550, 34.103508, 36.363991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054619, 33.893803, 36.550430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185778, -0.781758, -0.595266,
		0.676454, 0.337637, -0.654532,
		0.712669, -0.524267, 0.466097,
		32.268421, 33.736523, 36.690258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129425, 33.758625, 35.824860>,  <31.769550, 34.103508, 36.363991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129425, 33.758625, 35.824860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222652, 33.560692, 36.159718>,  <32.278587, 33.441933, 36.360634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222652, 33.560692, 36.159718>,  <32.129425, 33.758625, 35.824860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222652, 33.560692, 36.159718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059498, -0.866500, -0.495619,
		0.970639, 0.065704, -0.231395,
		0.233068, -0.494835, 0.837149,
		32.292572, 33.412243, 36.410862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611172, 33.306389, 35.533909>,  <32.129425, 33.758625, 35.824860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611172, 33.306389, 35.533909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496948, 33.162041, 35.889038>,  <32.428413, 33.075432, 36.102116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496948, 33.162041, 35.889038>,  <32.611172, 33.306389, 35.533909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496948, 33.162041, 35.889038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168825, -0.892967, -0.417263,
		0.943374, -0.269040, 0.194071,
		-0.285559, -0.360871, 0.887822,
		32.411282, 33.053780, 36.155384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978745, 32.614750, 35.705349>,  <32.611172, 33.306389, 35.533909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978745, 32.614750, 35.705349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643341, 32.614651, 35.923302>,  <32.442097, 32.614590, 36.054073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643341, 32.614651, 35.923302>,  <32.978745, 32.614750, 35.705349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643341, 32.614651, 35.923302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289835, -0.846592, -0.446405,
		0.461407, -0.532243, 0.709804,
		-0.838510, -0.000248, 0.544886,
		32.391788, 32.614574, 36.086769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935085, 31.898109, 36.108658>,  <32.978745, 32.614750, 35.705349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935085, 31.898109, 36.108658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568348, 32.052959, 36.069595>,  <32.348305, 32.145870, 36.046158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568348, 32.052959, 36.069595>,  <32.935085, 31.898109, 36.108658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568348, 32.052959, 36.069595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330855, -0.873604, -0.356862,
		-0.223465, -0.294875, 0.929039,
		-0.916841, 0.387123, -0.097659,
		32.293297, 32.169098, 36.040298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161945, 31.458696, 36.775211>,  <32.935085, 31.898109, 36.108658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161945, 31.458696, 36.775211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154491, 31.276361, 37.131157>,  <33.150021, 31.166960, 37.344727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154491, 31.276361, 37.131157>,  <33.161945, 31.458696, 36.775211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154491, 31.276361, 37.131157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999151, -0.041198, -0.000185,
		0.036745, 0.889109, 0.456219,
		-0.018631, -0.455838, 0.889868,
		33.148903, 31.139610, 37.398117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736092, 31.623812, 37.211437>,  <33.161945, 31.458696, 36.775211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736092, 31.623812, 37.211437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628143, 31.260973, 37.340649>,  <33.563374, 31.043270, 37.418175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628143, 31.260973, 37.340649>,  <33.736092, 31.623812, 37.211437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628143, 31.260973, 37.340649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947459, -0.309985, -0.078929,
		0.171730, 0.284757, 0.943092,
		-0.269869, -0.907096, 0.323029,
		33.547184, 30.988844, 37.437557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061626, 31.463631, 37.757542>,  <33.736092, 31.623812, 37.211437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061626, 31.463631, 37.757542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979534, 31.116371, 37.576790>,  <33.930279, 30.908014, 37.468338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979534, 31.116371, 37.576790>,  <34.061626, 31.463631, 37.757542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979534, 31.116371, 37.576790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975305, -0.219914, -0.020463,
		-0.081610, -0.444919, 0.891845,
		-0.205233, -0.868150, -0.451879,
		33.917965, 30.855927, 37.441227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615845, 31.077658, 37.423939>,  <34.061626, 31.463631, 37.757542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615845, 31.077658, 37.423939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922710, 31.312378, 37.527573>,  <35.106831, 31.453209, 37.589752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922710, 31.312378, 37.527573>,  <34.615845, 31.077658, 37.423939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922710, 31.312378, 37.527573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549630, 0.393105, 0.737140,
		0.330706, -0.707908, 0.624099,
		0.767164, 0.586800, 0.259086,
		35.152859, 31.488419, 37.605297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819763, 31.047752, 38.191227>,  <34.615845, 31.077658, 37.423939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819763, 31.047752, 38.191227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967949, 31.392870, 38.053623>,  <35.056862, 31.599941, 37.971062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967949, 31.392870, 38.053623>,  <34.819763, 31.047752, 38.191227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967949, 31.392870, 38.053623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522269, 0.499761, 0.690995,
		0.768108, -0.076326, 0.635755,
		0.370466, 0.862794, -0.344007,
		35.079090, 31.651709, 37.950420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878288, 31.450476, 38.722420>,  <34.819763, 31.047752, 38.191227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878288, 31.450476, 38.722420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901115, 31.734951, 38.442146>,  <34.914810, 31.905636, 38.273983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901115, 31.734951, 38.442146>,  <34.878288, 31.450476, 38.722420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901115, 31.734951, 38.442146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333205, 0.675153, 0.658136,
		0.941126, 0.195912, 0.275501,
		0.057069, 0.711187, -0.700683,
		34.918236, 31.948307, 38.231941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181980, 31.925722, 39.131218>,  <34.878288, 31.450476, 38.722420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181980, 31.925722, 39.131218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032703, 32.130455, 38.821701>,  <34.943138, 32.253296, 38.635990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032703, 32.130455, 38.821701>,  <35.181980, 31.925722, 39.131218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032703, 32.130455, 38.821701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211357, 0.765213, 0.608094,
		0.903357, 0.390485, -0.177395,
		-0.373196, 0.511832, -0.773791,
		34.920746, 32.284004, 38.589565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523922, 32.591442, 39.156204>,  <35.181980, 31.925722, 39.131218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523922, 32.591442, 39.156204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189796, 32.624092, 38.938732>,  <34.989323, 32.643681, 38.808250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189796, 32.624092, 38.938732>,  <35.523922, 32.591442, 39.156204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189796, 32.624092, 38.938732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230071, 0.846260, 0.480533,
		0.499318, 0.526481, -0.688113,
		-0.835314, 0.081623, -0.543680,
		34.939201, 32.648579, 38.775627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540924, 33.189484, 38.971558>,  <35.523922, 32.591442, 39.156204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540924, 33.189484, 38.971558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155376, 33.089478, 38.934795>,  <34.924046, 33.029476, 38.912739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155376, 33.089478, 38.934795>,  <35.540924, 33.189484, 38.971558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155376, 33.089478, 38.934795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265790, 0.879961, 0.393731,
		-0.017566, 0.403933, -0.914620,
		-0.963871, -0.250013, -0.091904,
		34.866215, 33.014473, 38.907223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207741, 33.743313, 38.619659>,  <35.540924, 33.189484, 38.971558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207741, 33.743313, 38.619659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921562, 33.549053, 38.820572>,  <34.749855, 33.432499, 38.941120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921562, 33.549053, 38.820572>,  <35.207741, 33.743313, 38.619659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921562, 33.549053, 38.820572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352440, 0.871602, 0.340729,
		-0.603263, 0.066750, -0.794745,
		-0.715444, -0.485649, 0.502279,
		34.706928, 33.403358, 38.971256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746910, 34.238914, 38.667385>,  <35.207741, 33.743313, 38.619659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746910, 34.238914, 38.667385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599461, 34.001244, 38.953342>,  <34.510990, 33.858643, 39.124916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599461, 34.001244, 38.953342>,  <34.746910, 34.238914, 38.667385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599461, 34.001244, 38.953342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357722, 0.800496, 0.480875,
		-0.857994, -0.078473, -0.507630,
		-0.368620, -0.594178, 0.714893,
		34.488876, 33.822990, 39.167809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165012, 34.547722, 38.842442>,  <34.746910, 34.238914, 38.667385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165012, 34.547722, 38.842442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223415, 34.304611, 39.154667>,  <34.258457, 34.158745, 39.342003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223415, 34.304611, 39.154667>,  <34.165012, 34.547722, 38.842442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223415, 34.304611, 39.154667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304366, 0.723154, 0.620008,
		-0.941298, -0.328106, -0.079400,
		0.146010, -0.607779, 0.780568,
		34.267220, 34.122276, 39.388836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655918, 34.750084, 39.389126>,  <34.165012, 34.547722, 38.842442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655918, 34.750084, 39.389126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932503, 34.535374, 39.582520>,  <34.098454, 34.406548, 39.698555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932503, 34.535374, 39.582520>,  <33.655918, 34.750084, 39.389126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932503, 34.535374, 39.582520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081048, 0.607388, 0.790260,
		-0.717856, -0.585617, 0.376478,
		0.691458, -0.536780, 0.483480,
		34.139938, 34.374340, 39.727562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290447, 34.653992, 40.031754>,  <33.655918, 34.750084, 39.389126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290447, 34.653992, 40.031754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682831, 34.586617, 40.070408>,  <33.918262, 34.546192, 40.093601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682831, 34.586617, 40.070408>,  <33.290447, 34.653992, 40.031754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682831, 34.586617, 40.070408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022021, 0.590924, 0.806427,
		-0.192941, -0.788947, 0.583384,
		0.980964, -0.168439, 0.096640,
		33.977119, 34.536083, 40.099400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547611, 34.539612, 40.751888>,  <33.290447, 34.653992, 40.031754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547611, 34.539612, 40.751888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885281, 34.674084, 40.584866>,  <34.087883, 34.754765, 40.484650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885281, 34.674084, 40.584866>,  <33.547611, 34.539612, 40.751888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885281, 34.674084, 40.584866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140816, 0.612513, 0.777817,
		0.517246, -0.715411, 0.469727,
		0.844172, 0.336178, -0.417561,
		34.138531, 34.774937, 40.459599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928398, 34.606174, 41.414597>,  <33.547611, 34.539612, 40.751888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928398, 34.606174, 41.414597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107162, 34.821796, 41.129028>,  <34.214420, 34.951168, 40.957687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107162, 34.821796, 41.129028>,  <33.928398, 34.606174, 41.414597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107162, 34.821796, 41.129028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183031, 0.726075, 0.662808,
		0.875652, -0.426888, 0.225830,
		0.446915, 0.539056, -0.713923,
		34.241238, 34.983513, 40.914852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428913, 34.852734, 41.735992>,  <33.928398, 34.606174, 41.414597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428913, 34.852734, 41.735992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387661, 35.107216, 41.430153>,  <34.362911, 35.259903, 41.246651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387661, 35.107216, 41.430153>,  <34.428913, 34.852734, 41.735992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387661, 35.107216, 41.430153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211350, 0.765160, 0.608162,
		0.971955, -0.098880, -0.213371,
		-0.103128, 0.636202, -0.764599,
		34.356724, 35.298077, 41.200771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016758, 35.233555, 41.726040>,  <34.428913, 34.852734, 41.735992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016758, 35.233555, 41.726040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765312, 35.459354, 41.512051>,  <34.614445, 35.594833, 41.383659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765312, 35.459354, 41.512051>,  <35.016758, 35.233555, 41.726040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765312, 35.459354, 41.512051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217278, 0.787949, 0.576131,
		0.746752, 0.245926, -0.617966,
		-0.628611, 0.564497, -0.534968,
		34.576729, 35.628704, 41.351559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463520, 35.734283, 41.451672>,  <35.016758, 35.233555, 41.726040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463520, 35.734283, 41.451672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086819, 35.868774, 41.448574>,  <34.860798, 35.949471, 41.446716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086819, 35.868774, 41.448574>,  <35.463520, 35.734283, 41.451672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086819, 35.868774, 41.448574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282078, 0.802210, 0.526204,
		0.183139, 0.493367, -0.850323,
		-0.941749, 0.336226, -0.007748,
		34.804295, 35.969643, 41.446251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608391, 36.430164, 41.430279>,  <35.463520, 35.734283, 41.451672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608391, 36.430164, 41.430279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218884, 36.422878, 41.521004>,  <34.985180, 36.418507, 41.575439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218884, 36.422878, 41.521004>,  <35.608391, 36.430164, 41.430279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218884, 36.422878, 41.521004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096866, 0.868764, 0.485661,
		-0.205894, 0.494892, -0.844210,
		-0.973768, -0.018219, 0.226811,
		34.926754, 36.417412, 41.589046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386620, 37.039700, 41.222324>,  <35.608391, 36.430164, 41.430279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386620, 37.039700, 41.222324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118179, 36.917828, 41.492668>,  <34.957115, 36.844704, 41.654877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118179, 36.917828, 41.492668>,  <35.386620, 37.039700, 41.222324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118179, 36.917828, 41.492668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063865, 0.884500, 0.462148,
		-0.738609, 0.353312, -0.574132,
		-0.671103, -0.304680, 0.675864,
		34.916847, 36.826424, 41.695427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980713, 37.684879, 41.424973>,  <35.386620, 37.039700, 41.222324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980713, 37.684879, 41.424973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925179, 37.400402, 41.700634>,  <34.891857, 37.229717, 41.866032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925179, 37.400402, 41.700634>,  <34.980713, 37.684879, 41.424973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925179, 37.400402, 41.700634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103002, 0.702487, 0.704203,
		-0.984944, 0.026787, -0.170786,
		-0.138839, -0.711192, 0.689151,
		34.883526, 37.187046, 41.907379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512665, 38.022400, 41.926239>,  <34.980713, 37.684879, 41.424973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512665, 38.022400, 41.926239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678875, 37.714958, 42.120800>,  <34.778599, 37.530491, 42.237537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678875, 37.714958, 42.120800>,  <34.512665, 38.022400, 41.926239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678875, 37.714958, 42.120800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079315, 0.563332, 0.822415,
		-0.906118, -0.303154, 0.295039,
		0.415523, -0.768606, 0.486400,
		34.803532, 37.484375, 42.266720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163174, 37.995770, 42.491501>,  <34.512665, 38.022400, 41.926239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163174, 37.995770, 42.491501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492363, 37.789433, 42.586689>,  <34.689877, 37.665630, 42.643803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492363, 37.789433, 42.586689>,  <34.163174, 37.995770, 42.491501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492363, 37.789433, 42.586689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065247, 0.501956, 0.862429,
		-0.564325, -0.694227, 0.446752,
		0.822971, -0.515839, 0.237970,
		34.739254, 37.634682, 42.658081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055973, 37.713730, 43.144432>,  <34.163174, 37.995770, 42.491501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055973, 37.713730, 43.144432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451382, 37.727135, 43.085506>,  <34.688625, 37.735176, 43.050152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451382, 37.727135, 43.085506>,  <34.055973, 37.713730, 43.144432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451382, 37.727135, 43.085506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109941, 0.509200, 0.853597,
		0.103615, -0.859996, 0.499672,
		0.988522, 0.033511, -0.147310,
		34.747940, 37.737186, 43.041313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343578, 37.616783, 43.843529>,  <34.055973, 37.713730, 43.144432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343578, 37.616783, 43.843529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623787, 37.785610, 43.613354>,  <34.791912, 37.886906, 43.475250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623787, 37.785610, 43.613354>,  <34.343578, 37.616783, 43.843529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623787, 37.785610, 43.613354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299351, 0.558182, 0.773836,
		0.647807, -0.714348, 0.264674,
		0.700525, 0.422065, -0.575435,
		34.833946, 37.912228, 43.440723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897030, 37.761429, 44.293213>,  <34.343578, 37.616783, 43.843529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897030, 37.761429, 44.293213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958408, 38.012413, 43.987862>,  <34.995235, 38.163002, 43.804649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958408, 38.012413, 43.987862>,  <34.897030, 37.761429, 44.293213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958408, 38.012413, 43.987862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181310, 0.741539, 0.645947,
		0.971381, -0.237528, 0.000024,
		0.153448, 0.627456, -0.763383,
		35.004444, 38.200649, 43.758846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391655, 38.164803, 44.532589>,  <34.897030, 37.761429, 44.293213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391655, 38.164803, 44.532589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219803, 38.380718, 44.243027>,  <35.116692, 38.510269, 44.069290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219803, 38.380718, 44.243027>,  <35.391655, 38.164803, 44.532589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219803, 38.380718, 44.243027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158201, 0.834260, 0.528188,
		0.889037, 0.112405, -0.443822,
		-0.429634, 0.539792, -0.723906,
		35.090912, 38.542656, 44.025856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798588, 38.746494, 44.549606>,  <35.391655, 38.164803, 44.532589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798588, 38.746494, 44.549606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480503, 38.879700, 44.346928>,  <35.289654, 38.959625, 44.225319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480503, 38.879700, 44.346928>,  <35.798588, 38.746494, 44.549606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480503, 38.879700, 44.346928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067069, 0.878853, 0.472354,
		0.602614, 0.341637, -0.721207,
		-0.795209, 0.333018, -0.506697,
		35.241940, 38.979607, 44.194920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972244, 39.352890, 44.251598>,  <35.798588, 38.746494, 44.549606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972244, 39.352890, 44.251598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577457, 39.339344, 44.314537>,  <35.340588, 39.331219, 44.352299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577457, 39.339344, 44.314537>,  <35.972244, 39.352890, 44.251598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577457, 39.339344, 44.314537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030875, 0.919630, 0.391571,
		-0.157961, 0.391324, -0.906595,
		-0.986963, -0.033862, 0.157348,
		35.281368, 39.329185, 44.361740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405128, 39.707512, 43.623409>,  <35.972244, 39.352890, 44.251598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405128, 39.707512, 43.623409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791512, 39.758133, 43.713665>,  <37.023342, 39.788506, 43.767818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791512, 39.758133, 43.713665>,  <36.405128, 39.707512, 43.623409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791512, 39.758133, 43.713665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213264, -0.883255, -0.417587,
		0.146447, 0.451490, -0.880176,
		0.965956, 0.126555, 0.225636,
		37.081299, 39.796101, 43.781357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832920, 39.501427, 42.960106>,  <36.405128, 39.707512, 43.623409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832920, 39.501427, 42.960106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078789, 39.478363, 43.274776>,  <37.226311, 39.464527, 43.463577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078789, 39.478363, 43.274776>,  <36.832920, 39.501427, 42.960106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078789, 39.478363, 43.274776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349414, -0.874231, -0.337090,
		0.707168, 0.482074, -0.517221,
		0.614673, -0.057655, 0.786672,
		37.263191, 39.461067, 43.510777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470772, 39.317867, 42.696346>,  <36.832920, 39.501427, 42.960106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470772, 39.317867, 42.696346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527733, 39.221321, 43.080318>,  <37.561909, 39.163391, 43.310699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527733, 39.221321, 43.080318>,  <37.470772, 39.317867, 42.696346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527733, 39.221321, 43.080318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583237, -0.763105, -0.278398,
		0.799724, 0.599509, 0.032110,
		0.142399, -0.241370, 0.959929,
		37.570454, 39.148911, 43.368298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234837, 39.079308, 42.832001>,  <37.470772, 39.317867, 42.696346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234837, 39.079308, 42.832001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007442, 38.915855, 43.117615>,  <37.871006, 38.817783, 43.288982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007442, 38.915855, 43.117615>,  <38.234837, 39.079308, 42.832001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007442, 38.915855, 43.117615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502466, -0.859695, -0.091941,
		0.651419, 0.306510, 0.694049,
		-0.568490, -0.408628, 0.714033,
		37.836895, 38.793266, 43.331825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615891, 38.591270, 43.258045>,  <38.234837, 39.079308, 42.832001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615891, 38.591270, 43.258045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256508, 38.438419, 43.344532>,  <38.040878, 38.346710, 43.396423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256508, 38.438419, 43.344532>,  <38.615891, 38.591270, 43.258045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256508, 38.438419, 43.344532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317935, -0.905874, -0.279840,
		0.302796, -0.182684, 0.935383,
		-0.898461, -0.382125, 0.216213,
		37.986969, 38.323780, 43.409397>
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
