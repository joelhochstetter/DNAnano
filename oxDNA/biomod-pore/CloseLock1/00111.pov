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
	<24.236702, 35.044296, 34.709064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377420, 35.075424, 35.082199>,  <24.461851, 35.094101, 35.306080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377420, 35.075424, 35.082199>,  <24.236702, 35.044296, 34.709064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377420, 35.075424, 35.082199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411057, 0.882471, -0.228641,
		-0.840995, 0.463884, 0.278459,
		0.351795, 0.077823, 0.932837,
		24.482960, 35.098770, 35.362049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075615, 34.976177, 34.891743>,  <24.236702, 35.044296, 34.709064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075615, 34.976177, 34.891743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150509, 35.178909, 34.555157>,  <25.195446, 35.300549, 34.353207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150509, 35.178909, 34.555157>,  <25.075615, 34.976177, 34.891743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150509, 35.178909, 34.555157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637145, 0.589322, 0.496735,
		0.747656, -0.629141, -0.212586,
		0.187235, 0.506835, -0.841464,
		25.206680, 35.330959, 34.302719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780056, 34.826019, 34.697273>,  <25.075615, 34.976177, 34.891743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780056, 34.826019, 34.697273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625576, 35.176239, 34.581165>,  <25.532888, 35.386372, 34.511501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625576, 35.176239, 34.581165>,  <25.780056, 34.826019, 34.697273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625576, 35.176239, 34.581165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694898, 0.483107, 0.532658,
		0.606602, 0.004002, -0.794995,
		-0.386200, 0.875552, -0.290273,
		25.509716, 35.438904, 34.494083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253971, 35.256104, 34.329987>,  <25.780056, 34.826019, 34.697273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253971, 35.256104, 34.329987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014465, 35.505623, 34.530930>,  <25.870762, 35.655334, 34.651493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014465, 35.505623, 34.530930>,  <26.253971, 35.256104, 34.329987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014465, 35.505623, 34.530930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794493, 0.383270, 0.471047,
		0.101300, 0.681163, -0.725089,
		-0.598765, 0.623795, 0.502354,
		25.834835, 35.692760, 34.681637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511366, 35.931324, 34.136620>,  <26.253971, 35.256104, 34.329987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511366, 35.931324, 34.136620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350046, 35.812920, 34.482967>,  <26.253254, 35.741875, 34.690777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350046, 35.812920, 34.482967>,  <26.511366, 35.931324, 34.136620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350046, 35.812920, 34.482967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875689, 0.149751, 0.459068,
		-0.265555, 0.943372, 0.198822,
		-0.403298, -0.296014, 0.865867,
		26.229057, 35.724117, 34.742729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023676, 36.494614, 33.983883>,  <26.511366, 35.931324, 34.136620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023676, 36.494614, 33.983883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036917, 36.866974, 34.129395>,  <27.044861, 37.090389, 34.216702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036917, 36.866974, 34.129395>,  <27.023676, 36.494614, 33.983883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036917, 36.866974, 34.129395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044937, 0.362221, -0.931008,
		-0.998441, 0.047166, -0.029841,
		0.033103, 0.930898, 0.363776,
		27.046848, 37.146244, 34.238529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468302, 36.892937, 33.754185>,  <27.023676, 36.494614, 33.983883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468302, 36.892937, 33.754185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803984, 37.097179, 33.829037>,  <27.005392, 37.219727, 33.873947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803984, 37.097179, 33.829037>,  <26.468302, 36.892937, 33.754185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803984, 37.097179, 33.829037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063507, 0.249727, -0.966232,
		-0.540096, 0.822749, 0.177144,
		0.839204, 0.510608, 0.187127,
		27.055744, 37.250362, 33.885174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515375, 37.599014, 33.397305>,  <26.468302, 36.892937, 33.754185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515375, 37.599014, 33.397305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904964, 37.559853, 33.479073>,  <27.138718, 37.536354, 33.528133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904964, 37.559853, 33.479073>,  <26.515375, 37.599014, 33.397305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904964, 37.559853, 33.479073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224660, 0.536572, -0.813399,
		-0.030050, 0.838156, 0.544603,
		0.973974, -0.097907, 0.204424,
		27.197157, 37.530479, 33.540401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752180, 38.227333, 33.345272>,  <26.515375, 37.599014, 33.397305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752180, 38.227333, 33.345272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086878, 38.010551, 33.313908>,  <27.287697, 37.880482, 33.295090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086878, 38.010551, 33.313908>,  <26.752180, 38.227333, 33.345272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086878, 38.010551, 33.313908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259213, 0.518137, -0.815072,
		0.482356, 0.661682, 0.574029,
		0.836745, -0.541951, -0.078409,
		27.337902, 37.847965, 33.290386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304480, 38.724045, 33.361805>,  <26.752180, 38.227333, 33.345272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304480, 38.724045, 33.361805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426714, 38.385864, 33.186611>,  <27.500055, 38.182957, 33.081493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426714, 38.385864, 33.186611>,  <27.304480, 38.724045, 33.361805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426714, 38.385864, 33.186611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489731, 0.534041, -0.689176,
		0.816566, -0.003892, 0.577239,
		0.305587, -0.845450, -0.437985,
		27.518391, 38.132229, 33.055214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000097, 38.775494, 33.154015>,  <27.304480, 38.724045, 33.361805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000097, 38.775494, 33.154015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895845, 38.481651, 32.903439>,  <27.833294, 38.305347, 32.753094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895845, 38.481651, 32.903439>,  <28.000097, 38.775494, 33.154015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895845, 38.481651, 32.903439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483357, 0.462397, -0.743340,
		0.835726, -0.496530, 0.234563,
		-0.260630, -0.734606, -0.626439,
		27.817657, 38.261269, 32.715508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525679, 38.675304, 32.753578>,  <28.000097, 38.775494, 33.154015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525679, 38.675304, 32.753578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244955, 38.500011, 32.528931>,  <28.076521, 38.394836, 32.394142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244955, 38.500011, 32.528931>,  <28.525679, 38.675304, 32.753578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244955, 38.500011, 32.528931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365269, 0.455479, -0.811860,
		0.611590, -0.774913, -0.159586,
		-0.701809, -0.438234, -0.561618,
		28.034412, 38.368542, 32.360447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946152, 38.566021, 32.085339>,  <28.525679, 38.675304, 32.753578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946152, 38.566021, 32.085339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552515, 38.534733, 32.021530>,  <28.316334, 38.515961, 31.983246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552515, 38.534733, 32.021530>,  <28.946152, 38.566021, 32.085339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552515, 38.534733, 32.021530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105131, 0.467424, -0.877760,
		0.143222, -0.880566, -0.451765,
		-0.984091, -0.078220, -0.159520,
		28.257288, 38.511265, 31.973675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882713, 38.325314, 31.420256>,  <28.946152, 38.566021, 32.085339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882713, 38.325314, 31.420256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548029, 38.517956, 31.524542>,  <28.347218, 38.633541, 31.587112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548029, 38.517956, 31.524542>,  <28.882713, 38.325314, 31.420256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548029, 38.517956, 31.524542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042661, 0.531937, -0.845709,
		-0.545981, -0.696491, -0.465623,
		-0.836711, 0.481605, 0.260714,
		28.297016, 38.662437, 31.602757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572239, 38.398827, 30.817965>,  <28.882713, 38.325314, 31.420256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572239, 38.398827, 30.817965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381327, 38.671001, 31.040390>,  <28.266779, 38.834305, 31.173845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381327, 38.671001, 31.040390>,  <28.572239, 38.398827, 30.817965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381327, 38.671001, 31.040390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047824, 0.611738, -0.789614,
		-0.877448, -0.403461, -0.259430,
		-0.477282, 0.680438, 0.556063,
		28.238142, 38.875134, 31.207209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061960, 38.668041, 30.380489>,  <28.572239, 38.398827, 30.817965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061960, 38.668041, 30.380489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072557, 38.958710, 30.655077>,  <28.078917, 39.133110, 30.819830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072557, 38.958710, 30.655077>,  <28.061960, 38.668041, 30.380489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072557, 38.958710, 30.655077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154456, 0.675489, -0.721011,
		-0.987644, 0.125131, -0.094344,
		0.026493, 0.726675, 0.686470,
		28.080505, 39.176712, 30.861017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579126, 39.108635, 30.258055>,  <28.061960, 38.668041, 30.380489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579126, 39.108635, 30.258055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854959, 39.320709, 30.455389>,  <28.020458, 39.447952, 30.573790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854959, 39.320709, 30.455389>,  <27.579126, 39.108635, 30.258055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854959, 39.320709, 30.455389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202682, 0.512699, -0.834302,
		-0.695267, 0.675310, 0.246089,
		0.689582, 0.530185, 0.493336,
		28.061834, 39.479763, 30.603390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526871, 39.829311, 30.148588>,  <27.579126, 39.108635, 30.258055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526871, 39.829311, 30.148588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898298, 39.847912, 30.295881>,  <28.121155, 39.859074, 30.384258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898298, 39.847912, 30.295881>,  <27.526871, 39.829311, 30.148588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898298, 39.847912, 30.295881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248905, 0.657937, -0.710750,
		-0.275327, 0.751636, 0.599365,
		0.928569, 0.046503, 0.368234,
		28.176868, 39.861862, 30.406351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752230, 40.580551, 30.061960>,  <27.526871, 39.829311, 30.148588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752230, 40.580551, 30.061960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100363, 40.394325, 30.126175>,  <28.309242, 40.282589, 30.164703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100363, 40.394325, 30.126175>,  <27.752230, 40.580551, 30.061960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100363, 40.394325, 30.126175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438167, 0.583270, -0.683963,
		0.224792, 0.665617, 0.711634,
		0.870332, -0.465564, 0.160537,
		28.361462, 40.254658, 30.174335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358438, 41.059937, 29.999506>,  <27.752230, 40.580551, 30.061960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358438, 41.059937, 29.999506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527069, 40.703964, 29.929878>,  <28.628248, 40.490383, 29.888102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527069, 40.703964, 29.929878>,  <28.358438, 41.059937, 29.999506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527069, 40.703964, 29.929878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621070, 0.423239, -0.659652,
		0.660716, 0.169985, 0.731136,
		0.421577, -0.889929, -0.174068,
		28.653542, 40.436985, 29.877657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029217, 41.293884, 29.995680>,  <28.358438, 41.059937, 29.999506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029217, 41.293884, 29.995680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993822, 40.940689, 29.811285>,  <28.972586, 40.728771, 29.700649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993822, 40.940689, 29.811285>,  <29.029217, 41.293884, 29.995680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993822, 40.940689, 29.811285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719185, 0.263564, -0.642889,
		0.689161, -0.388421, 0.611708,
		-0.088487, -0.882985, -0.460985,
		28.967276, 40.675793, 29.672989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691702, 40.937080, 29.945038>,  <29.029217, 41.293884, 29.995680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691702, 40.937080, 29.945038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480951, 40.758232, 29.655907>,  <29.354502, 40.650921, 29.482428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480951, 40.758232, 29.655907>,  <29.691702, 40.937080, 29.945038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480951, 40.758232, 29.655907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815213, -0.025220, -0.578612,
		0.240482, -0.894116, 0.377789,
		-0.526874, -0.447124, -0.722830,
		29.322889, 40.624096, 29.439058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144005, 40.376930, 29.692638>,  <29.691702, 40.937080, 29.945038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144005, 40.376930, 29.692638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869913, 40.469818, 29.416513>,  <29.705458, 40.525551, 29.250837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869913, 40.469818, 29.416513>,  <30.144005, 40.376930, 29.692638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869913, 40.469818, 29.416513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723047, 0.102979, -0.683080,
		-0.087537, -0.967196, -0.238470,
		-0.685230, 0.232220, -0.690314,
		29.664345, 40.539486, 29.209419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217514, 39.898125, 29.146978>,  <30.144005, 40.376930, 29.692638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217514, 39.898125, 29.146978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025024, 40.211571, 28.989819>,  <29.909531, 40.399639, 28.895523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025024, 40.211571, 28.989819>,  <30.217514, 39.898125, 29.146978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025024, 40.211571, 28.989819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630375, -0.002108, -0.776288,
		-0.609138, -0.621245, -0.492956,
		-0.481225, 0.783614, -0.392901,
		29.880657, 40.446655, 28.871948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029083, 39.679317, 28.481653>,  <30.217514, 39.898125, 29.146978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029083, 39.679317, 28.481653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055111, 40.077789, 28.504936>,  <30.070726, 40.316872, 28.518906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055111, 40.077789, 28.504936>,  <30.029083, 39.679317, 28.481653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055111, 40.077789, 28.504936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559387, 0.011890, -0.828821,
		-0.826349, 0.086489, -0.556477,
		0.065067, 0.996182, 0.058206,
		30.074631, 40.376644, 28.522398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921852, 39.859077, 27.778374>,  <30.029083, 39.679317, 28.481653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921852, 39.859077, 27.778374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112045, 40.146935, 27.980770>,  <30.226160, 40.319649, 28.102209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112045, 40.146935, 27.980770>,  <29.921852, 39.859077, 27.778374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112045, 40.146935, 27.980770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704843, 0.032537, -0.708617,
		-0.526415, 0.693580, -0.491766,
		0.475482, 0.719644, 0.505993,
		30.254690, 40.362827, 28.132568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451384, 40.130962, 27.352171>,  <29.921852, 39.859077, 27.778374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451384, 40.130962, 27.352171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540894, 40.395061, 27.638947>,  <30.594599, 40.553520, 27.811012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540894, 40.395061, 27.638947>,  <30.451384, 40.130962, 27.352171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540894, 40.395061, 27.638947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754634, 0.348152, -0.556163,
		-0.616808, 0.665480, -0.420338,
		0.223774, 0.660247, 0.716937,
		30.608027, 40.593136, 27.854027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475374, 40.940670, 27.097729>,  <30.451384, 40.130962, 27.352171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475374, 40.940670, 27.097729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741634, 40.811802, 27.366983>,  <30.901390, 40.734482, 27.528536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741634, 40.811802, 27.366983>,  <30.475374, 40.940670, 27.097729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741634, 40.811802, 27.366983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743333, 0.206406, -0.636280,
		0.066053, 0.923905, 0.376877,
		0.665652, -0.322174, 0.673136,
		30.941330, 40.715149, 27.568924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879950, 41.517220, 27.470388>,  <30.475374, 40.940670, 27.097729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879950, 41.517220, 27.470388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036356, 41.161957, 27.373821>,  <31.130199, 40.948799, 27.315882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036356, 41.161957, 27.373821>,  <30.879950, 41.517220, 27.470388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036356, 41.161957, 27.373821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578617, 0.441197, -0.685965,
		0.715758, 0.128536, 0.686418,
		0.391016, -0.888158, -0.241417,
		31.153662, 40.895508, 27.301395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615717, 41.531025, 27.637678>,  <30.879950, 41.517220, 27.470388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615717, 41.531025, 27.637678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503448, 41.290657, 27.338312>,  <31.436089, 41.146439, 27.158693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503448, 41.290657, 27.338312>,  <31.615717, 41.531025, 27.637678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503448, 41.290657, 27.338312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608719, 0.491431, -0.622862,
		0.742082, -0.630392, 0.227861,
		-0.280669, -0.600918, -0.748414,
		31.419249, 41.110382, 27.113789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296627, 41.718399, 27.580750>,  <31.615717, 41.531025, 27.637678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296627, 41.718399, 27.580750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581707, 41.945820, 27.745094>,  <32.752754, 42.082272, 27.843700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581707, 41.945820, 27.745094>,  <32.296627, 41.718399, 27.580750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581707, 41.945820, 27.745094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690402, -0.672161, -0.267478,
		0.124091, 0.474292, -0.871578,
		0.712704, 0.568548, 0.410862,
		32.795517, 42.116383, 27.868353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818211, 41.961098, 27.207451>,  <32.296627, 41.718399, 27.580750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818211, 41.961098, 27.207451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981647, 41.966061, 27.572504>,  <33.079712, 41.969036, 27.791536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981647, 41.966061, 27.572504>,  <32.818211, 41.961098, 27.207451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981647, 41.966061, 27.572504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858208, -0.345595, -0.379531,
		0.310693, 0.938302, -0.151854,
		0.408594, 0.012405, 0.912632,
		33.104225, 41.969784, 27.846294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448063, 42.456493, 27.318794>,  <32.818211, 41.961098, 27.207451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448063, 42.456493, 27.318794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451916, 42.120228, 27.535381>,  <33.454227, 41.918468, 27.665335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451916, 42.120228, 27.535381>,  <33.448063, 42.456493, 27.318794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451916, 42.120228, 27.535381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804101, -0.315373, -0.503946,
		0.594414, 0.440253, 0.672940,
		0.009637, -0.840665, 0.541470,
		33.454807, 41.868027, 27.697823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013588, 43.097218, 27.468918>,  <33.448063, 42.456493, 27.318794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013588, 43.097218, 27.468918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683514, 42.885208, 27.390789>,  <32.485470, 42.758003, 27.343912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683514, 42.885208, 27.390789>,  <33.013588, 43.097218, 27.468918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683514, 42.885208, 27.390789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564863, -0.772784, -0.289371,
		0.002432, -0.349114, 0.937077,
		-0.825181, -0.530024, -0.195322,
		32.435959, 42.726200, 27.332191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294064, 42.779156, 28.076063>,  <33.013588, 43.097218, 27.468918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294064, 42.779156, 28.076063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505379, 42.981995, 28.348465>,  <33.632168, 43.103699, 28.511906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505379, 42.981995, 28.348465>,  <33.294064, 42.779156, 28.076063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505379, 42.981995, 28.348465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217660, -0.856143, 0.468661,
		0.820692, -0.099361, -0.562665,
		0.528289, 0.507096, 0.681003,
		33.663864, 43.134125, 28.552767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918480, 42.372704, 28.300835>,  <33.294064, 42.779156, 28.076063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918480, 42.372704, 28.300835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794197, 42.609810, 28.598045>,  <33.719627, 42.752075, 28.776371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794197, 42.609810, 28.598045>,  <33.918480, 42.372704, 28.300835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794197, 42.609810, 28.598045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234295, -0.805358, 0.544521,
		0.921177, -0.004901, 0.389113,
		-0.310707, 0.592768, 0.743026,
		33.700985, 42.787640, 28.820953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184330, 42.147102, 28.895929>,  <33.918480, 42.372704, 28.300835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184330, 42.147102, 28.895929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891735, 42.370018, 29.053082>,  <33.716179, 42.503769, 29.147373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891735, 42.370018, 29.053082>,  <34.184330, 42.147102, 28.895929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891735, 42.370018, 29.053082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308063, -0.784141, 0.538721,
		0.608299, 0.273034, 0.745269,
		-0.731484, 0.557293, 0.392880,
		33.672291, 42.537205, 29.170946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238186, 42.094036, 29.612391>,  <34.184330, 42.147102, 28.895929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238186, 42.094036, 29.612391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862801, 42.222092, 29.560558>,  <33.637569, 42.298927, 29.529459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862801, 42.222092, 29.560558>,  <34.238186, 42.094036, 29.612391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862801, 42.222092, 29.560558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319548, -0.662508, 0.677475,
		0.131039, 0.677194, 0.724042,
		-0.938466, 0.320142, -0.129582,
		33.581261, 42.318134, 29.521685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078529, 42.220913, 30.241367>,  <34.238186, 42.094036, 29.612391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078529, 42.220913, 30.241367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734688, 42.198872, 30.038172>,  <33.528385, 42.185646, 29.916254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734688, 42.198872, 30.038172>,  <34.078529, 42.220913, 30.241367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734688, 42.198872, 30.038172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396359, -0.555519, 0.730957,
		-0.322473, 0.829676, 0.455685,
		-0.859599, -0.055099, -0.507990,
		33.476807, 42.182343, 29.885775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532852, 42.378716, 30.747681>,  <34.078529, 42.220913, 30.241367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532852, 42.378716, 30.747681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357327, 42.178959, 30.448870>,  <33.252010, 42.059105, 30.269583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357327, 42.178959, 30.448870>,  <33.532852, 42.378716, 30.747681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357327, 42.178959, 30.448870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509314, -0.546681, 0.664634,
		-0.740297, 0.672124, -0.014454,
		-0.438815, -0.499388, -0.747029,
		33.225681, 42.029140, 30.224760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900772, 42.244846, 30.995781>,  <33.532852, 42.378716, 30.747681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900772, 42.244846, 30.995781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960857, 41.978798, 30.703192>,  <32.996906, 41.819168, 30.527637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960857, 41.978798, 30.703192>,  <32.900772, 42.244846, 30.995781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960857, 41.978798, 30.703192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504992, -0.687687, 0.521603,
		-0.849953, 0.291039, -0.439176,
		0.150209, -0.665119, -0.731474,
		33.005920, 41.779263, 30.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213230, 42.003387, 30.735142>,  <32.900772, 42.244846, 30.995781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213230, 42.003387, 30.735142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470562, 41.718533, 30.622723>,  <32.624962, 41.547619, 30.555271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470562, 41.718533, 30.622723>,  <32.213230, 42.003387, 30.735142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470562, 41.718533, 30.622723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450033, -0.648739, 0.613684,
		-0.619353, -0.268320, -0.737839,
		0.643329, -0.712139, -0.281046,
		32.663559, 41.504890, 30.538408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847883, 41.435993, 30.631659>,  <32.213230, 42.003387, 30.735142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847883, 41.435993, 30.631659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204498, 41.266674, 30.696125>,  <32.418468, 41.165081, 30.734806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204498, 41.266674, 30.696125>,  <31.847883, 41.435993, 30.631659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204498, 41.266674, 30.696125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450190, -0.788929, 0.418235,
		-0.049889, -0.445428, -0.893927,
		0.891538, -0.423302, 0.161168,
		32.471958, 41.139683, 30.744474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769115, 40.708408, 30.491442>,  <31.847883, 41.435993, 30.631659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769115, 40.708408, 30.491442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091602, 40.713158, 30.728043>,  <32.285095, 40.716007, 30.870003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091602, 40.713158, 30.728043>,  <31.769115, 40.708408, 30.491442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091602, 40.713158, 30.728043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343914, -0.804112, 0.484899,
		0.481392, -0.594359, -0.644204,
		0.806216, 0.011875, 0.591502,
		32.333466, 40.716721, 30.905493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712517, 40.108158, 30.750324>,  <31.769115, 40.708408, 30.491442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712517, 40.108158, 30.750324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990667, 40.256435, 30.996588>,  <32.157558, 40.345402, 31.144346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990667, 40.256435, 30.996588>,  <31.712517, 40.108158, 30.750324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990667, 40.256435, 30.996588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255746, -0.672964, 0.694056,
		0.671599, -0.640083, -0.373160,
		0.695377, 0.370693, 0.615661,
		32.199280, 40.367641, 31.181286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132416, 39.480923, 30.853485>,  <31.712517, 40.108158, 30.750324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132416, 39.480923, 30.853485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193508, 39.752090, 31.141121>,  <32.230164, 39.914791, 31.313704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193508, 39.752090, 31.141121>,  <32.132416, 39.480923, 30.853485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193508, 39.752090, 31.141121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192816, -0.693204, 0.694472,
		0.969275, -0.244722, 0.024838,
		0.152734, 0.677923, 0.719091,
		32.239330, 39.955467, 31.356848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641918, 39.238785, 31.260599>,  <32.132416, 39.480923, 30.853485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641918, 39.238785, 31.260599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411827, 39.481663, 31.479841>,  <32.273773, 39.627392, 31.611387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411827, 39.481663, 31.479841>,  <32.641918, 39.238785, 31.260599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411827, 39.481663, 31.479841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207583, -0.756488, 0.620190,
		0.791214, 0.242974, 0.561198,
		-0.575229, 0.607199, 0.548107,
		32.239258, 39.663822, 31.644274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695728, 39.056889, 31.919964>,  <32.641918, 39.238785, 31.260599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695728, 39.056889, 31.919964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393795, 39.311264, 31.984222>,  <32.212635, 39.463890, 32.022778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393795, 39.311264, 31.984222>,  <32.695728, 39.056889, 31.919964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393795, 39.311264, 31.984222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375561, -0.619836, 0.689026,
		0.537752, 0.459769, 0.706707,
		-0.754836, 0.635937, 0.160647,
		32.167343, 39.502045, 32.032417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662457, 39.174553, 32.603199>,  <32.695728, 39.056889, 31.919964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662457, 39.174553, 32.603199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284199, 39.243004, 32.492580>,  <32.057243, 39.284077, 32.426208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284199, 39.243004, 32.492580>,  <32.662457, 39.174553, 32.603199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284199, 39.243004, 32.492580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325048, -0.470518, 0.820339,
		0.010267, 0.865637, 0.500568,
		-0.945642, 0.171131, -0.276543,
		32.000507, 39.294342, 32.409618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256107, 39.282330, 33.157356>,  <32.662457, 39.174553, 32.603199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256107, 39.282330, 33.157356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000675, 39.168625, 32.871304>,  <31.847416, 39.100403, 32.699673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000675, 39.168625, 32.871304>,  <32.256107, 39.282330, 33.157356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000675, 39.168625, 32.871304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523467, -0.520715, 0.674417,
		-0.564087, 0.805018, 0.183720,
		-0.638583, -0.284258, -0.715129,
		31.809101, 39.083347, 32.656765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641392, 39.303665, 33.465271>,  <32.256107, 39.282330, 33.157356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641392, 39.303665, 33.465271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569014, 39.071724, 33.147522>,  <31.525587, 38.932560, 32.956871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569014, 39.071724, 33.147522>,  <31.641392, 39.303665, 33.465271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569014, 39.071724, 33.147522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547411, -0.611647, 0.571164,
		-0.817068, 0.538198, -0.206744,
		-0.180945, -0.579854, -0.794373,
		31.514730, 38.897766, 32.909210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851391, 39.240883, 33.501991>,  <31.641392, 39.303665, 33.465271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851391, 39.240883, 33.501991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963415, 38.966690, 33.233162>,  <31.030630, 38.802174, 33.071865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963415, 38.966690, 33.233162>,  <30.851391, 39.240883, 33.501991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963415, 38.966690, 33.233162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597636, -0.672373, 0.436745,
		-0.751265, 0.279342, -0.597971,
		0.280059, -0.685480, -0.672075,
		31.047434, 38.761047, 33.031540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222485, 38.994442, 33.224491>,  <30.851391, 39.240883, 33.501991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222485, 38.994442, 33.224491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489086, 38.711311, 33.130886>,  <30.649046, 38.541435, 33.074722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489086, 38.711311, 33.130886>,  <30.222485, 38.994442, 33.224491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489086, 38.711311, 33.130886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675216, -0.706208, 0.212963,
		-0.316003, 0.016071, -0.948622,
		0.666502, -0.707822, -0.234016,
		30.689037, 38.498966, 33.060680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941414, 38.530350, 32.710812>,  <30.222485, 38.994442, 33.224491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941414, 38.530350, 32.710812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248762, 38.328026, 32.867664>,  <30.433170, 38.206631, 32.961777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248762, 38.328026, 32.867664>,  <29.941414, 38.530350, 32.710812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248762, 38.328026, 32.867664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637242, -0.661502, 0.395395,
		0.059403, -0.553693, -0.830599,
		0.768371, -0.505805, 0.392132,
		30.479273, 38.176285, 32.985302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909815, 37.799019, 32.429409>,  <29.941414, 38.530350, 32.710812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909815, 37.799019, 32.429409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098671, 37.825344, 32.781036>,  <30.211985, 37.841141, 32.992012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098671, 37.825344, 32.781036>,  <29.909815, 37.799019, 32.429409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098671, 37.825344, 32.781036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659436, -0.635405, 0.401751,
		0.585004, -0.769369, -0.256597,
		0.472138, 0.065817, 0.879064,
		30.240313, 37.845089, 33.044754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689074, 37.172619, 32.713112>,  <29.909815, 37.799019, 32.429409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689074, 37.172619, 32.713112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876961, 37.326607, 33.030895>,  <29.989693, 37.418999, 33.221565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876961, 37.326607, 33.030895>,  <29.689074, 37.172619, 32.713112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876961, 37.326607, 33.030895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538331, -0.588336, 0.603375,
		0.699690, -0.711096, -0.069109,
		0.469717, 0.384972, 0.794458,
		30.017876, 37.442097, 33.269234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027397, 36.603867, 33.038925>,  <29.689074, 37.172619, 32.713112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027397, 36.603867, 33.038925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938814, 36.919605, 33.267971>,  <29.885664, 37.109047, 33.405399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938814, 36.919605, 33.267971>,  <30.027397, 36.603867, 33.038925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938814, 36.919605, 33.267971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323632, -0.613406, 0.720414,
		0.919901, -0.025773, 0.391302,
		-0.221460, 0.789347, 0.572614,
		29.872375, 37.156410, 33.439754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948345, 36.275532, 33.765163>,  <30.027397, 36.603867, 33.038925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948345, 36.275532, 33.765163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180933, 35.965958, 33.865490>,  <30.320486, 35.780212, 33.925686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180933, 35.965958, 33.865490>,  <29.948345, 36.275532, 33.765163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180933, 35.965958, 33.865490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354028, -0.036869, -0.934508,
		0.732499, 0.632187, 0.252558,
		0.581472, -0.773938, 0.250818,
		30.355375, 35.733776, 33.940735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723330, 36.419041, 33.695133>,  <29.948345, 36.275532, 33.765163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723330, 36.419041, 33.695133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622549, 36.043476, 33.601357>,  <30.562080, 35.818138, 33.545090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622549, 36.043476, 33.601357>,  <30.723330, 36.419041, 33.695133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622549, 36.043476, 33.601357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687574, -0.003198, -0.726108,
		0.681001, -0.344144, 0.646376,
		-0.251953, -0.938912, -0.234446,
		30.546963, 35.761803, 33.531021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092409, 35.876659, 33.875729>,  <30.723330, 36.419041, 33.695133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092409, 35.876659, 33.875729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926828, 35.834278, 33.514084>,  <30.827480, 35.808849, 33.297096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926828, 35.834278, 33.514084>,  <31.092409, 35.876659, 33.875729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926828, 35.834278, 33.514084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857094, 0.289210, -0.426320,
		0.306649, -0.951384, -0.028904,
		-0.413953, -0.105957, -0.904111,
		30.802643, 35.802490, 33.242851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578463, 35.534069, 33.514915>,  <31.092409, 35.876659, 33.875729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578463, 35.534069, 33.514915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340206, 35.728226, 33.258911>,  <31.197252, 35.844719, 33.105309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340206, 35.728226, 33.258911>,  <31.578463, 35.534069, 33.514915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340206, 35.728226, 33.258911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786313, 0.189583, -0.588022,
		-0.164085, -0.853496, -0.494592,
		-0.595640, 0.485389, -0.640008,
		31.161514, 35.873844, 33.066910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930601, 35.459686, 32.906033>,  <31.578463, 35.534069, 33.514915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930601, 35.459686, 32.906033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659849, 35.748768, 32.850132>,  <31.497398, 35.922218, 32.816589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659849, 35.748768, 32.850132>,  <31.930601, 35.459686, 32.906033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659849, 35.748768, 32.850132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658575, 0.509775, -0.553541,
		-0.328805, -0.466719, -0.821012,
		-0.676880, 0.722705, -0.139753,
		31.456785, 35.965580, 32.808205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418598, 35.494160, 33.479286>,  <31.930601, 35.459686, 32.906033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418598, 35.494160, 33.479286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617947, 35.811958, 33.618084>,  <32.737556, 36.002636, 33.701363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617947, 35.811958, 33.618084>,  <32.418598, 35.494160, 33.479286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617947, 35.811958, 33.618084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757559, -0.204452, -0.619922,
		-0.421581, 0.571819, -0.703770,
		0.498370, 0.794495, 0.346994,
		32.767456, 36.050308, 33.722183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738922, 35.868347, 32.864578>,  <32.418598, 35.494160, 33.479286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738922, 35.868347, 32.864578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938324, 35.934441, 33.204975>,  <33.057964, 35.974098, 33.409214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938324, 35.934441, 33.204975>,  <32.738922, 35.868347, 32.864578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938324, 35.934441, 33.204975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842365, 0.139520, -0.520534,
		-0.204740, 0.976336, -0.069636,
		0.498501, 0.165233, 0.850997,
		33.087875, 35.984009, 33.460274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187538, 36.539310, 32.703735>,  <32.738922, 35.868347, 32.864578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187538, 36.539310, 32.703735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317474, 36.269276, 32.968681>,  <33.395435, 36.107254, 33.127651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317474, 36.269276, 32.968681>,  <33.187538, 36.539310, 32.703735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317474, 36.269276, 32.968681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870083, -0.061201, -0.489091,
		0.370717, 0.735193, 0.567503,
		0.324844, -0.675089, 0.662368,
		33.414928, 36.066750, 33.167393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860699, 36.088963, 32.757191>,  <33.187538, 36.539310, 32.703735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860699, 36.088963, 32.757191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073948, 36.098572, 33.095470>,  <34.201897, 36.104340, 33.298439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073948, 36.098572, 33.095470>,  <33.860699, 36.088963, 32.757191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073948, 36.098572, 33.095470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837529, -0.126438, 0.531563,
		0.119702, -0.991683, -0.047280,
		0.533120, 0.024031, 0.845698,
		34.233883, 36.105782, 33.349178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659203, 35.449932, 33.209309>,  <33.860699, 36.088963, 32.757191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659203, 35.449932, 33.209309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822659, 35.720791, 33.454090>,  <33.920731, 35.883308, 33.600960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822659, 35.720791, 33.454090>,  <33.659203, 35.449932, 33.209309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822659, 35.720791, 33.454090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654053, -0.250380, 0.713810,
		0.636576, -0.691939, 0.340576,
		0.408639, 0.677149, 0.611951,
		33.945251, 35.923935, 33.637676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600925, 35.164886, 33.834110>,  <33.659203, 35.449932, 33.209309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600925, 35.164886, 33.834110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637516, 35.552860, 33.924316>,  <33.659470, 35.785645, 33.978439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637516, 35.552860, 33.924316>,  <33.600925, 35.164886, 33.834110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637516, 35.552860, 33.924316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635917, -0.117380, 0.762779,
		0.766317, -0.213188, 0.606061,
		0.091475, 0.969935, 0.225520,
		33.664959, 35.843842, 33.991974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502865, 35.177841, 34.549892>,  <33.600925, 35.164886, 33.834110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502865, 35.177841, 34.549892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473133, 35.567379, 34.464016>,  <33.455292, 35.801102, 34.412491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473133, 35.567379, 34.464016>,  <33.502865, 35.177841, 34.549892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473133, 35.567379, 34.464016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694667, 0.103898, 0.711788,
		0.715480, 0.202051, 0.668778,
		-0.074333, 0.973848, -0.214695,
		33.450832, 35.859535, 34.399609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588387, 35.530594, 35.202824>,  <33.502865, 35.177841, 34.549892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588387, 35.530594, 35.202824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406971, 35.771488, 34.940037>,  <33.298122, 35.916027, 34.782364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406971, 35.771488, 34.940037>,  <33.588387, 35.530594, 35.202824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406971, 35.771488, 34.940037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722116, 0.183719, 0.666930,
		0.522349, 0.776889, 0.351562,
		-0.453542, 0.602238, -0.656969,
		33.270908, 35.952160, 34.742947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537369, 36.155933, 35.496429>,  <33.588387, 35.530594, 35.202824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537369, 36.155933, 35.496429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254299, 36.179592, 35.214806>,  <33.084457, 36.193787, 35.045830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254299, 36.179592, 35.214806>,  <33.537369, 36.155933, 35.496429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254299, 36.179592, 35.214806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672245, 0.250326, 0.696724,
		0.217453, 0.966353, -0.137387,
		-0.707673, 0.059147, -0.704060,
		33.041996, 36.197338, 35.003586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101086, 36.631840, 35.763695>,  <33.537369, 36.155933, 35.496429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101086, 36.631840, 35.763695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872841, 36.485229, 35.469742>,  <32.735893, 36.397263, 35.293369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872841, 36.485229, 35.469742>,  <33.101086, 36.631840, 35.763695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872841, 36.485229, 35.469742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794807, 0.021369, 0.606486,
		-0.206589, 0.930162, -0.303511,
		-0.570616, -0.366527, -0.734885,
		32.701656, 36.375271, 35.249275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631859, 37.044331, 35.723515>,  <33.101086, 36.631840, 35.763695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631859, 37.044331, 35.723515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488785, 36.711983, 35.553005>,  <32.402939, 36.512573, 35.450699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488785, 36.711983, 35.553005>,  <32.631859, 37.044331, 35.723515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488785, 36.711983, 35.553005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808805, 0.047459, 0.586158,
		-0.466793, 0.554433, -0.688990,
		-0.357684, -0.830874, -0.426275,
		32.381481, 36.462719, 35.425121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958094, 37.194675, 35.507412>,  <32.631859, 37.044331, 35.723515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958094, 37.194675, 35.507412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001713, 36.800739, 35.561375>,  <32.027885, 36.564377, 35.593750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001713, 36.800739, 35.561375>,  <31.958094, 37.194675, 35.507412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001713, 36.800739, 35.561375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654447, 0.031021, 0.755471,
		-0.748203, -0.170670, -0.641143,
		0.109047, -0.984840, 0.134905,
		32.034428, 36.505287, 35.601845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361410, 37.068600, 35.763718>,  <31.958094, 37.194675, 35.507412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361410, 37.068600, 35.763718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546003, 36.722412, 35.841690>,  <31.656759, 36.514702, 35.888474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546003, 36.722412, 35.841690>,  <31.361410, 37.068600, 35.763718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546003, 36.722412, 35.841690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537688, -0.098089, 0.837419,
		-0.705637, -0.491270, -0.510617,
		0.461485, -0.865466, 0.194935,
		31.684448, 36.462772, 35.900169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845655, 36.434967, 35.873856>,  <31.361410, 37.068600, 35.763718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845655, 36.434967, 35.873856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183756, 36.363476, 36.075291>,  <31.386616, 36.320580, 36.196152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183756, 36.363476, 36.075291>,  <30.845655, 36.434967, 35.873856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183756, 36.363476, 36.075291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534319, -0.270132, 0.800957,
		-0.007118, -0.946089, -0.323828,
		0.845253, -0.178729, 0.503591,
		31.437332, 36.309856, 36.226368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624285, 35.811802, 36.372173>,  <30.845655, 36.434967, 35.873856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624285, 35.811802, 36.372173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986435, 35.941578, 36.481743>,  <31.203724, 36.019444, 36.547485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986435, 35.941578, 36.481743>,  <30.624285, 35.811802, 36.372173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986435, 35.941578, 36.481743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195518, -0.254127, 0.947202,
		0.376924, -0.911130, -0.166645,
		0.905374, 0.324441, 0.273929,
		31.258047, 36.038910, 36.563923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075605, 35.214245, 36.614719>,  <30.624285, 35.811802, 36.372173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075605, 35.214245, 36.614719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213919, 35.551678, 36.779060>,  <31.296906, 35.754139, 36.877666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213919, 35.551678, 36.779060>,  <31.075605, 35.214245, 36.614719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213919, 35.551678, 36.779060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144930, -0.384594, 0.911638,
		0.927055, -0.374773, -0.010725,
		0.345782, 0.843583, 0.410855,
		31.317654, 35.804752, 36.902317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495770, 34.998249, 37.145405>,  <31.075605, 35.214245, 36.614719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495770, 34.998249, 37.145405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420940, 35.377342, 37.248787>,  <31.376043, 35.604797, 37.310818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420940, 35.377342, 37.248787>,  <31.495770, 34.998249, 37.145405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420940, 35.377342, 37.248787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038856, -0.270032, 0.962067,
		0.981577, 0.169935, 0.087341,
		-0.187074, 0.947737, 0.258455,
		31.364819, 35.661663, 37.326324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850332, 35.074890, 37.833191>,  <31.495770, 34.998249, 37.145405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850332, 35.074890, 37.833191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570885, 35.360081, 37.809177>,  <31.403217, 35.531193, 37.794769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570885, 35.360081, 37.809177>,  <31.850332, 35.074890, 37.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570885, 35.360081, 37.809177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274005, -0.189090, 0.942956,
		0.660949, 0.675216, 0.327459,
		-0.698618, 0.712972, -0.060034,
		31.361300, 35.573971, 37.791168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916620, 35.299541, 38.464684>,  <31.850332, 35.074890, 37.833191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916620, 35.299541, 38.464684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563400, 35.442612, 38.343163>,  <31.351469, 35.528454, 38.270248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563400, 35.442612, 38.343163>,  <31.916620, 35.299541, 38.464684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563400, 35.442612, 38.343163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347590, -0.063566, 0.935489,
		0.315287, 0.931681, 0.180456,
		-0.883049, 0.357672, -0.303802,
		31.298485, 35.549911, 38.252022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778511, 35.913143, 38.870640>,  <31.916620, 35.299541, 38.464684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778511, 35.913143, 38.870640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418428, 35.807507, 38.732140>,  <31.202379, 35.744125, 38.649040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418428, 35.807507, 38.732140>,  <31.778511, 35.913143, 38.870640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418428, 35.807507, 38.732140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393892, 0.154772, 0.906033,
		-0.185683, 0.952000, -0.243348,
		-0.900206, -0.264088, -0.346246,
		31.148367, 35.728279, 38.628265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312386, 36.318752, 39.188133>,  <31.778511, 35.913143, 38.870640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312386, 36.318752, 39.188133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071175, 36.028763, 39.055000>,  <30.926449, 35.854771, 38.975121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071175, 36.028763, 39.055000>,  <31.312386, 36.318752, 39.188133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071175, 36.028763, 39.055000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543353, 0.067803, 0.836761,
		-0.584061, 0.685434, -0.434802,
		-0.603026, -0.724971, -0.332832,
		30.890266, 35.811272, 38.955151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753897, 36.595585, 39.390079>,  <31.312386, 36.318752, 39.188133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753897, 36.595585, 39.390079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657072, 36.217442, 39.302719>,  <30.598978, 35.990555, 39.250305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657072, 36.217442, 39.302719>,  <30.753897, 36.595585, 39.390079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657072, 36.217442, 39.302719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745631, 0.037216, 0.665318,
		-0.620839, 0.323892, -0.713900,
		-0.242060, -0.945362, -0.218399,
		30.584454, 35.933834, 39.237198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004471, 36.512280, 39.297421>,  <30.753897, 36.595585, 39.390079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004471, 36.512280, 39.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178551, 36.177822, 39.430965>,  <30.282999, 35.977150, 39.511093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178551, 36.177822, 39.430965>,  <30.004471, 36.512280, 39.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178551, 36.177822, 39.430965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704894, -0.085742, 0.704112,
		-0.560111, -0.541770, -0.626706,
		0.435202, -0.836142, 0.333866,
		30.309111, 35.926979, 39.531124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459669, 36.230354, 39.563896>,  <30.004471, 36.512280, 39.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459669, 36.230354, 39.563896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749353, 36.009300, 39.728878>,  <29.923164, 35.876667, 39.827866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749353, 36.009300, 39.728878>,  <29.459669, 36.230354, 39.563896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749353, 36.009300, 39.728878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653860, -0.360320, 0.665310,
		-0.219057, -0.751510, -0.622292,
		0.724211, -0.552633, 0.412451,
		29.966616, 35.843510, 39.852612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034151, 35.593834, 39.823948>,  <29.459669, 36.230354, 39.563896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034151, 35.593834, 39.823948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377636, 35.606575, 40.028534>,  <29.583727, 35.614220, 40.151287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377636, 35.606575, 40.028534>,  <29.034151, 35.593834, 39.823948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377636, 35.606575, 40.028534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482165, -0.287834, 0.827447,
		0.173575, -0.957150, -0.231808,
		0.858713, 0.031854, 0.511465,
		29.635250, 35.616131, 40.181973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987516, 35.023308, 40.314133>,  <29.034151, 35.593834, 39.823948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987516, 35.023308, 40.314133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267202, 35.274860, 40.450138>,  <29.435015, 35.425793, 40.531742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267202, 35.274860, 40.450138>,  <28.987516, 35.023308, 40.314133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267202, 35.274860, 40.450138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354603, -0.107892, 0.928771,
		0.620771, -0.769980, 0.147563,
		0.699214, 0.628880, 0.340013,
		29.476967, 35.463524, 40.552143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438353, 34.607967, 40.779636>,  <28.987516, 35.023308, 40.314133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438353, 34.607967, 40.779636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433302, 35.001675, 40.850136>,  <29.430271, 35.237900, 40.892437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433302, 35.001675, 40.850136>,  <29.438353, 34.607967, 40.779636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433302, 35.001675, 40.850136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273522, -0.172939, 0.946191,
		0.961783, -0.036262, 0.271402,
		-0.012625, 0.984265, 0.176248,
		29.429514, 35.296955, 40.903011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775635, 34.691856, 41.414097>,  <29.438353, 34.607967, 40.779636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775635, 34.691856, 41.414097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566153, 35.029278, 41.366528>,  <29.440464, 35.231731, 41.337986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566153, 35.029278, 41.366528>,  <29.775635, 34.691856, 41.414097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566153, 35.029278, 41.366528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419926, -0.134162, 0.897587,
		0.741212, 0.520010, 0.424493,
		-0.523705, 0.843558, -0.118923,
		29.409040, 35.282345, 41.330853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877136, 35.081783, 42.025402>,  <29.775635, 34.691856, 41.414097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877136, 35.081783, 42.025402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550665, 35.261307, 41.879845>,  <29.354782, 35.369022, 41.792511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550665, 35.261307, 41.879845>,  <29.877136, 35.081783, 42.025402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550665, 35.261307, 41.879845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425687, -0.041217, 0.903931,
		0.390696, 0.892675, 0.224693,
		-0.816178, 0.448812, -0.363897,
		29.305811, 35.395950, 41.770676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660576, 35.776924, 42.315681>,  <29.877136, 35.081783, 42.025402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660576, 35.776924, 42.315681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316143, 35.598122, 42.218754>,  <29.109484, 35.490841, 42.160599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316143, 35.598122, 42.218754>,  <29.660576, 35.776924, 42.315681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316143, 35.598122, 42.218754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148564, -0.234589, 0.960675,
		-0.486278, 0.863220, 0.135591,
		-0.861082, -0.447011, -0.242319,
		29.057817, 35.464020, 42.146057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055220, 35.987171, 42.867458>,  <29.660576, 35.776924, 42.315681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055220, 35.987171, 42.867458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984949, 35.639950, 42.681721>,  <28.942787, 35.431618, 42.570278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984949, 35.639950, 42.681721>,  <29.055220, 35.987171, 42.867458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984949, 35.639950, 42.681721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281884, -0.407578, 0.868574,
		-0.943228, 0.283480, -0.173089,
		-0.175676, -0.868055, -0.464347,
		28.932247, 35.379532, 42.542416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432480, 35.745987, 43.181591>,  <29.055220, 35.987171, 42.867458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432480, 35.745987, 43.181591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609026, 35.427372, 43.016312>,  <28.714952, 35.236202, 42.917145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609026, 35.427372, 43.016312>,  <28.432480, 35.745987, 43.181591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609026, 35.427372, 43.016312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277596, -0.559090, 0.781255,
		-0.853310, -0.230116, -0.467876,
		0.441364, -0.796533, -0.413198,
		28.741436, 35.188412, 42.892353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981428, 35.275108, 43.431511>,  <28.432480, 35.745987, 43.181591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981428, 35.275108, 43.431511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305922, 35.066921, 43.324924>,  <28.500618, 34.942009, 43.260971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305922, 35.066921, 43.324924>,  <27.981428, 35.275108, 43.431511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305922, 35.066921, 43.324924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178544, -0.654451, 0.734721,
		-0.556792, -0.548456, -0.623842,
		0.811236, -0.520470, -0.266470,
		28.549292, 34.910778, 43.244984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784515, 34.616310, 43.412151>,  <27.981428, 35.275108, 43.431511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784515, 34.616310, 43.412151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181362, 34.619957, 43.462147>,  <28.419470, 34.622143, 43.492146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181362, 34.619957, 43.462147>,  <27.784515, 34.616310, 43.412151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181362, 34.619957, 43.462147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083351, -0.696788, 0.712418,
		0.093585, -0.717219, -0.690535,
		0.992116, 0.009115, 0.124990,
		28.478996, 34.622692, 43.499645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026754, 33.915936, 43.424335>,  <27.784515, 34.616310, 43.412151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026754, 33.915936, 43.424335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311815, 34.110981, 43.626072>,  <28.482851, 34.228008, 43.747112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311815, 34.110981, 43.626072>,  <28.026754, 33.915936, 43.424335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311815, 34.110981, 43.626072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081715, -0.656331, 0.750035,
		0.696742, -0.575726, -0.427890,
		0.712652, 0.487616, 0.504339,
		28.525612, 34.257267, 43.777374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134884, 33.490009, 43.906059>,  <28.026754, 33.915936, 43.424335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134884, 33.490009, 43.906059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328920, 33.809227, 44.049061>,  <28.445341, 34.000759, 44.134861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328920, 33.809227, 44.049061>,  <28.134884, 33.490009, 43.906059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328920, 33.809227, 44.049061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019035, -0.399092, 0.916713,
		0.874257, -0.451493, -0.178405,
		0.485090, 0.798047, 0.357503,
		28.474447, 34.048641, 44.156311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706289, 33.162941, 44.283787>,  <28.134884, 33.490009, 43.906059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706289, 33.162941, 44.283787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628086, 33.529495, 44.423512>,  <28.581163, 33.749428, 44.507347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628086, 33.529495, 44.423512>,  <28.706289, 33.162941, 44.283787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628086, 33.529495, 44.423512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026742, -0.351074, 0.935966,
		0.980337, 0.192332, 0.044133,
		-0.195510, 0.916382, 0.349314,
		28.569433, 33.804409, 44.528305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120291, 33.239452, 44.876881>,  <28.706289, 33.162941, 44.283787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120291, 33.239452, 44.876881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825253, 33.504879, 44.926899>,  <28.648230, 33.664135, 44.956909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825253, 33.504879, 44.926899>,  <29.120291, 33.239452, 44.876881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825253, 33.504879, 44.926899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065991, -0.255135, 0.964651,
		0.672010, 0.703271, 0.231976,
		-0.737596, 0.663563, 0.125044,
		28.603973, 33.703949, 44.964413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168747, 33.399879, 45.575966>,  <29.120291, 33.239452, 44.876881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168747, 33.399879, 45.575966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806955, 33.544189, 45.484962>,  <28.589880, 33.630775, 45.430359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806955, 33.544189, 45.484962>,  <29.168747, 33.399879, 45.575966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806955, 33.544189, 45.484962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313864, -0.201813, 0.927772,
		0.288803, 0.910556, 0.295770,
		-0.904479, 0.360775, -0.227507,
		28.535612, 33.652424, 45.416710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894615, 33.830261, 46.084473>,  <29.168747, 33.399879, 45.575966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894615, 33.830261, 46.084473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568142, 33.695717, 45.896557>,  <28.372257, 33.614990, 45.783806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568142, 33.695717, 45.896557>,  <28.894615, 33.830261, 46.084473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568142, 33.695717, 45.896557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381779, -0.296349, 0.875455,
		-0.433694, 0.893889, 0.113458,
		-0.816183, -0.336364, -0.469793,
		28.323288, 33.594807, 45.755619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286909, 34.004505, 46.537205>,  <28.894615, 33.830261, 46.084473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286909, 34.004505, 46.537205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149122, 33.732582, 46.278221>,  <28.066450, 33.569427, 46.122829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149122, 33.732582, 46.278221>,  <28.286909, 34.004505, 46.537205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149122, 33.732582, 46.278221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658935, -0.316160, 0.682530,
		-0.668690, 0.661743, -0.339042,
		-0.344468, -0.679808, -0.647458,
		28.045782, 33.528641, 46.083984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588770, 34.042568, 46.801819>,  <28.286909, 34.004505, 46.537205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588770, 34.042568, 46.801819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612886, 33.712212, 46.577579>,  <27.627356, 33.513996, 46.443035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612886, 33.712212, 46.577579>,  <27.588770, 34.042568, 46.801819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612886, 33.712212, 46.577579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654548, -0.456725, 0.602470,
		-0.753613, 0.330616, -0.568121,
		0.060289, -0.825891, -0.560597,
		27.630974, 33.464443, 46.409401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934086, 33.808117, 46.636532>,  <27.588770, 34.042568, 46.801819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934086, 33.808117, 46.636532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167271, 33.483269, 46.626629>,  <27.307182, 33.288361, 46.620686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167271, 33.483269, 46.626629>,  <26.934086, 33.808117, 46.636532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167271, 33.483269, 46.626629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624151, -0.467126, 0.626282,
		-0.520184, -0.349644, -0.779203,
		0.582962, -0.812122, -0.024761,
		27.342159, 33.239632, 46.619202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480225, 33.256634, 46.543308>,  <26.934086, 33.808117, 46.636532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480225, 33.256634, 46.543308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821264, 33.104549, 46.686703>,  <27.025888, 33.013298, 46.772739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821264, 33.104549, 46.686703>,  <26.480225, 33.256634, 46.543308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821264, 33.104549, 46.686703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522514, -0.629836, 0.574705,
		0.007276, -0.677306, -0.735665,
		0.852599, -0.380214, 0.358485,
		27.077044, 32.990486, 46.794247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616934, 32.627438, 46.205730>,  <26.480225, 33.256634, 46.543308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616934, 32.627438, 46.205730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765278, 32.654701, 46.576202>,  <26.854284, 32.671059, 46.798485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765278, 32.654701, 46.576202>,  <26.616934, 32.627438, 46.205730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765278, 32.654701, 46.576202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593985, -0.749229, 0.292980,
		0.713894, -0.658794, -0.237373,
		0.370860, 0.068161, 0.926184,
		26.876535, 32.675148, 46.854057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100861, 32.166130, 46.502163>,  <26.616934, 32.627438, 46.205730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100861, 32.166130, 46.502163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894995, 32.280071, 46.825638>,  <26.771475, 32.348434, 47.019722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894995, 32.280071, 46.825638>,  <27.100861, 32.166130, 46.502163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894995, 32.280071, 46.825638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380824, -0.921000, 0.082051,
		0.768174, -0.265739, 0.582487,
		-0.514667, 0.284854, 0.808688,
		26.740595, 32.365528, 47.068245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014120, 32.007565, 45.869419>,  <27.100861, 32.166130, 46.502163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014120, 32.007565, 45.869419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993500, 31.760809, 45.555275>,  <26.981127, 31.612757, 45.366787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993500, 31.760809, 45.555275>,  <27.014120, 32.007565, 45.869419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993500, 31.760809, 45.555275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823868, -0.470735, 0.315673,
		-0.564432, -0.630763, 0.532498,
		-0.051551, -0.616884, -0.785364,
		26.978035, 31.575743, 45.319664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185535, 31.379593, 46.210110>,  <27.014120, 32.007565, 45.869419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185535, 31.379593, 46.210110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317188, 31.373066, 45.832451>,  <27.396179, 31.369150, 45.605858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317188, 31.373066, 45.832451>,  <27.185535, 31.379593, 46.210110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317188, 31.373066, 45.832451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943488, 0.046736, 0.328096,
		0.038771, -0.998774, 0.030781,
		0.329132, -0.016321, -0.944143,
		27.415928, 31.368170, 45.549210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075655, 31.254332, 46.837109>,  <27.185535, 31.379593, 46.210110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075655, 31.254332, 46.837109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185358, 31.388271, 47.197701>,  <27.251179, 31.468636, 47.414055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185358, 31.388271, 47.197701>,  <27.075655, 31.254332, 46.837109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185358, 31.388271, 47.197701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907308, -0.400778, -0.127162,
		0.318711, 0.852791, -0.413728,
		0.274256, 0.334850, 0.901476,
		27.267635, 31.488726, 47.468143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682646, 31.737762, 46.798740>,  <27.075655, 31.254332, 46.837109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682646, 31.737762, 46.798740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656900, 31.506769, 47.124287>,  <27.641453, 31.368174, 47.319614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656900, 31.506769, 47.124287>,  <27.682646, 31.737762, 46.798740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656900, 31.506769, 47.124287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813861, -0.502323, -0.292065,
		0.577484, 0.643573, 0.502320,
		-0.064362, -0.577482, 0.813862,
		27.637592, 31.333525, 47.368446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236506, 31.859163, 47.222713>,  <27.682646, 31.737762, 46.798740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236506, 31.859163, 47.222713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113073, 31.479378, 47.245689>,  <28.039013, 31.251507, 47.259476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113073, 31.479378, 47.245689>,  <28.236506, 31.859163, 47.222713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113073, 31.479378, 47.245689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900632, -0.311070, -0.303476,
		0.306005, -0.041919, 0.951106,
		-0.308582, -0.949462, 0.057435,
		28.020498, 31.194540, 47.262920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649363, 31.534435, 47.753819>,  <28.236506, 31.859163, 47.222713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649363, 31.534435, 47.753819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516312, 31.309500, 47.450996>,  <28.436481, 31.174538, 47.269302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516312, 31.309500, 47.450996>,  <28.649363, 31.534435, 47.753819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516312, 31.309500, 47.450996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937564, -0.110657, -0.329739,
		0.101652, -0.819468, 0.564038,
		-0.332625, -0.562340, -0.757056,
		28.416525, 31.140799, 47.223881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066805, 31.019638, 47.830853>,  <28.649363, 31.534435, 47.753819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066805, 31.019638, 47.830853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920916, 30.998596, 47.459000>,  <28.833382, 30.985971, 47.235889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920916, 30.998596, 47.459000>,  <29.066805, 31.019638, 47.830853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920916, 30.998596, 47.459000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927711, 0.064781, -0.367636,
		0.079563, -0.996512, 0.025178,
		-0.364722, -0.052608, -0.929629,
		28.811499, 30.982815, 47.180111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396282, 30.464029, 47.445602>,  <29.066805, 31.019638, 47.830853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396282, 30.464029, 47.445602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246101, 30.724300, 47.181587>,  <29.155993, 30.880463, 47.023178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246101, 30.724300, 47.181587>,  <29.396282, 30.464029, 47.445602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246101, 30.724300, 47.181587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871587, 0.005657, -0.490208,
		-0.315234, -0.759333, -0.569247,
		-0.375451, 0.650678, -0.660041,
		29.133467, 30.919504, 46.983574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481916, 30.163210, 46.802528>,  <29.396282, 30.464029, 47.445602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481916, 30.163210, 46.802528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429129, 30.554045, 46.735733>,  <29.397455, 30.788546, 46.695656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429129, 30.554045, 46.735733>,  <29.481916, 30.163210, 46.802528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429129, 30.554045, 46.735733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718265, -0.021837, -0.695427,
		-0.683139, -0.211715, -0.698926,
		-0.131970, 0.977088, -0.166985,
		29.389538, 30.847172, 46.685638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448587, 30.195726, 46.154385>,  <29.481916, 30.163210, 46.802528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448587, 30.195726, 46.154385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552145, 30.562754, 46.275078>,  <29.614279, 30.782970, 46.347492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552145, 30.562754, 46.275078>,  <29.448587, 30.195726, 46.154385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552145, 30.562754, 46.275078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599157, 0.092463, -0.795274,
		-0.757618, 0.386677, -0.525829,
		0.258894, 0.917568, 0.301732,
		29.629814, 30.838024, 46.365597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607368, 30.493168, 45.523968>,  <29.448587, 30.195726, 46.154385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607368, 30.493168, 45.523968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769289, 30.714886, 45.814869>,  <29.866442, 30.847916, 45.989410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769289, 30.714886, 45.814869>,  <29.607368, 30.493168, 45.523968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769289, 30.714886, 45.814869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698348, 0.326018, -0.637199,
		-0.590292, 0.765813, -0.255117,
		0.404803, 0.554294, 0.727250,
		29.890730, 30.881174, 46.033043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569105, 31.120575, 45.324467>,  <29.607368, 30.493168, 45.523968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569105, 31.120575, 45.324467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876173, 31.095058, 45.579533>,  <30.060413, 31.079748, 45.732571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876173, 31.095058, 45.579533>,  <29.569105, 31.120575, 45.324467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876173, 31.095058, 45.579533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608899, 0.382848, -0.694745,
		-0.199807, 0.921606, 0.332745,
		0.767671, -0.063793, 0.637661,
		30.106474, 31.075920, 45.770832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948456, 31.612740, 45.141029>,  <29.569105, 31.120575, 45.324467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948456, 31.612740, 45.141029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214643, 31.418058, 45.367401>,  <30.374355, 31.301250, 45.503223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214643, 31.418058, 45.367401>,  <29.948456, 31.612740, 45.141029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214643, 31.418058, 45.367401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731826, 0.276198, -0.623013,
		0.146914, 0.828755, 0.539983,
		0.665468, -0.486703, 0.565927,
		30.414284, 31.272047, 45.537178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587008, 31.959339, 45.016853>,  <29.948456, 31.612740, 45.141029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587008, 31.959339, 45.016853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719236, 31.624104, 45.190441>,  <30.798574, 31.422962, 45.294594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719236, 31.624104, 45.190441>,  <30.587008, 31.959339, 45.016853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719236, 31.624104, 45.190441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860545, 0.078851, -0.503234,
		0.387536, 0.539805, 0.747279,
		0.330572, -0.838089, 0.433969,
		30.818409, 31.372677, 45.320633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202826, 32.084389, 45.177052>,  <30.587008, 31.959339, 45.016853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202826, 32.084389, 45.177052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257078, 31.689194, 45.206696>,  <31.289631, 31.452078, 45.224480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257078, 31.689194, 45.206696>,  <31.202826, 32.084389, 45.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257078, 31.689194, 45.206696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853823, 0.078617, -0.514592,
		0.502583, 0.133069, 0.854227,
		0.135633, -0.987984, 0.074106,
		31.297768, 31.392799, 45.228928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938925, 32.104801, 45.417896>,  <31.202826, 32.084389, 45.177052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938925, 32.104801, 45.417896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805292, 31.766718, 45.251038>,  <31.725113, 31.563868, 45.150921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805292, 31.766718, 45.251038>,  <31.938925, 32.104801, 45.417896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805292, 31.766718, 45.251038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832773, -0.057402, -0.550631,
		0.441453, -0.531347, 0.723042,
		-0.334080, -0.845208, -0.417151,
		31.705069, 31.513155, 45.125893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494781, 31.632113, 45.502869>,  <31.938925, 32.104801, 45.417896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494781, 31.632113, 45.502869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262299, 31.547215, 45.188633>,  <32.122807, 31.496277, 45.000092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262299, 31.547215, 45.188633>,  <32.494781, 31.632113, 45.502869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262299, 31.547215, 45.188633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777843, 0.138719, -0.612958,
		0.239072, -0.967321, 0.084466,
		-0.581210, -0.212243, -0.785587,
		32.087936, 31.483541, 44.952957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969757, 31.298382, 45.071136>,  <32.494781, 31.632113, 45.502869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969757, 31.298382, 45.071136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664200, 31.372383, 44.823833>,  <32.480865, 31.416784, 44.675453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664200, 31.372383, 44.823833>,  <32.969757, 31.298382, 45.071136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664200, 31.372383, 44.823833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644169, 0.160817, -0.747786,
		-0.038919, -0.969490, -0.242022,
		-0.763892, 0.185006, -0.618257,
		32.435032, 31.427885, 44.638355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076481, 30.982916, 44.409790>,  <32.969757, 31.298382, 45.071136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076481, 30.982916, 44.409790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816315, 31.267519, 44.303425>,  <32.660213, 31.438280, 44.239605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816315, 31.267519, 44.303425>,  <33.076481, 30.982916, 44.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816315, 31.267519, 44.303425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547290, 0.196223, -0.813616,
		-0.526714, -0.674725, -0.517028,
		-0.650420, 0.711507, -0.265916,
		32.621189, 31.480970, 44.223648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164398, 31.031054, 43.698719>,  <33.076481, 30.982916, 44.409790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164398, 31.031054, 43.698719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948238, 31.355482, 43.788280>,  <32.818542, 31.550138, 43.842018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948238, 31.355482, 43.788280>,  <33.164398, 31.031054, 43.698719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948238, 31.355482, 43.788280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399202, 0.481391, -0.780320,
		-0.740679, -0.332304, -0.583926,
		-0.540400, 0.811071, 0.223900,
		32.786118, 31.598803, 43.855450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769020, 31.195009, 43.092205>,  <33.164398, 31.031054, 43.698719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769020, 31.195009, 43.092205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783257, 31.518232, 43.327415>,  <32.791798, 31.712166, 43.468540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783257, 31.518232, 43.327415>,  <32.769020, 31.195009, 43.092205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783257, 31.518232, 43.327415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222907, 0.567155, -0.792873,
		-0.974190, 0.159297, -0.159934,
		0.035595, 0.808059, 0.588025,
		32.793934, 31.760651, 43.503822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235363, 31.574594, 42.870243>,  <32.769020, 31.195009, 43.092205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235363, 31.574594, 42.870243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544998, 31.773243, 43.027290>,  <32.730778, 31.892431, 43.121521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544998, 31.773243, 43.027290>,  <32.235363, 31.574594, 42.870243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544998, 31.773243, 43.027290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190750, 0.408395, -0.892652,
		-0.603656, 0.765885, 0.221404,
		0.774089, 0.496622, 0.392623,
		32.777225, 31.922230, 43.145077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070393, 32.282810, 42.848061>,  <32.235363, 31.574594, 42.870243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070393, 32.282810, 42.848061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469936, 32.271431, 42.863434>,  <32.709663, 32.264603, 42.872658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469936, 32.271431, 42.863434>,  <32.070393, 32.282810, 42.848061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469936, 32.271431, 42.863434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047427, 0.486482, -0.872402,
		0.006121, 0.873227, 0.487275,
		0.998856, -0.028450, 0.038437,
		32.769592, 32.262897, 42.874966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299877, 32.861530, 42.456352>,  <32.070393, 32.282810, 42.848061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299877, 32.861530, 42.456352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652100, 32.676411, 42.497208>,  <32.863434, 32.565338, 42.521721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652100, 32.676411, 42.497208>,  <32.299877, 32.861530, 42.456352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652100, 32.676411, 42.497208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303287, 0.384655, -0.871813,
		0.364192, 0.798657, 0.479073,
		0.880557, -0.462804, 0.102134,
		32.916267, 32.537571, 42.527847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810436, 33.258827, 42.010216>,  <32.299877, 32.861530, 42.456352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810436, 33.258827, 42.010216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990162, 32.906487, 42.069836>,  <33.097996, 32.695080, 42.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990162, 32.906487, 42.069836>,  <32.810436, 33.258827, 42.010216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990162, 32.906487, 42.069836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309041, -0.003292, -0.951043,
		0.838221, 0.473377, 0.270741,
		0.449310, -0.880854, 0.149052,
		33.124954, 32.642231, 42.114552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322166, 33.371342, 41.657001>,  <32.810436, 33.258827, 42.010216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322166, 33.371342, 41.657001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293892, 32.974339, 41.696846>,  <33.276928, 32.736137, 41.720753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293892, 32.974339, 41.696846>,  <33.322166, 33.371342, 41.657001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293892, 32.974339, 41.696846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316287, -0.117012, -0.941419,
		0.946027, -0.035036, 0.322190,
		-0.070683, -0.992512, 0.099616,
		33.272686, 32.676586, 41.726730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964592, 33.178463, 41.341106>,  <33.322166, 33.371342, 41.657001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964592, 33.178463, 41.341106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758686, 32.835949, 41.358089>,  <33.635143, 32.630440, 41.368279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758686, 32.835949, 41.358089>,  <33.964592, 33.178463, 41.341106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758686, 32.835949, 41.358089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339493, -0.249066, -0.907034,
		0.787251, -0.452492, 0.418911,
		-0.514762, -0.856281, 0.042459,
		33.604256, 32.579063, 41.370827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426208, 32.628540, 41.263344>,  <33.964592, 33.178463, 41.341106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426208, 32.628540, 41.263344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061787, 32.489330, 41.174934>,  <33.843132, 32.405804, 41.121891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061787, 32.489330, 41.174934>,  <34.426208, 32.628540, 41.263344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061787, 32.489330, 41.174934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375685, -0.480013, -0.792747,
		0.169805, -0.805273, 0.568068,
		-0.911058, -0.348028, -0.221021,
		33.788467, 32.384922, 41.108627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436874, 31.906668, 41.255894>,  <34.426208, 32.628540, 41.263344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436874, 31.906668, 41.255894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137661, 32.016861, 41.014381>,  <33.958134, 32.082977, 40.869473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137661, 32.016861, 41.014381>,  <34.436874, 31.906668, 41.255894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137661, 32.016861, 41.014381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360644, -0.594988, -0.718280,
		-0.557112, -0.755051, 0.345724,
		-0.748039, 0.275479, -0.603779,
		33.913250, 32.099506, 40.833248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059586, 31.273573, 40.963558>,  <34.436874, 31.906668, 41.255894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059586, 31.273573, 40.963558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006229, 31.584658, 40.717834>,  <33.974216, 31.771309, 40.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006229, 31.584658, 40.717834>,  <34.059586, 31.273573, 40.963558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006229, 31.584658, 40.717834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160229, -0.594767, -0.787769,
		-0.978026, -0.203509, -0.045277,
		-0.133389, 0.777713, -0.614305,
		33.966213, 31.817972, 40.533543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150162, 30.980352, 40.336407>,  <34.059586, 31.273573, 40.963558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150162, 30.980352, 40.336407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099770, 31.366100, 40.243355>,  <34.069534, 31.597549, 40.187523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099770, 31.366100, 40.243355>,  <34.150162, 30.980352, 40.336407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099770, 31.366100, 40.243355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166744, -0.210575, -0.963252,
		-0.977919, -0.160140, -0.134276,
		-0.125980, 0.964372, -0.232628,
		34.061977, 31.655413, 40.173565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545792, 31.099508, 39.760342>,  <34.150162, 30.980352, 40.336407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545792, 31.099508, 39.760342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816650, 31.393574, 39.747684>,  <33.979168, 31.570013, 39.740089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816650, 31.393574, 39.747684>,  <33.545792, 31.099508, 39.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816650, 31.393574, 39.747684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044804, -0.084111, -0.995449,
		-0.734479, 0.672652, -0.089895,
		0.677151, 0.735163, -0.031640,
		34.019794, 31.614122, 39.738194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299328, 31.553600, 39.219669>,  <33.545792, 31.099508, 39.760342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299328, 31.553600, 39.219669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691437, 31.605011, 39.279736>,  <33.926701, 31.635859, 39.315773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691437, 31.605011, 39.279736>,  <33.299328, 31.553600, 39.219669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691437, 31.605011, 39.279736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144391, 0.053160, -0.988092,
		-0.134981, 0.990280, 0.033552,
		0.980271, 0.128529, 0.150163,
		33.985519, 31.643570, 39.324783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466774, 31.858210, 38.660053>,  <33.299328, 31.553600, 39.219669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466774, 31.858210, 38.660053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841393, 31.816496, 38.793922>,  <34.066162, 31.791468, 38.874245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841393, 31.816496, 38.793922>,  <33.466774, 31.858210, 38.660053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841393, 31.816496, 38.793922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347584, 0.152350, -0.925189,
		0.045496, 0.982809, 0.178930,
		0.936545, -0.104285, 0.334677,
		34.122356, 31.785210, 38.894325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710560, 32.479870, 38.457397>,  <33.466774, 31.858210, 38.660053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710560, 32.479870, 38.457397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966480, 32.175137, 38.497925>,  <34.120033, 31.992296, 38.522240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966480, 32.175137, 38.497925>,  <33.710560, 32.479870, 38.457397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966480, 32.175137, 38.497925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251253, 0.082756, -0.964377,
		0.726309, 0.642466, 0.244361,
		0.639802, -0.761833, 0.101315,
		34.158421, 31.946587, 38.528320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206131, 32.744095, 38.160839>,  <33.710560, 32.479870, 38.457397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206131, 32.744095, 38.160839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314579, 32.359161, 38.152679>,  <34.379650, 32.128201, 38.147785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314579, 32.359161, 38.152679>,  <34.206131, 32.744095, 38.160839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314579, 32.359161, 38.152679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226200, 0.084295, -0.970426,
		0.935589, 0.258490, 0.240533,
		0.271122, -0.962329, -0.020395,
		34.395916, 32.070461, 38.146561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759106, 32.750755, 37.813416>,  <34.206131, 32.744095, 38.160839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759106, 32.750755, 37.813416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628834, 32.375240, 37.768505>,  <34.550671, 32.149929, 37.741558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628834, 32.375240, 37.768505>,  <34.759106, 32.750755, 37.813416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628834, 32.375240, 37.768505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267637, 0.022355, -0.963260,
		0.906809, -0.343765, 0.243974,
		-0.325681, -0.938789, -0.112276,
		34.531128, 32.093605, 37.734821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256912, 32.361309, 37.610928>,  <34.759106, 32.750755, 37.813416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256912, 32.361309, 37.610928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933773, 32.164982, 37.480404>,  <34.739891, 32.047184, 37.402088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933773, 32.164982, 37.480404>,  <35.256912, 32.361309, 37.610928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933773, 32.164982, 37.480404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344493, 0.056018, -0.937116,
		0.478234, -0.869459, 0.123830,
		-0.807847, -0.490819, -0.326312,
		34.691418, 32.017735, 37.382511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582924, 32.057556, 37.070988>,  <35.256912, 32.361309, 37.610928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582924, 32.057556, 37.070988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196754, 31.986473, 36.994698>,  <34.965054, 31.943823, 36.948925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196754, 31.986473, 36.994698>,  <35.582924, 32.057556, 37.070988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196754, 31.986473, 36.994698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157874, 0.183615, -0.970238,
		0.207442, -0.966801, -0.149210,
		-0.965424, -0.177712, -0.190722,
		34.907127, 31.933161, 36.937481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584961, 31.723768, 36.426685>,  <35.582924, 32.057556, 37.070988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584961, 31.723768, 36.426685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211704, 31.856207, 36.482708>,  <34.987751, 31.935671, 36.516323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211704, 31.856207, 36.482708>,  <35.584961, 31.723768, 36.426685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211704, 31.856207, 36.482708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009982, 0.365575, -0.930728,
		-0.359364, -0.869902, -0.337829,
		-0.933144, 0.331098, 0.140058,
		34.931763, 31.955536, 36.524727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259220, 31.498659, 35.784637>,  <35.584961, 31.723768, 36.426685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259220, 31.498659, 35.784637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031982, 31.775290, 35.963074>,  <34.895641, 31.941267, 36.070133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031982, 31.775290, 35.963074>,  <35.259220, 31.498659, 35.784637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031982, 31.775290, 35.963074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002017, 0.540880, -0.841097,
		-0.822961, -0.478722, -0.305876,
		-0.568094, 0.691574, 0.446089,
		34.861553, 31.982761, 36.096901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643528, 31.725559, 35.419662>,  <35.259220, 31.498659, 35.784637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643528, 31.725559, 35.419662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737957, 32.045742, 35.640038>,  <34.794617, 32.237850, 35.772263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737957, 32.045742, 35.640038>,  <34.643528, 31.725559, 35.419662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737957, 32.045742, 35.640038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060181, 0.577923, -0.813870,
		-0.969869, 0.158979, 0.184606,
		0.236076, 0.800457, 0.550942,
		34.808781, 32.285877, 35.805321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474922, 32.182812, 34.988888>,  <34.643528, 31.725559, 35.419662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474922, 32.182812, 34.988888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616455, 32.431332, 35.268543>,  <34.701374, 32.580444, 35.436337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616455, 32.431332, 35.268543>,  <34.474922, 32.182812, 34.988888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616455, 32.431332, 35.268543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047181, 0.758399, -0.650081,
		-0.934119, 0.197033, 0.297659,
		0.353831, 0.621296, 0.699138,
		34.722603, 32.617722, 35.478283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986279, 32.720673, 34.996078>,  <34.474922, 32.182812, 34.988888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986279, 32.720673, 34.996078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318386, 32.861500, 35.168915>,  <34.517651, 32.945995, 35.272617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318386, 32.861500, 35.168915>,  <33.986279, 32.720673, 34.996078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318386, 32.861500, 35.168915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034957, 0.806606, -0.590055,
		-0.556269, 0.474799, 0.682005,
		0.830267, 0.352070, 0.432092,
		34.567467, 32.967121, 35.298542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856308, 33.439697, 35.306133>,  <33.986279, 32.720673, 34.996078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856308, 33.439697, 35.306133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248817, 33.418365, 35.232090>,  <34.484322, 33.405567, 35.187664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248817, 33.418365, 35.232090>,  <33.856308, 33.439697, 35.306133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248817, 33.418365, 35.232090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016481, 0.934155, -0.356486,
		0.191929, 0.352860, 0.915780,
		0.981270, -0.053327, -0.185107,
		34.543198, 33.402367, 35.176559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136307, 34.089828, 35.442776>,  <33.856308, 33.439697, 35.306133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136307, 34.089828, 35.442776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445232, 33.954136, 35.227943>,  <34.630589, 33.872719, 35.099045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445232, 33.954136, 35.227943>,  <34.136307, 34.089828, 35.442776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445232, 33.954136, 35.227943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134348, 0.913571, -0.383848,
		0.620873, 0.224295, 0.751138,
		0.772313, -0.339234, -0.537078,
		34.676926, 33.852367, 35.066818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753197, 34.518402, 35.532974>,  <34.136307, 34.089828, 35.442776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753197, 34.518402, 35.532974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829525, 34.339619, 35.183388>,  <34.875320, 34.232349, 34.973637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829525, 34.339619, 35.183388>,  <34.753197, 34.518402, 35.532974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829525, 34.339619, 35.183388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034768, 0.886690, -0.461054,
		0.981010, 0.118364, 0.153656,
		0.190817, -0.446956, -0.873967,
		34.886768, 34.205532, 34.921196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303848, 34.912720, 35.303669>,  <34.753197, 34.518402, 35.532974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303848, 34.912720, 35.303669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111179, 34.753864, 34.991188>,  <34.995579, 34.658550, 34.803699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111179, 34.753864, 34.991188>,  <35.303848, 34.912720, 35.303669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111179, 34.753864, 34.991188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239782, 0.797683, -0.553360,
		0.842912, -0.453854, -0.288992,
		-0.481669, -0.397138, -0.781202,
		34.966679, 34.634724, 34.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769859, 34.542316, 35.924534>,  <35.303848, 34.912720, 35.303669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769859, 34.542316, 35.924534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006706, 34.831352, 36.067226>,  <36.148815, 35.004776, 36.152840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006706, 34.831352, 36.067226>,  <35.769859, 34.542316, 35.924534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006706, 34.831352, 36.067226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062809, -0.482707, 0.873527,
		0.803400, -0.494825, -0.331204,
		0.592117, 0.722594, 0.356728,
		36.184341, 35.048130, 36.174244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387218, 34.219654, 36.070862>,  <35.769859, 34.542316, 35.924534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387218, 34.219654, 36.070862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409225, 34.549793, 36.295635>,  <36.422432, 34.747875, 36.430500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409225, 34.549793, 36.295635>,  <36.387218, 34.219654, 36.070862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409225, 34.549793, 36.295635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462011, -0.519962, 0.718461,
		0.885166, 0.220091, -0.409928,
		0.055021, 0.825348, 0.561937,
		36.425732, 34.797398, 36.464218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057369, 34.227726, 36.265675>,  <36.387218, 34.219654, 36.070862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057369, 34.227726, 36.265675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878220, 34.456108, 36.540897>,  <36.770729, 34.593136, 36.706032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878220, 34.456108, 36.540897>,  <37.057369, 34.227726, 36.265675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878220, 34.456108, 36.540897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647476, -0.323590, 0.689974,
		0.616591, 0.754521, -0.224752,
		-0.447873, 0.570953, 0.688057,
		36.743858, 34.627396, 36.747314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594265, 34.370541, 36.805004>,  <37.057369, 34.227726, 36.265675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594265, 34.370541, 36.805004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254093, 34.479332, 36.985134>,  <37.049988, 34.544605, 37.093212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254093, 34.479332, 36.985134>,  <37.594265, 34.370541, 36.805004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254093, 34.479332, 36.985134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385540, -0.260199, 0.885243,
		0.357942, 0.926458, 0.116423,
		-0.850433, 0.271980, 0.450322,
		36.998962, 34.560925, 37.120232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833809, 34.855793, 37.459457>,  <37.594265, 34.370541, 36.805004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833809, 34.855793, 37.459457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466080, 34.715179, 37.530201>,  <37.245441, 34.630814, 37.572647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466080, 34.715179, 37.530201>,  <37.833809, 34.855793, 37.459457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466080, 34.715179, 37.530201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258336, -0.200097, 0.945105,
		-0.296843, 0.914543, 0.274766,
		-0.919319, -0.351530, 0.176862,
		37.190285, 34.609722, 37.583260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468990, 35.236515, 38.082893>,  <37.833809, 34.855793, 37.459457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468990, 35.236515, 38.082893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307987, 34.872299, 38.045147>,  <37.211388, 34.653770, 38.022499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307987, 34.872299, 38.045147>,  <37.468990, 35.236515, 38.082893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307987, 34.872299, 38.045147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210702, -0.192469, 0.958415,
		-0.890840, 0.365883, 0.269322,
		-0.402504, -0.910541, -0.094367,
		37.187237, 34.599136, 38.016838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166328, 35.146191, 38.737877>,  <37.468990, 35.236515, 38.082893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166328, 35.146191, 38.737877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153477, 34.771626, 38.598110>,  <37.145763, 34.546886, 38.514248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153477, 34.771626, 38.598110>,  <37.166328, 35.146191, 38.737877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153477, 34.771626, 38.598110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130465, -0.342679, 0.930349,
		-0.990932, 0.075482, -0.111158,
		-0.032133, -0.936415, -0.349420,
		37.143837, 34.490700, 38.493286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551014, 34.894703, 38.923637>,  <37.166328, 35.146191, 38.737877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551014, 34.894703, 38.923637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823997, 34.603691, 38.895504>,  <36.987789, 34.429085, 38.878624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823997, 34.603691, 38.895504>,  <36.551014, 34.894703, 38.923637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823997, 34.603691, 38.895504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273401, -0.343336, 0.898539,
		-0.677863, -0.593988, -0.433220,
		0.682462, -0.727529, -0.070338,
		37.028736, 34.385433, 38.874401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198788, 34.468006, 39.209919>,  <36.551014, 34.894703, 38.923637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198788, 34.468006, 39.209919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552330, 34.281467, 39.195393>,  <36.764454, 34.169544, 39.186676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552330, 34.281467, 39.195393>,  <36.198788, 34.468006, 39.209919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552330, 34.281467, 39.195393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243479, -0.524967, 0.815554,
		-0.399397, -0.711990, -0.577540,
		0.883855, -0.466348, -0.036316,
		36.817486, 34.141563, 39.184498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180435, 33.696789, 39.369038>,  <36.198788, 34.468006, 39.209919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180435, 33.696789, 39.369038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564503, 33.790844, 39.429409>,  <36.794945, 33.847275, 39.465633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564503, 33.790844, 39.429409>,  <36.180435, 33.696789, 39.369038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564503, 33.790844, 39.429409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042329, -0.656351, 0.753267,
		0.276182, -0.716878, -0.640164,
		0.960173, 0.235136, 0.150928,
		36.852554, 33.861385, 39.474686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407562, 33.108868, 39.614574>,  <36.180435, 33.696789, 39.369038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407562, 33.108868, 39.614574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675526, 33.387684, 39.716835>,  <36.836304, 33.554974, 39.778191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675526, 33.387684, 39.716835>,  <36.407562, 33.108868, 39.614574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675526, 33.387684, 39.716835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111450, -0.434852, 0.893578,
		0.734030, -0.570124, -0.368996,
		0.669909, 0.697038, 0.255654,
		36.876499, 33.596794, 39.793530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781830, 32.728737, 39.968544>,  <36.407562, 33.108868, 39.614574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781830, 32.728737, 39.968544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855873, 33.103954, 40.085724>,  <36.900299, 33.329082, 40.156033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855873, 33.103954, 40.085724>,  <36.781830, 32.728737, 39.968544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855873, 33.103954, 40.085724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011808, -0.300199, 0.953803,
		0.982648, -0.173094, -0.066644,
		0.185104, 0.938040, 0.292946,
		36.911404, 33.385365, 40.173607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097664, 32.640194, 40.551201>,  <36.781830, 32.728737, 39.968544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097664, 32.640194, 40.551201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038551, 33.035084, 40.575008>,  <37.003082, 33.272018, 40.589291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038551, 33.035084, 40.575008>,  <37.097664, 32.640194, 40.551201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038551, 33.035084, 40.575008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075406, -0.071250, 0.994604,
		0.986141, 0.142501, 0.084972,
		-0.147786, 0.987227, 0.059517,
		36.994217, 33.331253, 40.592865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655895, 32.993729, 40.983070>,  <37.097664, 32.640194, 40.551201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655895, 32.993729, 40.983070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299919, 33.174744, 41.005741>,  <37.086334, 33.283352, 41.019344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299919, 33.174744, 41.005741>,  <37.655895, 32.993729, 40.983070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299919, 33.174744, 41.005741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093360, -0.302404, 0.948597,
		0.446420, 0.838902, 0.311371,
		-0.889940, 0.452542, 0.056680,
		37.032936, 33.310505, 41.022743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707657, 33.390533, 41.597149>,  <37.655895, 32.993729, 40.983070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707657, 33.390533, 41.597149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320869, 33.342628, 41.507149>,  <37.088799, 33.313885, 41.453148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320869, 33.342628, 41.507149>,  <37.707657, 33.390533, 41.597149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320869, 33.342628, 41.507149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229484, 0.024857, 0.972995,
		-0.110939, 0.992491, -0.051521,
		-0.966969, -0.119767, -0.225003,
		37.030777, 33.306698, 41.439648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399670, 33.833130, 41.985416>,  <37.707657, 33.390533, 41.597149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399670, 33.833130, 41.985416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087215, 33.608711, 41.875835>,  <36.899742, 33.474060, 41.810089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087215, 33.608711, 41.875835>,  <37.399670, 33.833130, 41.985416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087215, 33.608711, 41.875835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295866, -0.053752, 0.953716,
		-0.549809, 0.826034, -0.124008,
		-0.781136, -0.561051, -0.273949,
		36.852875, 33.440395, 41.793652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895958, 34.037910, 42.376354>,  <37.399670, 33.833130, 41.985416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895958, 34.037910, 42.376354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759518, 33.686924, 42.241482>,  <36.677654, 33.476330, 42.160557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759518, 33.686924, 42.241482>,  <36.895958, 34.037910, 42.376354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759518, 33.686924, 42.241482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602013, -0.071574, 0.795272,
		-0.721961, 0.474261, -0.503834,
		-0.341105, -0.877470, -0.337185,
		36.657185, 33.423683, 42.140327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192303, 34.097431, 42.444359>,  <36.895958, 34.037910, 42.376354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192303, 34.097431, 42.444359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253811, 33.702194, 42.442333>,  <36.290718, 33.465054, 42.441120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253811, 33.702194, 42.442333>,  <36.192303, 34.097431, 42.444359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253811, 33.702194, 42.442333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429182, -0.071404, 0.900391,
		-0.890032, -0.136284, -0.435051,
		0.153774, -0.988093, -0.005062,
		36.299942, 33.405766, 42.440815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458809, 33.767685, 42.573746>,  <36.192303, 34.097431, 42.444359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458809, 33.767685, 42.573746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731392, 33.483509, 42.644047>,  <35.894943, 33.313004, 42.686226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731392, 33.483509, 42.644047>,  <35.458809, 33.767685, 42.573746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731392, 33.483509, 42.644047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478898, -0.251281, 0.841139,
		-0.553417, -0.657367, -0.511466,
		0.681459, -0.710441, 0.175748,
		35.935829, 33.270378, 42.696770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059036, 33.196358, 42.722424>,  <35.458809, 33.767685, 42.573746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059036, 33.196358, 42.722424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409008, 33.111607, 42.896599>,  <35.618992, 33.060757, 43.001106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409008, 33.111607, 42.896599>,  <35.059036, 33.196358, 42.722424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409008, 33.111607, 42.896599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470206, -0.156668, 0.868540,
		-0.115807, -0.964656, -0.236700,
		0.874926, -0.211881, 0.435443,
		35.671486, 33.048042, 43.027233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001186, 32.592186, 43.068279>,  <35.059036, 33.196358, 42.722424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001186, 32.592186, 43.068279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303783, 32.782307, 43.247971>,  <35.485344, 32.896378, 43.355785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303783, 32.782307, 43.247971>,  <35.001186, 32.592186, 43.068279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303783, 32.782307, 43.247971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476336, -0.070232, 0.876454,
		0.448126, -0.877018, 0.173271,
		0.756497, 0.475298, 0.449228,
		35.530731, 32.924896, 43.382740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226818, 32.094944, 43.624420>,  <35.001186, 32.592186, 43.068279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226818, 32.094944, 43.624420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343304, 32.474033, 43.676598>,  <35.413197, 32.701488, 43.707905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343304, 32.474033, 43.676598>,  <35.226818, 32.094944, 43.624420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343304, 32.474033, 43.676598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471901, 0.023704, 0.881333,
		0.832167, -0.318212, 0.454135,
		0.291216, 0.947723, 0.130439,
		35.430668, 32.758350, 43.715729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413628, 32.131451, 44.269482>,  <35.226818, 32.094944, 43.624420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413628, 32.131451, 44.269482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329945, 32.508274, 44.164589>,  <35.279736, 32.734367, 44.101654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329945, 32.508274, 44.164589>,  <35.413628, 32.131451, 44.269482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329945, 32.508274, 44.164589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468112, 0.138964, 0.872674,
		0.858548, 0.305321, 0.411916,
		-0.209205, 0.942055, -0.262231,
		35.267181, 32.790890, 44.085918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401001, 32.426231, 44.862720>,  <35.413628, 32.131451, 44.269482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401001, 32.426231, 44.862720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227093, 32.699520, 44.628052>,  <35.122746, 32.863491, 44.487251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227093, 32.699520, 44.628052>,  <35.401001, 32.426231, 44.862720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227093, 32.699520, 44.628052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528914, 0.333530, 0.780389,
		0.728850, 0.649591, 0.216355,
		-0.434773, 0.683220, -0.586671,
		35.096661, 32.904488, 44.452049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393929, 32.992329, 45.186234>,  <35.401001, 32.426231, 44.862720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393929, 32.992329, 45.186234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108513, 33.082706, 44.920959>,  <34.937263, 33.136932, 44.761795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108513, 33.082706, 44.920959>,  <35.393929, 32.992329, 45.186234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108513, 33.082706, 44.920959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532565, 0.440127, 0.722955,
		0.455234, 0.869043, -0.193716,
		-0.713538, 0.225948, -0.663182,
		34.894451, 33.150490, 44.722004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299290, 33.676765, 45.113533>,  <35.393929, 32.992329, 45.186234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299290, 33.676765, 45.113533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950424, 33.513206, 45.006104>,  <34.741104, 33.415073, 44.941647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950424, 33.513206, 45.006104>,  <35.299290, 33.676765, 45.113533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950424, 33.513206, 45.006104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461285, 0.504558, 0.729820,
		-0.162910, 0.760413, -0.628676,
		-0.872168, -0.408894, -0.268570,
		34.688774, 33.390537, 44.925533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824501, 34.229195, 45.179745>,  <35.299290, 33.676765, 45.113533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824501, 34.229195, 45.179745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583775, 33.911030, 45.208412>,  <34.439339, 33.720131, 45.225613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583775, 33.911030, 45.208412>,  <34.824501, 34.229195, 45.179745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583775, 33.911030, 45.208412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600734, 0.509988, 0.615654,
		-0.526250, 0.327456, -0.784751,
		-0.601813, -0.795415, 0.071668,
		34.403233, 33.672405, 45.229912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224731, 34.494442, 45.244144>,  <34.824501, 34.229195, 45.179745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224731, 34.494442, 45.244144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174244, 34.127529, 45.395222>,  <34.143951, 33.907379, 45.485870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174244, 34.127529, 45.395222>,  <34.224731, 34.494442, 45.244144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174244, 34.127529, 45.395222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470807, 0.390520, 0.791097,
		-0.873161, -0.077974, -0.481155,
		-0.126216, -0.917286, 0.377698,
		34.136379, 33.852345, 45.508530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398540, 34.499847, 45.450455>,  <34.224731, 34.494442, 45.244144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398540, 34.499847, 45.450455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544518, 34.178879, 45.639317>,  <33.632103, 33.986298, 45.752632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544518, 34.178879, 45.639317>,  <33.398540, 34.499847, 45.450455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544518, 34.178879, 45.639317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588543, 0.194124, 0.784814,
		-0.721411, -0.564296, -0.401417,
		0.364943, -0.802425, 0.472156,
		33.653999, 33.938152, 45.780964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857666, 34.000469, 45.567162>,  <33.398540, 34.499847, 45.450455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857666, 34.000469, 45.567162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145077, 33.942650, 45.839287>,  <33.317524, 33.907959, 46.002560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145077, 33.942650, 45.839287>,  <32.857666, 34.000469, 45.567162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145077, 33.942650, 45.839287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667365, 0.132096, 0.732922,
		-0.195811, -0.980640, -0.001553,
		0.718528, -0.144551, 0.680311,
		33.360634, 33.899284, 46.043381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509884, 33.668751, 46.098972>,  <32.857666, 34.000469, 45.567162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509884, 33.668751, 46.098972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856441, 33.772640, 46.269569>,  <33.064377, 33.834976, 46.371929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856441, 33.772640, 46.269569>,  <32.509884, 33.668751, 46.098972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856441, 33.772640, 46.269569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499120, 0.424248, 0.755575,
		0.015305, -0.867499, 0.497203,
		0.866398, 0.259728, 0.426493,
		33.116360, 33.850559, 46.397518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421619, 33.377266, 46.795837>,  <32.509884, 33.668751, 46.098972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421619, 33.377266, 46.795837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683514, 33.679459, 46.786282>,  <32.840649, 33.860775, 46.780548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683514, 33.679459, 46.786282>,  <32.421619, 33.377266, 46.795837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683514, 33.679459, 46.786282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365790, 0.344349, 0.864651,
		0.661457, -0.557376, 0.501804,
		0.654731, 0.755484, -0.023890,
		32.879932, 33.906105, 46.779114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727333, 33.346558, 47.409664>,  <32.421619, 33.377266, 46.795837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727333, 33.346558, 47.409664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740845, 33.718788, 47.263844>,  <32.748951, 33.942127, 47.176353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740845, 33.718788, 47.263844>,  <32.727333, 33.346558, 47.409664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740845, 33.718788, 47.263844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358799, 0.351731, 0.864609,
		0.932804, 0.101594, 0.345769,
		0.033779, 0.930572, -0.364548,
		32.750977, 33.997959, 47.154480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955044, 33.848957, 48.021183>,  <32.727333, 33.346558, 47.409664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955044, 33.848957, 48.021183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779961, 34.083286, 47.748356>,  <32.674911, 34.223885, 47.584660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779961, 34.083286, 47.748356>,  <32.955044, 33.848957, 48.021183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779961, 34.083286, 47.748356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517070, 0.456593, 0.723990,
		0.735559, 0.669577, 0.103055,
		-0.437713, 0.585824, -0.682069,
		32.648647, 34.259033, 47.543736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021397, 34.520245, 48.289639>,  <32.955044, 33.848957, 48.021183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021397, 34.520245, 48.289639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730701, 34.587509, 48.023235>,  <32.556282, 34.627869, 47.863392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730701, 34.587509, 48.023235>,  <33.021397, 34.520245, 48.289639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730701, 34.587509, 48.023235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448268, 0.618554, 0.645327,
		0.520482, 0.767537, -0.374148,
		-0.726742, 0.168163, -0.666008,
		32.512680, 34.637959, 47.823433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972454, 35.227592, 48.288933>,  <33.021397, 34.520245, 48.289639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972454, 35.227592, 48.288933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623207, 35.083981, 48.157013>,  <32.413658, 34.997814, 48.077862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623207, 35.083981, 48.157013>,  <32.972454, 35.227592, 48.288933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623207, 35.083981, 48.157013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486533, 0.598932, 0.636055,
		-0.030835, 0.715807, -0.697616,
		-0.873118, -0.359026, -0.329796,
		32.361271, 34.976273, 48.058075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537174, 35.893246, 48.261917>,  <32.972454, 35.227592, 48.288933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537174, 35.893246, 48.261917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276974, 35.590252, 48.239750>,  <32.120853, 35.408455, 48.226448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276974, 35.590252, 48.239750>,  <32.537174, 35.893246, 48.261917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276974, 35.590252, 48.239750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584204, 0.452390, 0.673832,
		-0.485344, 0.470704, -0.736803,
		-0.650498, -0.757483, -0.055422,
		32.081825, 35.363007, 48.223122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781029, 36.053154, 48.118713>,  <32.537174, 35.893246, 48.261917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781029, 36.053154, 48.118713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720690, 35.722412, 48.335438>,  <31.684486, 35.523968, 48.465473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720690, 35.722412, 48.335438>,  <31.781029, 36.053154, 48.118713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720690, 35.722412, 48.335438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570885, 0.520313, 0.635110,
		-0.807054, -0.213505, -0.550527,
		-0.150847, -0.826856, 0.541808,
		31.675436, 35.474354, 48.497978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820902, 36.802486, 48.171253>,  <31.781029, 36.053154, 48.118713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820902, 36.802486, 48.171253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932585, 37.171444, 48.278015>,  <31.999596, 37.392818, 48.342072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932585, 37.171444, 48.278015>,  <31.820902, 36.802486, 48.171253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932585, 37.171444, 48.278015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832296, -0.093850, -0.546329,
		-0.478879, 0.374685, -0.793905,
		0.279209, 0.922390, 0.266907,
		32.016346, 37.448162, 48.358086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960211, 37.186176, 47.547966>,  <31.820902, 36.802486, 48.171253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960211, 37.186176, 47.547966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197041, 37.319912, 47.841270>,  <32.339138, 37.400154, 48.017254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197041, 37.319912, 47.841270>,  <31.960211, 37.186176, 47.547966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197041, 37.319912, 47.841270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762608, 0.061710, -0.643911,
		-0.260531, 0.940432, -0.218429,
		0.592075, 0.334335, 0.733258,
		32.374664, 37.420212, 48.061249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294071, 37.816982, 47.337540>,  <31.960211, 37.186176, 47.547966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294071, 37.816982, 47.337540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523399, 37.694763, 47.641628>,  <32.660995, 37.621429, 47.824081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523399, 37.694763, 47.641628>,  <32.294071, 37.816982, 47.337540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523399, 37.694763, 47.641628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819328, 0.213183, -0.532217,
		0.000553, 0.928004, 0.372570,
		0.573325, -0.305551, 0.760221,
		32.695396, 37.603096, 47.869694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738148, 38.437042, 47.528625>,  <32.294071, 37.816982, 47.337540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738148, 38.437042, 47.528625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908840, 38.089062, 47.627495>,  <33.011253, 37.880276, 47.686817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908840, 38.089062, 47.627495>,  <32.738148, 38.437042, 47.528625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908840, 38.089062, 47.627495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744043, 0.182343, -0.642768,
		0.514105, 0.458193, 0.725090,
		0.426727, -0.869948, 0.247172,
		33.036858, 37.828075, 47.701645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502262, 38.532204, 47.423916>,  <32.738148, 38.437042, 47.528625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502262, 38.532204, 47.423916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464832, 38.133968, 47.426750>,  <33.442375, 37.895027, 47.428452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464832, 38.133968, 47.426750>,  <33.502262, 38.532204, 47.423916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464832, 38.133968, 47.426750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823608, -0.081409, -0.561287,
		0.559387, -0.046687, 0.827591,
		-0.093578, -0.995587, 0.007087,
		33.436760, 37.835293, 47.428875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180912, 38.231956, 47.437481>,  <33.502262, 38.532204, 47.423916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180912, 38.231956, 47.437481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947315, 37.935818, 47.304310>,  <33.807156, 37.758137, 47.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947315, 37.935818, 47.304310>,  <34.180912, 38.231956, 47.437481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947315, 37.935818, 47.304310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713406, -0.272403, -0.645638,
		0.387303, -0.614563, 0.687247,
		-0.583994, -0.740343, -0.332931,
		33.772118, 37.713715, 47.204430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583782, 37.681072, 47.402332>,  <34.180912, 38.231956, 47.437481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583782, 37.681072, 47.402332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287407, 37.575287, 47.155411>,  <34.109581, 37.511814, 47.007259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287407, 37.575287, 47.155411>,  <34.583782, 37.681072, 47.402332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287407, 37.575287, 47.155411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660874, -0.450544, -0.600214,
		-0.119385, -0.852682, 0.508606,
		-0.740941, -0.264468, -0.617304,
		34.065125, 37.495945, 46.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756031, 37.029137, 47.261383>,  <34.583782, 37.681072, 47.402332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756031, 37.029137, 47.261383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489811, 37.159866, 46.992985>,  <34.330078, 37.238304, 46.831947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489811, 37.159866, 46.992985>,  <34.756031, 37.029137, 47.261383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489811, 37.159866, 46.992985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474039, -0.509302, -0.718261,
		-0.576488, -0.796111, 0.184033,
		-0.665544, 0.326830, -0.670994,
		34.290146, 37.257915, 46.791687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574448, 36.383747, 46.865108>,  <34.756031, 37.029137, 47.261383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574448, 36.383747, 46.865108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451851, 36.667793, 46.611557>,  <34.378292, 36.838219, 46.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451851, 36.667793, 46.611557>,  <34.574448, 36.383747, 46.865108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451851, 36.667793, 46.611557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405407, -0.505127, -0.761900,
		-0.861224, -0.490496, -0.133067,
		-0.306494, 0.710113, -0.633878,
		34.359901, 36.880829, 46.421394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387970, 35.988087, 46.270218>,  <34.574448, 36.383747, 46.865108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387970, 35.988087, 46.270218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447330, 36.371510, 46.172947>,  <34.482948, 36.601562, 46.114582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447330, 36.371510, 46.172947>,  <34.387970, 35.988087, 46.270218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447330, 36.371510, 46.172947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586290, -0.283308, -0.758947,
		-0.796392, -0.029943, -0.604039,
		0.148404, 0.958561, -0.243180,
		34.491852, 36.659077, 46.099995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266171, 36.022308, 45.554703>,  <34.387970, 35.988087, 46.270218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266171, 36.022308, 45.554703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441654, 36.377167, 45.612000>,  <34.546944, 36.590080, 45.646378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441654, 36.377167, 45.612000>,  <34.266171, 36.022308, 45.554703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441654, 36.377167, 45.612000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417147, -0.059863, -0.906865,
		-0.795943, 0.457599, -0.396331,
		0.438706, 0.887141, 0.143239,
		34.573265, 36.643311, 45.654972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044670, 36.367443, 45.033733>,  <34.266171, 36.022308, 45.554703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044670, 36.367443, 45.033733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382145, 36.537254, 45.165169>,  <34.584629, 36.639141, 45.244030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382145, 36.537254, 45.165169>,  <34.044670, 36.367443, 45.033733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382145, 36.537254, 45.165169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384367, -0.050388, -0.921804,
		-0.374772, 0.904013, -0.205685,
		0.843687, 0.424525, 0.328589,
		34.635250, 36.664612, 45.263744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265141, 37.061714, 44.742092>,  <34.044670, 36.367443, 45.033733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265141, 37.061714, 44.742092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626873, 36.948265, 44.869678>,  <34.843914, 36.880196, 44.946228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626873, 36.948265, 44.869678>,  <34.265141, 37.061714, 44.742092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626873, 36.948265, 44.869678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379952, 0.194465, -0.904334,
		0.194465, 0.939010, 0.283625,
		0.904334, -0.283625, 0.318963,
		34.898174, 36.863178, 44.965366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843201, 37.344444, 44.223579>,  <34.265141, 37.061714, 44.742092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843201, 37.344444, 44.223579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065411, 37.067795, 44.408207>,  <35.198738, 36.901806, 44.518982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065411, 37.067795, 44.408207>,  <34.843201, 37.344444, 44.223579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065411, 37.067795, 44.408207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442742, -0.223829, -0.868263,
		0.703824, 0.686699, 0.181868,
		0.555528, -0.691625, 0.461567,
		35.232067, 36.860306, 44.546677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582989, 37.349182, 44.051723>,  <34.843201, 37.344444, 44.223579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582989, 37.349182, 44.051723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551659, 36.977913, 44.197254>,  <35.532860, 36.755154, 44.284573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551659, 36.977913, 44.197254>,  <35.582989, 37.349182, 44.051723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551659, 36.977913, 44.197254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539827, -0.346301, -0.767243,
		0.838123, 0.136304, 0.528176,
		-0.078330, -0.928168, 0.363824,
		35.528160, 36.699463, 44.306400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262928, 37.069603, 44.043877>,  <35.582989, 37.349182, 44.051723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262928, 37.069603, 44.043877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983128, 36.786449, 44.004692>,  <35.815247, 36.616558, 43.981182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983128, 36.786449, 44.004692>,  <36.262928, 37.069603, 44.043877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983128, 36.786449, 44.004692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489723, -0.374998, -0.787114,
		0.520452, -0.598560, 0.608979,
		-0.699501, -0.707886, -0.097960,
		35.773277, 36.574085, 43.975304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634304, 36.486305, 43.894688>,  <36.262928, 37.069603, 44.043877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634304, 36.486305, 43.894688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255249, 36.418846, 43.786213>,  <36.027817, 36.378372, 43.721127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255249, 36.418846, 43.786213>,  <36.634304, 36.486305, 43.894688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255249, 36.418846, 43.786213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317574, -0.587037, -0.744670,
		-0.033612, -0.791799, 0.609855,
		-0.947637, -0.168645, -0.271187,
		35.970959, 36.368252, 43.704857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648937, 35.743523, 43.527966>,  <36.634304, 36.486305, 43.894688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648937, 35.743523, 43.527966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308998, 35.919708, 43.412205>,  <36.105034, 36.025417, 43.342751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308998, 35.919708, 43.412205>,  <36.648937, 35.743523, 43.527966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308998, 35.919708, 43.412205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129798, -0.357277, -0.924936,
		-0.510792, -0.823619, 0.246461,
		-0.849849, 0.440460, -0.289398,
		36.054043, 36.051846, 43.325386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269306, 35.233280, 43.198486>,  <36.648937, 35.743523, 43.527966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269306, 35.233280, 43.198486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156631, 35.590416, 43.057919>,  <36.089027, 35.804695, 42.973576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156631, 35.590416, 43.057919>,  <36.269306, 35.233280, 43.198486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156631, 35.590416, 43.057919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243606, -0.287707, -0.926219,
		-0.928068, -0.346511, -0.136457,
		-0.281686, 0.892835, -0.351423,
		36.072124, 35.858265, 42.952492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190277, 35.121960, 42.525677>,  <36.269306, 35.233280, 43.198486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190277, 35.121960, 42.525677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196499, 35.521793, 42.515934>,  <36.200230, 35.761692, 42.510090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196499, 35.521793, 42.515934>,  <36.190277, 35.121960, 42.525677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196499, 35.521793, 42.515934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384717, -0.028466, -0.922596,
		-0.922904, 0.004976, -0.384999,
		0.015550, 0.999582, -0.024357,
		36.201164, 35.821667, 42.508629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951637, 35.366383, 41.817703>,  <36.190277, 35.121960, 42.525677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951637, 35.366383, 41.817703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188889, 35.646503, 41.976585>,  <36.331242, 35.814575, 42.071915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188889, 35.646503, 41.976585>,  <35.951637, 35.366383, 41.817703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188889, 35.646503, 41.976585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569278, -0.015934, -0.821991,
		-0.569313, 0.713669, -0.408117,
		0.593133, 0.700302, 0.397204,
		36.366829, 35.856594, 42.095745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960846, 35.898136, 41.307865>,  <35.951637, 35.366383, 41.817703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960846, 35.898136, 41.307865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277607, 35.971958, 41.540703>,  <36.467663, 36.016251, 41.680405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277607, 35.971958, 41.540703>,  <35.960846, 35.898136, 41.307865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277607, 35.971958, 41.540703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578521, 0.078383, -0.811893,
		-0.195462, 0.979692, -0.044695,
		0.791902, 0.184551, 0.582093,
		36.515179, 36.027325, 41.715332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338707, 36.266010, 40.883610>,  <35.960846, 35.898136, 41.307865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338707, 36.266010, 40.883610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602585, 36.170822, 41.168755>,  <36.760914, 36.113708, 41.339840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602585, 36.170822, 41.168755>,  <36.338707, 36.266010, 40.883610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602585, 36.170822, 41.168755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746694, 0.100087, -0.657594,
		0.085138, 0.966102, 0.243716,
		0.659696, -0.237968, 0.712862,
		36.800495, 36.099430, 41.382614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814861, 36.777519, 40.805443>,  <36.338707, 36.266010, 40.883610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814861, 36.777519, 40.805443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984344, 36.471188, 40.998928>,  <37.086033, 36.287388, 41.115021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984344, 36.471188, 40.998928>,  <36.814861, 36.777519, 40.805443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984344, 36.471188, 40.998928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822310, 0.101278, -0.559954,
		0.379839, 0.635018, 0.672662,
		0.423707, -0.765829, 0.483713,
		37.111458, 36.241440, 41.144043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396278, 36.988068, 40.916965>,  <36.814861, 36.777519, 40.805443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396278, 36.988068, 40.916965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458469, 36.596283, 40.968319>,  <37.495785, 36.361214, 40.999130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458469, 36.596283, 40.968319>,  <37.396278, 36.988068, 40.916965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458469, 36.596283, 40.968319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837829, 0.061894, -0.542413,
		0.523325, 0.191899, 0.830244,
		0.155476, -0.979461, 0.128388,
		37.505112, 36.302444, 41.006836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034069, 36.911488, 41.215580>,  <37.396278, 36.988068, 40.916965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034069, 36.911488, 41.215580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951134, 36.569542, 41.025330>,  <37.901371, 36.364376, 40.911179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951134, 36.569542, 41.025330>,  <38.034069, 36.911488, 41.215580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951134, 36.569542, 41.025330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868615, 0.062785, -0.491493,
		0.450021, -0.515044, 0.729528,
		-0.207337, -0.854861, -0.475630,
		37.888931, 36.313084, 40.882641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716167, 36.675640, 40.960674>,  <38.034069, 36.911488, 41.215580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716167, 36.675640, 40.960674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458702, 36.460083, 40.743309>,  <38.304222, 36.330750, 40.612888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458702, 36.460083, 40.743309>,  <38.716167, 36.675640, 40.960674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458702, 36.460083, 40.743309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642558, 0.005168, -0.766220,
		0.415720, -0.842358, 0.342944,
		-0.643659, -0.538894, -0.543412,
		38.265606, 36.298416, 40.580284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057774, 36.111893, 40.704990>,  <38.716167, 36.675640, 40.960674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057774, 36.111893, 40.704990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746059, 36.155384, 40.458126>,  <38.559029, 36.181480, 40.310009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746059, 36.155384, 40.458126>,  <39.057774, 36.111893, 40.704990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746059, 36.155384, 40.458126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599732, -0.156208, -0.784806,
		-0.181744, -0.981721, 0.056517,
		-0.779289, 0.108739, -0.617159,
		38.512272, 36.188004, 40.272980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239849, 35.646118, 40.271439>,  <39.057774, 36.111893, 40.704990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239849, 35.646118, 40.271439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972858, 35.871490, 40.076702>,  <38.812664, 36.006714, 39.959862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972858, 35.871490, 40.076702>,  <39.239849, 35.646118, 40.271439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972858, 35.871490, 40.076702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583153, -0.011018, -0.812288,
		-0.463036, -0.826087, -0.321214,
		-0.667481, 0.563435, -0.486837,
		38.772614, 36.040520, 39.930653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283588, 35.362686, 39.622826>,  <39.239849, 35.646118, 40.271439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283588, 35.362686, 39.622826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127937, 35.730770, 39.605850>,  <39.034546, 35.951618, 39.595665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127937, 35.730770, 39.605850>,  <39.283588, 35.362686, 39.622826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127937, 35.730770, 39.605850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594140, 0.215506, -0.774955,
		-0.703974, -0.326767, -0.630590,
		-0.389126, 0.920207, -0.042435,
		39.011200, 36.006832, 39.593121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287197, 35.502659, 38.881794>,  <39.283588, 35.362686, 39.622826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287197, 35.502659, 38.881794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234570, 35.850071, 39.072937>,  <39.202995, 36.058517, 39.187622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234570, 35.850071, 39.072937>,  <39.287197, 35.502659, 38.881794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234570, 35.850071, 39.072937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599023, 0.453741, -0.659766,
		-0.789850, 0.199447, -0.579964,
		-0.131565, 0.868528, 0.477860,
		39.195099, 36.110630, 39.216293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108620, 35.997208, 38.324074>,  <39.287197, 35.502659, 38.881794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108620, 35.997208, 38.324074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270870, 36.194477, 38.631905>,  <39.368221, 36.312840, 38.816601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270870, 36.194477, 38.631905>,  <39.108620, 35.997208, 38.324074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270870, 36.194477, 38.631905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559159, 0.532143, -0.635740,
		-0.723056, 0.688186, -0.059915,
		0.405624, 0.493177, 0.769575,
		39.392559, 36.342430, 38.862778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933868, 36.631836, 38.174149>,  <39.108620, 35.997208, 38.324074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933868, 36.631836, 38.174149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241356, 36.619545, 38.429688>,  <39.425846, 36.612171, 38.583012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241356, 36.619545, 38.429688>,  <38.933868, 36.631836, 38.174149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241356, 36.619545, 38.429688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577504, 0.462643, -0.672644,
		-0.274891, 0.886012, 0.373387,
		0.768716, -0.030728, 0.638852,
		39.471970, 36.610325, 38.621342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234768, 37.289635, 38.125870>,  <38.933868, 36.631836, 38.174149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234768, 37.289635, 38.125870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533894, 37.075382, 38.282780>,  <39.713367, 36.946831, 38.376926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533894, 37.075382, 38.282780>,  <39.234768, 37.289635, 38.125870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533894, 37.075382, 38.282780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648518, 0.462838, -0.604323,
		0.142137, 0.706314, 0.693482,
		0.747811, -0.535632, 0.392271,
		39.758236, 36.914692, 38.400459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822487, 37.768524, 38.109863>,  <39.234768, 37.289635, 38.125870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822487, 37.768524, 38.109863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001781, 37.415062, 38.163876>,  <40.109360, 37.202984, 38.196281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001781, 37.415062, 38.163876>,  <39.822487, 37.768524, 38.109863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001781, 37.415062, 38.163876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804497, 0.332922, -0.491881,
		0.389698, 0.329114, 0.860128,
		0.448240, -0.883656, 0.135032,
		40.136253, 37.149963, 38.204384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402615, 37.930027, 38.479664>,  <39.822487, 37.768524, 38.109863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402615, 37.930027, 38.479664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452183, 37.579773, 38.292946>,  <40.481922, 37.369621, 38.180916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452183, 37.579773, 38.292946>,  <40.402615, 37.930027, 38.479664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452183, 37.579773, 38.292946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886566, 0.308994, -0.344273,
		0.445697, -0.371185, 0.814602,
		0.123918, -0.875639, -0.466798,
		40.489357, 37.317081, 38.152908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058216, 37.816227, 38.484100>,  <40.402615, 37.930027, 38.479664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058216, 37.816227, 38.484100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945679, 37.563789, 38.194946>,  <40.878155, 37.412327, 38.021454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945679, 37.563789, 38.194946>,  <41.058216, 37.816227, 38.484100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945679, 37.563789, 38.194946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840955, 0.200694, -0.502510,
		0.462212, -0.749291, 0.474261,
		-0.281345, -0.631098, -0.722883,
		40.861275, 37.374458, 37.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600739, 37.443253, 38.418140>,  <41.058216, 37.816227, 38.484100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600739, 37.443253, 38.418140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372688, 37.425133, 38.090019>,  <41.235859, 37.414261, 37.893147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372688, 37.425133, 38.090019>,  <41.600739, 37.443253, 38.418140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372688, 37.425133, 38.090019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767919, 0.325481, -0.551691,
		0.291988, -0.944462, -0.150774,
		-0.570126, -0.045305, -0.820307,
		41.201649, 37.411541, 37.843925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996006, 37.149208, 37.767853>,  <41.600739, 37.443253, 38.418140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996006, 37.149208, 37.767853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709126, 37.405865, 37.659103>,  <41.536995, 37.559860, 37.593853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709126, 37.405865, 37.659103>,  <41.996006, 37.149208, 37.767853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709126, 37.405865, 37.659103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639444, 0.450882, -0.622749,
		-0.277000, -0.620484, -0.733669,
		-0.717204, 0.641642, -0.271871,
		41.493965, 37.598358, 37.577541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968140, 37.190762, 37.000694>,  <41.996006, 37.149208, 37.767853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968140, 37.190762, 37.000694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864147, 37.525505, 37.193390>,  <41.801750, 37.726353, 37.309010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864147, 37.525505, 37.193390>,  <41.968140, 37.190762, 37.000694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864147, 37.525505, 37.193390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649810, 0.520655, -0.553774,
		-0.714252, 0.169068, -0.679161,
		-0.259983, 0.836860, 0.481741,
		41.786152, 37.776562, 37.337914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813431, 37.720325, 36.482937>,  <41.968140, 37.190762, 37.000694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813431, 37.720325, 36.482937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948586, 37.854698, 36.834614>,  <42.029678, 37.935322, 37.045620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948586, 37.854698, 36.834614>,  <41.813431, 37.720325, 36.482937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948586, 37.854698, 36.834614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729476, 0.496792, -0.470173,
		-0.594722, 0.800216, -0.077195,
		0.337890, 0.335934, 0.879192,
		42.049953, 37.955479, 37.098370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707264, 38.382038, 36.462116>,  <41.813431, 37.720325, 36.482937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707264, 38.382038, 36.462116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002335, 38.266243, 36.706097>,  <42.179375, 38.196766, 36.852486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002335, 38.266243, 36.706097>,  <41.707264, 38.382038, 36.462116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002335, 38.266243, 36.706097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670024, 0.425081, -0.608584,
		-0.083101, 0.857615, 0.507533,
		0.737673, -0.289485, 0.609948,
		42.223637, 38.179398, 36.889080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051220, 38.273827, 35.840050>,  <41.707264, 38.382038, 36.462116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051220, 38.273827, 35.840050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145638, 38.537914, 35.554844>,  <42.202290, 38.696369, 35.383720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145638, 38.537914, 35.554844>,  <42.051220, 38.273827, 35.840050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145638, 38.537914, 35.554844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750559, 0.342174, 0.565312,
		0.617207, -0.668597, -0.414769,
		0.236043, 0.660223, -0.713014,
		42.216450, 38.735981, 35.340939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824402, 38.485435, 35.969471>,  <42.051220, 38.273827, 35.840050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824402, 38.485435, 35.969471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722553, 38.713097, 35.656746>,  <42.661442, 38.849693, 35.469112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722553, 38.713097, 35.656746>,  <42.824402, 38.485435, 35.969471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722553, 38.713097, 35.656746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746822, 0.629335, 0.214926,
		0.614348, -0.529149, -0.585302,
		-0.254624, 0.569156, -0.781811,
		42.646168, 38.883842, 35.422203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396767, 38.736877, 35.460629>,  <42.824402, 38.485435, 35.969471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396767, 38.736877, 35.460629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090050, 38.986801, 35.519474>,  <42.906021, 39.136757, 35.554783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090050, 38.986801, 35.519474>,  <43.396767, 38.736877, 35.460629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090050, 38.986801, 35.519474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621327, 0.664910, 0.414545,
		0.161194, 0.409276, -0.898059,
		-0.766791, 0.624811, 0.147115,
		42.860012, 39.174244, 35.563610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648125, 39.501514, 35.327175>,  <43.396767, 38.736877, 35.460629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648125, 39.501514, 35.327175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316822, 39.490105, 35.551025>,  <43.118042, 39.483257, 35.685337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316822, 39.490105, 35.551025>,  <43.648125, 39.501514, 35.327175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316822, 39.490105, 35.551025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451132, 0.558437, 0.696152,
		-0.332375, 0.829056, -0.449658,
		-0.828255, -0.028528, 0.559625,
		43.068344, 39.481544, 35.718914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191742, 39.266045, 34.960220>,  <43.648125, 39.501514, 35.327175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191742, 39.266045, 34.960220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575222, 39.273399, 35.073750>,  <44.805309, 39.277813, 35.141865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575222, 39.273399, 35.073750>,  <44.191742, 39.266045, 34.960220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575222, 39.273399, 35.073750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271993, -0.232407, 0.933813,
		0.083135, -0.972445, -0.217806,
		0.958701, 0.018391, 0.283819,
		44.862831, 39.278915, 35.158894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384373, 38.513317, 35.214787>,  <44.191742, 39.266045, 34.960220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384373, 38.513317, 35.214787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628933, 38.773888, 35.394485>,  <44.775669, 38.930229, 35.502304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628933, 38.773888, 35.394485>,  <44.384373, 38.513317, 35.214787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628933, 38.773888, 35.394485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209273, -0.414398, 0.885708,
		0.763144, -0.635541, -0.117038,
		0.611405, 0.651430, 0.449247,
		44.812355, 38.969318, 35.529259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719563, 38.124290, 35.764828>,  <44.384373, 38.513317, 35.214787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719563, 38.124290, 35.764828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795986, 38.499279, 35.881199>,  <44.841839, 38.724274, 35.951019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795986, 38.499279, 35.881199>,  <44.719563, 38.124290, 35.764828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795986, 38.499279, 35.881199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387737, -0.200201, 0.899767,
		0.901752, -0.284710, 0.325244,
		0.191058, 0.937476, 0.290924,
		44.853302, 38.780521, 35.968475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170910, 38.017975, 36.354572>,  <44.719563, 38.124290, 35.764828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170910, 38.017975, 36.354572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025505, 38.386578, 36.409248>,  <44.938263, 38.607738, 36.442055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025505, 38.386578, 36.409248>,  <45.170910, 38.017975, 36.354572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025505, 38.386578, 36.409248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229170, -0.230673, 0.945659,
		0.902960, 0.312437, 0.295035,
		-0.363516, 0.921506, 0.136687,
		44.916451, 38.663029, 36.450256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378139, 38.169312, 37.055573>,  <45.170910, 38.017975, 36.354572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378139, 38.169312, 37.055573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090847, 38.443714, 37.009010>,  <44.918472, 38.608356, 36.981071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090847, 38.443714, 37.009010>,  <45.378139, 38.169312, 37.055573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090847, 38.443714, 37.009010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421176, -0.295454, 0.857507,
		0.553860, 0.664911, 0.501131,
		-0.718227, 0.686003, -0.116404,
		44.875378, 38.649513, 36.974091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339325, 38.518139, 37.653206>,  <45.378139, 38.169312, 37.055573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339325, 38.518139, 37.653206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983906, 38.592339, 37.485359>,  <44.770653, 38.636860, 37.384651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983906, 38.592339, 37.485359>,  <45.339325, 38.518139, 37.653206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983906, 38.592339, 37.485359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442689, -0.106513, 0.890326,
		0.120464, 0.976854, 0.176762,
		-0.888546, 0.185503, -0.419612,
		44.717342, 38.647991, 37.359474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075020, 39.074986, 38.016884>,  <45.339325, 38.518139, 37.653206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075020, 39.074986, 38.016884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777874, 38.874168, 37.839748>,  <44.599586, 38.753677, 37.733467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777874, 38.874168, 37.839748>,  <45.075020, 39.074986, 38.016884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777874, 38.874168, 37.839748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461962, -0.094320, 0.881870,
		-0.484507, 0.859683, -0.161859,
		-0.742862, -0.502045, -0.442839,
		44.555016, 38.723557, 37.706898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390305, 39.296230, 38.290302>,  <45.075020, 39.074986, 38.016884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390305, 39.296230, 38.290302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311245, 38.940083, 38.126270>,  <44.263809, 38.726395, 38.027851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311245, 38.940083, 38.126270>,  <44.390305, 39.296230, 38.290302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311245, 38.940083, 38.126270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575102, -0.233454, 0.784064,
		-0.793846, 0.390813, -0.465912,
		-0.197654, -0.890373, -0.410084,
		44.251949, 38.672970, 38.003246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590992, 39.193420, 38.425915>,  <44.390305, 39.296230, 38.290302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590992, 39.193420, 38.425915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714527, 38.830036, 38.313255>,  <43.788647, 38.612007, 38.245659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714527, 38.830036, 38.313255>,  <43.590992, 39.193420, 38.425915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714527, 38.830036, 38.313255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469132, -0.403098, 0.785766,
		-0.827367, -0.110539, -0.550676,
		0.308834, -0.908457, -0.281652,
		43.807178, 38.557499, 38.228760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982719, 38.745541, 38.495121>,  <43.590992, 39.193420, 38.425915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982719, 38.745541, 38.495121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300186, 38.502296, 38.502010>,  <43.490665, 38.356350, 38.506145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300186, 38.502296, 38.502010>,  <42.982719, 38.745541, 38.495121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300186, 38.502296, 38.502010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355012, -0.439977, 0.824856,
		-0.494026, -0.660773, -0.565081,
		0.793665, -0.608111, 0.017223,
		43.538284, 38.319862, 38.507179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689823, 38.131920, 38.632301>,  <42.982719, 38.745541, 38.495121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689823, 38.131920, 38.632301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075146, 38.064110, 38.715542>,  <43.306339, 38.023422, 38.765488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075146, 38.064110, 38.715542>,  <42.689823, 38.131920, 38.632301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075146, 38.064110, 38.715542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268060, -0.647469, 0.713391,
		0.013801, -0.742997, -0.669153,
		0.963304, -0.169528, 0.208104,
		43.364136, 38.013252, 38.777973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816174, 37.389324, 38.683456>,  <42.689823, 38.131920, 38.632301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816174, 37.389324, 38.683456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104702, 37.567406, 38.895679>,  <43.277821, 37.674255, 39.023014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104702, 37.567406, 38.895679>,  <42.816174, 37.389324, 38.683456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104702, 37.567406, 38.895679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235404, -0.562836, 0.792338,
		0.651367, -0.696426, -0.301184,
		0.721322, 0.445203, 0.530555,
		43.321098, 37.700966, 39.054848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062954, 36.914402, 39.166840>,  <42.816174, 37.389324, 38.683456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062954, 36.914402, 39.166840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194019, 37.255505, 39.329536>,  <43.272659, 37.460167, 39.427155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194019, 37.255505, 39.329536>,  <43.062954, 36.914402, 39.166840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194019, 37.255505, 39.329536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096683, -0.397988, 0.912282,
		0.939835, -0.338245, -0.047957,
		0.327661, 0.852758, 0.406746,
		43.292316, 37.511333, 39.451561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485264, 36.695160, 39.662601>,  <43.062954, 36.914402, 39.166840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485264, 36.695160, 39.662601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463451, 37.082104, 39.761589>,  <43.450363, 37.314270, 39.820984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463451, 37.082104, 39.761589>,  <43.485264, 36.695160, 39.662601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463451, 37.082104, 39.761589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118032, -0.239858, 0.963606,
		0.991511, 0.081758, -0.101099,
		-0.054533, 0.967359, 0.247472,
		43.447090, 37.372311, 39.835831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080162, 36.851013, 40.172455>,  <43.485264, 36.695160, 39.662601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080162, 36.851013, 40.172455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785820, 37.118603, 40.214397>,  <43.609215, 37.279156, 40.239563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785820, 37.118603, 40.214397>,  <44.080162, 36.851013, 40.172455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785820, 37.118603, 40.214397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137245, -0.298976, 0.944339,
		0.663089, 0.680503, 0.311816,
		-0.735851, 0.668976, 0.104853,
		43.565063, 37.319294, 40.245853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224751, 37.434200, 40.644596>,  <44.080162, 36.851013, 40.172455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224751, 37.434200, 40.644596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826958, 37.393665, 40.633755>,  <43.588284, 37.369343, 40.627251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826958, 37.393665, 40.633755>,  <44.224751, 37.434200, 40.644596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826958, 37.393665, 40.633755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021864, -0.452914, 0.891286,
		-0.102596, 0.885776, 0.452631,
		-0.994483, -0.101339, -0.027100,
		43.528614, 37.363262, 40.625626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071136, 37.576824, 41.238930>,  <44.224751, 37.434200, 40.644596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071136, 37.576824, 41.238930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749760, 37.372448, 41.116669>,  <43.556934, 37.249825, 41.043312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749760, 37.372448, 41.116669>,  <44.071136, 37.576824, 41.238930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749760, 37.372448, 41.116669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102196, -0.387406, 0.916228,
		-0.586548, 0.767371, 0.259042,
		-0.803441, -0.510939, -0.305654,
		43.508728, 37.219166, 41.024971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583817, 37.730068, 41.698727>,  <44.071136, 37.576824, 41.238930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583817, 37.730068, 41.698727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479469, 37.388569, 41.518478>,  <43.416862, 37.183670, 41.410328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479469, 37.388569, 41.518478>,  <43.583817, 37.730068, 41.698727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479469, 37.388569, 41.518478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107628, -0.438151, 0.892435,
		-0.959357, 0.281305, 0.022411,
		-0.260866, -0.853751, -0.450619,
		43.401211, 37.132442, 41.383293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094730, 37.455170, 42.165691>,  <43.583817, 37.730068, 41.698727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094730, 37.455170, 42.165691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196854, 37.130428, 41.955658>,  <43.258129, 36.935585, 41.829636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196854, 37.130428, 41.955658>,  <43.094730, 37.455170, 42.165691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196854, 37.130428, 41.955658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206461, -0.484781, 0.849919,
		-0.944559, -0.325400, 0.043848,
		0.255306, -0.811852, -0.525086,
		43.273445, 36.886871, 41.798134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634453, 36.899979, 42.307056>,  <43.094730, 37.455170, 42.165691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634453, 36.899979, 42.307056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976303, 36.739506, 42.175201>,  <43.181416, 36.643223, 42.096088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976303, 36.739506, 42.175201>,  <42.634453, 36.899979, 42.307056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976303, 36.739506, 42.175201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059744, -0.554654, 0.829933,
		-0.515788, -0.728980, -0.450056,
		0.854630, -0.401181, -0.329636,
		43.232693, 36.619152, 42.076309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570072, 36.132225, 42.589802>,  <42.634453, 36.899979, 42.307056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570072, 36.132225, 42.589802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956753, 36.182842, 42.500820>,  <43.188759, 36.213211, 42.447433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956753, 36.182842, 42.500820>,  <42.570072, 36.132225, 42.589802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956753, 36.182842, 42.500820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255361, -0.419307, 0.871190,
		0.016967, -0.898982, -0.437657,
		0.966697, 0.126542, -0.222450,
		43.246761, 36.220806, 42.434086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956646, 35.504658, 42.768867>,  <42.570072, 36.132225, 42.589802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956646, 35.504658, 42.768867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247810, 35.778786, 42.777645>,  <43.422508, 35.943264, 42.782909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247810, 35.778786, 42.777645>,  <42.956646, 35.504658, 42.768867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247810, 35.778786, 42.777645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300267, -0.347367, 0.888356,
		0.616430, -0.640056, -0.458631,
		0.727911, 0.685320, 0.021940,
		43.466183, 35.984383, 42.784225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188446, 34.833084, 42.473030>,  <42.956646, 35.504658, 42.768867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188446, 34.833084, 42.473030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080830, 34.451206, 42.523911>,  <43.016262, 34.222080, 42.554440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080830, 34.451206, 42.523911>,  <43.188446, 34.833084, 42.473030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080830, 34.451206, 42.523911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731556, -0.288466, -0.617748,
		0.626453, -0.073142, 0.776020,
		-0.269039, -0.954692, 0.127203,
		43.000118, 34.164799, 42.562073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746639, 34.427193, 42.865009>,  <43.188446, 34.833084, 42.473030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746639, 34.427193, 42.865009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509602, 34.239113, 42.603401>,  <43.367378, 34.126263, 42.446438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509602, 34.239113, 42.603401>,  <43.746639, 34.427193, 42.865009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509602, 34.239113, 42.603401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797169, -0.225842, -0.559925,
		0.115574, -0.853173, 0.508664,
		-0.592591, -0.470204, -0.654022,
		43.331825, 34.098053, 42.407196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136089, 33.895538, 42.681721>,  <43.746639, 34.427193, 42.865009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136089, 33.895538, 42.681721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871426, 33.912834, 42.382301>,  <43.712627, 33.923214, 42.202648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871426, 33.912834, 42.382301>,  <44.136089, 33.895538, 42.681721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871426, 33.912834, 42.382301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721039, -0.237163, -0.651043,
		-0.205679, -0.970507, 0.125745,
		-0.661664, 0.043238, -0.748553,
		43.672928, 33.925808, 42.157734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554138, 34.268250, 43.037823>,  <44.136089, 33.895538, 42.681721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554138, 34.268250, 43.037823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779350, 34.593246, 43.098286>,  <44.914478, 34.788246, 43.134563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779350, 34.593246, 43.098286>,  <44.554138, 34.268250, 43.037823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779350, 34.593246, 43.098286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128786, -0.266930, 0.955072,
		0.816338, -0.518270, -0.254928,
		0.563033, 0.812492, 0.151160,
		44.948261, 34.836994, 43.143635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595131, 33.473167, 43.163879>,  <44.554138, 34.268250, 43.037823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595131, 33.473167, 43.163879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625557, 33.093128, 43.042870>,  <44.643814, 32.865105, 42.970264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625557, 33.093128, 43.042870>,  <44.595131, 33.473167, 43.163879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625557, 33.093128, 43.042870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006992, 0.303907, -0.952676,
		0.997078, 0.070353, 0.029760,
		0.076068, -0.950101, -0.302527,
		44.648376, 32.808098, 42.952110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894531, 33.466888, 42.442219>,  <44.595131, 33.473167, 43.163879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894531, 33.466888, 42.442219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780231, 33.085289, 42.478512>,  <44.711651, 32.856331, 42.500286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780231, 33.085289, 42.478512>,  <44.894531, 33.466888, 42.442219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780231, 33.085289, 42.478512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029850, -0.085772, -0.995868,
		0.957839, -0.287278, -0.003967,
		-0.285751, -0.953999, 0.090731,
		44.694508, 32.799088, 42.505730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413700, 33.029274, 42.202499>,  <44.894531, 33.466888, 42.442219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413700, 33.029274, 42.202499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035912, 32.902702, 42.167065>,  <44.809238, 32.826759, 42.145802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035912, 32.902702, 42.167065>,  <45.413700, 33.029274, 42.202499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035912, 32.902702, 42.167065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104564, -0.033823, -0.993943,
		0.311514, -0.948014, 0.065031,
		-0.944471, -0.316427, -0.088591,
		44.752571, 32.807774, 42.140488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350857, 32.419189, 41.724415>,  <45.413700, 33.029274, 42.202499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350857, 32.419189, 41.724415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019840, 32.643700, 41.729195>,  <44.821232, 32.778404, 41.732063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019840, 32.643700, 41.729195>,  <45.350857, 32.419189, 41.724415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019840, 32.643700, 41.729195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204434, 0.321096, -0.924718,
		-0.522858, -0.762802, -0.380464,
		-0.827542, 0.561276, 0.011945,
		44.771576, 32.812084, 41.732777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955540, 32.265350, 41.169666>,  <45.350857, 32.419189, 41.724415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955540, 32.265350, 41.169666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872620, 32.643940, 41.268631>,  <44.822868, 32.871094, 41.328011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872620, 32.643940, 41.268631>,  <44.955540, 32.265350, 41.169666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872620, 32.643940, 41.268631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109700, 0.228820, -0.967268,
		-0.972108, -0.227654, 0.056395,
		-0.207298, 0.946475, 0.247411,
		44.810429, 32.927883, 41.342854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363083, 32.512333, 40.656631>,  <44.955540, 32.265350, 41.169666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363083, 32.512333, 40.656631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553246, 32.810699, 40.843220>,  <44.667343, 32.989719, 40.955173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553246, 32.810699, 40.843220>,  <44.363083, 32.512333, 40.656631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553246, 32.810699, 40.843220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180452, 0.601625, -0.778129,
		-0.861062, 0.285749, 0.420618,
		0.475404, 0.745919, 0.466473,
		44.695866, 33.034473, 40.983162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923504, 33.106804, 40.361256>,  <44.363083, 32.512333, 40.656631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923504, 33.106804, 40.361256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244400, 33.273785, 40.531971>,  <44.436935, 33.373974, 40.634399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244400, 33.273785, 40.531971>,  <43.923504, 33.106804, 40.361256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244400, 33.273785, 40.531971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020057, 0.695633, -0.718117,
		-0.596667, 0.584661, 0.549690,
		0.802238, 0.417452, 0.426789,
		44.485073, 33.399021, 40.660007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842968, 33.718372, 40.110992>,  <43.923504, 33.106804, 40.361256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842968, 33.718372, 40.110992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208344, 33.737488, 40.272652>,  <44.427570, 33.748959, 40.369648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208344, 33.737488, 40.272652>,  <43.842968, 33.718372, 40.110992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208344, 33.737488, 40.272652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228096, 0.762320, -0.605673,
		-0.337038, 0.645433, 0.685435,
		0.913442, 0.047790, 0.404152,
		44.482376, 33.751823, 40.393898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799557, 34.422413, 40.214039>,  <43.842968, 33.718372, 40.110992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799557, 34.422413, 40.214039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186691, 34.322277, 40.224018>,  <44.418972, 34.262196, 40.230007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186691, 34.322277, 40.224018>,  <43.799557, 34.422413, 40.214039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186691, 34.322277, 40.224018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203530, 0.720827, -0.662559,
		0.147885, 0.646326, 0.748594,
		0.967835, -0.250344, 0.024947,
		44.477043, 34.247173, 40.231503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073780, 35.039413, 40.263973>,  <43.799557, 34.422413, 40.214039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073780, 35.039413, 40.263973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349895, 34.786682, 40.122952>,  <44.515564, 34.635044, 40.038338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349895, 34.786682, 40.122952>,  <44.073780, 35.039413, 40.263973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349895, 34.786682, 40.122952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346940, 0.716641, -0.605027,
		0.634926, 0.295330, 0.713897,
		0.690291, -0.631827, -0.352552,
		44.556984, 34.597134, 40.017185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675232, 35.378746, 40.230679>,  <44.073780, 35.039413, 40.263973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675232, 35.378746, 40.230679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733051, 35.089359, 39.960659>,  <44.767742, 34.915726, 39.798645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733051, 35.089359, 39.960659>,  <44.675232, 35.378746, 40.230679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733051, 35.089359, 39.960659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472858, 0.649783, -0.595136,
		0.869202, -0.233179, 0.436022,
		0.144547, -0.723470, -0.675053,
		44.776417, 34.872318, 39.758144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425060, 35.472263, 40.062126>,  <44.675232, 35.378746, 40.230679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425060, 35.472263, 40.062126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.236149, 35.273342, 39.771019>,  <45.122803, 35.153988, 39.596355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.236149, 35.273342, 39.771019>,  <45.425060, 35.472263, 40.062126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.236149, 35.273342, 39.771019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437065, 0.584876, -0.683297,
		0.765457, -0.640788, -0.058871,
		-0.472281, -0.497304, -0.727764,
		45.094463, 35.124149, 39.552689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888241, 35.471344, 39.533730>,  <45.425060, 35.472263, 40.062126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888241, 35.471344, 39.533730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572487, 35.353657, 39.318211>,  <45.383034, 35.283043, 39.188900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572487, 35.353657, 39.318211>,  <45.888241, 35.471344, 39.533730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572487, 35.353657, 39.318211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346987, 0.510178, -0.786968,
		0.506404, -0.808186, -0.300652,
		-0.789402, -0.294201, -0.538786,
		45.335670, 35.265388, 39.156574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049732, 35.233055, 38.897015>,  <45.888241, 35.471344, 39.533730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049732, 35.233055, 38.897015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666821, 35.311897, 38.812382>,  <45.437073, 35.359203, 38.761604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666821, 35.311897, 38.812382>,  <46.049732, 35.233055, 38.897015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666821, 35.311897, 38.812382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287786, 0.578087, -0.763541,
		-0.028187, -0.791811, -0.610115,
		-0.957280, 0.197104, -0.211578,
		45.379635, 35.371029, 38.748909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865940, 35.025692, 38.180817>,  <46.049732, 35.233055, 38.897015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865940, 35.025692, 38.180817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606701, 35.311680, 38.285728>,  <45.451157, 35.483273, 38.348675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606701, 35.311680, 38.285728>,  <45.865940, 35.025692, 38.180817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606701, 35.311680, 38.285728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161844, 0.465841, -0.869941,
		-0.744164, -0.521356, -0.417623,
		-0.648095, 0.714969, 0.262284,
		45.412273, 35.526169, 38.364414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565460, 35.203701, 37.575798>,  <45.865940, 35.025692, 38.180817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565460, 35.203701, 37.575798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479153, 35.518471, 37.807037>,  <45.427368, 35.707333, 37.945782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479153, 35.518471, 37.807037>,  <45.565460, 35.203701, 37.575798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479153, 35.518471, 37.807037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201016, 0.615162, -0.762344,
		-0.955530, -0.048279, -0.290914,
		-0.215764, 0.786922, 0.578101,
		45.414425, 35.754547, 37.980469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179306, 35.603798, 37.142315>,  <45.565460, 35.203701, 37.575798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179306, 35.603798, 37.142315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332043, 35.843246, 37.423981>,  <45.423687, 35.986916, 37.592979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332043, 35.843246, 37.423981>,  <45.179306, 35.603798, 37.142315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332043, 35.843246, 37.423981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080907, 0.737323, -0.670678,
		-0.920679, 0.313066, 0.233110,
		0.381844, 0.598618, 0.704167,
		45.446594, 36.022831, 37.635231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885944, 36.298412, 37.034328>,  <45.179306, 35.603798, 37.142315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885944, 36.298412, 37.034328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212372, 36.348511, 37.260017>,  <45.408230, 36.378571, 37.395432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212372, 36.348511, 37.260017>,  <44.885944, 36.298412, 37.034328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212372, 36.348511, 37.260017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199820, 0.854892, -0.478781,
		-0.542311, 0.503461, 0.672625,
		0.816070, 0.125245, 0.564219,
		45.457191, 36.386086, 37.429283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082424, 37.014248, 36.983719>,  <44.885944, 36.298412, 37.034328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082424, 37.014248, 36.983719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410065, 36.827324, 37.116802>,  <45.606651, 36.715168, 37.196651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410065, 36.827324, 37.116802>,  <45.082424, 37.014248, 36.983719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410065, 36.827324, 37.116802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564803, 0.555536, -0.610227,
		0.100335, 0.687752, 0.718979,
		0.819103, -0.467308, 0.332705,
		45.655796, 36.687130, 37.216614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611652, 37.466484, 37.233295>,  <45.082424, 37.014248, 36.983719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611652, 37.466484, 37.233295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800411, 37.137630, 37.105919>,  <45.913666, 36.940319, 37.029491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800411, 37.137630, 37.105919>,  <45.611652, 37.466484, 37.233295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800411, 37.137630, 37.105919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614585, 0.565713, -0.549776,
		0.632138, 0.063727, 0.772231,
		0.471897, -0.822136, -0.318443,
		45.941978, 36.890991, 37.010387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251926, 37.717274, 37.185192>,  <45.611652, 37.466484, 37.233295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251926, 37.717274, 37.185192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268646, 37.366642, 36.993416>,  <46.278679, 37.156265, 36.878349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268646, 37.366642, 36.993416>,  <46.251926, 37.717274, 37.185192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268646, 37.366642, 36.993416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598873, 0.406087, -0.690250,
		0.799753, -0.258277, 0.541930,
		0.041795, -0.876577, -0.479444,
		46.281185, 37.103668, 36.849583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.973499, 37.526737, 37.178841>,  <46.251926, 37.717274, 37.185192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.973499, 37.526737, 37.178841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789879, 37.322544, 36.888000>,  <46.679707, 37.200027, 36.713497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789879, 37.322544, 36.888000>,  <46.973499, 37.526737, 37.178841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789879, 37.322544, 36.888000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664735, 0.345620, -0.662325,
		0.589407, -0.787372, 0.180678,
		-0.459050, -0.510482, -0.727105,
		46.652164, 37.169399, 36.669868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.458485, 37.076431, 36.799225>,  <46.973499, 37.526737, 37.178841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.458485, 37.076431, 36.799225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163551, 37.138401, 36.536213>,  <46.986591, 37.175583, 36.378407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163551, 37.138401, 36.536213>,  <47.458485, 37.076431, 36.799225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.163551, 37.138401, 36.536213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673438, 0.245119, -0.697422,
		0.053127, -0.957035, -0.285064,
		-0.737332, 0.154921, -0.657526,
		46.942352, 37.184875, 36.338955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.800312, 37.056305, 36.125931>,  <47.458485, 37.076431, 36.799225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.800312, 37.056305, 36.125931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.459534, 37.232864, 36.013248>,  <47.255066, 37.338799, 35.945641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.459534, 37.232864, 36.013248>,  <47.800312, 37.056305, 36.125931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.459534, 37.232864, 36.013248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451671, 0.347272, -0.821824,
		-0.264922, -0.827387, -0.495223,
		-0.851945, 0.441398, -0.281706,
		47.203949, 37.365284, 35.928738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.759403, 36.807198, 35.453167>,  <47.800312, 37.056305, 36.125931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.759403, 36.807198, 35.453167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504452, 37.115074, 35.467663>,  <47.351479, 37.299801, 35.476360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504452, 37.115074, 35.467663>,  <47.759403, 36.807198, 35.453167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504452, 37.115074, 35.467663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426072, 0.391231, -0.815721,
		-0.642034, -0.504487, -0.577309,
		-0.637382, 0.769696, 0.036235,
		47.313236, 37.345982, 35.478535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325565, 36.879299, 34.812084>,  <47.759403, 36.807198, 35.453167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325565, 36.879299, 34.812084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400200, 37.225742, 34.997574>,  <47.444981, 37.433609, 35.108868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400200, 37.225742, 34.997574>,  <47.325565, 36.879299, 34.812084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400200, 37.225742, 34.997574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389710, 0.368038, -0.844200,
		-0.901839, 0.338231, -0.268862,
		0.186583, 0.866111, 0.463723,
		47.456173, 37.485577, 35.136692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.847439, 36.327110, 34.531616>,  <47.325565, 36.879299, 34.812084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.847439, 36.327110, 34.531616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503487, 36.359196, 34.329952>,  <46.297115, 36.378445, 34.208954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503487, 36.359196, 34.329952>,  <46.847439, 36.327110, 34.531616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503487, 36.359196, 34.329952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339234, -0.648220, -0.681712,
		-0.381488, -0.757217, 0.530180,
		-0.859877, 0.080210, -0.504162,
		46.245525, 36.383259, 34.178703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748909, 35.697647, 34.299763>,  <46.847439, 36.327110, 34.531616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748909, 35.697647, 34.299763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470501, 35.871731, 34.071323>,  <46.303455, 35.976181, 33.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470501, 35.871731, 34.071323>,  <46.748909, 35.697647, 34.299763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470501, 35.871731, 34.071323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149169, -0.690377, -0.707905,
		-0.702354, -0.577907, 0.415598,
		-0.696022, 0.435205, -0.571095,
		46.261696, 36.002293, 33.899994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.435314, 35.650536, 34.761635>,  <46.748909, 35.697647, 34.299763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.435314, 35.650536, 34.761635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316395, 35.430355, 35.073689>,  <47.245045, 35.298244, 35.260921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316395, 35.430355, 35.073689>,  <47.435314, 35.650536, 34.761635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316395, 35.430355, 35.073689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388817, -0.816061, -0.427629,
		0.872029, 0.176196, 0.456641,
		-0.297300, -0.550455, 0.780136,
		47.227203, 35.265217, 35.307728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.045818, 35.296993, 35.020027>,  <47.435314, 35.650536, 34.761635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.045818, 35.296993, 35.020027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.723095, 35.093559, 35.140293>,  <47.529461, 34.971500, 35.212452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.723095, 35.093559, 35.140293>,  <48.045818, 35.296993, 35.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.723095, 35.093559, 35.140293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354545, -0.823869, -0.442196,
		0.472602, -0.250170, 0.845022,
		-0.806812, -0.508581, 0.300665,
		47.481052, 34.940987, 35.230492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.524607, 38.669689, 41.512489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.231817, 38.458004, 41.340839>,  <31.056143, 38.330994, 41.237850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.231817, 38.458004, 41.340839>,  <31.524607, 38.669689, 41.512489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231817, 38.458004, 41.340839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501188, 0.008429, -0.865297,
		0.461547, -0.848445, 0.259067,
		-0.731973, -0.529217, -0.429121,
		31.012226, 38.299240, 41.212105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742865, 38.022026, 41.261703>,  <31.524607, 38.669689, 41.512489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742865, 38.022026, 41.261703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.419775, 38.111248, 41.043407>,  <31.225922, 38.164780, 40.912430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.419775, 38.111248, 41.043407>,  <31.742865, 38.022026, 41.261703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419775, 38.111248, 41.043407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492421, -0.253772, -0.832539,
		-0.324194, -0.941194, 0.095141,
		-0.807725, 0.223054, -0.545736,
		31.177458, 38.178165, 40.879688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633909, 37.438461, 40.823673>,  <31.742865, 38.022026, 41.261703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633909, 37.438461, 40.823673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.431742, 37.743824, 40.662792>,  <31.310442, 37.927040, 40.566265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.431742, 37.743824, 40.662792>,  <31.633909, 37.438461, 40.823673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431742, 37.743824, 40.662792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379198, -0.222193, -0.898242,
		-0.775089, -0.606502, -0.177181,
		-0.505417, 0.763404, -0.402204,
		31.280117, 37.972847, 40.542130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403940, 37.153416, 40.300777>,  <31.633909, 37.438461, 40.823673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403940, 37.153416, 40.300777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381197, 37.545673, 40.225830>,  <31.367550, 37.781029, 40.180862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381197, 37.545673, 40.225830>,  <31.403940, 37.153416, 40.300777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381197, 37.545673, 40.225830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472579, -0.138881, -0.870276,
		-0.879452, -0.138031, -0.455534,
		-0.056860, 0.980642, -0.187370,
		31.364140, 37.839867, 40.169621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203844, 37.159664, 39.598145>,  <31.403940, 37.153416, 40.300777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203844, 37.159664, 39.598145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.321072, 37.537350, 39.658234>,  <31.391409, 37.763962, 39.694286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.321072, 37.537350, 39.658234>,  <31.203844, 37.159664, 39.598145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321072, 37.537350, 39.658234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511469, -0.022079, -0.859018,
		-0.807781, 0.328588, -0.489408,
		0.293068, 0.944215, 0.150227,
		31.408993, 37.820614, 39.703300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973856, 37.607357, 38.968468>,  <31.203844, 37.159664, 39.598145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973856, 37.607357, 38.968468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.289356, 37.769218, 39.153564>,  <31.478657, 37.866333, 39.264622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.289356, 37.769218, 39.153564>,  <30.973856, 37.607357, 38.968468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289356, 37.769218, 39.153564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503832, 0.005709, -0.863783,
		-0.352171, 0.914454, -0.199372,
		0.788752, 0.404649, 0.462742,
		31.525982, 37.890614, 39.292389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324673, 38.017124, 38.434795>,  <30.973856, 37.607357, 38.968468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324673, 38.017124, 38.434795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.605200, 37.979588, 38.717453>,  <31.773516, 37.957066, 38.887047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.605200, 37.979588, 38.717453>,  <31.324673, 38.017124, 38.434795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605200, 37.979588, 38.717453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710695, 0.169032, -0.682891,
		-0.055365, 0.981133, 0.185234,
		0.701318, -0.093837, 0.706645,
		31.815596, 37.951435, 38.929447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734629, 38.493748, 38.145458>,  <31.324673, 38.017124, 38.434795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734629, 38.493748, 38.145458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.946411, 38.252747, 38.384342>,  <32.073479, 38.108147, 38.527672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.946411, 38.252747, 38.384342>,  <31.734629, 38.493748, 38.145458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946411, 38.252747, 38.384342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732526, -0.030377, -0.680061,
		0.427882, 0.797537, 0.425266,
		0.529456, -0.602504, 0.597214,
		32.105247, 38.071995, 38.563507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481552, 38.728287, 38.207539>,  <31.734629, 38.493748, 38.145458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481552, 38.728287, 38.207539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.520641, 38.345219, 38.315842>,  <32.544094, 38.115376, 38.380825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.520641, 38.345219, 38.315842>,  <32.481552, 38.728287, 38.207539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520641, 38.345219, 38.315842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722046, -0.119010, -0.681532,
		0.684909, 0.262102, 0.679855,
		0.097721, -0.957674, 0.270761,
		32.549957, 38.057915, 38.397072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200321, 38.605564, 38.268089>,  <32.481552, 38.728287, 38.207539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200321, 38.605564, 38.268089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.047401, 38.236164, 38.255444>,  <32.955650, 38.014526, 38.247856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.047401, 38.236164, 38.255444>,  <33.200321, 38.605564, 38.268089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047401, 38.236164, 38.255444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795379, -0.311463, -0.519965,
		0.470339, -0.223929, 0.853602,
		-0.382301, -0.923497, -0.031615,
		32.932713, 37.959114, 38.245960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669003, 38.114151, 38.538795>,  <33.200321, 38.605564, 38.268089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669003, 38.114151, 38.538795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.441235, 37.924057, 38.270493>,  <33.304573, 37.810001, 38.109512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.441235, 37.924057, 38.270493>,  <33.669003, 38.114151, 38.538795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441235, 37.924057, 38.270493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791554, -0.096805, -0.603383,
		0.221818, -0.874515, 0.431300,
		-0.569420, -0.475238, -0.670753,
		33.270409, 37.781487, 38.069267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074802, 37.580013, 38.335918>,  <33.669003, 38.114151, 38.538795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074802, 37.580013, 38.335918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804916, 37.655926, 38.050613>,  <33.642986, 37.701473, 37.879433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804916, 37.655926, 38.050613>,  <34.074802, 37.580013, 38.335918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804916, 37.655926, 38.050613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736470, 0.109374, -0.667570,
		-0.048682, -0.975715, -0.213567,
		-0.674716, 0.189784, -0.713260,
		33.602501, 37.712860, 37.836636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358658, 37.228512, 37.885597>,  <34.074802, 37.580013, 38.335918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358658, 37.228512, 37.885597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.091553, 37.450764, 37.687462>,  <33.931290, 37.584114, 37.568581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.091553, 37.450764, 37.687462>,  <34.358658, 37.228512, 37.885597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091553, 37.450764, 37.687462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669608, 0.157723, -0.725775,
		-0.325140, -0.816329, -0.477379,
		-0.667765, 0.555635, -0.495338,
		33.891224, 37.617455, 37.538860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226948, 36.885105, 37.254242>,  <34.358658, 37.228512, 37.885597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226948, 36.885105, 37.254242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126293, 37.269169, 37.205631>,  <34.065899, 37.499607, 37.176464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126293, 37.269169, 37.205631>,  <34.226948, 36.885105, 37.254242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126293, 37.269169, 37.205631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634177, 0.068728, -0.770127,
		-0.731093, -0.270867, -0.626206,
		-0.251640, 0.960160, -0.121531,
		34.050800, 37.557217, 37.169170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242214, 37.022064, 36.586838>,  <34.226948, 36.885105, 37.254242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242214, 37.022064, 36.586838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266911, 37.393604, 36.732948>,  <34.281731, 37.616528, 36.820614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.266911, 37.393604, 36.732948>,  <34.242214, 37.022064, 36.586838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266911, 37.393604, 36.732948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785549, 0.180540, -0.591877,
		-0.615711, 0.323484, -0.718510,
		0.061743, 0.928850, 0.365273,
		34.285435, 37.672260, 36.842529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194130, 37.526711, 35.975018>,  <34.242214, 37.022064, 36.586838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194130, 37.526711, 35.975018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402313, 37.736595, 36.244476>,  <34.527222, 37.862526, 36.406151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402313, 37.736595, 36.244476>,  <34.194130, 37.526711, 35.975018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402313, 37.736595, 36.244476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643635, 0.277354, -0.713308,
		-0.561120, 0.804830, -0.193373,
		0.520459, 0.524713, 0.673646,
		34.558453, 37.894009, 36.446571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470318, 38.170609, 35.674133>,  <34.194130, 37.526711, 35.975018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470318, 38.170609, 35.674133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699024, 38.158211, 36.002064>,  <34.836250, 38.150772, 36.198822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699024, 38.158211, 36.002064>,  <34.470318, 38.170609, 35.674133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699024, 38.158211, 36.002064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785754, 0.308076, -0.536358,
		-0.235945, 0.950857, 0.200504,
		0.571770, -0.030996, 0.819828,
		34.870556, 38.148911, 36.248013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928089, 38.759781, 35.654316>,  <34.470318, 38.170609, 35.674133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928089, 38.759781, 35.654316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119316, 38.539394, 35.927925>,  <35.234051, 38.407162, 36.092091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119316, 38.539394, 35.927925>,  <34.928089, 38.759781, 35.654316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119316, 38.539394, 35.927925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877723, 0.270887, -0.395250,
		0.032476, 0.789339, 0.613098,
		0.478066, -0.550966, 0.684024,
		35.262737, 38.374104, 36.133133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421051, 39.135990, 35.877533>,  <34.928089, 38.759781, 35.654316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421051, 39.135990, 35.877533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521038, 38.752201, 35.929585>,  <35.581032, 38.521927, 35.960815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521038, 38.752201, 35.929585>,  <35.421051, 39.135990, 35.877533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521038, 38.752201, 35.929585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912689, 0.188615, -0.362523,
		0.323284, 0.209392, 0.922845,
		0.249972, -0.959468, 0.130133,
		35.596031, 38.464359, 35.968624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127449, 39.234261, 36.044243>,  <35.421051, 39.135990, 35.877533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127449, 39.234261, 36.044243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075405, 38.847702, 35.955574>,  <36.044178, 38.615765, 35.902370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075405, 38.847702, 35.955574>,  <36.127449, 39.234261, 36.044243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075405, 38.847702, 35.955574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939940, -0.049067, -0.337794,
		0.315568, -0.252313, 0.914743,
		-0.130114, -0.966401, -0.221675,
		36.036369, 38.557781, 35.889072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785236, 38.908916, 36.167542>,  <36.127449, 39.234261, 36.044243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785236, 38.908916, 36.167542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598957, 38.624660, 35.956596>,  <36.487190, 38.454105, 35.830029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598957, 38.624660, 35.956596>,  <36.785236, 38.908916, 36.167542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598957, 38.624660, 35.956596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848954, -0.190547, -0.492919,
		0.249803, -0.677256, 0.692042,
		-0.465699, -0.710645, -0.527360,
		36.459248, 38.411469, 35.798389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196453, 38.359375, 36.228386>,  <36.785236, 38.908916, 36.167542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196453, 38.359375, 36.228386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991287, 38.360245, 35.885010>,  <36.868187, 38.360767, 35.678986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991287, 38.360245, 35.885010>,  <37.196453, 38.359375, 36.228386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991287, 38.360245, 35.885010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851157, -0.128685, -0.508893,
		-0.111572, -0.991683, 0.064158,
		-0.512917, 0.002169, -0.858435,
		36.837414, 38.360897, 35.627480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703331, 37.838200, 36.134766>,  <37.196453, 38.359375, 36.228386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703331, 37.838200, 36.134766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046219, 38.020378, 36.230885>,  <38.251953, 38.129684, 36.288555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046219, 38.020378, 36.230885>,  <37.703331, 37.838200, 36.134766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046219, 38.020378, 36.230885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215850, -0.105874, 0.970670,
		0.467526, -0.883947, 0.007550,
		0.857221, 0.455443, 0.240299,
		38.303387, 38.157013, 36.302975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960457, 37.486908, 36.718208>,  <37.703331, 37.838200, 36.134766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960457, 37.486908, 36.718208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159874, 37.833630, 36.722286>,  <38.279526, 38.041664, 36.724731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159874, 37.833630, 36.722286>,  <37.960457, 37.486908, 36.718208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159874, 37.833630, 36.722286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073837, 0.030749, 0.996796,
		0.863714, -0.497699, 0.079332,
		0.498544, 0.866805, 0.010190,
		38.309437, 38.093670, 36.725342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572945, 37.437809, 37.155437>,  <37.960457, 37.486908, 36.718208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572945, 37.437809, 37.155437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.457405, 37.819733, 37.127415>,  <38.388081, 38.048885, 37.110603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.457405, 37.819733, 37.127415>,  <38.572945, 37.437809, 37.155437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457405, 37.819733, 37.127415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245153, -0.003031, 0.969480,
		0.925456, 0.297203, 0.234950,
		-0.288845, 0.954810, -0.070055,
		38.370750, 38.106174, 37.106400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952469, 37.806061, 37.660877>,  <38.572945, 37.437809, 37.155437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952469, 37.806061, 37.660877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638592, 38.039177, 37.576389>,  <38.450268, 38.179047, 37.525696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638592, 38.039177, 37.576389>,  <38.952469, 37.806061, 37.660877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638592, 38.039177, 37.576389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154108, 0.146642, 0.977111,
		0.600429, 0.799279, -0.025255,
		-0.784688, 0.582794, -0.211224,
		38.403187, 38.214016, 37.513023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959465, 38.348507, 38.173458>,  <38.952469, 37.806061, 37.660877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959465, 38.348507, 38.173458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584774, 38.391232, 38.040115>,  <38.359959, 38.416866, 37.960110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.584774, 38.391232, 38.040115>,  <38.959465, 38.348507, 38.173458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584774, 38.391232, 38.040115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297779, 0.257504, 0.919249,
		0.184024, 0.960356, -0.209407,
		-0.936730, 0.106807, -0.333360,
		38.303757, 38.423275, 37.940105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719051, 39.053185, 38.435944>,  <38.959465, 38.348507, 38.173458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719051, 39.053185, 38.435944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405125, 38.810364, 38.386051>,  <38.216770, 38.664673, 38.356117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405125, 38.810364, 38.386051>,  <38.719051, 39.053185, 38.435944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405125, 38.810364, 38.386051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374434, 0.304092, 0.875972,
		-0.493829, 0.734179, -0.465956,
		-0.784813, -0.607050, -0.124732,
		38.169682, 38.628250, 38.348633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227726, 39.346073, 38.830570>,  <38.719051, 39.053185, 38.435944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227726, 39.346073, 38.830570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058632, 38.992126, 38.752285>,  <37.957176, 38.779758, 38.705315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058632, 38.992126, 38.752285>,  <38.227726, 39.346073, 38.830570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058632, 38.992126, 38.752285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570602, 0.092105, 0.816045,
		-0.704067, 0.456645, -0.543843,
		-0.422733, -0.884868, -0.195714,
		37.931812, 38.726665, 38.693569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571121, 39.425480, 38.889416>,  <38.227726, 39.346073, 38.830570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571121, 39.425480, 38.889416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610371, 39.030823, 38.941429>,  <37.633919, 38.794029, 38.972637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.610371, 39.030823, 38.941429>,  <37.571121, 39.425480, 38.889416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610371, 39.030823, 38.941429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630456, 0.039470, 0.775221,
		-0.769998, -0.158044, -0.618163,
		0.098120, -0.986643, 0.130031,
		37.639805, 38.734829, 38.980438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825443, 39.160210, 38.868275>,  <37.571121, 39.425480, 38.889416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825443, 39.160210, 38.868275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054382, 38.892918, 39.058388>,  <37.191746, 38.732544, 39.172455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054382, 38.892918, 39.058388>,  <36.825443, 39.160210, 38.868275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054382, 38.892918, 39.058388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712016, -0.117466, 0.692267,
		-0.406762, -0.734626, -0.543019,
		0.572344, -0.668227, 0.475285,
		37.226086, 38.692451, 39.200974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399490, 38.629677, 38.970806>,  <36.825443, 39.160210, 38.868275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399490, 38.629677, 38.970806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702927, 38.585228, 39.227615>,  <36.884987, 38.558556, 39.381702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702927, 38.585228, 39.227615>,  <36.399490, 38.629677, 38.970806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702927, 38.585228, 39.227615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646827, -0.247094, 0.721498,
		0.078463, -0.962598, -0.259323,
		0.758590, -0.111126, 0.642022,
		36.930504, 38.551891, 39.420223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145462, 38.169029, 39.419502>,  <36.399490, 38.629677, 38.970806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145462, 38.169029, 39.419502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470421, 38.300953, 39.611851>,  <36.665398, 38.380108, 39.727261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470421, 38.300953, 39.611851>,  <36.145462, 38.169029, 39.419502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470421, 38.300953, 39.611851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384547, -0.316898, 0.867006,
		0.438332, -0.889271, -0.130621,
		0.812397, 0.329806, 0.480873,
		36.714142, 38.399895, 39.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251934, 37.674217, 39.852051>,  <36.145462, 38.169029, 39.419502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251934, 37.674217, 39.852051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436291, 37.999275, 39.994705>,  <36.546906, 38.194309, 40.080299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436291, 37.999275, 39.994705>,  <36.251934, 37.674217, 39.852051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436291, 37.999275, 39.994705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496615, -0.096887, 0.862546,
		0.735497, -0.574651, 0.358917,
		0.460888, 0.812643, 0.356641,
		36.574558, 38.243069, 40.101696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506508, 37.493279, 40.614365>,  <36.251934, 37.674217, 39.852051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506508, 37.493279, 40.614365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469704, 37.890415, 40.583908>,  <36.447620, 38.128696, 40.565632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469704, 37.890415, 40.583908>,  <36.506508, 37.493279, 40.614365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469704, 37.890415, 40.583908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486308, 0.021922, 0.873512,
		0.868929, 0.117405, 0.480810,
		-0.092014, 0.992842, -0.076144,
		36.442101, 38.188267, 40.561066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387234, 37.764133, 41.336262>,  <36.506508, 37.493279, 40.614365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387234, 37.764133, 41.336262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287308, 38.072899, 41.102428>,  <36.227352, 38.258160, 40.962128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287308, 38.072899, 41.102428>,  <36.387234, 37.764133, 41.336262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287308, 38.072899, 41.102428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594392, 0.354348, 0.721898,
		0.764390, 0.527814, 0.370298,
		-0.249813, 0.771914, -0.584588,
		36.212364, 38.304474, 40.927052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334930, 38.353146, 41.767448>,  <36.387234, 37.764133, 41.336262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334930, 38.353146, 41.767448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112263, 38.430935, 41.444386>,  <35.978664, 38.477608, 41.250549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.112263, 38.430935, 41.444386>,  <36.334930, 38.353146, 41.767448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112263, 38.430935, 41.444386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763541, 0.263273, 0.589655,
		0.327305, 0.944916, 0.001933,
		-0.556666, 0.194473, -0.807653,
		35.945263, 38.489277, 41.202091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899223, 38.894569, 41.949127>,  <36.334930, 38.353146, 41.767448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899223, 38.894569, 41.949127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709457, 38.766945, 41.620949>,  <35.595596, 38.690369, 41.424042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709457, 38.766945, 41.620949>,  <35.899223, 38.894569, 41.949127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709457, 38.766945, 41.620949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873432, 0.054396, 0.483899,
		-0.109764, 0.946172, -0.304484,
		-0.474414, -0.319060, -0.820446,
		35.567135, 38.671227, 41.374813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271614, 39.370434, 41.771671>,  <35.899223, 38.894569, 41.949127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271614, 39.370434, 41.771671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183506, 39.013668, 41.613701>,  <35.130642, 38.799610, 41.518917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183506, 39.013668, 41.613701>,  <35.271614, 39.370434, 41.771671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183506, 39.013668, 41.613701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866629, -0.006882, 0.498907,
		-0.447700, 0.452149, -0.771444,
		-0.220271, -0.891916, -0.394926,
		35.117424, 38.746094, 41.495224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648769, 39.399857, 41.472702>,  <35.271614, 39.370434, 41.771671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648769, 39.399857, 41.472702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.698750, 39.009876, 41.546307>,  <34.728737, 38.775887, 41.590469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.698750, 39.009876, 41.546307>,  <34.648769, 39.399857, 41.472702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698750, 39.009876, 41.546307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835202, -0.003247, 0.549934,
		-0.535561, -0.222398, -0.814686,
		0.124949, -0.974950, 0.184009,
		34.736233, 38.717392, 41.601509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.864681, 39.021873, 41.302979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085918, 38.738831, 41.478878>,  <34.218658, 38.569004, 41.584419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085918, 38.738831, 41.478878>,  <33.864681, 39.021873, 41.302979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085918, 38.738831, 41.478878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728807, -0.155210, 0.666896,
		-0.403647, -0.689349, -0.601554,
		0.553091, -0.707607, 0.439752,
		34.251846, 38.526550, 41.610806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382927, 38.396732, 41.383118>,  <33.864681, 39.021873, 41.302979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382927, 38.396732, 41.383118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684246, 38.353260, 41.642570>,  <33.865040, 38.327179, 41.798244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684246, 38.353260, 41.642570>,  <33.382927, 38.396732, 41.383118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684246, 38.353260, 41.642570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656860, -0.173473, 0.733786,
		0.032774, -0.978824, -0.202063,
		0.753300, -0.108678, 0.648636,
		33.910236, 38.320656, 41.837162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425213, 37.686718, 41.713440>,  <33.382927, 38.396732, 41.383118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425213, 37.686718, 41.713440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.587250, 37.953041, 41.964073>,  <33.684471, 38.112835, 42.114452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.587250, 37.953041, 41.964073>,  <33.425213, 37.686718, 41.713440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587250, 37.953041, 41.964073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787124, -0.094677, 0.609485,
		0.465122, -0.740094, 0.485720,
		0.405089, 0.665806, 0.626582,
		33.708775, 38.152782, 42.152046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029346, 37.542114, 42.258965>,  <33.425213, 37.686718, 41.713440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029346, 37.542114, 42.258965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198326, 37.890095, 42.360733>,  <33.299713, 38.098881, 42.421795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198326, 37.890095, 42.360733>,  <33.029346, 37.542114, 42.258965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198326, 37.890095, 42.360733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619182, 0.071994, 0.781940,
		0.661931, -0.487858, 0.569071,
		0.422446, 0.869949, 0.254418,
		33.325058, 38.151081, 42.437057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108173, 37.507103, 43.027550>,  <33.029346, 37.542114, 42.258965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108173, 37.507103, 43.027550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117142, 37.896713, 42.937412>,  <33.122524, 38.130478, 42.883331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117142, 37.896713, 42.937412>,  <33.108173, 37.507103, 43.027550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117142, 37.896713, 42.937412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622768, 0.189934, 0.759002,
		0.782085, 0.123317, 0.610849,
		0.022423, 0.974021, -0.225343,
		33.123867, 38.188919, 42.869808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158897, 37.762028, 43.710552>,  <33.108173, 37.507103, 43.027550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158897, 37.762028, 43.710552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066742, 38.076447, 43.481102>,  <33.011448, 38.265099, 43.343430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066742, 38.076447, 43.481102>,  <33.158897, 37.762028, 43.710552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066742, 38.076447, 43.481102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610569, 0.342238, 0.714198,
		0.757710, 0.514786, 0.401086,
		-0.230392, 0.786046, -0.573630,
		32.997623, 38.312260, 43.309013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440689, 38.308887, 44.006721>,  <33.158897, 37.762028, 43.710552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440689, 38.308887, 44.006721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117542, 38.420971, 43.799328>,  <32.923653, 38.488220, 43.674892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117542, 38.420971, 43.799328>,  <33.440689, 38.308887, 44.006721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117542, 38.420971, 43.799328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430931, 0.319300, 0.844006,
		0.402053, 0.905278, -0.137201,
		-0.807869, 0.280211, -0.518488,
		32.875183, 38.505035, 43.643780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215202, 39.023273, 44.369164>,  <33.440689, 38.308887, 44.006721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215202, 39.023273, 44.369164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915970, 38.881222, 44.144928>,  <32.736431, 38.795990, 44.010387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915970, 38.881222, 44.144928>,  <33.215202, 39.023273, 44.369164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915970, 38.881222, 44.144928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661224, 0.470421, 0.584368,
		0.056188, 0.807829, -0.586733,
		-0.748081, -0.355128, -0.560588,
		32.691547, 38.774685, 43.976753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788380, 39.556767, 44.344505>,  <33.215202, 39.023273, 44.369164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788380, 39.556767, 44.344505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.584747, 39.218571, 44.280025>,  <32.462566, 39.015652, 44.241337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.584747, 39.218571, 44.280025>,  <32.788380, 39.556767, 44.344505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584747, 39.218571, 44.280025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689212, 0.288247, 0.664756,
		-0.515579, 0.449514, -0.729462,
		-0.509083, -0.845488, -0.161196,
		32.432022, 38.964924, 44.231667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040653, 39.733765, 44.323105>,  <32.788380, 39.556767, 44.344505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040653, 39.733765, 44.323105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067822, 39.343899, 44.408344>,  <32.084122, 39.109978, 44.459488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067822, 39.343899, 44.408344>,  <32.040653, 39.733765, 44.323105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067822, 39.343899, 44.408344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635595, 0.122366, 0.762263,
		-0.769029, -0.187214, -0.611183,
		0.067918, -0.974668, 0.213095,
		32.088196, 39.051498, 44.472271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548544, 39.673676, 44.642544>,  <32.040653, 39.733765, 44.323105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548544, 39.673676, 44.642544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.672894, 39.307838, 44.745983>,  <31.747503, 39.088337, 44.808048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.672894, 39.307838, 44.745983>,  <31.548544, 39.673676, 44.642544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672894, 39.307838, 44.745983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677918, -0.022668, 0.734789,
		-0.666173, -0.403733, -0.627068,
		0.310873, -0.914596, 0.258597,
		31.766155, 39.033459, 44.823563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895805, 39.243496, 44.781334>,  <31.548544, 39.673676, 44.642544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895805, 39.243496, 44.781334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.187691, 39.036446, 44.960033>,  <31.362822, 38.912216, 45.067253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.187691, 39.036446, 44.960033>,  <30.895805, 39.243496, 44.781334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187691, 39.036446, 44.960033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622780, -0.233448, 0.746758,
		-0.282245, -0.823147, -0.492714,
		0.729714, -0.517621, 0.446750,
		31.406605, 38.881161, 45.094059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663584, 38.520760, 44.854343>,  <30.895805, 39.243496, 44.781334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663584, 38.520760, 44.854343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945805, 38.574471, 45.132671>,  <31.115137, 38.606697, 45.299667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945805, 38.574471, 45.132671>,  <30.663584, 38.520760, 44.854343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945805, 38.574471, 45.132671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593775, -0.423940, 0.683890,
		0.386817, -0.895681, -0.219381,
		0.705552, 0.134278, 0.695820,
		31.157471, 38.614754, 45.341419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525219, 37.968391, 45.281384>,  <30.663584, 38.520760, 44.854343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525219, 37.968391, 45.281384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.735390, 38.207630, 45.523441>,  <30.861492, 38.351173, 45.668674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.735390, 38.207630, 45.523441>,  <30.525219, 37.968391, 45.281384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735390, 38.207630, 45.523441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416758, -0.439154, 0.795900,
		0.741780, -0.670387, 0.018520,
		0.525428, 0.598101, 0.605145,
		30.893019, 38.387062, 45.704987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783218, 37.530182, 45.835011>,  <30.525219, 37.968391, 45.281384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783218, 37.530182, 45.835011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.809473, 37.909599, 45.958923>,  <30.825226, 38.137249, 46.033272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.809473, 37.909599, 45.958923>,  <30.783218, 37.530182, 45.835011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809473, 37.909599, 45.958923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377580, -0.263759, 0.887617,
		0.923648, -0.175229, 0.340837,
		0.065637, 0.948539, 0.309784,
		30.829165, 38.194160, 46.051857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314543, 37.564720, 46.465477>,  <30.783218, 37.530182, 45.835011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314543, 37.564720, 46.465477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.064413, 37.876690, 46.476009>,  <30.914335, 38.063869, 46.482330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.064413, 37.876690, 46.476009>,  <31.314543, 37.564720, 46.465477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064413, 37.876690, 46.476009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193471, -0.187632, 0.962997,
		0.756003, 0.597089, 0.268223,
		-0.625322, 0.779922, 0.026331,
		30.876816, 38.110668, 46.483910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400389, 37.924854, 47.051315>,  <31.314543, 37.564720, 46.465477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400389, 37.924854, 47.051315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044567, 38.094822, 46.984222>,  <30.831074, 38.196804, 46.943966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044567, 38.094822, 46.984222>,  <31.400389, 37.924854, 47.051315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044567, 38.094822, 46.984222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266951, -0.185552, 0.945678,
		0.370715, 0.886010, 0.278492,
		-0.889555, 0.424921, -0.167734,
		30.777700, 38.222298, 46.933903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308083, 38.099422, 47.625385>,  <31.400389, 37.924854, 47.051315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308083, 38.099422, 47.625385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939095, 38.128937, 47.473804>,  <30.717703, 38.146645, 47.382854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939095, 38.128937, 47.473804>,  <31.308083, 38.099422, 47.625385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939095, 38.128937, 47.473804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385586, -0.126891, 0.913905,
		0.019347, 0.989168, 0.145504,
		-0.922469, 0.073785, -0.378955,
		30.662354, 38.151073, 47.360119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898315, 38.311356, 48.205204>,  <31.308083, 38.099422, 47.625385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898315, 38.311356, 48.205204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.642349, 38.163212, 47.935879>,  <30.488770, 38.074326, 47.774284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.642349, 38.163212, 47.935879>,  <30.898315, 38.311356, 48.205204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642349, 38.163212, 47.935879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637217, -0.233973, 0.734310,
		-0.429494, 0.898939, -0.086276,
		-0.639914, -0.370358, -0.673309,
		30.450375, 38.052105, 47.733887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287012, 38.612415, 48.299423>,  <30.898315, 38.311356, 48.205204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287012, 38.612415, 48.299423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.185886, 38.277809, 48.104969>,  <30.125210, 38.077045, 47.988297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.185886, 38.277809, 48.104969>,  <30.287012, 38.612415, 48.299423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185886, 38.277809, 48.104969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638092, -0.233532, 0.733691,
		-0.727271, 0.495688, -0.474732,
		-0.252816, -0.836515, -0.486136,
		30.110041, 38.026855, 47.959129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600994, 38.575390, 48.297028>,  <30.287012, 38.612415, 48.299423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600994, 38.575390, 48.297028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.719847, 38.196613, 48.248001>,  <29.791159, 37.969349, 48.218586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.719847, 38.196613, 48.248001>,  <29.600994, 38.575390, 48.297028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719847, 38.196613, 48.248001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562311, -0.277277, 0.779054,
		-0.771699, -0.162563, -0.614861,
		0.297132, -0.946938, -0.122564,
		29.808987, 37.912533, 48.211231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999434, 38.094643, 48.414604>,  <29.600994, 38.575390, 48.297028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999434, 38.094643, 48.414604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.313457, 37.853104, 48.469810>,  <29.501871, 37.708179, 48.502934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.313457, 37.853104, 48.469810>,  <28.999434, 38.094643, 48.414604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313457, 37.853104, 48.469810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303257, -0.180400, 0.935677,
		-0.540108, -0.776417, -0.324746,
		0.785059, -0.603848, 0.138018,
		29.548975, 37.671947, 48.511215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757748, 37.482563, 48.856289>,  <28.999434, 38.094643, 48.414604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757748, 37.482563, 48.856289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.153093, 37.503334, 48.913479>,  <29.390301, 37.515797, 48.947792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.153093, 37.503334, 48.913479>,  <28.757748, 37.482563, 48.856289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153093, 37.503334, 48.913479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142779, -0.007434, 0.989727,
		0.052457, -0.998623, 0.000067,
		0.988364, 0.051928, 0.142973,
		29.449602, 37.518913, 48.956371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184999, 37.139515, 49.210224>,  <28.757748, 37.482563, 48.856289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184999, 37.139515, 49.210224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.806238, 37.266247, 49.232117>,  <27.578981, 37.342285, 49.245251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.806238, 37.266247, 49.232117>,  <28.184999, 37.139515, 49.210224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806238, 37.266247, 49.232117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085642, -0.412617, 0.906870,
		0.309902, 0.854031, 0.417842,
		-0.946904, 0.316825, 0.054730,
		27.522167, 37.361294, 49.248535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507059, 36.664467, 48.775566>,  <28.184999, 37.139515, 49.210224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507059, 36.664467, 48.775566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.152153, 36.629597, 48.594387>,  <27.939209, 36.608677, 48.485680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.152153, 36.629597, 48.594387>,  <28.507059, 36.664467, 48.775566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152153, 36.629597, 48.594387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459598, -0.083710, -0.884173,
		0.039158, -0.992670, 0.114337,
		-0.887263, -0.087172, -0.452951,
		27.885975, 36.603447, 48.458500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678843, 36.187325, 48.243526>,  <28.507059, 36.664467, 48.775566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678843, 36.187325, 48.243526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.334370, 36.327175, 48.095943>,  <28.127686, 36.411087, 48.007393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.334370, 36.327175, 48.095943>,  <28.678843, 36.187325, 48.243526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334370, 36.327175, 48.095943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376993, -0.047540, -0.924995,
		-0.340946, -0.935681, -0.090868,
		-0.861180, 0.349630, -0.368954,
		28.076015, 36.432064, 47.985256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485153, 35.756409, 47.652817>,  <28.678843, 36.187325, 48.243526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485153, 35.756409, 47.652817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242146, 36.067535, 47.588425>,  <28.096340, 36.254211, 47.549789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242146, 36.067535, 47.588425>,  <28.485153, 35.756409, 47.652817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242146, 36.067535, 47.588425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224614, -0.026168, -0.974096,
		-0.761884, -0.627942, -0.158812,
		-0.607520, 0.777820, -0.160982,
		28.059889, 36.300880, 47.540131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111460, 35.516716, 47.082287>,  <28.485153, 35.756409, 47.652817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111460, 35.516716, 47.082287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.060925, 35.913124, 47.064808>,  <28.030603, 36.150970, 47.054321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.060925, 35.913124, 47.064808>,  <28.111460, 35.516716, 47.082287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060925, 35.913124, 47.064808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208742, -0.016505, -0.977832,
		-0.969776, -0.132657, -0.204783,
		-0.126336, 0.991025, -0.043697,
		28.023024, 36.210430, 47.051701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747026, 35.634811, 46.530636>,  <28.111460, 35.516716, 47.082287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747026, 35.634811, 46.530636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.931393, 35.980888, 46.609623>,  <28.042011, 36.188534, 46.657017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.931393, 35.980888, 46.609623>,  <27.747026, 35.634811, 46.530636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931393, 35.980888, 46.609623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392772, 0.000655, -0.919636,
		-0.795794, 0.501433, -0.339523,
		0.460913, 0.865196, 0.197470,
		28.069666, 36.240448, 46.668865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533415, 36.085464, 45.921032>,  <27.747026, 35.634811, 46.530636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533415, 36.085464, 45.921032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861921, 36.242821, 46.086330>,  <28.059025, 36.337234, 46.185509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861921, 36.242821, 46.086330>,  <27.533415, 36.085464, 45.921032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861921, 36.242821, 46.086330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363741, 0.197005, -0.910429,
		-0.439564, 0.898017, 0.018701,
		0.821265, 0.393390, 0.413242,
		28.108301, 36.360836, 46.210304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625021, 36.689449, 45.577351>,  <27.533415, 36.085464, 45.921032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625021, 36.689449, 45.577351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.976984, 36.634396, 45.759262>,  <28.188162, 36.601364, 45.868408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.976984, 36.634396, 45.759262>,  <27.625021, 36.689449, 45.577351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976984, 36.634396, 45.759262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474514, 0.205092, -0.856022,
		0.024547, 0.969017, 0.245772,
		0.879905, -0.137635, 0.454778,
		28.240955, 36.593105, 45.895695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084965, 37.351177, 45.488926>,  <27.625021, 36.689449, 45.577351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084965, 37.351177, 45.488926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.296373, 37.015587, 45.540749>,  <28.423220, 36.814232, 45.571842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.296373, 37.015587, 45.540749>,  <28.084965, 37.351177, 45.488926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296373, 37.015587, 45.540749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575222, 0.241688, -0.781478,
		0.624327, 0.487554, 0.610334,
		0.528523, -0.838974, 0.129560,
		28.454929, 36.763893, 45.579617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735662, 37.550808, 45.384403>,  <28.084965, 37.351177, 45.488926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735662, 37.550808, 45.384403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.783178, 37.157364, 45.330132>,  <28.811687, 36.921299, 45.297569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.783178, 37.157364, 45.330132>,  <28.735662, 37.550808, 45.384403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783178, 37.157364, 45.330132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662516, 0.180296, -0.727026,
		0.739569, -0.003527, 0.673071,
		0.118788, -0.983606, -0.135678,
		28.818815, 36.862282, 45.289429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458242, 37.535473, 45.366169>,  <28.735662, 37.550808, 45.384403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458242, 37.535473, 45.366169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.323631, 37.191578, 45.212494>,  <29.242865, 36.985241, 45.120289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.323631, 37.191578, 45.212494>,  <29.458242, 37.535473, 45.366169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323631, 37.191578, 45.212494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370807, 0.254035, -0.893291,
		0.865594, -0.443075, 0.233308,
		-0.336526, -0.859739, -0.384187,
		29.222673, 36.933655, 45.097237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090031, 37.161083, 45.123447>,  <29.458242, 37.535473, 45.366169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090031, 37.161083, 45.123447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.769289, 37.029663, 44.923817>,  <29.576843, 36.950809, 44.804039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.769289, 37.029663, 44.923817>,  <30.090031, 37.161083, 45.123447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769289, 37.029663, 44.923817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407743, 0.309685, -0.858977,
		0.436778, -0.892271, -0.114356,
		-0.801855, -0.328554, -0.499081,
		29.528732, 36.931099, 44.774094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334238, 36.684902, 44.601402>,  <30.090031, 37.161083, 45.123447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334238, 36.684902, 44.601402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982380, 36.827389, 44.475334>,  <29.771265, 36.912880, 44.399693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982380, 36.827389, 44.475334>,  <30.334238, 36.684902, 44.601402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982380, 36.827389, 44.475334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441077, 0.363010, -0.820777,
		-0.177968, -0.861007, -0.476440,
		-0.879647, 0.356219, -0.315166,
		29.718485, 36.934254, 44.380783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397655, 36.524815, 43.970444>,  <30.334238, 36.684902, 44.601402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397655, 36.524815, 43.970444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071701, 36.755459, 43.946835>,  <29.876129, 36.893845, 43.932671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071701, 36.755459, 43.946835>,  <30.397655, 36.524815, 43.970444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071701, 36.755459, 43.946835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301304, 0.334412, -0.892964,
		-0.495156, -0.745445, -0.446242,
		-0.814884, 0.576611, -0.059019,
		29.827236, 36.928444, 43.929131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131510, 36.560047, 43.318867>,  <30.397655, 36.524815, 43.970444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131510, 36.560047, 43.318867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954533, 36.891773, 43.455379>,  <29.848347, 37.090809, 43.537289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954533, 36.891773, 43.455379>,  <30.131510, 36.560047, 43.318867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954533, 36.891773, 43.455379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295989, 0.494272, -0.817365,
		-0.846543, -0.260622, -0.464157,
		-0.442443, 0.829320, 0.341281,
		29.821800, 37.140568, 43.557762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745831, 36.801754, 42.811897>,  <30.131510, 36.560047, 43.318867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745831, 36.801754, 42.811897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.802776, 37.125725, 43.039497>,  <29.836945, 37.320107, 43.176056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.802776, 37.125725, 43.039497>,  <29.745831, 36.801754, 42.811897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802776, 37.125725, 43.039497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182171, 0.543592, -0.819342,
		-0.972906, 0.220301, -0.070156,
		0.142365, 0.809923, 0.568996,
		29.845486, 37.368702, 43.210197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259586, 37.424076, 42.547825>,  <29.745831, 36.801754, 42.811897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259586, 37.424076, 42.547825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.595291, 37.562180, 42.715839>,  <29.796715, 37.645042, 42.816650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.595291, 37.562180, 42.715839>,  <29.259586, 37.424076, 42.547825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595291, 37.562180, 42.715839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168161, 0.569830, -0.804373,
		-0.517067, 0.745716, 0.420179,
		0.839264, 0.345257, 0.420041,
		29.847071, 37.665756, 42.841850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194586, 38.159943, 42.387550>,  <29.259586, 37.424076, 42.547825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194586, 38.159943, 42.387550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.574055, 38.074303, 42.480656>,  <29.801737, 38.022919, 42.536518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.574055, 38.074303, 42.480656>,  <29.194586, 38.159943, 42.387550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574055, 38.074303, 42.480656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277840, 0.212632, -0.936799,
		0.151079, 0.953387, 0.261204,
		0.948673, -0.214104, 0.232765,
		29.858656, 38.010071, 42.550484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526701, 38.681999, 42.094593>,  <29.194586, 38.159943, 42.387550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526701, 38.681999, 42.094593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.829914, 38.428337, 42.155567>,  <30.011843, 38.276142, 42.192150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.829914, 38.428337, 42.155567>,  <29.526701, 38.681999, 42.094593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829914, 38.428337, 42.155567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336003, 0.179391, -0.924619,
		0.559005, 0.752110, 0.349062,
		0.758034, -0.634153, 0.152431,
		30.057323, 38.238091, 42.201298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073643, 38.954819, 41.857651>,  <29.526701, 38.681999, 42.094593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073643, 38.954819, 41.857651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.240776, 38.591511, 41.866272>,  <30.341057, 38.373528, 41.871445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.240776, 38.591511, 41.866272>,  <30.073643, 38.954819, 41.857651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240776, 38.591511, 41.866272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489350, 0.205007, -0.847649,
		0.765474, 0.364722, 0.530120,
		0.417835, -0.908267, 0.021550,
		30.366127, 38.319031, 41.872738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758177, 39.086018, 41.693542>,  <30.073643, 38.954819, 41.857651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758177, 39.086018, 41.693542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694605, 38.701336, 41.604225>,  <30.656462, 38.470528, 41.550636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694605, 38.701336, 41.604225>,  <30.758177, 39.086018, 41.693542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694605, 38.701336, 41.604225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428628, 0.136530, -0.893106,
		0.889393, -0.237651, 0.390516,
		-0.158930, -0.961708, -0.223292,
		30.646925, 38.412823, 41.537239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.397358, 36.342327, 41.909981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042431, 36.277294, 42.082600>,  <43.829475, 36.238274, 42.186172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042431, 36.277294, 42.082600>,  <44.397358, 36.342327, 41.909981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042431, 36.277294, 42.082600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441732, 0.030899, -0.896615,
		0.132448, -0.986210, -0.099239,
		-0.887316, -0.162592, 0.431548,
		43.776237, 36.228519, 42.212063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115578, 35.882828, 41.482464>,  <44.397358, 36.342327, 41.909981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115578, 35.882828, 41.482464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824703, 36.085720, 41.667465>,  <43.650177, 36.207455, 41.778465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824703, 36.085720, 41.667465>,  <44.115578, 35.882828, 41.482464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824703, 36.085720, 41.667465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321767, 0.343292, -0.882393,
		-0.606350, -0.790487, -0.086429,
		-0.727190, 0.507229, 0.462507,
		43.606544, 36.237888, 41.806217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536835, 35.823097, 41.089199>,  <44.115578, 35.882828, 41.482464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536835, 35.823097, 41.089199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466698, 36.152481, 41.305038>,  <43.424614, 36.350113, 41.434544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466698, 36.152481, 41.305038>,  <43.536835, 35.823097, 41.089199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466698, 36.152481, 41.305038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340972, 0.463376, -0.817937,
		-0.923576, -0.327410, 0.199526,
		-0.175345, 0.823459, 0.539601,
		43.414093, 36.399517, 41.466919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828800, 36.036350, 40.899345>,  <43.536835, 35.823097, 41.089199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828800, 36.036350, 40.899345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008423, 36.365562, 41.038467>,  <43.116196, 36.563091, 41.121941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008423, 36.365562, 41.038467>,  <42.828800, 36.036350, 40.899345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008423, 36.365562, 41.038467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298576, 0.505109, -0.809764,
		-0.842140, 0.259785, 0.472560,
		0.449059, 0.823029, 0.347806,
		43.143139, 36.612473, 41.142811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330521, 36.622833, 40.775818>,  <42.828800, 36.036350, 40.899345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330521, 36.622833, 40.775818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690674, 36.787060, 40.833439>,  <42.906765, 36.885597, 40.868011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690674, 36.787060, 40.833439>,  <42.330521, 36.622833, 40.775818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690674, 36.787060, 40.833439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148056, 0.600416, -0.785863,
		-0.409141, 0.686247, 0.601389,
		0.900379, 0.410568, 0.144052,
		42.960789, 36.910229, 40.876656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209015, 37.300564, 40.566956>,  <42.330521, 36.622833, 40.775818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209015, 37.300564, 40.566956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608685, 37.308651, 40.581108>,  <42.848484, 37.313503, 40.589600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608685, 37.308651, 40.581108>,  <42.209015, 37.300564, 40.566956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608685, 37.308651, 40.581108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016519, 0.592725, -0.805235,
		-0.037252, 0.805151, 0.591899,
		0.999169, 0.020219, 0.035381,
		42.908436, 37.314716, 40.591721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452755, 38.049706, 40.239418>,  <42.209015, 37.300564, 40.566956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452755, 38.049706, 40.239418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.794891, 37.843620, 40.261124>,  <43.000175, 37.719971, 40.274147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.794891, 37.843620, 40.261124>,  <42.452755, 38.049706, 40.239418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794891, 37.843620, 40.261124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312301, 0.429214, -0.847493,
		0.413348, 0.741844, 0.528026,
		0.855343, -0.515212, 0.054264,
		43.051495, 37.689056, 40.277401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051945, 38.568157, 40.186859>,  <42.452755, 38.049706, 40.239418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051945, 38.568157, 40.186859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189262, 38.208832, 40.077183>,  <43.271652, 37.993237, 40.011375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189262, 38.208832, 40.077183>,  <43.051945, 38.568157, 40.186859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189262, 38.208832, 40.077183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290288, 0.379123, -0.878635,
		0.893243, 0.222033, 0.390919,
		0.343292, -0.898314, -0.274195,
		43.292252, 37.939339, 39.994923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714157, 38.624611, 39.953369>,  <43.051945, 38.568157, 40.186859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714157, 38.624611, 39.953369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593964, 38.271553, 39.808792>,  <43.521847, 38.059719, 39.722046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593964, 38.271553, 39.808792>,  <43.714157, 38.624611, 39.953369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593964, 38.271553, 39.808792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488290, 0.183169, -0.853242,
		0.819316, -0.432879, 0.375948,
		-0.300488, -0.882647, -0.361444,
		43.503819, 38.006760, 39.700359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272491, 38.253242, 39.763470>,  <43.714157, 38.624611, 39.953369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272491, 38.253242, 39.763470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973671, 38.114330, 39.536732>,  <43.794380, 38.030983, 39.400688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973671, 38.114330, 39.536732>,  <44.272491, 38.253242, 39.763470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973671, 38.114330, 39.536732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528841, 0.206203, -0.823290,
		0.402799, -0.914809, 0.029613,
		-0.747047, -0.347281, -0.566848,
		43.749557, 38.010147, 39.366676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612999, 37.915226, 39.205296>,  <44.272491, 38.253242, 39.763470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612999, 37.915226, 39.205296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240017, 37.955151, 39.066406>,  <44.016228, 37.979107, 38.983074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240017, 37.955151, 39.066406>,  <44.612999, 37.915226, 39.205296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240017, 37.955151, 39.066406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358159, 0.129263, -0.924670,
		-0.047414, -0.986574, -0.156282,
		-0.932456, 0.099816, -0.347221,
		43.960281, 37.985096, 38.962238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550407, 37.486706, 38.580540>,  <44.612999, 37.915226, 39.205296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550407, 37.486706, 38.580540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264061, 37.765282, 38.560520>,  <44.092255, 37.932426, 38.548508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264061, 37.765282, 38.560520>,  <44.550407, 37.486706, 38.580540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264061, 37.765282, 38.560520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224926, 0.162158, -0.960788,
		-0.661019, -0.699051, -0.272731,
		-0.715865, 0.696443, -0.050045,
		44.049301, 37.974213, 38.545506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351231, 37.409740, 37.890434>,  <44.550407, 37.486706, 38.580540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351231, 37.409740, 37.890434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169205, 37.750183, 37.995152>,  <44.059990, 37.954449, 38.057983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169205, 37.750183, 37.995152>,  <44.351231, 37.409740, 37.890434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169205, 37.750183, 37.995152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295659, 0.421742, -0.857158,
		-0.839939, -0.312663, -0.443558,
		-0.455069, 0.851102, 0.261796,
		44.032684, 38.005512, 38.073689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946430, 37.566505, 37.332741>,  <44.351231, 37.409740, 37.890434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946430, 37.566505, 37.332741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.019287, 37.903095, 37.536209>,  <44.063004, 38.105049, 37.658291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.019287, 37.903095, 37.536209>,  <43.946430, 37.566505, 37.332741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019287, 37.903095, 37.536209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281492, 0.451045, -0.846948,
		-0.942117, 0.297453, -0.154713,
		0.182145, 0.841475, 0.508668,
		44.073929, 38.155537, 37.688808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581753, 38.177395, 37.054962>,  <43.946430, 37.566505, 37.332741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581753, 38.177395, 37.054962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893387, 38.331329, 37.252926>,  <44.080368, 38.423691, 37.371704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893387, 38.331329, 37.252926>,  <43.581753, 38.177395, 37.054962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893387, 38.331329, 37.252926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271488, 0.504461, -0.819642,
		-0.565086, 0.772931, 0.288540,
		0.779084, 0.384833, 0.494906,
		44.127113, 38.446777, 37.401398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542328, 38.928371, 36.942234>,  <43.581753, 38.177395, 37.054962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542328, 38.928371, 36.942234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919708, 38.845909, 37.046085>,  <44.146137, 38.796432, 37.108395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919708, 38.845909, 37.046085>,  <43.542328, 38.928371, 36.942234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919708, 38.845909, 37.046085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322280, 0.386707, -0.864056,
		0.077732, 0.898864, 0.431278,
		0.943448, -0.206157, 0.259627,
		44.202744, 38.784061, 37.123974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893326, 39.373589, 36.563683>,  <43.542328, 38.928371, 36.942234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893326, 39.373589, 36.563683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201584, 39.159775, 36.702465>,  <44.386539, 39.031487, 36.785736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.201584, 39.159775, 36.702465>,  <43.893326, 39.373589, 36.563683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201584, 39.159775, 36.702465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543909, 0.268026, -0.795189,
		0.332060, 0.801523, 0.497290,
		0.770649, -0.534531, 0.346955,
		44.432777, 38.999416, 36.806553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473415, 39.847820, 36.550777>,  <43.893326, 39.373589, 36.563683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473415, 39.847820, 36.550777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604950, 39.471779, 36.514824>,  <44.683872, 39.246155, 36.493252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604950, 39.471779, 36.514824>,  <44.473415, 39.847820, 36.550777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604950, 39.471779, 36.514824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541454, 0.265657, -0.797655,
		0.773754, 0.213631, 0.596378,
		0.328836, -0.940100, -0.089882,
		44.703602, 39.189751, 36.487858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194832, 39.977837, 36.354073>,  <44.473415, 39.847820, 36.550777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194832, 39.977837, 36.354073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.090412, 39.606106, 36.249607>,  <45.027760, 39.383068, 36.186928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.090412, 39.606106, 36.249607>,  <45.194832, 39.977837, 36.354073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090412, 39.606106, 36.249607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422949, 0.133087, -0.896327,
		0.867737, -0.344447, 0.358314,
		-0.261050, -0.929324, -0.261168,
		45.012096, 39.327309, 36.171257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797951, 39.688877, 35.954365>,  <45.194832, 39.977837, 36.354073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797951, 39.688877, 35.954365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481628, 39.475544, 35.834240>,  <45.291836, 39.347546, 35.762165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.481628, 39.475544, 35.834240>,  <45.797951, 39.688877, 35.954365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481628, 39.475544, 35.834240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337308, 0.029669, -0.940927,
		0.510738, -0.845385, 0.156435,
		-0.790804, -0.533333, -0.300309,
		45.244389, 39.315544, 35.744148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117588, 39.185440, 35.544319>,  <45.797951, 39.688877, 35.954365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117588, 39.185440, 35.544319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.736481, 39.183266, 35.422863>,  <45.507816, 39.181961, 35.349987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.736481, 39.183266, 35.422863>,  <46.117588, 39.185440, 35.544319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736481, 39.183266, 35.422863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303681, -0.025173, -0.952441,
		-0.002455, -0.999668, 0.025638,
		-0.952770, -0.005448, -0.303642,
		45.450649, 39.181633, 35.331772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888504, 38.583935, 35.120380>,  <46.117588, 39.185440, 35.544319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888504, 38.583935, 35.120380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.608608, 38.859299, 35.043995>,  <45.440670, 39.024517, 34.998165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.608608, 38.859299, 35.043995>,  <45.888504, 38.583935, 35.120380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608608, 38.859299, 35.043995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013742, -0.280227, -0.959835,
		-0.714270, -0.669006, 0.205545,
		-0.699735, 0.688407, -0.190964,
		45.398689, 39.065819, 34.986706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.611984, 38.392391, 35.525597>,  <45.888504, 38.583935, 35.120380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.611984, 38.392391, 35.525597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.800491, 38.040237, 35.504288>,  <46.913597, 37.828945, 35.491501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.800491, 38.040237, 35.504288>,  <46.611984, 38.392391, 35.525597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.800491, 38.040237, 35.504288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696385, -0.408479, 0.590079,
		-0.541255, -0.240986, -0.805586,
		0.471266, -0.880381, -0.053273,
		46.941872, 37.776123, 35.488308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083538, 37.958225, 35.546242>,  <46.611984, 38.392391, 35.525597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083538, 37.958225, 35.546242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.414104, 37.752743, 35.638454>,  <46.612442, 37.629452, 35.693783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.414104, 37.752743, 35.638454>,  <46.083538, 37.958225, 35.546242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414104, 37.752743, 35.638454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530030, -0.571567, 0.626402,
		-0.190026, -0.639854, -0.744632,
		0.826413, -0.513710, 0.230529,
		46.662029, 37.598629, 35.707615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962734, 37.253757, 35.501041>,  <46.083538, 37.958225, 35.546242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962734, 37.253757, 35.501041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260502, 37.243885, 35.767944>,  <46.439163, 37.237961, 35.928085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260502, 37.243885, 35.767944>,  <45.962734, 37.253757, 35.501041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260502, 37.243885, 35.767944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602463, -0.455691, 0.655274,
		0.287893, -0.889796, -0.354092,
		0.744416, -0.024678, 0.667260,
		46.483826, 37.236481, 35.968121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021957, 36.494797, 35.780449>,  <45.962734, 37.253757, 35.501041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021957, 36.494797, 35.780449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.190311, 36.740112, 36.047802>,  <46.291325, 36.887302, 36.208214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.190311, 36.740112, 36.047802>,  <46.021957, 36.494797, 35.780449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190311, 36.740112, 36.047802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481135, -0.473711, 0.737636,
		0.769002, -0.632043, 0.095695,
		0.420886, 0.613285, 0.668383,
		46.316578, 36.924099, 36.248318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239056, 36.006405, 36.156681>,  <46.021957, 36.494797, 35.780449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239056, 36.006405, 36.156681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.234764, 36.354328, 36.353989>,  <46.232189, 36.563084, 36.472374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.234764, 36.354328, 36.353989>,  <46.239056, 36.006405, 36.156681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234764, 36.354328, 36.353989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397138, -0.456428, 0.796213,
		0.917696, -0.187357, 0.350330,
		-0.010724, 0.869811, 0.493269,
		46.231548, 36.615273, 36.501968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499767, 35.787533, 36.770863>,  <46.239056, 36.006405, 36.156681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499767, 35.787533, 36.770863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308830, 36.134239, 36.828629>,  <46.194267, 36.342262, 36.863289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308830, 36.134239, 36.828629>,  <46.499767, 35.787533, 36.770863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308830, 36.134239, 36.828629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344440, -0.335759, 0.876713,
		0.808397, 0.368750, 0.458822,
		-0.477342, 0.866769, 0.144414,
		46.165627, 36.394272, 36.871952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.744492, 36.008671, 37.427921>,  <46.499767, 35.787533, 36.770863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.744492, 36.008671, 37.427921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.404293, 36.206116, 37.355263>,  <46.200172, 36.324581, 37.311668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.404293, 36.206116, 37.355263>,  <46.744492, 36.008671, 37.427921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.404293, 36.206116, 37.355263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350707, -0.274830, 0.895250,
		0.391986, 0.825115, 0.406857,
		-0.850501, 0.493613, -0.181644,
		46.149143, 36.354198, 37.300770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591038, 36.376724, 38.127712>,  <46.744492, 36.008671, 37.427921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591038, 36.376724, 38.127712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.241039, 36.391373, 37.934616>,  <46.031040, 36.400162, 37.818760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.241039, 36.391373, 37.934616>,  <46.591038, 36.376724, 38.127712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241039, 36.391373, 37.934616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459586, -0.376266, 0.804490,
		-0.152173, 0.925787, 0.346065,
		-0.874999, 0.036626, -0.482737,
		45.978539, 36.402359, 37.789795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981667, 36.687290, 38.589428>,  <46.591038, 36.376724, 38.127712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981667, 36.687290, 38.589428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.820435, 36.480515, 38.287354>,  <45.723698, 36.356449, 38.106110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.820435, 36.480515, 38.287354>,  <45.981667, 36.687290, 38.589428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820435, 36.480515, 38.287354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552925, -0.519993, 0.651062,
		-0.729248, 0.679990, -0.076229,
		-0.403077, -0.516935, -0.755187,
		45.699512, 36.325436, 38.060799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186985, 36.721035, 38.772129>,  <45.981667, 36.687290, 38.589428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186985, 36.721035, 38.772129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.237698, 36.438793, 38.493259>,  <45.268124, 36.269447, 38.325939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.237698, 36.438793, 38.493259>,  <45.186985, 36.721035, 38.772129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237698, 36.438793, 38.493259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546986, -0.636053, 0.544282,
		-0.827486, 0.312340, -0.466594,
		0.126777, -0.705606, -0.697171,
		45.275730, 36.227112, 38.284107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489040, 36.393753, 38.670853>,  <45.186985, 36.721035, 38.772129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489040, 36.393753, 38.670853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778755, 36.134960, 38.575497>,  <44.952583, 35.979687, 38.518284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778755, 36.134960, 38.575497>,  <44.489040, 36.393753, 38.670853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778755, 36.134960, 38.575497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404604, -0.678760, 0.612846,
		-0.558307, -0.347422, -0.753386,
		0.724285, -0.646980, -0.238389,
		44.996040, 35.940865, 38.503979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168697, 35.726200, 38.704838>,  <44.489040, 36.393753, 38.670853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168697, 35.726200, 38.704838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552597, 35.613979, 38.710072>,  <44.782936, 35.546646, 38.713211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552597, 35.613979, 38.710072>,  <44.168697, 35.726200, 38.704838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552597, 35.613979, 38.710072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216896, -0.710776, 0.669144,
		-0.178435, -0.645047, -0.743018,
		0.959748, -0.280556, 0.013081,
		44.840523, 35.529812, 38.713997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199417, 35.021725, 38.588844>,  <44.168697, 35.726200, 38.704838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199417, 35.021725, 38.588844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553604, 35.101662, 38.756657>,  <44.766117, 35.149624, 38.857346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553604, 35.101662, 38.756657>,  <44.199417, 35.021725, 38.588844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553604, 35.101662, 38.756657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092223, -0.809280, 0.580138,
		0.455453, -0.552386, -0.698164,
		0.885470, 0.199839, 0.419532,
		44.819244, 35.161613, 38.882515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607990, 34.433651, 38.574020>,  <44.199417, 35.021725, 38.588844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607990, 34.433651, 38.574020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748466, 34.638138, 38.887791>,  <44.832752, 34.760830, 39.076054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748466, 34.638138, 38.887791>,  <44.607990, 34.433651, 38.574020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748466, 34.638138, 38.887791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078707, -0.818708, 0.568790,
		0.932990, -0.261493, -0.247286,
		0.351190, 0.511213, 0.784428,
		44.853825, 34.791500, 39.123119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980804, 33.956863, 38.916836>,  <44.607990, 34.433651, 38.574020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980804, 33.956863, 38.916836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937824, 34.250347, 39.185200>,  <44.912037, 34.426437, 39.346218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937824, 34.250347, 39.185200>,  <44.980804, 33.956863, 38.916836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937824, 34.250347, 39.185200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021608, -0.672938, 0.739383,
		0.993976, 0.093943, 0.056452,
		-0.107449, 0.733709, 0.670914,
		44.905590, 34.470459, 39.386475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506264, 33.861500, 39.407909>,  <44.980804, 33.956863, 38.916836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506264, 33.861500, 39.407909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.223721, 34.072250, 39.596992>,  <45.054195, 34.198700, 39.710442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.223721, 34.072250, 39.596992>,  <45.506264, 33.861500, 39.407909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223721, 34.072250, 39.596992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013083, -0.657980, 0.752922,
		0.707730, 0.538020, 0.457879,
		-0.706362, 0.526875, 0.472711,
		45.011810, 34.230312, 39.738808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781040, 33.917477, 40.044907>,  <45.506264, 33.861500, 39.407909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781040, 33.917477, 40.044907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.390820, 33.985554, 40.100521>,  <45.156689, 34.026402, 40.133888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.390820, 33.985554, 40.100521>,  <45.781040, 33.917477, 40.044907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390820, 33.985554, 40.100521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082085, -0.869059, 0.487850,
		0.203861, 0.464511, 0.861783,
		-0.975552, 0.170193, 0.139038,
		45.098152, 34.036613, 40.142231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738052, 33.663918, 40.654408>,  <45.781040, 33.917477, 40.044907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738052, 33.663918, 40.654408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.346939, 33.724426, 40.596375>,  <45.112270, 33.760731, 40.561554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.346939, 33.724426, 40.596375>,  <45.738052, 33.663918, 40.654408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346939, 33.724426, 40.596375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204195, -0.531323, 0.822192,
		0.047293, 0.833554, 0.550410,
		-0.977787, 0.151275, -0.145080,
		45.053604, 33.769810, 40.552849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470448, 33.982143, 41.244064>,  <45.738052, 33.663918, 40.654408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470448, 33.982143, 41.244064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.157822, 33.802258, 41.071129>,  <44.970245, 33.694324, 40.967369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.157822, 33.802258, 41.071129>,  <45.470448, 33.982143, 41.244064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157822, 33.802258, 41.071129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242937, -0.418912, 0.874925,
		-0.574576, 0.788841, 0.218155,
		-0.781565, -0.449714, -0.432335,
		44.923351, 33.667343, 40.941429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779713, 34.094467, 41.696995>,  <45.470448, 33.982143, 41.244064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779713, 34.094467, 41.696995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785084, 33.763046, 41.473095>,  <44.788307, 33.564194, 41.338757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785084, 33.763046, 41.473095>,  <44.779713, 34.094467, 41.696995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785084, 33.763046, 41.473095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040106, -0.558900, 0.828265,
		-0.999105, -0.033568, 0.025727,
		0.013424, -0.828555, -0.559746,
		44.789112, 33.514481, 41.305172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.192593, 39.314045, 40.427845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987427, 38.984661, 40.330833>,  <36.864326, 38.787029, 40.272625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987427, 38.984661, 40.330833>,  <37.192593, 39.314045, 40.427845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987427, 38.984661, 40.330833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531194, -0.082519, -0.843222,
		0.674350, -0.561335, 0.479745,
		-0.512918, -0.823464, -0.242531,
		36.833549, 38.737621, 40.258076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781105, 38.880825, 40.321354>,  <37.192593, 39.314045, 40.427845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781105, 38.880825, 40.321354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434669, 38.763203, 40.159649>,  <37.226810, 38.692631, 40.062626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434669, 38.763203, 40.159649>,  <37.781105, 38.880825, 40.321354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434669, 38.763203, 40.159649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495216, -0.394295, -0.774140,
		0.068244, -0.870667, 0.487115,
		-0.866085, -0.294057, -0.404260,
		37.174843, 38.674984, 40.038372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997395, 38.276119, 40.117737>,  <37.781105, 38.880825, 40.321354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997395, 38.276119, 40.117737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656010, 38.349464, 39.922604>,  <37.451180, 38.393471, 39.805523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656010, 38.349464, 39.922604>,  <37.997395, 38.276119, 40.117737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656010, 38.349464, 39.922604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411993, -0.335882, -0.847021,
		-0.319153, -0.923887, 0.211126,
		-0.853465, 0.183347, -0.487833,
		37.399971, 38.404472, 39.776253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057888, 37.769756, 39.559566>,  <37.997395, 38.276119, 40.117737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057888, 37.769756, 39.559566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784679, 38.045963, 39.464348>,  <37.620754, 38.211685, 39.407215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784679, 38.045963, 39.464348>,  <38.057888, 37.769756, 39.559566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784679, 38.045963, 39.464348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221170, -0.115086, -0.968421,
		-0.696104, -0.714105, -0.074114,
		-0.683025, 0.690513, -0.238050,
		37.579773, 38.253117, 39.392933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777050, 37.429619, 38.962017>,  <38.057888, 37.769756, 39.559566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777050, 37.429619, 38.962017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704197, 37.822712, 38.975121>,  <37.660484, 38.058567, 38.982983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704197, 37.822712, 38.975121>,  <37.777050, 37.429619, 38.962017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704197, 37.822712, 38.975121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400508, 0.104569, -0.910307,
		-0.898010, -0.152674, -0.412635,
		-0.182129, 0.982729, 0.032757,
		37.649559, 38.117531, 38.984947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349888, 37.612495, 38.368114>,  <37.777050, 37.429619, 38.962017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349888, 37.612495, 38.368114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504078, 37.970264, 38.458817>,  <37.596592, 38.184925, 38.513237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504078, 37.970264, 38.458817>,  <37.349888, 37.612495, 38.368114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504078, 37.970264, 38.458817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370186, 0.075194, -0.925909,
		-0.845204, 0.440858, -0.302117,
		0.385477, 0.894422, 0.226753,
		37.619720, 38.238590, 38.526844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077045, 38.007397, 37.877365>,  <37.349888, 37.612495, 38.368114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077045, 38.007397, 37.877365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400463, 38.199432, 38.013470>,  <37.594513, 38.314655, 38.095131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400463, 38.199432, 38.013470>,  <37.077045, 38.007397, 37.877365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400463, 38.199432, 38.013470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347335, 0.077382, -0.934543,
		-0.474996, 0.873799, -0.104186,
		0.808540, 0.480091, 0.340257,
		37.643024, 38.343460, 38.115547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105701, 38.711708, 37.592865>,  <37.077045, 38.007397, 37.877365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105701, 38.711708, 37.592865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487961, 38.645237, 37.690128>,  <37.717316, 38.605354, 37.748486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487961, 38.645237, 37.690128>,  <37.105701, 38.711708, 37.592865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487961, 38.645237, 37.690128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270317, 0.167120, -0.948156,
		0.116924, 0.971831, 0.204628,
		0.955645, -0.166176, 0.243162,
		37.774654, 38.595383, 37.763077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462940, 39.097366, 37.187904>,  <37.105701, 38.711708, 37.592865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462940, 39.097366, 37.187904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746037, 38.832283, 37.285812>,  <37.915894, 38.673233, 37.344559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746037, 38.832283, 37.285812>,  <37.462940, 39.097366, 37.187904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746037, 38.832283, 37.285812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444330, 0.148191, -0.883522,
		0.549246, 0.734067, 0.399343,
		0.707743, -0.662710, 0.244775,
		37.958359, 38.633469, 37.359245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181602, 39.369358, 37.018894>,  <37.462940, 39.097366, 37.187904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181602, 39.369358, 37.018894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223221, 38.972137, 37.040863>,  <38.248192, 38.733803, 37.054043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223221, 38.972137, 37.040863>,  <38.181602, 39.369358, 37.018894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223221, 38.972137, 37.040863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520336, 0.007289, -0.853931,
		0.847600, 0.117422, 0.517481,
		0.104042, -0.993055, 0.054921,
		38.254433, 38.674221, 37.057339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873646, 39.240929, 36.755505>,  <38.181602, 39.369358, 37.018894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873646, 39.240929, 36.755505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707912, 38.876995, 36.746262>,  <38.608471, 38.658634, 36.740715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707912, 38.876995, 36.746262>,  <38.873646, 39.240929, 36.755505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707912, 38.876995, 36.746262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488862, -0.201069, -0.848873,
		0.767684, -0.363016, 0.528092,
		-0.414337, -0.909830, -0.023107,
		38.583611, 38.604046, 36.739330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415718, 38.798870, 36.492508>,  <38.873646, 39.240929, 36.755505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415718, 38.798870, 36.492508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068180, 38.610477, 36.431465>,  <38.859657, 38.497440, 36.394840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068180, 38.610477, 36.431465>,  <39.415718, 38.798870, 36.492508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068180, 38.610477, 36.431465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294105, -0.243038, -0.924356,
		0.398264, -0.848003, 0.349680,
		-0.868843, -0.470980, -0.152609,
		38.807526, 38.469185, 36.385681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487064, 38.109344, 36.321426>,  <39.415718, 38.798870, 36.492508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487064, 38.109344, 36.321426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147072, 38.233852, 36.151424>,  <38.943077, 38.308559, 36.049423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147072, 38.233852, 36.151424>,  <39.487064, 38.109344, 36.321426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147072, 38.233852, 36.151424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361981, -0.241051, -0.900480,
		-0.382746, -0.919240, 0.092214,
		-0.849985, 0.311276, -0.425009,
		38.892075, 38.327236, 36.023922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089218, 38.184731, 36.703426>,  <39.487064, 38.109344, 36.321426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089218, 38.184731, 36.703426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696068, 38.204338, 36.774483>,  <39.460178, 38.216103, 36.817116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696068, 38.204338, 36.774483>,  <40.089218, 38.184731, 36.703426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696068, 38.204338, 36.774483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184238, -0.282228, -0.941490,
		0.003988, -0.958094, 0.286425,
		-0.982874, 0.049015, 0.177642,
		39.401207, 38.219044, 36.827774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682926, 37.885387, 37.065979>,  <40.089218, 38.184731, 36.703426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682926, 37.885387, 37.065979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001236, 37.644867, 37.094753>,  <41.192223, 37.500553, 37.112019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001236, 37.644867, 37.094753>,  <40.682926, 37.885387, 37.065979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001236, 37.644867, 37.094753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575097, -0.713130, 0.400886,
		-0.189753, -0.360386, -0.913299,
		0.795775, -0.601305, 0.071938,
		41.239967, 37.464474, 37.116333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560364, 37.216526, 36.740196>,  <40.682926, 37.885387, 37.065979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560364, 37.216526, 36.740196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784729, 37.243790, 37.070221>,  <40.919346, 37.260147, 37.268238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784729, 37.243790, 37.070221>,  <40.560364, 37.216526, 36.740196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784729, 37.243790, 37.070221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679592, -0.531244, 0.505899,
		0.472793, -0.844472, -0.251660,
		0.560911, 0.068159, 0.825066,
		40.953003, 37.264236, 37.317741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454327, 36.595329, 37.021297>,  <40.560364, 37.216526, 36.740196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454327, 36.595329, 37.021297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595558, 36.821030, 37.319813>,  <40.680298, 36.956451, 37.498924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595558, 36.821030, 37.319813>,  <40.454327, 36.595329, 37.021297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595558, 36.821030, 37.319813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565621, -0.506654, 0.650672,
		0.745257, -0.651857, 0.140265,
		0.353080, 0.564255, 0.746292,
		40.701481, 36.990307, 37.543701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627560, 36.155796, 37.541557>,  <40.454327, 36.595329, 37.021297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627560, 36.155796, 37.541557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591358, 36.509827, 37.724182>,  <40.569637, 36.722244, 37.833755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591358, 36.509827, 37.724182>,  <40.627560, 36.155796, 37.541557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591358, 36.509827, 37.724182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556222, -0.425198, 0.714020,
		0.826091, -0.189324, 0.530783,
		-0.090506, 0.885078, 0.456558,
		40.564205, 36.775349, 37.861149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690823, 36.018616, 38.299191>,  <40.627560, 36.155796, 37.541557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690823, 36.018616, 38.299191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511723, 36.375874, 38.282139>,  <40.404263, 36.590229, 38.271908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511723, 36.375874, 38.282139>,  <40.690823, 36.018616, 38.299191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511723, 36.375874, 38.282139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492703, -0.206656, 0.845303,
		0.746169, 0.399483, 0.532584,
		-0.447746, 0.893144, -0.042626,
		40.377399, 36.643818, 38.269352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794186, 36.288113, 38.915367>,  <40.690823, 36.018616, 38.299191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794186, 36.288113, 38.915367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482506, 36.487915, 38.763927>,  <40.295498, 36.607796, 38.673061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482506, 36.487915, 38.763927>,  <40.794186, 36.288113, 38.915367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482506, 36.487915, 38.763927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508640, -0.150980, 0.847638,
		0.366240, 0.853052, 0.371713,
		-0.779201, 0.499507, -0.378601,
		40.248745, 36.637768, 38.650349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471375, 36.794174, 39.477703>,  <40.794186, 36.288113, 38.915367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471375, 36.794174, 39.477703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170326, 36.747818, 39.218433>,  <39.989697, 36.720005, 39.062870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170326, 36.747818, 39.218433>,  <40.471375, 36.794174, 39.477703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170326, 36.747818, 39.218433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607457, -0.257639, 0.751411,
		-0.254074, 0.959266, 0.123508,
		-0.752623, -0.115889, -0.648173,
		39.944538, 36.713051, 39.023983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886978, 37.069828, 39.791870>,  <40.471375, 36.794174, 39.477703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886978, 37.069828, 39.791870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749279, 36.828449, 39.504162>,  <39.666660, 36.683620, 39.331539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749279, 36.828449, 39.504162>,  <39.886978, 37.069828, 39.791870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749279, 36.828449, 39.504162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780338, -0.242098, 0.576594,
		-0.522077, 0.759763, -0.387550,
		-0.344250, -0.603447, -0.719266,
		39.646004, 36.647415, 39.288383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124008, 37.152416, 39.861408>,  <39.886978, 37.069828, 39.791870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124008, 37.152416, 39.861408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161152, 36.829178, 39.628735>,  <39.183437, 36.635235, 39.489128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161152, 36.829178, 39.628735>,  <39.124008, 37.152416, 39.861408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161152, 36.829178, 39.628735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885244, -0.334424, 0.323271,
		-0.455764, 0.484915, -0.746416,
		0.092860, -0.808095, -0.581687,
		39.189011, 36.586750, 39.454227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584545, 37.247948, 39.451950>,  <39.124008, 37.152416, 39.861408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584545, 37.247948, 39.451950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709824, 36.871178, 39.500431>,  <38.784988, 36.645115, 39.529518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709824, 36.871178, 39.500431>,  <38.584545, 37.247948, 39.451950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709824, 36.871178, 39.500431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776286, -0.180395, 0.604018,
		-0.547074, -0.283262, -0.787701,
		0.313193, -0.941924, 0.121203,
		38.803780, 36.588600, 39.536793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993847, 36.825722, 39.346294>,  <38.584545, 37.247948, 39.451950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993847, 36.825722, 39.346294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239407, 36.580494, 39.545200>,  <38.386742, 36.433357, 39.664543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239407, 36.580494, 39.545200>,  <37.993847, 36.825722, 39.346294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239407, 36.580494, 39.545200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739994, -0.227627, 0.632925,
		-0.274841, -0.756521, -0.593413,
		0.613898, -0.613076, 0.497260,
		38.423576, 36.396572, 39.694378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532337, 36.279091, 39.498260>,  <37.993847, 36.825722, 39.346294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532337, 36.279091, 39.498260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851357, 36.231190, 39.734760>,  <38.042767, 36.202450, 39.876659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851357, 36.231190, 39.734760>,  <37.532337, 36.279091, 39.498260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851357, 36.231190, 39.734760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573811, -0.453051, 0.682265,
		0.186164, -0.883405, -0.430045,
		0.797549, -0.119751, 0.591249,
		38.090622, 36.195263, 39.912136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496754, 35.536022, 39.797306>,  <37.532337, 36.279091, 39.498260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496754, 35.536022, 39.797306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706928, 35.782337, 40.032162>,  <37.833031, 35.930126, 40.173077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706928, 35.782337, 40.032162>,  <37.496754, 35.536022, 39.797306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706928, 35.782337, 40.032162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519093, -0.314758, 0.794651,
		0.674139, -0.722315, 0.154265,
		0.525432, 0.615783, 0.587139,
		37.864559, 35.967072, 40.208305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529625, 35.178429, 40.355217>,  <37.496754, 35.536022, 39.797306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529625, 35.178429, 40.355217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626389, 35.540054, 40.496155>,  <37.684444, 35.757030, 40.580719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626389, 35.540054, 40.496155>,  <37.529625, 35.178429, 40.355217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626389, 35.540054, 40.496155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617714, -0.136547, 0.774458,
		0.748273, -0.404992, 0.525423,
		0.241904, 0.904066, 0.352344,
		37.698959, 35.811275, 40.601856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750614, 34.437618, 40.262245>,  <37.529625, 35.178429, 40.355217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750614, 34.437618, 40.262245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482327, 34.184818, 40.106953>,  <37.321354, 34.033138, 40.013779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482327, 34.184818, 40.106953>,  <37.750614, 34.437618, 40.262245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482327, 34.184818, 40.106953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159049, 0.388697, -0.907534,
		0.724463, -0.670444, -0.160186,
		-0.670714, -0.631997, -0.388230,
		37.281113, 33.995220, 39.990482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085094, 34.152943, 39.680103>,  <37.750614, 34.437618, 40.262245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085094, 34.152943, 39.680103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706551, 34.049423, 39.602722>,  <37.479424, 33.987312, 39.556293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706551, 34.049423, 39.602722>,  <38.085094, 34.152943, 39.680103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706551, 34.049423, 39.602722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159740, 0.145681, -0.976350,
		0.280865, -0.954881, -0.096525,
		-0.946360, -0.258803, -0.193450,
		37.422642, 33.971783, 39.544689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132401, 33.762947, 39.078671>,  <38.085094, 34.152943, 39.680103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132401, 33.762947, 39.078671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744667, 33.855270, 39.112427>,  <37.512028, 33.910664, 39.132679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744667, 33.855270, 39.112427>,  <38.132401, 33.762947, 39.078671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744667, 33.855270, 39.112427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039256, 0.193551, -0.980305,
		-0.242600, -0.953553, -0.178554,
		-0.969332, 0.230813, 0.084388,
		37.453869, 33.924515, 39.137745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729485, 33.357563, 38.630836>,  <38.132401, 33.762947, 39.078671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729485, 33.357563, 38.630836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529354, 33.696941, 38.699909>,  <37.409275, 33.900570, 38.741352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529354, 33.696941, 38.699909>,  <37.729485, 33.357563, 38.630836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529354, 33.696941, 38.699909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156116, 0.107767, -0.981842,
		-0.851648, -0.518197, 0.078538,
		-0.500323, 0.848445, 0.172678,
		37.379257, 33.951473, 38.751713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276806, 33.273724, 38.140903>,  <37.729485, 33.357563, 38.630836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276806, 33.273724, 38.140903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211929, 33.651943, 38.253784>,  <37.173004, 33.878876, 38.321510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211929, 33.651943, 38.253784>,  <37.276806, 33.273724, 38.140903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211929, 33.651943, 38.253784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202533, 0.247998, -0.947353,
		-0.965751, -0.210804, 0.151282,
		-0.162189, 0.945547, 0.282199,
		37.163273, 33.935608, 38.338444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591537, 33.455338, 37.896362>,  <37.276806, 33.273724, 38.140903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591537, 33.455338, 37.896362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764595, 33.813129, 37.941490>,  <36.868431, 34.027805, 37.968567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764595, 33.813129, 37.941490>,  <36.591537, 33.455338, 37.896362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764595, 33.813129, 37.941490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454693, 0.324542, -0.829414,
		-0.778507, 0.307543, 0.547124,
		0.432645, 0.894478, 0.112820,
		36.894390, 34.081474, 37.975338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091682, 33.949924, 37.645714>,  <36.591537, 33.455338, 37.896362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091682, 33.949924, 37.645714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425701, 34.169903, 37.652054>,  <36.626114, 34.301888, 37.655857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425701, 34.169903, 37.652054>,  <36.091682, 33.949924, 37.645714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425701, 34.169903, 37.652054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350333, 0.553725, -0.755418,
		-0.424213, 0.625260, 0.655052,
		0.835051, 0.549944, 0.015848,
		36.676216, 34.334885, 37.656807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843861, 34.664265, 37.640682>,  <36.091682, 33.949924, 37.645714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843861, 34.664265, 37.640682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218037, 34.641743, 37.501095>,  <36.442543, 34.628227, 37.417343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218037, 34.641743, 37.501095>,  <35.843861, 34.664265, 37.640682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218037, 34.641743, 37.501095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264310, 0.544103, -0.796299,
		0.234714, 0.837127, 0.494093,
		0.935441, -0.056309, -0.348969,
		36.498669, 34.624851, 37.396404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073296, 35.425747, 37.563267>,  <35.843861, 34.664265, 37.640682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073296, 35.425747, 37.563267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267906, 35.189644, 37.305618>,  <36.384670, 35.047981, 37.151028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267906, 35.189644, 37.305618>,  <36.073296, 35.425747, 37.563267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267906, 35.189644, 37.305618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126699, 0.681801, -0.720482,
		0.864432, 0.432140, 0.256927,
		0.486523, -0.590255, -0.644123,
		36.413864, 35.012566, 37.112381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491848, 35.865555, 37.206318>,  <36.073296, 35.425747, 37.563267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491848, 35.865555, 37.206318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452850, 35.537743, 36.980450>,  <36.429451, 35.341053, 36.844929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452850, 35.537743, 36.980450>,  <36.491848, 35.865555, 37.206318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452850, 35.537743, 36.980450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268280, 0.568016, -0.778064,
		0.958395, 0.075632, -0.275245,
		-0.097497, -0.819535, -0.564674,
		36.423599, 35.291882, 36.811047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836510, 36.014008, 36.627125>,  <36.491848, 35.865555, 37.206318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836510, 36.014008, 36.627125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586960, 35.729404, 36.497795>,  <36.437229, 35.558643, 36.420197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586960, 35.729404, 36.497795>,  <36.836510, 36.014008, 36.627125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586960, 35.729404, 36.497795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246475, 0.571727, -0.782546,
		0.741641, -0.408518, -0.532054,
		-0.623874, -0.711506, -0.323327,
		36.399799, 35.515953, 36.400799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173073, 35.901997, 35.897099>,  <36.836510, 36.014008, 36.627125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173073, 35.901997, 35.897099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793667, 35.787266, 35.950836>,  <36.566025, 35.718426, 35.983078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793667, 35.787266, 35.950836>,  <37.173073, 35.901997, 35.897099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793667, 35.787266, 35.950836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254498, 0.437682, -0.862361,
		0.188550, -0.852152, -0.488145,
		-0.948515, -0.286829, 0.134346,
		36.509113, 35.701218, 35.991138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.856026, 33.094688, 43.549667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494167, 33.032501, 43.390949>,  <36.277054, 32.995190, 43.295719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494167, 33.032501, 43.390949>,  <36.856026, 33.094688, 43.549667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494167, 33.032501, 43.390949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420912, -0.180251, -0.889012,
		0.066691, -0.971256, 0.228503,
		-0.904647, -0.155469, -0.396792,
		36.222775, 32.985859, 43.271912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958393, 32.568169, 43.039669>,  <36.856026, 33.094688, 43.549667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958393, 32.568169, 43.039669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.621204, 32.759914, 42.942009>,  <36.418892, 32.874962, 42.883411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.621204, 32.759914, 42.942009>,  <36.958393, 32.568169, 43.039669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621204, 32.759914, 42.942009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291679, 0.025926, -0.956165,
		-0.452020, -0.877234, -0.161675,
		-0.842972, 0.479363, -0.244151,
		36.368313, 32.903725, 42.868763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788055, 32.224754, 42.414551>,  <36.958393, 32.568169, 43.039669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788055, 32.224754, 42.414551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.617783, 32.584988, 42.449768>,  <36.515621, 32.801128, 42.470898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.617783, 32.584988, 42.449768>,  <36.788055, 32.224754, 42.414551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617783, 32.584988, 42.449768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250950, 0.210974, -0.944730,
		-0.869381, -0.380056, -0.315807,
		-0.425677, 0.900582, 0.088042,
		36.490078, 32.855164, 42.476181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298668, 32.251446, 41.873089>,  <36.788055, 32.224754, 42.414551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298668, 32.251446, 41.873089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387043, 32.632786, 41.955368>,  <36.440067, 32.861591, 42.004734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387043, 32.632786, 41.955368>,  <36.298668, 32.251446, 41.873089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387043, 32.632786, 41.955368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146821, 0.175993, -0.973381,
		-0.964173, 0.245258, -0.101088,
		0.220939, 0.953349, 0.205697,
		36.453323, 32.918789, 42.017078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924736, 32.605495, 41.423691>,  <36.298668, 32.251446, 41.873089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924736, 32.605495, 41.423691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.205692, 32.859646, 41.552036>,  <36.374264, 33.012135, 41.629044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.205692, 32.859646, 41.552036>,  <35.924736, 32.605495, 41.423691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205692, 32.859646, 41.552036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128814, 0.329870, -0.935197,
		-0.700041, 0.698202, 0.149851,
		0.702388, 0.635373, 0.320861,
		36.416409, 33.050259, 41.648296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706985, 33.288490, 41.322380>,  <35.924736, 32.605495, 41.423691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706985, 33.288490, 41.322380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.106472, 33.293552, 41.342003>,  <36.346165, 33.296589, 41.353779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.106472, 33.293552, 41.342003>,  <35.706985, 33.288490, 41.322380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106472, 33.293552, 41.342003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041465, 0.352313, -0.934963,
		-0.029117, 0.935797, 0.351335,
		0.998716, 0.012655, 0.049061,
		36.406086, 33.297348, 41.356720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914482, 34.036983, 40.979248>,  <35.706985, 33.288490, 41.322380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914482, 34.036983, 40.979248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.261299, 33.842682, 41.023560>,  <36.469391, 33.726101, 41.050148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.261299, 33.842682, 41.023560>,  <35.914482, 34.036983, 40.979248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261299, 33.842682, 41.023560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247655, 0.227256, -0.941818,
		0.432317, 0.844036, 0.317341,
		0.867046, -0.485755, 0.110783,
		36.521412, 33.696957, 41.056793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479935, 34.473160, 40.793537>,  <35.914482, 34.036983, 40.979248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479935, 34.473160, 40.793537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648918, 34.114769, 40.738770>,  <36.750309, 33.899734, 40.705910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648918, 34.114769, 40.738770>,  <36.479935, 34.473160, 40.793537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648918, 34.114769, 40.738770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301989, 0.281575, -0.910779,
		0.854594, 0.343418, 0.389530,
		0.422460, -0.895980, -0.136924,
		36.775658, 33.845974, 40.697693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162033, 34.626259, 40.648560>,  <36.479935, 34.473160, 40.793537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162033, 34.626259, 40.648560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.077339, 34.261017, 40.509182>,  <37.026524, 34.041874, 40.425556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.077339, 34.261017, 40.509182>,  <37.162033, 34.626259, 40.648560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077339, 34.261017, 40.509182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338398, 0.265977, -0.902631,
		0.916873, -0.309029, 0.252676,
		-0.211733, -0.913103, -0.348441,
		37.013821, 33.987087, 40.404648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636478, 34.973679, 41.146564>,  <37.162033, 34.626259, 40.648560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636478, 34.973679, 41.146564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610355, 35.371792, 41.117867>,  <37.594681, 35.610661, 41.100647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610355, 35.371792, 41.117867>,  <37.636478, 34.973679, 41.146564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610355, 35.371792, 41.117867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686674, 0.007341, 0.726928,
		0.724026, 0.096741, 0.682955,
		-0.065310, 0.995282, -0.071745,
		37.590763, 35.670376, 41.096344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679142, 35.222214, 41.854717>,  <37.636478, 34.973679, 41.146564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679142, 35.222214, 41.854717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513657, 35.521271, 41.646923>,  <37.414364, 35.700706, 41.522247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513657, 35.521271, 41.646923>,  <37.679142, 35.222214, 41.854717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513657, 35.521271, 41.646923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495687, 0.293635, 0.817357,
		0.763631, 0.595659, 0.249115,
		-0.413717, 0.747642, -0.519489,
		37.389542, 35.745564, 41.491077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819115, 35.805035, 42.246368>,  <37.679142, 35.222214, 41.854717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819115, 35.805035, 42.246368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.507198, 35.863922, 42.002975>,  <37.320049, 35.899254, 41.856937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.507198, 35.863922, 42.002975>,  <37.819115, 35.805035, 42.246368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507198, 35.863922, 42.002975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565324, 0.251972, 0.785442,
		0.268954, 0.956471, -0.113258,
		-0.779790, 0.147220, -0.608485,
		37.273262, 35.908089, 41.820431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567657, 36.335648, 42.440552>,  <37.819115, 35.805035, 42.246368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567657, 36.335648, 42.440552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.241623, 36.238312, 42.230251>,  <37.046001, 36.179909, 42.104073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.241623, 36.238312, 42.230251>,  <37.567657, 36.335648, 42.440552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241623, 36.238312, 42.230251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579068, 0.314688, 0.752098,
		-0.017567, 0.917474, -0.397409,
		-0.815090, -0.243338, -0.525751,
		36.997097, 36.165310, 42.072525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027180, 36.851257, 42.512695>,  <37.567657, 36.335648, 42.440552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027180, 36.851257, 42.512695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813522, 36.536526, 42.389023>,  <36.685326, 36.347687, 42.314819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813522, 36.536526, 42.389023>,  <37.027180, 36.851257, 42.512695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813522, 36.536526, 42.389023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612620, 0.108237, 0.782932,
		-0.582567, 0.607610, -0.539839,
		-0.534148, -0.786826, -0.309179,
		36.653278, 36.300476, 42.296268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329029, 37.082779, 42.671162>,  <37.027180, 36.851257, 42.512695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329029, 37.082779, 42.671162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.281441, 36.690258, 42.610645>,  <36.252888, 36.454746, 42.574337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.281441, 36.690258, 42.610645>,  <36.329029, 37.082779, 42.671162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281441, 36.690258, 42.610645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725035, -0.018245, 0.688471,
		-0.678360, 0.191596, -0.709309,
		-0.118967, -0.981304, -0.151290,
		36.245750, 36.395866, 42.565258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649296, 37.026054, 42.572464>,  <36.329029, 37.082779, 42.671162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649296, 37.026054, 42.572464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763107, 36.663216, 42.696545>,  <35.831394, 36.445515, 42.770992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.763107, 36.663216, 42.696545>,  <35.649296, 37.026054, 42.572464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763107, 36.663216, 42.696545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566544, 0.101923, 0.817704,
		-0.773351, -0.408401, -0.484909,
		0.284527, -0.907094, 0.310199,
		35.848465, 36.391087, 42.789604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015995, 36.588161, 42.826576>,  <35.649296, 37.026054, 42.572464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015995, 36.588161, 42.826576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335213, 36.429905, 43.008385>,  <35.526745, 36.334949, 43.117470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335213, 36.429905, 43.008385>,  <35.015995, 36.588161, 42.826576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335213, 36.429905, 43.008385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504923, -0.027365, 0.862730,
		-0.328893, -0.917997, -0.221607,
		0.798048, -0.395641, 0.454518,
		35.574627, 36.311214, 43.144741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753201, 36.062710, 43.260078>,  <35.015995, 36.588161, 42.826576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753201, 36.062710, 43.260078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.121464, 36.148125, 43.390797>,  <35.342422, 36.199375, 43.469227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.121464, 36.148125, 43.390797>,  <34.753201, 36.062710, 43.260078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121464, 36.148125, 43.390797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367617, 0.192554, 0.909824,
		0.131360, -0.957770, 0.255778,
		0.920653, 0.213543, 0.326799,
		35.397659, 36.212189, 43.488838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806934, 35.733170, 43.930389>,  <34.753201, 36.062710, 43.260078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806934, 35.733170, 43.930389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122139, 35.979301, 43.938374>,  <35.311264, 36.126980, 43.943165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122139, 35.979301, 43.938374>,  <34.806934, 35.733170, 43.930389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122139, 35.979301, 43.938374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208036, 0.235625, 0.949317,
		0.579444, -0.752227, 0.313687,
		0.788014, 0.615334, 0.019959,
		35.358543, 36.163902, 43.944363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250736, 35.518387, 44.632492>,  <34.806934, 35.733170, 43.930389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250736, 35.518387, 44.632492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361736, 35.889275, 44.531887>,  <35.428337, 36.111809, 44.471523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361736, 35.889275, 44.531887>,  <35.250736, 35.518387, 44.632492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361736, 35.889275, 44.531887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027546, 0.269363, 0.962645,
		0.960331, -0.260206, 0.100289,
		0.277501, 0.927220, -0.251510,
		35.444988, 36.167442, 44.456432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728828, 35.826004, 45.152641>,  <35.250736, 35.518387, 44.632492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728828, 35.826004, 45.152641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559402, 36.141098, 44.973724>,  <35.457748, 36.330154, 44.866375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559402, 36.141098, 44.973724>,  <35.728828, 35.826004, 45.152641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559402, 36.141098, 44.973724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116919, 0.442099, 0.889313,
		0.898291, 0.428974, -0.095155,
		-0.423561, 0.787737, -0.447289,
		35.432335, 36.377419, 44.839539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021519, 36.455040, 45.434673>,  <35.728828, 35.826004, 45.152641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021519, 36.455040, 45.434673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.656982, 36.502918, 45.277122>,  <35.438263, 36.531647, 45.182594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.656982, 36.502918, 45.277122>,  <36.021519, 36.455040, 45.434673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656982, 36.502918, 45.277122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302052, 0.455642, 0.837350,
		0.279693, 0.882079, -0.379089,
		-0.911338, 0.119696, -0.393874,
		35.383579, 36.538826, 45.158962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804821, 37.133301, 45.629299>,  <36.021519, 36.455040, 45.434673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804821, 37.133301, 45.629299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.465065, 36.938511, 45.547913>,  <35.261211, 36.821636, 45.499081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.465065, 36.938511, 45.547913>,  <35.804821, 37.133301, 45.629299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465065, 36.938511, 45.547913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448601, 0.463075, 0.764408,
		-0.278023, 0.740555, -0.611786,
		-0.849388, -0.486970, -0.203468,
		35.210247, 36.792419, 45.486874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.271912, 36.020775, 41.272701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.597082, 35.840103, 41.419746>,  <28.792185, 35.731701, 41.507973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.597082, 35.840103, 41.419746>,  <28.271912, 36.020775, 41.272701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597082, 35.840103, 41.419746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509401, 0.245571, -0.824746,
		0.282244, 0.857719, 0.429716,
		0.812926, -0.451678, 0.367612,
		28.840960, 35.704601, 41.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794390, 36.422729, 41.117260>,  <28.271912, 36.020775, 41.272701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794390, 36.422729, 41.117260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.983276, 36.079113, 41.196308>,  <29.096609, 35.872944, 41.243736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.983276, 36.079113, 41.196308>,  <28.794390, 36.422729, 41.117260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983276, 36.079113, 41.196308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596798, 0.146580, -0.788889,
		0.648725, 0.490465, 0.581894,
		0.472217, -0.859045, 0.197618,
		29.124941, 35.821400, 41.255592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551851, 36.544777, 41.161552>,  <28.794390, 36.422729, 41.117260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551851, 36.544777, 41.161552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.527334, 36.155384, 41.073399>,  <29.512623, 35.921749, 41.020504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.527334, 36.155384, 41.073399>,  <29.551851, 36.544777, 41.161552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527334, 36.155384, 41.073399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624968, 0.134731, -0.768936,
		0.778240, -0.184868, 0.600138,
		-0.061294, -0.973484, -0.220389,
		29.508945, 35.863338, 41.007282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291090, 36.379009, 40.950958>,  <29.551851, 36.544777, 41.161552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291090, 36.379009, 40.950958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.064762, 36.071217, 40.832466>,  <29.928967, 35.886543, 40.761372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.064762, 36.071217, 40.832466>,  <30.291090, 36.379009, 40.950958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064762, 36.071217, 40.832466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628732, -0.170221, -0.758763,
		0.533429, -0.615569, 0.580111,
		-0.565818, -0.769480, -0.296227,
		29.895016, 35.840374, 40.743599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754665, 35.768242, 40.828918>,  <30.291090, 36.379009, 40.950958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754665, 35.768242, 40.828918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.422220, 35.716057, 40.612682>,  <30.222754, 35.684746, 40.482941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.422220, 35.716057, 40.612682>,  <30.754665, 35.768242, 40.828918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422220, 35.716057, 40.612682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554697, -0.263651, -0.789177,
		-0.039571, -0.955755, 0.291488,
		-0.831111, -0.130459, -0.540587,
		30.172888, 35.676918, 40.450504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866482, 35.142990, 40.414028>,  <30.754665, 35.768242, 40.828918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866482, 35.142990, 40.414028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590504, 35.360771, 40.223221>,  <30.424915, 35.491440, 40.108738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590504, 35.360771, 40.223221>,  <30.866482, 35.142990, 40.414028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590504, 35.360771, 40.223221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421357, -0.233763, -0.876250,
		-0.588584, -0.805560, -0.068124,
		-0.689947, 0.544451, -0.477017,
		30.383520, 35.524105, 40.080116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659002, 34.710285, 39.834774>,  <30.866482, 35.142990, 40.414028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659002, 34.710285, 39.834774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.540546, 35.080524, 39.740479>,  <30.469473, 35.302666, 39.683903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.540546, 35.080524, 39.740479>,  <30.659002, 34.710285, 39.834774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540546, 35.080524, 39.740479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309194, -0.140617, -0.940546,
		-0.903714, -0.351422, -0.244546,
		-0.296141, 0.925597, -0.235735,
		30.451704, 35.358204, 39.669758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358385, 34.637356, 39.092762>,  <30.659002, 34.710285, 39.834774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358385, 34.637356, 39.092762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.424728, 35.030174, 39.128723>,  <30.464535, 35.265865, 39.150299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.424728, 35.030174, 39.128723>,  <30.358385, 34.637356, 39.092762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424728, 35.030174, 39.128723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366193, 0.023313, -0.930247,
		-0.915639, 0.187209, -0.355751,
		0.165857, 0.982043, 0.089901,
		30.474485, 35.324787, 39.155693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953760, 35.020088, 38.584053>,  <30.358385, 34.637356, 39.092762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953760, 35.020088, 38.584053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.267181, 35.249611, 38.679379>,  <30.455235, 35.387325, 38.736572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.267181, 35.249611, 38.679379>,  <29.953760, 35.020088, 38.584053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267181, 35.249611, 38.679379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216829, 0.106913, -0.970338,
		-0.582261, 0.811985, -0.040645,
		0.783554, 0.573803, 0.238313,
		30.502247, 35.421753, 38.750874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983088, 35.474777, 38.021847>,  <29.953760, 35.020088, 38.584053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983088, 35.474777, 38.021847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.338308, 35.525593, 38.198586>,  <30.551441, 35.556080, 38.304626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.338308, 35.525593, 38.198586>,  <29.983088, 35.474777, 38.021847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338308, 35.525593, 38.198586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408548, 0.222678, -0.885157,
		-0.210836, 0.966580, 0.145849,
		0.888052, 0.127037, 0.441843,
		30.604725, 35.563705, 38.331139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137423, 36.037598, 37.736057>,  <29.983088, 35.474777, 38.021847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137423, 36.037598, 37.736057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.477085, 35.893059, 37.890129>,  <30.680883, 35.806335, 37.982571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.477085, 35.893059, 37.890129>,  <30.137423, 36.037598, 37.736057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477085, 35.893059, 37.890129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484835, 0.244115, -0.839847,
		0.209451, 0.899908, 0.382486,
		0.849156, -0.361350, 0.385177,
		30.731833, 35.784653, 38.005684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568993, 36.568825, 37.621540>,  <30.137423, 36.037598, 37.736057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568993, 36.568825, 37.621540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.801449, 36.250267, 37.688515>,  <30.940922, 36.059132, 37.728699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.801449, 36.250267, 37.688515>,  <30.568993, 36.568825, 37.621540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801449, 36.250267, 37.688515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504766, 0.191358, -0.841780,
		0.638347, 0.573708, 0.513198,
		0.581140, -0.796393, 0.167435,
		30.975790, 36.011349, 37.738747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213902, 36.837418, 37.726711>,  <30.568993, 36.568825, 37.621540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213902, 36.837418, 37.726711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226412, 36.467213, 37.575741>,  <31.233917, 36.245090, 37.485157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226412, 36.467213, 37.575741>,  <31.213902, 36.837418, 37.726711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226412, 36.467213, 37.575741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468821, 0.347081, -0.812245,
		0.882739, -0.151542, 0.444754,
		0.031276, -0.925511, -0.377428,
		31.235794, 36.189560, 37.462513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844988, 36.851917, 37.389175>,  <31.213902, 36.837418, 37.726711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844988, 36.851917, 37.389175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661129, 36.530483, 37.237926>,  <31.550814, 36.337624, 37.147179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.661129, 36.530483, 37.237926>,  <31.844988, 36.851917, 37.389175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661129, 36.530483, 37.237926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416661, 0.180868, -0.890887,
		0.784294, -0.567042, 0.251687,
		-0.459648, -0.803586, -0.378118,
		31.523235, 36.289406, 37.124493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335175, 36.788345, 37.952492>,  <31.844988, 36.851917, 37.389175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335175, 36.788345, 37.952492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.512543, 37.133389, 38.049885>,  <32.618961, 37.340416, 38.108322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.512543, 37.133389, 38.049885>,  <32.335175, 36.788345, 37.952492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512543, 37.133389, 38.049885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491359, 0.006749, 0.870931,
		0.749631, -0.505823, 0.426844,
		0.443418, 0.862611, 0.243481,
		32.645569, 37.392170, 38.122929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555828, 36.740932, 38.605835>,  <32.335175, 36.788345, 37.952492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555828, 36.740932, 38.605835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539959, 37.137161, 38.553379>,  <32.530437, 37.374897, 38.521904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539959, 37.137161, 38.553379>,  <32.555828, 36.740932, 38.605835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539959, 37.137161, 38.553379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387649, 0.105708, 0.915726,
		0.920953, 0.087167, 0.379799,
		-0.039673, 0.990569, -0.131143,
		32.528057, 37.434334, 38.514038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760036, 37.118752, 39.274113>,  <32.555828, 36.740932, 38.605835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760036, 37.118752, 39.274113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560680, 37.400974, 39.072598>,  <32.441067, 37.570309, 38.951691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560680, 37.400974, 39.072598>,  <32.760036, 37.118752, 39.274113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560680, 37.400974, 39.072598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461849, 0.275698, 0.843022,
		0.733690, 0.652828, 0.188453,
		-0.498392, 0.705554, -0.503785,
		32.411163, 37.612640, 38.921463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789894, 37.757507, 39.714760>,  <32.760036, 37.118752, 39.274113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789894, 37.757507, 39.714760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475136, 37.800861, 39.471764>,  <32.286282, 37.826874, 39.325966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475136, 37.800861, 39.471764>,  <32.789894, 37.757507, 39.714760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475136, 37.800861, 39.471764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521963, 0.408212, 0.748944,
		0.329162, 0.906430, -0.264646,
		-0.786897, 0.108388, -0.607491,
		32.239067, 37.833378, 39.289516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546387, 38.393692, 39.891087>,  <32.789894, 37.757507, 39.714760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546387, 38.393692, 39.891087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239727, 38.222923, 39.699261>,  <32.055729, 38.120464, 39.584164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239727, 38.222923, 39.699261>,  <32.546387, 38.393692, 39.891087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239727, 38.222923, 39.699261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605778, 0.233419, 0.760624,
		-0.212785, 0.873645, -0.437569,
		-0.766652, -0.426919, -0.479567,
		32.009731, 38.094849, 39.555389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994715, 38.959316, 39.918480>,  <32.546387, 38.393692, 39.891087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994715, 38.959316, 39.918480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.804649, 38.612984, 39.855797>,  <31.690611, 38.405186, 39.818188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.804649, 38.612984, 39.855797>,  <31.994715, 38.959316, 39.918480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804649, 38.612984, 39.855797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546384, 0.150741, 0.823857,
		-0.689699, 0.477089, -0.544703,
		-0.475162, -0.865831, -0.156708,
		31.662100, 38.353233, 39.808784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212650, 39.052933, 39.828106>,  <31.994715, 38.959316, 39.918480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212650, 39.052933, 39.828106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.279327, 38.678349, 39.951557>,  <31.319334, 38.453598, 40.025627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.279327, 38.678349, 39.951557>,  <31.212650, 39.052933, 39.828106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279327, 38.678349, 39.951557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693845, 0.110990, 0.711519,
		-0.700566, -0.332745, -0.631259,
		0.166692, -0.936463, 0.308629,
		31.329334, 38.397411, 40.044147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500505, 38.914608, 40.100582>,  <31.212650, 39.052933, 39.828106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500505, 38.914608, 40.100582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.736382, 38.613529, 40.217686>,  <30.877907, 38.432880, 40.287949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.736382, 38.613529, 40.217686>,  <30.500505, 38.914608, 40.100582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736382, 38.613529, 40.217686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527227, -0.084178, 0.845545,
		-0.611798, -0.652959, -0.446483,
		0.589691, -0.752701, 0.292758,
		30.913288, 38.387718, 40.305511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089031, 38.305748, 40.248871>,  <30.500505, 38.914608, 40.100582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089031, 38.305748, 40.248871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.434069, 38.289421, 40.450569>,  <30.641090, 38.279625, 40.571590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.434069, 38.289421, 40.450569>,  <30.089031, 38.305748, 40.248871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434069, 38.289421, 40.450569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502077, -0.191344, 0.843390,
		0.062062, -0.980674, -0.185544,
		0.862593, -0.040815, 0.504248,
		30.692846, 38.277176, 40.601845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012402, 37.602100, 40.719456>,  <30.089031, 38.305748, 40.248871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012402, 37.602100, 40.719456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.302694, 37.828751, 40.875534>,  <30.476870, 37.964741, 40.969181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.302694, 37.828751, 40.875534>,  <30.012402, 37.602100, 40.719456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302694, 37.828751, 40.875534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306991, -0.240859, 0.920730,
		0.615689, -0.787989, -0.000851,
		0.725730, 0.566622, 0.390199,
		30.520412, 37.998737, 40.992596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384296, 37.168964, 41.247082>,  <30.012402, 37.602100, 40.719456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384296, 37.168964, 41.247082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463308, 37.552773, 41.327385>,  <30.510715, 37.783058, 41.375568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463308, 37.552773, 41.327385>,  <30.384296, 37.168964, 41.247082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463308, 37.552773, 41.327385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253917, -0.147723, 0.955879,
		0.946841, -0.239792, 0.214458,
		0.197532, 0.959520, 0.200758,
		30.522568, 37.840630, 41.387611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773094, 37.107170, 41.837929>,  <30.384296, 37.168964, 41.247082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773094, 37.107170, 41.837929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636034, 37.482666, 41.852692>,  <30.553797, 37.707962, 41.861549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636034, 37.482666, 41.852692>,  <30.773094, 37.107170, 41.837929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636034, 37.482666, 41.852692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071061, -0.065076, 0.995347,
		0.936771, 0.338434, 0.089006,
		-0.342652, 0.938737, 0.036912,
		30.533239, 37.764286, 41.863766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097719, 37.555099, 42.346989>,  <30.773094, 37.107170, 41.837929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097719, 37.555099, 42.346989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.753557, 37.756237, 42.313885>,  <30.547060, 37.876919, 42.294022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.753557, 37.756237, 42.313885>,  <31.097719, 37.555099, 42.346989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753557, 37.756237, 42.313885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098218, -0.004264, 0.995156,
		0.500058, 0.864365, 0.053058,
		-0.860404, 0.502847, -0.082764,
		30.495436, 37.907093, 42.289055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117722, 38.065773, 42.795406>,  <31.097719, 37.555099, 42.346989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117722, 38.065773, 42.795406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.728903, 37.990257, 42.739567>,  <30.495611, 37.944946, 42.706062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.728903, 37.990257, 42.739567>,  <31.117722, 38.065773, 42.795406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728903, 37.990257, 42.739567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120369, -0.109788, 0.986640,
		-0.201596, 0.975860, 0.083994,
		-0.972044, -0.188792, -0.139596,
		30.437290, 37.933620, 42.697689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636820, 38.365856, 43.260292>,  <31.117722, 38.065773, 42.795406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636820, 38.365856, 43.260292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954929, 38.472771, 43.477951>,  <32.145794, 38.536919, 43.608547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.954929, 38.472771, 43.477951>,  <31.636820, 38.365856, 43.260292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954929, 38.472771, 43.477951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563412, 0.005556, -0.826157,
		-0.223842, 0.963602, -0.146172,
		0.795274, 0.267284, 0.544149,
		32.193512, 38.552956, 43.641197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946346, 38.902424, 42.818989>,  <31.636820, 38.365856, 43.260292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946346, 38.902424, 42.818989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224152, 38.799244, 43.087646>,  <32.390835, 38.737335, 43.248840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224152, 38.799244, 43.087646>,  <31.946346, 38.902424, 42.818989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224152, 38.799244, 43.087646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679038, -0.073566, -0.730408,
		0.237820, 0.963353, 0.124066,
		0.694514, -0.257951, 0.671648,
		32.432507, 38.721859, 43.289143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522404, 39.250633, 42.472157>,  <31.946346, 38.902424, 42.818989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522404, 39.250633, 42.472157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656101, 38.963188, 42.716084>,  <32.736320, 38.790722, 42.862438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656101, 38.963188, 42.716084>,  <32.522404, 39.250633, 42.472157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656101, 38.963188, 42.716084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806225, -0.117110, -0.579902,
		0.488141, 0.685479, 0.540220,
		0.334245, -0.718612, 0.609816,
		32.756374, 38.747604, 42.899029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148193, 39.467743, 42.631973>,  <32.522404, 39.250633, 42.472157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148193, 39.467743, 42.631973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152512, 39.074268, 42.703804>,  <33.155102, 38.838184, 42.746902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152512, 39.074268, 42.703804>,  <33.148193, 39.467743, 42.631973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152512, 39.074268, 42.703804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874214, -0.077894, -0.479252,
		0.485421, 0.162166, 0.859109,
		0.010799, -0.983684, 0.179579,
		33.155750, 38.779163, 42.757679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836605, 39.304703, 42.950336>,  <33.148193, 39.467743, 42.631973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836605, 39.304703, 42.950336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715912, 38.943489, 42.828037>,  <33.643497, 38.726761, 42.754658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715912, 38.943489, 42.828037>,  <33.836605, 39.304703, 42.950336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715912, 38.943489, 42.828037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901090, -0.165354, -0.400867,
		0.311442, -0.396458, 0.863611,
		-0.301729, -0.903039, -0.305746,
		33.625393, 38.672577, 42.736313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449356, 38.792538, 43.005138>,  <33.836605, 39.304703, 42.950336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449356, 38.792538, 43.005138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209351, 38.603249, 42.747131>,  <34.065350, 38.489677, 42.592327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209351, 38.603249, 42.747131>,  <34.449356, 38.792538, 43.005138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209351, 38.603249, 42.747131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787813, -0.209364, -0.579238,
		0.139063, -0.855704, 0.498429,
		-0.600010, -0.473220, -0.645020,
		34.029346, 38.461285, 42.553623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824936, 38.226368, 42.760399>,  <34.449356, 38.792538, 43.005138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824936, 38.226368, 42.760399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.543175, 38.272060, 42.480179>,  <34.374119, 38.299477, 42.312046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.543175, 38.272060, 42.480179>,  <34.824936, 38.226368, 42.760399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543175, 38.272060, 42.480179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708792, 0.060518, -0.702817,
		-0.037887, -0.991609, -0.123594,
		-0.704400, 0.114229, -0.700551,
		34.331856, 38.306328, 42.270012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884880, 37.669315, 42.348446>,  <34.824936, 38.226368, 42.760399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884880, 37.669315, 42.348446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.705826, 37.948650, 42.125038>,  <34.598392, 38.116253, 41.990993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.705826, 37.948650, 42.125038>,  <34.884880, 37.669315, 42.348446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705826, 37.948650, 42.125038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737616, -0.064724, -0.672111,
		-0.505511, -0.712835, -0.486133,
		-0.447640, 0.698339, -0.558517,
		34.571533, 38.158154, 41.957481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826107, 37.401493, 41.629539>,  <34.884880, 37.669315, 42.348446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826107, 37.401493, 41.629539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795856, 37.799706, 41.606888>,  <34.777706, 38.038631, 41.593296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795856, 37.799706, 41.606888>,  <34.826107, 37.401493, 41.629539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795856, 37.799706, 41.606888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710537, 0.013962, -0.703521,
		-0.699584, -0.093439, -0.708415,
		-0.075627, 0.995527, -0.056624,
		34.773167, 38.098362, 41.589901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852089, 37.620975, 40.922096>,  <34.826107, 37.401493, 41.629539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852089, 37.620975, 40.922096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941975, 37.962284, 41.110321>,  <34.995907, 38.167068, 41.223255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941975, 37.962284, 41.110321>,  <34.852089, 37.620975, 40.922096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941975, 37.962284, 41.110321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777790, 0.133832, -0.614111,
		-0.586979, 0.504002, -0.633591,
		0.224718, 0.853271, 0.470564,
		35.009392, 38.218266, 41.251492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946190, 38.021358, 40.449871>,  <34.852089, 37.620975, 40.922096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946190, 38.021358, 40.449871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139347, 38.219971, 40.738388>,  <35.255241, 38.339138, 40.911499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139347, 38.219971, 40.738388>,  <34.946190, 38.021358, 40.449871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139347, 38.219971, 40.738388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718619, 0.245990, -0.650443,
		-0.500398, 0.832432, -0.238031,
		0.482896, 0.496534, 0.721294,
		35.284218, 38.368931, 40.954777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302387, 38.527756, 40.068398>,  <34.946190, 38.021358, 40.449871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302387, 38.527756, 40.068398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.480274, 38.546646, 40.426167>,  <35.587006, 38.557980, 40.640827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.480274, 38.546646, 40.426167>,  <35.302387, 38.527756, 40.068398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480274, 38.546646, 40.426167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891200, 0.076317, -0.447144,
		-0.089379, 0.995964, -0.008152,
		0.444718, 0.047230, 0.894425,
		35.613689, 38.560814, 40.694492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787453, 39.133823, 40.057922>,  <35.302387, 38.527756, 40.068398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787453, 39.133823, 40.057922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898163, 38.869812, 40.337280>,  <35.964588, 38.711403, 40.504894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898163, 38.869812, 40.337280>,  <35.787453, 39.133823, 40.057922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898163, 38.869812, 40.337280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921099, -0.024873, -0.388534,
		0.273815, 0.750827, 0.601069,
		0.276771, -0.660031, 0.698396,
		35.981194, 38.671803, 40.546799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341049, 39.412941, 40.388050>,  <35.787453, 39.133823, 40.057922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341049, 39.412941, 40.388050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379837, 39.019386, 40.448143>,  <36.403111, 38.783253, 40.484200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379837, 39.019386, 40.448143>,  <36.341049, 39.412941, 40.388050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379837, 39.019386, 40.448143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823307, -0.005517, -0.567570,
		0.559252, 0.178722, 0.809503,
		0.096971, -0.983884, 0.150228,
		36.408928, 38.724220, 40.493210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.751661, 41.617519, 28.450399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.866407, 41.236885, 28.406242>,  <29.935255, 41.008503, 28.379749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.866407, 41.236885, 28.406242>,  <29.751661, 41.617519, 28.450399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866407, 41.236885, 28.406242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741007, -0.293451, 0.603983,
		-0.607138, -0.091462, -0.789315,
		0.286867, -0.951589, -0.110391,
		29.952467, 40.951408, 28.373125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107174, 41.299728, 28.284039>,  <29.751661, 41.617519, 28.450399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107174, 41.299728, 28.284039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.354939, 41.023434, 28.433281>,  <29.503597, 40.857655, 28.522827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.354939, 41.023434, 28.433281>,  <29.107174, 41.299728, 28.284039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354939, 41.023434, 28.433281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727207, -0.325751, 0.604199,
		-0.295804, -0.645573, -0.704084,
		0.619411, -0.690739, 0.373107,
		29.540762, 40.816212, 28.545214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808094, 40.675327, 28.240623>,  <29.107174, 41.299728, 28.284039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808094, 40.675327, 28.240623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065527, 40.651436, 28.545841>,  <29.219988, 40.637100, 28.728971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065527, 40.651436, 28.545841>,  <28.808094, 40.675327, 28.240623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065527, 40.651436, 28.545841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689596, -0.477767, 0.544239,
		0.332052, -0.876454, -0.348669,
		0.643583, -0.059726, 0.763043,
		29.258602, 40.633518, 28.774754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727800, 39.956245, 28.495253>,  <28.808094, 40.675327, 28.240623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727800, 39.956245, 28.495253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903509, 40.153034, 28.795919>,  <29.008934, 40.271107, 28.976320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903509, 40.153034, 28.795919>,  <28.727800, 39.956245, 28.495253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903509, 40.153034, 28.795919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499320, -0.561857, 0.659542,
		0.746807, -0.665040, -0.001155,
		0.439271, 0.491974, 0.751667,
		29.035290, 40.300625, 29.021420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806644, 39.385021, 29.042072>,  <28.727800, 39.956245, 28.495253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806644, 39.385021, 29.042072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866940, 39.740440, 29.215399>,  <28.903116, 39.953693, 29.319395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866940, 39.740440, 29.215399>,  <28.806644, 39.385021, 29.042072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866940, 39.740440, 29.215399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309633, -0.373834, 0.874286,
		0.938832, -0.265955, 0.218773,
		0.150736, 0.888547, 0.433316,
		28.912161, 40.007004, 29.345394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302830, 39.366985, 29.624702>,  <28.806644, 39.385021, 29.042072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302830, 39.366985, 29.624702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099623, 39.697533, 29.721895>,  <28.977697, 39.895859, 29.780210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099623, 39.697533, 29.721895>,  <29.302830, 39.366985, 29.624702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099623, 39.697533, 29.721895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248095, -0.410522, 0.877451,
		0.824843, 0.385479, 0.413569,
		-0.508018, 0.826364, 0.242981,
		28.947218, 39.945442, 29.794790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426289, 39.478352, 30.358799>,  <29.302830, 39.366985, 29.624702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426289, 39.478352, 30.358799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095959, 39.686428, 30.271696>,  <28.897760, 39.811272, 30.219435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095959, 39.686428, 30.271696>,  <29.426289, 39.478352, 30.358799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095959, 39.686428, 30.271696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392535, -0.253016, 0.884250,
		0.404880, 0.815713, 0.413139,
		-0.825826, 0.520187, -0.217755,
		28.848211, 39.842484, 30.206369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329893, 39.757282, 30.949230>,  <29.426289, 39.478352, 30.358799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329893, 39.757282, 30.949230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975613, 39.808739, 30.770798>,  <28.763044, 39.839611, 30.663738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975613, 39.808739, 30.770798>,  <29.329893, 39.757282, 30.949230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975613, 39.808739, 30.770798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463927, -0.281458, 0.839972,
		-0.017501, 0.950912, 0.308966,
		-0.885700, 0.128638, -0.446079,
		28.709902, 39.847328, 30.636974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827187, 40.130455, 31.419909>,  <29.329893, 39.757282, 30.949230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827187, 40.130455, 31.419909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587461, 39.937572, 31.164314>,  <28.443626, 39.821842, 31.010958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587461, 39.937572, 31.164314>,  <28.827187, 40.130455, 31.419909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587461, 39.937572, 31.164314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433128, -0.475961, 0.765416,
		-0.673218, 0.735488, 0.076395,
		-0.599315, -0.482203, -0.638986,
		28.407667, 39.792912, 30.972618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176954, 40.100525, 31.771408>,  <28.827187, 40.130455, 31.419909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176954, 40.100525, 31.771408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.142099, 39.819691, 31.488710>,  <28.121187, 39.651192, 31.319092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.142099, 39.819691, 31.488710>,  <28.176954, 40.100525, 31.771408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142099, 39.819691, 31.488710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384082, -0.630916, 0.674111,
		-0.919178, 0.330187, -0.214682,
		-0.087136, -0.702083, -0.706744,
		28.115959, 39.609066, 31.276688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547619, 39.744705, 31.904261>,  <28.176954, 40.100525, 31.771408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547619, 39.744705, 31.904261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.752356, 39.482151, 31.682566>,  <27.875196, 39.324619, 31.549549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.752356, 39.482151, 31.682566>,  <27.547619, 39.744705, 31.904261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752356, 39.482151, 31.682566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174760, -0.711215, 0.680905,
		-0.841118, -0.251656, -0.478738,
		0.511840, -0.656386, -0.554236,
		27.905909, 39.285236, 31.516294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187817, 39.223209, 31.946814>,  <27.547619, 39.744705, 31.904261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187817, 39.223209, 31.946814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532471, 39.060066, 31.825993>,  <27.739264, 38.962181, 31.753500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532471, 39.060066, 31.825993>,  <27.187817, 39.223209, 31.946814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532471, 39.060066, 31.825993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142441, -0.765559, 0.627400,
		-0.487127, -0.497566, -0.717729,
		0.861637, -0.407858, -0.302050,
		27.790962, 38.937710, 31.735378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977152, 38.492657, 31.693586>,  <27.187817, 39.223209, 31.946814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977152, 38.492657, 31.693586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363924, 38.489071, 31.795538>,  <27.595987, 38.486919, 31.856709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363924, 38.489071, 31.795538>,  <26.977152, 38.492657, 31.693586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363924, 38.489071, 31.795538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192043, -0.683202, 0.704524,
		0.167817, -0.730174, -0.662331,
		0.966931, -0.008966, 0.254878,
		27.654003, 38.486382, 31.872002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089268, 37.816952, 31.686224>,  <26.977152, 38.492657, 31.693586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089268, 37.816952, 31.686224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368011, 38.007710, 31.900497>,  <27.535257, 38.122166, 32.029060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368011, 38.007710, 31.900497>,  <27.089268, 37.816952, 31.686224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368011, 38.007710, 31.900497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188415, -0.598937, 0.778315,
		0.692019, -0.643305, -0.327518,
		0.696857, 0.476899, 0.535684,
		27.577068, 38.150780, 32.061203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576757, 37.277210, 31.942471>,  <27.089268, 37.816952, 31.686224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576757, 37.277210, 31.942471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.638317, 37.593319, 32.179718>,  <27.675253, 37.782982, 32.322067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.638317, 37.593319, 32.179718>,  <27.576757, 37.277210, 31.942471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638317, 37.593319, 32.179718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015970, -0.602183, 0.798198,
		0.987958, -0.113368, -0.105295,
		0.153897, 0.790268, 0.593121,
		27.684486, 37.830399, 32.357655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994734, 37.012386, 32.510990>,  <27.576757, 37.277210, 31.942471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994734, 37.012386, 32.510990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846857, 37.350258, 32.665829>,  <27.758131, 37.552982, 32.758732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846857, 37.350258, 32.665829>,  <27.994734, 37.012386, 32.510990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846857, 37.350258, 32.665829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066444, -0.439581, 0.895742,
		0.926775, 0.305430, 0.218634,
		-0.369694, 0.844678, 0.387099,
		27.735949, 37.603661, 32.781960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372005, 37.104641, 33.117107>,  <27.994734, 37.012386, 32.510990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372005, 37.104641, 33.117107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056856, 37.343300, 33.178120>,  <27.867767, 37.486496, 33.214725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056856, 37.343300, 33.178120>,  <28.372005, 37.104641, 33.117107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056856, 37.343300, 33.178120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099608, -0.367876, 0.924525,
		0.607730, 0.713214, 0.349270,
		-0.787872, 0.596652, 0.152527,
		27.820494, 37.522297, 33.223877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446922, 37.370548, 33.809402>,  <28.372005, 37.104641, 33.117107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446922, 37.370548, 33.809402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060665, 37.429955, 33.724102>,  <27.828911, 37.465599, 33.672920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060665, 37.429955, 33.724102>,  <28.446922, 37.370548, 33.809402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060665, 37.429955, 33.724102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249380, -0.298762, 0.921168,
		0.073096, 0.942701, 0.325534,
		-0.965643, 0.148516, -0.213253,
		27.770971, 37.474510, 33.660126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218451, 37.875340, 34.265511>,  <28.446922, 37.370548, 33.809402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218451, 37.875340, 34.265511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.923056, 37.629593, 34.154381>,  <27.745819, 37.482143, 34.087704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.923056, 37.629593, 34.154381>,  <28.218451, 37.875340, 34.265511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923056, 37.629593, 34.154381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170614, -0.228363, 0.958510,
		-0.652322, 0.755250, 0.063824,
		-0.738490, -0.614368, -0.277823,
		27.701509, 37.445282, 34.071033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965012, 37.827232, 34.071980>,  <28.218451, 37.875340, 34.265511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965012, 37.827232, 34.071980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261000, 37.562260, 34.025280>,  <29.438593, 37.403275, 33.997261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261000, 37.562260, 34.025280>,  <28.965012, 37.827232, 34.071980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261000, 37.562260, 34.025280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499751, 0.657600, -0.563747,
		0.450217, 0.358811, 0.817655,
		0.739969, -0.662432, -0.116746,
		29.482990, 37.363529, 33.990257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651089, 38.171883, 34.237133>,  <28.965012, 37.827232, 34.071980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651089, 38.171883, 34.237133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.713638, 37.853676, 34.002972>,  <29.751167, 37.662750, 33.862476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.713638, 37.853676, 34.002972>,  <29.651089, 38.171883, 34.237133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713638, 37.853676, 34.002972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697729, 0.508474, -0.504607,
		0.699086, -0.329544, 0.634570,
		0.156372, -0.795522, -0.585400,
		29.760550, 37.615021, 33.827351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321413, 38.046097, 34.350254>,  <29.651089, 38.171883, 34.237133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321413, 38.046097, 34.350254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240875, 37.865223, 34.002693>,  <30.192553, 37.756699, 33.794155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240875, 37.865223, 34.002693>,  <30.321413, 38.046097, 34.350254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240875, 37.865223, 34.002693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738325, 0.512875, -0.437990,
		0.643690, -0.729720, 0.230592,
		-0.201345, -0.452181, -0.868903,
		30.180471, 37.729568, 33.742023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937548, 37.718540, 34.100266>,  <30.321413, 38.046097, 34.350254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937548, 37.718540, 34.100266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703047, 37.767006, 33.779858>,  <30.562346, 37.796085, 33.587612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703047, 37.767006, 33.779858>,  <30.937548, 37.718540, 34.100266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703047, 37.767006, 33.779858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780337, 0.350120, -0.518160,
		0.217672, -0.928836, -0.299804,
		-0.586254, 0.121159, -0.801016,
		30.527170, 37.803352, 33.539555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375490, 37.460865, 33.585178>,  <30.937548, 37.718540, 34.100266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375490, 37.460865, 33.585178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102869, 37.675480, 33.386135>,  <30.939297, 37.804249, 33.266708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102869, 37.675480, 33.386135>,  <31.375490, 37.460865, 33.585178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102869, 37.675480, 33.386135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731533, 0.516823, -0.444694,
		0.018579, -0.667099, -0.744737,
		-0.681553, 0.536538, -0.497607,
		30.898403, 37.836441, 33.236855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576962, 37.568932, 32.862980>,  <31.375490, 37.460865, 33.585178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576962, 37.568932, 32.862980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315285, 37.866211, 32.919106>,  <31.158279, 38.044579, 32.952782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315285, 37.866211, 32.919106>,  <31.576962, 37.568932, 32.862980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315285, 37.866211, 32.919106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601898, 0.623916, -0.498445,
		-0.457990, -0.241623, -0.855490,
		-0.654190, 0.743201, 0.140315,
		31.119028, 38.089172, 32.961201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449894, 37.810570, 32.253513>,  <31.576962, 37.568932, 32.862980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449894, 37.810570, 32.253513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302959, 38.105461, 32.480335>,  <31.214800, 38.282398, 32.616428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302959, 38.105461, 32.480335>,  <31.449894, 37.810570, 32.253513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302959, 38.105461, 32.480335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463128, 0.673706, -0.575876,
		-0.806584, 0.051081, -0.588908,
		-0.367335, 0.737232, 0.567058,
		31.192759, 38.326630, 32.650452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117743, 38.210270, 31.804430>,  <31.449894, 37.810570, 32.253513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117743, 38.210270, 31.804430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.235153, 38.409401, 32.130867>,  <31.305599, 38.528881, 32.326729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.235153, 38.409401, 32.130867>,  <31.117743, 38.210270, 31.804430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235153, 38.409401, 32.130867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301951, 0.761708, -0.573260,
		-0.907011, 0.414686, 0.073259,
		0.293525, 0.497832, 0.816092,
		31.323210, 38.558750, 32.375694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821865, 38.859474, 31.756058>,  <31.117743, 38.210270, 31.804430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821865, 38.859474, 31.756058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.126448, 38.898529, 32.012386>,  <31.309196, 38.921963, 32.166183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.126448, 38.898529, 32.012386>,  <30.821865, 38.859474, 31.756058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126448, 38.898529, 32.012386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374371, 0.740812, -0.557714,
		-0.529181, 0.664579, 0.527544,
		0.761455, 0.097634, 0.640822,
		31.354885, 38.927818, 32.204632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877499, 39.662476, 31.932383>,  <30.821865, 38.859474, 31.756058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877499, 39.662476, 31.932383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.225365, 39.564468, 32.103798>,  <31.434084, 39.505665, 32.206646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.225365, 39.564468, 32.103798>,  <30.877499, 39.662476, 31.932383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225365, 39.564468, 32.103798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429815, 0.802799, -0.413247,
		-0.242777, 0.543579, 0.803481,
		0.869666, -0.245021, 0.428539,
		31.486265, 39.490963, 32.232361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121347, 40.274349, 32.097454>,  <30.877499, 39.662476, 31.932383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121347, 40.274349, 32.097454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444681, 40.039055, 32.107033>,  <31.638681, 39.897877, 32.112778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444681, 40.039055, 32.107033>,  <31.121347, 40.274349, 32.097454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444681, 40.039055, 32.107033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519571, 0.693670, -0.498866,
		0.276843, 0.415691, 0.866348,
		0.808334, -0.588237, 0.023943,
		31.687181, 39.862583, 32.114216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667612, 40.649788, 32.250549>,  <31.121347, 40.274349, 32.097454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667612, 40.649788, 32.250549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.861790, 40.339928, 32.088432>,  <31.978296, 40.154011, 31.991161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.861790, 40.339928, 32.088432>,  <31.667612, 40.649788, 32.250549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861790, 40.339928, 32.088432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579464, 0.632218, -0.514316,
		0.654649, 0.014818, 0.755787,
		0.485444, -0.774648, -0.405295,
		32.007423, 40.107533, 31.966845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407394, 40.742340, 32.408138>,  <31.667612, 40.649788, 32.250549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407394, 40.742340, 32.408138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343899, 40.517002, 32.083805>,  <32.305801, 40.381798, 31.889206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343899, 40.517002, 32.083805>,  <32.407394, 40.742340, 32.408138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343899, 40.517002, 32.083805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589391, 0.604790, -0.535581,
		0.792098, -0.562914, 0.236026,
		-0.158740, -0.563344, -0.810830,
		32.296276, 40.348000, 31.840555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840614, 41.115429, 31.999172>,  <32.407394, 40.742340, 32.408138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840614, 41.115429, 31.999172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.683887, 40.860874, 31.733391>,  <32.589851, 40.708141, 31.573923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.683887, 40.860874, 31.733391>,  <32.840614, 41.115429, 31.999172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683887, 40.860874, 31.733391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451487, 0.496268, -0.741537,
		0.801649, -0.590537, 0.092874,
		-0.391815, -0.636383, -0.664453,
		32.566341, 40.669960, 31.534056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423820, 40.741104, 31.658768>,  <32.840614, 41.115429, 31.999172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423820, 40.741104, 31.658768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.086483, 40.744892, 31.443853>,  <32.884079, 40.747166, 31.314905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.086483, 40.744892, 31.443853>,  <33.423820, 40.741104, 31.658768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086483, 40.744892, 31.443853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452576, 0.551584, -0.700664,
		0.289724, -0.834066, -0.469462,
		-0.843347, 0.009468, -0.537285,
		32.833477, 40.747734, 31.282667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561172, 40.456108, 30.943718>,  <33.423820, 40.741104, 31.658768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561172, 40.456108, 30.943718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.234295, 40.676140, 30.874889>,  <33.038170, 40.808159, 30.833593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.234295, 40.676140, 30.874889>,  <33.561172, 40.456108, 30.943718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234295, 40.676140, 30.874889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482507, 0.489621, -0.726263,
		-0.315257, -0.676520, -0.665533,
		-0.817190, 0.550084, -0.172070,
		32.989140, 40.841164, 30.823269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421452, 40.527317, 30.196726>,  <33.561172, 40.456108, 30.943718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421452, 40.527317, 30.196726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.207294, 40.846657, 30.306999>,  <33.078800, 41.038261, 30.373163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.207294, 40.846657, 30.306999>,  <33.421452, 40.527317, 30.196726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207294, 40.846657, 30.306999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438137, 0.541573, -0.717450,
		-0.722075, -0.263330, -0.639738,
		-0.535390, 0.798346, 0.275682,
		33.046677, 41.086163, 30.389704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235600, 40.884064, 29.546171>,  <33.421452, 40.527317, 30.196726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235600, 40.884064, 29.546171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.138695, 41.161137, 29.817907>,  <33.080551, 41.327381, 29.980949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.138695, 41.161137, 29.817907>,  <33.235600, 40.884064, 29.546171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138695, 41.161137, 29.817907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232433, 0.721247, -0.652517,
		-0.941958, -0.000179, -0.335732,
		-0.242262, 0.692678, 0.679342,
		33.066017, 41.368938, 30.021709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660614, 41.334599, 29.280504>,  <33.235600, 40.884064, 29.546171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660614, 41.334599, 29.280504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.859478, 41.540936, 29.559570>,  <32.978798, 41.664738, 29.727011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.859478, 41.540936, 29.559570>,  <32.660614, 41.334599, 29.280504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859478, 41.540936, 29.559570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123542, 0.753803, -0.645383,
		-0.858817, 0.407052, 0.311035,
		0.497163, 0.515839, 0.697667,
		33.008625, 41.695686, 29.768869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456905, 42.063171, 29.017578>,  <32.660614, 41.334599, 29.280504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456905, 42.063171, 29.017578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.737232, 42.090317, 29.301620>,  <32.905430, 42.106606, 29.472046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.737232, 42.090317, 29.301620>,  <32.456905, 42.063171, 29.017578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737232, 42.090317, 29.301620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250249, 0.908808, -0.333832,
		-0.668005, 0.411658, 0.619925,
		0.700817, 0.067866, 0.710105,
		32.947479, 42.110676, 29.514652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314930, 42.640472, 29.375498>,  <32.456905, 42.063171, 29.017578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314930, 42.640472, 29.375498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.705914, 42.568382, 29.419479>,  <32.940502, 42.525127, 29.445868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.705914, 42.568382, 29.419479>,  <32.314930, 42.640472, 29.375498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705914, 42.568382, 29.419479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207842, 0.912923, -0.351245,
		-0.037075, 0.366180, 0.929805,
		0.977459, -0.180230, 0.109954,
		32.999153, 42.514313, 29.452465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639973, 43.214012, 29.620220>,  <32.314930, 42.640472, 29.375498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639973, 43.214012, 29.620220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.948990, 43.008701, 29.470699>,  <33.134399, 42.885517, 29.380987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.948990, 43.008701, 29.470699>,  <32.639973, 43.214012, 29.620220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948990, 43.008701, 29.470699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389620, 0.848035, -0.359212,
		0.501372, 0.131865, 0.855124,
		0.772543, -0.513272, -0.373804,
		33.180752, 42.854721, 29.358559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105038, 43.675892, 29.626255>,  <32.639973, 43.214012, 29.620220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105038, 43.675892, 29.626255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.254974, 43.403454, 29.374666>,  <33.344936, 43.239990, 29.223713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.254974, 43.403454, 29.374666>,  <33.105038, 43.675892, 29.626255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254974, 43.403454, 29.374666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468348, 0.724617, -0.505550,
		0.800092, -0.105080, 0.590602,
		0.374837, -0.681094, -0.628974,
		33.367424, 43.199127, 29.185974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.342861, 37.625439, 45.896492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099312, 37.319786, 45.811291>,  <34.953182, 37.136395, 45.760170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099312, 37.319786, 45.811291>,  <35.342861, 37.625439, 45.896492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099312, 37.319786, 45.811291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652888, 0.330207, 0.681689,
		-0.450566, 0.554132, -0.699949,
		-0.608874, -0.764134, -0.213006,
		34.916649, 37.090546, 45.747391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647343, 37.888706, 45.737793>,  <35.342861, 37.625439, 45.896492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647343, 37.888706, 45.737793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610252, 37.522182, 45.893627>,  <34.587997, 37.302269, 45.987129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610252, 37.522182, 45.893627>,  <34.647343, 37.888706, 45.737793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610252, 37.522182, 45.893627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665239, 0.348144, 0.660494,
		-0.740850, -0.197925, -0.641847,
		-0.092727, -0.916309, 0.389590,
		34.582436, 37.247292, 46.010506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969360, 37.847313, 45.667419>,  <34.647343, 37.888706, 45.737793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969360, 37.847313, 45.667419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101746, 37.563457, 45.916218>,  <34.181175, 37.393147, 46.065498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101746, 37.563457, 45.916218>,  <33.969360, 37.847313, 45.667419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101746, 37.563457, 45.916218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761072, 0.188954, 0.620537,
		-0.557885, -0.678759, -0.477547,
		0.330961, -0.709635, 0.621999,
		34.201035, 37.350567, 46.102818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365143, 37.605930, 45.940166>,  <33.969360, 37.847313, 45.667419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365143, 37.605930, 45.940166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662483, 37.499535, 46.185665>,  <33.840885, 37.435696, 46.332962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662483, 37.499535, 46.185665>,  <33.365143, 37.605930, 45.940166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662483, 37.499535, 46.185665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603868, 0.127794, 0.786773,
		-0.287708, -0.955467, -0.065628,
		0.743349, -0.265991, 0.613743,
		33.885487, 37.419739, 46.369789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965672, 37.165569, 46.379631>,  <33.365143, 37.605930, 45.940166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965672, 37.165569, 46.379631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313541, 37.273800, 46.544773>,  <33.522263, 37.338737, 46.643860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313541, 37.273800, 46.544773>,  <32.965672, 37.165569, 46.379631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313541, 37.273800, 46.544773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448220, 0.082484, 0.890110,
		0.206792, -0.959157, 0.193014,
		0.869676, 0.270580, 0.412857,
		33.574444, 37.354973, 46.668629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009132, 36.735970, 46.939327>,  <32.965672, 37.165569, 46.379631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009132, 36.735970, 46.939327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247486, 37.049614, 47.008717>,  <33.390499, 37.237801, 47.050350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247486, 37.049614, 47.008717>,  <33.009132, 36.735970, 46.939327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247486, 37.049614, 47.008717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358582, 0.066503, 0.931126,
		0.718570, -0.617047, 0.320796,
		0.595883, 0.784111, 0.173476,
		33.426250, 37.284847, 47.060760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380013, 36.558952, 47.552452>,  <33.009132, 36.735970, 46.939327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380013, 36.558952, 47.552452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380333, 36.955002, 47.496384>,  <33.380527, 37.192631, 47.462742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380333, 36.955002, 47.496384>,  <33.380013, 36.558952, 47.552452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380333, 36.955002, 47.496384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530936, 0.119209, 0.838985,
		0.847412, 0.073750, 0.525789,
		0.000803, 0.990126, -0.140175,
		33.380573, 37.252041, 47.454330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649433, 36.808342, 48.113197>,  <33.380013, 36.558952, 47.552452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649433, 36.808342, 48.113197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430470, 37.105492, 47.959068>,  <33.299091, 37.283783, 47.866592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430470, 37.105492, 47.959068>,  <33.649433, 36.808342, 48.113197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430470, 37.105492, 47.959068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493001, 0.085787, 0.865789,
		0.676231, 0.663907, 0.319279,
		-0.547413, 0.742878, -0.385319,
		33.266247, 37.328354, 47.843472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571678, 37.102844, 48.714218>,  <33.649433, 36.808342, 48.113197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571678, 37.102844, 48.714218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306232, 37.263702, 48.461903>,  <33.146965, 37.360218, 48.310513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306232, 37.263702, 48.461903>,  <33.571678, 37.102844, 48.714218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306232, 37.263702, 48.461903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648435, 0.111242, 0.753099,
		0.373024, 0.908794, 0.186942,
		-0.663615, 0.402144, -0.630789,
		33.107147, 37.384346, 48.272667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258934, 37.724983, 48.961750>,  <33.571678, 37.102844, 48.714218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258934, 37.724983, 48.961750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988510, 37.589180, 48.700161>,  <32.826256, 37.507698, 48.543209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988510, 37.589180, 48.700161>,  <33.258934, 37.724983, 48.961750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988510, 37.589180, 48.700161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733571, 0.226535, 0.640746,
		-0.069391, 0.912916, -0.402204,
		-0.676061, -0.339508, -0.653970,
		32.785690, 37.487328, 48.503971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643757, 38.104218, 48.891167>,  <33.258934, 37.724983, 48.961750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643757, 38.104218, 48.891167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536556, 37.732353, 48.790047>,  <32.472237, 37.509235, 48.729374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536556, 37.732353, 48.790047>,  <32.643757, 38.104218, 48.891167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536556, 37.732353, 48.790047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778225, 0.054218, 0.625641,
		-0.567925, 0.364413, -0.738014,
		-0.268005, -0.929658, -0.252803,
		32.456154, 37.453457, 48.714207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052559, 37.967739, 49.300522>,  <32.643757, 38.104218, 48.891167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052559, 37.967739, 49.300522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092899, 37.586472, 49.186478>,  <32.117104, 37.357712, 49.118050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092899, 37.586472, 49.186478>,  <32.052559, 37.967739, 49.300522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092899, 37.586472, 49.186478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603113, -0.286487, 0.744432,
		-0.791255, 0.096878, -0.603764,
		0.100851, -0.953173, -0.285113,
		32.123154, 37.300518, 49.100945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324053, 37.642475, 49.254185>,  <32.052559, 37.967739, 49.300522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324053, 37.642475, 49.254185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.617353, 37.408001, 49.392014>,  <31.793333, 37.267315, 49.474712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.617353, 37.408001, 49.392014>,  <31.324053, 37.642475, 49.254185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617353, 37.408001, 49.392014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526499, -0.168789, 0.833252,
		-0.430281, -0.792399, -0.432391,
		0.733252, -0.586186, 0.344571,
		31.837330, 37.232147, 49.495384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529289, 37.522594, 49.083492>,  <31.324053, 37.642475, 49.254185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529289, 37.522594, 49.083492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.159056, 37.405994, 48.986889>,  <29.936916, 37.336037, 48.928928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.159056, 37.405994, 48.986889>,  <30.529289, 37.522594, 49.083492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159056, 37.405994, 48.986889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259348, -0.023574, -0.965496,
		0.275745, -0.956281, 0.097418,
		-0.925582, -0.291496, -0.241510,
		29.881380, 37.318546, 48.914436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549820, 36.852394, 48.600262>,  <30.529289, 37.522594, 49.083492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549820, 36.852394, 48.600262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.226885, 37.085590, 48.563770>,  <30.033123, 37.225510, 48.541874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.226885, 37.085590, 48.563770>,  <30.549820, 36.852394, 48.600262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226885, 37.085590, 48.563770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215197, 0.146933, -0.965454,
		-0.549450, -0.799079, -0.244083,
		-0.807338, 0.582995, -0.091227,
		29.984684, 37.260490, 48.536404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117264, 36.684929, 47.994564>,  <30.549820, 36.852394, 48.600262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117264, 36.684929, 47.994564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.061163, 37.070835, 48.083603>,  <30.027502, 37.302380, 48.137028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.061163, 37.070835, 48.083603>,  <30.117264, 36.684929, 47.994564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061163, 37.070835, 48.083603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226320, 0.250106, -0.941396,
		-0.963903, -0.081652, -0.253424,
		-0.140250, 0.964769, 0.222598,
		30.019089, 37.360268, 48.150383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835888, 36.907303, 47.332592>,  <30.117264, 36.684929, 47.994564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835888, 36.907303, 47.332592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.914133, 37.252304, 47.519276>,  <29.961081, 37.459305, 47.631287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.914133, 37.252304, 47.519276>,  <29.835888, 36.907303, 47.332592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914133, 37.252304, 47.519276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196196, 0.431864, -0.880341,
		-0.960855, 0.263775, -0.084742,
		0.195615, 0.862506, 0.466710,
		29.972818, 37.511055, 47.659290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668156, 37.395626, 46.888077>,  <29.835888, 36.907303, 47.332592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668156, 37.395626, 46.888077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887178, 37.631134, 47.125912>,  <30.018593, 37.772438, 47.268612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887178, 37.631134, 47.125912>,  <29.668156, 37.395626, 46.888077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887178, 37.631134, 47.125912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290795, 0.532395, -0.794980,
		-0.784613, 0.608202, 0.120307,
		0.547559, 0.588767, 0.594586,
		30.051447, 37.807762, 47.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606302, 38.033455, 46.695045>,  <29.668156, 37.395626, 46.888077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606302, 38.033455, 46.695045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928007, 38.082935, 46.927551>,  <30.121029, 38.112625, 47.067055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.928007, 38.082935, 46.927551>,  <29.606302, 38.033455, 46.695045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928007, 38.082935, 46.927551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348635, 0.693888, -0.630058,
		-0.481267, 0.709379, 0.514940,
		0.804261, 0.123700, 0.581260,
		30.169285, 38.120045, 47.101929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665686, 38.776051, 46.649254>,  <29.606302, 38.033455, 46.695045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665686, 38.776051, 46.649254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.021130, 38.614651, 46.736488>,  <30.234396, 38.517811, 46.788830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.021130, 38.614651, 46.736488>,  <29.665686, 38.776051, 46.649254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021130, 38.614651, 46.736488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414338, 0.502259, -0.758986,
		0.196714, 0.764804, 0.613497,
		0.888610, -0.403498, 0.218086,
		30.287712, 38.493603, 46.801914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206457, 39.186108, 46.504406>,  <29.665686, 38.776051, 46.649254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206457, 39.186108, 46.504406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.430948, 38.855358, 46.518852>,  <30.565643, 38.656910, 46.527519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.430948, 38.855358, 46.518852>,  <30.206457, 39.186108, 46.504406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430948, 38.855358, 46.518852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518081, 0.316944, -0.794442,
		0.645458, 0.464572, 0.606265,
		0.561228, -0.826873, 0.036112,
		30.599316, 38.607296, 46.529686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904396, 39.389935, 46.585110>,  <30.206457, 39.186108, 46.504406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904396, 39.389935, 46.585110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.880808, 39.030678, 46.410816>,  <30.866655, 38.815125, 46.306240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.880808, 39.030678, 46.410816>,  <30.904396, 39.389935, 46.585110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880808, 39.030678, 46.410816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600846, 0.316639, -0.733978,
		0.797187, -0.305093, 0.520972,
		-0.058972, -0.898141, -0.435735,
		30.863117, 38.761234, 46.280094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590368, 39.314068, 46.335026>,  <30.904396, 39.389935, 46.585110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590368, 39.314068, 46.335026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400232, 39.006550, 46.163910>,  <31.286152, 38.822041, 46.061241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400232, 39.006550, 46.163910>,  <31.590368, 39.314068, 46.335026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400232, 39.006550, 46.163910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625562, 0.046571, -0.778783,
		0.618648, -0.637796, 0.458793,
		-0.475339, -0.768796, -0.427792,
		31.257631, 38.775909, 46.035572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143639, 38.789318, 46.158020>,  <31.590368, 39.314068, 46.335026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143639, 38.789318, 46.158020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835669, 38.748707, 45.906017>,  <31.650887, 38.724339, 45.754814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835669, 38.748707, 45.906017>,  <32.143639, 38.789318, 46.158020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835669, 38.748707, 45.906017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637636, -0.083323, -0.765818,
		0.025260, -0.991337, 0.128893,
		-0.769924, -0.101531, -0.630007,
		31.604691, 38.718246, 45.717014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369095, 38.208126, 45.699013>,  <32.143639, 38.789318, 46.158020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369095, 38.208126, 45.699013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077488, 38.413639, 45.518101>,  <31.902523, 38.536945, 45.409554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077488, 38.413639, 45.518101>,  <32.369095, 38.208126, 45.699013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077488, 38.413639, 45.518101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399579, -0.217040, -0.890635,
		-0.555755, -0.830012, -0.047070,
		-0.729022, 0.513783, -0.452276,
		31.858782, 38.567776, 45.382420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290012, 37.864212, 45.121178>,  <32.369095, 38.208126, 45.699013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290012, 37.864212, 45.121178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134365, 38.224396, 45.043446>,  <32.040977, 38.440506, 44.996807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134365, 38.224396, 45.043446>,  <32.290012, 37.864212, 45.121178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134365, 38.224396, 45.043446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158566, -0.142332, -0.977036,
		-0.907438, -0.410997, -0.087398,
		-0.389119, 0.900457, -0.194327,
		32.017628, 38.494534, 44.985146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924078, 37.783066, 44.496880>,  <32.290012, 37.864212, 45.121178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924078, 37.783066, 44.496880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982065, 38.178528, 44.512569>,  <32.016857, 38.415806, 44.521984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982065, 38.178528, 44.512569>,  <31.924078, 37.783066, 44.496880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982065, 38.178528, 44.512569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181187, 0.012447, -0.983370,
		-0.972705, 0.149663, -0.177328,
		0.144967, 0.988659, 0.039224,
		32.025555, 38.475124, 44.524338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542215, 38.077991, 43.966873>,  <31.924078, 37.783066, 44.496880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542215, 38.077991, 43.966873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825016, 38.355835, 44.020042>,  <31.994696, 38.522541, 44.051945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825016, 38.355835, 44.020042>,  <31.542215, 38.077991, 43.966873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825016, 38.355835, 44.020042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179513, 0.005531, -0.983740,
		-0.684051, 0.719365, -0.120781,
		0.707000, 0.694610, 0.132919,
		32.037117, 38.564217, 44.059917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836317, 38.057590, 43.534302>,  <31.542215, 38.077991, 43.966873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836317, 38.057590, 43.534302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.503057, 37.965302, 43.333252>,  <30.303102, 37.909927, 43.212620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.503057, 37.965302, 43.333252>,  <30.836317, 38.057590, 43.534302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503057, 37.965302, 43.333252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432335, -0.295061, 0.852071,
		-0.344895, 0.927204, 0.146081,
		-0.833147, -0.230719, -0.502628,
		30.253113, 37.896084, 43.182465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286058, 38.354355, 43.907051>,  <30.836317, 38.057590, 43.534302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286058, 38.354355, 43.907051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111729, 38.068199, 43.688591>,  <30.007132, 37.896507, 43.557514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111729, 38.068199, 43.688591>,  <30.286058, 38.354355, 43.907051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111729, 38.068199, 43.688591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554168, -0.264851, 0.789146,
		-0.709194, 0.646586, -0.281017,
		-0.435824, -0.715388, -0.546148,
		29.980982, 37.853584, 43.524746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520529, 38.251781, 44.120449>,  <30.286058, 38.354355, 43.907051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520529, 38.251781, 44.120449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.633837, 37.905434, 43.955513>,  <29.701822, 37.697624, 43.856552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.633837, 37.905434, 43.955513>,  <29.520529, 38.251781, 44.120449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633837, 37.905434, 43.955513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448079, -0.499629, 0.741347,
		-0.847929, -0.025240, -0.529509,
		0.283270, -0.865871, -0.412341,
		29.718817, 37.645672, 43.831810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928490, 37.844501, 43.941010>,  <29.520529, 38.251781, 44.120449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928490, 37.844501, 43.941010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.216427, 37.566845, 43.940617>,  <29.389189, 37.400253, 43.940380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.216427, 37.566845, 43.940617>,  <28.928490, 37.844501, 43.941010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216427, 37.566845, 43.940617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494112, -0.513399, 0.701623,
		-0.487526, -0.504573, -0.712548,
		0.719841, -0.694138, -0.000981,
		29.432379, 37.358604, 43.940323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531269, 37.178318, 43.939110>,  <28.928490, 37.844501, 43.941010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531269, 37.178318, 43.939110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.893970, 37.111149, 44.093826>,  <29.111591, 37.070847, 44.186657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.893970, 37.111149, 44.093826>,  <28.531269, 37.178318, 43.939110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893970, 37.111149, 44.093826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411754, -0.550314, 0.726370,
		0.090884, -0.817899, -0.568139,
		0.906752, -0.167918, 0.386788,
		29.165997, 37.060772, 44.209862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542366, 36.476913, 44.069920>,  <28.531269, 37.178318, 43.939110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542366, 36.476913, 44.069920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.837366, 36.621082, 44.298370>,  <29.014366, 36.707584, 44.435440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.837366, 36.621082, 44.298370>,  <28.542366, 36.476913, 44.069920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837366, 36.621082, 44.298370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430228, -0.401140, 0.808697,
		0.520572, -0.842132, -0.140780,
		0.737502, 0.360418, 0.571131,
		29.058617, 36.729206, 44.469711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701134, 35.874962, 44.527340>,  <28.542366, 36.476913, 44.069920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701134, 35.874962, 44.527340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.842957, 36.201256, 44.710152>,  <28.928051, 36.397030, 44.819839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.842957, 36.201256, 44.710152>,  <28.701134, 35.874962, 44.527340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842957, 36.201256, 44.710152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350154, -0.337379, 0.873824,
		0.866996, -0.469849, 0.166012,
		0.354557, 0.815731, 0.457026,
		28.949324, 36.445976, 44.847260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993097, 35.110878, 44.572651>,  <28.701134, 35.874962, 44.527340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993097, 35.110878, 44.572651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.858633, 34.758415, 44.439651>,  <28.777954, 34.546936, 44.359852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.858633, 34.758415, 44.439651>,  <28.993097, 35.110878, 44.572651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858633, 34.758415, 44.439651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552510, 0.101399, -0.827315,
		0.762712, -0.461817, 0.452764,
		-0.336159, -0.881160, -0.332497,
		28.757786, 34.494068, 44.339901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598190, 34.778950, 44.325233>,  <28.993097, 35.110878, 44.572651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598190, 34.778950, 44.325233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.275829, 34.611782, 44.157490>,  <29.082413, 34.511482, 44.056843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.275829, 34.611782, 44.157490>,  <29.598190, 34.778950, 44.325233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275829, 34.611782, 44.157490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297036, 0.327317, -0.897013,
		0.512146, -0.847469, -0.139648,
		-0.805900, -0.417922, -0.419364,
		29.034060, 34.486404, 44.031681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803938, 34.582767, 43.694046>,  <29.598190, 34.778950, 44.325233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803938, 34.582767, 43.694046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409281, 34.554291, 43.635445>,  <29.172485, 34.537205, 43.600285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409281, 34.554291, 43.635445>,  <29.803938, 34.582767, 43.694046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409281, 34.554291, 43.635445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115066, 0.331969, -0.936246,
		0.115288, -0.940600, -0.319344,
		-0.986645, -0.071192, -0.146503,
		29.113287, 34.532932, 43.591492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627802, 34.260727, 43.022915>,  <29.803938, 34.582767, 43.694046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627802, 34.260727, 43.022915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.297153, 34.477570, 43.083332>,  <29.098764, 34.607677, 43.119583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.297153, 34.477570, 43.083332>,  <29.627802, 34.260727, 43.022915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297153, 34.477570, 43.083332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129565, 0.444521, -0.886349,
		-0.547641, -0.713104, -0.437689,
		-0.826621, 0.542110, 0.151045,
		29.049168, 34.640202, 43.128647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405924, 34.153564, 42.409351>,  <29.627802, 34.260727, 43.022915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405924, 34.153564, 42.409351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.190395, 34.464031, 42.540344>,  <29.061077, 34.650311, 42.618938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.190395, 34.464031, 42.540344>,  <29.405924, 34.153564, 42.409351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190395, 34.464031, 42.540344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085610, 0.336273, -0.937865,
		-0.838058, -0.533378, -0.114744,
		-0.538822, 0.776163, 0.327479,
		29.028749, 34.696880, 42.638588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763702, 34.213688, 41.950470>,  <29.405924, 34.153564, 42.409351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763702, 34.213688, 41.950470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.842426, 34.562908, 42.128933>,  <28.889660, 34.772438, 42.236012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.842426, 34.562908, 42.128933>,  <28.763702, 34.213688, 41.950470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842426, 34.562908, 42.128933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022051, 0.450999, -0.892252,
		-0.980194, 0.185441, 0.069509,
		0.196808, 0.873047, 0.446155,
		28.901468, 34.824821, 42.262779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228300, 34.748333, 41.846077>,  <28.763702, 34.213688, 41.950470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228300, 34.748333, 41.846077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.597548, 34.891632, 41.901958>,  <28.819096, 34.977612, 41.935486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.597548, 34.891632, 41.901958>,  <28.228300, 34.748333, 41.846077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597548, 34.891632, 41.901958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068397, 0.510501, -0.857152,
		-0.378387, 0.781697, 0.495755,
		0.923117, 0.358244, 0.139701,
		28.874483, 34.999104, 41.943871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.263939, 34.279358, 48.045856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.481369, 34.608158, 48.113789>,  <31.611828, 34.805439, 48.154549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.481369, 34.608158, 48.113789>,  <31.263939, 34.279358, 48.045856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481369, 34.608158, 48.113789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538107, -0.185988, -0.822101,
		-0.644180, 0.538261, -0.543422,
		0.543575, 0.822000, 0.169832,
		31.644442, 34.854759, 48.164738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265913, 34.571869, 47.461330>,  <31.263939, 34.279358, 48.045856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265913, 34.571869, 47.461330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604183, 34.696472, 47.634670>,  <31.807146, 34.771233, 47.738674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604183, 34.696472, 47.634670>,  <31.265913, 34.571869, 47.461330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604183, 34.696472, 47.634670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503477, -0.196304, -0.841413,
		-0.177036, 0.929747, -0.322846,
		0.845677, 0.311506, 0.433353,
		31.857885, 34.789925, 47.764675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773920, 34.673908, 46.826485>,  <31.265913, 34.571869, 47.461330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773920, 34.673908, 46.826485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.007027, 34.681599, 47.151451>,  <32.146889, 34.686211, 47.346432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.007027, 34.681599, 47.151451>,  <31.773920, 34.673908, 46.826485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007027, 34.681599, 47.151451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788242, -0.256501, -0.559358,
		0.197632, 0.966353, -0.164633,
		0.582765, 0.019223, 0.812413,
		32.181858, 34.687366, 47.395176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299679, 35.135891, 46.695347>,  <31.773920, 34.673908, 46.826485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299679, 35.135891, 46.695347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.391800, 34.848866, 46.958275>,  <32.447071, 34.676651, 47.116032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.391800, 34.848866, 46.958275>,  <32.299679, 35.135891, 46.695347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391800, 34.848866, 46.958275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814279, -0.227759, -0.533925,
		0.532835, 0.658202, 0.531843,
		0.230299, -0.717563, 0.657317,
		32.460888, 34.633598, 47.155472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005455, 35.213299, 46.806366>,  <32.299679, 35.135891, 46.695347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005455, 35.213299, 46.806366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.928284, 34.837387, 46.919220>,  <32.881981, 34.611839, 46.986935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.928284, 34.837387, 46.919220>,  <33.005455, 35.213299, 46.806366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928284, 34.837387, 46.919220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745458, -0.327352, -0.580632,
		0.638022, 0.098303, 0.763717,
		-0.192927, -0.939775, 0.282139,
		32.870407, 34.555454, 47.003860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664768, 34.885727, 46.868668>,  <33.005455, 35.213299, 46.806366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664768, 34.885727, 46.868668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.420097, 34.569359, 46.861759>,  <33.273293, 34.379539, 46.857613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.420097, 34.569359, 46.861759>,  <33.664768, 34.885727, 46.868668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420097, 34.569359, 46.861759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696235, -0.527832, -0.486468,
		0.375639, -0.309588, 0.873528,
		-0.611680, -0.790916, -0.017272,
		33.236591, 34.332085, 46.856579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127178, 34.281868, 47.022961>,  <33.664768, 34.885727, 46.868668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127178, 34.281868, 47.022961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.802567, 34.149330, 46.830448>,  <33.607800, 34.069805, 46.714939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.802567, 34.149330, 46.830448>,  <34.127178, 34.281868, 47.022961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802567, 34.149330, 46.830448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582568, -0.395129, -0.710273,
		0.045178, -0.856786, 0.513690,
		-0.811526, -0.331348, -0.481284,
		33.559109, 34.049927, 46.686062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194096, 33.517113, 46.948093>,  <34.127178, 34.281868, 47.022961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194096, 33.517113, 46.948093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948116, 33.658562, 46.666161>,  <33.800529, 33.743431, 46.497002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948116, 33.658562, 46.666161>,  <34.194096, 33.517113, 46.948093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948116, 33.658562, 46.666161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545253, -0.455038, -0.704017,
		-0.569679, -0.817248, 0.087014,
		-0.614951, 0.353619, -0.704833,
		33.763630, 33.764648, 46.454712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187508, 32.996677, 46.506676>,  <34.194096, 33.517113, 46.948093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187508, 32.996677, 46.506676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.017632, 33.282280, 46.284023>,  <33.915707, 33.453640, 46.150433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.017632, 33.282280, 46.284023>,  <34.187508, 32.996677, 46.506676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017632, 33.282280, 46.284023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395784, -0.406540, -0.823456,
		-0.814244, -0.570017, -0.109939,
		-0.424690, 0.714007, -0.556627,
		33.890224, 33.496483, 46.117035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939346, 32.635616, 45.920780>,  <34.187508, 32.996677, 46.506676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939346, 32.635616, 45.920780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.980297, 33.012688, 45.793739>,  <34.004868, 33.238930, 45.717514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.980297, 33.012688, 45.793739>,  <33.939346, 32.635616, 45.920780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980297, 33.012688, 45.793739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396252, -0.331502, -0.856207,
		-0.912416, -0.038195, -0.407477,
		0.102377, 0.942681, -0.317603,
		34.011009, 33.295490, 45.698460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645439, 32.609142, 45.251183>,  <33.939346, 32.635616, 45.920780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645439, 32.609142, 45.251183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887794, 32.927322, 45.256123>,  <34.033207, 33.118233, 45.259087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887794, 32.927322, 45.256123>,  <33.645439, 32.609142, 45.251183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887794, 32.927322, 45.256123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276707, -0.196164, -0.940719,
		-0.745878, 0.573386, -0.338961,
		0.605887, 0.795455, 0.012345,
		34.069561, 33.165958, 45.259827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568100, 32.893017, 44.585304>,  <33.645439, 32.609142, 45.251183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568100, 32.893017, 44.585304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.922962, 33.038952, 44.698338>,  <34.135880, 33.126514, 44.766155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.922962, 33.038952, 44.698338>,  <33.568100, 32.893017, 44.585304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922962, 33.038952, 44.698338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359150, -0.161348, -0.919227,
		-0.289774, 0.916985, -0.274171,
		0.887154, 0.364837, 0.282581,
		34.189110, 33.148403, 44.783112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952091, 32.820297, 44.173447>,  <33.568100, 32.893017, 44.585304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952091, 32.820297, 44.173447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.870293, 32.512421, 43.931534>,  <32.821213, 32.327694, 43.786385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.870293, 32.512421, 43.931534>,  <32.952091, 32.820297, 44.173447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870293, 32.512421, 43.931534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672364, -0.338583, 0.658246,
		-0.711414, 0.541241, -0.448273,
		-0.204492, -0.769688, -0.604783,
		32.808945, 32.281513, 43.750099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279530, 32.714706, 44.346622>,  <32.952091, 32.820297, 44.173447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279530, 32.714706, 44.346622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414700, 32.389763, 44.156517>,  <32.495804, 32.194798, 44.042454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414700, 32.389763, 44.156517>,  <32.279530, 32.714706, 44.346622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414700, 32.389763, 44.156517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661473, -0.564214, 0.494081,
		-0.669521, 0.147408, -0.728020,
		0.337928, -0.812363, -0.475260,
		32.516079, 32.146053, 44.013939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706686, 32.377853, 43.948711>,  <32.279530, 32.714706, 44.346622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706686, 32.377853, 43.948711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981133, 32.096478, 44.022915>,  <32.145802, 31.927652, 44.067436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981133, 32.096478, 44.022915>,  <31.706686, 32.377853, 43.948711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981133, 32.096478, 44.022915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683853, -0.536658, 0.494310,
		-0.248165, -0.466014, -0.849262,
		0.686118, -0.703440, 0.185506,
		32.186970, 31.885445, 44.078568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495569, 31.689524, 43.736893>,  <31.706686, 32.377853, 43.948711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495569, 31.689524, 43.736893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.761044, 31.608765, 44.024990>,  <31.920328, 31.560308, 44.197849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.761044, 31.608765, 44.024990>,  <31.495569, 31.689524, 43.736893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761044, 31.608765, 44.024990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692756, -0.529108, 0.490035,
		0.282151, -0.824185, -0.491029,
		0.663686, -0.201899, 0.720248,
		31.960150, 31.548195, 44.241066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394003, 31.089468, 43.947289>,  <31.495569, 31.689524, 43.736893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394003, 31.089468, 43.947289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.613527, 31.207689, 44.260071>,  <31.745241, 31.278622, 44.447739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.613527, 31.207689, 44.260071>,  <31.394003, 31.089468, 43.947289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613527, 31.207689, 44.260071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640676, -0.452157, 0.620555,
		0.536974, -0.841548, -0.058794,
		0.548811, 0.295553, 0.781956,
		31.778170, 31.296356, 44.494659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227072, 30.520226, 44.442757>,  <31.394003, 31.089468, 43.947289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227072, 30.520226, 44.442757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.382458, 30.815950, 44.662762>,  <31.475689, 30.993385, 44.794765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.382458, 30.815950, 44.662762>,  <31.227072, 30.520226, 44.442757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382458, 30.815950, 44.662762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556934, -0.287151, 0.779339,
		0.734112, -0.609064, 0.300201,
		0.388464, 0.739314, 0.550009,
		31.498997, 31.037745, 44.827766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356699, 30.140102, 45.060993>,  <31.227072, 30.520226, 44.442757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356699, 30.140102, 45.060993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339033, 30.533432, 45.131561>,  <31.328434, 30.769430, 45.173901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339033, 30.533432, 45.131561>,  <31.356699, 30.140102, 45.060993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339033, 30.533432, 45.131561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690919, -0.157615, 0.705541,
		0.721582, -0.090733, 0.686358,
		-0.044164, 0.983324, 0.176421,
		31.325785, 30.828428, 45.184486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381294, 30.294319, 45.813499>,  <31.356699, 30.140102, 45.060993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381294, 30.294319, 45.813499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.187176, 30.608009, 45.658852>,  <31.070705, 30.796225, 45.566063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.187176, 30.608009, 45.658852>,  <31.381294, 30.294319, 45.813499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187176, 30.608009, 45.658852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605725, 0.017339, 0.795485,
		0.630545, 0.620231, 0.466611,
		-0.485295, 0.784227, -0.386622,
		31.041588, 30.843277, 45.542866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270805, 30.676931, 46.323071>,  <31.381294, 30.294319, 45.813499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270805, 30.676931, 46.323071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.004280, 30.851151, 46.080971>,  <30.844366, 30.955681, 45.935711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.004280, 30.851151, 46.080971>,  <31.270805, 30.676931, 46.323071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004280, 30.851151, 46.080971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607302, 0.154012, 0.779401,
		0.432681, 0.886893, 0.161888,
		-0.666312, 0.435547, -0.605250,
		30.804386, 30.981815, 45.899395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025394, 31.187284, 46.662785>,  <31.270805, 30.676931, 46.323071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025394, 31.187284, 46.662785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.740450, 31.119713, 46.390312>,  <30.569483, 31.079170, 46.226830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.740450, 31.119713, 46.390312>,  <31.025394, 31.187284, 46.662785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740450, 31.119713, 46.390312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698474, 0.076097, 0.711578,
		-0.068370, 0.982686, -0.172200,
		-0.712362, -0.168928, -0.681178,
		30.526741, 31.069035, 46.185959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591667, 31.719309, 46.863525>,  <31.025394, 31.187284, 46.662785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591667, 31.719309, 46.863525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.395723, 31.467911, 46.621853>,  <30.278158, 31.317072, 46.476849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.395723, 31.467911, 46.621853>,  <30.591667, 31.719309, 46.863525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395723, 31.467911, 46.621853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774500, -0.004427, 0.632559,
		-0.400236, 0.777800, -0.484602,
		-0.489858, -0.628497, -0.604178,
		30.248766, 31.279362, 46.440601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917589, 31.975821, 46.763832>,  <30.591667, 31.719309, 46.863525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917589, 31.975821, 46.763832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.814445, 31.628044, 46.595272>,  <29.752560, 31.419378, 46.494137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.814445, 31.628044, 46.595272>,  <29.917589, 31.975821, 46.763832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814445, 31.628044, 46.595272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850224, -0.002986, 0.526413,
		-0.458944, 0.494028, -0.738449,
		-0.257858, -0.869441, -0.421404,
		29.737087, 31.367212, 46.468849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190950, 32.104164, 46.533535>,  <29.917589, 31.975821, 46.763832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190950, 32.104164, 46.533535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.258081, 31.710510, 46.556583>,  <29.298361, 31.474319, 46.570412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.258081, 31.710510, 46.556583>,  <29.190950, 32.104164, 46.533535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258081, 31.710510, 46.556583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849761, -0.114788, 0.514520,
		-0.499741, -0.135315, -0.855540,
		0.167828, -0.984131, 0.057621,
		29.308430, 31.415272, 46.573872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643053, 31.780666, 46.159622>,  <29.190950, 32.104164, 46.533535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643053, 31.780666, 46.159622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.797935, 31.540964, 46.439899>,  <28.890865, 31.397142, 46.608067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.797935, 31.540964, 46.439899>,  <28.643053, 31.780666, 46.159622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797935, 31.540964, 46.439899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899712, -0.079522, 0.429179,
		-0.201468, -0.796599, -0.569948,
		0.387207, -0.599255, 0.700688,
		28.914097, 31.361187, 46.650105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157913, 32.241371, 46.576195>,  <28.643053, 31.780666, 46.159622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157913, 32.241371, 46.576195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.877790, 32.525948, 46.552788>,  <27.709717, 32.696693, 46.538742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.877790, 32.525948, 46.552788>,  <28.157913, 32.241371, 46.576195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877790, 32.525948, 46.552788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604643, 0.547608, -0.578388,
		-0.379440, -0.440435, -0.813660,
		-0.700309, 0.711437, -0.058522,
		27.667698, 32.739380, 46.535233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995348, 32.379974, 45.798500>,  <28.157913, 32.241371, 46.576195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995348, 32.379974, 45.798500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.876188, 32.709217, 45.991890>,  <27.804693, 32.906765, 46.107925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.876188, 32.709217, 45.991890>,  <27.995348, 32.379974, 45.798500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876188, 32.709217, 45.991890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436764, 0.567874, -0.697679,
		-0.848819, 0.003326, -0.528674,
		-0.297900, 0.823108, 0.483475,
		27.786818, 32.956150, 46.136932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614050, 32.703094, 45.253056>,  <27.995348, 32.379974, 45.798500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614050, 32.703094, 45.253056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.740999, 32.956890, 45.534962>,  <27.817169, 33.109169, 45.704105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.740999, 32.956890, 45.534962>,  <27.614050, 32.703094, 45.253056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740999, 32.956890, 45.534962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394217, 0.587651, -0.706583,
		-0.862477, 0.502082, -0.063622,
		0.317375, 0.634492, 0.704765,
		27.836212, 33.147236, 45.746391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232346, 33.357784, 45.186840>,  <27.614050, 32.703094, 45.253056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232346, 33.357784, 45.186840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.578829, 33.446064, 45.366161>,  <27.786718, 33.499031, 45.473755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.578829, 33.446064, 45.366161>,  <27.232346, 33.357784, 45.186840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578829, 33.446064, 45.366161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167829, 0.716553, -0.677042,
		-0.470654, 0.661698, 0.583645,
		0.866209, 0.220700, 0.448300,
		27.838692, 33.512276, 45.500652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304951, 34.113064, 45.133232>,  <27.232346, 33.357784, 45.186840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304951, 34.113064, 45.133232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.671623, 33.968086, 45.200562>,  <27.891626, 33.881100, 45.240959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.671623, 33.968086, 45.200562>,  <27.304951, 34.113064, 45.133232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671623, 33.968086, 45.200562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374170, 0.630527, -0.680023,
		0.140338, 0.686345, 0.713607,
		0.916680, -0.362444, 0.168323,
		27.946627, 33.859352, 45.251057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719542, 34.613724, 45.213753>,  <27.304951, 34.113064, 45.133232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719542, 34.613724, 45.213753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.979664, 34.330429, 45.103844>,  <28.135738, 34.160450, 45.037899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.979664, 34.330429, 45.103844>,  <27.719542, 34.613724, 45.213753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979664, 34.330429, 45.103844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364559, 0.608274, -0.705053,
		0.666481, 0.358331, 0.653759,
		0.650307, -0.708238, -0.274770,
		28.174757, 34.117958, 45.021412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370104, 34.966156, 45.035667>,  <27.719542, 34.613724, 45.213753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370104, 34.966156, 45.035667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.448896, 34.603207, 44.887142>,  <28.496172, 34.385437, 44.798027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.448896, 34.603207, 44.887142>,  <28.370104, 34.966156, 45.035667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448896, 34.603207, 44.887142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294945, 0.416035, -0.860187,
		0.934990, 0.059922, 0.349576,
		0.196980, -0.907372, -0.371314,
		28.507990, 34.330994, 44.775749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794621, 35.561497, 45.165176>,  <28.370104, 34.966156, 45.035667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794621, 35.561497, 45.165176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.829685, 35.957954, 45.205063>,  <28.850723, 36.195831, 45.228992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.829685, 35.957954, 45.205063>,  <28.794621, 35.561497, 45.165176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829685, 35.957954, 45.205063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331219, -0.065403, 0.941284,
		0.939473, -0.115542, 0.322554,
		0.087662, 0.991147, 0.099714,
		28.855984, 36.255299, 45.234978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229017, 35.712402, 45.694557>,  <28.794621, 35.561497, 45.165176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229017, 35.712402, 45.694557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.996780, 36.037453, 45.674381>,  <28.857439, 36.232483, 45.662273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.996780, 36.037453, 45.674381>,  <29.229017, 35.712402, 45.694557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996780, 36.037453, 45.674381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092131, -0.004014, 0.995739,
		0.808965, 0.582765, 0.077199,
		-0.580592, 0.812631, -0.050443,
		28.822603, 36.281242, 45.659248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310535, 36.022896, 46.308773>,  <29.229017, 35.712402, 45.694557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310535, 36.022896, 46.308773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.003262, 36.246044, 46.183121>,  <28.818897, 36.379932, 46.107731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.003262, 36.246044, 46.183121>,  <29.310535, 36.022896, 46.308773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003262, 36.246044, 46.183121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414579, -0.059557, 0.908062,
		0.487872, 0.827788, 0.277032,
		-0.768183, 0.557870, -0.314127,
		28.772806, 36.413406, 46.088882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217615, 36.784695, 46.730911>,  <29.310535, 36.022896, 46.308773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217615, 36.784695, 46.730911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.872612, 36.646694, 46.582829>,  <28.665609, 36.563896, 46.493980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.872612, 36.646694, 46.582829>,  <29.217615, 36.784695, 46.730911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872612, 36.646694, 46.582829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421211, 0.083990, 0.903065,
		-0.280462, 0.934838, -0.217759,
		-0.862509, -0.344998, -0.370208,
		28.613859, 36.543194, 46.471767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760313, 37.270294, 46.910694>,  <29.217615, 36.784695, 46.730911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760313, 37.270294, 46.910694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.546253, 36.940353, 46.837769>,  <28.417818, 36.742390, 46.794014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.546253, 36.940353, 46.837769>,  <28.760313, 37.270294, 46.910694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546253, 36.940353, 46.837769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599349, 0.218642, 0.770050,
		-0.595313, 0.521362, -0.611379,
		-0.535148, -0.824850, -0.182317,
		28.385708, 36.692898, 46.783073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012930, 37.502438, 47.019634>,  <28.760313, 37.270294, 46.910694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012930, 37.502438, 47.019634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.037609, 37.103451, 47.033749>,  <28.052418, 36.864059, 47.042217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.037609, 37.103451, 47.033749>,  <28.012930, 37.502438, 47.019634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037609, 37.103451, 47.033749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538686, -0.003515, 0.842499,
		-0.840244, -0.070991, -0.537540,
		0.061699, -0.997471, 0.035289,
		28.056118, 36.804211, 47.044334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471251, 37.383759, 47.286110>,  <28.012930, 37.502438, 47.019634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471251, 37.383759, 47.286110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.654293, 37.037731, 47.368332>,  <27.764118, 36.830116, 47.417664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.654293, 37.037731, 47.368332>,  <27.471251, 37.383759, 47.286110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654293, 37.037731, 47.368332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536686, -0.084408, 0.839549,
		-0.708919, -0.494499, -0.502897,
		0.457605, -0.865070, 0.205553,
		27.791574, 36.778210, 47.429996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955551, 36.955750, 47.603844>,  <27.471251, 37.383759, 47.286110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955551, 36.955750, 47.603844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.301683, 36.790211, 47.716938>,  <27.509363, 36.690887, 47.784794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.301683, 36.790211, 47.716938>,  <26.955551, 36.955750, 47.603844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301683, 36.790211, 47.716938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345990, -0.085095, 0.934371,
		-0.362624, -0.906362, -0.216821,
		0.865329, -0.413843, 0.282734,
		27.561283, 36.666058, 47.801758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698793, 36.373623, 47.977962>,  <26.955551, 36.955750, 47.603844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698793, 36.373623, 47.977962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.060278, 36.465767, 48.122314>,  <27.277168, 36.521053, 48.208927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.060278, 36.465767, 48.122314>,  <26.698793, 36.373623, 47.977962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060278, 36.465767, 48.122314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363952, -0.030568, 0.930916,
		0.225480, -0.972625, 0.056216,
		0.903713, 0.230363, 0.360881,
		27.331392, 36.534874, 48.230579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.081314, 38.259872, 34.523808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307343, 38.262592, 34.853813>,  <36.442959, 38.264225, 35.051815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307343, 38.262592, 34.853813>,  <36.081314, 38.259872, 34.523808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307343, 38.262592, 34.853813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806458, -0.206478, 0.554069,
		0.174116, -0.978427, -0.111190,
		0.565074, 0.006802, 0.825012,
		36.476864, 38.264633, 35.101318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878380, 37.657459, 34.899532>,  <36.081314, 38.259872, 34.523808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878380, 37.657459, 34.899532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062191, 37.894485, 35.164169>,  <36.172478, 38.036701, 35.322952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062191, 37.894485, 35.164169>,  <35.878380, 37.657459, 34.899532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062191, 37.894485, 35.164169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675343, -0.250671, 0.693596,
		0.576844, -0.765525, 0.284997,
		0.459525, 0.592567, 0.661590,
		36.200050, 38.072254, 35.362648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918819, 37.296021, 35.560291>,  <35.878380, 37.657459, 34.899532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918819, 37.296021, 35.560291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956844, 37.678509, 35.670998>,  <35.979660, 37.908001, 35.737423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956844, 37.678509, 35.670998>,  <35.918819, 37.296021, 35.560291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956844, 37.678509, 35.670998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811215, -0.086728, 0.578280,
		0.576969, -0.279490, 0.767459,
		0.095063, 0.956224, 0.276766,
		35.985363, 37.965374, 35.754028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849030, 37.232121, 36.305355>,  <35.918819, 37.296021, 35.560291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849030, 37.232121, 36.305355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784466, 37.606434, 36.179966>,  <35.745728, 37.831020, 36.104733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784466, 37.606434, 36.179966>,  <35.849030, 37.232121, 36.305355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784466, 37.606434, 36.179966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810507, 0.055522, 0.583091,
		0.563049, 0.348186, 0.749495,
		-0.161411, 0.935780, -0.313469,
		35.736042, 37.887169, 36.085926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867165, 37.627773, 36.913982>,  <35.849030, 37.232121, 36.305355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867165, 37.627773, 36.913982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658596, 37.843513, 36.649490>,  <35.533455, 37.972958, 36.490795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658596, 37.843513, 36.649490>,  <35.867165, 37.627773, 36.913982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658596, 37.843513, 36.649490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760673, 0.057320, 0.646599,
		0.386643, 0.840131, 0.380379,
		-0.521425, 0.539347, -0.661227,
		35.502171, 38.005318, 36.451122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561596, 38.076504, 37.305473>,  <35.867165, 37.627773, 36.913982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561596, 38.076504, 37.305473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355099, 38.077190, 36.962898>,  <35.231201, 38.077602, 36.757355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355099, 38.077190, 36.962898>,  <35.561596, 38.076504, 37.305473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355099, 38.077190, 36.962898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856187, 0.023255, 0.516142,
		0.020802, 0.999728, -0.010535,
		-0.516247, 0.001717, -0.856438,
		35.200226, 38.077705, 36.705967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059349, 38.549988, 37.480755>,  <35.561596, 38.076504, 37.305473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059349, 38.549988, 37.480755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927898, 38.336559, 37.169037>,  <34.849030, 38.208504, 36.982006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927898, 38.336559, 37.169037>,  <35.059349, 38.549988, 37.480755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927898, 38.336559, 37.169037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915244, -0.023729, 0.402201,
		-0.233095, 0.845422, -0.480550,
		-0.328627, -0.533571, -0.779298,
		34.829311, 38.176487, 36.935246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432827, 38.881687, 37.164402>,  <35.059349, 38.549988, 37.480755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432827, 38.881687, 37.164402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390629, 38.496452, 37.065346>,  <34.365311, 38.265312, 37.005913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390629, 38.496452, 37.065346>,  <34.432827, 38.881687, 37.164402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390629, 38.496452, 37.065346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858113, -0.037675, 0.512076,
		-0.502506, 0.266524, -0.822467,
		-0.105494, -0.963092, -0.247640,
		34.358982, 38.207523, 36.991055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720932, 38.752983, 37.104107>,  <34.432827, 38.881687, 37.164402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720932, 38.752983, 37.104107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826698, 38.367233, 37.107311>,  <33.890156, 38.135784, 37.109234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826698, 38.367233, 37.107311>,  <33.720932, 38.752983, 37.104107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826698, 38.367233, 37.107311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820189, -0.220496, 0.527894,
		-0.507323, -0.146148, -0.849273,
		0.264412, -0.964377, 0.008007,
		33.906021, 38.077919, 37.109715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091148, 38.386517, 36.867599>,  <33.720932, 38.752983, 37.104107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091148, 38.386517, 36.867599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323082, 38.146454, 37.088001>,  <33.462242, 38.002415, 37.220242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323082, 38.146454, 37.088001>,  <33.091148, 38.386517, 36.867599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323082, 38.146454, 37.088001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781109, -0.217190, 0.585403,
		-0.231672, -0.769819, -0.594733,
		0.579824, -0.600173, 0.550996,
		33.497032, 37.966408, 37.253304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721146, 37.780945, 36.917435>,  <33.091148, 38.386517, 36.867599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721146, 37.780945, 36.917435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996380, 37.757015, 37.206699>,  <33.161518, 37.742657, 37.380257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996380, 37.757015, 37.206699>,  <32.721146, 37.780945, 36.917435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996380, 37.757015, 37.206699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678950, -0.404765, 0.612529,
		0.256064, -0.912461, -0.319133,
		0.688083, -0.059828, 0.723162,
		33.202805, 37.739067, 37.423649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504581, 37.159676, 37.289585>,  <32.721146, 37.780945, 36.917435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504581, 37.159676, 37.289585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758087, 37.368233, 37.518143>,  <32.910191, 37.493366, 37.655277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758087, 37.368233, 37.518143>,  <32.504581, 37.159676, 37.289585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758087, 37.368233, 37.518143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544476, -0.224005, 0.808311,
		0.549445, -0.823389, 0.141921,
		0.633763, 0.521395, 0.571394,
		32.948215, 37.524651, 37.689560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356262, 36.515499, 37.021809>,  <32.504581, 37.159676, 37.289585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356262, 36.515499, 37.021809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018978, 36.357632, 36.875805>,  <31.816608, 36.262909, 36.788200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018978, 36.357632, 36.875805>,  <32.356262, 36.515499, 37.021809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018978, 36.357632, 36.875805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425457, -0.074881, -0.901875,
		0.328613, -0.915765, 0.231057,
		-0.843208, -0.394673, -0.365012,
		31.766016, 36.239231, 36.766300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489056, 35.764446, 36.791767>,  <32.356262, 36.515499, 37.021809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489056, 35.764446, 36.791767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197369, 35.976357, 36.618523>,  <32.022358, 36.103500, 36.514576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197369, 35.976357, 36.618523>,  <32.489056, 35.764446, 36.791767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197369, 35.976357, 36.618523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461046, -0.087332, -0.883069,
		-0.505651, -0.843631, -0.180565,
		-0.729215, 0.529773, -0.433112,
		31.978603, 36.135288, 36.488590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431423, 35.398930, 36.213688>,  <32.489056, 35.764446, 36.791767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431423, 35.398930, 36.213688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211533, 35.716278, 36.109100>,  <32.079597, 35.906689, 36.046349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211533, 35.716278, 36.109100>,  <32.431423, 35.398930, 36.213688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211533, 35.716278, 36.109100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314024, -0.093777, -0.944773,
		-0.774077, -0.601468, -0.197587,
		-0.549722, 0.793374, -0.261466,
		32.046616, 35.954288, 36.030659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066990, 35.217342, 35.649132>,  <32.431423, 35.398930, 36.213688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066990, 35.217342, 35.649132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059731, 35.617229, 35.642906>,  <32.055374, 35.857162, 35.639172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059731, 35.617229, 35.642906>,  <32.066990, 35.217342, 35.649132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059731, 35.617229, 35.642906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412669, -0.006691, -0.910857,
		-0.910701, -0.022955, -0.412429,
		-0.018149, 0.999714, -0.015566,
		32.054287, 35.917145, 35.638237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851856, 35.393528, 34.962868>,  <32.066990, 35.217342, 35.649132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851856, 35.393528, 34.962868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023647, 35.727253, 35.101131>,  <32.126720, 35.927486, 35.184090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023647, 35.727253, 35.101131>,  <31.851856, 35.393528, 34.962868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023647, 35.727253, 35.101131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714106, -0.079447, -0.695515,
		-0.552814, 0.545542, -0.629906,
		0.429477, 0.834310, 0.345655,
		32.152489, 35.977547, 35.204826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963875, 35.762833, 34.350674>,  <31.851856, 35.393528, 34.962868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963875, 35.762833, 34.350674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196453, 35.954113, 34.613960>,  <32.335999, 36.068882, 34.771931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196453, 35.954113, 34.613960>,  <31.963875, 35.762833, 34.350674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196453, 35.954113, 34.613960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731801, 0.046121, -0.679956,
		-0.355511, 0.877040, -0.323129,
		0.581446, 0.478198, 0.658215,
		32.370888, 36.097572, 34.811424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193371, 36.394150, 34.074718>,  <31.963875, 35.762833, 34.350674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193371, 36.394150, 34.074718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453297, 36.300034, 34.363823>,  <32.609253, 36.243565, 34.537285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453297, 36.300034, 34.363823>,  <32.193371, 36.394150, 34.074718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453297, 36.300034, 34.363823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751965, 0.060294, -0.656440,
		0.110873, 0.970054, 0.216107,
		0.649812, -0.235286, 0.722762,
		32.648239, 36.229446, 34.580650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740051, 36.766136, 33.823860>,  <32.193371, 36.394150, 34.074718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740051, 36.766136, 33.823860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899834, 36.533047, 34.106949>,  <32.995705, 36.393192, 34.276802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899834, 36.533047, 34.106949>,  <32.740051, 36.766136, 33.823860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899834, 36.533047, 34.106949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878706, 0.023281, -0.476795,
		0.261361, 0.812340, 0.521339,
		0.399457, -0.582720, 0.707723,
		33.019672, 36.358231, 34.319267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389111, 37.068581, 34.050724>,  <32.740051, 36.766136, 33.823860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389111, 37.068581, 34.050724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409298, 36.682587, 34.153690>,  <33.421410, 36.450993, 34.215469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409298, 36.682587, 34.153690>,  <33.389111, 37.068581, 34.050724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409298, 36.682587, 34.153690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925002, -0.052028, -0.376383,
		0.376596, 0.257106, 0.889984,
		0.050466, -0.964982, 0.257417,
		33.424438, 36.393093, 34.230915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971695, 37.034245, 34.363232>,  <33.389111, 37.068581, 34.050724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971695, 37.034245, 34.363232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884285, 36.670044, 34.222809>,  <33.831837, 36.451523, 34.138557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884285, 36.670044, 34.222809>,  <33.971695, 37.034245, 34.363232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884285, 36.670044, 34.222809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929527, -0.084722, -0.358888,
		0.297025, -0.404740, 0.864848,
		-0.218528, -0.910498, -0.351053,
		33.818726, 36.396893, 34.117493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581284, 36.596310, 34.527493>,  <33.971695, 37.034245, 34.363232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581284, 36.596310, 34.527493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375038, 36.405586, 34.242737>,  <34.251289, 36.291153, 34.071884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375038, 36.405586, 34.242737>,  <34.581284, 36.596310, 34.527493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375038, 36.405586, 34.242737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852020, -0.373142, -0.367188,
		-0.090556, -0.795873, 0.598653,
		-0.515618, -0.476813, -0.711890,
		34.220352, 36.262543, 34.029171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979450, 35.924530, 34.486649>,  <34.581284, 36.596310, 34.527493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979450, 35.924530, 34.486649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775387, 35.998924, 34.150757>,  <34.652950, 36.043560, 33.949223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775387, 35.998924, 34.150757>,  <34.979450, 35.924530, 34.486649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775387, 35.998924, 34.150757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707063, -0.465194, -0.532595,
		-0.489694, -0.865449, 0.105816,
		-0.510159, 0.185990, -0.839730,
		34.622337, 36.054722, 33.898838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134850, 35.366459, 34.071468>,  <34.979450, 35.924530, 34.486649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134850, 35.366459, 34.071468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950069, 35.605415, 33.809254>,  <34.839203, 35.748791, 33.651924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950069, 35.605415, 33.809254>,  <35.134850, 35.366459, 34.071468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950069, 35.605415, 33.809254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520029, -0.416301, -0.745831,
		-0.718453, -0.685432, -0.118352,
		-0.461947, 0.597391, -0.655537,
		34.811485, 35.784634, 33.612591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364269, 35.334316, 34.214645>,  <35.134850, 35.366459, 34.071468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364269, 35.334316, 34.214645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624935, 35.146114, 33.976665>,  <34.781334, 35.033195, 33.833878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624935, 35.146114, 33.976665>,  <34.364269, 35.334316, 34.214645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624935, 35.146114, 33.976665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295412, -0.565002, 0.770392,
		-0.698618, -0.677791, -0.229200,
		0.651663, -0.470501, -0.594948,
		34.820435, 35.004963, 33.798180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311275, 34.638786, 34.212917>,  <34.364269, 35.334316, 34.214645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311275, 34.638786, 34.212917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694614, 34.676384, 34.105042>,  <34.924618, 34.698944, 34.040318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694614, 34.676384, 34.105042>,  <34.311275, 34.638786, 34.212917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694614, 34.676384, 34.105042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260748, -0.673220, 0.691944,
		-0.116517, -0.733444, -0.669689,
		0.958350, 0.093997, -0.269686,
		34.982121, 34.704582, 34.024136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465694, 34.026581, 33.802097>,  <34.311275, 34.638786, 34.212917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465694, 34.026581, 33.802097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720539, 34.189663, 34.063740>,  <34.873447, 34.287514, 34.220726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720539, 34.189663, 34.063740>,  <34.465694, 34.026581, 33.802097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720539, 34.189663, 34.063740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129569, -0.893223, 0.430540,
		0.759799, -0.189552, -0.621912,
		0.637116, 0.407705, 0.654110,
		34.911674, 34.311974, 34.259972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117184, 33.690937, 33.774048>,  <34.465694, 34.026581, 33.802097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117184, 33.690937, 33.774048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053261, 33.845852, 34.137249>,  <35.014908, 33.938801, 34.355171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053261, 33.845852, 34.137249>,  <35.117184, 33.690937, 33.774048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053261, 33.845852, 34.137249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266427, -0.868766, 0.417448,
		0.950514, 0.308628, 0.035652,
		-0.159809, 0.387292, 0.908001,
		35.005318, 33.962040, 34.409649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527763, 33.293282, 34.272266>,  <35.117184, 33.690937, 33.774048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527763, 33.293282, 34.272266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294731, 33.492424, 34.529247>,  <35.154911, 33.611912, 34.683434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294731, 33.492424, 34.529247>,  <35.527763, 33.293282, 34.272266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294731, 33.492424, 34.529247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052454, -0.765760, 0.640984,
		0.811081, 0.407122, 0.419999,
		-0.582577, 0.497859, 0.642449,
		35.119957, 33.641781, 34.721981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802742, 33.344261, 34.995487>,  <35.527763, 33.293282, 34.272266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802742, 33.344261, 34.995487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407543, 33.361259, 35.054890>,  <35.170425, 33.371460, 35.090530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407543, 33.361259, 35.054890>,  <35.802742, 33.344261, 34.995487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407543, 33.361259, 35.054890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076689, -0.699577, 0.710430,
		0.134082, 0.713292, 0.687921,
		-0.987998, 0.042500, 0.148503,
		35.111145, 33.374008, 35.099442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680134, 33.502922, 35.701408>,  <35.802742, 33.344261, 34.995487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680134, 33.502922, 35.701408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327217, 33.348930, 35.593071>,  <35.115467, 33.256535, 35.528069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327217, 33.348930, 35.593071>,  <35.680134, 33.502922, 35.701408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327217, 33.348930, 35.593071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057037, -0.483724, 0.873360,
		-0.467239, 0.786005, 0.404826,
		-0.882289, -0.384978, -0.270846,
		35.062531, 33.233437, 35.511818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376122, 33.393188, 36.313583>,  <35.680134, 33.502922, 35.701408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376122, 33.393188, 36.313583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150719, 33.173687, 36.066574>,  <35.015476, 33.041988, 35.918369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150719, 33.173687, 36.066574>,  <35.376122, 33.393188, 36.313583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150719, 33.173687, 36.066574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238148, -0.607865, 0.757486,
		-0.791042, 0.573909, 0.211851,
		-0.563505, -0.548752, -0.617522,
		34.981667, 33.009060, 35.881317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873074, 33.203697, 36.715225>,  <35.376122, 33.393188, 36.313583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873074, 33.203697, 36.715225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847454, 32.939716, 36.415794>,  <34.832081, 32.781326, 36.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847454, 32.939716, 36.415794>,  <34.873074, 33.203697, 36.715225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847454, 32.939716, 36.415794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342588, -0.689987, 0.637614,
		-0.937300, 0.297290, -0.181899,
		-0.064048, -0.659952, -0.748573,
		34.828239, 32.741730, 36.191223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155685, 32.938133, 36.696205>,  <34.873074, 33.203697, 36.715225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155685, 32.938133, 36.696205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387554, 32.668629, 36.512890>,  <34.526676, 32.506927, 36.402901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387554, 32.668629, 36.512890>,  <34.155685, 32.938133, 36.696205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387554, 32.668629, 36.512890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356181, -0.715354, 0.601168,
		-0.732883, -0.185244, -0.654650,
		0.579670, -0.673760, -0.458291,
		34.561455, 32.466499, 36.375401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737556, 32.361992, 36.798870>,  <34.155685, 32.938133, 36.696205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737556, 32.361992, 36.798870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110188, 32.259293, 36.695911>,  <34.333767, 32.197674, 36.634136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110188, 32.259293, 36.695911>,  <33.737556, 32.361992, 36.798870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110188, 32.259293, 36.695911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082720, -0.539738, 0.837759,
		-0.354017, -0.801726, -0.481567,
		0.931574, -0.256746, -0.257395,
		34.389660, 32.182270, 36.618694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622643, 31.688593, 36.648567>,  <33.737556, 32.361992, 36.798870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622643, 31.688593, 36.648567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996471, 31.784290, 36.753891>,  <34.220768, 31.841709, 36.817085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996471, 31.784290, 36.753891>,  <33.622643, 31.688593, 36.648567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996471, 31.784290, 36.753891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111863, -0.504958, 0.855864,
		0.337720, -0.829324, -0.445159,
		0.934576, 0.239245, 0.263305,
		34.276844, 31.856064, 36.832882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661701, 31.290903, 37.195057>,  <33.622643, 31.688593, 36.648567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661701, 31.290903, 37.195057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995583, 31.508282, 37.230679>,  <34.195911, 31.638708, 37.252052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995583, 31.508282, 37.230679>,  <33.661701, 31.290903, 37.195057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995583, 31.508282, 37.230679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031243, -0.208187, 0.977590,
		0.549806, -0.813219, -0.190754,
		0.834707, 0.543445, 0.089055,
		34.245995, 31.671314, 37.257397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062958, 30.864784, 37.582890>,  <33.661701, 31.290903, 37.195057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062958, 30.864784, 37.582890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221756, 31.229931, 37.620995>,  <34.317036, 31.449018, 37.643856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221756, 31.229931, 37.620995>,  <34.062958, 30.864784, 37.582890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221756, 31.229931, 37.620995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168642, -0.174575, 0.970095,
		0.902196, -0.369054, -0.223252,
		0.396992, 0.912865, 0.095263,
		34.340855, 31.503790, 37.649574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519970, 30.743647, 38.139362>,  <34.062958, 30.864784, 37.582890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519970, 30.743647, 38.139362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465668, 31.139723, 38.126141>,  <34.433086, 31.377369, 38.118206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465668, 31.139723, 38.126141>,  <34.519970, 30.743647, 38.139362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465668, 31.139723, 38.126141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089102, 0.045433, 0.994986,
		0.986728, 0.132125, -0.094396,
		-0.135752, 0.990191, -0.033057,
		34.424942, 31.436781, 38.116222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122532, 31.038607, 38.446232>,  <34.519970, 30.743647, 38.139362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122532, 31.038607, 38.446232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813381, 31.284403, 38.509552>,  <34.627892, 31.431881, 38.547546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813381, 31.284403, 38.509552>,  <35.122532, 31.038607, 38.446232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813381, 31.284403, 38.509552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227776, 0.035807, 0.973055,
		0.592267, 0.788109, -0.167642,
		-0.772877, 0.614493, 0.158305,
		34.581520, 31.468750, 38.557045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326759, 31.414066, 39.036983>,  <35.122532, 31.038607, 38.446232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326759, 31.414066, 39.036983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943062, 31.523521, 39.008797>,  <34.712841, 31.589195, 38.991882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943062, 31.523521, 39.008797>,  <35.326759, 31.414066, 39.036983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943062, 31.523521, 39.008797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034961, 0.132538, 0.990561,
		0.280396, 0.952657, -0.117570,
		-0.959248, 0.273639, -0.070469,
		34.655289, 31.605614, 38.987656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252117, 32.043182, 39.439831>,  <35.326759, 31.414066, 39.036983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252117, 32.043182, 39.439831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869675, 31.928209, 39.417038>,  <34.640209, 31.859226, 39.403362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869675, 31.928209, 39.417038>,  <35.252117, 32.043182, 39.439831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869675, 31.928209, 39.417038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168528, 0.380315, 0.909373,
		-0.239710, 0.879059, -0.412061,
		-0.956105, -0.287430, -0.056980,
		34.582844, 31.841980, 39.399944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797188, 32.623039, 39.548290>,  <35.252117, 32.043182, 39.439831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797188, 32.623039, 39.548290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576283, 32.301216, 39.635643>,  <34.443741, 32.108120, 39.688053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576283, 32.301216, 39.635643>,  <34.797188, 32.623039, 39.548290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576283, 32.301216, 39.635643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430929, 0.499738, 0.751374,
		-0.713657, 0.320850, -0.622695,
		-0.552262, -0.804560, 0.218378,
		34.410603, 32.059849, 39.701157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177483, 32.950680, 39.871208>,  <34.797188, 32.623039, 39.548290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177483, 32.950680, 39.871208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104664, 32.564575, 39.946182>,  <34.060974, 32.332912, 39.991169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104664, 32.564575, 39.946182>,  <34.177483, 32.950680, 39.871208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104664, 32.564575, 39.946182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650246, 0.261172, 0.713421,
		-0.737590, 0.007995, -0.675201,
		-0.182047, -0.965259, 0.187439,
		34.050049, 32.274998, 40.002415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400558, 32.775154, 39.859875>,  <34.177483, 32.950680, 39.871208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400558, 32.775154, 39.859875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558525, 32.475697, 40.072884>,  <33.653305, 32.296024, 40.200687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558525, 32.475697, 40.072884>,  <33.400558, 32.775154, 39.859875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558525, 32.475697, 40.072884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582020, 0.244609, 0.775513,
		-0.710840, -0.616200, -0.339124,
		0.394918, -0.748642, 0.532518,
		33.677002, 32.251102, 40.232639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823792, 32.517189, 40.137489>,  <33.400558, 32.775154, 39.859875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823792, 32.517189, 40.137489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145508, 32.382023, 40.333012>,  <33.338539, 32.300922, 40.450325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145508, 32.382023, 40.333012>,  <32.823792, 32.517189, 40.137489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145508, 32.382023, 40.333012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492781, 0.080425, 0.866429,
		-0.332090, -0.937735, -0.101832,
		0.804290, -0.337913, 0.488806,
		33.386795, 32.280651, 40.479652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595192, 31.982288, 40.698921>,  <32.823792, 32.517189, 40.137489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595192, 31.982288, 40.698921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953827, 32.113377, 40.818069>,  <33.169010, 32.192028, 40.889561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953827, 32.113377, 40.818069>,  <32.595192, 31.982288, 40.698921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953827, 32.113377, 40.818069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297450, -0.052691, 0.953282,
		0.328104, -0.943305, 0.050238,
		0.896589, 0.327719, 0.297874,
		33.222805, 32.211693, 40.907433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648628, 31.745258, 41.437107>,  <32.595192, 31.982288, 40.698921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648628, 31.745258, 41.437107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991711, 31.947866, 41.401848>,  <33.197559, 32.069431, 41.380692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991711, 31.947866, 41.401848>,  <32.648628, 31.745258, 41.437107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991711, 31.947866, 41.401848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048358, 0.091218, 0.994656,
		0.511855, -0.857389, 0.053745,
		0.857709, 0.506521, -0.088152,
		33.249023, 32.099823, 41.375401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228519, 31.404268, 41.823109>,  <32.648628, 31.745258, 41.437107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228519, 31.404268, 41.823109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284298, 31.799778, 41.801640>,  <33.317764, 32.037083, 41.788757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284298, 31.799778, 41.801640>,  <33.228519, 31.404268, 41.823109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284298, 31.799778, 41.801640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031578, 0.049738, 0.998263,
		0.989726, -0.140897, -0.024287,
		0.139444, 0.988774, -0.053676,
		33.326130, 32.096409, 41.785538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759197, 31.444731, 42.270596>,  <33.228519, 31.404268, 41.823109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759197, 31.444731, 42.270596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578651, 31.797354, 42.215279>,  <33.470325, 32.008926, 42.182087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578651, 31.797354, 42.215279>,  <33.759197, 31.444731, 42.270596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578651, 31.797354, 42.215279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001097, 0.154427, 0.988003,
		0.892339, 0.446102, -0.068736,
		-0.451365, 0.881558, -0.138291,
		33.443241, 32.061821, 42.173790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016747, 31.890869, 42.719528>,  <33.759197, 31.444731, 42.270596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016747, 31.890869, 42.719528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670788, 32.074566, 42.638481>,  <33.463215, 32.184784, 42.589851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670788, 32.074566, 42.638481>,  <34.016747, 31.890869, 42.719528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670788, 32.074566, 42.638481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165652, 0.119908, 0.978867,
		0.473832, 0.880182, -0.027634,
		-0.864895, 0.459241, -0.202620,
		33.411320, 32.212337, 42.577694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968204, 32.542885, 43.084991>,  <34.016747, 31.890869, 42.719528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968204, 32.542885, 43.084991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601692, 32.403091, 43.006710>,  <33.381786, 32.319218, 42.959740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601692, 32.403091, 43.006710>,  <33.968204, 32.542885, 43.084991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601692, 32.403091, 43.006710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227191, 0.051069, 0.972510,
		-0.329879, 0.935551, -0.126192,
		-0.916277, -0.349480, -0.195702,
		33.326809, 32.298248, 42.947998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681320, 32.566010, 43.782288>,  <33.968204, 32.542885, 43.084991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681320, 32.566010, 43.782288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397354, 32.372395, 43.577652>,  <33.226974, 32.256226, 43.454868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397354, 32.372395, 43.577652>,  <33.681320, 32.566010, 43.782288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397354, 32.372395, 43.577652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397702, -0.323984, 0.858410,
		-0.581252, 0.812859, 0.037498,
		-0.709915, -0.484039, -0.511593,
		33.184380, 32.227184, 43.424175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822334, 33.304264, 43.965969>,  <33.681320, 32.566010, 43.782288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822334, 33.304264, 43.965969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146957, 33.238087, 44.190109>,  <34.341732, 33.198380, 44.324593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146957, 33.238087, 44.190109>,  <33.822334, 33.304264, 43.965969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146957, 33.238087, 44.190109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544640, -0.132970, -0.828062,
		0.211504, 0.977215, -0.017808,
		0.811562, -0.165440, 0.560354,
		34.390427, 33.188454, 44.358215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357674, 33.711433, 43.773781>,  <33.822334, 33.304264, 43.965969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357674, 33.711433, 43.773781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590652, 33.471970, 43.993732>,  <34.730438, 33.328289, 44.125702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590652, 33.471970, 43.993732>,  <34.357674, 33.711433, 43.773781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590652, 33.471970, 43.993732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715663, 0.056875, -0.696126,
		0.385470, 0.798980, 0.461567,
		0.582443, -0.598662, 0.549877,
		34.765385, 33.292370, 44.158695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021217, 34.040981, 43.714516>,  <34.357674, 33.711433, 43.773781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021217, 34.040981, 43.714516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095333, 33.667572, 43.837288>,  <35.139801, 33.443527, 43.910950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095333, 33.667572, 43.837288>,  <35.021217, 34.040981, 43.714516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095333, 33.667572, 43.837288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824095, -0.022522, -0.566003,
		0.535289, 0.357811, 0.765139,
		0.185290, -0.933522, 0.306926,
		35.150921, 33.387516, 43.929367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682076, 34.041592, 43.786663>,  <35.021217, 34.040981, 43.714516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682076, 34.041592, 43.786663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607883, 33.648533, 43.787792>,  <35.563370, 33.412697, 43.788467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607883, 33.648533, 43.787792>,  <35.682076, 34.041592, 43.786663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607883, 33.648533, 43.787792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799885, -0.152647, -0.580417,
		0.570774, -0.105399, 0.814315,
		-0.185478, -0.982644, 0.002820,
		35.552238, 33.353741, 43.788639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403984, 33.669697, 43.877182>,  <35.682076, 34.041592, 43.786663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403984, 33.669697, 43.877182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142384, 33.420200, 43.705959>,  <35.985424, 33.270504, 43.603226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142384, 33.420200, 43.705959>,  <36.403984, 33.669697, 43.877182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142384, 33.420200, 43.705959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659394, -0.192671, -0.726689,
		0.370792, -0.757512, 0.537299,
		-0.653998, -0.623742, -0.428057,
		35.946186, 33.233078, 43.577541>
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
