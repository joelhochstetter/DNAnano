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
	<23.893070, 34.727726, 35.343124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178446, 34.805836, 35.073940>,  <24.349670, 34.852699, 34.912430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178446, 34.805836, 35.073940>,  <23.893070, 34.727726, 35.343124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178446, 34.805836, 35.073940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692914, -0.053682, 0.719019,
		0.104279, -0.979279, -0.173605,
		0.713439, 0.195272, -0.672958,
		24.392477, 34.864418, 34.872051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436834, 34.309067, 35.400761>,  <23.893070, 34.727726, 35.343124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436834, 34.309067, 35.400761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597010, 34.661938, 35.301640>,  <24.693115, 34.873661, 35.242165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597010, 34.661938, 35.301640>,  <24.436834, 34.309067, 35.400761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597010, 34.661938, 35.301640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524595, 0.001022, 0.851351,
		0.751299, -0.470910, -0.462379,
		0.400437, 0.882181, -0.247805,
		24.717140, 34.926594, 35.227299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094994, 34.195297, 35.524979>,  <24.436834, 34.309067, 35.400761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094994, 34.195297, 35.524979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049057, 34.592518, 35.535271>,  <25.021496, 34.830849, 35.541447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049057, 34.592518, 35.535271>,  <25.094994, 34.195297, 35.524979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049057, 34.592518, 35.535271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438812, 0.027475, 0.898159,
		0.891210, 0.114435, -0.438918,
		-0.114840, 0.993051, 0.025729,
		25.014605, 34.890434, 35.542988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803045, 34.479778, 35.594482>,  <25.094994, 34.195297, 35.524979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803045, 34.479778, 35.594482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553713, 34.774002, 35.700619>,  <25.404114, 34.950539, 35.764301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553713, 34.774002, 35.700619>,  <25.803045, 34.479778, 35.594482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553713, 34.774002, 35.700619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460663, 0.071228, 0.884712,
		0.631862, 0.673701, -0.383245,
		-0.623329, 0.735564, 0.265343,
		25.366714, 34.994671, 35.780220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163898, 34.814339, 36.063457>,  <25.803045, 34.479778, 35.594482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163898, 34.814339, 36.063457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798794, 34.951645, 36.152035>,  <25.579731, 35.034031, 36.205181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798794, 34.951645, 36.152035>,  <26.163898, 34.814339, 36.063457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798794, 34.951645, 36.152035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237728, 0.005539, 0.971316,
		0.332196, 0.939221, -0.086660,
		-0.912760, 0.343269, 0.221439,
		25.524965, 35.054626, 36.218468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065260, 35.483498, 36.216991>,  <26.163898, 34.814339, 36.063457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065260, 35.483498, 36.216991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813133, 35.275196, 36.447304>,  <25.661858, 35.150215, 36.585491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813133, 35.275196, 36.447304>,  <26.065260, 35.483498, 36.216991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813133, 35.275196, 36.447304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471241, 0.332750, 0.816828,
		-0.616956, 0.786189, 0.035663,
		-0.630315, -0.520754, 0.575777,
		25.624039, 35.118969, 36.620037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759085, 35.967525, 36.798588>,  <26.065260, 35.483498, 36.216991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759085, 35.967525, 36.798588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735889, 35.588547, 36.924435>,  <25.721973, 35.361160, 36.999943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735889, 35.588547, 36.924435>,  <25.759085, 35.967525, 36.798588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735889, 35.588547, 36.924435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611375, 0.215434, 0.761452,
		-0.789214, 0.236501, 0.566753,
		-0.057986, -0.947447, 0.314614,
		25.718494, 35.304314, 37.018818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463732, 35.966290, 37.451878>,  <25.759085, 35.967525, 36.798588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463732, 35.966290, 37.451878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711069, 35.657875, 37.391018>,  <25.859472, 35.472824, 37.354500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711069, 35.657875, 37.391018>,  <25.463732, 35.966290, 37.451878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711069, 35.657875, 37.391018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597475, 0.335419, 0.728366,
		-0.510564, -0.541287, 0.668081,
		0.618343, -0.771040, -0.152152,
		25.896572, 35.426563, 37.345371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490906, 35.618702, 38.064022>,  <25.463732, 35.966290, 37.451878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490906, 35.618702, 38.064022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805437, 35.476673, 37.861790>,  <25.994156, 35.391457, 37.740452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805437, 35.476673, 37.861790>,  <25.490906, 35.618702, 38.064022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805437, 35.476673, 37.861790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496076, -0.124872, 0.859253,
		-0.368228, -0.926462, 0.077951,
		0.786331, -0.355071, -0.505577,
		26.041336, 35.370152, 37.710117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591141, 35.020782, 38.322155>,  <25.490906, 35.618702, 38.064022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591141, 35.020782, 38.322155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921766, 35.179916, 38.162895>,  <26.120142, 35.275398, 38.067341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921766, 35.179916, 38.162895>,  <25.591141, 35.020782, 38.322155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921766, 35.179916, 38.162895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421764, 0.030620, 0.906188,
		0.372708, -0.916945, -0.142484,
		0.826561, 0.397838, -0.398147,
		26.169735, 35.299267, 38.043449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075726, 34.659969, 38.581680>,  <25.591141, 35.020782, 38.322155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075726, 34.659969, 38.581680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202852, 35.026970, 38.486031>,  <26.279129, 35.247169, 38.428642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202852, 35.026970, 38.486031>,  <26.075726, 34.659969, 38.581680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202852, 35.026970, 38.486031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251310, 0.161662, 0.954310,
		0.914240, -0.363391, -0.179199,
		0.317818, 0.917503, -0.239122,
		26.298199, 35.302219, 38.414295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729252, 34.766830, 38.883461>,  <26.075726, 34.659969, 38.581680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729252, 34.766830, 38.883461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627493, 35.148277, 38.819096>,  <26.566437, 35.377144, 38.780476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627493, 35.148277, 38.819096>,  <26.729252, 34.766830, 38.883461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627493, 35.148277, 38.819096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333614, 0.242710, 0.910930,
		0.907735, 0.178056, -0.379886,
		-0.254398, 0.953618, -0.160915,
		26.551174, 35.434364, 38.770821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505671, 35.043186, 39.678112>,  <26.729252, 34.766830, 38.883461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505671, 35.043186, 39.678112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291391, 35.165207, 39.363159>,  <26.162823, 35.238419, 39.174187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291391, 35.165207, 39.363159>,  <26.505671, 35.043186, 39.678112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291391, 35.165207, 39.363159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543346, -0.589251, -0.597962,
		-0.646377, -0.748147, 0.149910,
		-0.535698, 0.305056, -0.787381,
		26.130682, 35.256721, 39.126945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737244, 35.821388, 39.695396>,  <26.505671, 35.043186, 39.678112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737244, 35.821388, 39.695396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966551, 36.041756, 39.452793>,  <27.104136, 36.173977, 39.307232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966551, 36.041756, 39.452793>,  <26.737244, 35.821388, 39.695396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966551, 36.041756, 39.452793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516302, -0.331899, -0.789478,
		-0.636236, 0.765726, 0.094171,
		0.573268, 0.550915, -0.606512,
		27.138531, 36.207031, 39.270840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398283, 36.348080, 39.215305>,  <26.737244, 35.821388, 39.695396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398283, 36.348080, 39.215305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721655, 36.157413, 39.077187>,  <26.915678, 36.043015, 38.994316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721655, 36.157413, 39.077187>,  <26.398283, 36.348080, 39.215305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721655, 36.157413, 39.077187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532056, -0.340941, -0.775032,
		0.251702, 0.810279, -0.529238,
		0.808432, -0.476662, -0.345299,
		26.964184, 36.014416, 38.973598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417877, 36.609394, 38.529308>,  <26.398283, 36.348080, 39.215305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417877, 36.609394, 38.529308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627850, 36.270363, 38.560436>,  <26.753834, 36.066944, 38.579113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627850, 36.270363, 38.560436>,  <26.417877, 36.609394, 38.529308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627850, 36.270363, 38.560436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486938, -0.374045, -0.789292,
		0.698095, 0.376432, -0.609066,
		0.524933, -0.847578, 0.077820,
		26.785330, 36.016090, 38.583782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877182, 36.414906, 37.935837>,  <26.417877, 36.609394, 38.529308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877182, 36.414906, 37.935837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775179, 36.057121, 38.082756>,  <26.713978, 35.842449, 38.170906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775179, 36.057121, 38.082756>,  <26.877182, 36.414906, 37.935837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775179, 36.057121, 38.082756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156507, -0.336662, -0.928528,
		0.954189, -0.294265, -0.054138,
		-0.255007, -0.894464, 0.367293,
		26.698677, 35.788780, 38.192944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264793, 35.862831, 37.640709>,  <26.877182, 36.414906, 37.935837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264793, 35.862831, 37.640709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922024, 35.686096, 37.746891>,  <26.716362, 35.580055, 37.810600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922024, 35.686096, 37.746891>,  <27.264793, 35.862831, 37.640709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922024, 35.686096, 37.746891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194699, -0.199396, -0.960382,
		0.477261, -0.874656, 0.084843,
		-0.856921, -0.441834, 0.265458,
		26.664948, 35.553547, 37.826530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226900, 35.258293, 37.241905>,  <27.264793, 35.862831, 37.640709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226900, 35.258293, 37.241905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849798, 35.329300, 37.354832>,  <26.623537, 35.371902, 37.422588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849798, 35.329300, 37.354832>,  <27.226900, 35.258293, 37.241905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849798, 35.329300, 37.354832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305771, -0.122190, -0.944232,
		-0.133139, -0.976499, 0.169480,
		-0.942750, 0.177536, 0.282317,
		26.566973, 35.382553, 37.439529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670687, 34.808807, 36.919346>,  <27.226900, 35.258293, 37.241905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670687, 34.808807, 36.919346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466774, 35.142124, 37.004894>,  <26.344427, 35.342113, 37.056225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466774, 35.142124, 37.004894>,  <26.670687, 34.808807, 36.919346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466774, 35.142124, 37.004894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446315, -0.043634, -0.893811,
		-0.735478, -0.551102, 0.394157,
		-0.509780, 0.833297, 0.213873,
		26.313841, 35.392113, 37.069057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358335, 34.240635, 37.491821>,  <26.670687, 34.808807, 36.919346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358335, 34.240635, 37.491821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131723, 34.570000, 37.504642>,  <25.995756, 34.767620, 37.512337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131723, 34.570000, 37.504642>,  <26.358335, 34.240635, 37.491821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131723, 34.570000, 37.504642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524993, -0.330677, -0.784242,
		-0.635157, -0.461127, 0.619627,
		-0.566531, 0.823416, 0.032056,
		25.961763, 34.817024, 37.514259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639034, 34.116577, 37.471203>,  <26.358335, 34.240635, 37.491821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639034, 34.116577, 37.471203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646263, 34.488930, 37.325256>,  <25.650600, 34.712341, 37.237690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646263, 34.488930, 37.325256>,  <25.639034, 34.116577, 37.471203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646263, 34.488930, 37.325256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587375, -0.285430, -0.757311,
		-0.809113, 0.227998, 0.541621,
		0.018071, 0.930885, -0.364866,
		25.651684, 34.768196, 37.215797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998878, 34.295612, 37.351051>,  <25.639034, 34.116577, 37.471203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998878, 34.295612, 37.351051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185688, 34.554920, 37.110504>,  <25.297773, 34.710503, 36.966175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185688, 34.554920, 37.110504>,  <24.998878, 34.295612, 37.351051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185688, 34.554920, 37.110504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614976, -0.250547, -0.747684,
		-0.635369, 0.719010, 0.281657,
		0.467024, 0.648267, -0.601364,
		25.325794, 34.749401, 36.930096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507629, 34.890278, 36.998291>,  <24.998878, 34.295612, 37.351051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507629, 34.890278, 36.998291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825018, 34.757042, 36.794544>,  <25.015451, 34.677101, 36.672298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825018, 34.757042, 36.794544>,  <24.507629, 34.890278, 36.998291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825018, 34.757042, 36.794544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597654, -0.268399, -0.755495,
		0.114937, 0.903887, -0.412041,
		0.793473, -0.333092, -0.509362,
		25.063061, 34.657116, 36.641735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.229679, 35.069229, 36.395103>,  <24.507629, 34.890278, 36.998291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.229679, 35.069229, 36.395103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500515, 34.776814, 36.361305>,  <24.663015, 34.601364, 36.341026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500515, 34.776814, 36.361305>,  <24.229679, 35.069229, 36.395103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500515, 34.776814, 36.361305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518628, -0.392563, -0.759552,
		0.522088, 0.558107, -0.644935,
		0.677089, -0.731034, -0.084498,
		24.703642, 34.557503, 36.335957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772820, 35.512051, 36.701485>,  <24.229679, 35.069229, 36.395103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772820, 35.512051, 36.701485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071089, 35.525085, 36.435280>,  <25.250050, 35.532906, 36.275555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071089, 35.525085, 36.435280>,  <24.772820, 35.512051, 36.701485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071089, 35.525085, 36.435280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662756, -0.066801, -0.745849,
		-0.068764, 0.997234, -0.028213,
		0.745671, 0.032590, -0.665517,
		25.294790, 35.534863, 36.235626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653120, 36.041210, 36.136967>,  <24.772820, 35.512051, 36.701485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653120, 36.041210, 36.136967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871553, 35.726696, 36.021347>,  <25.002613, 35.537987, 35.951973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871553, 35.726696, 36.021347>,  <24.653120, 36.041210, 36.136967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871553, 35.726696, 36.021347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582341, -0.108249, -0.805705,
		0.602223, 0.608309, -0.516998,
		0.546082, -0.786284, -0.289053,
		25.035378, 35.490810, 35.934631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809860, 36.157043, 35.505302>,  <24.653120, 36.041210, 36.136967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809860, 36.157043, 35.505302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895302, 35.766495, 35.518436>,  <24.946566, 35.532166, 35.526318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895302, 35.766495, 35.518436>,  <24.809860, 36.157043, 35.505302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895302, 35.766495, 35.518436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434944, -0.125142, -0.891719,
		0.874756, 0.176191, -0.451397,
		0.213602, -0.976369, 0.032836,
		24.959383, 35.473583, 35.528286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264086, 36.063618, 34.888412>,  <24.809860, 36.157043, 35.505302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264086, 36.063618, 34.888412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112869, 35.707066, 34.988430>,  <25.022141, 35.493134, 35.048439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112869, 35.707066, 34.988430>,  <25.264086, 36.063618, 34.888412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112869, 35.707066, 34.988430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507443, -0.026391, -0.861281,
		0.774331, -0.452481, -0.442349,
		-0.378039, -0.891384, 0.250043,
		24.999458, 35.439651, 35.063442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752327, 35.588749, 34.605522>,  <25.264086, 36.063618, 34.888412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752327, 35.588749, 34.605522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358643, 35.520397, 34.623978>,  <25.122433, 35.479385, 34.635052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358643, 35.520397, 34.623978>,  <25.752327, 35.588749, 34.605522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358643, 35.520397, 34.623978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091355, 0.267120, -0.959323,
		0.151603, -0.948392, -0.278513,
		-0.984211, -0.170880, 0.046144,
		25.063379, 35.469131, 34.637821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548891, 35.395210, 33.971478>,  <25.752327, 35.588749, 34.605522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548891, 35.395210, 33.971478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194542, 35.501068, 34.123894>,  <24.981932, 35.564583, 34.215343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194542, 35.501068, 34.123894>,  <25.548891, 35.395210, 33.971478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194542, 35.501068, 34.123894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296833, 0.307892, -0.903932,
		-0.356539, -0.913874, -0.194199,
		-0.885873, 0.264643, 0.381043,
		24.928780, 35.580460, 34.238205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948709, 35.002800, 33.849884>,  <25.548891, 35.395210, 33.971478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948709, 35.002800, 33.849884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865593, 35.392330, 33.886749>,  <24.815723, 35.626049, 33.908867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865593, 35.392330, 33.886749>,  <24.948709, 35.002800, 33.849884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865593, 35.392330, 33.886749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203606, 0.049095, -0.977821,
		-0.956749, -0.221946, 0.188074,
		-0.207790, 0.973822, 0.092161,
		24.803255, 35.684479, 33.914398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.305473, 35.165020, 33.552170>,  <24.948709, 35.002800, 33.849884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.305473, 35.165020, 33.552170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481781, 35.524048, 33.555859>,  <24.587566, 35.739464, 33.558071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481781, 35.524048, 33.555859>,  <24.305473, 35.165020, 33.552170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481781, 35.524048, 33.555859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364648, 0.188438, -0.911879,
		-0.820215, 0.398566, 0.410356,
		0.440771, 0.897573, 0.009224,
		24.614012, 35.793320, 33.558624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.893854, 35.565899, 33.156425>,  <24.305473, 35.165020, 33.552170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.893854, 35.565899, 33.156425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222612, 35.793274, 33.171227>,  <24.419868, 35.929699, 33.180107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222612, 35.793274, 33.171227>,  <23.893854, 35.565899, 33.156425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222612, 35.793274, 33.171227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102910, 0.212052, -0.971825,
		-0.560264, 0.794932, 0.232782,
		0.821896, 0.568434, 0.036999,
		24.469181, 35.963802, 33.182327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.689137, 36.199440, 32.903099>,  <23.893854, 35.565899, 33.156425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.689137, 36.199440, 32.903099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.082365, 36.136162, 32.866116>,  <24.318302, 36.098194, 32.843925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.082365, 36.136162, 32.866116>,  <23.689137, 36.199440, 32.903099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.082365, 36.136162, 32.866116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028173, 0.368097, -0.929360,
		0.181057, 0.916230, 0.357408,
		0.983069, -0.158198, -0.092460,
		24.377285, 36.088703, 32.838379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.998987, 36.794102, 32.672543>,  <23.689137, 36.199440, 32.903099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.998987, 36.794102, 32.672543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267021, 36.507732, 32.594120>,  <24.427841, 36.335911, 32.547066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267021, 36.507732, 32.594120>,  <23.998987, 36.794102, 32.672543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267021, 36.507732, 32.594120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021776, 0.245055, -0.969265,
		0.741966, 0.653758, 0.148618,
		0.670084, -0.715925, -0.196059,
		24.468046, 36.292953, 32.535301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.421797, 37.272057, 32.205906>,  <23.998987, 36.794102, 32.672543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.421797, 37.272057, 32.205906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589924, 36.913670, 32.263283>,  <24.690800, 36.698639, 32.297707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589924, 36.913670, 32.263283>,  <24.421797, 37.272057, 32.205906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.589924, 36.913670, 32.263283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315508, -0.003904, -0.948915,
		0.850758, 0.444101, 0.281044,
		0.420317, -0.895968, 0.143439,
		24.716019, 36.644878, 32.306316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020184, 37.500942, 32.086079>,  <24.421797, 37.272057, 32.205906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020184, 37.500942, 32.086079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001282, 37.102943, 32.050861>,  <24.989941, 36.864143, 32.029732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001282, 37.102943, 32.050861>,  <25.020184, 37.500942, 32.086079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001282, 37.102943, 32.050861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458265, 0.056720, -0.887004,
		0.887559, -0.082260, 0.453291,
		-0.047254, -0.994996, -0.088039,
		24.987106, 36.804443, 32.024448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700317, 37.267979, 31.804720>,  <25.020184, 37.500942, 32.086079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700317, 37.267979, 31.804720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431171, 36.974918, 31.763765>,  <25.269684, 36.799084, 31.739193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431171, 36.974918, 31.763765>,  <25.700317, 37.267979, 31.804720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431171, 36.974918, 31.763765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102102, 0.045105, -0.993751,
		0.732688, -0.679111, 0.044456,
		-0.672862, -0.732648, -0.102387,
		25.229313, 36.755123, 31.733049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830656, 36.943264, 31.123747>,  <25.700317, 37.267979, 31.804720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830656, 36.943264, 31.123747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444609, 36.946354, 31.228428>,  <25.212980, 36.948208, 31.291237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444609, 36.946354, 31.228428>,  <25.830656, 36.943264, 31.123747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444609, 36.946354, 31.228428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258665, 0.126510, -0.957647,
		-0.040505, -0.991935, -0.120099,
		-0.965118, 0.007724, 0.261703,
		25.155073, 36.948669, 31.306938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621321, 36.387962, 30.846939>,  <25.830656, 36.943264, 31.123747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621321, 36.387962, 30.846939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320641, 36.645279, 30.905069>,  <25.140232, 36.799671, 30.939947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320641, 36.645279, 30.905069>,  <25.621321, 36.387962, 30.846939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320641, 36.645279, 30.905069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157215, 0.039218, -0.986785,
		-0.640492, -0.764615, 0.071655,
		-0.751700, 0.643293, 0.145328,
		25.095131, 36.838268, 30.948668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879335, 36.236176, 30.642815>,  <25.621321, 36.387962, 30.846939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879335, 36.236176, 30.642815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957409, 36.627949, 30.622375>,  <25.004253, 36.863014, 30.610111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957409, 36.627949, 30.622375>,  <24.879335, 36.236176, 30.642815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957409, 36.627949, 30.622375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169893, -0.017547, -0.985307,
		-0.965940, 0.200996, 0.162974,
		0.195183, 0.979435, -0.051097,
		25.015965, 36.921780, 30.607046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649738, 35.952820, 31.314226>,  <24.879335, 36.236176, 30.642815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649738, 35.952820, 31.314226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304770, 36.043026, 31.132954>,  <24.097788, 36.097149, 31.024191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304770, 36.043026, 31.132954>,  <24.649738, 35.952820, 31.314226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304770, 36.043026, 31.132954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438125, 0.780950, -0.445156,
		0.253522, -0.582462, -0.772312,
		-0.862423, 0.225512, -0.453179,
		24.046043, 36.110680, 30.997000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963503, 35.468361, 31.825167>,  <24.649738, 35.952820, 31.314226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963503, 35.468361, 31.825167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996521, 35.859638, 31.901394>,  <25.016333, 36.094406, 31.947130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.996521, 35.859638, 31.901394>,  <24.963503, 35.468361, 31.825167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996521, 35.859638, 31.901394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314502, -0.155881, 0.936370,
		0.945661, -0.137229, 0.294778,
		0.082547, 0.978197, 0.190569,
		25.021286, 36.153099, 31.958565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358624, 35.531109, 32.449490>,  <24.963503, 35.468361, 31.825167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358624, 35.531109, 32.449490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146544, 35.867996, 32.410374>,  <25.019295, 36.070129, 32.386906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146544, 35.867996, 32.410374>,  <25.358624, 35.531109, 32.449490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146544, 35.867996, 32.410374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156992, 0.015819, 0.987473,
		0.833211, 0.538910, 0.123834,
		-0.530200, 0.842215, -0.097785,
		24.987484, 36.120659, 32.381039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702892, 36.019180, 32.736423>,  <25.358624, 35.531109, 32.449490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702892, 36.019180, 32.736423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310686, 36.095646, 32.754532>,  <25.075363, 36.141525, 32.765396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310686, 36.095646, 32.754532>,  <25.702892, 36.019180, 32.736423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310686, 36.095646, 32.754532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027100, -0.096635, 0.994951,
		0.194576, 0.976789, 0.089571,
		-0.980513, 0.191166, 0.045273,
		25.016533, 36.152996, 32.768112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605434, 36.626278, 33.191902>,  <25.702892, 36.019180, 32.736423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605434, 36.626278, 33.191902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263084, 36.419434, 33.188454>,  <25.057674, 36.295326, 33.186386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263084, 36.419434, 33.188454>,  <25.605434, 36.626278, 33.191902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263084, 36.419434, 33.188454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013135, 0.005074, 0.999901,
		-0.517017, 0.855903, -0.011135,
		-0.855874, -0.517112, -0.008619,
		25.006323, 36.264301, 33.185867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222750, 36.955208, 33.680065>,  <25.605434, 36.626278, 33.191902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222750, 36.955208, 33.680065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050121, 36.598152, 33.627991>,  <24.946545, 36.383919, 33.596748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050121, 36.598152, 33.627991>,  <25.222750, 36.955208, 33.680065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050121, 36.598152, 33.627991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140107, -0.076233, 0.987197,
		-0.891133, 0.444284, -0.092165,
		-0.431570, -0.892637, -0.130181,
		24.920650, 36.330360, 33.588936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.691296, 36.904514, 34.125431>,  <25.222750, 36.955208, 33.680065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.691296, 36.904514, 34.125431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794094, 36.522274, 34.067772>,  <24.855774, 36.292931, 34.033176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794094, 36.522274, 34.067772>,  <24.691296, 36.904514, 34.125431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794094, 36.522274, 34.067772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020125, -0.154415, 0.987801,
		-0.966203, -0.250960, -0.058916,
		0.256996, -0.955602, -0.144146,
		24.871193, 36.235592, 34.024529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406635, 36.943336, 34.625076>,  <24.691296, 36.904514, 34.125431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406635, 36.943336, 34.625076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663990, 36.881432, 34.325184>,  <25.818403, 36.844288, 34.145248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663990, 36.881432, 34.325184>,  <25.406635, 36.943336, 34.625076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663990, 36.881432, 34.325184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750730, 0.319274, 0.578332,
		0.149865, -0.934939, 0.321604,
		0.643385, -0.154766, -0.749735,
		25.857006, 36.835003, 34.100262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105995, 36.801720, 34.871250>,  <25.406635, 36.943336, 34.625076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105995, 36.801720, 34.871250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195438, 36.894142, 34.492493>,  <26.249105, 36.949596, 34.265240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195438, 36.894142, 34.492493>,  <26.105995, 36.801720, 34.871250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195438, 36.894142, 34.492493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879331, 0.371250, 0.298246,
		0.420447, -0.899325, -0.120164,
		0.223609, 0.231061, -0.946895,
		26.262522, 36.963459, 34.208424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742165, 36.909084, 34.694138>,  <26.105995, 36.801720, 34.871250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742165, 36.909084, 34.694138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637865, 37.134243, 34.380409>,  <26.575285, 37.269341, 34.192173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637865, 37.134243, 34.380409>,  <26.742165, 36.909084, 34.694138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637865, 37.134243, 34.380409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859388, 0.505483, 0.077073,
		0.439843, -0.653936, -0.615554,
		-0.260751, 0.562899, -0.784317,
		26.559639, 37.303112, 34.145115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274557, 37.060551, 34.289490>,  <26.742165, 36.909084, 34.694138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274557, 37.060551, 34.289490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025942, 37.362885, 34.207119>,  <26.876774, 37.544285, 34.157696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025942, 37.362885, 34.207119>,  <27.274557, 37.060551, 34.289490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025942, 37.362885, 34.207119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743265, 0.652012, 0.149790,
		0.247484, -0.059959, -0.967035,
		-0.621537, 0.755834, -0.205928,
		26.839481, 37.589634, 34.145340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686825, 37.459362, 33.856617>,  <27.274557, 37.060551, 34.289490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686825, 37.459362, 33.856617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427834, 37.712383, 34.026627>,  <27.272438, 37.864197, 34.128632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427834, 37.712383, 34.026627>,  <27.686825, 37.459362, 33.856617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427834, 37.712383, 34.026627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752838, 0.617519, 0.227826,
		-0.118348, 0.467487, -0.876042,
		-0.647479, 0.632555, 0.425024,
		27.233589, 37.902149, 34.154133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471766, 37.477859, 33.845791>,  <27.686825, 37.459362, 33.856617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471766, 37.477859, 33.845791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669922, 37.791553, 33.995224>,  <28.788816, 37.979771, 34.084885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669922, 37.791553, 33.995224>,  <28.471766, 37.477859, 33.845791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669922, 37.791553, 33.995224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521905, 0.075088, -0.849692,
		-0.694408, 0.615907, -0.372097,
		0.495391, 0.784233, 0.373587,
		28.818539, 38.026825, 34.107300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566525, 37.981888, 33.368202>,  <28.471766, 37.477859, 33.845791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566525, 37.981888, 33.368202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887955, 38.041714, 33.598644>,  <29.080812, 38.077610, 33.736908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887955, 38.041714, 33.598644>,  <28.566525, 37.981888, 33.368202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887955, 38.041714, 33.598644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569747, 0.086746, -0.817229,
		-0.172204, 0.984939, -0.015508,
		0.803576, 0.149565, 0.576104,
		29.129028, 38.086582, 33.771477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246277, 37.864506, 33.032902>,  <28.566525, 37.981888, 33.368202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246277, 37.864506, 33.032902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629633, 37.753292, 33.007015>,  <29.859646, 37.686565, 32.991482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629633, 37.753292, 33.007015>,  <29.246277, 37.864506, 33.032902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629633, 37.753292, 33.007015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225574, 0.876543, -0.425192,
		0.174943, 0.392901, 0.902787,
		0.958390, -0.278030, -0.064716,
		29.917150, 37.669884, 32.987598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654737, 38.558647, 33.362400>,  <29.246277, 37.864506, 33.032902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654737, 38.558647, 33.362400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838394, 38.304153, 33.114403>,  <29.948587, 38.151455, 32.965603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838394, 38.304153, 33.114403>,  <29.654737, 38.558647, 33.362400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838394, 38.304153, 33.114403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208274, 0.755548, -0.621103,
		0.863603, 0.156045, 0.479415,
		0.459141, -0.636237, -0.619994,
		29.976137, 38.113281, 32.928406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365845, 38.720901, 33.210037>,  <29.654737, 38.558647, 33.362400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365845, 38.720901, 33.210037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242306, 38.516338, 32.889271>,  <30.168182, 38.393600, 32.696812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242306, 38.516338, 32.889271>,  <30.365845, 38.720901, 33.210037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242306, 38.516338, 32.889271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438758, 0.671459, -0.597189,
		0.843863, -0.536288, 0.017006,
		-0.308847, -0.511408, -0.801921,
		30.149652, 38.362915, 32.648693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954832, 38.450661, 32.761017>,  <30.365845, 38.720901, 33.210037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954832, 38.450661, 32.761017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617584, 38.575150, 32.585613>,  <30.415236, 38.649845, 32.480373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617584, 38.575150, 32.585613>,  <30.954832, 38.450661, 32.761017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617584, 38.575150, 32.585613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493572, 0.771525, -0.401416,
		0.213388, -0.554877, -0.804100,
		-0.843120, 0.311224, -0.438506,
		30.364649, 38.668518, 32.454060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687014, 38.440319, 32.828533>,  <30.954832, 38.450661, 32.761017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687014, 38.440319, 32.828533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010685, 38.381470, 33.056072>,  <32.204887, 38.346161, 33.192596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010685, 38.381470, 33.056072>,  <31.687014, 38.440319, 32.828533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010685, 38.381470, 33.056072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104573, -0.916626, -0.385825,
		0.578181, 0.371687, -0.726330,
		0.809179, -0.147122, 0.568844,
		32.253437, 38.337334, 33.226727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121208, 38.247410, 32.301025>,  <31.687014, 38.440319, 32.828533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121208, 38.247410, 32.301025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276020, 38.112701, 32.644371>,  <32.368908, 38.031876, 32.850380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276020, 38.112701, 32.644371>,  <32.121208, 38.247410, 32.301025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276020, 38.112701, 32.644371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402234, -0.776008, -0.485819,
		0.829708, 0.533291, -0.164879,
		0.387030, -0.336769, 0.858368,
		32.392128, 38.011669, 32.901882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737759, 38.163296, 32.136757>,  <32.121208, 38.247410, 32.301025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737759, 38.163296, 32.136757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620522, 37.917549, 32.429783>,  <32.550179, 37.770100, 32.605598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620522, 37.917549, 32.429783>,  <32.737759, 38.163296, 32.136757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620522, 37.917549, 32.429783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577438, -0.724429, -0.376519,
		0.762012, 0.312656, 0.567083,
		-0.293090, -0.614368, 0.732564,
		32.532593, 37.733238, 32.649551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356518, 37.953667, 32.339775>,  <32.737759, 38.163296, 32.136757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356518, 37.953667, 32.339775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059811, 37.685562, 32.348976>,  <32.881786, 37.524700, 32.354496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059811, 37.685562, 32.348976>,  <33.356518, 37.953667, 32.339775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059811, 37.685562, 32.348976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590067, -0.668544, -0.452625,
		0.318754, -0.322171, 0.891405,
		-0.741766, -0.670264, 0.022998,
		32.837280, 37.484482, 32.355877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139515, 37.532394, 31.769285>,  <33.356518, 37.953667, 32.339775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139515, 37.532394, 31.769285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758755, 37.422928, 31.824406>,  <32.530296, 37.357246, 31.857477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758755, 37.422928, 31.824406>,  <33.139515, 37.532394, 31.769285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758755, 37.422928, 31.824406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125947, -0.759462, -0.638244,
		0.279320, -0.590190, 0.757401,
		-0.951902, -0.273667, 0.137800,
		32.473183, 37.340828, 31.865746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929985, 36.771645, 32.125164>,  <33.139515, 37.532394, 31.769285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929985, 36.771645, 32.125164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713600, 36.953644, 31.842226>,  <32.583771, 37.062843, 31.672462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713600, 36.953644, 31.842226>,  <32.929985, 36.771645, 32.125164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713600, 36.953644, 31.842226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365414, -0.630352, -0.684930,
		-0.757519, -0.628994, 0.174733,
		-0.540960, 0.454997, -0.707347,
		32.551311, 37.090141, 31.630022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437649, 36.271107, 31.888786>,  <32.929985, 36.771645, 32.125164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437649, 36.271107, 31.888786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470909, 36.550461, 31.604437>,  <32.490868, 36.718075, 31.433826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470909, 36.550461, 31.604437>,  <32.437649, 36.271107, 31.888786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470909, 36.550461, 31.604437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322104, -0.693890, -0.644023,
		-0.943045, -0.175423, -0.282652,
		0.083153, 0.698386, -0.710874,
		32.495853, 36.759975, 31.391174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114063, 35.977962, 31.319275>,  <32.437649, 36.271107, 31.888786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114063, 35.977962, 31.319275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381275, 36.252636, 31.204596>,  <32.541603, 36.417442, 31.135788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381275, 36.252636, 31.204596>,  <32.114063, 35.977962, 31.319275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381275, 36.252636, 31.204596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275202, -0.585944, -0.762190,
		-0.691374, 0.430266, -0.580407,
		0.668031, 0.686688, -0.286697,
		32.581684, 36.458641, 31.118586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905148, 36.222271, 30.637070>,  <32.114063, 35.977962, 31.319275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905148, 36.222271, 30.637070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298298, 36.267384, 30.695358>,  <32.534187, 36.294453, 30.730331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298298, 36.267384, 30.695358>,  <31.905148, 36.222271, 30.637070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298298, 36.267384, 30.695358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182256, -0.478494, -0.858968,
		-0.027152, 0.870818, -0.490856,
		0.982876, 0.112784, 0.145719,
		32.593163, 36.301220, 30.739075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121490, 36.143066, 29.942581>,  <31.905148, 36.222271, 30.637070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121490, 36.143066, 29.942581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473717, 36.159409, 30.131449>,  <32.685051, 36.169212, 30.244768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473717, 36.159409, 30.131449>,  <32.121490, 36.143066, 29.942581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473717, 36.159409, 30.131449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464585, -0.271285, -0.842950,
		0.093653, 0.961632, -0.257863,
		0.880562, 0.040855, 0.472167,
		32.737885, 36.171665, 30.273098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504734, 36.563114, 29.469646>,  <32.121490, 36.143066, 29.942581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504734, 36.563114, 29.469646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719505, 36.323158, 29.706911>,  <32.848366, 36.179184, 29.849270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719505, 36.323158, 29.706911>,  <32.504734, 36.563114, 29.469646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719505, 36.323158, 29.706911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554971, -0.278393, -0.783904,
		0.635390, 0.750084, 0.183447,
		0.536923, -0.599892, 0.593163,
		32.880581, 36.143192, 29.884859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256962, 36.644234, 29.301632>,  <32.504734, 36.563114, 29.469646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256962, 36.644234, 29.301632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217682, 36.294010, 29.490839>,  <33.194115, 36.083874, 29.604362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217682, 36.294010, 29.490839>,  <33.256962, 36.644234, 29.301632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217682, 36.294010, 29.490839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610686, -0.428315, -0.666039,
		0.785760, 0.223460, 0.576755,
		-0.098200, -0.875564, 0.473017,
		33.188221, 36.031342, 29.632744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976933, 36.359966, 29.280973>,  <33.256962, 36.644234, 29.301632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976933, 36.359966, 29.280973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735054, 36.051071, 29.358936>,  <33.589928, 35.865734, 29.405714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735054, 36.051071, 29.358936>,  <33.976933, 36.359966, 29.280973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735054, 36.051071, 29.358936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464862, -0.540921, -0.700933,
		0.646715, -0.333250, 0.686079,
		-0.604701, -0.772236, 0.194907,
		33.553642, 35.819401, 29.417408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409889, 35.767101, 29.251352>,  <33.976933, 36.359966, 29.280973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409889, 35.767101, 29.251352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046505, 35.603794, 29.215528>,  <33.828476, 35.505810, 29.194035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046505, 35.603794, 29.215528>,  <34.409889, 35.767101, 29.251352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046505, 35.603794, 29.215528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300763, -0.489730, -0.818356,
		0.290247, -0.770379, 0.567691,
		-0.908459, -0.408265, -0.089559,
		33.773968, 35.481316, 29.188662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468857, 35.053181, 29.182970>,  <34.409889, 35.767101, 29.251352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468857, 35.053181, 29.182970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112011, 35.130520, 29.019632>,  <33.897903, 35.176926, 28.921629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112011, 35.130520, 29.019632>,  <34.468857, 35.053181, 29.182970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112011, 35.130520, 29.019632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299442, -0.423762, -0.854845,
		-0.338325, -0.884897, 0.320147,
		-0.892116, 0.193350, -0.408345,
		33.844376, 35.188526, 28.897129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212341, 34.451027, 28.824007>,  <34.468857, 35.053181, 29.182970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212341, 34.451027, 28.824007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037006, 34.776386, 28.671040>,  <33.931805, 34.971603, 28.579260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037006, 34.776386, 28.671040>,  <34.212341, 34.451027, 28.824007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037006, 34.776386, 28.671040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220063, -0.315398, -0.923091,
		-0.871455, -0.488780, -0.040749,
		-0.438336, 0.813399, -0.382417,
		33.905506, 35.020405, 28.556314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792862, 34.158646, 28.332127>,  <34.212341, 34.451027, 28.824007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792862, 34.158646, 28.332127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808220, 34.536888, 28.202908>,  <33.817436, 34.763832, 28.125376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808220, 34.536888, 28.202908>,  <33.792862, 34.158646, 28.332127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808220, 34.536888, 28.202908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070265, -0.325040, -0.943086,
		-0.996789, 0.013510, -0.078923,
		0.038394, 0.945604, -0.323047,
		33.819736, 34.820568, 28.105993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367100, 34.110111, 27.867931>,  <33.792862, 34.158646, 28.332127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367100, 34.110111, 27.867931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559109, 34.445614, 27.765114>,  <33.674316, 34.646915, 27.703423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559109, 34.445614, 27.765114>,  <33.367100, 34.110111, 27.867931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559109, 34.445614, 27.765114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109636, -0.233354, -0.966192,
		-0.870377, 0.491977, -0.020058,
		0.480024, 0.838752, -0.257044,
		33.703117, 34.697239, 27.688000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890007, 34.465496, 27.307156>,  <33.367100, 34.110111, 27.867931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890007, 34.465496, 27.307156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244698, 34.645363, 27.264248>,  <33.457512, 34.753284, 27.238504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244698, 34.645363, 27.264248>,  <32.890007, 34.465496, 27.307156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244698, 34.645363, 27.264248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033860, -0.294589, -0.955024,
		-0.461045, 0.843217, -0.276447,
		0.886730, 0.449670, -0.107267,
		33.510715, 34.780262, 27.232067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815437, 34.892090, 26.708157>,  <32.890007, 34.465496, 27.307156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815437, 34.892090, 26.708157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209785, 34.846184, 26.756968>,  <33.446392, 34.818638, 26.786255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209785, 34.846184, 26.756968>,  <32.815437, 34.892090, 26.708157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209785, 34.846184, 26.756968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094808, -0.218306, -0.971264,
		0.138111, 0.969108, -0.204340,
		0.985869, -0.114769, 0.122029,
		33.505547, 34.811752, 26.793577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147427, 35.224472, 26.098883>,  <32.815437, 34.892090, 26.708157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147427, 35.224472, 26.098883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436943, 34.986843, 26.239285>,  <33.610653, 34.844265, 26.323526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436943, 34.986843, 26.239285>,  <33.147427, 35.224472, 26.098883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436943, 34.986843, 26.239285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271783, -0.222127, -0.936373,
		0.634244, 0.773133, 0.000687,
		0.723788, -0.594075, 0.351007,
		33.654079, 34.808620, 26.344587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753956, 35.451859, 25.825254>,  <33.147427, 35.224472, 26.098883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753956, 35.451859, 25.825254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807938, 35.066345, 25.917267>,  <33.840328, 34.835037, 25.972475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807938, 35.066345, 25.917267>,  <33.753956, 35.451859, 25.825254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807938, 35.066345, 25.917267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267506, -0.188096, -0.945019,
		0.954059, 0.189071, 0.232432,
		0.134956, -0.963780, 0.230032,
		33.848423, 34.777210, 25.986277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443043, 35.235996, 25.530407>,  <33.753956, 35.451859, 25.825254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443043, 35.235996, 25.530407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233749, 34.897972, 25.574404>,  <34.108173, 34.695156, 25.600801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233749, 34.897972, 25.574404>,  <34.443043, 35.235996, 25.530407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233749, 34.897972, 25.574404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351266, -0.331464, -0.875639,
		0.776426, -0.419529, 0.470275,
		-0.523235, -0.845061, 0.109992,
		34.076778, 34.644455, 25.607401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899574, 34.703152, 25.245264>,  <34.443043, 35.235996, 25.530407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899574, 34.703152, 25.245264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524963, 34.563004, 25.250284>,  <34.300198, 34.478912, 25.253296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524963, 34.563004, 25.250284>,  <34.899574, 34.703152, 25.245264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524963, 34.563004, 25.250284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105188, -0.314943, -0.943264,
		0.334446, -0.882072, 0.331807,
		-0.936526, -0.350373, 0.012548,
		34.244007, 34.457893, 25.254049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915657, 34.043026, 25.109888>,  <34.899574, 34.703152, 25.245264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915657, 34.043026, 25.109888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535694, 34.109913, 25.004280>,  <34.307716, 34.150043, 24.940916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535694, 34.109913, 25.004280>,  <34.915657, 34.043026, 25.109888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535694, 34.109913, 25.004280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137108, -0.536185, -0.832891,
		-0.280837, -0.827372, 0.486401,
		-0.949912, 0.167217, -0.264020,
		34.250721, 34.160076, 24.925074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806728, 33.424683, 24.704592>,  <34.915657, 34.043026, 25.109888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806728, 33.424683, 24.704592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500515, 33.667599, 24.619596>,  <34.316788, 33.813351, 24.568600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500515, 33.667599, 24.619596>,  <34.806728, 33.424683, 24.704592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500515, 33.667599, 24.619596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033705, -0.291957, -0.955837,
		-0.642511, -0.738889, 0.203034,
		-0.765535, 0.607293, -0.212490,
		34.270855, 33.849785, 24.555849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384640, 33.025646, 24.311649>,  <34.806728, 33.424683, 24.704592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384640, 33.025646, 24.311649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286819, 33.400284, 24.211262>,  <34.228127, 33.625069, 24.151030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286819, 33.400284, 24.211262>,  <34.384640, 33.025646, 24.311649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286819, 33.400284, 24.211262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206333, -0.202636, -0.957270,
		-0.947430, -0.285880, -0.143697,
		-0.244546, 0.936596, -0.250969,
		34.213455, 33.681263, 24.135971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023689, 32.942989, 23.637188>,  <34.384640, 33.025646, 24.311649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023689, 32.942989, 23.637188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147324, 33.323254, 23.647823>,  <34.221504, 33.551411, 23.654203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147324, 33.323254, 23.647823>,  <34.023689, 32.942989, 23.637188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147324, 33.323254, 23.647823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243736, -0.052162, -0.968438,
		-0.919271, 0.305811, -0.247833,
		0.309087, 0.950662, 0.026586,
		34.240051, 33.608452, 23.655800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734005, 33.285263, 23.051235>,  <34.023689, 32.942989, 23.637188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734005, 33.285263, 23.051235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046764, 33.516411, 23.144791>,  <34.234421, 33.655098, 23.200924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046764, 33.516411, 23.144791>,  <33.734005, 33.285263, 23.051235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046764, 33.516411, 23.144791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105647, 0.246927, -0.963258,
		-0.614393, 0.777877, 0.132020,
		0.781896, 0.577871, 0.233890,
		34.281334, 33.689774, 23.214958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609722, 33.864712, 22.727734>,  <33.734005, 33.285263, 23.051235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609722, 33.864712, 22.727734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003254, 33.878136, 22.798115>,  <34.239372, 33.886189, 22.840343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003254, 33.878136, 22.798115>,  <33.609722, 33.864712, 22.727734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003254, 33.878136, 22.798115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155867, 0.323654, -0.933249,
		-0.088264, 0.945580, 0.313190,
		0.983827, 0.033556, 0.175951,
		34.298401, 33.888203, 22.850901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808945, 34.533421, 22.543337>,  <33.609722, 33.864712, 22.727734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808945, 34.533421, 22.543337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131897, 34.298347, 22.522331>,  <34.325668, 34.157303, 22.509727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131897, 34.298347, 22.522331>,  <33.808945, 34.533421, 22.543337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131897, 34.298347, 22.522331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184161, 0.335558, -0.923843,
		0.560552, 0.736223, 0.379153,
		0.807382, -0.587687, -0.052514,
		34.374111, 34.122040, 22.506577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296490, 34.954613, 22.235416>,  <33.808945, 34.533421, 22.543337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296490, 34.954613, 22.235416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451176, 34.590656, 22.175339>,  <34.543987, 34.372284, 22.139292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451176, 34.590656, 22.175339>,  <34.296490, 34.954613, 22.235416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451176, 34.590656, 22.175339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386569, 0.307807, -0.869379,
		0.837267, 0.278140, 0.470767,
		0.386714, -0.909886, -0.150196,
		34.567188, 34.317692, 22.130280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918552, 35.108597, 21.887360>,  <34.296490, 34.954613, 22.235416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918552, 35.108597, 21.887360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878540, 34.717461, 21.813789>,  <34.854534, 34.482780, 21.769648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878540, 34.717461, 21.813789>,  <34.918552, 35.108597, 21.887360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878540, 34.717461, 21.813789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342854, 0.139655, -0.928950,
		0.934048, -0.155983, 0.321286,
		-0.100031, -0.977837, -0.183924,
		34.848530, 34.424110, 21.758612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515865, 34.893337, 21.593407>,  <34.918552, 35.108597, 21.887360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515865, 34.893337, 21.593407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267971, 34.591019, 21.508837>,  <35.119236, 34.409626, 21.458096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267971, 34.591019, 21.508837>,  <35.515865, 34.893337, 21.593407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267971, 34.591019, 21.508837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251319, 0.064088, -0.965780,
		0.743484, -0.651662, 0.150229,
		-0.619734, -0.755798, -0.211423,
		35.082050, 34.364281, 21.445410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955986, 34.343353, 21.230799>,  <35.515865, 34.893337, 21.593407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955986, 34.343353, 21.230799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577827, 34.261513, 21.129316>,  <35.350933, 34.212406, 21.068428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577827, 34.261513, 21.129316>,  <35.955986, 34.343353, 21.230799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577827, 34.261513, 21.129316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251754, 0.035950, -0.967123,
		0.206999, -0.978184, 0.017524,
		-0.945395, -0.204605, -0.253704,
		35.294209, 34.200130, 21.053205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025368, 33.786682, 20.741077>,  <35.955986, 34.343353, 21.230799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025368, 33.786682, 20.741077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671478, 33.964756, 20.685822>,  <35.459145, 34.071598, 20.652668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671478, 33.964756, 20.685822>,  <36.025368, 33.786682, 20.741077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671478, 33.964756, 20.685822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173235, 0.038905, -0.984112,
		-0.432736, -0.894594, -0.111541,
		-0.884720, 0.445183, -0.138139,
		35.406063, 34.098312, 20.644381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675274, 33.401356, 20.106918>,  <36.025368, 33.786682, 20.741077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675274, 33.401356, 20.106918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540028, 33.770294, 20.181700>,  <35.458881, 33.991657, 20.226568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540028, 33.770294, 20.181700>,  <35.675274, 33.401356, 20.106918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540028, 33.770294, 20.181700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249482, 0.279390, -0.927200,
		-0.907435, -0.266858, -0.324575,
		-0.338114, 0.922349, 0.186951,
		35.438595, 34.046997, 20.237785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567558, 33.496323, 19.459581>,  <35.675274, 33.401356, 20.106918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567558, 33.496323, 19.459581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521172, 33.862488, 19.613756>,  <35.493340, 34.082188, 19.706261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521172, 33.862488, 19.613756>,  <35.567558, 33.496323, 19.459581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521172, 33.862488, 19.613756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368798, 0.400000, -0.839040,
		-0.922247, 0.044846, -0.383991,
		-0.115969, 0.915417, 0.385438,
		35.486382, 34.137112, 19.729387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157471, 33.878963, 19.056381>,  <35.567558, 33.496323, 19.459581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157471, 33.878963, 19.056381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367149, 34.155125, 19.255808>,  <35.492954, 34.320820, 19.375463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367149, 34.155125, 19.255808>,  <35.157471, 33.878963, 19.056381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367149, 34.155125, 19.255808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340569, 0.366638, -0.865788,
		-0.780534, 0.623637, -0.042939,
		0.524195, 0.690401, 0.498565,
		35.524406, 34.362244, 19.405376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104530, 34.440067, 18.663166>,  <35.157471, 33.878963, 19.056381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104530, 34.440067, 18.663166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420212, 34.512238, 18.897978>,  <35.609619, 34.555538, 19.038866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420212, 34.512238, 18.897978>,  <35.104530, 34.440067, 18.663166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420212, 34.512238, 18.897978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472138, 0.433030, -0.767835,
		-0.392740, 0.883137, 0.256563,
		0.789203, 0.180426, 0.587031,
		35.656971, 34.566364, 19.074087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281864, 35.143024, 18.576584>,  <35.104530, 34.440067, 18.663166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281864, 35.143024, 18.576584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596992, 34.939102, 18.714817>,  <35.786072, 34.816750, 18.797756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596992, 34.939102, 18.714817>,  <35.281864, 35.143024, 18.576584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596992, 34.939102, 18.714817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538738, 0.298488, -0.787824,
		0.298488, 0.806845, 0.509810,
		0.787824, -0.509810, 0.345583,
		35.833340, 34.786160, 18.818493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795036, 35.629566, 18.490540>,  <35.281864, 35.143024, 18.576584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795036, 35.629566, 18.490540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988510, 35.285362, 18.554491>,  <36.104595, 35.078838, 18.592863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988510, 35.285362, 18.554491>,  <35.795036, 35.629566, 18.490540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988510, 35.285362, 18.554491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702877, 0.273047, -0.656817,
		0.521546, 0.430070, 0.736906,
		0.483688, -0.860514, 0.159880,
		36.133617, 35.027206, 18.602455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458088, 35.836086, 18.497309>,  <35.795036, 35.629566, 18.490540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458088, 35.836086, 18.497309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455791, 35.444645, 18.415041>,  <36.454414, 35.209782, 18.365681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455791, 35.444645, 18.415041>,  <36.458088, 35.836086, 18.497309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455791, 35.444645, 18.415041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526597, 0.171886, -0.832557,
		0.850096, -0.113088, 0.514343,
		-0.005744, -0.978604, -0.205672,
		36.454067, 35.151062, 18.353340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217674, 35.684444, 18.368979>,  <36.458088, 35.836086, 18.497309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217674, 35.684444, 18.368979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011852, 35.389477, 18.193958>,  <36.888359, 35.212498, 18.088947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011852, 35.389477, 18.193958>,  <37.217674, 35.684444, 18.368979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011852, 35.389477, 18.193958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495864, 0.160397, -0.853459,
		0.699536, -0.656117, 0.283125,
		-0.514557, -0.737416, -0.437548,
		36.857487, 35.168251, 18.062695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678520, 35.431145, 17.946117>,  <37.217674, 35.684444, 18.368979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678520, 35.431145, 17.946117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339050, 35.287251, 17.791025>,  <37.135368, 35.200912, 17.697969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339050, 35.287251, 17.791025>,  <37.678520, 35.431145, 17.946117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339050, 35.287251, 17.791025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366694, 0.128098, -0.921481,
		0.381158, -0.924219, 0.023199,
		-0.848678, -0.359737, -0.387732,
		37.084446, 35.179329, 17.674706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898426, 34.989315, 17.511787>,  <37.678520, 35.431145, 17.946117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898426, 34.989315, 17.511787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522682, 35.049976, 17.388754>,  <37.297237, 35.086372, 17.314934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522682, 35.049976, 17.388754>,  <37.898426, 34.989315, 17.511787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522682, 35.049976, 17.388754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342420, 0.365553, -0.865517,
		-0.018820, -0.918353, -0.395314,
		-0.939358, 0.151653, -0.307583,
		37.240875, 35.095470, 17.296478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909302, 34.835728, 16.779043>,  <37.898426, 34.989315, 17.511787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909302, 34.835728, 16.779043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587425, 35.061081, 16.853949>,  <37.394299, 35.196293, 16.898891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587425, 35.061081, 16.853949>,  <37.909302, 34.835728, 16.779043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587425, 35.061081, 16.853949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133816, 0.479423, -0.867322,
		-0.578413, -0.672869, -0.461178,
		-0.804693, 0.563383, 0.187264,
		37.346016, 35.230095, 16.910128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366673, 34.596352, 16.367443>,  <37.909302, 34.835728, 16.779043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366673, 34.596352, 16.367443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269329, 34.972755, 16.461493>,  <37.210922, 35.198597, 16.517923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269329, 34.972755, 16.461493>,  <37.366673, 34.596352, 16.367443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269329, 34.972755, 16.461493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048382, 0.253889, -0.966023,
		-0.968728, -0.223716, -0.107314,
		-0.243360, 0.941006, 0.235125,
		37.196320, 35.255058, 16.532030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877831, 34.750595, 15.987541>,  <37.366673, 34.596352, 16.367443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877831, 34.750595, 15.987541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065548, 35.091187, 16.081135>,  <37.178177, 35.295540, 16.137291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065548, 35.091187, 16.081135>,  <36.877831, 34.750595, 15.987541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065548, 35.091187, 16.081135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219828, 0.143982, -0.964855,
		-0.855243, 0.504235, -0.119609,
		0.469293, 0.851478, 0.233984,
		37.206337, 35.346630, 16.151331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783577, 35.211105, 15.437092>,  <36.877831, 34.750595, 15.987541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783577, 35.211105, 15.437092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107910, 35.386189, 15.592509>,  <37.302509, 35.491238, 15.685760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107910, 35.386189, 15.592509>,  <36.783577, 35.211105, 15.437092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107910, 35.386189, 15.592509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215970, 0.393248, -0.893707,
		-0.543978, 0.808558, 0.224325,
		0.810830, 0.437710, 0.388543,
		37.351158, 35.517502, 15.709072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856308, 35.941368, 15.126836>,  <36.783577, 35.211105, 15.437092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856308, 35.941368, 15.126836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208229, 35.819416, 15.272709>,  <37.419380, 35.746246, 15.360233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208229, 35.819416, 15.272709>,  <36.856308, 35.941368, 15.126836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208229, 35.819416, 15.272709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432796, 0.196554, -0.879803,
		0.196554, 0.931888, 0.304880,
		0.879803, -0.304880, 0.364683,
		37.472172, 35.727951, 15.382113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097115, 36.628521, 14.824565>,  <36.856308, 35.941368, 15.126836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097115, 36.628521, 14.824565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325245, 36.956306, 14.847206>,  <37.462124, 37.152977, 14.860790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325245, 36.956306, 14.847206>,  <37.097115, 36.628521, 14.824565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325245, 36.956306, 14.847206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064793, 0.023813, -0.997615,
		-0.818861, 0.572630, -0.039514,
		0.570323, 0.819468, 0.056602,
		37.496342, 37.202148, 14.864186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817570, 37.085445, 14.345228>,  <37.097115, 36.628521, 14.824565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817570, 37.085445, 14.345228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201275, 37.191635, 14.383896>,  <37.431496, 37.255348, 14.407097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201275, 37.191635, 14.383896>,  <36.817570, 37.085445, 14.345228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201275, 37.191635, 14.383896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097289, 0.010844, -0.995197,
		-0.265246, 0.964057, -0.015425,
		0.959260, 0.265473, 0.096669,
		37.489052, 37.271278, 14.412896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980621, 37.519211, 13.745646>,  <36.817570, 37.085445, 14.345228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980621, 37.519211, 13.745646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329544, 37.363655, 13.864203>,  <37.538898, 37.270321, 13.935338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329544, 37.363655, 13.864203>,  <36.980621, 37.519211, 13.745646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329544, 37.363655, 13.864203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422063, 0.292793, -0.857983,
		0.246882, 0.873518, 0.419542,
		0.872303, -0.388894, 0.296394,
		37.591236, 37.246986, 13.953122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595924, 37.983585, 13.549018>,  <36.980621, 37.519211, 13.745646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595924, 37.983585, 13.549018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661209, 37.589230, 13.563909>,  <37.700378, 37.352615, 13.572844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661209, 37.589230, 13.563909>,  <37.595924, 37.983585, 13.549018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661209, 37.589230, 13.563909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455305, 0.041792, -0.889354,
		0.875248, 0.162101, 0.455701,
		0.163210, -0.985889, 0.037227,
		37.710171, 37.293465, 13.575077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059097, 37.575897, 13.167435>,  <37.595924, 37.983585, 13.549018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059097, 37.575897, 13.167435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789692, 37.368267, 12.956936>,  <37.628048, 37.243687, 12.830637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789692, 37.368267, 12.956936>,  <38.059097, 37.575897, 13.167435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789692, 37.368267, 12.956936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733965, -0.385264, -0.559345,
		0.087600, -0.762974, 0.640466,
		-0.673515, -0.519078, -0.526247,
		37.587639, 37.212543, 12.799062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260002, 36.865818, 13.443936>,  <38.059097, 37.575897, 13.167435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260002, 36.865818, 13.443936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065697, 37.189381, 13.576420>,  <37.949112, 37.383518, 13.655910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065697, 37.189381, 13.576420>,  <38.260002, 36.865818, 13.443936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065697, 37.189381, 13.576420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118576, -0.314432, 0.941845,
		0.866009, 0.496790, 0.056823,
		-0.485766, 0.808908, 0.331209,
		37.919968, 37.432053, 13.675782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711655, 37.287033, 13.967117>,  <38.260002, 36.865818, 13.443936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711655, 37.287033, 13.967117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326714, 37.375210, 14.030726>,  <38.095749, 37.428116, 14.068892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326714, 37.375210, 14.030726>,  <38.711655, 37.287033, 13.967117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326714, 37.375210, 14.030726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104909, -0.238477, 0.965465,
		0.250756, 0.945797, 0.206371,
		-0.962349, 0.220446, 0.159022,
		38.038010, 37.441345, 14.078433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667805, 37.752460, 14.538278>,  <38.711655, 37.287033, 13.967117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667805, 37.752460, 14.538278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284248, 37.641453, 14.514555>,  <38.054115, 37.574848, 14.500321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284248, 37.641453, 14.514555>,  <38.667805, 37.752460, 14.538278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284248, 37.641453, 14.514555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063775, 0.007094, 0.997939,
		-0.276529, 0.960693, -0.024501,
		-0.958887, -0.277522, -0.059306,
		37.996582, 37.558197, 14.496763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342693, 38.156216, 15.048724>,  <38.667805, 37.752460, 14.538278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342693, 38.156216, 15.048724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090000, 37.850487, 14.996990>,  <37.938385, 37.667049, 14.965950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090000, 37.850487, 14.996990>,  <38.342693, 38.156216, 15.048724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090000, 37.850487, 14.996990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157689, -0.036649, 0.986808,
		-0.758981, 0.643790, -0.097373,
		-0.631729, -0.764324, -0.129335,
		37.900482, 37.621189, 14.958190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693745, 38.299835, 15.348106>,  <38.342693, 38.156216, 15.048724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693745, 38.299835, 15.348106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725121, 37.901081, 15.351480>,  <37.743946, 37.661831, 15.353505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725121, 37.901081, 15.351480>,  <37.693745, 38.299835, 15.348106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725121, 37.901081, 15.351480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468850, -0.029420, 0.882788,
		-0.879788, -0.073197, -0.469697,
		0.078436, -0.996884, 0.008435,
		37.748650, 37.602016, 15.354011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989723, 37.982830, 15.576940>,  <37.693745, 38.299835, 15.348106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989723, 37.982830, 15.576940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290997, 37.744694, 15.688853>,  <37.471760, 37.601810, 15.756001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290997, 37.744694, 15.688853>,  <36.989723, 37.982830, 15.576940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290997, 37.744694, 15.688853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262935, 0.117403, 0.957644,
		-0.602975, -0.794847, -0.068111,
		0.753184, -0.595344, 0.279784,
		37.516953, 37.566090, 15.772789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670902, 37.587143, 16.127520>,  <36.989723, 37.982830, 15.576940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670902, 37.587143, 16.127520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068577, 37.587551, 16.170588>,  <37.307182, 37.587795, 16.196428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068577, 37.587551, 16.170588>,  <36.670902, 37.587143, 16.127520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068577, 37.587551, 16.170588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103798, 0.274963, 0.955835,
		-0.028631, -0.961454, 0.273470,
		0.994186, 0.001019, 0.107669,
		37.366833, 37.587856, 16.202888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772427, 37.210381, 16.744434>,  <36.670902, 37.587143, 16.127520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772427, 37.210381, 16.744434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115231, 37.405777, 16.678823>,  <37.320911, 37.523014, 16.639458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115231, 37.405777, 16.678823>,  <36.772427, 37.210381, 16.744434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115231, 37.405777, 16.678823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066988, 0.209997, 0.975405,
		0.510926, -0.846919, 0.147246,
		0.857011, 0.488496, -0.164026,
		37.372334, 37.552326, 16.629616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315800, 36.903648, 17.182173>,  <36.772427, 37.210381, 16.744434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315800, 36.903648, 17.182173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473988, 37.258247, 17.086073>,  <37.568901, 37.471008, 17.028414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473988, 37.258247, 17.086073>,  <37.315800, 36.903648, 17.182173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473988, 37.258247, 17.086073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119784, 0.209559, 0.970431,
		0.910635, -0.412554, -0.023315,
		0.395469, 0.886502, -0.240249,
		37.592628, 37.524197, 17.013998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069183, 37.004879, 17.549746>,  <37.315800, 36.903648, 17.182173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069183, 37.004879, 17.549746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913280, 37.369457, 17.497059>,  <37.819736, 37.588203, 17.465446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913280, 37.369457, 17.497059>,  <38.069183, 37.004879, 17.549746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913280, 37.369457, 17.497059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097787, 0.101258, 0.990043,
		0.915709, 0.398760, 0.049661,
		-0.389761, 0.911448, -0.131716,
		37.796352, 37.642891, 17.457544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436260, 37.429955, 18.006622>,  <38.069183, 37.004879, 17.549746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436260, 37.429955, 18.006622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087860, 37.610474, 17.928970>,  <37.878819, 37.718784, 17.882380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087860, 37.610474, 17.928970>,  <38.436260, 37.429955, 18.006622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087860, 37.610474, 17.928970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203968, 0.027297, 0.978597,
		0.446934, 0.891958, 0.068274,
		-0.871004, 0.451294, -0.194130,
		37.826557, 37.745861, 17.870731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298206, 37.842442, 18.552080>,  <38.436260, 37.429955, 18.006622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298206, 37.842442, 18.552080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932777, 37.843254, 18.389414>,  <37.713520, 37.843742, 18.291815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932777, 37.843254, 18.389414>,  <38.298206, 37.842442, 18.552080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932777, 37.843254, 18.389414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406461, 0.027399, 0.913257,
		0.012993, 0.999623, -0.024208,
		-0.913576, 0.002027, -0.406664,
		37.658703, 37.843861, 18.267414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972202, 38.345791, 18.858505>,  <38.298206, 37.842442, 18.552080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972202, 38.345791, 18.858505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669506, 38.136688, 18.701500>,  <37.487888, 38.011227, 18.607296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669506, 38.136688, 18.701500>,  <37.972202, 38.345791, 18.858505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669506, 38.136688, 18.701500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507829, 0.092001, 0.856531,
		-0.411646, 0.847503, -0.335092,
		-0.756741, -0.522757, -0.392515,
		37.442482, 37.979862, 18.583746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327511, 38.820690, 18.838413>,  <37.972202, 38.345791, 18.858505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327511, 38.820690, 18.838413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256973, 38.427509, 18.859238>,  <37.214649, 38.191601, 18.871733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256973, 38.427509, 18.859238>,  <37.327511, 38.820690, 18.838413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256973, 38.427509, 18.859238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274870, 0.099963, 0.956271,
		-0.945171, 0.154323, -0.287811,
		-0.176345, -0.982950, 0.052063,
		37.204071, 38.132626, 18.874857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778278, 38.771729, 19.317101>,  <37.327511, 38.820690, 18.838413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778278, 38.771729, 19.317101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894058, 38.391567, 19.271587>,  <36.963528, 38.163471, 19.244280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894058, 38.391567, 19.271587>,  <36.778278, 38.771729, 19.317101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894058, 38.391567, 19.271587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435221, -0.236547, 0.868693,
		-0.852526, -0.201924, -0.482105,
		0.289450, -0.950406, -0.113781,
		36.980892, 38.106445, 19.237453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178349, 38.430744, 19.506897>,  <36.778278, 38.771729, 19.317101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178349, 38.430744, 19.506897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495045, 38.190884, 19.553488>,  <36.685062, 38.046967, 19.581442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495045, 38.190884, 19.553488>,  <36.178349, 38.430744, 19.506897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495045, 38.190884, 19.553488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244765, -0.136714, 0.959896,
		-0.559683, -0.788494, -0.255016,
		0.791736, -0.599656, 0.116479,
		36.732567, 38.010986, 19.588432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936954, 37.900681, 19.845387>,  <36.178349, 38.430744, 19.506897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936954, 37.900681, 19.845387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332413, 37.884075, 19.903166>,  <36.569687, 37.874111, 19.937834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332413, 37.884075, 19.903166>,  <35.936954, 37.900681, 19.845387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332413, 37.884075, 19.903166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149560, -0.176770, 0.972823,
		-0.014853, -0.983376, -0.180971,
		0.988641, -0.041515, 0.144449,
		36.629005, 37.871620, 19.946501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111668, 37.272873, 20.235136>,  <35.936954, 37.900681, 19.845387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111668, 37.272873, 20.235136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437019, 37.494255, 20.306807>,  <36.632229, 37.627083, 20.349810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437019, 37.494255, 20.306807>,  <36.111668, 37.272873, 20.235136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437019, 37.494255, 20.306807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107390, -0.159855, 0.981282,
		0.571738, -0.817394, -0.070587,
		0.813377, 0.553456, 0.179176,
		36.681034, 37.660294, 20.360559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514137, 36.892715, 20.696556>,  <36.111668, 37.272873, 20.235136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514137, 36.892715, 20.696556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621044, 37.276241, 20.735004>,  <36.685188, 37.506359, 20.758074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621044, 37.276241, 20.735004>,  <36.514137, 36.892715, 20.696556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621044, 37.276241, 20.735004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034679, -0.090114, 0.995328,
		0.963000, -0.269347, 0.009167,
		0.267262, 0.958818, 0.096120,
		36.701221, 37.563889, 20.763840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787075, 36.912666, 21.390167>,  <36.514137, 36.892715, 20.696556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787075, 36.912666, 21.390167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785507, 37.303925, 21.307009>,  <36.784565, 37.538677, 21.257113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785507, 37.303925, 21.307009>,  <36.787075, 36.912666, 21.390167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785507, 37.303925, 21.307009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087261, 0.206771, 0.974490,
		0.996178, 0.021962, 0.084543,
		-0.003921, 0.978143, -0.207897,
		36.784332, 37.597366, 21.244640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243328, 37.260479, 21.839787>,  <36.787075, 36.912666, 21.390167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243328, 37.260479, 21.839787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968140, 37.527309, 21.725445>,  <36.803028, 37.687408, 21.656839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968140, 37.527309, 21.725445>,  <37.243328, 37.260479, 21.839787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968140, 37.527309, 21.725445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241930, 0.160550, 0.956919,
		0.684230, 0.727486, 0.050932,
		-0.687967, 0.667074, -0.285854,
		36.761749, 37.727432, 21.639688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403282, 37.817574, 22.284348>,  <37.243328, 37.260479, 21.839787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403282, 37.817574, 22.284348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036186, 37.933994, 22.176247>,  <36.815929, 38.003849, 22.111385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036186, 37.933994, 22.176247>,  <37.403282, 37.817574, 22.284348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036186, 37.933994, 22.176247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225641, 0.177891, 0.957831,
		0.326857, 0.940022, -0.097584,
		-0.917742, 0.291055, -0.270253,
		36.760864, 38.021313, 22.095171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210751, 38.340511, 22.820917>,  <37.403282, 37.817574, 22.284348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210751, 38.340511, 22.820917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860710, 38.251320, 22.649111>,  <36.650688, 38.197803, 22.546026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860710, 38.251320, 22.649111>,  <37.210751, 38.340511, 22.820917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860710, 38.251320, 22.649111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475893, 0.235238, 0.847460,
		-0.087930, 0.946013, -0.311972,
		-0.875096, -0.222983, -0.429517,
		36.598183, 38.184425, 22.520256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818298, 38.867336, 23.050507>,  <37.210751, 38.340511, 22.820917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818298, 38.867336, 23.050507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553707, 38.588581, 22.939653>,  <36.394955, 38.421329, 22.873142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553707, 38.588581, 22.939653>,  <36.818298, 38.867336, 23.050507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553707, 38.588581, 22.939653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535885, 0.180683, 0.824731,
		-0.524670, 0.694049, -0.492967,
		-0.661474, -0.696886, -0.277131,
		36.355267, 38.379517, 22.856514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144501, 39.195934, 23.073067>,  <36.818298, 38.867336, 23.050507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144501, 39.195934, 23.073067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084999, 38.803143, 23.119698>,  <36.049297, 38.567467, 23.147676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084999, 38.803143, 23.119698>,  <36.144501, 39.195934, 23.073067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084999, 38.803143, 23.119698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642242, 0.185579, 0.743697,
		-0.751929, 0.035759, -0.658274,
		-0.148755, -0.981978, 0.116576,
		36.040371, 38.508549, 23.154671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509037, 39.054764, 23.058706>,  <36.144501, 39.195934, 23.073067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509037, 39.054764, 23.058706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634575, 38.723843, 23.245071>,  <35.709900, 38.525291, 23.356890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634575, 38.723843, 23.245071>,  <35.509037, 39.054764, 23.058706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634575, 38.723843, 23.245071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673614, 0.151811, 0.723324,
		-0.669137, -0.540858, -0.509635,
		0.313847, -0.827301, 0.465911,
		35.728729, 38.475651, 23.384846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826241, 38.700325, 23.206003>,  <35.509037, 39.054764, 23.058706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826241, 38.700325, 23.206003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100746, 38.557739, 23.459610>,  <35.265450, 38.472187, 23.611774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100746, 38.557739, 23.459610>,  <34.826241, 38.700325, 23.206003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100746, 38.557739, 23.459610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647864, 0.096668, 0.755597,
		-0.330636, -0.929293, -0.164604,
		0.686259, -0.356469, 0.634017,
		35.306625, 38.450798, 23.649815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504700, 38.158871, 23.546978>,  <34.826241, 38.700325, 23.206003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504700, 38.158871, 23.546978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828800, 38.236710, 23.768110>,  <35.023262, 38.283413, 23.900789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828800, 38.236710, 23.768110>,  <34.504700, 38.158871, 23.546978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828800, 38.236710, 23.768110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553654, -0.055263, 0.830911,
		0.192244, -0.979325, 0.062962,
		0.810253, 0.194597, 0.552832,
		35.071877, 38.295090, 23.933960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245941, 37.818199, 24.149206>,  <34.504700, 38.158871, 23.546978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245941, 37.818199, 24.149206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548073, 38.063915, 24.240538>,  <34.729351, 38.211346, 24.295336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548073, 38.063915, 24.240538>,  <34.245941, 37.818199, 24.149206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548073, 38.063915, 24.240538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398990, 0.154651, 0.903820,
		0.519895, -0.773778, 0.361907,
		0.755325, 0.614289, 0.228327,
		34.774670, 38.248203, 24.309036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527206, 37.670029, 24.705502>,  <34.245941, 37.818199, 24.149206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527206, 37.670029, 24.705502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637127, 38.053997, 24.683453>,  <34.703079, 38.284378, 24.670223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637127, 38.053997, 24.683453>,  <34.527206, 37.670029, 24.705502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637127, 38.053997, 24.683453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047562, 0.070831, 0.996354,
		0.960325, -0.271174, 0.065119,
		0.274798, 0.959920, -0.055123,
		34.719566, 38.341972, 24.666916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078949, 37.755955, 25.144577>,  <34.527206, 37.670029, 24.705502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078949, 37.755955, 25.144577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922726, 38.118862, 25.082178>,  <34.828991, 38.336605, 25.044739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922726, 38.118862, 25.082178>,  <35.078949, 37.755955, 25.144577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922726, 38.118862, 25.082178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117408, 0.118981, 0.985930,
		0.913062, 0.403375, 0.060052,
		-0.390555, 0.907266, -0.155996,
		34.805557, 38.391041, 25.035379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116455, 37.973167, 25.724987>,  <35.078949, 37.755955, 25.144577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116455, 37.973167, 25.724987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888157, 38.258915, 25.563040>,  <34.751179, 38.430363, 25.465872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888157, 38.258915, 25.563040>,  <35.116455, 37.973167, 25.724987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888157, 38.258915, 25.563040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280881, 0.293465, 0.913775,
		0.771590, 0.635256, 0.033159,
		-0.570749, 0.714373, -0.404866,
		34.716930, 38.473228, 25.441580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443638, 38.634308, 26.017475>,  <35.116455, 37.973167, 25.724987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443638, 38.634308, 26.017475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057583, 38.654633, 25.914774>,  <34.825951, 38.666828, 25.853153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057583, 38.654633, 25.914774>,  <35.443638, 38.634308, 26.017475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057583, 38.654633, 25.914774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232013, 0.287935, 0.929120,
		0.121136, 0.956301, -0.266109,
		-0.965140, 0.050809, -0.256754,
		34.768040, 38.669876, 25.837748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148548, 39.305653, 26.273335>,  <35.443638, 38.634308, 26.017475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148548, 39.305653, 26.273335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835880, 39.060913, 26.224941>,  <34.648281, 38.914070, 26.195906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835880, 39.060913, 26.224941>,  <35.148548, 39.305653, 26.273335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835880, 39.060913, 26.224941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356477, 0.279109, 0.891640,
		-0.511783, 0.740092, -0.436281,
		-0.781666, -0.611851, -0.120982,
		34.601379, 38.877357, 26.188646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565731, 39.693718, 26.490730>,  <35.148548, 39.305653, 26.273335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565731, 39.693718, 26.490730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458687, 39.309669, 26.523125>,  <34.394459, 39.079243, 26.542561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458687, 39.309669, 26.523125>,  <34.565731, 39.693718, 26.490730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458687, 39.309669, 26.523125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166268, 0.128807, 0.977632,
		-0.949073, 0.248158, -0.194106,
		-0.267610, -0.960118, 0.080987,
		34.378403, 39.021633, 26.547421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897415, 39.669064, 26.991589>,  <34.565731, 39.693718, 26.490730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897415, 39.669064, 26.991589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011196, 39.287518, 26.953173>,  <34.079464, 39.058590, 26.930124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011196, 39.287518, 26.953173>,  <33.897415, 39.669064, 26.991589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011196, 39.287518, 26.953173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308467, -0.185913, 0.932890,
		-0.907709, -0.235738, -0.347120,
		0.284452, -0.953868, -0.096038,
		34.096531, 39.001358, 26.924362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335194, 39.223530, 27.171463>,  <33.897415, 39.669064, 26.991589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335194, 39.223530, 27.171463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657063, 38.995747, 27.238649>,  <33.850185, 38.859077, 27.278961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657063, 38.995747, 27.238649>,  <33.335194, 39.223530, 27.171463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657063, 38.995747, 27.238649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269250, -0.097869, 0.958084,
		-0.529154, -0.816171, -0.232081,
		0.804674, -0.569462, 0.167966,
		33.898464, 38.824909, 27.289040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076874, 38.769577, 27.506433>,  <33.335194, 39.223530, 27.171463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076874, 38.769577, 27.506433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462040, 38.701923, 27.590519>,  <33.693138, 38.661331, 27.640970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462040, 38.701923, 27.590519>,  <33.076874, 38.769577, 27.506433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462040, 38.701923, 27.590519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242193, -0.198478, 0.949710,
		-0.118906, -0.965402, -0.232080,
		0.962914, -0.169134, 0.210214,
		33.750916, 38.651180, 27.653584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045120, 38.261765, 28.049591>,  <33.076874, 38.769577, 27.506433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045120, 38.261765, 28.049591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415142, 38.412800, 28.066105>,  <33.637154, 38.503422, 28.076014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415142, 38.412800, 28.066105>,  <33.045120, 38.261765, 28.049591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415142, 38.412800, 28.066105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024786, -0.048448, 0.998518,
		0.379029, -0.924705, -0.035458,
		0.925052, 0.377589, 0.041283,
		33.692657, 38.526077, 28.078489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443386, 37.822300, 28.471111>,  <33.045120, 38.261765, 28.049591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443386, 37.822300, 28.471111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623615, 38.179264, 28.480768>,  <33.731754, 38.393444, 28.486563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623615, 38.179264, 28.480768>,  <33.443386, 37.822300, 28.471111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623615, 38.179264, 28.480768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022296, -0.015784, 0.999627,
		0.892460, -0.450945, 0.012785,
		0.450575, 0.892412, 0.024141,
		33.758789, 38.446987, 28.488010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075191, 37.746563, 28.798027>,  <33.443386, 37.822300, 28.471111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075191, 37.746563, 28.798027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987000, 38.134541, 28.839197>,  <33.934086, 38.367329, 28.863899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987000, 38.134541, 28.839197>,  <34.075191, 37.746563, 28.798027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987000, 38.134541, 28.839197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288851, -0.035860, 0.956702,
		0.931641, 0.240661, -0.272263,
		-0.220478, 0.969947, 0.102924,
		33.920856, 38.425526, 28.870075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636932, 38.008053, 29.232273>,  <34.075191, 37.746563, 28.798027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636932, 38.008053, 29.232273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365360, 38.301662, 29.238777>,  <34.202419, 38.477829, 29.242680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365360, 38.301662, 29.238777>,  <34.636932, 38.008053, 29.232273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365360, 38.301662, 29.238777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158563, 0.124962, 0.979409,
		0.716880, 0.667525, -0.201230,
		-0.678926, 0.734026, 0.016262,
		34.161682, 38.521870, 29.243656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924946, 38.565311, 29.583893>,  <34.636932, 38.008053, 29.232273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924946, 38.565311, 29.583893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531460, 38.620991, 29.629387>,  <34.295368, 38.654396, 29.656685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531460, 38.620991, 29.629387>,  <34.924946, 38.565311, 29.583893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531460, 38.620991, 29.629387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149570, 0.282888, 0.947419,
		0.099702, 0.948999, -0.299100,
		-0.983711, 0.139196, 0.113738,
		34.236347, 38.662750, 29.663507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502647, 37.988289, 29.288910>,  <34.924946, 38.565311, 29.583893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502647, 37.988289, 29.288910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828583, 37.891266, 29.499510>,  <36.024143, 37.833054, 29.625870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828583, 37.891266, 29.499510>,  <35.502647, 37.988289, 29.288910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828583, 37.891266, 29.499510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563264, 0.116641, -0.818003,
		0.136999, 0.963100, 0.231666,
		0.814841, -0.242554, 0.526500,
		36.073036, 37.818501, 29.657459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956551, 38.623005, 29.202135>,  <35.502647, 37.988289, 29.288910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956551, 38.623005, 29.202135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194122, 38.312439, 29.286453>,  <36.336666, 38.126099, 29.337044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194122, 38.312439, 29.286453>,  <35.956551, 38.623005, 29.202135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194122, 38.312439, 29.286453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651488, 0.310423, -0.692243,
		0.472030, 0.548474, 0.690191,
		0.593929, -0.776411, 0.210795,
		36.372299, 38.079517, 29.349691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727287, 38.917694, 29.305275>,  <35.956551, 38.623005, 29.202135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727287, 38.917694, 29.305275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745872, 38.522461, 29.246572>,  <36.757023, 38.285320, 29.211351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745872, 38.522461, 29.246572>,  <36.727287, 38.917694, 29.305275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745872, 38.522461, 29.246572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797458, 0.125169, -0.590249,
		0.601583, -0.089604, 0.793769,
		0.046467, -0.988081, -0.146755,
		36.759811, 38.226036, 29.202545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401493, 38.696362, 29.075827>,  <36.727287, 38.917694, 29.305275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401493, 38.696362, 29.075827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194786, 38.375256, 28.956823>,  <37.070763, 38.182590, 28.885422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194786, 38.375256, 28.956823>,  <37.401493, 38.696362, 29.075827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194786, 38.375256, 28.956823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512055, -0.011327, -0.858878,
		0.686110, -0.596184, 0.416915,
		-0.516772, -0.802768, -0.297508,
		37.039753, 38.134426, 28.867571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895252, 38.140289, 28.872969>,  <37.401493, 38.696362, 29.075827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895252, 38.140289, 28.872969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553833, 38.063305, 28.679300>,  <37.348984, 38.017117, 28.563099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553833, 38.063305, 28.679300>,  <37.895252, 38.140289, 28.872969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553833, 38.063305, 28.679300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487185, 0.034614, -0.872612,
		0.184701, -0.980694, 0.064219,
		-0.853543, -0.192459, -0.484173,
		37.297771, 38.005566, 28.534048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083885, 37.597622, 28.496807>,  <37.895252, 38.140289, 28.872969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083885, 37.597622, 28.496807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770798, 37.752949, 28.302259>,  <37.582943, 37.846146, 28.185532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770798, 37.752949, 28.302259>,  <38.083885, 37.597622, 28.496807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770798, 37.752949, 28.302259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498133, -0.077609, -0.863620,
		-0.373106, -0.918252, -0.132687,
		-0.782723, 0.388317, -0.486368,
		37.535980, 37.869446, 28.156349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006168, 37.085701, 27.984791>,  <38.083885, 37.597622, 28.496807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006168, 37.085701, 27.984791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821896, 37.423290, 27.874901>,  <37.711330, 37.625843, 27.808966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821896, 37.423290, 27.874901>,  <38.006168, 37.085701, 27.984791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821896, 37.423290, 27.874901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499035, -0.009669, -0.866528,
		-0.733986, -0.536292, -0.416720,
		-0.460683, 0.843977, -0.274726,
		37.683689, 37.676483, 27.792482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946396, 36.992725, 27.315710>,  <38.006168, 37.085701, 27.984791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946396, 36.992725, 27.315710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892452, 37.388203, 27.341908>,  <37.860085, 37.625488, 27.357626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892452, 37.388203, 27.341908>,  <37.946396, 36.992725, 27.315710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892452, 37.388203, 27.341908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532736, 0.128081, -0.836533,
		-0.835467, -0.077924, -0.543988,
		-0.134860, 0.988698, 0.065495,
		37.851994, 37.684811, 27.361555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029465, 37.207775, 26.631029>,  <37.946396, 36.992725, 27.315710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029465, 37.207775, 26.631029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032665, 37.562542, 26.815775>,  <38.034584, 37.775402, 26.926622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032665, 37.562542, 26.815775>,  <38.029465, 37.207775, 26.631029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032665, 37.562542, 26.815775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420835, 0.415997, -0.806129,
		-0.907102, 0.200818, -0.369917,
		0.008001, 0.886915, 0.461863,
		38.035065, 37.828617, 26.954334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721340, 37.669163, 26.206232>,  <38.029465, 37.207775, 26.631029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721340, 37.669163, 26.206232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959064, 37.884247, 26.445454>,  <38.101700, 38.013298, 26.588985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959064, 37.884247, 26.445454>,  <37.721340, 37.669163, 26.206232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959064, 37.884247, 26.445454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345927, 0.500408, -0.793679,
		-0.726037, 0.678574, 0.111390,
		0.594311, 0.537707, 0.598052,
		38.137356, 38.045559, 26.624868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611748, 38.352962, 25.945055>,  <37.721340, 37.669163, 26.206232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611748, 38.352962, 25.945055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953484, 38.329956, 26.151663>,  <38.158524, 38.316154, 26.275627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953484, 38.329956, 26.151663>,  <37.611748, 38.352962, 25.945055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953484, 38.329956, 26.151663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443234, 0.599589, -0.666361,
		-0.271376, 0.798239, 0.537745,
		0.854341, -0.057513, 0.516521,
		38.209785, 38.312702, 26.306620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943668, 38.889816, 25.733362>,  <37.611748, 38.352962, 25.945055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943668, 38.889816, 25.733362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244034, 38.674442, 25.886318>,  <38.424252, 38.545219, 25.978092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244034, 38.674442, 25.886318>,  <37.943668, 38.889816, 25.733362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244034, 38.674442, 25.886318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615541, 0.360861, -0.700634,
		0.239257, 0.761489, 0.602403,
		0.750910, -0.538436, 0.382389,
		38.469307, 38.512913, 26.001036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501060, 39.359612, 26.085032>,  <37.943668, 38.889816, 25.733362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501060, 39.359612, 26.085032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667114, 39.014450, 25.969757>,  <38.766747, 38.807354, 25.900593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667114, 39.014450, 25.969757>,  <38.501060, 39.359612, 26.085032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667114, 39.014450, 25.969757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466581, 0.473884, -0.746817,
		0.781002, 0.175568, 0.599343,
		0.415137, -0.862908, -0.288188,
		38.791656, 38.755577, 25.883301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135994, 39.555458, 25.782883>,  <38.501060, 39.359612, 26.085032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135994, 39.555458, 25.782883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065361, 39.181522, 25.659664>,  <39.022980, 38.957161, 25.585733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065361, 39.181522, 25.659664>,  <39.135994, 39.555458, 25.782883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065361, 39.181522, 25.659664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179830, 0.277057, -0.943875,
		0.967718, -0.222070, 0.119188,
		-0.176585, -0.934839, -0.308048,
		39.012386, 38.901070, 25.567249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619598, 39.653629, 25.213726>,  <39.135994, 39.555458, 25.782883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619598, 39.653629, 25.213726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400608, 39.326530, 25.142658>,  <39.269215, 39.130272, 25.100018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400608, 39.326530, 25.142658>,  <39.619598, 39.653629, 25.213726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400608, 39.326530, 25.142658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081317, 0.159320, -0.983872,
		0.832863, -0.553091, -0.020726,
		-0.547473, -0.817745, -0.177668,
		39.236366, 39.081207, 25.089357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012375, 39.213055, 24.769251>,  <39.619598, 39.653629, 25.213726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012375, 39.213055, 24.769251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626175, 39.128143, 24.708914>,  <39.394455, 39.077198, 24.672712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626175, 39.128143, 24.708914>,  <40.012375, 39.213055, 24.769251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626175, 39.128143, 24.708914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153698, 0.003081, -0.988113,
		0.210218, -0.977205, 0.029652,
		-0.965498, -0.212277, -0.150843,
		39.336525, 39.064461, 24.663662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976295, 38.617405, 24.294682>,  <40.012375, 39.213055, 24.769251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976295, 38.617405, 24.294682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609600, 38.773247, 24.259377>,  <39.389584, 38.866753, 24.238194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609600, 38.773247, 24.259377>,  <39.976295, 38.617405, 24.294682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609600, 38.773247, 24.259377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100862, 0.011951, -0.994829,
		-0.386536, -0.920904, -0.050253,
		-0.916742, 0.389606, -0.088265,
		39.334576, 38.890129, 24.232897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731178, 38.284260, 23.746441>,  <39.976295, 38.617405, 24.294682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731178, 38.284260, 23.746441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492268, 38.604362, 23.767765>,  <39.348923, 38.796425, 23.780560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492268, 38.604362, 23.767765>,  <39.731178, 38.284260, 23.746441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492268, 38.604362, 23.767765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020116, 0.051504, -0.998470,
		-0.801782, -0.597437, -0.014664,
		-0.597278, 0.800260, 0.053313,
		39.313084, 38.844440, 23.783758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054665, 38.189529, 23.342333>,  <39.731178, 38.284260, 23.746441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054665, 38.189529, 23.342333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107010, 38.585838, 23.356464>,  <39.138416, 38.823624, 23.364943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107010, 38.585838, 23.356464>,  <39.054665, 38.189529, 23.342333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107010, 38.585838, 23.356464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362137, 0.080944, -0.928604,
		-0.922893, 0.108730, 0.369388,
		0.130867, 0.990770, 0.035328,
		39.146271, 38.883068, 23.367064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546021, 38.474670, 22.859646>,  <39.054665, 38.189529, 23.342333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546021, 38.474670, 22.859646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772560, 38.800880, 22.907259>,  <38.908485, 38.996605, 22.935827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772560, 38.800880, 22.907259>,  <38.546021, 38.474670, 22.859646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772560, 38.800880, 22.907259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194025, 0.272303, -0.942446,
		-0.800999, 0.510661, 0.312451,
		0.566352, 0.815522, 0.119034,
		38.942467, 39.045536, 22.942968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188160, 39.057957, 22.529524>,  <38.546021, 38.474670, 22.859646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188160, 39.057957, 22.529524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577469, 39.146748, 22.553053>,  <38.811054, 39.200024, 22.567171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577469, 39.146748, 22.553053>,  <38.188160, 39.057957, 22.529524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577469, 39.146748, 22.553053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082854, -0.100541, -0.991477,
		-0.214172, 0.969854, -0.116246,
		0.973276, 0.221978, 0.058824,
		38.869453, 39.213341, 22.570700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400078, 39.676308, 21.980764>,  <38.188160, 39.057957, 22.529524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400078, 39.676308, 21.980764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727654, 39.472931, 22.087210>,  <38.924198, 39.350906, 22.151077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727654, 39.472931, 22.087210>,  <38.400078, 39.676308, 21.980764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727654, 39.472931, 22.087210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077883, -0.360956, -0.929325,
		0.568565, 0.781790, -0.256004,
		0.818944, -0.508443, 0.266115,
		38.973335, 39.320396, 22.167044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718567, 39.800488, 21.369230>,  <38.400078, 39.676308, 21.980764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718567, 39.800488, 21.369230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940495, 39.508682, 21.529228>,  <39.073650, 39.333599, 21.625227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940495, 39.508682, 21.529228>,  <38.718567, 39.800488, 21.369230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940495, 39.508682, 21.529228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049136, -0.451207, -0.891065,
		0.830522, 0.514030, -0.214492,
		0.554815, -0.729510, 0.399995,
		39.106937, 39.289829, 21.649227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245182, 39.582832, 20.930599>,  <38.718567, 39.800488, 21.369230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245182, 39.582832, 20.930599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265484, 39.251408, 21.153637>,  <39.277664, 39.052555, 21.287460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265484, 39.251408, 21.153637>,  <39.245182, 39.582832, 20.930599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265484, 39.251408, 21.153637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335291, -0.511775, -0.790990,
		0.940747, 0.227102, 0.251834,
		0.050753, -0.828559, 0.557596,
		39.280708, 39.002838, 21.320915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870213, 39.206165, 20.746666>,  <39.245182, 39.582832, 20.930599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870213, 39.206165, 20.746666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644337, 38.929035, 20.926050>,  <39.508812, 38.762756, 21.033680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644337, 38.929035, 20.926050>,  <39.870213, 39.206165, 20.746666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644337, 38.929035, 20.926050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243840, -0.659190, -0.711344,
		0.788458, -0.292336, 0.541178,
		-0.564691, -0.692826, 0.448461,
		39.474930, 38.721188, 21.060589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319019, 38.601536, 20.930107>,  <39.870213, 39.206165, 20.746666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319019, 38.601536, 20.930107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946449, 38.456573, 20.943466>,  <39.722908, 38.369598, 20.951481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946449, 38.456573, 20.943466>,  <40.319019, 38.601536, 20.930107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946449, 38.456573, 20.943466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246251, -0.695137, -0.675385,
		0.267978, -0.620844, 0.736709,
		-0.931423, -0.362404, 0.033398,
		39.667023, 38.347851, 20.953485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336399, 37.739292, 20.972086>,  <40.319019, 38.601536, 20.930107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336399, 37.739292, 20.972086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984856, 37.866215, 20.829580>,  <39.773930, 37.942368, 20.744076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984856, 37.866215, 20.829580>,  <40.336399, 37.739292, 20.972086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984856, 37.866215, 20.829580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055360, -0.673883, -0.736761,
		-0.473862, -0.667230, 0.574681,
		-0.878857, 0.317309, -0.356266,
		39.721199, 37.961407, 20.722700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001350, 37.193268, 20.848289>,  <40.336399, 37.739292, 20.972086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001350, 37.193268, 20.848289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792854, 37.453854, 20.627783>,  <39.667755, 37.610207, 20.495478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792854, 37.453854, 20.627783>,  <40.001350, 37.193268, 20.848289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792854, 37.453854, 20.627783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078906, -0.606403, -0.791233,
		-0.849754, -0.455921, 0.264677,
		-0.521240, 0.651469, -0.551269,
		39.636482, 37.649296, 20.462402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597603, 36.841831, 20.383957>,  <40.001350, 37.193268, 20.848289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597603, 36.841831, 20.383957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626976, 37.193638, 20.195892>,  <39.644600, 37.404724, 20.083054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626976, 37.193638, 20.195892>,  <39.597603, 36.841831, 20.383957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626976, 37.193638, 20.195892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049137, -0.474050, -0.879125,
		-0.996089, 0.041458, -0.078030,
		0.073437, 0.879521, -0.470159,
		39.649006, 37.457493, 20.054844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071888, 36.803246, 19.797749>,  <39.597603, 36.841831, 20.383957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071888, 36.803246, 19.797749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357735, 37.074917, 19.730755>,  <39.529243, 37.237919, 19.690559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357735, 37.074917, 19.730755>,  <39.071888, 36.803246, 19.797749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357735, 37.074917, 19.730755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021569, -0.217917, -0.975729,
		-0.699187, 0.700881, -0.141077,
		0.714613, 0.679174, -0.167482,
		39.572117, 37.278667, 19.680510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822926, 37.181446, 19.256207>,  <39.071888, 36.803246, 19.797749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822926, 37.181446, 19.256207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214317, 37.262997, 19.243511>,  <39.449154, 37.311928, 19.235893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214317, 37.262997, 19.243511>,  <38.822926, 37.181446, 19.256207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214317, 37.262997, 19.243511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002363, -0.164884, -0.986310,
		-0.206321, 0.965011, -0.161818,
		0.978482, 0.203879, -0.031739,
		39.507862, 37.324162, 19.233990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971584, 37.551815, 18.717192>,  <38.822926, 37.181446, 19.256207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971584, 37.551815, 18.717192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332634, 37.389977, 18.775938>,  <39.549263, 37.292873, 18.811186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332634, 37.389977, 18.775938>,  <38.971584, 37.551815, 18.717192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332634, 37.389977, 18.775938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060568, -0.218428, -0.973971,
		0.426143, 0.888028, -0.172653,
		0.902626, -0.404594, 0.146868,
		39.603420, 37.268597, 18.819998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440666, 37.715282, 18.068449>,  <38.971584, 37.551815, 18.717192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440666, 37.715282, 18.068449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592014, 37.389233, 18.243910>,  <39.682823, 37.193604, 18.349186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592014, 37.389233, 18.243910>,  <39.440666, 37.715282, 18.068449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592014, 37.389233, 18.243910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085837, -0.440946, -0.893420,
		0.921667, 0.375693, -0.096871,
		0.378367, -0.815121, 0.438654,
		39.705524, 37.144695, 18.375505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070377, 37.631580, 17.686558>,  <39.440666, 37.715282, 18.068449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070377, 37.631580, 17.686558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001614, 37.278217, 17.860928>,  <39.960354, 37.066200, 17.965549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001614, 37.278217, 17.860928>,  <40.070377, 37.631580, 17.686558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001614, 37.278217, 17.860928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037933, -0.448122, -0.893167,
		0.984382, -0.137008, 0.110546,
		-0.171909, -0.883411, 0.435926,
		39.950043, 37.013195, 17.991705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510777, 37.087719, 17.289103>,  <40.070377, 37.631580, 17.686558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510777, 37.087719, 17.289103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226452, 36.902828, 17.501177>,  <40.055859, 36.791893, 17.628422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226452, 36.902828, 17.501177>,  <40.510777, 37.087719, 17.289103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226452, 36.902828, 17.501177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043062, -0.723754, -0.688713,
		0.702066, -0.512375, 0.494547,
		-0.710809, -0.462226, 0.530186,
		40.013210, 36.764160, 17.660233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801590, 36.452778, 17.349573>,  <40.510777, 37.087719, 17.289103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801590, 36.452778, 17.349573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412819, 36.398384, 17.426373>,  <40.179558, 36.365749, 17.472452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412819, 36.398384, 17.426373>,  <40.801590, 36.452778, 17.349573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412819, 36.398384, 17.426373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035238, -0.722714, -0.690248,
		0.232624, -0.677637, 0.697634,
		-0.971928, -0.135985, 0.191999,
		40.121239, 36.357590, 17.483973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723038, 35.773739, 17.531456>,  <40.801590, 36.452778, 17.349573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723038, 35.773739, 17.531456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377121, 35.906437, 17.380684>,  <40.169571, 35.986053, 17.290220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377121, 35.906437, 17.380684>,  <40.723038, 35.773739, 17.531456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377121, 35.906437, 17.380684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018246, -0.770938, -0.636648,
		-0.501793, -0.543693, 0.672757,
		-0.864796, 0.331741, -0.376931,
		40.117683, 36.005959, 17.267605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333904, 35.115128, 17.398472>,  <40.723038, 35.773739, 17.531456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333904, 35.115128, 17.398472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156002, 35.403801, 17.186296>,  <40.049259, 35.577003, 17.058990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156002, 35.403801, 17.186296>,  <40.333904, 35.115128, 17.398472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156002, 35.403801, 17.186296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188125, -0.654301, -0.732461,
		-0.875672, -0.225978, 0.426771,
		-0.444757, 0.721682, -0.530440,
		40.022575, 35.620304, 17.027164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453751, 34.484268, 17.194649>,  <40.333904, 35.115128, 17.398472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453751, 34.484268, 17.194649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831841, 34.381462, 17.114162>,  <41.058697, 34.319778, 17.065870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831841, 34.381462, 17.114162>,  <40.453751, 34.484268, 17.194649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831841, 34.381462, 17.114162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232944, 0.099321, 0.967405,
		-0.228653, -0.961290, 0.153751,
		0.945227, -0.257015, -0.201217,
		41.115410, 34.304359, 17.053797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663410, 33.930542, 17.729311>,  <40.453751, 34.484268, 17.194649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663410, 33.930542, 17.729311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000584, 34.086376, 17.580887>,  <41.202888, 34.179874, 17.491833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000584, 34.086376, 17.580887>,  <40.663410, 33.930542, 17.729311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000584, 34.086376, 17.580887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317075, 0.197461, 0.927617,
		0.434654, -0.899574, 0.042920,
		0.842935, 0.389583, -0.371059,
		41.253464, 34.203251, 17.469568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072056, 33.699001, 18.231030>,  <40.663410, 33.930542, 17.729311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072056, 33.699001, 18.231030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294552, 33.977306, 18.049252>,  <41.428047, 34.144291, 17.940186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294552, 33.977306, 18.049252>,  <41.072056, 33.699001, 18.231030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294552, 33.977306, 18.049252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351708, 0.298363, 0.887289,
		0.752930, -0.653372, -0.078745,
		0.556235, 0.695762, -0.454443,
		41.461422, 34.186035, 17.912918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800907, 33.696037, 18.411003>,  <41.072056, 33.699001, 18.231030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800907, 33.696037, 18.411003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790672, 34.069347, 18.267700>,  <41.784531, 34.293331, 18.181719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790672, 34.069347, 18.267700>,  <41.800907, 33.696037, 18.411003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790672, 34.069347, 18.267700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405358, 0.337277, 0.849664,
		0.913800, -0.123480, -0.386940,
		-0.025590, 0.933272, -0.358257,
		41.782997, 34.349331, 18.160223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477131, 34.001431, 18.441713>,  <41.800907, 33.696037, 18.411003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477131, 34.001431, 18.441713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205624, 34.295166, 18.443233>,  <42.042721, 34.471409, 18.444145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205624, 34.295166, 18.443233>,  <42.477131, 34.001431, 18.441713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205624, 34.295166, 18.443233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352681, 0.321442, 0.878801,
		0.644119, 0.597843, -0.477174,
		-0.678768, 0.734343, 0.003801,
		42.001991, 34.515469, 18.444374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792007, 34.508667, 18.647684>,  <42.477131, 34.001431, 18.441713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792007, 34.508667, 18.647684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412739, 34.622593, 18.704048>,  <42.185177, 34.690948, 18.737865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412739, 34.622593, 18.704048>,  <42.792007, 34.508667, 18.647684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412739, 34.622593, 18.704048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273326, 0.504828, 0.818805,
		0.162074, 0.814880, -0.556509,
		-0.948169, 0.284816, 0.140908,
		42.128288, 34.708038, 18.746321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815704, 35.235321, 18.958794>,  <42.792007, 34.508667, 18.647684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815704, 35.235321, 18.958794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438995, 35.126472, 19.037798>,  <42.212971, 35.061165, 19.085201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438995, 35.126472, 19.037798>,  <42.815704, 35.235321, 18.958794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438995, 35.126472, 19.037798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048743, 0.470710, 0.880940,
		-0.332690, 0.839275, -0.430039,
		-0.941776, -0.272119, 0.197510,
		42.156464, 35.044838, 19.097052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578625, 35.763439, 19.353258>,  <42.815704, 35.235321, 18.958794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578625, 35.763439, 19.353258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333469, 35.459068, 19.438442>,  <42.186375, 35.276443, 19.489553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333469, 35.459068, 19.438442>,  <42.578625, 35.763439, 19.353258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333469, 35.459068, 19.438442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003318, 0.267031, 0.963682,
		-0.790163, 0.591336, -0.161135,
		-0.612888, -0.760931, 0.212960,
		42.149605, 35.230789, 19.502331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147255, 36.124290, 19.819290>,  <42.578625, 35.763439, 19.353258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147255, 36.124290, 19.819290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105553, 35.731220, 19.880575>,  <42.080532, 35.495377, 19.917347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105553, 35.731220, 19.880575>,  <42.147255, 36.124290, 19.819290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105553, 35.731220, 19.880575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095457, 0.163231, 0.981959,
		-0.989958, 0.087754, -0.110822,
		-0.104260, -0.982678, 0.153215,
		42.074276, 35.436417, 19.926540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454098, 36.050323, 20.250277>,  <42.147255, 36.124290, 19.819290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454098, 36.050323, 20.250277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674740, 35.719219, 20.291349>,  <41.807125, 35.520557, 20.315992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674740, 35.719219, 20.291349>,  <41.454098, 36.050323, 20.250277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674740, 35.719219, 20.291349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101161, 0.055806, 0.993304,
		-0.827951, -0.558295, -0.052955,
		0.551601, -0.827764, 0.102682,
		41.840221, 35.470890, 20.322153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028019, 35.637730, 20.535385>,  <41.454098, 36.050323, 20.250277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028019, 35.637730, 20.535385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405682, 35.539707, 20.623486>,  <41.632278, 35.480892, 20.676346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405682, 35.539707, 20.623486>,  <41.028019, 35.637730, 20.535385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405682, 35.539707, 20.623486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185325, 0.157734, 0.969935,
		-0.272433, -0.956591, 0.103511,
		0.944159, -0.245059, 0.220253,
		41.688931, 35.466190, 20.689562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942486, 35.256317, 21.133755>,  <41.028019, 35.637730, 20.535385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942486, 35.256317, 21.133755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336460, 35.311230, 21.175797>,  <41.572845, 35.344177, 21.201021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336460, 35.311230, 21.175797>,  <40.942486, 35.256317, 21.133755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336460, 35.311230, 21.175797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111387, 0.038882, 0.993016,
		0.132240, -0.989768, 0.053589,
		0.984939, 0.137285, 0.105106,
		41.631943, 35.352413, 21.207329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220695, 34.769520, 21.680225>,  <40.942486, 35.256317, 21.133755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220695, 34.769520, 21.680225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466099, 35.084965, 21.663744>,  <41.613342, 35.274231, 21.653854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466099, 35.084965, 21.663744>,  <41.220695, 34.769520, 21.680225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466099, 35.084965, 21.663744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014774, 0.040707, 0.999062,
		0.789550, -0.613542, 0.013323,
		0.613509, 0.788613, -0.041205,
		41.650150, 35.321548, 21.651382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824463, 34.687813, 22.218960>,  <41.220695, 34.769520, 21.680225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824463, 34.687813, 22.218960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789379, 35.073143, 22.117517>,  <41.768330, 35.304340, 22.056652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789379, 35.073143, 22.117517>,  <41.824463, 34.687813, 22.218960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789379, 35.073143, 22.117517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123374, 0.242121, 0.962370,
		0.988476, 0.115699, 0.097612,
		-0.087712, 0.963323, -0.253605,
		41.763065, 35.362141, 22.041435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144676, 34.916626, 22.716295>,  <41.824463, 34.687813, 22.218960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144676, 34.916626, 22.716295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986477, 35.263409, 22.594988>,  <41.891556, 35.471478, 22.522203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986477, 35.263409, 22.594988>,  <42.144676, 34.916626, 22.716295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986477, 35.263409, 22.594988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021284, 0.338754, 0.940635,
		0.918219, 0.365566, -0.152429,
		-0.395500, 0.866953, -0.303270,
		41.867828, 35.523495, 22.504007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446407, 35.350609, 23.005758>,  <42.144676, 34.916626, 22.716295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446407, 35.350609, 23.005758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108059, 35.553169, 22.938755>,  <41.905048, 35.674706, 22.898552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108059, 35.553169, 22.938755>,  <42.446407, 35.350609, 23.005758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108059, 35.553169, 22.938755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067184, 0.412698, 0.908387,
		0.529140, 0.757124, -0.383111,
		-0.845871, 0.506403, -0.167509,
		41.854298, 35.705090, 22.888502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557102, 35.879700, 23.333332>,  <42.446407, 35.350609, 23.005758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557102, 35.879700, 23.333332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159336, 35.898617, 23.295599>,  <41.920677, 35.909969, 23.272959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159336, 35.898617, 23.295599>,  <42.557102, 35.879700, 23.333332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159336, 35.898617, 23.295599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065891, 0.419936, 0.905159,
		0.082425, 0.906320, -0.414475,
		-0.994417, 0.047297, -0.094332,
		41.861012, 35.912807, 23.267300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355762, 36.560986, 23.400108>,  <42.557102, 35.879700, 23.333332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355762, 36.560986, 23.400108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026508, 36.348019, 23.479088>,  <41.828957, 36.220238, 23.526476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026508, 36.348019, 23.479088>,  <42.355762, 36.560986, 23.400108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026508, 36.348019, 23.479088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132894, 0.518670, 0.844583,
		-0.552081, 0.668964, -0.497688,
		-0.823131, -0.532418, 0.197447,
		41.779568, 36.188293, 23.538322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894947, 37.049873, 23.577246>,  <42.355762, 36.560986, 23.400108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894947, 37.049873, 23.577246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757694, 36.706696, 23.730186>,  <41.675343, 36.500790, 23.821951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757694, 36.706696, 23.730186>,  <41.894947, 37.049873, 23.577246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757694, 36.706696, 23.730186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208295, 0.466436, 0.859680,
		-0.915899, 0.215346, -0.338756,
		-0.343137, -0.857941, 0.382353,
		41.654755, 36.449314, 23.844893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148220, 37.169815, 23.803343>,  <41.894947, 37.049873, 23.577246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148220, 37.169815, 23.803343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309189, 36.867752, 24.010340>,  <41.405769, 36.686516, 24.134539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309189, 36.867752, 24.010340>,  <41.148220, 37.169815, 23.803343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309189, 36.867752, 24.010340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304762, 0.422530, 0.853574,
		-0.863238, -0.501205, -0.060109,
		0.402418, -0.755157, 0.517492,
		41.429913, 36.641205, 24.165588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520741, 36.983578, 24.375038>,  <41.148220, 37.169815, 23.803343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520741, 36.983578, 24.375038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887444, 36.872101, 24.489500>,  <41.107464, 36.805214, 24.558178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887444, 36.872101, 24.489500>,  <40.520741, 36.983578, 24.375038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887444, 36.872101, 24.489500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222844, 0.237702, 0.945430,
		-0.331504, -0.930499, 0.155810,
		0.916758, -0.278692, 0.286155,
		41.162472, 36.788494, 24.575346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352375, 36.447533, 24.850796>,  <40.520741, 36.983578, 24.375038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352375, 36.447533, 24.850796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731964, 36.543293, 24.932911>,  <40.959717, 36.600750, 24.982180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731964, 36.543293, 24.932911>,  <40.352375, 36.447533, 24.850796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731964, 36.543293, 24.932911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242599, 0.138250, 0.960225,
		0.201503, -0.961027, 0.189275,
		0.948969, 0.239406, 0.205286,
		41.016655, 36.615112, 24.994497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507523, 36.094486, 25.438976>,  <40.352375, 36.447533, 24.850796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507523, 36.094486, 25.438976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800819, 36.366432, 25.434135>,  <40.976799, 36.529598, 25.431231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800819, 36.366432, 25.434135>,  <40.507523, 36.094486, 25.438976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800819, 36.366432, 25.434135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116720, 0.143378, 0.982761,
		0.669877, -0.719188, 0.184483,
		0.733241, 0.679862, -0.012102,
		41.020790, 36.570389, 25.430506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882614, 36.004971, 26.106382>,  <40.507523, 36.094486, 25.438976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882614, 36.004971, 26.106382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991402, 36.377937, 26.011189>,  <41.056675, 36.601719, 25.954073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991402, 36.377937, 26.011189>,  <40.882614, 36.004971, 26.106382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991402, 36.377937, 26.011189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164302, 0.288666, 0.943227,
		0.948177, -0.217424, 0.231705,
		0.271965, 0.932416, -0.237984,
		41.072990, 36.657661, 25.939793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356205, 36.135883, 26.630047>,  <40.882614, 36.004971, 26.106382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356205, 36.135883, 26.630047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253761, 36.477932, 26.449749>,  <41.192295, 36.683163, 26.341570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253761, 36.477932, 26.449749>,  <41.356205, 36.135883, 26.630047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253761, 36.477932, 26.449749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165920, 0.420490, 0.891997,
		0.952301, 0.303238, 0.034191,
		-0.256110, 0.855123, -0.450746,
		41.176929, 36.734470, 26.314526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628933, 36.734093, 27.035894>,  <41.356205, 36.135883, 26.630047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628933, 36.734093, 27.035894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333096, 36.889847, 26.816303>,  <41.155594, 36.983299, 26.684547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333096, 36.889847, 26.816303>,  <41.628933, 36.734093, 27.035894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333096, 36.889847, 26.816303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269682, 0.575871, 0.771780,
		0.616660, 0.718855, -0.320901,
		-0.739596, 0.389385, -0.548979,
		41.111217, 37.006660, 26.651609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637978, 37.378468, 27.050852>,  <41.628933, 36.734093, 27.035894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637978, 37.378468, 27.050852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245640, 37.329613, 26.990145>,  <41.010239, 37.300301, 26.953720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245640, 37.329613, 26.990145>,  <41.637978, 37.378468, 27.050852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245640, 37.329613, 26.990145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193663, 0.527024, 0.827490,
		-0.021080, 0.841028, -0.540580,
		-0.980842, -0.122133, -0.151766,
		40.951385, 37.292973, 26.944614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338406, 37.993969, 27.423344>,  <41.637978, 37.378468, 27.050852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338406, 37.993969, 27.423344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040745, 37.736004, 27.353689>,  <40.862148, 37.581226, 27.311895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040745, 37.736004, 27.353689>,  <41.338406, 37.993969, 27.423344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040745, 37.736004, 27.353689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404489, 0.227556, 0.885780,
		-0.531625, 0.729593, -0.430197,
		-0.744153, -0.644913, -0.174138,
		40.817497, 37.542530, 27.301447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677452, 38.367935, 27.573616>,  <41.338406, 37.993969, 27.423344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677452, 38.367935, 27.573616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617626, 37.975449, 27.622351>,  <40.581730, 37.739956, 27.651590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617626, 37.975449, 27.622351>,  <40.677452, 38.367935, 27.573616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617626, 37.975449, 27.622351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394130, 0.172172, 0.902784,
		-0.906803, 0.087004, -0.412478,
		-0.149563, -0.981217, 0.121836,
		40.572758, 37.681084, 27.658901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026100, 38.204868, 27.919327>,  <40.677452, 38.367935, 27.573616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026100, 38.204868, 27.919327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193253, 37.850006, 27.997639>,  <40.293545, 37.637089, 28.044626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193253, 37.850006, 27.997639>,  <40.026100, 38.204868, 27.919327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193253, 37.850006, 27.997639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370878, 0.030137, 0.928192,
		-0.829351, -0.460485, -0.316433,
		0.417882, -0.887156, 0.195778,
		40.318619, 37.583858, 28.056372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624115, 38.146114, 28.414331>,  <40.026100, 38.204868, 27.919327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624115, 38.146114, 28.414331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879559, 37.838474, 28.424603>,  <40.032825, 37.653889, 28.430765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879559, 37.838474, 28.424603>,  <39.624115, 38.146114, 28.414331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879559, 37.838474, 28.424603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359994, -0.269089, 0.893306,
		-0.680136, -0.579716, -0.448715,
		0.638608, -0.769104, 0.025677,
		40.071140, 37.607742, 28.432306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296837, 37.537724, 28.712034>,  <39.624115, 38.146114, 28.414331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296837, 37.537724, 28.712034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684002, 37.478722, 28.793415>,  <39.916302, 37.443321, 28.842243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684002, 37.478722, 28.793415>,  <39.296837, 37.537724, 28.712034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684002, 37.478722, 28.793415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243793, -0.354794, 0.902600,
		-0.060958, -0.923235, -0.379370,
		0.967910, -0.147508, 0.203451,
		39.974377, 37.434467, 28.854450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332455, 36.868732, 28.920437>,  <39.296837, 37.537724, 28.712034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332455, 36.868732, 28.920437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663048, 37.032063, 29.075459>,  <39.861404, 37.130062, 29.168472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663048, 37.032063, 29.075459>,  <39.332455, 36.868732, 28.920437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663048, 37.032063, 29.075459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077746, -0.599036, 0.796939,
		0.557572, -0.688785, -0.463346,
		0.826480, 0.408327, 0.387556,
		39.910992, 37.154560, 29.191725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512009, 36.347698, 29.417517>,  <39.332455, 36.868732, 28.920437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512009, 36.347698, 29.417517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742577, 36.660282, 29.513063>,  <39.880917, 36.847832, 29.570391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742577, 36.660282, 29.513063>,  <39.512009, 36.347698, 29.417517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742577, 36.660282, 29.513063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002714, -0.290485, 0.956876,
		0.817146, -0.552215, -0.165322,
		0.576424, 0.781458, 0.238867,
		39.915504, 36.894718, 29.584724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992592, 36.060997, 29.755880>,  <39.512009, 36.347698, 29.417517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992592, 36.060997, 29.755880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958889, 36.446999, 29.855209>,  <39.938667, 36.678600, 29.914806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958889, 36.446999, 29.855209>,  <39.992592, 36.060997, 29.755880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958889, 36.446999, 29.855209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060138, -0.253680, 0.965417,
		0.994628, 0.066412, 0.079408,
		-0.084260, 0.965006, 0.248323,
		39.933613, 36.736500, 29.929707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407093, 36.156097, 30.347536>,  <39.992592, 36.060997, 29.755880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407093, 36.156097, 30.347536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143738, 36.455517, 30.379013>,  <39.985725, 36.635170, 30.397900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143738, 36.455517, 30.379013>,  <40.407093, 36.156097, 30.347536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143738, 36.455517, 30.379013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230607, -0.300136, 0.925602,
		0.716478, 0.591263, 0.370228,
		-0.658392, 0.748550, 0.078691,
		39.946220, 36.680080, 30.402620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526676, 36.313709, 31.084150>,  <40.407093, 36.156097, 30.347536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526676, 36.313709, 31.084150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176403, 36.469742, 30.970293>,  <39.966240, 36.563362, 30.901979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.176403, 36.469742, 30.970293>,  <40.526676, 36.313709, 31.084150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176403, 36.469742, 30.970293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364674, -0.147813, 0.919328,
		0.316540, 0.908838, 0.271690,
		-0.875680, 0.390083, -0.284641,
		39.913700, 36.586765, 30.884901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277344, 36.536381, 31.666039>,  <40.526676, 36.313709, 31.084150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277344, 36.536381, 31.666039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928596, 36.545742, 31.470369>,  <39.719349, 36.551361, 31.352966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928596, 36.545742, 31.470369>,  <40.277344, 36.536381, 31.666039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928596, 36.545742, 31.470369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488500, -0.112448, 0.865288,
		-0.034752, 0.993382, 0.109475,
		-0.871871, 0.023408, -0.489175,
		39.667034, 36.552765, 31.323616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843555, 37.032806, 32.035622>,  <40.277344, 36.536381, 31.666039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843555, 37.032806, 32.035622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594707, 36.792297, 31.835049>,  <39.445396, 36.647991, 31.714705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594707, 36.792297, 31.835049>,  <39.843555, 37.032806, 32.035622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594707, 36.792297, 31.835049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591335, -0.058888, 0.804273,
		-0.513115, 0.796872, -0.318917,
		-0.622122, -0.601271, -0.501435,
		39.408070, 36.611916, 31.684618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213165, 37.267578, 32.072052>,  <39.843555, 37.032806, 32.035622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213165, 37.267578, 32.072052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166611, 36.875275, 32.009357>,  <39.138676, 36.639893, 31.971741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166611, 36.875275, 32.009357>,  <39.213165, 37.267578, 32.072052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166611, 36.875275, 32.009357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655418, -0.042727, 0.754057,
		-0.746244, 0.190492, -0.637834,
		-0.116389, -0.980758, -0.156736,
		39.131695, 36.581047, 31.962336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575531, 37.004570, 31.843487>,  <39.213165, 37.267578, 32.072052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575531, 37.004570, 31.843487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776215, 36.766911, 32.094971>,  <38.896626, 36.624313, 32.245861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776215, 36.766911, 32.094971>,  <38.575531, 37.004570, 31.843487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776215, 36.766911, 32.094971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797446, -0.036027, 0.602313,
		-0.335215, -0.803546, -0.491879,
		0.501708, -0.594151, 0.628708,
		38.926727, 36.588665, 32.283585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077011, 36.617443, 32.221413>,  <38.575531, 37.004570, 31.843487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077011, 36.617443, 32.221413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386711, 36.562286, 32.468483>,  <38.572533, 36.529190, 32.616726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386711, 36.562286, 32.468483>,  <38.077011, 36.617443, 32.221413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386711, 36.562286, 32.468483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630088, -0.076390, 0.772757,
		-0.059379, -0.987496, -0.146034,
		0.774250, -0.137900, 0.617674,
		38.618988, 36.520916, 32.653786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997829, 35.880959, 32.697689>,  <38.077011, 36.617443, 32.221413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997829, 35.880959, 32.697689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219563, 36.161621, 32.876751>,  <38.352604, 36.330017, 32.984188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219563, 36.161621, 32.876751>,  <37.997829, 35.880959, 32.697689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219563, 36.161621, 32.876751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659584, 0.042312, 0.750439,
		0.507607, -0.711261, 0.486254,
		0.554332, 0.701653, 0.447658,
		38.385860, 36.372116, 33.011047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734871, 35.847004, 33.292206>,  <37.997829, 35.880959, 32.697689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734871, 35.847004, 33.292206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983040, 36.153084, 33.360966>,  <38.131939, 36.336731, 33.402222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983040, 36.153084, 33.360966>,  <37.734871, 35.847004, 33.292206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983040, 36.153084, 33.360966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487907, 0.204988, 0.848485,
		0.614024, -0.610286, 0.500526,
		0.620420, 0.765200, 0.171895,
		38.169167, 36.382645, 33.412533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072979, 35.793159, 33.856926>,  <37.734871, 35.847004, 33.292206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072979, 35.793159, 33.856926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062382, 36.188850, 33.799343>,  <38.056023, 36.426266, 33.764793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062382, 36.188850, 33.799343>,  <38.072979, 35.793159, 33.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062382, 36.188850, 33.799343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414099, 0.120214, 0.902259,
		0.909846, 0.083518, 0.406454,
		-0.026494, 0.989229, -0.143961,
		38.054432, 36.485619, 33.756153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263496, 36.175262, 34.537621>,  <38.072979, 35.793159, 33.856926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263496, 36.175262, 34.537621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114265, 36.474102, 34.317566>,  <38.024727, 36.653408, 34.185532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114265, 36.474102, 34.317566>,  <38.263496, 36.175262, 34.537621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114265, 36.474102, 34.317566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463188, 0.363796, 0.808152,
		0.803910, 0.556321, 0.210325,
		-0.373077, 0.747101, -0.550140,
		38.002342, 36.698231, 34.152523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403446, 36.788940, 34.870743>,  <38.263496, 36.175262, 34.537621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403446, 36.788940, 34.870743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084812, 36.862495, 34.640392>,  <37.893631, 36.906628, 34.502182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084812, 36.862495, 34.640392>,  <38.403446, 36.788940, 34.870743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084812, 36.862495, 34.640392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466651, 0.418533, 0.779145,
		0.384295, 0.889391, -0.247590,
		-0.796589, 0.183883, -0.575876,
		37.845837, 36.917660, 34.467628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121853, 37.422668, 35.164055>,  <38.403446, 36.788940, 34.870743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121853, 37.422668, 35.164055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845371, 37.284592, 34.910099>,  <37.679482, 37.201744, 34.757725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845371, 37.284592, 34.910099>,  <38.121853, 37.422668, 35.164055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845371, 37.284592, 34.910099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717334, 0.434194, 0.544892,
		0.087571, 0.832057, -0.547734,
		-0.691204, -0.345192, -0.634886,
		37.638008, 37.181034, 34.719635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748478, 37.903351, 34.821793>,  <38.121853, 37.422668, 35.164055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748478, 37.903351, 34.821793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534668, 37.568336, 34.867085>,  <37.406384, 37.367329, 34.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534668, 37.568336, 34.867085>,  <37.748478, 37.903351, 34.821793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534668, 37.568336, 34.867085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665091, 0.499512, 0.555106,
		-0.521479, 0.221411, -0.824037,
		-0.534523, -0.837535, 0.113226,
		37.374310, 37.317078, 34.901051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089531, 38.147934, 34.842712>,  <37.748478, 37.903351, 34.821793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089531, 38.147934, 34.842712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048294, 37.774826, 34.980877>,  <37.023552, 37.550961, 35.063774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048294, 37.774826, 34.980877>,  <37.089531, 38.147934, 34.842712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048294, 37.774826, 34.980877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792270, 0.286966, 0.538478,
		-0.601398, -0.218143, -0.768592,
		-0.103095, -0.932772, 0.345409,
		37.017365, 37.494995, 35.084499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413849, 38.018383, 34.757401>,  <37.089531, 38.147934, 34.842712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413849, 38.018383, 34.757401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523975, 37.740780, 35.023499>,  <36.590054, 37.574219, 35.183159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523975, 37.740780, 35.023499>,  <36.413849, 38.018383, 34.757401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523975, 37.740780, 35.023499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749465, 0.278434, 0.600648,
		-0.602082, -0.663947, -0.443477,
		0.275319, -0.694009, 0.665245,
		36.606571, 37.532578, 35.223072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811367, 37.694164, 34.942375>,  <36.413849, 38.018383, 34.757401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811367, 37.694164, 34.942375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075874, 37.618504, 35.232738>,  <36.234581, 37.573109, 35.406956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075874, 37.618504, 35.232738>,  <35.811367, 37.694164, 34.942375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075874, 37.618504, 35.232738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724260, 0.091036, 0.683491,
		-0.195366, -0.977719, -0.076793,
		0.661271, -0.189149, 0.725908,
		36.274258, 37.561760, 35.450512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473614, 37.270145, 35.384369>,  <35.811367, 37.694164, 34.942375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473614, 37.270145, 35.384369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756573, 37.466927, 35.587379>,  <35.926346, 37.584995, 35.709187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756573, 37.466927, 35.587379>,  <35.473614, 37.270145, 35.384369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756573, 37.466927, 35.587379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624984, 0.099969, 0.774210,
		0.330136, -0.864865, 0.378178,
		0.707394, 0.491950, 0.507523,
		35.968792, 37.614510, 35.739635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487808, 36.940205, 36.003044>,  <35.473614, 37.270145, 35.384369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487808, 36.940205, 36.003044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617496, 37.317425, 36.032814>,  <35.695309, 37.543758, 36.050674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617496, 37.317425, 36.032814>,  <35.487808, 36.940205, 36.003044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617496, 37.317425, 36.032814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652834, 0.166121, 0.739061,
		0.684608, -0.288202, 0.669515,
		0.324219, 0.943050, 0.074421,
		35.714764, 37.600338, 36.055141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662373, 36.969757, 36.626423>,  <35.487808, 36.940205, 36.003044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662373, 36.969757, 36.626423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551735, 37.320148, 36.468357>,  <35.485352, 37.530384, 36.373516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551735, 37.320148, 36.468357>,  <35.662373, 36.969757, 36.626423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551735, 37.320148, 36.468357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619938, 0.151555, 0.769876,
		0.734284, 0.457922, 0.501133,
		-0.276594, 0.875979, -0.395167,
		35.468758, 37.582943, 36.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798695, 37.532387, 37.122082>,  <35.662373, 36.969757, 36.626423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798695, 37.532387, 37.122082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496540, 37.658501, 36.892303>,  <35.315247, 37.734169, 36.754436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496540, 37.658501, 36.892303>,  <35.798695, 37.532387, 37.122082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496540, 37.658501, 36.892303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501906, 0.285214, 0.816544,
		0.421282, 0.905123, -0.057205,
		-0.755389, 0.315284, -0.574442,
		35.269924, 37.753086, 36.719971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534145, 38.221355, 37.299976>,  <35.798695, 37.532387, 37.122082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534145, 38.221355, 37.299976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216541, 38.055298, 37.122349>,  <35.025978, 37.955662, 37.015770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216541, 38.055298, 37.122349>,  <35.534145, 38.221355, 37.299976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216541, 38.055298, 37.122349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585035, 0.323375, 0.743749,
		-0.165162, 0.850343, -0.499637,
		-0.794012, -0.415144, -0.444072,
		34.978336, 37.930756, 36.989128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973160, 38.625908, 37.596447>,  <35.534145, 38.221355, 37.299976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973160, 38.625908, 37.596447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761818, 38.335503, 37.420376>,  <34.635014, 38.161259, 37.314735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761818, 38.335503, 37.420376>,  <34.973160, 38.625908, 37.596447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761818, 38.335503, 37.420376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762542, 0.177811, 0.622023,
		-0.373327, 0.664298, -0.647561,
		-0.528352, -0.726011, -0.440173,
		34.603313, 38.117699, 37.288322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312477, 38.792381, 37.849400>,  <34.973160, 38.625908, 37.596447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312477, 38.792381, 37.849400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297577, 38.414185, 37.719997>,  <34.288635, 38.187267, 37.642357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297577, 38.414185, 37.719997>,  <34.312477, 38.792381, 37.849400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297577, 38.414185, 37.719997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603649, -0.236695, 0.761303,
		-0.796379, 0.223643, -0.561929,
		-0.037254, -0.945494, -0.323501,
		34.286400, 38.130535, 37.622948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655617, 38.639332, 37.669777>,  <34.312477, 38.792381, 37.849400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655617, 38.639332, 37.669777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842678, 38.292450, 37.738186>,  <33.954914, 38.084320, 37.779232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842678, 38.292450, 37.738186>,  <33.655617, 38.639332, 37.669777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842678, 38.292450, 37.738186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713235, -0.255941, 0.652526,
		-0.522105, -0.427135, -0.738216,
		0.467656, -0.867208, 0.171020,
		33.982975, 38.032288, 37.789494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140751, 38.042416, 37.849415>,  <33.655617, 38.639332, 37.669777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140751, 38.042416, 37.849415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500202, 37.942764, 37.993855>,  <33.715874, 37.882973, 38.080521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500202, 37.942764, 37.993855>,  <33.140751, 38.042416, 37.849415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500202, 37.942764, 37.993855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417268, -0.231226, 0.878875,
		-0.135456, -0.940463, -0.311740,
		0.898632, -0.249128, 0.361104,
		33.769791, 37.868027, 38.102184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090858, 37.320160, 38.245415>,  <33.140751, 38.042416, 37.849415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090858, 37.320160, 38.245415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361694, 37.602924, 38.327221>,  <33.524197, 37.772583, 38.376305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361694, 37.602924, 38.327221>,  <33.090858, 37.320160, 38.245415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361694, 37.602924, 38.327221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310786, 0.022769, 0.950207,
		0.667059, -0.706932, 0.235116,
		0.677085, 0.706915, 0.204516,
		33.564819, 37.814999, 38.388577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706661, 37.090576, 38.792648>,  <33.090858, 37.320160, 38.245415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706661, 37.090576, 38.792648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557880, 37.461636, 38.805969>,  <33.468613, 37.684273, 38.813961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557880, 37.461636, 38.805969>,  <33.706661, 37.090576, 38.792648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557880, 37.461636, 38.805969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086436, -0.070336, 0.993771,
		0.924218, 0.366760, 0.106344,
		-0.371955, 0.927653, 0.033304,
		33.446293, 37.739933, 38.815960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072578, 37.398781, 39.310642>,  <33.706661, 37.090576, 38.792648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072578, 37.398781, 39.310642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718803, 37.583916, 39.286785>,  <33.506538, 37.694996, 39.272472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718803, 37.583916, 39.286785>,  <34.072578, 37.398781, 39.310642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718803, 37.583916, 39.286785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019159, 0.163712, 0.986322,
		0.466274, 0.871193, -0.153660,
		-0.884433, 0.462840, -0.059643,
		33.453472, 37.722767, 39.268890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578999, 37.399715, 38.676838>,  <34.072578, 37.398781, 39.310642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578999, 37.399715, 38.676838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278957, 37.417706, 38.412922>,  <34.098934, 37.428501, 38.254574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278957, 37.417706, 38.412922>,  <34.578999, 37.399715, 38.676838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278957, 37.417706, 38.412922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646644, 0.258910, -0.717507,
		0.138555, -0.964854, -0.223294,
		-0.750103, 0.044977, -0.659790,
		34.053928, 37.431198, 38.214985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687111, 36.990135, 37.967609>,  <34.578999, 37.399715, 38.676838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687111, 36.990135, 37.967609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410110, 37.271019, 37.901474>,  <34.243908, 37.439548, 37.861794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410110, 37.271019, 37.901474>,  <34.687111, 36.990135, 37.967609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410110, 37.271019, 37.901474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371043, 0.150146, -0.916397,
		-0.618680, -0.695957, -0.364527,
		-0.692505, 0.702211, -0.165338,
		34.202358, 37.481682, 37.851871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235027, 36.836132, 37.351963>,  <34.687111, 36.990135, 37.967609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235027, 36.836132, 37.351963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235252, 37.232624, 37.404808>,  <34.235386, 37.470520, 37.436516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235252, 37.232624, 37.404808>,  <34.235027, 36.836132, 37.351963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235252, 37.232624, 37.404808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318546, 0.125053, -0.939622,
		-0.947907, 0.042613, -0.315684,
		0.000563, 0.991234, 0.132113,
		34.235420, 37.529995, 37.444443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163940, 37.064713, 36.660667>,  <34.235027, 36.836132, 37.351963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163940, 37.064713, 36.660667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272552, 37.395634, 36.857380>,  <34.337719, 37.594185, 36.975407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272552, 37.395634, 36.857380>,  <34.163940, 37.064713, 36.660667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272552, 37.395634, 36.857380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456421, 0.339170, -0.822584,
		-0.847320, 0.447814, -0.285502,
		0.271531, 0.827301, 0.491777,
		34.354012, 37.643826, 37.004913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036789, 37.580238, 36.184357>,  <34.163940, 37.064713, 36.660667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036789, 37.580238, 36.184357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318790, 37.676620, 36.451160>,  <34.487991, 37.734451, 36.611244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318790, 37.676620, 36.451160>,  <34.036789, 37.580238, 36.184357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318790, 37.676620, 36.451160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635402, 0.203147, -0.744980,
		-0.315010, 0.949037, -0.009885,
		0.705005, 0.240957, 0.667013,
		34.530293, 37.748909, 36.651264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396553, 38.089264, 35.835701>,  <34.036789, 37.580238, 36.184357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396553, 38.089264, 35.835701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671581, 38.025730, 36.119114>,  <34.836597, 37.987610, 36.289162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671581, 38.025730, 36.119114>,  <34.396553, 38.089264, 35.835701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671581, 38.025730, 36.119114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725772, 0.120197, -0.677354,
		0.022426, 0.979961, 0.197925,
		0.687570, -0.158838, 0.708532,
		34.877853, 37.978077, 36.331673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879955, 38.650036, 35.877983>,  <34.396553, 38.089264, 35.835701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879955, 38.650036, 35.877983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068340, 38.318691, 35.999317>,  <35.181370, 38.119884, 36.072117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068340, 38.318691, 35.999317>,  <34.879955, 38.650036, 35.877983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068340, 38.318691, 35.999317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677497, 0.119420, -0.725766,
		0.564974, 0.547314, 0.617456,
		0.470958, -0.828364, 0.303334,
		35.209629, 38.070183, 36.090317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627304, 38.687908, 35.992622>,  <34.879955, 38.650036, 35.877983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627304, 38.687908, 35.992622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541737, 38.312958, 35.882664>,  <35.490398, 38.087986, 35.816689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541737, 38.312958, 35.882664>,  <35.627304, 38.687908, 35.992622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541737, 38.312958, 35.882664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702931, 0.047700, -0.709657,
		0.678328, -0.345038, 0.648707,
		-0.213915, -0.937376, -0.274894,
		35.477562, 38.031746, 35.800194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435551, 38.612492, 36.103382>,  <35.627304, 38.687908, 35.992622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435551, 38.612492, 36.103382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192612, 38.295502, 36.125706>,  <36.046848, 38.105309, 36.139099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192612, 38.295502, 36.125706>,  <36.435551, 38.612492, 36.103382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192612, 38.295502, 36.125706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737554, -0.588570, -0.331057,
		0.295202, -0.159904, 0.941959,
		-0.607346, -0.792475, 0.055809,
		36.010406, 38.057758, 36.142448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876389, 38.194603, 36.550495>,  <36.435551, 38.612492, 36.103382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876389, 38.194603, 36.550495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601109, 38.020435, 36.318359>,  <36.435940, 37.915936, 36.179077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601109, 38.020435, 36.318359>,  <36.876389, 38.194603, 36.550495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601109, 38.020435, 36.318359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724358, -0.457690, -0.515582,
		-0.041121, -0.775196, 0.630381,
		-0.688196, -0.435420, -0.580340,
		36.394650, 37.889809, 36.144257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195099, 37.454380, 36.446247>,  <36.876389, 38.194603, 36.550495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195099, 37.454380, 36.446247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907478, 37.538254, 36.181221>,  <36.734905, 37.588577, 36.022205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907478, 37.538254, 36.181221>,  <37.195099, 37.454380, 36.446247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907478, 37.538254, 36.181221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496166, -0.512662, -0.700711,
		-0.486602, -0.832592, 0.264593,
		-0.719054, 0.209685, -0.662566,
		36.691761, 37.601158, 35.982452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083790, 36.836906, 36.170300>,  <37.195099, 37.454380, 36.446247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083790, 36.836906, 36.170300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928913, 37.062405, 35.878471>,  <36.835987, 37.197704, 35.703373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928913, 37.062405, 35.878471>,  <37.083790, 36.836906, 36.170300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928913, 37.062405, 35.878471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584078, -0.462287, -0.667191,
		-0.713398, -0.684455, -0.150280,
		-0.387190, 0.563748, -0.729570,
		36.812756, 37.231529, 35.659599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783077, 36.381977, 35.645569>,  <37.083790, 36.836906, 36.170300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783077, 36.381977, 35.645569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879623, 36.732735, 35.479294>,  <36.937550, 36.943192, 35.379528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879623, 36.732735, 35.479294>,  <36.783077, 36.381977, 35.645569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879623, 36.732735, 35.479294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435538, -0.480672, -0.761092,
		-0.867208, 0.002652, -0.497939,
		0.241364, 0.876896, -0.415688,
		36.952034, 36.995804, 35.354588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977699, 36.151524, 34.942223>,  <36.783077, 36.381977, 35.645569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977699, 36.151524, 34.942223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018700, 36.549042, 34.959522>,  <37.043301, 36.787552, 34.969902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018700, 36.549042, 34.959522>,  <36.977699, 36.151524, 34.942223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018700, 36.549042, 34.959522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366532, 0.002685, -0.930401,
		-0.924741, 0.111222, -0.363982,
		0.102504, 0.993792, 0.043250,
		37.049450, 36.847179, 34.972496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725101, 36.526260, 34.292198>,  <36.977699, 36.151524, 34.942223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725101, 36.526260, 34.292198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995571, 36.764389, 34.465809>,  <37.157852, 36.907265, 34.569977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995571, 36.764389, 34.465809>,  <36.725101, 36.526260, 34.292198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995571, 36.764389, 34.465809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465815, 0.110968, -0.877897,
		-0.570795, 0.795787, -0.202276,
		0.676173, 0.595323, 0.434029,
		37.198421, 36.942986, 34.596016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810703, 37.051136, 33.760067>,  <36.725101, 36.526260, 34.292198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810703, 37.051136, 33.760067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141056, 36.995846, 33.978722>,  <37.339268, 36.962673, 34.109913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141056, 36.995846, 33.978722>,  <36.810703, 37.051136, 33.760067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141056, 36.995846, 33.978722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556724, 0.046337, -0.829404,
		0.089312, 0.989317, 0.115220,
		0.825882, -0.138222, 0.546638,
		37.388821, 36.954380, 34.142712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222980, 37.600384, 33.540913>,  <36.810703, 37.051136, 33.760067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222980, 37.600384, 33.540913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442322, 37.316551, 33.717915>,  <37.573925, 37.146252, 33.824116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442322, 37.316551, 33.717915>,  <37.222980, 37.600384, 33.540913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442322, 37.316551, 33.717915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653989, 0.034109, -0.755735,
		0.521161, 0.703799, 0.482761,
		0.548352, -0.709580, 0.442501,
		37.606827, 37.103676, 33.850666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937351, 37.781731, 33.406822>,  <37.222980, 37.600384, 33.540913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937351, 37.781731, 33.406822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968559, 37.399994, 33.522156>,  <37.987286, 37.170952, 33.591354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968559, 37.399994, 33.522156>,  <37.937351, 37.781731, 33.406822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968559, 37.399994, 33.522156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822489, -0.101825, -0.559592,
		0.563404, 0.280813, 0.776994,
		0.078023, -0.954346, 0.288334,
		37.991966, 37.113689, 33.608658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614189, 37.603947, 33.600815>,  <37.937351, 37.781731, 33.406822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614189, 37.603947, 33.600815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477028, 37.243240, 33.495564>,  <38.394730, 37.026817, 33.432411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477028, 37.243240, 33.495564>,  <38.614189, 37.603947, 33.600815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477028, 37.243240, 33.495564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775283, -0.113504, -0.621332,
		0.530429, -0.417057, 0.738044,
		-0.342902, -0.901765, -0.263132,
		38.374157, 36.972710, 33.416622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250027, 37.085022, 33.663685>,  <38.614189, 37.603947, 33.600815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250027, 37.085022, 33.663685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974586, 36.878784, 33.459728>,  <38.809322, 36.755043, 33.337353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974586, 36.878784, 33.459728>,  <39.250027, 37.085022, 33.663685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974586, 36.878784, 33.459728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710635, -0.339874, -0.616022,
		0.144318, -0.786542, 0.600437,
		-0.688600, -0.515594, -0.509894,
		38.768005, 36.724106, 33.306759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651253, 36.482796, 33.468582>,  <39.250027, 37.085022, 33.663685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651253, 36.482796, 33.468582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342094, 36.461132, 33.215698>,  <39.156597, 36.448132, 33.063969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342094, 36.461132, 33.215698>,  <39.651253, 36.482796, 33.468582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342094, 36.461132, 33.215698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626809, -0.220106, -0.747438,
		-0.098669, -0.973971, 0.204070,
		-0.772900, -0.054164, -0.632211,
		39.110226, 36.444881, 33.026035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582272, 35.826344, 33.132420>,  <39.651253, 36.482796, 33.468582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582272, 35.826344, 33.132420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411354, 36.101154, 32.897331>,  <39.308804, 36.266041, 32.756279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411354, 36.101154, 32.897331>,  <39.582272, 35.826344, 33.132420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411354, 36.101154, 32.897331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585502, -0.285061, -0.758899,
		-0.688920, -0.668384, -0.280450,
		-0.427290, 0.687025, -0.587725,
		39.283169, 36.307262, 32.721012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679745, 35.547775, 32.549427>,  <39.582272, 35.826344, 33.132420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679745, 35.547775, 32.549427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575134, 35.921196, 32.451382>,  <39.512367, 36.145248, 32.392555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575134, 35.921196, 32.451382>,  <39.679745, 35.547775, 32.549427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575134, 35.921196, 32.451382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567277, -0.056792, -0.821566,
		-0.780896, -0.353912, -0.514731,
		-0.261530, 0.933553, -0.245114,
		39.496674, 36.201263, 32.377846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963070, 35.710476, 31.805830>,  <39.679745, 35.547775, 32.549427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963070, 35.710476, 31.805830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230145, 35.855644, 32.065826>,  <40.390388, 35.942745, 32.221825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230145, 35.855644, 32.065826>,  <39.963070, 35.710476, 31.805830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230145, 35.855644, 32.065826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512790, -0.857162, -0.048154,
		0.539673, 0.365461, -0.758414,
		0.667682, 0.362920, 0.649992,
		40.430450, 35.964520, 32.260822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696716, 35.539402, 31.525166>,  <39.963070, 35.710476, 31.805830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696716, 35.539402, 31.525166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681446, 35.573162, 31.923447>,  <40.672283, 35.593418, 32.162415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681446, 35.573162, 31.923447>,  <40.696716, 35.539402, 31.525166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681446, 35.573162, 31.923447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480322, -0.872217, 0.092349,
		0.876261, 0.481782, -0.007245,
		-0.038173, 0.084402, 0.995700,
		40.669994, 35.598484, 32.222157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341606, 35.411240, 31.757086>,  <40.696716, 35.539402, 31.525166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341606, 35.411240, 31.757086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108490, 35.345955, 32.075512>,  <40.968620, 35.306786, 32.266567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108490, 35.345955, 32.075512>,  <41.341606, 35.411240, 31.757086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108490, 35.345955, 32.075512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496988, -0.846644, 0.190258,
		0.642933, 0.506515, 0.574526,
		-0.582787, -0.163209, 0.796067,
		40.933655, 35.296993, 32.314331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782917, 35.231308, 32.236515>,  <41.341606, 35.411240, 31.757086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782917, 35.231308, 32.236515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419273, 35.095375, 32.332874>,  <41.201088, 35.013817, 32.390690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419273, 35.095375, 32.332874>,  <41.782917, 35.231308, 32.236515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419273, 35.095375, 32.332874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394727, -0.887552, 0.237576,
		0.133073, 0.311072, 0.941024,
		-0.909111, -0.339833, 0.240898,
		41.146542, 34.993423, 32.405144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775990, 34.740120, 32.906910>,  <41.782917, 35.231308, 32.236515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775990, 34.740120, 32.906910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457043, 34.679317, 32.673294>,  <41.265675, 34.642838, 32.533123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457043, 34.679317, 32.673294>,  <41.775990, 34.740120, 32.906910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457043, 34.679317, 32.673294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118209, -0.988352, 0.095846,
		-0.591805, 0.007386, 0.806047,
		-0.797367, -0.152004, -0.584039,
		41.217834, 34.633717, 32.498081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703243, 34.167294, 33.101303>,  <41.775990, 34.740120, 32.906910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703243, 34.167294, 33.101303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438747, 34.205853, 32.803722>,  <41.280052, 34.228989, 32.625172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438747, 34.205853, 32.803722>,  <41.703243, 34.167294, 33.101303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438747, 34.205853, 32.803722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175537, -0.984060, 0.028506,
		-0.729350, 0.149441, 0.667620,
		-0.661238, 0.096401, -0.743956,
		41.240376, 34.234772, 32.580536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432240, 34.067848, 32.813469>,  <41.703243, 34.167294, 33.101303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432240, 34.067848, 32.813469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397152, 34.433590, 32.971584>,  <42.376099, 34.653034, 33.066452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397152, 34.433590, 32.971584>,  <42.432240, 34.067848, 32.813469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397152, 34.433590, 32.971584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202296, -0.372199, 0.905839,
		0.975388, 0.159422, -0.152323,
		-0.087716, 0.914359, 0.395289,
		42.370838, 34.707897, 33.090172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862812, 34.110287, 33.445095>,  <42.432240, 34.067848, 32.813469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862812, 34.110287, 33.445095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609604, 34.399769, 33.555035>,  <42.457680, 34.573456, 33.620998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609604, 34.399769, 33.555035>,  <42.862812, 34.110287, 33.445095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609604, 34.399769, 33.555035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273900, -0.122691, 0.953900,
		0.724061, 0.679119, -0.120555,
		-0.633021, 0.723702, 0.274846,
		42.419697, 34.616879, 33.637489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195965, 34.730122, 33.839931>,  <42.862812, 34.110287, 33.445095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195965, 34.730122, 33.839931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815784, 34.659531, 33.942303>,  <42.587677, 34.617176, 34.003727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815784, 34.659531, 33.942303>,  <43.195965, 34.730122, 33.839931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815784, 34.659531, 33.942303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231569, 0.147368, 0.961592,
		-0.207413, 0.973211, -0.099200,
		-0.950450, -0.176475, 0.255932,
		42.530651, 34.606586, 34.019081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683323, 34.571426, 34.301807>,  <43.195965, 34.730122, 33.839931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683323, 34.571426, 34.301807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854561, 34.304092, 34.058475>,  <43.957306, 34.143692, 33.912476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854561, 34.304092, 34.058475>,  <43.683323, 34.571426, 34.301807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854561, 34.304092, 34.058475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866107, 0.111201, 0.487333,
		-0.258053, -0.735505, 0.626451,
		0.428098, -0.668332, -0.608330,
		43.982990, 34.103592, 33.875977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314365, 34.298538, 34.763783>,  <43.683323, 34.571426, 34.301807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314365, 34.298538, 34.763783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333633, 34.209427, 34.374310>,  <44.345196, 34.155960, 34.140625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333633, 34.209427, 34.374310>,  <44.314365, 34.298538, 34.763783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333633, 34.209427, 34.374310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998323, -0.020575, 0.054098,
		-0.032086, -0.974652, 0.221414,
		0.048171, -0.222779, -0.973678,
		44.348083, 34.142593, 34.082207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698250, 33.700287, 34.692272>,  <44.314365, 34.298538, 34.763783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698250, 33.700287, 34.692272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708847, 33.925682, 34.361992>,  <44.715206, 34.060921, 34.163822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708847, 33.925682, 34.361992>,  <44.698250, 33.700287, 34.692272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708847, 33.925682, 34.361992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969747, 0.186023, 0.158067,
		0.242668, -0.804908, -0.541512,
		0.026496, 0.563488, -0.825700,
		44.716797, 34.094727, 34.114281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335556, 33.530823, 34.227409>,  <44.698250, 33.700287, 34.692272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335556, 33.530823, 34.227409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219292, 33.913471, 34.235367>,  <45.149532, 34.143059, 34.240139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219292, 33.913471, 34.235367>,  <45.335556, 33.530823, 34.227409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219292, 33.913471, 34.235367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928459, 0.276961, 0.247502,
		0.231256, 0.090408, -0.968683,
		-0.290664, 0.956618, 0.019891,
		45.132092, 34.200459, 34.241333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905331, 33.880230, 33.889763>,  <45.335556, 33.530823, 34.227409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905331, 33.880230, 33.889763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696915, 34.129601, 34.122952>,  <45.571865, 34.279224, 34.262863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696915, 34.129601, 34.122952>,  <45.905331, 33.880230, 33.889763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696915, 34.129601, 34.122952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850258, 0.438865, 0.290618,
		-0.074664, 0.647098, -0.758742,
		-0.521044, 0.623428, 0.582967,
		45.540600, 34.316628, 34.297840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265480, 34.498959, 33.833515>,  <45.905331, 33.880230, 33.889763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265480, 34.498959, 33.833515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054577, 34.536972, 34.171265>,  <45.928036, 34.559780, 34.373917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054577, 34.536972, 34.171265>,  <46.265480, 34.498959, 33.833515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054577, 34.536972, 34.171265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758773, 0.499929, 0.417535,
		-0.382448, 0.860837, -0.335699,
		-0.527255, 0.095034, 0.844376,
		45.896400, 34.565483, 34.424576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116917, 35.151035, 33.957230>,  <46.265480, 34.498959, 33.833515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116917, 35.151035, 33.957230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172462, 34.915043, 34.275383>,  <46.205791, 34.773449, 34.466274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172462, 34.915043, 34.275383>,  <46.116917, 35.151035, 33.957230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172462, 34.915043, 34.275383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808954, 0.530865, 0.252538,
		-0.571235, 0.608362, 0.550987,
		0.138866, -0.589981, 0.795386,
		46.214123, 34.738049, 34.514000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113422, 35.582993, 34.535015>,  <46.116917, 35.151035, 33.957230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113422, 35.582993, 34.535015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324158, 35.243771, 34.557808>,  <46.450600, 35.040237, 34.571484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324158, 35.243771, 34.557808>,  <46.113422, 35.582993, 34.535015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324158, 35.243771, 34.557808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835801, 0.529084, 0.146652,
		-0.154517, -0.029637, 0.987546,
		0.526841, -0.848052, 0.056982,
		46.482208, 34.989357, 34.574902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.637508, 35.658398, 35.078590>,  <46.113422, 35.582993, 34.535015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.637508, 35.658398, 35.078590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774315, 35.332989, 34.890461>,  <46.856400, 35.137745, 34.777584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774315, 35.332989, 34.890461>,  <46.637508, 35.658398, 35.078590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774315, 35.332989, 34.890461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928865, 0.368445, 0.038170,
		0.142237, -0.449924, 0.881667,
		0.342019, -0.813521, -0.470326,
		46.876923, 35.088932, 34.749363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.198227, 35.253143, 35.474804>,  <46.637508, 35.658398, 35.078590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.198227, 35.253143, 35.474804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.235760, 35.276306, 35.077244>,  <47.258278, 35.290203, 34.838707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.235760, 35.276306, 35.077244>,  <47.198227, 35.253143, 35.474804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.235760, 35.276306, 35.077244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968529, 0.225858, 0.104592,
		0.230538, -0.972437, -0.034890,
		0.093829, 0.057904, -0.993903,
		47.263908, 35.293678, 34.779072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763256, 34.758049, 35.132748>,  <47.198227, 35.253143, 35.474804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763256, 34.758049, 35.132748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.701275, 35.083813, 34.909061>,  <47.664085, 35.279270, 34.774849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.701275, 35.083813, 34.909061>,  <47.763256, 34.758049, 35.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.701275, 35.083813, 34.909061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977993, 0.206503, 0.029754,
		0.139713, -0.542303, -0.828485,
		-0.154949, 0.814410, -0.559220,
		47.654789, 35.328136, 34.741295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.442703, 32.421646, 23.296257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076321, 32.366352, 23.145573>,  <36.856491, 32.333176, 23.055162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076321, 32.366352, 23.145573>,  <37.442703, 32.421646, 23.296257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076321, 32.366352, 23.145573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399843, 0.235297, 0.885867,
		-0.033817, 0.962043, -0.270794,
		-0.915960, -0.138232, -0.376709,
		36.801533, 32.324883, 23.032560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088856, 32.943825, 23.606173>,  <37.442703, 32.421646, 23.296257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088856, 32.943825, 23.606173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790970, 32.709579, 23.478138>,  <36.612236, 32.569035, 23.401318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790970, 32.709579, 23.478138>,  <37.088856, 32.943825, 23.606173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790970, 32.709579, 23.478138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536904, 0.240843, 0.808535,
		-0.396394, 0.773988, -0.493776,
		-0.744719, -0.585609, -0.320088,
		36.567554, 32.533897, 23.382111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564667, 33.403820, 23.729425>,  <37.088856, 32.943825, 23.606173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564667, 33.403820, 23.729425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388489, 33.047741, 23.682865>,  <36.282780, 32.834091, 23.654930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388489, 33.047741, 23.682865>,  <36.564667, 33.403820, 23.729425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388489, 33.047741, 23.682865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572769, 0.178790, 0.799981,
		-0.691332, 0.419021, -0.588627,
		-0.440449, -0.890200, -0.116399,
		36.256355, 32.780682, 23.647945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758022, 33.438267, 23.714861>,  <36.564667, 33.403820, 23.729425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758022, 33.438267, 23.714861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901215, 33.083206, 23.830738>,  <35.987129, 32.870171, 23.900265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901215, 33.083206, 23.830738>,  <35.758022, 33.438267, 23.714861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901215, 33.083206, 23.830738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467147, 0.098376, 0.878690,
		-0.808471, -0.449882, -0.379448,
		0.357979, -0.887653, 0.289695,
		36.008610, 32.816910, 23.917646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232151, 33.212822, 24.091925>,  <35.758022, 33.438267, 23.714861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232151, 33.212822, 24.091925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553917, 33.008354, 24.213005>,  <35.746975, 32.885674, 24.285654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553917, 33.008354, 24.213005>,  <35.232151, 33.212822, 24.091925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553917, 33.008354, 24.213005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292041, 0.103458, 0.950794,
		-0.517336, -0.853229, -0.066061,
		0.804410, -0.511172, 0.302700,
		35.795238, 32.855003, 24.303816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993725, 32.716755, 24.496483>,  <35.232151, 33.212822, 24.091925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993725, 32.716755, 24.496483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380920, 32.708019, 24.596502>,  <35.613239, 32.702778, 24.656513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380920, 32.708019, 24.596502>,  <34.993725, 32.716755, 24.496483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380920, 32.708019, 24.596502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250530, -0.023230, 0.967830,
		-0.015284, -0.999493, -0.027946,
		0.967988, -0.021794, 0.250048,
		35.671318, 32.701466, 24.671516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990772, 32.311111, 25.044443>,  <34.993725, 32.716755, 24.496483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990772, 32.311111, 25.044443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320484, 32.532825, 25.090618>,  <35.518311, 32.665855, 25.118322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320484, 32.532825, 25.090618>,  <34.990772, 32.311111, 25.044443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320484, 32.532825, 25.090618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184585, 0.070336, 0.980296,
		0.535247, -0.829348, 0.160290,
		0.824281, 0.554288, 0.115438,
		35.567768, 32.699112, 25.125250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402832, 32.017849, 25.649088>,  <34.990772, 32.311111, 25.044443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402832, 32.017849, 25.649088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534695, 32.394974, 25.629370>,  <35.613811, 32.621250, 25.617538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534695, 32.394974, 25.629370>,  <35.402832, 32.017849, 25.649088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534695, 32.394974, 25.629370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080821, 0.023839, 0.996443,
		0.940635, -0.332469, -0.068341,
		0.329657, 0.942813, -0.049294,
		35.633591, 32.677818, 25.614582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918739, 32.119473, 26.177332>,  <35.402832, 32.017849, 25.649088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918739, 32.119473, 26.177332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.848984, 32.497147, 26.065546>,  <35.807129, 32.723751, 25.998474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.848984, 32.497147, 26.065546>,  <35.918739, 32.119473, 26.177332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848984, 32.497147, 26.065546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080067, 0.296469, 0.951680,
		0.981416, 0.143586, -0.127299,
		-0.174388, 0.944187, -0.279463,
		35.796669, 32.780403, 25.981707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327232, 32.438728, 26.725882>,  <35.918739, 32.119473, 26.177332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327232, 32.438728, 26.725882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093681, 32.719006, 26.561872>,  <35.953552, 32.887173, 26.463467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093681, 32.719006, 26.561872>,  <36.327232, 32.438728, 26.725882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093681, 32.719006, 26.561872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042359, 0.530657, 0.846527,
		0.810739, 0.476897, -0.339518,
		-0.583874, 0.700694, -0.410024,
		35.918518, 32.929214, 26.438866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705605, 33.058342, 26.624699>,  <36.327232, 32.438728, 26.725882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705605, 33.058342, 26.624699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314365, 33.119865, 26.680790>,  <36.079620, 33.156780, 26.714445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314365, 33.119865, 26.680790>,  <36.705605, 33.058342, 26.624699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314365, 33.119865, 26.680790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198113, 0.481448, 0.853791,
		0.063804, 0.862874, -0.501375,
		-0.978100, 0.153804, 0.140229,
		36.020935, 33.166008, 26.722858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679298, 33.704639, 26.909811>,  <36.705605, 33.058342, 26.624699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679298, 33.704639, 26.909811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315048, 33.564449, 26.997385>,  <36.096500, 33.480335, 27.049931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315048, 33.564449, 26.997385>,  <36.679298, 33.704639, 26.909811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315048, 33.564449, 26.997385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113853, 0.296517, 0.948217,
		-0.397246, 0.888394, -0.230112,
		-0.910622, -0.350476, 0.218936,
		36.041862, 33.459305, 27.063066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305187, 34.236641, 27.255226>,  <36.679298, 33.704639, 26.909811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305187, 34.236641, 27.255226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116066, 33.902729, 27.368080>,  <36.002594, 33.702381, 27.435793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116066, 33.902729, 27.368080>,  <36.305187, 34.236641, 27.255226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116066, 33.902729, 27.368080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027979, 0.305799, 0.951685,
		-0.880724, 0.457852, -0.121227,
		-0.472802, -0.834780, 0.282135,
		35.974224, 33.652294, 27.452721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752045, 34.539707, 27.641977>,  <36.305187, 34.236641, 27.255226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752045, 34.539707, 27.641977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779320, 34.156425, 27.753115>,  <35.795685, 33.926456, 27.819798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779320, 34.156425, 27.753115>,  <35.752045, 34.539707, 27.641977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779320, 34.156425, 27.753115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291834, 0.247154, 0.923985,
		-0.954036, -0.144084, -0.262785,
		0.068183, -0.958204, 0.277843,
		35.799774, 33.868965, 27.836468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103683, 34.416691, 27.962759>,  <35.752045, 34.539707, 27.641977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103683, 34.416691, 27.962759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385471, 34.165936, 28.095863>,  <35.554546, 34.015484, 28.175726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385471, 34.165936, 28.095863>,  <35.103683, 34.416691, 27.962759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385471, 34.165936, 28.095863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161368, 0.315099, 0.935240,
		-0.691144, -0.712547, 0.120818,
		0.704473, -0.626889, 0.332761,
		35.596813, 33.977867, 28.195692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809803, 34.132999, 28.539576>,  <35.103683, 34.416691, 27.962759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809803, 34.132999, 28.539576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200050, 34.053410, 28.576622>,  <35.434200, 34.005657, 28.598850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.200050, 34.053410, 28.576622>,  <34.809803, 34.132999, 28.539576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200050, 34.053410, 28.576622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035509, 0.273319, 0.961268,
		-0.216582, -0.941119, 0.259590,
		0.975618, -0.198975, 0.092614,
		35.492737, 33.993717, 28.604406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812984, 33.865028, 29.218641>,  <34.809803, 34.132999, 28.539576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812984, 33.865028, 29.218641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208214, 33.922073, 29.195385>,  <35.445351, 33.956303, 29.181431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208214, 33.922073, 29.195385>,  <34.812984, 33.865028, 29.218641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208214, 33.922073, 29.195385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016608, 0.276623, 0.960835,
		0.153114, -0.950337, 0.270954,
		0.988069, 0.142617, -0.058138,
		35.504635, 33.964859, 29.177944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030006, 33.596424, 29.827663>,  <34.812984, 33.865028, 29.218641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030006, 33.596424, 29.827663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338295, 33.818268, 29.702188>,  <35.523270, 33.951374, 29.626904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338295, 33.818268, 29.702188>,  <35.030006, 33.596424, 29.827663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338295, 33.818268, 29.702188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185120, 0.276169, 0.943112,
		0.609685, -0.784948, 0.110181,
		0.770723, 0.554605, -0.313686,
		35.569511, 33.984650, 29.608082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622581, 33.402279, 30.185276>,  <35.030006, 33.596424, 29.827663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622581, 33.402279, 30.185276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698235, 33.775429, 30.062654>,  <35.743626, 33.999317, 29.989082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698235, 33.775429, 30.062654>,  <35.622581, 33.402279, 30.185276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698235, 33.775429, 30.062654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117093, 0.288534, 0.950283,
		0.974945, -0.215623, -0.054662,
		0.189131, 0.932875, -0.306552,
		35.754974, 34.055290, 29.970688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173820, 33.659676, 30.695986>,  <35.622581, 33.402279, 30.185276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173820, 33.659676, 30.695986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026917, 33.994389, 30.533546>,  <35.938774, 34.195217, 30.436083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026917, 33.994389, 30.533546>,  <36.173820, 33.659676, 30.695986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026917, 33.994389, 30.533546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063987, 0.458306, 0.886488,
		0.927913, 0.299590, -0.221863,
		-0.367264, 0.836780, -0.406098,
		35.916737, 34.245422, 30.411716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615208, 34.285789, 30.963837>,  <36.173820, 33.659676, 30.695986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615208, 34.285789, 30.963837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255650, 34.412922, 30.843187>,  <36.039917, 34.489201, 30.770798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255650, 34.412922, 30.843187>,  <36.615208, 34.285789, 30.963837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255650, 34.412922, 30.843187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072463, 0.571068, 0.817699,
		0.432136, 0.756880, -0.490298,
		-0.898893, 0.317828, -0.301625,
		35.985981, 34.508270, 30.752701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613091, 34.932076, 31.243616>,  <36.615208, 34.285789, 30.963837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613091, 34.932076, 31.243616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238998, 34.827877, 31.147711>,  <36.014542, 34.765358, 31.090168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238998, 34.827877, 31.147711>,  <36.613091, 34.932076, 31.243616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238998, 34.827877, 31.147711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319157, 0.327194, 0.889428,
		-0.153243, 0.908343, -0.389140,
		-0.935230, -0.260495, -0.239764,
		35.958427, 34.749729, 31.075781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259785, 34.485962, 31.384710>,  <36.613091, 34.932076, 31.243616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259785, 34.485962, 31.384710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649899, 34.398434, 31.372492>,  <37.883968, 34.345917, 31.365160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649899, 34.398434, 31.372492>,  <37.259785, 34.485962, 31.384710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649899, 34.398434, 31.372492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044875, 0.331562, -0.942365,
		0.216337, 0.917706, 0.333188,
		0.975287, -0.218821, -0.030547,
		37.942486, 34.332787, 31.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679836, 35.065792, 31.139231>,  <37.259785, 34.485962, 31.384710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679836, 35.065792, 31.139231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906418, 34.742699, 31.073870>,  <38.042366, 34.548843, 31.034653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906418, 34.742699, 31.073870>,  <37.679836, 35.065792, 31.139231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906418, 34.742699, 31.073870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146719, 0.293962, -0.944489,
		0.810927, 0.511036, 0.285026,
		0.566454, -0.807731, -0.163403,
		38.076355, 34.500378, 31.024849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252056, 35.300121, 30.718916>,  <37.679836, 35.065792, 31.139231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252056, 35.300121, 30.718916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273117, 34.907383, 30.646030>,  <38.285755, 34.671738, 30.602299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273117, 34.907383, 30.646030>,  <38.252056, 35.300121, 30.718916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273117, 34.907383, 30.646030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164642, 0.188504, -0.968173,
		0.984947, 0.020980, 0.171579,
		0.052656, -0.981848, -0.182213,
		38.288914, 34.612827, 30.591366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776184, 35.289127, 30.314070>,  <38.252056, 35.300121, 30.718916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776184, 35.289127, 30.314070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615017, 34.929848, 30.243753>,  <38.518318, 34.714279, 30.201563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615017, 34.929848, 30.243753>,  <38.776184, 35.289127, 30.314070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615017, 34.929848, 30.243753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294557, 0.054596, -0.954073,
		0.866542, -0.436193, 0.242572,
		-0.402916, -0.898195, -0.175793,
		38.494141, 34.660389, 30.191015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233807, 34.954376, 29.889105>,  <38.776184, 35.289127, 30.314070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233807, 34.954376, 29.889105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873650, 34.794529, 29.820282>,  <38.657555, 34.698620, 29.778988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873650, 34.794529, 29.820282>,  <39.233807, 34.954376, 29.889105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873650, 34.794529, 29.820282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157193, 0.069959, -0.985087,
		0.405696, -0.914008, -0.000173,
		-0.900390, -0.399619, -0.172058,
		38.603531, 34.674644, 29.768665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340775, 34.427048, 29.549999>,  <39.233807, 34.954376, 29.889105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340775, 34.427048, 29.549999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961475, 34.491936, 29.440813>,  <38.733894, 34.530869, 29.375301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.961475, 34.491936, 29.440813>,  <39.340775, 34.427048, 29.549999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961475, 34.491936, 29.440813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253238, -0.132274, -0.958318,
		-0.191567, -0.977848, 0.084348,
		-0.948247, 0.162222, -0.272967,
		38.677002, 34.540604, 29.358923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330021, 34.051613, 28.970440>,  <39.340775, 34.427048, 29.549999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330021, 34.051613, 28.970440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005123, 34.282494, 28.936745>,  <38.810184, 34.421021, 28.916527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005123, 34.282494, 28.936745>,  <39.330021, 34.051613, 28.970440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005123, 34.282494, 28.936745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171093, 0.097682, -0.980401,
		-0.557656, -0.810741, -0.178097,
		-0.812248, 0.577197, -0.084239,
		38.761448, 34.455654, 28.911472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997341, 33.723682, 28.498762>,  <39.330021, 34.051613, 28.970440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997341, 33.723682, 28.498762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837650, 34.090298, 28.489201>,  <38.741837, 34.310268, 28.483463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837650, 34.090298, 28.489201>,  <38.997341, 33.723682, 28.498762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837650, 34.090298, 28.489201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012095, -0.031335, -0.999436,
		-0.916772, -0.398715, 0.023595,
		-0.399229, 0.916540, -0.023904,
		38.717880, 34.365261, 28.482029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236580, 33.786003, 28.241787>,  <38.997341, 33.723682, 28.498762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236580, 33.786003, 28.241787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387035, 34.154625, 28.203291>,  <38.477310, 34.375797, 28.180193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387035, 34.154625, 28.203291>,  <38.236580, 33.786003, 28.241787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387035, 34.154625, 28.203291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071793, -0.074568, -0.994628,
		-0.923777, 0.381031, 0.038113,
		0.376142, 0.921550, -0.096240,
		38.499878, 34.431091, 28.174419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812809, 34.092903, 27.838577>,  <38.236580, 33.786003, 28.241787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812809, 34.092903, 27.838577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128529, 34.335903, 27.802893>,  <38.317959, 34.481705, 27.781481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128529, 34.335903, 27.802893>,  <37.812809, 34.092903, 27.838577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128529, 34.335903, 27.802893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208681, 0.128760, -0.969470,
		-0.577465, 0.783815, 0.228404,
		0.789295, 0.607498, -0.089213,
		38.365318, 34.518154, 27.776129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590004, 34.728554, 27.564388>,  <37.812809, 34.092903, 27.838577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590004, 34.728554, 27.564388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977570, 34.692715, 27.472153>,  <38.210110, 34.671211, 27.416811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977570, 34.692715, 27.472153>,  <37.590004, 34.728554, 27.564388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977570, 34.692715, 27.472153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195873, 0.291507, -0.936300,
		0.151106, 0.952364, 0.264897,
		0.968917, -0.089595, -0.230590,
		38.268246, 34.665836, 27.402975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692463, 35.119720, 27.035547>,  <37.590004, 34.728554, 27.564388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692463, 35.119720, 27.035547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044449, 34.932388, 27.003733>,  <38.255642, 34.819988, 26.984644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.044449, 34.932388, 27.003733>,  <37.692463, 35.119720, 27.035547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044449, 34.932388, 27.003733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067184, 0.043057, -0.996811,
		0.470263, 0.882503, 0.006424,
		0.879965, -0.468332, -0.079538,
		38.308437, 34.791889, 26.979872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136650, 35.592278, 26.513199>,  <37.692463, 35.119720, 27.035547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136650, 35.592278, 26.513199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305428, 35.234009, 26.569386>,  <38.406693, 35.019047, 26.603098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305428, 35.234009, 26.569386>,  <38.136650, 35.592278, 26.513199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305428, 35.234009, 26.569386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133805, -0.091717, -0.986754,
		0.896694, 0.435150, 0.081146,
		0.421944, -0.895674, 0.140467,
		38.432011, 34.965305, 26.611526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730091, 35.599304, 26.109623>,  <38.136650, 35.592278, 26.513199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730091, 35.599304, 26.109623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685699, 35.206699, 26.171993>,  <38.659065, 34.971134, 26.209415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685699, 35.206699, 26.171993>,  <38.730091, 35.599304, 26.109623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685699, 35.206699, 26.171993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190449, -0.174990, -0.965975,
		0.975404, -0.077504, 0.206348,
		-0.110976, -0.981515, 0.155925,
		38.652405, 34.912247, 26.218771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267715, 35.308399, 25.780113>,  <38.730091, 35.599304, 26.109623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267715, 35.308399, 25.780113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982517, 35.029823, 25.812622>,  <38.811398, 34.862679, 25.832129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982517, 35.029823, 25.812622>,  <39.267715, 35.308399, 25.780113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982517, 35.029823, 25.812622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252876, -0.363520, -0.896608,
		0.653979, -0.618727, 0.435302,
		-0.712997, -0.696441, 0.081273,
		38.768620, 34.820892, 25.837004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652206, 34.714436, 25.771883>,  <39.267715, 35.308399, 25.780113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652206, 34.714436, 25.771883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273678, 34.631351, 25.672825>,  <39.046558, 34.581501, 25.613390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273678, 34.631351, 25.672825>,  <39.652206, 34.714436, 25.771883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273678, 34.631351, 25.672825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313797, -0.406761, -0.857949,
		0.077469, -0.889609, 0.450105,
		-0.946325, -0.207707, -0.247645,
		38.989780, 34.569038, 25.598532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635056, 34.007816, 25.539976>,  <39.652206, 34.714436, 25.771883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635056, 34.007816, 25.539976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295609, 34.174473, 25.409584>,  <39.091942, 34.274467, 25.331348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295609, 34.174473, 25.409584>,  <39.635056, 34.007816, 25.539976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295609, 34.174473, 25.409584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092902, -0.489253, -0.867180,
		-0.520795, -0.766183, 0.376479,
		-0.848612, 0.416647, -0.325980,
		39.041023, 34.299465, 25.311790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467411, 33.447422, 25.127876>,  <39.635056, 34.007816, 25.539976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467411, 33.447422, 25.127876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201633, 33.726353, 25.020355>,  <39.042168, 33.893711, 24.955843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201633, 33.726353, 25.020355>,  <39.467411, 33.447422, 25.127876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201633, 33.726353, 25.020355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189050, -0.504815, -0.842272,
		-0.723031, -0.508825, 0.467250,
		-0.664444, 0.697322, -0.268804,
		39.002300, 33.935551, 24.939714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.915920, 33.049656, 24.926353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908451, 33.412254, 24.757637>,  <38.903969, 33.629814, 24.656406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908451, 33.412254, 24.757637>,  <38.915920, 33.049656, 24.926353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908451, 33.412254, 24.757637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103260, -0.421359, -0.900996,
		-0.994479, 0.026731, 0.101473,
		-0.018672, 0.906500, -0.421793,
		38.902851, 33.684204, 24.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346405, 33.101456, 24.527954>,  <38.915920, 33.049656, 24.926353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346405, 33.101456, 24.527954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571266, 33.393173, 24.371950>,  <38.706184, 33.568203, 24.278347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571266, 33.393173, 24.371950>,  <38.346405, 33.101456, 24.527954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571266, 33.393173, 24.371950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139675, -0.381084, -0.913929,
		-0.815151, 0.568246, -0.112364,
		0.562156, 0.729296, -0.390011,
		38.739914, 33.611961, 24.254948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936947, 33.432739, 23.965124>,  <38.346405, 33.101456, 24.527954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936947, 33.432739, 23.965124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307468, 33.562443, 23.888382>,  <38.529781, 33.640266, 23.842337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307468, 33.562443, 23.888382>,  <37.936947, 33.432739, 23.965124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307468, 33.562443, 23.888382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061750, -0.371673, -0.926308,
		-0.371673, 0.869893, -0.324260,
		0.926308, 0.324260, -0.191857,
		38.585361, 33.659721, 23.830826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921879, 33.827610, 23.415625>,  <37.936947, 33.432739, 23.965124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921879, 33.827610, 23.415625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308094, 33.723961, 23.405903>,  <38.539822, 33.661770, 23.400070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308094, 33.723961, 23.405903>,  <37.921879, 33.827610, 23.415625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308094, 33.723961, 23.405903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078965, -0.202695, -0.976053,
		0.247993, 0.944335, -0.216171,
		0.965538, -0.259124, -0.024303,
		38.597755, 33.646225, 23.398611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142063, 34.159122, 22.739735>,  <37.921879, 33.827610, 23.415625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142063, 34.159122, 22.739735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413494, 33.883873, 22.842518>,  <38.576351, 33.718723, 22.904188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.413494, 33.883873, 22.842518>,  <38.142063, 34.159122, 22.739735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413494, 33.883873, 22.842518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298341, -0.061473, -0.952478,
		0.671216, 0.722987, 0.163580,
		0.678573, -0.688121, 0.256958,
		38.617065, 33.677437, 22.919605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648491, 34.349663, 22.380497>,  <38.142063, 34.159122, 22.739735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648491, 34.349663, 22.380497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725979, 33.973305, 22.491627>,  <38.772472, 33.747490, 22.558304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725979, 33.973305, 22.491627>,  <38.648491, 34.349663, 22.380497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725979, 33.973305, 22.491627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343357, -0.200255, -0.917608,
		0.919010, 0.273149, 0.284271,
		0.193717, -0.940897, 0.277825,
		38.784096, 33.691036, 22.574974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353336, 34.221893, 22.136162>,  <38.648491, 34.349663, 22.380497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353336, 34.221893, 22.136162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175510, 33.868080, 22.192682>,  <39.068817, 33.655792, 22.226595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175510, 33.868080, 22.192682>,  <39.353336, 34.221893, 22.136162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175510, 33.868080, 22.192682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401390, -0.337737, -0.851363,
		0.800781, -0.321768, 0.505188,
		-0.444562, -0.884533, 0.141300,
		39.042141, 33.602718, 22.235071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906601, 33.726978, 22.029707>,  <39.353336, 34.221893, 22.136162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906601, 33.726978, 22.029707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.550587, 33.558144, 21.960796>,  <39.336979, 33.456844, 21.919451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.550587, 33.558144, 21.960796>,  <39.906601, 33.726978, 22.029707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550587, 33.558144, 21.960796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386473, -0.498121, -0.776218,
		0.241818, -0.757442, 0.606471,
		-0.890035, -0.422088, -0.172277,
		39.283577, 33.431519, 21.909113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040836, 33.063839, 21.899002>,  <39.906601, 33.726978, 22.029707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040836, 33.063839, 21.899002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.684387, 33.086288, 21.718891>,  <39.470516, 33.099758, 21.610825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.684387, 33.086288, 21.718891>,  <40.040836, 33.063839, 21.899002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684387, 33.086288, 21.718891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271331, -0.729460, -0.627907,
		-0.363699, -0.681717, 0.634811,
		-0.891124, 0.056125, -0.450275,
		39.417049, 33.103127, 21.583809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970219, 32.370552, 21.632309>,  <40.040836, 33.063839, 21.899002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970219, 32.370552, 21.632309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702217, 32.587109, 21.429138>,  <39.541416, 32.717041, 21.307236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702217, 32.587109, 21.429138>,  <39.970219, 32.370552, 21.632309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702217, 32.587109, 21.429138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162566, -0.560597, -0.811975,
		-0.724338, -0.626598, 0.287591,
		-0.670005, 0.541392, -0.507926,
		39.501217, 32.749527, 21.276760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735218, 31.848249, 21.189787>,  <39.970219, 32.370552, 21.632309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735218, 31.848249, 21.189787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616783, 32.201298, 21.043741>,  <39.545723, 32.413128, 20.956114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.616783, 32.201298, 21.043741>,  <39.735218, 31.848249, 21.189787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616783, 32.201298, 21.043741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137148, -0.339007, -0.930733,
		-0.945263, -0.325654, -0.020674,
		-0.296089, 0.882623, -0.365114,
		39.527958, 32.466084, 20.934208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287460, 31.688934, 20.739927>,  <39.735218, 31.848249, 21.189787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287460, 31.688934, 20.739927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447002, 32.042419, 20.641979>,  <39.542728, 32.254513, 20.583210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447002, 32.042419, 20.641979>,  <39.287460, 31.688934, 20.739927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447002, 32.042419, 20.641979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310251, -0.381327, -0.870824,
		-0.862935, 0.271364, -0.426269,
		0.398858, 0.883714, -0.244869,
		39.566658, 32.307533, 20.568518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049541, 31.834208, 20.060844>,  <39.287460, 31.688934, 20.739927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049541, 31.834208, 20.060844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.378574, 32.057289, 20.105242>,  <39.575996, 32.191139, 20.131880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.378574, 32.057289, 20.105242>,  <39.049541, 31.834208, 20.060844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378574, 32.057289, 20.105242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314099, -0.282917, -0.906256,
		-0.474021, 0.780336, -0.407897,
		0.822585, 0.557705, 0.110994,
		39.625351, 32.224602, 20.138540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031651, 32.268162, 19.536924>,  <39.049541, 31.834208, 20.060844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031651, 32.268162, 19.536924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.416470, 32.278778, 19.645554>,  <39.647362, 32.285149, 19.710732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.416470, 32.278778, 19.645554>,  <39.031651, 32.268162, 19.536924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416470, 32.278778, 19.645554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272382, -0.152778, -0.949982,
		0.016280, 0.987904, -0.154209,
		0.962051, 0.026538, 0.271575,
		39.705086, 32.286739, 19.727026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329060, 32.748444, 19.104939>,  <39.031651, 32.268162, 19.536924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329060, 32.748444, 19.104939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644650, 32.546894, 19.245584>,  <39.834003, 32.425964, 19.329971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644650, 32.546894, 19.245584>,  <39.329060, 32.748444, 19.104939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644650, 32.546894, 19.245584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396088, -0.020386, -0.917986,
		0.469713, 0.863539, 0.183492,
		0.788977, -0.503869, 0.351613,
		39.881344, 32.395733, 19.351068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946457, 33.204754, 19.008249>,  <39.329060, 32.748444, 19.104939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946457, 33.204754, 19.008249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054348, 32.819580, 19.008087>,  <40.119083, 32.588474, 19.007990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054348, 32.819580, 19.008087>,  <39.946457, 33.204754, 19.008249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054348, 32.819580, 19.008087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254175, 0.071604, -0.964504,
		0.928784, 0.260055, 0.264068,
		0.269732, -0.962935, -0.000405,
		40.135269, 32.530701, 19.007965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596985, 33.236710, 18.706259>,  <39.946457, 33.204754, 19.008249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596985, 33.236710, 18.706259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.473660, 32.856323, 18.696415>,  <40.399662, 32.628090, 18.690510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.473660, 32.856323, 18.696415>,  <40.596985, 33.236710, 18.706259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473660, 32.856323, 18.696415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334905, -0.084297, -0.938473,
		0.890381, -0.297589, 0.344474,
		-0.308317, -0.950965, -0.024607,
		40.381165, 32.571033, 18.689034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103909, 32.930405, 18.424929>,  <40.596985, 33.236710, 18.706259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103909, 32.930405, 18.424929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805237, 32.667271, 18.385483>,  <40.626034, 32.509392, 18.361814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805237, 32.667271, 18.385483>,  <41.103909, 32.930405, 18.424929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805237, 32.667271, 18.385483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231708, -0.118255, -0.965571,
		0.623521, -0.743824, 0.240723,
		-0.746681, -0.657831, -0.098616,
		40.581234, 32.469921, 18.355898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381886, 32.353699, 18.133074>,  <41.103909, 32.930405, 18.424929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381886, 32.353699, 18.133074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.996700, 32.354836, 18.025221>,  <40.765591, 32.355518, 17.960508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.996700, 32.354836, 18.025221>,  <41.381886, 32.353699, 18.133074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996700, 32.354836, 18.025221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258606, -0.273491, -0.926459,
		-0.076377, -0.961870, 0.262625,
		-0.962959, 0.002843, -0.269633,
		40.707813, 32.355690, 17.944330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345276, 31.754879, 17.804892>,  <41.381886, 32.353699, 18.133074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345276, 31.754879, 17.804892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033245, 31.978786, 17.693077>,  <40.846027, 32.113132, 17.625988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.033245, 31.978786, 17.693077>,  <41.345276, 31.754879, 17.804892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033245, 31.978786, 17.693077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154908, -0.260071, -0.953083,
		-0.606205, -0.786780, 0.116162,
		-0.780077, 0.559769, -0.279535,
		40.799221, 32.146717, 17.609217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081348, 31.357929, 17.242500>,  <41.345276, 31.754879, 17.804892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081348, 31.357929, 17.242500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927792, 31.726221, 17.214561>,  <40.835655, 31.947197, 17.197798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.927792, 31.726221, 17.214561>,  <41.081348, 31.357929, 17.242500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927792, 31.726221, 17.214561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079439, -0.108295, -0.990940,
		-0.919953, -0.374870, 0.114716,
		-0.383897, 0.920731, -0.069847,
		40.812622, 32.002441, 17.193607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485313, 31.291761, 16.774950>,  <41.081348, 31.357929, 17.242500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485313, 31.291761, 16.774950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.619907, 31.668293, 16.785309>,  <40.700665, 31.894213, 16.791523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.619907, 31.668293, 16.785309>,  <40.485313, 31.291761, 16.774950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619907, 31.668293, 16.785309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087041, -0.003710, -0.996198,
		-0.937656, 0.337463, -0.083183,
		0.336489, 0.941331, 0.025895,
		40.720856, 31.950693, 16.793077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978912, 31.765469, 16.238857>,  <40.485313, 31.291761, 16.774950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978912, 31.765469, 16.238857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362194, 31.872860, 16.278395>,  <40.592163, 31.937296, 16.302116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362194, 31.872860, 16.278395>,  <39.978912, 31.765469, 16.238857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362194, 31.872860, 16.278395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100825, 0.006435, -0.994883,
		-0.267743, 0.963264, -0.020903,
		0.958201, 0.268480, 0.098844,
		40.649654, 31.953403, 16.308048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070816, 32.250019, 15.645556>,  <39.978912, 31.765469, 16.238857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070816, 32.250019, 15.645556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765823, 32.331486, 15.399909>,  <39.582829, 32.380367, 15.252521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765823, 32.331486, 15.399909>,  <40.070816, 32.250019, 15.645556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765823, 32.331486, 15.399909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619985, 0.041471, 0.783517,
		0.185048, 0.978161, 0.094652,
		-0.762480, 0.203671, -0.614119,
		39.537079, 32.392586, 15.215673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738914, 32.800484, 15.914496>,  <40.070816, 32.250019, 15.645556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738914, 32.800484, 15.914496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462181, 32.619022, 15.689795>,  <39.296143, 32.510147, 15.554975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.462181, 32.619022, 15.689795>,  <39.738914, 32.800484, 15.914496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462181, 32.619022, 15.689795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690345, 0.187544, 0.698749,
		-0.211634, 0.871222, -0.442925,
		-0.691834, -0.453650, -0.561753,
		39.254631, 32.482925, 15.521270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097538, 33.324959, 15.939741>,  <39.738914, 32.800484, 15.914496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097538, 33.324959, 15.939741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956825, 32.974213, 15.808683>,  <38.872398, 32.763763, 15.730048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956825, 32.974213, 15.808683>,  <39.097538, 33.324959, 15.939741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956825, 32.974213, 15.808683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770142, 0.072151, 0.633779,
		-0.532101, 0.475285, -0.700695,
		-0.351781, -0.876869, -0.327645,
		38.851292, 32.711151, 15.710390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425323, 33.470158, 15.692844>,  <39.097538, 33.324959, 15.939741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425323, 33.470158, 15.692844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.480282, 33.082199, 15.773273>,  <38.513256, 32.849426, 15.821529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.480282, 33.082199, 15.773273>,  <38.425323, 33.470158, 15.692844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480282, 33.082199, 15.773273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708946, 0.045477, 0.703795,
		-0.691751, -0.239245, -0.681354,
		0.137393, -0.969894, 0.201070,
		38.521500, 32.791229, 15.833593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815907, 33.205811, 15.683352>,  <38.425323, 33.470158, 15.692844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815907, 33.205811, 15.683352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.011642, 32.920883, 15.884612>,  <38.129082, 32.749928, 16.005367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.011642, 32.920883, 15.884612>,  <37.815907, 33.205811, 15.683352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011642, 32.920883, 15.884612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544366, 0.201260, 0.814347,
		-0.681335, -0.672385, -0.289276,
		0.489335, -0.712315, 0.503149,
		38.158443, 32.707188, 16.035557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295597, 32.759079, 16.020000>,  <37.815907, 33.205811, 15.683352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295597, 32.759079, 16.020000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627552, 32.682919, 16.229778>,  <37.826725, 32.637222, 16.355644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627552, 32.682919, 16.229778>,  <37.295597, 32.759079, 16.020000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627552, 32.682919, 16.229778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530858, 0.019821, 0.847229,
		-0.171710, -0.981506, -0.084628,
		0.829883, -0.190403, 0.524444,
		37.876518, 32.625797, 16.387112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093391, 32.378036, 16.697569>,  <37.295597, 32.759079, 16.020000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093391, 32.378036, 16.697569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461246, 32.506001, 16.788719>,  <37.681961, 32.582779, 16.843410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461246, 32.506001, 16.788719>,  <37.093391, 32.378036, 16.697569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461246, 32.506001, 16.788719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267852, 0.086467, 0.959572,
		0.287270, -0.943495, 0.165206,
		0.919636, 0.319907, 0.227878,
		37.737137, 32.601971, 16.857082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317257, 31.973104, 17.282274>,  <37.093391, 32.378036, 16.697569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317257, 31.973104, 17.282274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561874, 32.288815, 17.304403>,  <37.708645, 32.478241, 17.317680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.561874, 32.288815, 17.304403>,  <37.317257, 31.973104, 17.282274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561874, 32.288815, 17.304403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177937, 0.069063, 0.981615,
		0.770945, -0.610142, 0.182676,
		0.611541, 0.789276, 0.055323,
		37.745338, 32.525597, 17.320999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669872, 31.796375, 17.870691>,  <37.317257, 31.973104, 17.282274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669872, 31.796375, 17.870691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726833, 32.190758, 17.835793>,  <37.761009, 32.427387, 17.814854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726833, 32.190758, 17.835793>,  <37.669872, 31.796375, 17.870691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726833, 32.190758, 17.835793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034295, 0.083178, 0.995944,
		0.989214, -0.144821, -0.021969,
		0.142407, 0.985955, -0.087247,
		37.769554, 32.486546, 17.809618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158726, 31.905453, 18.326439>,  <37.669872, 31.796375, 17.870691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158726, 31.905453, 18.326439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000858, 32.269928, 18.279148>,  <37.906139, 32.488613, 18.250774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000858, 32.269928, 18.279148>,  <38.158726, 31.905453, 18.326439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000858, 32.269928, 18.279148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038948, 0.145147, 0.988643,
		0.917999, 0.385578, -0.092773,
		-0.394665, 0.911187, -0.118227,
		37.882458, 32.543285, 18.243679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493641, 32.338139, 18.713930>,  <38.158726, 31.905453, 18.326439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493641, 32.338139, 18.713930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153748, 32.545494, 18.675507>,  <37.949810, 32.669907, 18.652452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.153748, 32.545494, 18.675507>,  <38.493641, 32.338139, 18.713930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153748, 32.545494, 18.675507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073208, 0.064417, 0.995234,
		0.522107, 0.852715, -0.016787,
		-0.849732, 0.518390, -0.096058,
		37.898827, 32.701012, 18.646688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542316, 32.946445, 19.266766>,  <38.493641, 32.338139, 18.713930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542316, 32.946445, 19.266766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157963, 32.890072, 19.171404>,  <37.927349, 32.856247, 19.114187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157963, 32.890072, 19.171404>,  <38.542316, 32.946445, 19.266766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157963, 32.890072, 19.171404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250813, 0.077801, 0.964904,
		-0.117437, 0.986957, -0.110105,
		-0.960886, -0.140932, -0.238405,
		37.869698, 32.847794, 19.099882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183773, 33.395012, 19.618700>,  <38.542316, 32.946445, 19.266766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183773, 33.395012, 19.618700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916969, 33.111599, 19.526548>,  <37.756886, 32.941551, 19.471258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916969, 33.111599, 19.526548>,  <38.183773, 33.395012, 19.618700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916969, 33.111599, 19.526548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331485, 0.005298, 0.943445,
		-0.667245, 0.705654, -0.238403,
		-0.667009, -0.708537, -0.230379,
		37.716866, 32.899036, 19.457434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553284, 33.617775, 19.969603>,  <38.183773, 33.395012, 19.618700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553284, 33.617775, 19.969603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521603, 33.228172, 19.884712>,  <37.502594, 32.994411, 19.833778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521603, 33.228172, 19.884712>,  <37.553284, 33.617775, 19.969603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521603, 33.228172, 19.884712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448662, -0.155286, 0.880107,
		-0.890185, 0.164922, -0.424701,
		-0.079198, -0.974006, -0.212228,
		37.497845, 32.935970, 19.821043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868195, 33.448067, 20.210873>,  <37.553284, 33.617775, 19.969603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868195, 33.448067, 20.210873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.070240, 33.104683, 20.175295>,  <37.191467, 32.898651, 20.153948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.070240, 33.104683, 20.175295>,  <36.868195, 33.448067, 20.210873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070240, 33.104683, 20.175295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458239, -0.354094, 0.815251,
		-0.731355, -0.371033, -0.572236,
		0.505110, -0.858459, -0.088947,
		37.221771, 32.847145, 20.148611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355644, 32.886986, 20.275591>,  <36.868195, 33.448067, 20.210873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355644, 32.886986, 20.275591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707966, 32.731796, 20.384157>,  <36.919357, 32.638683, 20.449297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707966, 32.731796, 20.384157>,  <36.355644, 32.886986, 20.275591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707966, 32.731796, 20.384157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414940, -0.356381, 0.837149,
		-0.228063, -0.849983, -0.474886,
		0.880802, -0.387971, 0.271414,
		36.972206, 32.615406, 20.465582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141129, 32.206253, 20.574358>,  <36.355644, 32.886986, 20.275591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141129, 32.206253, 20.574358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512196, 32.288990, 20.698715>,  <36.734837, 32.338631, 20.773329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512196, 32.288990, 20.698715>,  <36.141129, 32.206253, 20.574358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512196, 32.288990, 20.698715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233469, -0.328493, 0.915197,
		0.291425, -0.921580, -0.256441,
		0.927666, 0.206840, 0.310891,
		36.790497, 32.351044, 20.791983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336250, 31.751793, 21.090319>,  <36.141129, 32.206253, 20.574358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336250, 31.751793, 21.090319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598461, 32.043449, 21.168947>,  <36.755787, 32.218445, 21.216124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598461, 32.043449, 21.168947>,  <36.336250, 31.751793, 21.090319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598461, 32.043449, 21.168947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124486, -0.152402, 0.980447,
		0.744843, -0.667177, -0.009135,
		0.655524, 0.729142, 0.196570,
		36.795120, 32.262192, 21.227919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800739, 31.453321, 21.474304>,  <36.336250, 31.751793, 21.090319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800739, 31.453321, 21.474304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816837, 31.843231, 21.562117>,  <36.826496, 32.077179, 21.614803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816837, 31.843231, 21.562117>,  <36.800739, 31.453321, 21.474304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816837, 31.843231, 21.562117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134085, -0.212454, 0.967928,
		0.990152, -0.068391, 0.122153,
		0.040246, 0.974775, 0.219532,
		36.828911, 32.135662, 21.627975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115780, 31.445045, 22.146852>,  <36.800739, 31.453321, 21.474304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115780, 31.445045, 22.146852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991634, 31.825262, 22.142136>,  <36.917145, 32.053394, 22.139305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991634, 31.825262, 22.142136>,  <37.115780, 31.445045, 22.146852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991634, 31.825262, 22.142136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170627, -0.043500, 0.984375,
		0.935178, 0.307531, 0.175689,
		-0.310368, 0.950543, -0.011793,
		36.898525, 32.110424, 22.138597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437180, 31.831093, 22.716129>,  <37.115780, 31.445045, 22.146852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437180, 31.831093, 22.716129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107697, 32.042370, 22.633657>,  <36.910004, 32.169136, 22.584173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107697, 32.042370, 22.633657>,  <37.437180, 31.831093, 22.716129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107697, 32.042370, 22.633657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252772, -0.016576, 0.967384,
		0.507547, 0.848963, 0.147166,
		-0.823712, 0.528192, -0.206182,
		36.860584, 32.200829, 22.571802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.564720, 34.421783, 26.972370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175079, 34.512131, 26.976362>,  <38.941296, 34.566341, 26.978758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175079, 34.512131, 26.976362>,  <39.564720, 34.421783, 26.972370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175079, 34.512131, 26.976362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038970, 0.124249, 0.991486,
		0.222707, 0.966201, -0.129834,
		-0.974106, 0.225870, 0.009982,
		38.882847, 34.579891, 26.979357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556976, 34.914463, 27.406464>,  <39.564720, 34.421783, 26.972370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556976, 34.914463, 27.406464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.170513, 34.812016, 27.418692>,  <38.938633, 34.750546, 27.426029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.170513, 34.812016, 27.418692>,  <39.556976, 34.914463, 27.406464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170513, 34.812016, 27.418692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020919, 0.195934, 0.980394,
		-0.257088, 0.946579, -0.194661,
		-0.966161, -0.256120, 0.030571,
		38.880665, 34.735180, 27.427862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223721, 35.493694, 27.633266>,  <39.556976, 34.914463, 27.406464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223721, 35.493694, 27.633266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979965, 35.183323, 27.698488>,  <38.833714, 34.997101, 27.737621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979965, 35.183323, 27.698488>,  <39.223721, 35.493694, 27.633266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979965, 35.183323, 27.698488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172700, 0.330608, 0.927833,
		-0.773836, 0.537251, -0.335470,
		-0.609388, -0.775925, 0.163053,
		38.797150, 34.950546, 27.747404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797367, 35.698261, 28.142178>,  <39.223721, 35.493694, 27.633266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797367, 35.698261, 28.142178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753845, 35.300797, 28.153513>,  <38.727734, 35.062317, 28.160315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753845, 35.300797, 28.153513>,  <38.797367, 35.698261, 28.142178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753845, 35.300797, 28.153513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215457, 0.051403, 0.975159,
		-0.970433, 0.099995, -0.219684,
		-0.108804, -0.993659, 0.028338,
		38.721203, 35.002697, 28.162014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224758, 35.655293, 28.494665>,  <38.797367, 35.698261, 28.142178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224758, 35.655293, 28.494665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368004, 35.282063, 28.508043>,  <38.453953, 35.058125, 28.516069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368004, 35.282063, 28.508043>,  <38.224758, 35.655293, 28.494665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368004, 35.282063, 28.508043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210088, -0.045626, 0.976617,
		-0.909733, -0.356770, -0.212368,
		0.358117, -0.933077, 0.033445,
		38.475441, 35.002140, 28.518078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746124, 35.305599, 28.893013>,  <38.224758, 35.655293, 28.494665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746124, 35.305599, 28.893013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.038158, 35.032257, 28.893553>,  <38.213379, 34.868252, 28.893877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.038158, 35.032257, 28.893553>,  <37.746124, 35.305599, 28.893013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038158, 35.032257, 28.893553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325874, -0.346424, 0.879657,
		-0.600650, -0.642664, -0.475607,
		0.730085, -0.683354, 0.001348,
		38.257183, 34.827251, 28.893957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414078, 34.674957, 29.129229>,  <37.746124, 35.305599, 28.893013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414078, 34.674957, 29.129229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805553, 34.634529, 29.200733>,  <38.040440, 34.610271, 29.243635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805553, 34.634529, 29.200733>,  <37.414078, 34.674957, 29.129229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805553, 34.634529, 29.200733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198653, -0.245360, 0.948860,
		-0.052039, -0.964149, -0.260208,
		0.978688, -0.101069, 0.178763,
		38.099159, 34.604206, 29.254362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569550, 33.990967, 29.492599>,  <37.414078, 34.674957, 29.129229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569550, 33.990967, 29.492599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897060, 34.205746, 29.573875>,  <38.093567, 34.334614, 29.622641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897060, 34.205746, 29.573875>,  <37.569550, 33.990967, 29.492599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897060, 34.205746, 29.573875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002155, -0.356796, 0.934180,
		0.574101, -0.764451, -0.293296,
		0.818782, 0.536946, 0.203189,
		38.142696, 34.366829, 29.634832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807022, 33.570827, 29.920298>,  <37.569550, 33.990967, 29.492599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807022, 33.570827, 29.920298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039719, 33.889626, 29.985268>,  <38.179337, 34.080902, 30.024250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039719, 33.889626, 29.985268>,  <37.807022, 33.570827, 29.920298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039719, 33.889626, 29.985268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101354, -0.269165, 0.957746,
		0.807035, -0.540698, -0.237362,
		0.581741, 0.796992, 0.162424,
		38.214241, 34.128723, 30.033995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456261, 33.358856, 30.382851>,  <37.807022, 33.570827, 29.920298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456261, 33.358856, 30.382851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.389683, 33.749126, 30.439909>,  <38.349735, 33.983288, 30.474144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.389683, 33.749126, 30.439909>,  <38.456261, 33.358856, 30.382851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389683, 33.749126, 30.439909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161281, -0.115778, 0.980094,
		0.972771, 0.186141, -0.138088,
		-0.166448, 0.975678, 0.142647,
		38.339748, 34.041828, 30.482702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835220, 33.487072, 30.930883>,  <38.456261, 33.358856, 30.382851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835220, 33.487072, 30.930883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588268, 33.801182, 30.949614>,  <38.440098, 33.989647, 30.960852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.588268, 33.801182, 30.949614>,  <38.835220, 33.487072, 30.930883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588268, 33.801182, 30.949614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153547, 0.061912, 0.986200,
		0.771536, 0.616048, -0.158799,
		-0.617378, 0.785272, 0.046825,
		38.403053, 34.036762, 30.963661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232376, 33.999245, 31.307878>,  <38.835220, 33.487072, 30.930883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232376, 33.999245, 31.307878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845749, 34.098961, 31.331902>,  <38.613773, 34.158791, 31.346315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845749, 34.098961, 31.331902>,  <39.232376, 33.999245, 31.307878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845749, 34.098961, 31.331902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107569, 0.181590, 0.977473,
		0.232771, 0.951251, -0.202335,
		-0.966564, 0.249292, 0.060056,
		38.555779, 34.173748, 31.349918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121460, 34.706791, 31.623003>,  <39.232376, 33.999245, 31.307878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121460, 34.706791, 31.623003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794678, 34.485863, 31.689369>,  <38.598610, 34.353306, 31.729189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794678, 34.485863, 31.689369>,  <39.121460, 34.706791, 31.623003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794678, 34.485863, 31.689369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115741, 0.124813, 0.985406,
		-0.564970, 0.824234, -0.038040,
		-0.816953, -0.552322, 0.165914,
		38.549591, 34.320168, 31.739143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265842, 35.437943, 31.852194>,  <39.121460, 34.706791, 31.623003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265842, 35.437943, 31.852194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029572, 35.724270, 32.001167>,  <38.887810, 35.896065, 32.090553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029572, 35.724270, 32.001167>,  <39.265842, 35.437943, 31.852194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029572, 35.724270, 32.001167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143691, 0.547492, -0.824382,
		-0.794010, -0.433429, -0.426248,
		-0.590679, 0.715816, 0.372434,
		38.852367, 35.939014, 32.112896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703560, 35.336586, 31.494923>,  <39.265842, 35.437943, 31.852194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703560, 35.336586, 31.494923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.813755, 35.693474, 31.638062>,  <38.879871, 35.907604, 31.723946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.813755, 35.693474, 31.638062>,  <38.703560, 35.336586, 31.494923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813755, 35.693474, 31.638062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284253, 0.280000, -0.916952,
		-0.918316, 0.354332, -0.176477,
		0.275491, 0.892216, 0.357848,
		38.896404, 35.961140, 31.745417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405727, 35.950150, 31.100159>,  <38.703560, 35.336586, 31.494923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405727, 35.950150, 31.100159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731880, 36.102806, 31.274286>,  <38.927574, 36.194401, 31.378763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731880, 36.102806, 31.274286>,  <38.405727, 35.950150, 31.100159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731880, 36.102806, 31.274286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309723, 0.347710, -0.884968,
		-0.489102, 0.856417, 0.165315,
		0.815384, 0.381638, 0.435318,
		38.976494, 36.217297, 31.404882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557903, 36.536476, 30.690243>,  <38.405727, 35.950150, 31.100159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557903, 36.536476, 30.690243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.901485, 36.562229, 30.893436>,  <39.107635, 36.577682, 31.015352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.901485, 36.562229, 30.893436>,  <38.557903, 36.536476, 30.690243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901485, 36.562229, 30.893436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463687, 0.323050, -0.825005,
		-0.217221, 0.944189, 0.247632,
		0.858958, 0.064385, 0.507982,
		39.159172, 36.581543, 31.045832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816681, 37.208054, 30.601627>,  <38.557903, 36.536476, 30.690243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816681, 37.208054, 30.601627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156517, 37.012283, 30.680275>,  <39.360420, 36.894821, 30.727465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156517, 37.012283, 30.680275>,  <38.816681, 37.208054, 30.601627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156517, 37.012283, 30.680275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380130, 0.309743, -0.871528,
		0.365642, 0.815185, 0.449198,
		0.849592, -0.489421, 0.196621,
		39.411396, 36.865456, 30.739262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220409, 37.704723, 30.438034>,  <38.816681, 37.208054, 30.601627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220409, 37.704723, 30.438034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.447014, 37.375111, 30.435596>,  <39.582977, 37.177341, 30.434134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.447014, 37.375111, 30.435596>,  <39.220409, 37.704723, 30.438034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447014, 37.375111, 30.435596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445070, 0.312183, -0.839318,
		0.693529, 0.472768, 0.543607,
		0.566508, -0.824034, -0.006094,
		39.616966, 37.127899, 30.433769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856880, 38.017265, 30.226271>,  <39.220409, 37.704723, 30.438034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856880, 38.017265, 30.226271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885464, 37.627522, 30.140932>,  <39.902615, 37.393677, 30.089729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885464, 37.627522, 30.140932>,  <39.856880, 38.017265, 30.226271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885464, 37.627522, 30.140932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377429, 0.224403, -0.898438,
		0.923278, -0.016323, 0.383787,
		0.071458, -0.974360, -0.213347,
		39.906902, 37.335213, 30.076927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541851, 37.994331, 30.051472>,  <39.856880, 38.017265, 30.226271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541851, 37.994331, 30.051472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.350460, 37.681931, 29.890924>,  <40.235626, 37.494492, 29.794596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.350460, 37.681931, 29.890924>,  <40.541851, 37.994331, 30.051472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350460, 37.681931, 29.890924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435418, 0.185915, -0.880822,
		0.762545, -0.596213, 0.251108,
		-0.478473, -0.781003, -0.401370,
		40.206917, 37.447628, 29.770514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024651, 37.643940, 29.657625>,  <40.541851, 37.994331, 30.051472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024651, 37.643940, 29.657625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687111, 37.489113, 29.508978>,  <40.484589, 37.396217, 29.419788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687111, 37.489113, 29.508978>,  <41.024651, 37.643940, 29.657625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687111, 37.489113, 29.508978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362327, 0.099800, -0.926693,
		0.395782, -0.916634, 0.056030,
		-0.843846, -0.387070, -0.371620,
		40.433956, 37.372993, 29.397491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219193, 37.191277, 29.119217>,  <41.024651, 37.643940, 29.657625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219193, 37.191277, 29.119217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838528, 37.286762, 29.041901>,  <40.610130, 37.344055, 28.995510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838528, 37.286762, 29.041901>,  <41.219193, 37.191277, 29.119217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838528, 37.286762, 29.041901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167674, -0.123514, -0.978074,
		-0.257354, -0.963203, 0.077518,
		-0.951659, 0.238713, -0.193291,
		40.553028, 37.358376, 28.983913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010101, 36.705189, 28.645071>,  <41.219193, 37.191277, 29.119217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010101, 36.705189, 28.645071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720612, 36.973431, 28.579927>,  <40.546917, 37.134377, 28.540842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720612, 36.973431, 28.579927>,  <41.010101, 36.705189, 28.645071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720612, 36.973431, 28.579927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006242, -0.242348, -0.970169,
		-0.690065, -0.701115, 0.179578,
		-0.723721, 0.670601, -0.162859,
		40.503494, 37.174610, 28.531069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748150, 36.356503, 28.094770>,  <41.010101, 36.705189, 28.645071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748150, 36.356503, 28.094770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639278, 36.741360, 28.100422>,  <40.573956, 36.972275, 28.103813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639278, 36.741360, 28.100422>,  <40.748150, 36.356503, 28.094770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639278, 36.741360, 28.100422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114274, -0.017740, -0.993291,
		-0.955438, -0.271963, 0.114777,
		-0.272174, 0.962144, 0.014129,
		40.557625, 37.030003, 28.104660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311176, 36.399826, 27.653765>,  <40.748150, 36.356503, 28.094770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311176, 36.399826, 27.653765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.363422, 36.796291, 27.644588>,  <40.394772, 37.034172, 27.639082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.363422, 36.796291, 27.644588>,  <40.311176, 36.399826, 27.653765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363422, 36.796291, 27.644588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147303, -0.003482, -0.989085,
		-0.980429, 0.132571, 0.145547,
		0.130617, 0.991168, -0.022942,
		40.402607, 37.093643, 27.637707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859592, 36.595490, 27.196798>,  <40.311176, 36.399826, 27.653765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859592, 36.595490, 27.196798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.142796, 36.877090, 27.219095>,  <40.312717, 37.046051, 27.232473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.142796, 36.877090, 27.219095>,  <39.859592, 36.595490, 27.196798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142796, 36.877090, 27.219095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095918, -0.017661, -0.995233,
		-0.699660, 0.709979, -0.080030,
		0.708008, 0.704001, 0.055743,
		40.355198, 37.088291, 27.235819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721542, 37.078465, 26.644949>,  <39.859592, 36.595490, 27.196798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721542, 37.078465, 26.644949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.102867, 37.151985, 26.740795>,  <40.331661, 37.196098, 26.798304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.102867, 37.151985, 26.740795>,  <39.721542, 37.078465, 26.644949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102867, 37.151985, 26.740795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262470, -0.111850, -0.958436,
		-0.149359, 0.976579, -0.154870,
		0.953311, 0.183800, 0.239617,
		40.388859, 37.207127, 26.812679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424244, 37.785004, 26.406672>,  <39.721542, 37.078465, 26.644949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424244, 37.785004, 26.406672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.132740, 38.030724, 26.285643>,  <38.957836, 38.178154, 26.213026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.132740, 38.030724, 26.285643>,  <39.424244, 37.785004, 26.406672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132740, 38.030724, 26.285643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410187, -0.037798, 0.911218,
		0.548322, 0.788169, 0.279522,
		-0.728759, 0.614297, -0.302571,
		38.914112, 38.215012, 26.194872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382954, 38.368355, 26.938078>,  <39.424244, 37.785004, 26.406672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382954, 38.368355, 26.938078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025810, 38.360691, 26.758106>,  <38.811523, 38.356094, 26.650124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025810, 38.360691, 26.758106>,  <39.382954, 38.368355, 26.938078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025810, 38.360691, 26.758106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441574, -0.158896, 0.883043,
		-0.088411, 0.987110, 0.133411,
		-0.892859, -0.019161, -0.449930,
		38.757954, 38.354942, 26.623127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953091, 38.786507, 27.272879>,  <39.382954, 38.368355, 26.938078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953091, 38.786507, 27.272879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694466, 38.549328, 27.080891>,  <38.539291, 38.407021, 26.965698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.694466, 38.549328, 27.080891>,  <38.953091, 38.786507, 27.272879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694466, 38.549328, 27.080891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466705, -0.190236, 0.863711,
		-0.603443, 0.782446, -0.153733,
		-0.646562, -0.592949, -0.479968,
		38.500496, 38.371445, 26.936901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327896, 38.830837, 27.678600>,  <38.953091, 38.786507, 27.272879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327896, 38.830837, 27.678600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221096, 38.534218, 27.432405>,  <38.157017, 38.356247, 27.284689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.221096, 38.534218, 27.432405>,  <38.327896, 38.830837, 27.678600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221096, 38.534218, 27.432405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705505, -0.284671, 0.649019,
		-0.656488, 0.607515, -0.447157,
		-0.266996, -0.741545, -0.615488,
		38.140999, 38.311756, 27.247759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669601, 38.933105, 27.442921>,  <38.327896, 38.830837, 27.678600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669601, 38.933105, 27.442921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711876, 38.536312, 27.415195>,  <37.737240, 38.298237, 27.398560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711876, 38.536312, 27.415195>,  <37.669601, 38.933105, 27.442921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711876, 38.536312, 27.415195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777771, -0.125891, 0.615812,
		-0.619600, -0.011168, -0.784838,
		0.105682, -0.991981, -0.069315,
		37.743580, 38.238716, 27.394402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936855, 38.627388, 27.361059>,  <37.669601, 38.933105, 27.442921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936855, 38.627388, 27.361059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.173973, 38.334259, 27.494671>,  <37.316242, 38.158382, 27.574839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.173973, 38.334259, 27.494671>,  <36.936855, 38.627388, 27.361059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173973, 38.334259, 27.494671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683720, -0.238752, 0.689583,
		-0.425590, -0.637160, -0.642573,
		0.592790, -0.732819, 0.334029,
		37.351810, 38.114414, 27.594879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451637, 38.164368, 27.469151>,  <36.936855, 38.627388, 27.361059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451637, 38.164368, 27.469151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.781200, 38.052299, 27.666199>,  <36.978939, 37.985058, 27.784428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.781200, 38.052299, 27.666199>,  <36.451637, 38.164368, 27.469151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781200, 38.052299, 27.666199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554435, -0.218489, 0.803035,
		-0.117348, -0.934757, -0.335349,
		0.823912, -0.280164, 0.492622,
		37.028374, 37.968250, 27.813986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257378, 37.585747, 27.858450>,  <36.451637, 38.164368, 27.469151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257378, 37.585747, 27.858450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.570969, 37.712067, 28.072235>,  <36.759125, 37.787861, 28.200506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.570969, 37.712067, 28.072235>,  <36.257378, 37.585747, 27.858450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570969, 37.712067, 28.072235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452283, -0.299165, 0.840202,
		0.425230, -0.900427, -0.091706,
		0.783977, 0.315802, 0.534462,
		36.806160, 37.806808, 28.232574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332443, 37.155712, 28.371168>,  <36.257378, 37.585747, 27.858450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332443, 37.155712, 28.371168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539280, 37.461266, 28.525620>,  <36.663383, 37.644596, 28.618290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539280, 37.461266, 28.525620>,  <36.332443, 37.155712, 28.371168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539280, 37.461266, 28.525620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220258, -0.317172, 0.922436,
		0.827104, -0.562033, 0.004243,
		0.517094, 0.763885, 0.386127,
		36.694408, 37.690430, 28.641457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781990, 36.887684, 28.917944>,  <36.332443, 37.155712, 28.371168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781990, 36.887684, 28.917944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768948, 37.277100, 29.008423>,  <36.761124, 37.510750, 29.062710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768948, 37.277100, 29.008423>,  <36.781990, 36.887684, 28.917944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768948, 37.277100, 29.008423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210141, -0.227937, 0.950729,
		0.977127, -0.016539, 0.212011,
		-0.032602, 0.973535, 0.226199,
		36.759167, 37.569160, 29.076283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047066, 36.979927, 29.728594>,  <36.781990, 36.887684, 28.917944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047066, 36.979927, 29.728594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861214, 37.314312, 29.611778>,  <36.749702, 37.514942, 29.541689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861214, 37.314312, 29.611778>,  <37.047066, 36.979927, 29.728594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861214, 37.314312, 29.611778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308883, 0.156081, 0.938206,
		0.829886, 0.526125, 0.185695,
		-0.464630, 0.835961, -0.292040,
		36.721825, 37.565102, 29.524166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186577, 37.523968, 30.255333>,  <37.047066, 36.979927, 29.728594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186577, 37.523968, 30.255333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842579, 37.593830, 30.063536>,  <36.636181, 37.635746, 29.948458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842579, 37.593830, 30.063536>,  <37.186577, 37.523968, 30.255333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842579, 37.593830, 30.063536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502615, -0.127338, 0.855081,
		0.088287, 0.976361, 0.197293,
		-0.859991, 0.174655, -0.479491,
		36.584583, 37.646225, 29.919689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.088943, 39.526932, 22.767645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711346, 39.408730, 22.708931>,  <39.484787, 39.337811, 22.673702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711346, 39.408730, 22.708931>,  <40.088943, 39.526932, 22.767645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711346, 39.408730, 22.708931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235668, 0.292492, 0.926774,
		-0.230930, 0.909465, -0.345752,
		-0.943998, -0.295502, -0.146787,
		39.428146, 39.320080, 22.664894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731846, 40.060314, 23.124811>,  <40.088943, 39.526932, 22.767645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731846, 40.060314, 23.124811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493027, 39.742340, 23.081696>,  <39.349735, 39.551556, 23.055826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493027, 39.742340, 23.081696>,  <39.731846, 40.060314, 23.124811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493027, 39.742340, 23.081696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299387, 0.096143, 0.949276,
		-0.744249, 0.599029, -0.295394,
		-0.597044, -0.794934, -0.107787,
		39.313915, 39.503860, 23.049360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034389, 40.150425, 23.452356>,  <39.731846, 40.060314, 23.124811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034389, 40.150425, 23.452356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094978, 39.756016, 23.424585>,  <39.131332, 39.519371, 23.407923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094978, 39.756016, 23.424585>,  <39.034389, 40.150425, 23.452356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094978, 39.756016, 23.424585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266636, -0.108392, 0.957683,
		-0.951820, -0.126549, -0.279327,
		0.151471, -0.986020, -0.069427,
		39.140419, 39.460209, 23.403757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529251, 39.871216, 23.904282>,  <39.034389, 40.150425, 23.452356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529251, 39.871216, 23.904282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775036, 39.558582, 23.861282>,  <38.922508, 39.371002, 23.835484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775036, 39.558582, 23.861282>,  <38.529251, 39.871216, 23.904282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775036, 39.558582, 23.861282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179747, -0.271358, 0.945545,
		-0.768198, -0.561679, -0.307227,
		0.614462, -0.781589, -0.107496,
		38.959373, 39.324104, 23.829033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154186, 39.328579, 24.291136>,  <38.529251, 39.871216, 23.904282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154186, 39.328579, 24.291136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530426, 39.195263, 24.265272>,  <38.756172, 39.115273, 24.249754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530426, 39.195263, 24.265272>,  <38.154186, 39.328579, 24.291136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530426, 39.195263, 24.265272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081209, -0.405794, 0.910350,
		-0.329649, -0.851028, -0.408758,
		0.940604, -0.333291, -0.064658,
		38.812607, 39.095276, 24.245874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082222, 38.666595, 24.522305>,  <38.154186, 39.328579, 24.291136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082222, 38.666595, 24.522305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464218, 38.782265, 24.548721>,  <38.693417, 38.851665, 24.564571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464218, 38.782265, 24.548721>,  <38.082222, 38.666595, 24.522305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464218, 38.782265, 24.548721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053701, -0.387526, 0.920293,
		0.291722, -0.875328, -0.385614,
		0.954994, 0.289177, 0.066043,
		38.750717, 38.869019, 24.568535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429626, 38.104263, 24.770018>,  <38.082222, 38.666595, 24.522305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429626, 38.104263, 24.770018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668510, 38.401016, 24.891968>,  <38.811840, 38.579067, 24.965137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668510, 38.401016, 24.891968>,  <38.429626, 38.104263, 24.770018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668510, 38.401016, 24.891968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020698, -0.394232, 0.918778,
		0.801816, -0.542395, -0.250795,
		0.597212, 0.741882, 0.304875,
		38.847675, 38.623581, 24.983431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013306, 37.722282, 25.118828>,  <38.429626, 38.104263, 24.770018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013306, 37.722282, 25.118828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040062, 38.097137, 25.255829>,  <39.056114, 38.322048, 25.338030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040062, 38.097137, 25.255829>,  <39.013306, 37.722282, 25.118828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040062, 38.097137, 25.255829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051071, -0.339604, 0.939181,
		0.996453, -0.080312, 0.025145,
		0.066888, 0.937133, 0.342501,
		39.060127, 38.378277, 25.358580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495960, 37.672054, 25.677582>,  <39.013306, 37.722282, 25.118828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495960, 37.672054, 25.677582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272442, 37.997124, 25.743681>,  <39.138332, 38.192165, 25.783340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272442, 37.997124, 25.743681>,  <39.495960, 37.672054, 25.677582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272442, 37.997124, 25.743681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237480, -0.347725, 0.907023,
		0.794575, 0.467598, 0.387301,
		-0.558796, 0.812674, 0.165248,
		39.104801, 38.240925, 25.793255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117878, 37.544998, 26.062075>,  <39.495960, 37.672054, 25.677582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117878, 37.544998, 26.062075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435997, 37.391365, 26.249681>,  <40.626869, 37.299183, 26.362246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435997, 37.391365, 26.249681>,  <40.117878, 37.544998, 26.062075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435997, 37.391365, 26.249681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455199, -0.132599, -0.880461,
		0.400363, 0.913726, 0.069379,
		0.795301, -0.384085, 0.469015,
		40.674587, 37.276138, 26.390387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697411, 37.868584, 25.793045>,  <40.117878, 37.544998, 26.062075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697411, 37.868584, 25.793045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844707, 37.530502, 25.947977>,  <40.933086, 37.327652, 26.040937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844707, 37.530502, 25.947977>,  <40.697411, 37.868584, 25.793045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844707, 37.530502, 25.947977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445096, -0.205500, -0.871584,
		0.816264, 0.493355, 0.300524,
		0.368242, -0.845205, 0.387332,
		40.955181, 37.276939, 26.064177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358696, 37.891399, 25.611792>,  <40.697411, 37.868584, 25.793045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358696, 37.891399, 25.611792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289787, 37.505226, 25.690027>,  <41.248440, 37.273521, 25.736969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289787, 37.505226, 25.690027>,  <41.358696, 37.891399, 25.611792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289787, 37.505226, 25.690027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606904, -0.260424, -0.750897,
		0.775879, -0.010655, 0.630791,
		-0.172274, -0.965436, 0.195591,
		41.238106, 37.215595, 25.748705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951820, 37.478802, 25.499424>,  <41.358696, 37.891399, 25.611792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951820, 37.478802, 25.499424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658379, 37.208931, 25.466837>,  <41.482315, 37.047009, 25.447285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658379, 37.208931, 25.466837>,  <41.951820, 37.478802, 25.499424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658379, 37.208931, 25.466837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434713, -0.373742, -0.819354,
		0.522354, -0.636494, 0.567470,
		-0.733601, -0.674679, -0.081467,
		41.438297, 37.006527, 25.442396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233509, 37.001678, 25.179111>,  <41.951820, 37.478802, 25.499424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233509, 37.001678, 25.179111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857079, 36.872578, 25.138702>,  <41.631222, 36.795116, 25.114456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857079, 36.872578, 25.138702>,  <42.233509, 37.001678, 25.179111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857079, 36.872578, 25.138702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227692, -0.383784, -0.894911,
		0.250067, -0.865181, 0.434658,
		-0.941075, -0.322756, -0.101023,
		41.574757, 36.775749, 25.108395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204449, 36.242973, 25.061472>,  <42.233509, 37.001678, 25.179111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204449, 36.242973, 25.061472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882950, 36.415344, 24.897373>,  <41.690052, 36.518764, 24.798914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882950, 36.415344, 24.897373>,  <42.204449, 36.242973, 25.061472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882950, 36.415344, 24.897373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106192, -0.574548, -0.811553,
		-0.585438, -0.695837, 0.416021,
		-0.803732, 0.430936, -0.410254,
		41.641827, 36.544621, 24.774300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744217, 35.616356, 24.873930>,  <42.204449, 36.242973, 25.061472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744217, 35.616356, 24.873930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669201, 35.938671, 24.649240>,  <41.624191, 36.132061, 24.514427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669201, 35.938671, 24.649240>,  <41.744217, 35.616356, 24.873930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669201, 35.938671, 24.649240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054750, -0.579558, -0.813089,
		-0.980730, -0.121730, 0.152806,
		-0.187538, 0.805788, -0.561726,
		41.612938, 36.180408, 24.480722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138794, 35.372410, 24.381510>,  <41.744217, 35.616356, 24.873930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138794, 35.372410, 24.381510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297256, 35.699440, 24.214357>,  <41.392334, 35.895660, 24.114067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297256, 35.699440, 24.214357>,  <41.138794, 35.372410, 24.381510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297256, 35.699440, 24.214357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001582, -0.454508, -0.890741,
		-0.918181, 0.353536, -0.178764,
		0.396158, 0.817579, -0.417879,
		41.416103, 35.944714, 24.088993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708664, 35.532841, 23.778076>,  <41.138794, 35.372410, 24.381510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708664, 35.532841, 23.778076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057583, 35.715874, 23.709116>,  <41.266933, 35.825695, 23.667740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057583, 35.715874, 23.709116>,  <40.708664, 35.532841, 23.778076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057583, 35.715874, 23.709116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052828, -0.262318, -0.963534,
		-0.486120, 0.849592, -0.204646,
		0.872294, 0.457583, -0.172400,
		41.319271, 35.853149, 23.657396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546162, 35.924034, 23.225414>,  <40.708664, 35.532841, 23.778076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546162, 35.924034, 23.225414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945930, 35.937073, 23.229261>,  <41.185791, 35.944897, 23.231569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945930, 35.937073, 23.229261>,  <40.546162, 35.924034, 23.225414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945930, 35.937073, 23.229261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018138, -0.272233, -0.962060,
		-0.028737, 0.961679, -0.272667,
		0.999422, 0.032593, 0.009620,
		41.245758, 35.946850, 23.232147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751087, 36.339203, 22.661943>,  <40.546162, 35.924034, 23.225414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751087, 36.339203, 22.661943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078671, 36.123871, 22.741449>,  <41.275223, 35.994671, 22.789152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078671, 36.123871, 22.741449>,  <40.751087, 36.339203, 22.661943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078671, 36.123871, 22.741449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165474, -0.110119, -0.980047,
		0.549474, 0.835510, -0.001104,
		0.818960, -0.538328, 0.198763,
		41.324360, 35.962372, 22.801079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237572, 36.577168, 22.119671>,  <40.751087, 36.339203, 22.661943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237572, 36.577168, 22.119671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456482, 36.266678, 22.244869>,  <41.587830, 36.080383, 22.319988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456482, 36.266678, 22.244869>,  <41.237572, 36.577168, 22.119671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456482, 36.266678, 22.244869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435650, -0.055118, -0.898427,
		0.714631, 0.628045, 0.307997,
		0.547277, -0.776222, 0.312997,
		41.620667, 36.033810, 22.338768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883755, 36.626297, 21.837046>,  <41.237572, 36.577168, 22.119671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883755, 36.626297, 21.837046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841946, 36.234200, 21.904207>,  <41.816860, 35.998940, 21.944504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841946, 36.234200, 21.904207>,  <41.883755, 36.626297, 21.837046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841946, 36.234200, 21.904207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199004, -0.186029, -0.962180,
		0.974409, -0.067153, 0.214516,
		-0.104519, -0.980247, 0.167905,
		41.810589, 35.940125, 21.954578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517487, 36.315437, 21.549713>,  <41.883755, 36.626297, 21.837046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517487, 36.315437, 21.549713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226604, 36.042095, 21.575628>,  <42.052074, 35.878090, 21.591177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226604, 36.042095, 21.575628>,  <42.517487, 36.315437, 21.549713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226604, 36.042095, 21.575628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234284, -0.335812, -0.912328,
		0.645200, -0.648271, 0.404303,
		-0.727205, -0.683356, 0.064786,
		42.008442, 35.837090, 21.595064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.066326, 33.972527, 20.778353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.453072, 34.024780, 20.866093>,  <34.685120, 34.056133, 20.918737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.453072, 34.024780, 20.866093>,  <34.066326, 33.972527, 20.778353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453072, 34.024780, 20.866093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175844, -0.282145, 0.943119,
		0.185093, -0.950436, -0.249823,
		0.966861, 0.130635, 0.219352,
		34.743130, 34.063972, 20.931898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276287, 33.396889, 21.135328>,  <34.066326, 33.972527, 20.778353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276287, 33.396889, 21.135328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536148, 33.682178, 21.240599>,  <34.692066, 33.853352, 21.303761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536148, 33.682178, 21.240599>,  <34.276287, 33.396889, 21.135328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536148, 33.682178, 21.240599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054891, -0.301269, 0.951958,
		0.758246, -0.632889, -0.156571,
		0.649654, 0.713224, 0.263176,
		34.731045, 33.896145, 21.319551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719471, 33.093285, 21.717789>,  <34.276287, 33.396889, 21.135328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719471, 33.093285, 21.717789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.764469, 33.490746, 21.718674>,  <34.791470, 33.729221, 21.719204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.764469, 33.490746, 21.718674>,  <34.719471, 33.093285, 21.717789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764469, 33.490746, 21.718674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011246, -0.000953, 0.999936,
		0.993589, -0.112515, 0.011068,
		0.112497, 0.993650, 0.002212,
		34.798218, 33.788841, 21.719337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027386, 33.108959, 22.331755>,  <34.719471, 33.093285, 21.717789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027386, 33.108959, 22.331755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952427, 33.495361, 22.260523>,  <34.907452, 33.727203, 22.217783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952427, 33.495361, 22.260523>,  <35.027386, 33.108959, 22.331755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952427, 33.495361, 22.260523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251787, 0.127998, 0.959281,
		0.949466, 0.224603, 0.219242,
		-0.187395, 0.966008, -0.178082,
		34.896210, 33.785164, 22.207098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477974, 33.421215, 22.727278>,  <35.027386, 33.108959, 22.331755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477974, 33.421215, 22.727278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166729, 33.661140, 22.652697>,  <34.979984, 33.805096, 22.607948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166729, 33.661140, 22.652697>,  <35.477974, 33.421215, 22.727278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166729, 33.661140, 22.652697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097706, 0.177645, 0.979232,
		0.620482, 0.780169, -0.079622,
		-0.778111, 0.599816, -0.186453,
		34.933296, 33.841084, 22.596762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631153, 34.033257, 23.130135>,  <35.477974, 33.421215, 22.727278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631153, 34.033257, 23.130135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.243366, 33.970436, 23.054798>,  <35.010696, 33.932743, 23.009596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.243366, 33.970436, 23.054798>,  <35.631153, 34.033257, 23.130135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243366, 33.970436, 23.054798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223464, 0.249434, 0.942256,
		-0.101007, 0.955572, -0.276913,
		-0.969465, -0.157054, -0.188341,
		34.952526, 33.923321, 22.998297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261692, 34.536316, 23.550858>,  <35.631153, 34.033257, 23.130135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261692, 34.536316, 23.550858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.961021, 34.299355, 23.434895>,  <34.780621, 34.157177, 23.365316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.961021, 34.299355, 23.434895>,  <35.261692, 34.536316, 23.550858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961021, 34.299355, 23.434895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471526, 0.175360, 0.864241,
		-0.461142, 0.786324, -0.411148,
		-0.751672, -0.592404, -0.289906,
		34.735519, 34.121632, 23.347923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669094, 34.835407, 23.596458>,  <35.261692, 34.536316, 23.550858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669094, 34.835407, 23.596458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552795, 34.454556, 23.634214>,  <34.483017, 34.226044, 23.656868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552795, 34.454556, 23.634214>,  <34.669094, 34.835407, 23.596458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552795, 34.454556, 23.634214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580547, 0.253970, 0.773605,
		-0.760546, 0.170128, -0.626599,
		-0.290749, -0.952132, 0.094388,
		34.465572, 34.168915, 23.662531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939999, 34.917568, 23.770950>,  <34.669094, 34.835407, 23.596458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939999, 34.917568, 23.770950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025425, 34.543858, 23.885159>,  <34.076679, 34.319633, 23.953684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025425, 34.543858, 23.885159>,  <33.939999, 34.917568, 23.770950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025425, 34.543858, 23.885159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449553, 0.165494, 0.877789,
		-0.867347, -0.315823, -0.384662,
		0.213567, -0.934274, 0.285520,
		34.089497, 34.263577, 23.970814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330021, 34.665184, 24.175968>,  <33.939999, 34.917568, 23.770950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330021, 34.665184, 24.175968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.630890, 34.428368, 24.291710>,  <33.811409, 34.286278, 24.361155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.630890, 34.428368, 24.291710>,  <33.330021, 34.665184, 24.175968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630890, 34.428368, 24.291710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331663, 0.039311, 0.942579,
		-0.569424, -0.804945, -0.166791,
		0.752168, -0.592046, 0.289355,
		33.856541, 34.250755, 24.378517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942848, 34.333046, 24.762938>,  <33.330021, 34.665184, 24.175968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942848, 34.333046, 24.762938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.337181, 34.278370, 24.801825>,  <33.573780, 34.245564, 24.825157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.337181, 34.278370, 24.801825>,  <32.942848, 34.333046, 24.762938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337181, 34.278370, 24.801825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107191, -0.067588, 0.991939,
		-0.129019, -0.988305, -0.081282,
		0.985832, -0.136692, 0.097217,
		33.632931, 34.237362, 24.830990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028835, 33.929550, 25.392639>,  <32.942848, 34.333046, 24.762938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028835, 33.929550, 25.392639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.389267, 34.093292, 25.335400>,  <33.605526, 34.191536, 25.301056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.389267, 34.093292, 25.335400>,  <33.028835, 33.929550, 25.392639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389267, 34.093292, 25.335400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068004, 0.192518, 0.978934,
		0.428283, -0.891831, 0.145637,
		0.901082, 0.409357, -0.143100,
		33.659592, 34.216099, 25.292469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441448, 33.495960, 25.880384>,  <33.028835, 33.929550, 25.392639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441448, 33.495960, 25.880384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.620609, 33.843212, 25.794838>,  <33.728107, 34.051563, 25.743509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.620609, 33.843212, 25.794838>,  <33.441448, 33.495960, 25.880384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620609, 33.843212, 25.794838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032486, 0.223244, 0.974221,
		0.893491, -0.443306, 0.071790,
		0.447904, 0.868125, -0.213868,
		33.754982, 34.103649, 25.730677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055901, 33.548302, 26.291122>,  <33.441448, 33.495960, 25.880384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055901, 33.548302, 26.291122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974617, 33.927639, 26.193678>,  <33.925846, 34.155243, 26.135210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974617, 33.927639, 26.193678>,  <34.055901, 33.548302, 26.291122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974617, 33.927639, 26.193678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159830, 0.277595, 0.947310,
		0.966002, 0.153567, -0.207984,
		-0.203211, 0.948345, -0.243613,
		33.913654, 34.212143, 26.120594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820999, 33.655750, 26.282303>,  <34.055901, 33.548302, 26.291122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820999, 33.655750, 26.282303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162277, 33.447708, 26.298012>,  <35.367043, 33.322884, 26.307438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162277, 33.447708, 26.298012>,  <34.820999, 33.655750, 26.282303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162277, 33.447708, 26.298012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077632, -0.201085, -0.976493,
		0.515780, 0.830091, -0.211942,
		0.853196, -0.520109, 0.039274,
		35.418236, 33.291676, 26.309793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486130, 33.959240, 25.740011>,  <34.820999, 33.655750, 26.282303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486130, 33.959240, 25.740011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.543686, 33.572891, 25.826160>,  <35.578220, 33.341084, 25.877850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.543686, 33.572891, 25.826160>,  <35.486130, 33.959240, 25.740011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543686, 33.572891, 25.826160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147422, -0.194288, -0.969803,
		0.978551, 0.171297, 0.114435,
		0.143891, -0.965872, 0.215374,
		35.586853, 33.283131, 25.890772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041428, 33.886486, 25.247671>,  <35.486130, 33.959240, 25.740011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041428, 33.886486, 25.247671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.929031, 33.521965, 25.368050>,  <35.861595, 33.303253, 25.440277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.929031, 33.521965, 25.368050>,  <36.041428, 33.886486, 25.247671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929031, 33.521965, 25.368050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249918, -0.372243, -0.893855,
		0.926599, -0.175953, 0.332348,
		-0.280991, -0.911304, 0.300946,
		35.844734, 33.248573, 25.458334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661655, 33.477818, 25.282040>,  <36.041428, 33.886486, 25.247671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661655, 33.477818, 25.282040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342976, 33.241722, 25.230066>,  <36.151768, 33.100063, 25.198881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342976, 33.241722, 25.230066>,  <36.661655, 33.477818, 25.282040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342976, 33.241722, 25.230066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379345, -0.321003, -0.867787,
		0.470493, -0.740658, 0.479648,
		-0.796702, -0.590240, -0.129935,
		36.103966, 33.064651, 25.191086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915306, 32.758282, 24.987852>,  <36.661655, 33.477818, 25.282040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915306, 32.758282, 24.987852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524479, 32.742371, 24.904184>,  <36.289982, 32.732822, 24.853985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524479, 32.742371, 24.904184>,  <36.915306, 32.758282, 24.987852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524479, 32.742371, 24.904184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209968, -0.342938, -0.915591,
		-0.035312, -0.938516, 0.343426,
		-0.977070, -0.039778, -0.209168,
		36.231358, 32.730438, 24.841434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856186, 32.190758, 24.599865>,  <36.915306, 32.758282, 24.987852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856186, 32.190758, 24.599865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516479, 32.386631, 24.520918>,  <36.312656, 32.504154, 24.473549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.516479, 32.386631, 24.520918>,  <36.856186, 32.190758, 24.599865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516479, 32.386631, 24.520918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104009, -0.521681, -0.846777,
		-0.517566, -0.698641, 0.493990,
		-0.849299, 0.489642, -0.197339,
		36.261700, 32.533535, 24.461708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400665, 31.664074, 24.335150>,  <36.856186, 32.190758, 24.599865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400665, 31.664074, 24.335150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286789, 32.031830, 24.226574>,  <36.218464, 32.252483, 24.161428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286789, 32.031830, 24.226574>,  <36.400665, 31.664074, 24.335150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286789, 32.031830, 24.226574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103650, -0.311019, -0.944735,
		-0.953001, -0.240818, 0.183838,
		-0.284686, 0.919388, -0.271441,
		36.201382, 32.307648, 24.145142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016693, 31.489441, 23.704855>,  <36.400665, 31.664074, 24.335150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016693, 31.489441, 23.704855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068546, 31.885681, 23.687403>,  <36.099659, 32.123425, 23.676931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068546, 31.885681, 23.687403>,  <36.016693, 31.489441, 23.704855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068546, 31.885681, 23.687403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020070, -0.046614, -0.998711,
		-0.991359, 0.128590, -0.025924,
		0.129633, 0.990602, -0.043631,
		36.107437, 32.182861, 23.674313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642651, 31.690268, 23.180204>,  <36.016693, 31.489441, 23.704855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642651, 31.690268, 23.180204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939480, 31.949780, 23.247633>,  <36.117577, 32.105488, 23.288090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939480, 31.949780, 23.247633>,  <35.642651, 31.690268, 23.180204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939480, 31.949780, 23.247633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233805, -0.014828, -0.972170,
		-0.628224, 0.760833, -0.162691,
		0.742071, 0.648779, 0.168571,
		36.162102, 32.144413, 23.298204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556522, 32.161442, 22.621660>,  <35.642651, 31.690268, 23.180204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556522, 32.161442, 22.621660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.927673, 32.233818, 22.752073>,  <36.150364, 32.277245, 22.830322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.927673, 32.233818, 22.752073>,  <35.556522, 32.161442, 22.621660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927673, 32.233818, 22.752073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307332, 0.124021, -0.943486,
		-0.211151, 0.975643, 0.059468,
		0.927881, 0.180942, 0.326033,
		36.206036, 32.288101, 22.849884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799320, 32.798271, 22.254265>,  <35.556522, 32.161442, 22.621660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799320, 32.798271, 22.254265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.146008, 32.636463, 22.370989>,  <36.354019, 32.539379, 22.441023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.146008, 32.636463, 22.370989>,  <35.799320, 32.798271, 22.254265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146008, 32.636463, 22.370989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379742, 0.155830, -0.911873,
		0.323400, 0.901154, 0.288676,
		0.866723, -0.404522, 0.291811,
		36.406025, 32.515106, 22.458532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348877, 33.295654, 22.160936>,  <35.799320, 32.798271, 22.254265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348877, 33.295654, 22.160936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.511757, 32.930832, 22.141619>,  <36.609486, 32.711937, 22.130028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.511757, 32.930832, 22.141619>,  <36.348877, 33.295654, 22.160936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511757, 32.930832, 22.141619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492535, 0.263812, -0.829345,
		0.769152, 0.313926, 0.556646,
		0.407203, -0.912060, -0.048292,
		36.633919, 32.657215, 22.127131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074089, 33.339588, 21.997522>,  <36.348877, 33.295654, 22.160936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074089, 33.339588, 21.997522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010361, 32.963787, 21.876234>,  <36.972122, 32.738304, 21.803461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010361, 32.963787, 21.876234>,  <37.074089, 33.339588, 21.997522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010361, 32.963787, 21.876234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417464, 0.214218, -0.883082,
		0.894617, -0.267281, 0.358080,
		-0.159324, -0.939506, -0.303223,
		36.962563, 32.681934, 21.785267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654278, 33.106533, 21.613541>,  <37.074089, 33.339588, 21.997522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654278, 33.106533, 21.613541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395927, 32.837231, 21.469553>,  <37.240917, 32.675652, 21.383160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.395927, 32.837231, 21.469553>,  <37.654278, 33.106533, 21.613541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395927, 32.837231, 21.469553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396014, 0.107662, -0.911911,
		0.652701, -0.731533, 0.197081,
		-0.645875, -0.673253, -0.359968,
		37.202164, 32.635254, 21.361563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205727, 32.640888, 21.907343>,  <37.654278, 33.106533, 21.613541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205727, 32.640888, 21.907343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533627, 32.869915, 21.902052>,  <38.730366, 33.007332, 21.898878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533627, 32.869915, 21.902052>,  <38.205727, 32.640888, 21.907343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533627, 32.869915, 21.902052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184660, 0.286103, 0.940237,
		0.542133, -0.768318, 0.340264,
		0.819751, 0.572567, -0.013228,
		38.779552, 33.041683, 21.898083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567982, 32.419209, 22.501427>,  <38.205727, 32.640888, 21.907343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567982, 32.419209, 22.501427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693336, 32.790127, 22.419540>,  <38.768547, 33.012680, 22.370409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693336, 32.790127, 22.419540>,  <38.567982, 32.419209, 22.501427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693336, 32.790127, 22.419540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045281, 0.229923, 0.972155,
		0.948547, -0.295386, 0.114043,
		0.313382, 0.927298, -0.204718,
		38.787350, 33.068317, 22.358126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057564, 32.472420, 22.962212>,  <38.567982, 32.419209, 22.501427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057564, 32.472420, 22.962212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.977207, 32.847816, 22.849869>,  <38.928993, 33.073055, 22.782463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.977207, 32.847816, 22.849869>,  <39.057564, 32.472420, 22.962212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977207, 32.847816, 22.849869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067233, 0.299236, 0.951807,
		0.977304, 0.172324, -0.123210,
		-0.200888, 0.938489, -0.280859,
		38.916943, 33.129364, 22.765612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475349, 32.777977, 23.355013>,  <39.057564, 32.472420, 22.962212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475349, 32.777977, 23.355013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.235386, 33.072872, 23.230700>,  <39.091408, 33.249809, 23.156113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.235386, 33.072872, 23.230700>,  <39.475349, 32.777977, 23.355013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235386, 33.072872, 23.230700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106991, 0.458881, 0.882032,
		0.792880, 0.495890, -0.354166,
		-0.599911, 0.737239, -0.310782,
		39.055412, 33.294044, 23.137465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835411, 33.379734, 23.377089>,  <39.475349, 32.777977, 23.355013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835411, 33.379734, 23.377089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.445972, 33.468727, 23.397551>,  <39.212311, 33.522125, 23.409828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.445972, 33.468727, 23.397551>,  <39.835411, 33.379734, 23.377089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445972, 33.468727, 23.397551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170107, 0.557560, 0.812521,
		0.152253, 0.799766, -0.580683,
		-0.973592, 0.222487, 0.051156,
		39.153896, 33.535473, 23.412897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854240, 33.956867, 23.674431>,  <39.835411, 33.379734, 23.377089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854240, 33.956867, 23.674431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466209, 33.868763, 23.715300>,  <39.233391, 33.815899, 23.739820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466209, 33.868763, 23.715300>,  <39.854240, 33.956867, 23.674431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466209, 33.868763, 23.715300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075924, 0.674873, 0.734018,
		-0.230626, 0.704296, -0.671401,
		-0.970076, -0.220260, 0.102170,
		39.175186, 33.802685, 23.745951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476139, 34.582798, 23.843109>,  <39.854240, 33.956867, 23.674431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476139, 34.582798, 23.843109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.233162, 34.288193, 23.962152>,  <39.087376, 34.111431, 24.033579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.233162, 34.288193, 23.962152>,  <39.476139, 34.582798, 23.843109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233162, 34.288193, 23.962152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170476, 0.486788, 0.856724,
		-0.775858, 0.469672, -0.421251,
		-0.607439, -0.736509, 0.297610,
		39.050930, 34.067242, 24.051435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783764, 34.883202, 24.053223>,  <39.476139, 34.582798, 23.843109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783764, 34.883202, 24.053223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838997, 34.535027, 24.242231>,  <38.872135, 34.326122, 24.355637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838997, 34.535027, 24.242231>,  <38.783764, 34.883202, 24.053223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838997, 34.535027, 24.242231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307315, 0.415889, 0.855917,
		-0.941537, -0.263398, -0.210072,
		0.138080, -0.870435, 0.472521,
		38.880421, 34.273895, 24.383987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233395, 34.887264, 24.446218>,  <38.783764, 34.883202, 24.053223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233395, 34.887264, 24.446218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.464401, 34.598728, 24.599129>,  <38.603004, 34.425606, 24.690874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.464401, 34.598728, 24.599129>,  <38.233395, 34.887264, 24.446218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464401, 34.598728, 24.599129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297239, 0.250323, 0.921405,
		-0.760343, -0.645755, -0.069846,
		0.577518, -0.721345, 0.382275,
		38.637657, 34.382324, 24.713812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845348, 34.638615, 24.887726>,  <38.233395, 34.887264, 24.446218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845348, 34.638615, 24.887726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203236, 34.519886, 25.021217>,  <38.417969, 34.448650, 25.101313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203236, 34.519886, 25.021217>,  <37.845348, 34.638615, 24.887726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203236, 34.519886, 25.021217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305328, 0.138847, 0.942070,
		-0.325962, -0.944785, 0.033602,
		0.894720, -0.296820, 0.333728,
		38.471653, 34.430840, 25.121336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736549, 34.261608, 25.443823>,  <37.845348, 34.638615, 24.887726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736549, 34.261608, 25.443823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125664, 34.348751, 25.475372>,  <38.359135, 34.401039, 25.494303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125664, 34.348751, 25.475372>,  <37.736549, 34.261608, 25.443823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125664, 34.348751, 25.475372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102409, 0.098931, 0.989811,
		0.207840, -0.970952, 0.118550,
		0.972787, 0.217863, 0.078872,
		38.417500, 34.414108, 25.499035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018486, 33.786270, 25.918209>,  <37.736549, 34.261608, 25.443823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018486, 33.786270, 25.918209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.247280, 34.113689, 25.897011>,  <38.384556, 34.310143, 25.884293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.247280, 34.113689, 25.897011>,  <38.018486, 33.786270, 25.918209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247280, 34.113689, 25.897011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011461, 0.056624, 0.998330,
		0.820184, -0.571637, 0.023006,
		0.571985, 0.818551, -0.052993,
		38.418877, 34.359253, 25.881113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498325, 33.656033, 26.362188>,  <38.018486, 33.786270, 25.918209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498325, 33.656033, 26.362188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545742, 34.049625, 26.308935>,  <38.574192, 34.285782, 26.276983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545742, 34.049625, 26.308935>,  <38.498325, 33.656033, 26.362188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545742, 34.049625, 26.308935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181782, 0.110307, 0.977132,
		0.976167, -0.140034, -0.165794,
		0.118544, 0.983983, -0.133134,
		38.581306, 34.344822, 26.268995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061703, 33.832294, 26.619930>,  <38.498325, 33.656033, 26.362188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061703, 33.832294, 26.619930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853882, 34.173977, 26.627848>,  <38.729187, 34.378986, 26.632597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853882, 34.173977, 26.627848>,  <39.061703, 33.832294, 26.619930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853882, 34.173977, 26.627848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299425, 0.160327, 0.940553,
		0.800254, 0.494596, -0.339070,
		-0.519556, 0.854207, 0.019793,
		38.698013, 34.430241, 26.633785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.918758, 35.570305, 21.261436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.529186, 35.482178, 21.239792>,  <42.295444, 35.429302, 21.226805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.529186, 35.482178, 21.239792>,  <42.918758, 35.570305, 21.261436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529186, 35.482178, 21.239792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100152, -0.203525, -0.973934,
		0.203562, -0.953959, 0.220283,
		-0.973926, -0.220317, -0.054111,
		42.237007, 35.416084, 21.223558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898991, 34.950684, 20.881815>,  <42.918758, 35.570305, 21.261436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898991, 34.950684, 20.881815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.534184, 35.108379, 20.836575>,  <42.315300, 35.202995, 20.809431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.534184, 35.108379, 20.836575>,  <42.898991, 34.950684, 20.881815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534184, 35.108379, 20.836575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009133, -0.256173, -0.966588,
		-0.410040, -0.882582, 0.230035,
		-0.912022, 0.394238, -0.113102,
		42.260578, 35.226650, 20.802645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547806, 34.420742, 20.639275>,  <42.898991, 34.950684, 20.881815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547806, 34.420742, 20.639275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.336815, 34.742905, 20.531134>,  <42.210220, 34.936203, 20.466249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.336815, 34.742905, 20.531134>,  <42.547806, 34.420742, 20.639275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336815, 34.742905, 20.531134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030215, -0.335805, -0.941446,
		-0.849032, -0.488422, 0.201465,
		-0.527477, 0.805405, -0.270352,
		42.178574, 34.984528, 20.450027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149895, 34.148869, 20.105825>,  <42.547806, 34.420742, 20.639275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149895, 34.148869, 20.105825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.095371, 34.542686, 20.061825>,  <42.062656, 34.778976, 20.035425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.095371, 34.542686, 20.061825>,  <42.149895, 34.148869, 20.105825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095371, 34.542686, 20.061825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003045, -0.110622, -0.993858,
		-0.990662, -0.135804, 0.012081,
		-0.136306, 0.984540, -0.110002,
		42.054478, 34.838047, 20.028824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494156, 34.154148, 19.737200>,  <42.149895, 34.148869, 20.105825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494156, 34.154148, 19.737200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.696697, 34.493103, 19.673269>,  <41.818222, 34.696476, 19.634911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.696697, 34.493103, 19.673269>,  <41.494156, 34.154148, 19.737200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696697, 34.493103, 19.673269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036964, -0.163845, -0.985793,
		-0.861534, 0.505067, -0.051641,
		0.506353, 0.847385, -0.159827,
		41.848602, 34.747318, 19.625320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999691, 34.586784, 19.386475>,  <41.494156, 34.154148, 19.737200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999691, 34.586784, 19.386475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.369923, 34.715755, 19.307138>,  <41.592064, 34.793137, 19.259537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.369923, 34.715755, 19.307138>,  <40.999691, 34.586784, 19.386475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369923, 34.715755, 19.307138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157267, -0.149069, -0.976241,
		-0.344333, 0.934783, -0.087269,
		0.925582, 0.322428, -0.198340,
		41.647598, 34.812485, 19.247637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883362, 35.025051, 18.978567>,  <40.999691, 34.586784, 19.386475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883362, 35.025051, 18.978567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260826, 34.912571, 18.908798>,  <41.487305, 34.845081, 18.866938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260826, 34.912571, 18.908798>,  <40.883362, 35.025051, 18.978567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260826, 34.912571, 18.908798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164505, 0.058687, -0.984629,
		0.287115, 0.957853, 0.009122,
		0.943664, -0.281202, -0.174422,
		41.543926, 34.828209, 18.856472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096352, 35.409405, 18.328724>,  <40.883362, 35.025051, 18.978567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096352, 35.409405, 18.328724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.410107, 35.164375, 18.367693>,  <41.598358, 35.017357, 18.391075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.410107, 35.164375, 18.367693>,  <41.096352, 35.409405, 18.328724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410107, 35.164375, 18.367693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069256, -0.242576, -0.967657,
		0.616397, 0.752268, -0.232697,
		0.784384, -0.612577, 0.097424,
		41.645420, 34.980602, 18.396921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421730, 35.463848, 17.710938>,  <41.096352, 35.409405, 18.328724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421730, 35.463848, 17.710938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.540623, 35.113747, 17.863564>,  <41.611958, 34.903687, 17.955139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.540623, 35.113747, 17.863564>,  <41.421730, 35.463848, 17.710938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540623, 35.113747, 17.863564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019886, -0.393865, -0.918953,
		0.954598, 0.280729, -0.099664,
		0.297231, -0.875250, 0.381565,
		41.629791, 34.851173, 17.978033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090973, 35.272518, 17.383247>,  <41.421730, 35.463848, 17.710938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090973, 35.272518, 17.383247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.915150, 34.940018, 17.519373>,  <41.809658, 34.740517, 17.601048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.915150, 34.940018, 17.519373>,  <42.090973, 35.272518, 17.383247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915150, 34.940018, 17.519373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102348, -0.422759, -0.900444,
		0.892366, -0.360964, 0.270903,
		-0.439555, -0.831252, 0.340312,
		41.783283, 34.690643, 17.621466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387245, 34.677601, 17.050955>,  <42.090973, 35.272518, 17.383247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387245, 34.677601, 17.050955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.047825, 34.518822, 17.190893>,  <41.844173, 34.423553, 17.274857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.047825, 34.518822, 17.190893>,  <42.387245, 34.677601, 17.050955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047825, 34.518822, 17.190893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084255, -0.551386, -0.829984,
		0.522364, -0.733760, 0.434434,
		-0.848550, -0.396950, 0.349847,
		41.793259, 34.399738, 17.295847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412766, 34.009174, 16.930384>,  <42.387245, 34.677601, 17.050955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412766, 34.009174, 16.930384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.033440, 34.135513, 16.942619>,  <41.805843, 34.211315, 16.949961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.033440, 34.135513, 16.942619>,  <42.412766, 34.009174, 16.930384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033440, 34.135513, 16.942619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206047, -0.539589, -0.816326,
		-0.241325, -0.780440, 0.576780,
		-0.948318, 0.315843, 0.030591,
		41.748943, 34.230267, 16.951796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032612, 33.389263, 16.742668>,  <42.412766, 34.009174, 16.930384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032612, 33.389263, 16.742668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.809338, 33.713947, 16.673906>,  <41.675373, 33.908756, 16.632648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.809338, 33.713947, 16.673906>,  <42.032612, 33.389263, 16.742668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809338, 33.713947, 16.673906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178043, -0.319537, -0.930697,
		-0.810387, -0.488897, 0.322881,
		-0.558188, 0.811711, -0.171905,
		41.641880, 33.957462, 16.622335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573139, 32.778519, 16.811363>,  <42.032612, 33.389263, 16.742668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573139, 32.778519, 16.811363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.268623, 32.606434, 16.617311>,  <41.085915, 32.503181, 16.500881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.268623, 32.606434, 16.617311>,  <41.573139, 32.778519, 16.811363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268623, 32.606434, 16.617311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570619, 0.089189, 0.816357,
		-0.307941, 0.898310, -0.313388,
		-0.761293, -0.430215, -0.485128,
		41.040237, 32.477371, 16.471773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970860, 33.185707, 16.763243>,  <41.573139, 32.778519, 16.811363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970860, 33.185707, 16.763243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.879421, 32.796303, 16.765057>,  <40.824558, 32.562660, 16.766146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.879421, 32.796303, 16.765057>,  <40.970860, 33.185707, 16.763243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879421, 32.796303, 16.765057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439775, 0.107418, 0.891661,
		-0.868529, 0.201834, -0.452681,
		-0.228594, -0.973511, 0.004534,
		40.810844, 32.504250, 16.766417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293003, 33.165535, 16.900028>,  <40.970860, 33.185707, 16.763243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293003, 33.165535, 16.900028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443470, 32.813393, 17.015593>,  <40.533749, 32.602108, 17.084930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443470, 32.813393, 17.015593>,  <40.293003, 33.165535, 16.900028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443470, 32.813393, 17.015593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338875, 0.159489, 0.927215,
		-0.862358, -0.446692, -0.238336,
		0.376167, -0.880357, 0.288909,
		40.556320, 32.549286, 17.102266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803375, 32.792931, 17.141600>,  <40.293003, 33.165535, 16.900028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803375, 32.792931, 17.141600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102871, 32.569378, 17.284168>,  <40.282570, 32.435246, 17.369709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102871, 32.569378, 17.284168>,  <39.803375, 32.792931, 17.141600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102871, 32.569378, 17.284168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417648, 0.019790, 0.908393,
		-0.514741, -0.829009, -0.218600,
		0.748740, -0.558885, 0.356421,
		40.327492, 32.401711, 17.391094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463978, 32.188446, 17.667521>,  <39.803375, 32.792931, 17.141600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463978, 32.188446, 17.667521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.845299, 32.254826, 17.768463>,  <40.074089, 32.294651, 17.829029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.845299, 32.254826, 17.768463>,  <39.463978, 32.188446, 17.667521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845299, 32.254826, 17.768463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241421, -0.083398, 0.966830,
		0.181489, -0.982602, -0.039440,
		0.953298, 0.165948, 0.252356,
		40.131287, 32.304611, 17.844170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580822, 31.713476, 18.177225>,  <39.463978, 32.188446, 17.667521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580822, 31.713476, 18.177225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.877892, 31.976696, 18.226870>,  <40.056133, 32.134628, 18.256657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.877892, 31.976696, 18.226870>,  <39.580822, 31.713476, 18.177225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877892, 31.976696, 18.226870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091410, -0.083983, 0.992266,
		0.663384, -0.748276, -0.002220,
		0.742675, 0.658051, 0.124113,
		40.100693, 32.174110, 18.264103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074223, 31.311569, 18.579897>,  <39.580822, 31.713476, 18.177225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074223, 31.311569, 18.579897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.165089, 31.699511, 18.615171>,  <40.219608, 31.932276, 18.636335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.165089, 31.699511, 18.615171>,  <40.074223, 31.311569, 18.579897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165089, 31.699511, 18.615171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114452, -0.063338, 0.991408,
		0.967107, -0.235310, 0.096613,
		0.227169, 0.969854, 0.088186,
		40.233238, 31.990467, 18.641626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671528, 31.349642, 19.043818>,  <40.074223, 31.311569, 18.579897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671528, 31.349642, 19.043818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491848, 31.706970, 19.049505>,  <40.384041, 31.921368, 19.052917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491848, 31.706970, 19.049505>,  <40.671528, 31.349642, 19.043818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491848, 31.706970, 19.049505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000394, -0.016112, 0.999870,
		0.893432, 0.449134, 0.007589,
		-0.449198, 0.893319, 0.014218,
		40.357090, 31.974966, 19.053770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928474, 31.688969, 19.666288>,  <40.671528, 31.349642, 19.043818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928474, 31.688969, 19.666288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.626278, 31.935556, 19.577560>,  <40.444962, 32.083508, 19.524323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.626278, 31.935556, 19.577560>,  <40.928474, 31.688969, 19.666288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626278, 31.935556, 19.577560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156379, 0.159113, 0.974797,
		0.636228, 0.771134, -0.023805,
		-0.755487, 0.616470, -0.221821,
		40.399632, 32.120499, 19.511015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975002, 32.275967, 20.118504>,  <40.928474, 31.688969, 19.666288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975002, 32.275967, 20.118504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.593510, 32.293369, 19.999510>,  <40.364613, 32.303810, 19.928114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.593510, 32.293369, 19.999510>,  <40.975002, 32.275967, 20.118504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593510, 32.293369, 19.999510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272643, 0.291867, 0.916777,
		0.126709, 0.955469, -0.266502,
		-0.953735, 0.043504, -0.297484,
		40.307388, 32.306419, 19.910265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686031, 32.961578, 20.325344>,  <40.975002, 32.275967, 20.118504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686031, 32.961578, 20.325344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.355244, 32.743572, 20.270100>,  <40.156769, 32.612766, 20.236954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.355244, 32.743572, 20.270100>,  <40.686031, 32.961578, 20.325344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355244, 32.743572, 20.270100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458327, 0.511192, 0.727062,
		-0.325662, 0.664559, -0.672537,
		-0.826971, -0.545018, -0.138109,
		40.107151, 32.580067, 20.228666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123688, 33.417881, 20.278294>,  <40.686031, 32.961578, 20.325344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123688, 33.417881, 20.278294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.949257, 33.074566, 20.386501>,  <39.844601, 32.868576, 20.451426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.949257, 33.074566, 20.386501>,  <40.123688, 33.417881, 20.278294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949257, 33.074566, 20.386501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552565, 0.492641, 0.672292,
		-0.710291, 0.143688, -0.689087,
		-0.436073, -0.858288, 0.270521,
		39.818436, 32.817078, 20.467657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386017, 33.589882, 20.361109>,  <40.123688, 33.417881, 20.278294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386017, 33.589882, 20.361109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465408, 33.254593, 20.564281>,  <39.513042, 33.053421, 20.686186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465408, 33.254593, 20.564281>,  <39.386017, 33.589882, 20.361109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465408, 33.254593, 20.564281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535016, 0.341557, 0.772720,
		-0.821196, -0.425121, -0.380669,
		0.198480, -0.838219, 0.507932,
		39.524952, 33.003128, 20.716661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654453, 33.420261, 20.547518>,  <39.386017, 33.589882, 20.361109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654453, 33.420261, 20.547518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.894253, 33.204399, 20.783949>,  <39.038132, 33.074883, 20.925808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.894253, 33.204399, 20.783949>,  <38.654453, 33.420261, 20.547518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894253, 33.204399, 20.783949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492504, 0.333400, 0.803918,
		-0.630906, -0.773054, -0.065911,
		0.599497, -0.539658, 0.591077,
		39.074100, 33.042503, 20.961271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211578, 33.135021, 21.099510>,  <38.654453, 33.420261, 20.547518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211578, 33.135021, 21.099510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581928, 33.098782, 21.246237>,  <38.804138, 33.077038, 21.334272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581928, 33.098782, 21.246237>,  <38.211578, 33.135021, 21.099510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581928, 33.098782, 21.246237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339345, 0.227548, 0.912725,
		-0.166160, -0.969543, 0.179935,
		0.925870, -0.090599, 0.366819,
		38.859688, 33.071602, 21.356283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032776, 32.425880, 21.225960>,  <38.211578, 33.135021, 21.099510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032776, 32.425880, 21.225960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.664711, 32.405167, 21.070721>,  <37.443871, 32.392738, 20.977577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.664711, 32.405167, 21.070721>,  <38.032776, 32.425880, 21.225960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664711, 32.405167, 21.070721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389028, -0.008910, -0.921183,
		0.044250, -0.998618, 0.028347,
		-0.920163, -0.051790, -0.388096,
		37.388660, 32.389629, 20.954292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129372, 32.054333, 20.660793>,  <38.032776, 32.425880, 21.225960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129372, 32.054333, 20.660793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771198, 32.222790, 20.603062>,  <37.556293, 32.323864, 20.568422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771198, 32.222790, 20.603062>,  <38.129372, 32.054333, 20.660793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771198, 32.222790, 20.603062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214042, 0.123001, -0.969049,
		-0.390355, -0.898615, -0.200282,
		-0.895438, 0.421142, -0.144327,
		37.502567, 32.349133, 20.559763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794384, 31.659065, 20.166765>,  <38.129372, 32.054333, 20.660793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794384, 31.659065, 20.166765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607162, 32.011921, 20.145781>,  <37.494827, 32.223633, 20.133190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.607162, 32.011921, 20.145781>,  <37.794384, 31.659065, 20.166765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607162, 32.011921, 20.145781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280870, 0.092216, -0.955305,
		-0.837875, -0.461871, -0.290929,
		-0.468057, 0.882140, -0.052460,
		37.466747, 32.276562, 20.130043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352200, 31.703110, 19.504669>,  <37.794384, 31.659065, 20.166765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352200, 31.703110, 19.504669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385571, 32.089893, 19.601027>,  <37.405594, 32.321964, 19.658840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385571, 32.089893, 19.601027>,  <37.352200, 31.703110, 19.504669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385571, 32.089893, 19.601027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000702, 0.241678, -0.970356,
		-0.996513, 0.081124, 0.019484,
		0.083429, 0.966959, 0.240892,
		37.410599, 32.379982, 19.673294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821804, 32.046989, 19.143499>,  <37.352200, 31.703110, 19.504669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821804, 32.046989, 19.143499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.109200, 32.308311, 19.238974>,  <37.281635, 32.465103, 19.296259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.109200, 32.308311, 19.238974>,  <36.821804, 32.046989, 19.143499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109200, 32.308311, 19.238974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014575, 0.357233, -0.933902,
		-0.695386, 0.667519, 0.266190,
		0.718489, 0.653302, 0.238685,
		37.324745, 32.504303, 19.310579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582355, 32.741222, 18.895779>,  <36.821804, 32.046989, 19.143499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582355, 32.741222, 18.895779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979176, 32.748520, 18.945591>,  <37.217266, 32.752899, 18.975477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979176, 32.748520, 18.945591>,  <36.582355, 32.741222, 18.895779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979176, 32.748520, 18.945591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108627, 0.375640, -0.920377,
		-0.063566, 0.926586, 0.370671,
		0.992048, 0.018240, 0.124530,
		37.276791, 32.753990, 18.982950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735237, 33.314415, 18.529518>,  <36.582355, 32.741222, 18.895779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735237, 33.314415, 18.529518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.086117, 33.124638, 18.559004>,  <37.296642, 33.010773, 18.576694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.086117, 33.124638, 18.559004>,  <36.735237, 33.314415, 18.529518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086117, 33.124638, 18.559004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215586, 0.252026, -0.943401,
		0.429010, 0.843439, 0.323359,
		0.877196, -0.474440, 0.073712,
		37.349277, 32.982307, 18.581118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754814, 33.947636, 18.842070>,  <36.735237, 33.314415, 18.529518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754814, 33.947636, 18.842070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568054, 34.292061, 18.761501>,  <36.455997, 34.498718, 18.713161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568054, 34.292061, 18.761501>,  <36.754814, 33.947636, 18.842070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568054, 34.292061, 18.761501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414710, -0.012032, 0.909874,
		0.781039, 0.508348, 0.362711,
		-0.466897, 0.861067, -0.201420,
		36.427986, 34.550381, 18.701075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874187, 34.340454, 19.343222>,  <36.754814, 33.947636, 18.842070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874187, 34.340454, 19.343222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533428, 34.483910, 19.190567>,  <36.328972, 34.569984, 19.098974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.533428, 34.483910, 19.190567>,  <36.874187, 34.340454, 19.343222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533428, 34.483910, 19.190567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415600, -0.019554, 0.909337,
		0.318663, 0.933271, 0.165709,
		-0.851898, 0.358641, -0.381636,
		36.277859, 34.591503, 19.076077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665985, 34.873833, 19.857840>,  <36.874187, 34.340454, 19.343222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665985, 34.873833, 19.857840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353096, 34.771297, 19.630714>,  <36.165363, 34.709778, 19.494440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.353096, 34.771297, 19.630714>,  <36.665985, 34.873833, 19.857840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353096, 34.771297, 19.630714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546618, -0.154857, 0.822939,
		-0.298881, 0.954102, -0.018986,
		-0.782227, -0.256339, -0.567813,
		36.118427, 34.694397, 19.460371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109577, 35.282597, 20.072762>,  <36.665985, 34.873833, 19.857840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109577, 35.282597, 20.072762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948383, 34.980015, 19.866701>,  <35.851665, 34.798466, 19.743065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948383, 34.980015, 19.866701>,  <36.109577, 35.282597, 20.072762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948383, 34.980015, 19.866701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602483, -0.204442, 0.771504,
		-0.688926, 0.621274, -0.373363,
		-0.402984, -0.756454, -0.515152,
		35.827488, 34.753078, 19.712156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517578, 35.286610, 20.306105>,  <36.109577, 35.282597, 20.072762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517578, 35.286610, 20.306105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.508102, 34.927422, 20.130339>,  <35.502415, 34.711906, 20.024879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.508102, 34.927422, 20.130339>,  <35.517578, 35.286610, 20.306105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508102, 34.927422, 20.130339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613822, -0.333865, 0.715372,
		-0.789089, 0.286671, -0.543285,
		-0.023692, -0.897972, -0.439414,
		35.500996, 34.658031, 19.998514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777077, 35.112022, 20.281303>,  <35.517578, 35.286610, 20.306105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777077, 35.112022, 20.281303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996658, 34.777740, 20.275049>,  <35.128407, 34.577171, 20.271296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996658, 34.777740, 20.275049>,  <34.777077, 35.112022, 20.281303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996658, 34.777740, 20.275049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585042, -0.397522, 0.706897,
		-0.596977, -0.378901, -0.707144,
		0.548949, -0.835709, -0.015638,
		35.161343, 34.527027, 20.270357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195023, 34.622864, 20.508764>,  <34.777077, 35.112022, 20.281303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195023, 34.622864, 20.508764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555798, 34.454727, 20.548428>,  <34.772263, 34.353848, 20.572226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555798, 34.454727, 20.548428>,  <34.195023, 34.622864, 20.508764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555798, 34.454727, 20.548428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298550, -0.440935, 0.846430,
		-0.312062, -0.793028, -0.523186,
		0.901934, -0.420336, 0.099159,
		34.826378, 34.328625, 20.578175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.395710, 36.471832, 16.294378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.500381, 36.186131, 16.554028>,  <39.563183, 36.014709, 16.709818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.500381, 36.186131, 16.554028>,  <39.395710, 36.471832, 16.294378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500381, 36.186131, 16.554028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027894, 0.677873, 0.734649,
		-0.964753, -0.174134, 0.197307,
		0.261676, -0.714258, 0.649123,
		39.578884, 35.971851, 16.748764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897606, 36.358665, 16.882883>,  <39.395710, 36.471832, 16.294378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897606, 36.358665, 16.882883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.264347, 36.251747, 17.001499>,  <39.484390, 36.187595, 17.072670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.264347, 36.251747, 17.001499>,  <38.897606, 36.358665, 16.882883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264347, 36.251747, 17.001499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112205, 0.540318, 0.833946,
		-0.383137, -0.797878, 0.465399,
		0.916851, -0.267295, 0.296541,
		39.539402, 36.171558, 17.090462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851223, 36.337902, 17.575506>,  <38.897606, 36.358665, 16.882883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851223, 36.337902, 17.575506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.250397, 36.339703, 17.549879>,  <39.489902, 36.340782, 17.534502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.250397, 36.339703, 17.549879>,  <38.851223, 36.337902, 17.575506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250397, 36.339703, 17.549879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051110, 0.548472, 0.834605,
		0.038896, -0.836157, 0.547110,
		0.997935, 0.004500, -0.064069,
		39.549778, 36.341053, 17.530659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079910, 36.045895, 18.150366>,  <38.851223, 36.337902, 17.575506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079910, 36.045895, 18.150366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.382641, 36.262165, 18.003460>,  <39.564278, 36.391926, 17.915318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.382641, 36.262165, 18.003460>,  <39.079910, 36.045895, 18.150366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382641, 36.262165, 18.003460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160019, 0.391523, 0.906148,
		0.633725, -0.744566, 0.209797,
		0.756827, 0.540676, -0.367263,
		39.609688, 36.424370, 17.893282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697113, 35.946873, 18.665924>,  <39.079910, 36.045895, 18.150366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697113, 35.946873, 18.665924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.761703, 36.274448, 18.445650>,  <39.800457, 36.470993, 18.313486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.761703, 36.274448, 18.445650>,  <39.697113, 35.946873, 18.665924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761703, 36.274448, 18.445650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119731, 0.537630, 0.834637,
		0.979586, -0.200710, -0.011238,
		0.161478, 0.818944, -0.550686,
		39.810146, 36.520130, 18.280445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260471, 36.153515, 18.973839>,  <39.697113, 35.946873, 18.665924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260471, 36.153515, 18.973839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.078751, 36.461807, 18.795137>,  <39.969719, 36.646782, 18.687916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.078751, 36.461807, 18.795137>,  <40.260471, 36.153515, 18.973839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078751, 36.461807, 18.795137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125759, 0.551956, 0.824335,
		0.881927, 0.318314, -0.347681,
		-0.454302, 0.770727, -0.446754,
		39.942459, 36.693024, 18.661112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730240, 36.724083, 19.145203>,  <40.260471, 36.153515, 18.973839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730240, 36.724083, 19.145203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.384918, 36.897274, 19.041475>,  <40.177727, 37.001186, 18.979239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.384918, 36.897274, 19.041475>,  <40.730240, 36.724083, 19.145203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384918, 36.897274, 19.041475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034395, 0.462145, 0.886137,
		0.503518, 0.773921, -0.384078,
		-0.863300, 0.432975, -0.259318,
		40.125927, 37.027168, 18.963680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804749, 37.450634, 19.299095>,  <40.730240, 36.724083, 19.145203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804749, 37.450634, 19.299095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408398, 37.403992, 19.272039>,  <40.170589, 37.376007, 19.255806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408398, 37.403992, 19.272039>,  <40.804749, 37.450634, 19.299095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408398, 37.403992, 19.272039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127228, 0.643126, 0.755118,
		-0.044549, 0.756831, -0.652091,
		-0.990873, -0.116604, -0.067640,
		40.111137, 37.369011, 19.251747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490864, 38.169525, 19.418673>,  <40.804749, 37.450634, 19.299095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490864, 38.169525, 19.418673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.203896, 37.900841, 19.492548>,  <40.031715, 37.739632, 19.536873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.203896, 37.900841, 19.492548>,  <40.490864, 38.169525, 19.418673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203896, 37.900841, 19.492548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353076, 0.579139, 0.734803,
		-0.600535, 0.461955, -0.652652,
		-0.717423, -0.671711, 0.184688,
		39.988670, 37.699329, 19.547955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828201, 38.586903, 19.509674>,  <40.490864, 38.169525, 19.418673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828201, 38.586903, 19.509674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.756882, 38.225231, 19.664942>,  <39.714092, 38.008228, 19.758102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.756882, 38.225231, 19.664942>,  <39.828201, 38.586903, 19.509674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756882, 38.225231, 19.664942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514533, 0.421930, 0.746479,
		-0.838729, -0.066633, -0.540456,
		-0.178294, -0.904177, 0.388170,
		39.703392, 37.953979, 19.781393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061489, 38.548000, 19.748110>,  <39.828201, 38.586903, 19.509674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061489, 38.548000, 19.748110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.260895, 38.277637, 19.965231>,  <39.380539, 38.115417, 20.095503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.260895, 38.277637, 19.965231>,  <39.061489, 38.548000, 19.748110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260895, 38.277637, 19.965231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471478, 0.314046, 0.824065,
		-0.727458, -0.666724, -0.162121,
		0.498511, -0.675910, 0.542801,
		39.410450, 38.074863, 20.128071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560047, 38.142735, 20.158289>,  <39.061489, 38.548000, 19.748110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560047, 38.142735, 20.158289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.920452, 38.127594, 20.331142>,  <39.136696, 38.118511, 20.434855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.920452, 38.127594, 20.331142>,  <38.560047, 38.142735, 20.158289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920452, 38.127594, 20.331142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366782, 0.465410, 0.805521,
		-0.231609, -0.884285, 0.405458,
		0.901015, -0.037852, 0.432133,
		39.190758, 38.116238, 20.460783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945015, 37.683647, 20.178074>,  <38.560047, 38.142735, 20.158289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945015, 37.683647, 20.178074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555695, 37.718578, 20.093168>,  <37.322102, 37.739536, 20.042225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555695, 37.718578, 20.093168>,  <37.945015, 37.683647, 20.178074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555695, 37.718578, 20.093168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191370, -0.201841, -0.960540,
		-0.126726, -0.975517, 0.179741,
		-0.973303, 0.087328, -0.212263,
		37.263702, 37.744778, 20.029490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745964, 37.192417, 19.708578>,  <37.945015, 37.683647, 20.178074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745964, 37.192417, 19.708578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.450134, 37.457058, 19.659075>,  <37.272636, 37.615841, 19.629374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.450134, 37.457058, 19.659075>,  <37.745964, 37.192417, 19.708578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450134, 37.457058, 19.659075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191918, 0.031049, -0.980920,
		-0.645133, -0.749215, -0.149936,
		-0.739575, 0.661599, -0.123757,
		37.228260, 37.655537, 19.621948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388264, 36.846043, 19.206253>,  <37.745964, 37.192417, 19.708578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388264, 36.846043, 19.206253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.286728, 37.232918, 19.202028>,  <37.225807, 37.465042, 19.199493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.286728, 37.232918, 19.202028>,  <37.388264, 36.846043, 19.206253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286728, 37.232918, 19.202028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100580, -0.037257, -0.994231,
		-0.962002, -0.251317, 0.106737,
		-0.253844, 0.967188, -0.010564,
		37.210575, 37.523075, 19.198858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772961, 36.855492, 18.783739>,  <37.388264, 36.846043, 19.206253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772961, 36.855492, 18.783739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913120, 37.229298, 18.808720>,  <36.997215, 37.453583, 18.823708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913120, 37.229298, 18.808720>,  <36.772961, 36.855492, 18.783739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913120, 37.229298, 18.808720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081049, 0.096685, -0.992010,
		-0.933087, 0.342539, 0.109620,
		0.350401, 0.934515, 0.062453,
		37.018242, 37.509651, 18.827456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509659, 37.205956, 18.156839>,  <36.772961, 36.855492, 18.783739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509659, 37.205956, 18.156839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771179, 37.476719, 18.292097>,  <36.928093, 37.639175, 18.373251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771179, 37.476719, 18.292097>,  <36.509659, 37.205956, 18.156839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771179, 37.476719, 18.292097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280890, 0.197831, -0.939129,
		-0.702597, 0.708986, -0.060794,
		0.653803, 0.676906, 0.338143,
		36.967319, 37.679790, 18.393539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461487, 37.771145, 17.734512>,  <36.509659, 37.205956, 18.156839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461487, 37.771145, 17.734512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.825035, 37.812305, 17.896191>,  <37.043163, 37.837002, 17.993196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.825035, 37.812305, 17.896191>,  <36.461487, 37.771145, 17.734512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825035, 37.812305, 17.896191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343486, 0.365062, -0.865302,
		-0.236601, 0.925278, 0.296445,
		0.908866, 0.102906, 0.404194,
		37.097694, 37.843178, 18.017448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756443, 38.496132, 17.563393>,  <36.461487, 37.771145, 17.734512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756443, 38.496132, 17.563393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.063969, 38.249577, 17.631498>,  <37.248486, 38.101643, 17.672361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.063969, 38.249577, 17.631498>,  <36.756443, 38.496132, 17.563393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063969, 38.249577, 17.631498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395833, 0.249602, -0.883751,
		0.502233, 0.746838, 0.435884,
		0.768816, -0.616386, 0.170264,
		37.294613, 38.064659, 17.682577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358761, 38.865459, 17.255747>,  <36.756443, 38.496132, 17.563393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358761, 38.865459, 17.255747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.472923, 38.486115, 17.311096>,  <37.541420, 38.258507, 17.344307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.472923, 38.486115, 17.311096>,  <37.358761, 38.865459, 17.255747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472923, 38.486115, 17.311096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370136, -0.024109, -0.928665,
		0.884048, 0.316267, 0.344142,
		0.285409, -0.948364, 0.138376,
		37.558544, 38.201607, 17.352610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009781, 38.746193, 16.918905>,  <37.358761, 38.865459, 17.255747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009781, 38.746193, 16.918905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.867218, 38.372524, 16.925760>,  <37.781681, 38.148323, 16.929874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.867218, 38.372524, 16.925760>,  <38.009781, 38.746193, 16.918905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867218, 38.372524, 16.925760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329066, -0.142670, -0.933467,
		0.874466, -0.327052, 0.358254,
		-0.356404, -0.934175, 0.017139,
		37.760296, 38.092274, 16.930902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502682, 38.295341, 16.618343>,  <38.009781, 38.746193, 16.918905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502682, 38.295341, 16.618343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.166336, 38.080189, 16.594229>,  <37.964531, 37.951096, 16.579760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.166336, 38.080189, 16.594229>,  <38.502682, 38.295341, 16.618343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166336, 38.080189, 16.594229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285848, -0.346731, -0.893347,
		0.459612, -0.768414, 0.445306,
		-0.840861, -0.537882, -0.060288,
		37.914078, 37.918823, 16.576141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646042, 37.535210, 16.404169>,  <38.502682, 38.295341, 16.618343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646042, 37.535210, 16.404169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.253571, 37.566399, 16.333515>,  <38.018085, 37.585114, 16.291122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.253571, 37.566399, 16.333515>,  <38.646042, 37.535210, 16.404169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253571, 37.566399, 16.333515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084544, -0.648966, -0.756106,
		-0.173586, -0.756812, 0.630162,
		-0.981183, 0.077973, -0.176635,
		37.959217, 37.589790, 16.280525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512360, 36.864231, 16.130178>,  <38.646042, 37.535210, 16.404169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512360, 36.864231, 16.130178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.197941, 37.078247, 16.006330>,  <38.009289, 37.206657, 15.932022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.197941, 37.078247, 16.006330>,  <38.512360, 36.864231, 16.130178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197941, 37.078247, 16.006330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066195, -0.425133, -0.902707,
		-0.614614, -0.730064, 0.298757,
		-0.786046, 0.535040, -0.309620,
		37.962128, 37.238758, 15.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223083, 36.491589, 15.642600>,  <38.512360, 36.864231, 16.130178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223083, 36.491589, 15.642600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.070385, 36.845833, 15.536801>,  <37.978767, 37.058380, 15.473322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.070385, 36.845833, 15.536801>,  <38.223083, 36.491589, 15.642600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070385, 36.845833, 15.536801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309203, -0.147312, -0.939517,
		-0.871013, -0.440440, -0.217599,
		-0.381746, 0.885614, -0.264496,
		37.955860, 37.111519, 15.457453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213638, 36.236294, 16.271177>,  <38.223083, 36.491589, 15.642600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213638, 36.236294, 16.271177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.918625, 36.016994, 16.113459>,  <37.741615, 35.885414, 16.018827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.918625, 36.016994, 16.113459>,  <38.213638, 36.236294, 16.271177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918625, 36.016994, 16.113459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324128, -0.224836, 0.918907,
		-0.592441, 0.805526, -0.011879,
		-0.737532, -0.548249, -0.394296,
		37.697365, 35.852520, 15.995170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512043, 36.549042, 16.493994>,  <38.213638, 36.236294, 16.271177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512043, 36.549042, 16.493994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447426, 36.172688, 16.374903>,  <37.408653, 35.946877, 16.303448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447426, 36.172688, 16.374903>,  <37.512043, 36.549042, 16.493994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447426, 36.172688, 16.374903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419198, -0.207694, 0.883819,
		-0.893407, 0.267585, -0.360864,
		-0.161548, -0.940884, -0.297726,
		37.398960, 35.890423, 16.285585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831600, 36.428085, 16.827974>,  <37.512043, 36.549042, 16.493994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831600, 36.428085, 16.827974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.925373, 36.052288, 16.728058>,  <36.981636, 35.826809, 16.668108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.925373, 36.052288, 16.728058>,  <36.831600, 36.428085, 16.827974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925373, 36.052288, 16.728058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286188, -0.312265, 0.905862,
		-0.929051, -0.140880, -0.342078,
		0.234436, -0.939491, -0.249792,
		36.995705, 35.770439, 16.653120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223492, 35.943489, 16.884275>,  <36.831600, 36.428085, 16.827974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223492, 35.943489, 16.884275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.559875, 35.732021, 16.930393>,  <36.761707, 35.605141, 16.958063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.559875, 35.732021, 16.930393>,  <36.223492, 35.943489, 16.884275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559875, 35.732021, 16.930393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435811, -0.535477, 0.723418,
		-0.320714, -0.658612, -0.680715,
		0.840959, -0.528674, 0.115295,
		36.812164, 35.573418, 16.964981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059315, 35.260773, 16.892452>,  <36.223492, 35.943489, 16.884275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059315, 35.260773, 16.892452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.431393, 35.196999, 17.024702>,  <36.654640, 35.158733, 17.104052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.431393, 35.196999, 17.024702>,  <36.059315, 35.260773, 16.892452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431393, 35.196999, 17.024702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364149, -0.514052, 0.776625,
		0.046136, -0.842811, -0.536228,
		0.930197, -0.159437, 0.330625,
		36.710453, 35.149166, 17.123890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007584, 34.650085, 17.120186>,  <36.059315, 35.260773, 16.892452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007584, 34.650085, 17.120186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.335430, 34.807945, 17.286314>,  <36.532139, 34.902660, 17.385990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.335430, 34.807945, 17.286314>,  <36.007584, 34.650085, 17.120186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335430, 34.807945, 17.286314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235730, -0.428414, 0.872292,
		0.522176, -0.812844, -0.258103,
		0.819611, 0.394648, 0.415319,
		36.581314, 34.926338, 17.410910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228535, 34.183659, 17.555710>,  <36.007584, 34.650085, 17.120186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228535, 34.183659, 17.555710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.407539, 34.502258, 17.718348>,  <36.514942, 34.693417, 17.815929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.407539, 34.502258, 17.718348>,  <36.228535, 34.183659, 17.555710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407539, 34.502258, 17.718348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291629, -0.299827, 0.908326,
		0.845389, -0.525064, 0.098106,
		0.447514, 0.796500, 0.406595,
		36.541794, 34.741207, 17.840326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524277, 33.918499, 18.111721>,  <36.228535, 34.183659, 17.555710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524277, 33.918499, 18.111721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.525520, 34.308640, 18.199980>,  <36.526264, 34.542725, 18.252935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.525520, 34.308640, 18.199980>,  <36.524277, 33.918499, 18.111721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525520, 34.308640, 18.199980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254860, -0.212589, 0.943320,
		0.966973, -0.059164, 0.247917,
		0.003106, 0.975349, 0.220646,
		36.526451, 34.601246, 18.266174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244198, 33.667740, 17.971895>,  <36.524277, 33.918499, 18.111721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244198, 33.667740, 17.971895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.458088, 33.343018, 18.065733>,  <37.586422, 33.148186, 18.122036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.458088, 33.343018, 18.065733>,  <37.244198, 33.667740, 17.971895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458088, 33.343018, 18.065733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328951, -0.055745, -0.942700,
		0.778368, 0.581259, 0.237237,
		0.534728, -0.811807, 0.234596,
		37.618507, 33.099476, 18.136112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901295, 33.781895, 17.698668>,  <37.244198, 33.667740, 17.971895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901295, 33.781895, 17.698668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872398, 33.385002, 17.739168>,  <37.855061, 33.146866, 17.763468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872398, 33.385002, 17.739168>,  <37.901295, 33.781895, 17.698668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872398, 33.385002, 17.739168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333675, -0.119711, -0.935057,
		0.939916, -0.033765, 0.339732,
		-0.072242, -0.992235, 0.101252,
		37.850727, 33.087334, 17.769543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473797, 33.552635, 17.470697>,  <37.901295, 33.781895, 17.698668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473797, 33.552635, 17.470697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.266548, 33.213657, 17.424421>,  <38.142200, 33.010269, 17.396656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.266548, 33.213657, 17.424421>,  <38.473797, 33.552635, 17.470697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266548, 33.213657, 17.424421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448694, -0.154154, -0.880290,
		0.728167, -0.508003, 0.460115,
		-0.518118, -0.847449, -0.115688,
		38.111115, 32.959423, 17.389715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905823, 32.993870, 17.266041>,  <38.473797, 33.552635, 17.470697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905823, 32.993870, 17.266041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555214, 32.847832, 17.140553>,  <38.344849, 32.760208, 17.065260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555214, 32.847832, 17.140553>,  <38.905823, 32.993870, 17.266041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555214, 32.847832, 17.140553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441689, -0.350895, -0.825702,
		0.191375, -0.862310, 0.468824,
		-0.876520, -0.365094, -0.313720,
		38.292259, 32.738304, 17.046436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919258, 32.314011, 17.152605>,  <38.905823, 32.993870, 17.266041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919258, 32.314011, 17.152605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607391, 32.405277, 16.919348>,  <38.420269, 32.460037, 16.779394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.607391, 32.405277, 16.919348>,  <38.919258, 32.314011, 17.152605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607391, 32.405277, 16.919348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484095, -0.371080, -0.792434,
		-0.397205, -0.900131, 0.178862,
		-0.779667, 0.228172, -0.583144,
		38.373489, 32.473728, 16.744406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879589, 31.848207, 16.672491>,  <38.919258, 32.314011, 17.152605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879589, 31.848207, 16.672491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.662590, 32.128006, 16.486414>,  <38.532391, 32.295883, 16.374767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.662590, 32.128006, 16.486414>,  <38.879589, 31.848207, 16.672491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662590, 32.128006, 16.486414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416573, -0.256874, -0.872056,
		-0.729495, -0.666874, -0.152037,
		-0.542498, 0.699496, -0.465190,
		38.499840, 32.337856, 16.346857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608334, 31.492970, 16.113392>,  <38.879589, 31.848207, 16.672491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608334, 31.492970, 16.113392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.596016, 31.883106, 16.025974>,  <38.588627, 32.117188, 15.973523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.596016, 31.883106, 16.025974>,  <38.608334, 31.492970, 16.113392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596016, 31.883106, 16.025974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365234, -0.192548, -0.910785,
		-0.930406, -0.107867, -0.350299,
		-0.030794, 0.975341, -0.218544,
		38.586777, 32.175709, 15.960411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466717, 31.508551, 15.351845>,  <38.608334, 31.492970, 16.113392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466717, 31.508551, 15.351845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578312, 31.875317, 15.465989>,  <38.645267, 32.095375, 15.534476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578312, 31.875317, 15.465989>,  <38.466717, 31.508551, 15.351845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578312, 31.875317, 15.465989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635893, 0.046280, -0.770389,
		-0.719589, 0.396387, -0.570149,
		0.278986, 0.916916, 0.285362,
		38.662006, 32.150391, 15.551598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509102, 31.818260, 14.695148>,  <38.466717, 31.508551, 15.351845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509102, 31.818260, 14.695148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.733738, 32.042545, 14.938532>,  <38.868519, 32.177116, 15.084562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.733738, 32.042545, 14.938532>,  <38.509102, 31.818260, 14.695148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733738, 32.042545, 14.938532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703448, 0.063626, -0.707893,
		-0.435638, 0.825563, -0.358700,
		0.561588, 0.560712, 0.608458,
		38.902214, 32.210758, 15.121069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.716469, 34.494064, 30.995337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099888, 34.607941, 30.990622>,  <35.329941, 34.676266, 30.987793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099888, 34.607941, 30.990622>,  <34.716469, 34.494064, 30.995337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099888, 34.607941, 30.990622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088613, -0.337162, -0.937267,
		-0.270808, 0.897369, -0.348413,
		0.958546, 0.284694, -0.011788,
		35.387451, 34.693348, 30.987085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788677, 34.903774, 30.295624>,  <34.716469, 34.494064, 30.995337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788677, 34.903774, 30.295624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144093, 34.781395, 30.432379>,  <35.357342, 34.707966, 30.514431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144093, 34.781395, 30.432379>,  <34.788677, 34.903774, 30.295624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144093, 34.781395, 30.432379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211157, -0.388862, -0.896771,
		0.407315, 0.869011, -0.280917,
		0.888542, -0.305950, 0.341888,
		35.410656, 34.689610, 30.534945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389324, 35.247028, 29.855354>,  <34.788677, 34.903774, 30.295624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389324, 35.247028, 29.855354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536007, 34.923359, 30.038992>,  <35.624016, 34.729156, 30.149174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536007, 34.923359, 30.038992>,  <35.389324, 35.247028, 29.855354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536007, 34.923359, 30.038992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337254, -0.344284, -0.876201,
		0.867055, 0.476142, 0.146644,
		0.366709, -0.809171, 0.459094,
		35.646019, 34.680607, 30.176720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931095, 35.250690, 29.493597>,  <35.389324, 35.247028, 29.855354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931095, 35.250690, 29.493597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872700, 34.886642, 29.648708>,  <35.837662, 34.668213, 29.741776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872700, 34.886642, 29.648708>,  <35.931095, 35.250690, 29.493597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872700, 34.886642, 29.648708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324293, -0.414344, -0.850384,
		0.934624, 0.001610, 0.355634,
		-0.145986, -0.910119, 0.387778,
		35.828903, 34.613605, 29.765041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547020, 34.826561, 29.270115>,  <35.931095, 35.250690, 29.493597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547020, 34.826561, 29.270115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267368, 34.559692, 29.372952>,  <36.099575, 34.399570, 29.434652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267368, 34.559692, 29.372952>,  <36.547020, 34.826561, 29.270115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267368, 34.559692, 29.372952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060026, -0.413069, -0.908719,
		0.712469, -0.619882, 0.328838,
		-0.699131, -0.667174, 0.257090,
		36.057629, 34.359539, 29.450079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749874, 34.229168, 28.938999>,  <36.547020, 34.826561, 29.270115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749874, 34.229168, 28.938999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365288, 34.151356, 29.016701>,  <36.134537, 34.104668, 29.063322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365288, 34.151356, 29.016701>,  <36.749874, 34.229168, 28.938999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365288, 34.151356, 29.016701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086430, -0.456886, -0.885316,
		0.260969, -0.867995, 0.422469,
		-0.961470, -0.194526, 0.194254,
		36.076847, 34.092999, 29.074976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800587, 33.681316, 28.649559>,  <36.749874, 34.229168, 28.938999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800587, 33.681316, 28.649559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413216, 33.778694, 28.671021>,  <36.180794, 33.837120, 28.683897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413216, 33.778694, 28.671021>,  <36.800587, 33.681316, 28.649559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413216, 33.778694, 28.671021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184039, -0.553019, -0.812588,
		-0.168150, -0.796809, 0.580363,
		-0.968429, 0.243446, 0.053653,
		36.122688, 33.851727, 28.687117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431915, 33.114494, 28.709450>,  <36.800587, 33.681316, 28.649559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431915, 33.114494, 28.709450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202019, 33.397808, 28.545494>,  <36.064079, 33.567795, 28.447121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202019, 33.397808, 28.545494>,  <36.431915, 33.114494, 28.709450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202019, 33.397808, 28.545494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301124, -0.648787, -0.698856,
		-0.760916, -0.278236, 0.586167,
		-0.574744, 0.708280, -0.409888,
		36.029594, 33.610291, 28.422527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958733, 32.709446, 28.393473>,  <36.431915, 33.114494, 28.709450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958733, 32.709446, 28.393473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840767, 33.038780, 28.199507>,  <35.769989, 33.236382, 28.083126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840767, 33.038780, 28.199507>,  <35.958733, 32.709446, 28.393473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840767, 33.038780, 28.199507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156344, -0.542226, -0.825559,
		-0.942647, -0.167654, 0.288632,
		-0.294912, 0.823337, -0.484916,
		35.752293, 33.285782, 28.054031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352097, 32.603535, 27.947891>,  <35.958733, 32.709446, 28.393473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352097, 32.603535, 27.947891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511776, 32.933540, 27.787895>,  <35.607582, 33.131542, 27.691898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511776, 32.933540, 27.787895>,  <35.352097, 32.603535, 27.947891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511776, 32.933540, 27.787895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234099, -0.330082, -0.914464,
		-0.886476, 0.458688, 0.061367,
		0.399198, 0.825015, -0.399988,
		35.631535, 33.181046, 27.667898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899639, 32.954338, 27.498142>,  <35.352097, 32.603535, 27.947891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899639, 32.954338, 27.498142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240482, 33.105762, 27.353588>,  <35.444988, 33.196617, 27.266855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240482, 33.105762, 27.353588>,  <34.899639, 32.954338, 27.498142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240482, 33.105762, 27.353588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295130, -0.222677, -0.929146,
		-0.432213, 0.898390, -0.078019,
		0.852109, 0.378563, -0.361386,
		35.496117, 33.219330, 27.245173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766613, 33.257263, 26.875341>,  <34.899639, 32.954338, 27.498142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766613, 33.257263, 26.875341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162640, 33.243397, 26.820847>,  <35.400257, 33.235077, 26.788151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162640, 33.243397, 26.820847>,  <34.766613, 33.257263, 26.875341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162640, 33.243397, 26.820847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138994, -0.096379, -0.985592,
		0.021035, 0.994741, -0.100241,
		0.990070, -0.034665, -0.136236,
		35.459660, 33.232998, 26.779976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466579, 33.950291, 26.904617>,  <34.766613, 33.257263, 26.875341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466579, 33.950291, 26.904617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.215637, 34.205853, 26.726526>,  <34.065071, 34.359192, 26.619671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.215637, 34.205853, 26.726526>,  <34.466579, 33.950291, 26.904617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215637, 34.205853, 26.726526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092707, 0.506391, 0.857306,
		0.773198, 0.579108, -0.258454,
		-0.627352, 0.638907, -0.445228,
		34.027431, 34.397526, 26.592958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762112, 34.603294, 26.984146>,  <34.466579, 33.950291, 26.904617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762112, 34.603294, 26.984146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369385, 34.654785, 26.928345>,  <34.133747, 34.685680, 26.894865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369385, 34.654785, 26.928345>,  <34.762112, 34.603294, 26.984146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369385, 34.654785, 26.928345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057222, 0.500006, 0.864130,
		0.180992, 0.856401, -0.483549,
		-0.981818, 0.128731, -0.139502,
		34.074841, 34.693405, 26.886494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625957, 35.338409, 27.213356>,  <34.762112, 34.603294, 26.984146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625957, 35.338409, 27.213356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266216, 35.163910, 27.224966>,  <34.050369, 35.059212, 27.231932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266216, 35.163910, 27.224966>,  <34.625957, 35.338409, 27.213356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266216, 35.163910, 27.224966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175338, 0.420692, 0.890098,
		-0.400516, 0.795427, -0.454843,
		-0.899357, -0.436250, 0.029025,
		33.996410, 35.033035, 27.233673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321091, 35.863625, 27.524355>,  <34.625957, 35.338409, 27.213356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321091, 35.863625, 27.524355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103985, 35.529839, 27.562447>,  <33.973721, 35.329567, 27.585300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103985, 35.529839, 27.562447>,  <34.321091, 35.863625, 27.524355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103985, 35.529839, 27.562447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267592, 0.279286, 0.922168,
		-0.796114, 0.475041, -0.374884,
		-0.542768, -0.834467, 0.095227,
		33.941154, 35.279499, 27.591015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662739, 36.096249, 27.789827>,  <34.321091, 35.863625, 27.524355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662739, 36.096249, 27.789827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719852, 35.711483, 27.883074>,  <33.754120, 35.480625, 27.939022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719852, 35.711483, 27.883074>,  <33.662739, 36.096249, 27.789827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719852, 35.711483, 27.883074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350152, 0.171207, 0.920914,
		-0.925747, -0.213114, -0.312369,
		0.142780, -0.961910, 0.233117,
		33.762688, 35.422909, 27.953009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073940, 35.886890, 28.073643>,  <33.662739, 36.096249, 27.789827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073940, 35.886890, 28.073643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331829, 35.608692, 28.200529>,  <33.486561, 35.441772, 28.276661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.331829, 35.608692, 28.200529>,  <33.073940, 35.886890, 28.073643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331829, 35.608692, 28.200529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382571, 0.065698, 0.921588,
		-0.661798, -0.715523, -0.223718,
		0.644720, -0.695493, 0.317217,
		33.525246, 35.400043, 28.295694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630398, 35.498688, 28.519667>,  <33.073940, 35.886890, 28.073643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630398, 35.498688, 28.519667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000957, 35.402866, 28.635870>,  <33.223293, 35.345371, 28.705593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000957, 35.402866, 28.635870>,  <32.630398, 35.498688, 28.519667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000957, 35.402866, 28.635870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266885, 0.126514, 0.955388,
		-0.265625, -0.962604, 0.053268,
		0.926399, -0.239558, 0.290510,
		33.278877, 35.330997, 28.723022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621040, 34.981369, 29.001120>,  <32.630398, 35.498688, 28.519667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621040, 34.981369, 29.001120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972202, 35.164742, 29.056446>,  <33.182899, 35.274765, 29.089642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.972202, 35.164742, 29.056446>,  <32.621040, 34.981369, 29.001120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972202, 35.164742, 29.056446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228167, 0.146531, 0.962532,
		0.420987, -0.876567, 0.233239,
		0.877901, 0.458431, 0.138316,
		33.235573, 35.302269, 29.097940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848225, 34.795513, 29.700735>,  <32.621040, 34.981369, 29.001120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848225, 34.795513, 29.700735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055939, 35.128872, 29.625055>,  <33.180565, 35.328888, 29.579647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055939, 35.128872, 29.625055>,  <32.848225, 34.795513, 29.700735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055939, 35.128872, 29.625055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274027, 0.372076, 0.886830,
		0.809478, -0.408669, 0.421586,
		0.519282, 0.833396, -0.189201,
		33.211723, 35.378891, 29.568295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139690, 34.931007, 30.358105>,  <32.848225, 34.795513, 29.700735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139690, 34.931007, 30.358105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163643, 35.256927, 30.127447>,  <33.178017, 35.452480, 29.989052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163643, 35.256927, 30.127447>,  <33.139690, 34.931007, 30.358105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163643, 35.256927, 30.127447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142755, 0.578734, 0.802925,
		0.987945, 0.034237, 0.150973,
		0.059884, 0.814798, -0.576644,
		33.181606, 35.501366, 29.954454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636410, 35.323143, 30.645708>,  <33.139690, 34.931007, 30.358105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636410, 35.323143, 30.645708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411255, 35.574398, 30.430822>,  <33.276161, 35.725151, 30.301891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411255, 35.574398, 30.430822>,  <33.636410, 35.323143, 30.645708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411255, 35.574398, 30.430822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112911, 0.585432, 0.802820,
		0.818783, 0.512558, -0.258611,
		-0.562891, 0.628135, -0.537215,
		33.242386, 35.762840, 30.269657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830643, 35.860760, 30.867990>,  <33.636410, 35.323143, 30.645708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830643, 35.860760, 30.867990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487537, 35.957100, 30.686337>,  <33.281673, 36.014904, 30.577343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487537, 35.957100, 30.686337>,  <33.830643, 35.860760, 30.867990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487537, 35.957100, 30.686337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208137, 0.645067, 0.735233,
		0.470028, 0.725176, -0.503183,
		-0.857760, 0.240849, -0.454136,
		33.230209, 36.029354, 30.550097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827518, 36.621979, 30.759588>,  <33.830643, 35.860760, 30.867990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827518, 36.621979, 30.759588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445187, 36.504940, 30.770794>,  <33.215790, 36.434715, 30.777517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445187, 36.504940, 30.770794>,  <33.827518, 36.621979, 30.759588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445187, 36.504940, 30.770794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200470, 0.718629, 0.665871,
		-0.214966, 0.630840, -0.745540,
		-0.955825, -0.292598, 0.028016,
		33.158440, 36.417160, 30.779200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463757, 37.235840, 30.618088>,  <33.827518, 36.621979, 30.759588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463757, 37.235840, 30.618088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196686, 36.994995, 30.793207>,  <33.036442, 36.850491, 30.898279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196686, 36.994995, 30.793207>,  <33.463757, 37.235840, 30.618088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196686, 36.994995, 30.793207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248698, 0.734704, 0.631157,
		-0.701679, 0.312531, -0.640290,
		-0.667680, -0.602109, 0.437800,
		32.996384, 36.814362, 30.924547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594173, 37.843128, 30.343037>,  <33.463757, 37.235840, 30.618088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594173, 37.843128, 30.343037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767609, 38.201008, 30.385962>,  <33.871670, 38.415733, 30.411716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767609, 38.201008, 30.385962>,  <33.594173, 37.843128, 30.343037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767609, 38.201008, 30.385962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220199, 0.220677, -0.950165,
		-0.873791, 0.388353, 0.292695,
		0.433591, 0.894697, 0.107311,
		33.897686, 38.469418, 30.418156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038395, 38.444187, 30.232134>,  <33.594173, 37.843128, 30.343037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038395, 38.444187, 30.232134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421135, 38.548759, 30.181402>,  <33.650780, 38.611504, 30.150963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421135, 38.548759, 30.181402>,  <33.038395, 38.444187, 30.232134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421135, 38.548759, 30.181402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147897, 0.062476, -0.987028,
		-0.250118, 0.963198, 0.098445,
		0.956853, 0.261433, -0.126827,
		33.708191, 38.627190, 30.143354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013115, 39.028198, 29.817171>,  <33.038395, 38.444187, 30.232134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013115, 39.028198, 29.817171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388538, 38.897144, 29.773779>,  <33.613792, 38.818512, 29.747744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388538, 38.897144, 29.773779>,  <33.013115, 39.028198, 29.817171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388538, 38.897144, 29.773779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021507, 0.258191, -0.965854,
		0.344457, 0.908841, 0.235280,
		0.938556, -0.327635, -0.108482,
		33.670105, 38.798855, 29.741234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276615, 39.439831, 29.227402>,  <33.013115, 39.028198, 29.817171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276615, 39.439831, 29.227402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538139, 39.137394, 29.239100>,  <33.695053, 38.955933, 29.246119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538139, 39.137394, 29.239100>,  <33.276615, 39.439831, 29.227402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538139, 39.137394, 29.239100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269499, 0.196579, -0.942723,
		0.707034, 0.624248, 0.332291,
		0.653815, -0.756089, 0.029247,
		33.734283, 38.910568, 29.247873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816101, 39.720081, 28.875040>,  <33.276615, 39.439831, 29.227402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816101, 39.720081, 28.875040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854946, 39.321995, 28.879175>,  <33.878254, 39.083141, 28.881657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854946, 39.321995, 28.879175>,  <33.816101, 39.720081, 28.875040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854946, 39.321995, 28.879175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271829, 0.016528, -0.962204,
		0.957433, 0.096250, 0.272135,
		0.097110, -0.995220, 0.010339,
		33.884079, 39.023430, 28.882277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424911, 39.590813, 28.595303>,  <33.816101, 39.720081, 28.875040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424911, 39.590813, 28.595303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214397, 39.253677, 28.550312>,  <34.088089, 39.051395, 28.523317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214397, 39.253677, 28.550312>,  <34.424911, 39.590813, 28.595303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214397, 39.253677, 28.550312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208796, 0.000130, -0.977959,
		0.824276, -0.538167, 0.175913,
		-0.526283, -0.842838, -0.112474,
		34.056511, 39.000828, 28.516569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798214, 39.056149, 28.338531>,  <34.424911, 39.590813, 28.595303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798214, 39.056149, 28.338531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457008, 38.864876, 28.254904>,  <34.252285, 38.750111, 28.204727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457008, 38.864876, 28.254904>,  <34.798214, 39.056149, 28.338531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457008, 38.864876, 28.254904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350453, -0.227988, -0.908408,
		0.386717, -0.848154, 0.362057,
		-0.853014, -0.478181, -0.209071,
		34.201103, 38.721420, 28.192183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968727, 38.364082, 28.014635>,  <34.798214, 39.056149, 28.338531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968727, 38.364082, 28.014635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607586, 38.472328, 27.880991>,  <34.390903, 38.537277, 27.800804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607586, 38.472328, 27.880991>,  <34.968727, 38.364082, 28.014635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607586, 38.472328, 27.880991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295434, -0.174107, -0.939364,
		-0.312382, -0.946811, 0.077242,
		-0.902848, 0.270620, -0.334108,
		34.336731, 38.553513, 27.780758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891563, 38.047913, 27.435192>,  <34.968727, 38.364082, 28.014635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891563, 38.047913, 27.435192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576725, 38.291832, 27.398020>,  <34.387821, 38.438183, 27.375717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576725, 38.291832, 27.398020>,  <34.891563, 38.047913, 27.435192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576725, 38.291832, 27.398020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004375, -0.156174, -0.987720,
		-0.616821, -0.777020, 0.125592,
		-0.787092, 0.609795, -0.092932,
		34.340599, 38.474770, 27.370140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497215, 37.767635, 26.904518>,  <34.891563, 38.047913, 27.435192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497215, 37.767635, 26.904518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335190, 38.132957, 26.921478>,  <34.237976, 38.352150, 26.931654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335190, 38.132957, 26.921478>,  <34.497215, 37.767635, 26.904518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335190, 38.132957, 26.921478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157072, -0.023829, -0.987300,
		-0.900696, -0.406578, 0.153107,
		-0.405063, 0.913305, 0.042399,
		34.213673, 38.406948, 26.934198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810379, 37.861984, 26.579779>,  <34.497215, 37.767635, 26.904518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810379, 37.861984, 26.579779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010757, 38.208012, 26.569061>,  <34.130985, 38.415627, 26.562632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010757, 38.208012, 26.569061>,  <33.810379, 37.861984, 26.579779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010757, 38.208012, 26.569061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194889, 0.082584, -0.977342,
		-0.843253, 0.494814, 0.209961,
		0.500942, 0.865066, -0.026794,
		34.161041, 38.467533, 26.561024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491421, 38.259720, 26.033361>,  <33.810379, 37.861984, 26.579779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491421, 38.259720, 26.033361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849545, 38.434048, 26.070211>,  <34.064419, 38.538643, 26.092321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849545, 38.434048, 26.070211>,  <33.491421, 38.259720, 26.033361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849545, 38.434048, 26.070211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001021, 0.204804, -0.978803,
		-0.445450, 0.876422, 0.182917,
		0.895306, 0.435821, 0.092125,
		34.118137, 38.564793, 26.097849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519436, 38.913116, 25.688103>,  <33.491421, 38.259720, 26.033361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519436, 38.913116, 25.688103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901608, 38.797253, 25.710894>,  <34.130913, 38.727734, 25.724569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901608, 38.797253, 25.710894>,  <33.519436, 38.913116, 25.688103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901608, 38.797253, 25.710894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076374, 0.056089, -0.995500,
		0.285157, 0.955486, 0.075712,
		0.955433, -0.289656, 0.056980,
		34.188236, 38.710354, 25.727987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864307, 39.414295, 25.191914>,  <33.519436, 38.913116, 25.688103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864307, 39.414295, 25.191914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147827, 39.139381, 25.255470>,  <34.317940, 38.974434, 25.293604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147827, 39.139381, 25.255470>,  <33.864307, 39.414295, 25.191914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147827, 39.139381, 25.255470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265207, 0.050913, -0.962847,
		0.653658, 0.724604, 0.218359,
		0.708800, -0.687282, 0.158890,
		34.360466, 38.933197, 25.303137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483097, 39.590633, 24.808132>,  <33.864307, 39.414295, 25.191914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483097, 39.590633, 24.808132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.568306, 39.204849, 24.870672>,  <34.619431, 38.973381, 24.908197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.568306, 39.204849, 24.870672>,  <34.483097, 39.590633, 24.808132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568306, 39.204849, 24.870672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385811, -0.063988, -0.920356,
		0.897648, 0.256377, 0.358468,
		0.213020, -0.964457, 0.156352,
		34.632214, 38.915512, 24.917578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142040, 39.574730, 24.548611>,  <34.483097, 39.590633, 24.808132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142040, 39.574730, 24.548611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015137, 39.196838, 24.581686>,  <34.938995, 38.970104, 24.601532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015137, 39.196838, 24.581686>,  <35.142040, 39.574730, 24.548611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015137, 39.196838, 24.581686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548152, -0.253831, -0.796931,
		0.773872, -0.207504, 0.598384,
		-0.317254, -0.944729, 0.082689,
		34.919960, 38.913422, 24.606493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669132, 39.100231, 24.695711>,  <35.142040, 39.574730, 24.548611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669132, 39.100231, 24.695711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398537, 38.831024, 24.576105>,  <35.236179, 38.669498, 24.504341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398537, 38.831024, 24.576105>,  <35.669132, 39.100231, 24.695711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398537, 38.831024, 24.576105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611639, -0.287291, -0.737131,
		0.410202, -0.681546, 0.605995,
		-0.676485, -0.673022, -0.299013,
		35.195591, 38.629116, 24.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991550, 38.528248, 24.778822>,  <35.669132, 39.100231, 24.695711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991550, 38.528248, 24.778822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707924, 38.459560, 24.505257>,  <35.537746, 38.418350, 24.341118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707924, 38.459560, 24.505257>,  <35.991550, 38.528248, 24.778822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707924, 38.459560, 24.505257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696370, -0.323031, -0.640874,
		-0.110878, -0.930680, 0.348628,
		-0.709066, -0.171715, -0.683915,
		35.495205, 38.408047, 24.300081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147392, 37.887726, 24.448551>,  <35.991550, 38.528248, 24.778822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147392, 37.887726, 24.448551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897667, 38.079601, 24.201933>,  <35.747833, 38.194729, 24.053963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897667, 38.079601, 24.201933>,  <36.147392, 37.887726, 24.448551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897667, 38.079601, 24.201933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523620, -0.328724, -0.785979,
		-0.579702, -0.813532, -0.045950,
		-0.624315, 0.479693, -0.616543,
		35.710373, 38.223511, 24.016970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156399, 37.407246, 23.906155>,  <36.147392, 37.887726, 24.448551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156399, 37.407246, 23.906155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.017448, 37.750256, 23.754374>,  <35.934078, 37.956062, 23.663305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.017448, 37.750256, 23.754374>,  <36.156399, 37.407246, 23.906155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017448, 37.750256, 23.754374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406460, -0.226969, -0.885029,
		-0.845055, -0.461673, -0.269704,
		-0.347379, 0.857522, -0.379453,
		35.913235, 38.007511, 23.640537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930408, 37.241459, 23.238558>,  <36.156399, 37.407246, 23.906155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930408, 37.241459, 23.238558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950855, 37.640335, 23.216637>,  <35.963123, 37.879662, 23.203484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950855, 37.640335, 23.216637>,  <35.930408, 37.241459, 23.238558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950855, 37.640335, 23.216637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369774, -0.069873, -0.926491,
		-0.927715, 0.027097, -0.372306,
		0.051119, 0.997188, -0.054802,
		35.966190, 37.939491, 23.200195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568504, 37.338699, 22.676329>,  <35.930408, 37.241459, 23.238558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568504, 37.338699, 22.676329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805126, 37.656395, 22.731829>,  <35.947098, 37.847012, 22.765129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805126, 37.656395, 22.731829>,  <35.568504, 37.338699, 22.676329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805126, 37.656395, 22.731829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207680, 0.016184, -0.978063,
		-0.779058, 0.607394, -0.155373,
		0.591555, 0.794236, 0.138752,
		35.982594, 37.894665, 22.773455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489452, 37.837749, 22.002745>,  <35.568504, 37.338699, 22.676329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489452, 37.837749, 22.002745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.830654, 37.947960, 22.180044>,  <36.035374, 38.014088, 22.286425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.830654, 37.947960, 22.180044>,  <35.489452, 37.837749, 22.002745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830654, 37.947960, 22.180044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390430, 0.226713, -0.892281,
		-0.346338, 0.934177, 0.085813,
		0.853003, 0.275527, 0.443250,
		36.086555, 38.030617, 22.313019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643257, 38.467213, 21.684715>,  <35.489452, 37.837749, 22.002745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643257, 38.467213, 21.684715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984039, 38.301411, 21.812687>,  <36.188507, 38.201927, 21.889469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984039, 38.301411, 21.812687>,  <35.643257, 38.467213, 21.684715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984039, 38.301411, 21.812687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405888, 0.136794, -0.903628,
		0.330797, 0.899705, 0.284786,
		0.851956, -0.414509, 0.319928,
		36.239628, 38.177059, 21.908665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116276, 38.817051, 21.388418>,  <35.643257, 38.467213, 21.684715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116276, 38.817051, 21.388418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311378, 38.475704, 21.462029>,  <36.428440, 38.270897, 21.506195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311378, 38.475704, 21.462029>,  <36.116276, 38.817051, 21.388418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311378, 38.475704, 21.462029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396691, 0.028882, -0.917498,
		0.777644, 0.520515, 0.352609,
		0.487756, -0.853364, 0.184024,
		36.457706, 38.219696, 21.517235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715187, 38.925606, 21.104877>,  <36.116276, 38.817051, 21.388418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715187, 38.925606, 21.104877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743511, 38.528080, 21.139086>,  <36.760506, 38.289562, 21.159611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743511, 38.528080, 21.139086>,  <36.715187, 38.925606, 21.104877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743511, 38.528080, 21.139086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387424, -0.051606, -0.920456,
		0.919178, 0.098310, 0.381375,
		0.070809, -0.993817, 0.085523,
		36.764755, 38.229935, 21.164743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255314, 38.810791, 20.813892>,  <36.715187, 38.925606, 21.104877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255314, 38.810791, 20.813892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092758, 38.445545, 20.800850>,  <36.995224, 38.226398, 20.793024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092758, 38.445545, 20.800850>,  <37.255314, 38.810791, 20.813892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092758, 38.445545, 20.800850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456281, -0.171897, -0.873074,
		0.791615, -0.369686, 0.486496,
		-0.406390, -0.913118, -0.032605,
		36.970840, 38.171612, 20.791069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792583, 38.349899, 20.565367>,  <37.255314, 38.810791, 20.813892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792583, 38.349899, 20.565367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462452, 38.129017, 20.518213>,  <37.264374, 37.996487, 20.489922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462452, 38.129017, 20.518213>,  <37.792583, 38.349899, 20.565367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462452, 38.129017, 20.518213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287286, -0.230935, -0.929589,
		0.486101, -0.801086, 0.349239,
		-0.825332, -0.552206, -0.117883,
		37.214851, 37.963356, 20.482849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418976, 37.985313, 20.882658>,  <37.792583, 38.349899, 20.565367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418976, 37.985313, 20.882658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798885, 38.108807, 20.903135>,  <39.026829, 38.182903, 20.915422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798885, 38.108807, 20.903135>,  <38.418976, 37.985313, 20.882658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798885, 38.108807, 20.903135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184261, 0.419464, 0.888875,
		0.252947, -0.853661, 0.455281,
		0.949771, 0.308729, 0.051194,
		39.083817, 38.201427, 20.918493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680931, 37.840565, 21.517633>,  <38.418976, 37.985313, 20.882658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680931, 37.840565, 21.517633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924397, 38.129150, 21.385565>,  <39.070477, 38.302303, 21.306324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924397, 38.129150, 21.385565>,  <38.680931, 37.840565, 21.517633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924397, 38.129150, 21.385565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086091, 0.353625, 0.931417,
		0.788744, -0.595345, 0.153127,
		0.608664, 0.721467, -0.330173,
		39.106995, 38.345589, 21.286512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209576, 37.933212, 22.049078>,  <38.680931, 37.840565, 21.517633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209576, 37.933212, 22.049078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229336, 38.266975, 21.829508>,  <39.241192, 38.467236, 21.697765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229336, 38.266975, 21.829508>,  <39.209576, 37.933212, 22.049078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229336, 38.266975, 21.829508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044224, 0.547231, 0.835813,
		0.997800, -0.065565, -0.009868,
		0.049400, 0.834410, -0.548926,
		39.244156, 38.517300, 21.664829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696533, 38.397556, 22.398869>,  <39.209576, 37.933212, 22.049078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696533, 38.397556, 22.398869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.513744, 38.654411, 22.152670>,  <39.404072, 38.808525, 22.004951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.513744, 38.654411, 22.152670>,  <39.696533, 38.397556, 22.398869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513744, 38.654411, 22.152670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130311, 0.636176, 0.760460,
		0.879882, 0.427718, -0.207040,
		-0.456976, 0.642135, -0.615496,
		39.376652, 38.847054, 21.968021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168709, 38.852501, 22.441799>,  <39.696533, 38.397556, 22.398869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168709, 38.852501, 22.441799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800533, 38.989159, 22.365822>,  <39.579628, 39.071152, 22.320234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800533, 38.989159, 22.365822>,  <40.168709, 38.852501, 22.441799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800533, 38.989159, 22.365822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053837, 0.370495, 0.927273,
		0.387170, 0.863721, -0.322623,
		-0.920435, 0.341643, -0.189945,
		39.524403, 39.091652, 22.308838>
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
