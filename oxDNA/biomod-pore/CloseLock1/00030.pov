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
	<23.984261, 34.966736, 34.665688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209164, 35.170681, 34.926121>,  <24.344107, 35.293049, 35.082378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209164, 35.170681, 34.926121>,  <23.984261, 34.966736, 34.665688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209164, 35.170681, 34.926121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480215, -0.842274, 0.244884,
		0.673244, 0.174970, -0.718420,
		0.562259, 0.509863, 0.651079,
		24.377842, 35.323639, 35.121445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631065, 34.894352, 34.415691>,  <23.984261, 34.966736, 34.665688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631065, 34.894352, 34.415691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606878, 34.975380, 34.806652>,  <24.592367, 35.023998, 35.041229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.606878, 34.975380, 34.806652>,  <24.631065, 34.894352, 34.415691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606878, 34.975380, 34.806652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636424, -0.746520, 0.194095,
		0.768966, 0.633776, -0.083784,
		-0.060466, 0.202574, 0.977398,
		24.588739, 35.036152, 35.099873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365810, 34.982811, 34.249237>,  <24.631065, 34.894352, 34.415691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365810, 34.982811, 34.249237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076212, 35.215473, 34.397564>,  <24.902452, 35.355072, 34.486561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076212, 35.215473, 34.397564>,  <25.365810, 34.982811, 34.249237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076212, 35.215473, 34.397564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622218, 0.782737, -0.012950,
		-0.297785, 0.221353, -0.928616,
		-0.723996, 0.581657, 0.370817,
		24.859013, 35.389969, 34.508808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127710, 35.517456, 33.826687>,  <25.365810, 34.982811, 34.249237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127710, 35.517456, 33.826687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100666, 35.631737, 34.209057>,  <25.084438, 35.700306, 34.438480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100666, 35.631737, 34.209057>,  <25.127710, 35.517456, 33.826687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100666, 35.631737, 34.209057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553125, 0.808135, -0.202412,
		-0.830350, 0.515063, -0.212671,
		-0.067612, 0.285706, 0.955929,
		25.080381, 35.717449, 34.495834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825287, 36.178768, 33.740269>,  <25.127710, 35.517456, 33.826687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825287, 36.178768, 33.740269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075720, 36.119362, 34.046463>,  <25.225979, 36.083717, 34.230179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075720, 36.119362, 34.046463>,  <24.825287, 36.178768, 33.740269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075720, 36.119362, 34.046463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456584, 0.865624, -0.205490,
		-0.632101, 0.478161, 0.609762,
		0.626082, -0.148517, 0.765483,
		25.263544, 36.074806, 34.276108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770996, 36.662128, 34.350201>,  <24.825287, 36.178768, 33.740269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770996, 36.662128, 34.350201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143200, 36.521347, 34.309647>,  <25.366522, 36.436878, 34.285313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143200, 36.521347, 34.309647>,  <24.770996, 36.662128, 34.350201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143200, 36.521347, 34.309647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334272, 0.929186, -0.157717,
		0.149719, 0.112866, 0.982265,
		0.930508, -0.351957, -0.101389,
		25.422352, 36.415760, 34.279228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157127, 37.134064, 34.825832>,  <24.770996, 36.662128, 34.350201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157127, 37.134064, 34.825832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449749, 36.988327, 34.595325>,  <25.625322, 36.900887, 34.457020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449749, 36.988327, 34.595325>,  <25.157127, 37.134064, 34.825832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449749, 36.988327, 34.595325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322811, 0.929589, -0.177925,
		0.600517, -0.055863, 0.797658,
		0.731555, -0.364340, -0.576267,
		25.669216, 36.879025, 34.422443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856022, 37.390793, 35.014088>,  <25.157127, 37.134064, 34.825832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856022, 37.390793, 35.014088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878944, 37.299114, 34.625412>,  <25.892698, 37.244106, 34.392204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878944, 37.299114, 34.625412>,  <25.856022, 37.390793, 35.014088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878944, 37.299114, 34.625412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189320, 0.958125, -0.214835,
		0.980242, -0.171650, 0.098297,
		0.057305, -0.229200, -0.971691,
		25.896135, 37.230354, 34.333904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330442, 37.782875, 34.687584>,  <25.856022, 37.390793, 35.014088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330442, 37.782875, 34.687584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.155651, 37.649841, 34.353294>,  <26.050776, 37.570019, 34.152721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.155651, 37.649841, 34.353294>,  <26.330442, 37.782875, 34.687584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.155651, 37.649841, 34.353294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056862, 0.917055, -0.394685,
		0.897673, -0.219990, -0.381822,
		-0.436978, -0.332587, -0.835725,
		26.024557, 37.550064, 34.102577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654696, 38.060604, 34.061474>,  <26.330442, 37.782875, 34.687584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654696, 38.060604, 34.061474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281391, 37.956810, 33.962124>,  <26.057409, 37.894531, 33.902515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281391, 37.956810, 33.962124>,  <26.654696, 38.060604, 34.061474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281391, 37.956810, 33.962124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141945, 0.901611, -0.408594,
		0.329962, -0.346069, -0.878272,
		-0.933261, -0.259487, -0.248374,
		26.001413, 37.878963, 33.887611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612204, 38.383560, 33.354511>,  <26.654696, 38.060604, 34.061474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612204, 38.383560, 33.354511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238094, 38.323570, 33.482742>,  <26.013630, 38.287575, 33.559681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238094, 38.323570, 33.482742>,  <26.612204, 38.383560, 33.354511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238094, 38.323570, 33.482742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305962, 0.797931, -0.519321,
		-0.177915, -0.583792, -0.792170,
		-0.935272, -0.149979, 0.320582,
		25.957512, 38.278576, 33.578918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172628, 38.654694, 32.765713>,  <26.612204, 38.383560, 33.354511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172628, 38.654694, 32.765713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933878, 38.654770, 33.086647>,  <25.790628, 38.654816, 33.279209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.933878, 38.654770, 33.086647>,  <26.172628, 38.654694, 32.765713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933878, 38.654770, 33.086647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415393, 0.855472, -0.309220,
		-0.686432, -0.517850, -0.510532,
		-0.596875, 0.000187, 0.802334,
		25.754816, 38.654827, 33.327347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575169, 39.008121, 32.510376>,  <26.172628, 38.654694, 32.765713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575169, 39.008121, 32.510376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561695, 39.019096, 32.910000>,  <25.553612, 39.025681, 33.149773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561695, 39.019096, 32.910000>,  <25.575169, 39.008121, 32.510376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561695, 39.019096, 32.910000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559951, 0.827480, -0.041606,
		-0.827841, -0.560824, -0.012501,
		-0.033678, 0.027443, 0.999056,
		25.551590, 39.027328, 33.209717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.901354, 39.143364, 32.704121>,  <25.575169, 39.008121, 32.510376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.901354, 39.143364, 32.704121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139803, 39.260818, 33.003029>,  <25.282873, 39.331291, 33.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139803, 39.260818, 33.003029>,  <24.901354, 39.143364, 32.704121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139803, 39.260818, 33.003029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269602, 0.949890, -0.158189,
		-0.756274, -0.107165, 0.645419,
		0.596124, 0.293640, 0.747269,
		25.318640, 39.348911, 33.227211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554148, 39.714409, 33.154114>,  <24.901354, 39.143364, 32.704121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554148, 39.714409, 33.154114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950008, 39.719906, 33.211250>,  <25.187525, 39.723206, 33.245533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950008, 39.719906, 33.211250>,  <24.554148, 39.714409, 33.154114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.950008, 39.719906, 33.211250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008394, 0.988155, -0.153227,
		-0.143258, 0.152840, 0.977813,
		0.989650, 0.013744, 0.142844,
		25.246902, 39.724030, 33.254105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510401, 40.142517, 33.707893>,  <24.554148, 39.714409, 33.154114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510401, 40.142517, 33.707893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878477, 40.155174, 33.551815>,  <25.099323, 40.162769, 33.458168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878477, 40.155174, 33.551815>,  <24.510401, 40.142517, 33.707893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.878477, 40.155174, 33.551815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018445, 0.999125, 0.037525,
		0.391039, -0.027333, 0.919968,
		0.920189, 0.031642, -0.390193,
		25.154533, 40.164665, 33.434757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905235, 40.711266, 34.075108>,  <24.510401, 40.142517, 33.707893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905235, 40.711266, 34.075108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106756, 40.656075, 33.734016>,  <25.227669, 40.622959, 33.529362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106756, 40.656075, 33.734016>,  <24.905235, 40.711266, 34.075108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106756, 40.656075, 33.734016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084771, 0.990293, -0.110150,
		0.859650, -0.016793, 0.510608,
		0.503802, -0.137975, -0.852729,
		25.257896, 40.614681, 33.478199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441587, 41.185463, 34.182877>,  <24.905235, 40.711266, 34.075108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441587, 41.185463, 34.182877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478754, 41.104012, 33.793026>,  <25.501055, 41.055141, 33.559116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478754, 41.104012, 33.793026>,  <25.441587, 41.185463, 34.182877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478754, 41.104012, 33.793026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138581, 0.971980, -0.189868,
		0.985983, -0.117422, 0.118534,
		0.092918, -0.203633, -0.974628,
		25.506630, 41.042923, 33.500637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175556, 41.443142, 33.911785>,  <25.441587, 41.185463, 34.182877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175556, 41.443142, 33.911785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930426, 41.419189, 33.596607>,  <25.783346, 41.404819, 33.407501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930426, 41.419189, 33.596607>,  <26.175556, 41.443142, 33.911785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930426, 41.419189, 33.596607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248373, 0.931996, -0.263997,
		0.750168, -0.357489, -0.556281,
		-0.612828, -0.059877, -0.787944,
		25.746576, 41.401226, 33.360226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634710, 41.532906, 33.313869>,  <26.175556, 41.443142, 33.911785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634710, 41.532906, 33.313869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254372, 41.638069, 33.248428>,  <26.026169, 41.701168, 33.209164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254372, 41.638069, 33.248428>,  <26.634710, 41.532906, 33.313869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254372, 41.638069, 33.248428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302768, 0.900173, -0.313081,
		0.064957, -0.347225, -0.935529,
		-0.950848, 0.262912, -0.163602,
		25.969118, 41.716942, 33.199348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696241, 42.001080, 32.877007>,  <26.634710, 41.532906, 33.313869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696241, 42.001080, 32.877007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322334, 42.087826, 32.989559>,  <26.097990, 42.139874, 33.057091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322334, 42.087826, 32.989559>,  <26.696241, 42.001080, 32.877007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322334, 42.087826, 32.989559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150697, 0.959317, -0.238749,
		-0.321715, -0.180771, -0.929420,
		-0.934767, 0.216870, 0.281385,
		26.041904, 42.152885, 33.073975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512955, 42.460140, 32.343693>,  <26.696241, 42.001080, 32.877007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512955, 42.460140, 32.343693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262459, 42.538502, 32.645538>,  <26.112162, 42.585518, 32.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262459, 42.538502, 32.645538>,  <26.512955, 42.460140, 32.343693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262459, 42.538502, 32.645538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041653, 0.958127, -0.283299,
		-0.778517, -0.208845, -0.591857,
		-0.626240, 0.195900, 0.754617,
		26.074587, 42.597271, 32.871922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093683, 42.987270, 32.095104>,  <26.512955, 42.460140, 32.343693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093683, 42.987270, 32.095104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002813, 43.009369, 32.484020>,  <25.948292, 43.022629, 32.717369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002813, 43.009369, 32.484020>,  <26.093683, 42.987270, 32.095104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002813, 43.009369, 32.484020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057849, 0.997392, -0.043153,
		-0.972134, 0.046443, -0.229780,
		-0.227176, 0.055243, 0.972286,
		25.934660, 43.025940, 32.775707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573805, 43.495159, 32.134113>,  <26.093683, 42.987270, 32.095104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573805, 43.495159, 32.134113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714224, 43.487450, 32.508575>,  <25.798475, 43.482826, 32.733253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714224, 43.487450, 32.508575>,  <25.573805, 43.495159, 32.134113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714224, 43.487450, 32.508575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028659, 0.999099, 0.031313,
		-0.935920, -0.037822, 0.350177,
		0.351045, -0.019270, 0.936160,
		25.819538, 43.481670, 32.789425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102442, 43.762337, 32.509453>,  <25.573805, 43.495159, 32.134113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102442, 43.762337, 32.509453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428959, 43.816551, 32.734058>,  <25.624868, 43.849079, 32.868824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428959, 43.816551, 32.734058>,  <25.102442, 43.762337, 32.509453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428959, 43.816551, 32.734058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093685, 0.928150, -0.360222,
		-0.569994, 0.346652, 0.744943,
		0.816291, 0.135534, 0.561516,
		25.673845, 43.857212, 32.902512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021465, 44.335072, 32.967270>,  <25.102442, 43.762337, 32.509453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021465, 44.335072, 32.967270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415907, 44.290649, 32.917850>,  <25.652573, 44.263996, 32.888199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415907, 44.290649, 32.917850>,  <25.021465, 44.335072, 32.967270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415907, 44.290649, 32.917850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052403, 0.913683, -0.403034,
		0.157647, 0.390959, 0.906807,
		0.986104, -0.111057, -0.123552,
		25.711739, 44.257332, 32.880783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476688, 44.874279, 33.419388>,  <25.021465, 44.335072, 32.967270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476688, 44.874279, 33.419388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609688, 44.741543, 33.066269>,  <25.689487, 44.661900, 32.854397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609688, 44.741543, 33.066269>,  <25.476688, 44.874279, 33.419388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609688, 44.741543, 33.066269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098873, 0.943160, -0.317292,
		0.937907, 0.018215, 0.346409,
		0.332499, -0.331841, -0.882795,
		25.709438, 44.641991, 32.801430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398432, 45.419971, 32.886467>,  <25.476688, 44.874279, 33.419388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398432, 45.419971, 32.886467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689793, 45.679554, 32.974365>,  <25.864609, 45.835304, 33.027103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689793, 45.679554, 32.974365>,  <25.398432, 45.419971, 32.886467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689793, 45.679554, 32.974365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684736, -0.678331, -0.266465,
		-0.023862, 0.344563, -0.938460,
		0.728400, 0.648956, 0.219748,
		25.908312, 45.874241, 33.040291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736479, 45.134834, 32.260574>,  <25.398432, 45.419971, 32.886467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736479, 45.134834, 32.260574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128105, 45.203640, 32.304104>,  <26.363081, 45.244923, 32.330219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128105, 45.203640, 32.304104>,  <25.736479, 45.134834, 32.260574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128105, 45.203640, 32.304104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063003, -0.764477, 0.641565,
		0.193550, -0.621278, -0.759310,
		0.979066, 0.172014, 0.108822,
		26.421825, 45.255245, 32.336750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206337, 44.609207, 31.908295>,  <25.736479, 45.134834, 32.260574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206337, 44.609207, 31.908295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287367, 44.787300, 32.257175>,  <26.335985, 44.894154, 32.466503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287367, 44.787300, 32.257175>,  <26.206337, 44.609207, 31.908295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287367, 44.787300, 32.257175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084719, -0.879359, 0.468561,
		0.975595, -0.168810, -0.140416,
		0.202574, 0.445230, 0.872200,
		26.348139, 44.920868, 32.518837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824839, 44.231556, 32.325897>,  <26.206337, 44.609207, 31.908295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824839, 44.231556, 32.325897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568624, 44.430119, 32.560261>,  <26.414896, 44.549255, 32.700878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568624, 44.430119, 32.560261>,  <26.824839, 44.231556, 32.325897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568624, 44.430119, 32.560261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106143, -0.812882, 0.572675,
		0.760558, 0.304628, 0.573370,
		-0.640535, 0.496411, 0.585910,
		26.376465, 44.579041, 32.736034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993084, 44.300430, 33.092083>,  <26.824839, 44.231556, 32.325897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993084, 44.300430, 33.092083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596643, 44.288971, 33.040092>,  <26.358778, 44.282093, 33.008900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596643, 44.288971, 33.040092>,  <26.993084, 44.300430, 33.092083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596643, 44.288971, 33.040092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041233, -0.862402, 0.504542,
		-0.126544, 0.505412, 0.853548,
		-0.991104, -0.028653, -0.129972,
		26.299313, 44.280376, 33.001102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513250, 43.718658, 32.956470>,  <26.993084, 44.300430, 33.092083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513250, 43.718658, 32.956470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793428, 44.004135, 32.958420>,  <27.961535, 44.175423, 32.959587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793428, 44.004135, 32.958420>,  <27.513250, 43.718658, 32.956470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793428, 44.004135, 32.958420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709270, -0.695314, -0.116084,
		-0.079462, 0.084765, -0.993227,
		0.700444, 0.713690, 0.004870,
		28.003561, 44.218243, 32.959881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805027, 43.831142, 32.363838>,  <27.513250, 43.718658, 32.956470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805027, 43.831142, 32.363838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035730, 43.872547, 32.687969>,  <28.174152, 43.897392, 32.882450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035730, 43.872547, 32.687969>,  <27.805027, 43.831142, 32.363838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035730, 43.872547, 32.687969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592122, -0.736350, -0.327384,
		0.562798, 0.668635, -0.485989,
		0.576759, 0.103514, 0.810330,
		28.208757, 43.903603, 32.931068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479284, 43.986851, 32.242977>,  <27.805027, 43.831142, 32.363838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479284, 43.986851, 32.242977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490734, 43.800396, 32.596676>,  <28.497604, 43.688522, 32.808895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490734, 43.800396, 32.596676>,  <28.479284, 43.986851, 32.242977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490734, 43.800396, 32.596676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554359, -0.728706, -0.402086,
		0.831785, 0.501703, 0.237546,
		0.028626, -0.466135, 0.884250,
		28.499323, 43.660557, 32.861950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239843, 43.768215, 32.308159>,  <28.479284, 43.986851, 32.242977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239843, 43.768215, 32.308159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978308, 43.571556, 32.538212>,  <28.821386, 43.453560, 32.676243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978308, 43.571556, 32.538212>,  <29.239843, 43.768215, 32.308159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978308, 43.571556, 32.538212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526739, -0.841446, -0.120475,
		0.543175, 0.224174, 0.809140,
		-0.653840, -0.491644, 0.575134,
		28.782156, 43.424065, 32.710751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685701, 43.353161, 32.733746>,  <29.239843, 43.768215, 32.308159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685701, 43.353161, 32.733746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320938, 43.189156, 32.740826>,  <29.102079, 43.090752, 32.745075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320938, 43.189156, 32.740826>,  <29.685701, 43.353161, 32.733746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320938, 43.189156, 32.740826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406737, -0.908693, -0.094029,
		0.054639, -0.078545, 0.995412,
		-0.911910, -0.410009, 0.017703,
		29.047365, 43.066154, 32.746136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763378, 42.739506, 33.083218>,  <29.685701, 43.353161, 32.733746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763378, 42.739506, 33.083218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399916, 42.636799, 32.951511>,  <29.181839, 42.575172, 32.872490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399916, 42.636799, 32.951511>,  <29.763378, 42.739506, 33.083218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399916, 42.636799, 32.951511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334950, -0.919077, -0.207621,
		-0.249307, -0.298942, 0.921130,
		-0.908655, -0.256772, -0.329263,
		29.127319, 42.559769, 32.852734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651478, 42.096767, 33.323277>,  <29.763378, 42.739506, 33.083218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651478, 42.096767, 33.323277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363892, 42.088764, 33.045372>,  <29.191339, 42.083961, 32.878632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363892, 42.088764, 33.045372>,  <29.651478, 42.096767, 33.323277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363892, 42.088764, 33.045372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174923, -0.972620, -0.153012,
		-0.672674, -0.231539, 0.702779,
		-0.718966, -0.020005, -0.694758,
		29.148203, 42.082764, 32.836945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315777, 41.495804, 33.553219>,  <29.651478, 42.096767, 33.323277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315777, 41.495804, 33.553219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220047, 41.583450, 33.174862>,  <29.162609, 41.636036, 32.947849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220047, 41.583450, 33.174862>,  <29.315777, 41.495804, 33.553219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220047, 41.583450, 33.174862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017643, -0.975024, -0.221399,
		-0.970780, -0.036297, 0.237211,
		-0.239323, 0.219114, -0.945893,
		29.148249, 41.649185, 32.891094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908239, 40.915268, 33.285816>,  <29.315777, 41.495804, 33.553219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908239, 40.915268, 33.285816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952923, 41.118710, 32.944328>,  <28.979733, 41.240772, 32.739433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952923, 41.118710, 32.944328>,  <28.908239, 40.915268, 33.285816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952923, 41.118710, 32.944328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052051, -0.860917, -0.506076,
		-0.992377, 0.012097, -0.122647,
		0.111711, 0.508602, -0.853724,
		28.986437, 41.271290, 32.688210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350458, 40.732407, 32.792572>,  <28.908239, 40.915268, 33.285816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350458, 40.732407, 32.792572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686287, 40.847141, 32.608032>,  <28.887783, 40.915981, 32.497307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686287, 40.847141, 32.608032>,  <28.350458, 40.732407, 32.792572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686287, 40.847141, 32.608032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002203, -0.847436, -0.530893,
		-0.543247, 0.446738, -0.710850,
		0.839570, 0.286839, -0.461351,
		28.938158, 40.933193, 32.469627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288984, 40.587292, 32.037994>,  <28.350458, 40.732407, 32.792572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288984, 40.587292, 32.037994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686501, 40.606106, 32.078331>,  <28.925011, 40.617393, 32.102531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686501, 40.606106, 32.078331>,  <28.288984, 40.587292, 32.037994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686501, 40.606106, 32.078331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093882, -0.840901, -0.532984,
		0.059725, 0.539141, -0.840095,
		0.993790, 0.047037, 0.100839,
		28.984638, 40.620216, 32.108582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502834, 40.322403, 31.442266>,  <28.288984, 40.587292, 32.037994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502834, 40.322403, 31.442266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801958, 40.299736, 31.706861>,  <28.981432, 40.286137, 31.865618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801958, 40.299736, 31.706861>,  <28.502834, 40.322403, 31.442266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801958, 40.299736, 31.706861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205512, -0.927654, -0.311805,
		0.631302, 0.369115, -0.682064,
		0.747812, -0.056671, 0.661488,
		29.026302, 40.282734, 31.905308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097025, 40.057602, 31.143806>,  <28.502834, 40.322403, 31.442266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097025, 40.057602, 31.143806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142771, 39.976665, 31.532852>,  <29.170218, 39.928104, 31.766279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142771, 39.976665, 31.532852>,  <29.097025, 40.057602, 31.143806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142771, 39.976665, 31.532852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033607, -0.977690, -0.207350,
		0.992870, 0.056400, -0.105013,
		0.114364, -0.202342, 0.972614,
		29.177080, 39.915962, 31.824636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454100, 39.423447, 30.988451>,  <29.097025, 40.057602, 31.143806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454100, 39.423447, 30.988451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373144, 39.453621, 31.379009>,  <29.324572, 39.471725, 31.613344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373144, 39.453621, 31.379009>,  <29.454100, 39.423447, 30.988451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373144, 39.453621, 31.379009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201653, -0.978873, 0.033828,
		0.958319, -0.190047, 0.213325,
		-0.202389, 0.075436, 0.976395,
		29.312428, 39.476254, 31.671928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929621, 38.880238, 31.270014>,  <29.454100, 39.423447, 30.988451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929621, 38.880238, 31.270014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641388, 38.987858, 31.525631>,  <29.468449, 39.052429, 31.679001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641388, 38.987858, 31.525631>,  <29.929621, 38.880238, 31.270014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641388, 38.987858, 31.525631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178496, -0.962564, 0.203987,
		0.670001, 0.032923, 0.741629,
		-0.720581, 0.269050, 0.639042,
		29.425213, 39.068573, 31.717344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090378, 38.519936, 31.993618>,  <29.929621, 38.880238, 31.270014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090378, 38.519936, 31.993618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702044, 38.615707, 31.998520>,  <29.469044, 38.673172, 32.001461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702044, 38.615707, 31.998520>,  <30.090378, 38.519936, 31.993618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702044, 38.615707, 31.998520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203979, -0.851780, 0.482560,
		0.125978, 0.465987, 0.875777,
		-0.970836, 0.239432, 0.012254,
		29.410793, 38.687538, 32.002197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863272, 38.292599, 32.641640>,  <30.090378, 38.519936, 31.993618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863272, 38.292599, 32.641640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535786, 38.332832, 32.415512>,  <29.339294, 38.356972, 32.279835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535786, 38.332832, 32.415512>,  <29.863272, 38.292599, 32.641640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535786, 38.332832, 32.415512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310009, -0.906145, 0.287744,
		-0.483323, 0.410835, 0.773054,
		-0.818714, 0.100581, -0.565324,
		29.290171, 38.363007, 32.245914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210442, 38.187546, 33.111935>,  <29.863272, 38.292599, 32.641640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210442, 38.187546, 33.111935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097134, 38.110794, 32.736076>,  <29.029148, 38.064743, 32.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097134, 38.110794, 32.736076>,  <29.210442, 38.187546, 33.111935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097134, 38.110794, 32.736076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329584, -0.900629, 0.283271,
		-0.900629, 0.389935, 0.191881,
		-0.283271, -0.191881, -0.939648,
		29.012152, 38.053230, 32.454182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547091, 37.935925, 33.167110>,  <29.210442, 38.187546, 33.111935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547091, 37.935925, 33.167110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609856, 37.795120, 32.798012>,  <28.647514, 37.710636, 32.576553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609856, 37.795120, 32.798012>,  <28.547091, 37.935925, 33.167110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609856, 37.795120, 32.798012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628494, -0.756308, 0.181644,
		-0.761823, 0.551440, -0.339910,
		0.156911, -0.352012, -0.922750,
		28.656929, 37.689518, 32.521187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920650, 37.646717, 33.013496>,  <28.547091, 37.935925, 33.167110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920650, 37.646717, 33.013496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200066, 37.462414, 32.794498>,  <28.367714, 37.351833, 32.663101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200066, 37.462414, 32.794498>,  <27.920650, 37.646717, 33.013496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200066, 37.462414, 32.794498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457632, -0.875843, 0.153207,
		-0.550107, 0.143528, -0.822667,
		0.698538, -0.460759, -0.547491,
		28.409626, 37.324184, 32.630253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529531, 37.105961, 32.611832>,  <27.920650, 37.646717, 33.013496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529531, 37.105961, 32.611832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909451, 36.983139, 32.587814>,  <28.137402, 36.909447, 32.573406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909451, 36.983139, 32.587814>,  <27.529531, 37.105961, 32.611832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909451, 36.983139, 32.587814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311165, -0.947067, -0.078995,
		-0.032605, 0.093711, -0.995065,
		0.949796, -0.307054, -0.060039,
		28.194389, 36.891022, 32.569801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420956, 36.582935, 32.143639>,  <27.529531, 37.105961, 32.611832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420956, 36.582935, 32.143639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791168, 36.542381, 32.289577>,  <28.013296, 36.518047, 32.377140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791168, 36.542381, 32.289577>,  <27.420956, 36.582935, 32.143639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791168, 36.542381, 32.289577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107488, -0.994200, -0.003598,
		0.363100, -0.035887, -0.931059,
		0.925530, -0.101384, 0.364851,
		28.068827, 36.511967, 32.399033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840109, 36.099110, 31.714212>,  <27.420956, 36.582935, 32.143639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840109, 36.099110, 31.714212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948685, 36.082111, 32.098820>,  <28.013830, 36.071911, 32.329582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948685, 36.082111, 32.098820>,  <27.840109, 36.099110, 31.714212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948685, 36.082111, 32.098820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434481, -0.896847, 0.083015,
		0.858806, -0.440294, -0.261903,
		0.271439, -0.042498, 0.961517,
		28.030117, 36.069363, 32.387276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973793, 35.428642, 31.755165>,  <27.840109, 36.099110, 31.714212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973793, 35.428642, 31.755165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972727, 35.524048, 32.143620>,  <27.972088, 35.581291, 32.376694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972727, 35.524048, 32.143620>,  <27.973793, 35.428642, 31.755165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972727, 35.524048, 32.143620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501381, -0.840574, 0.205069,
		0.865223, -0.486362, 0.121824,
		-0.002665, 0.238511, 0.971136,
		27.971928, 35.595600, 32.434959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300413, 34.893387, 32.219418>,  <27.973793, 35.428642, 31.755165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300413, 34.893387, 32.219418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040890, 35.082047, 32.458279>,  <27.885176, 35.195244, 32.601597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040890, 35.082047, 32.458279>,  <28.300413, 34.893387, 32.219418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040890, 35.082047, 32.458279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423855, -0.875734, 0.231163,
		0.631978, -0.103127, 0.768094,
		-0.648807, 0.471651, 0.597156,
		27.846247, 35.223541, 32.637424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369743, 34.553837, 32.939213>,  <28.300413, 34.893387, 32.219418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369743, 34.553837, 32.939213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003077, 34.708244, 32.897816>,  <27.783075, 34.800888, 32.872978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003077, 34.708244, 32.897816>,  <28.369743, 34.553837, 32.939213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003077, 34.708244, 32.897816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382594, -0.772774, 0.506401,
		0.115499, 0.503799, 0.856065,
		-0.916669, 0.386014, -0.103496,
		27.728075, 34.824047, 32.866768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709068, 34.234509, 32.392513>,  <28.369743, 34.553837, 32.939213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709068, 34.234509, 32.392513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091444, 34.304436, 32.486843>,  <29.320869, 34.346394, 32.543442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091444, 34.304436, 32.486843>,  <28.709068, 34.234509, 32.392513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091444, 34.304436, 32.486843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179135, -0.289041, 0.940407,
		0.232569, -0.941218, -0.244989,
		0.955940, 0.174823, 0.235827,
		29.378225, 34.356884, 32.557590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125208, 33.589054, 32.698063>,  <28.709068, 34.234509, 32.392513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125208, 33.589054, 32.698063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227089, 33.955879, 32.820782>,  <29.288218, 34.175972, 32.894413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227089, 33.955879, 32.820782>,  <29.125208, 33.589054, 32.698063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227089, 33.955879, 32.820782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129311, -0.282115, 0.950626,
		0.958335, -0.281799, 0.046731,
		0.254702, 0.917061, 0.306801,
		29.303499, 34.230999, 32.912823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634403, 33.425503, 33.261360>,  <29.125208, 33.589054, 32.698063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634403, 33.425503, 33.261360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381952, 33.735733, 33.256325>,  <29.230482, 33.921871, 33.253304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381952, 33.735733, 33.256325>,  <29.634403, 33.425503, 33.261360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381952, 33.735733, 33.256325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172466, -0.124485, 0.977118,
		0.756261, 0.618859, 0.212327,
		-0.631130, 0.775575, -0.012588,
		29.192614, 33.968407, 33.252548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843863, 33.934559, 33.686829>,  <29.634403, 33.425503, 33.261360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843863, 33.934559, 33.686829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445883, 33.924046, 33.648083>,  <29.207094, 33.917740, 33.624836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445883, 33.924046, 33.648083>,  <29.843863, 33.934559, 33.686829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445883, 33.924046, 33.648083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093727, -0.101895, 0.990370,
		-0.035898, 0.994448, 0.098917,
		-0.994951, -0.026281, -0.096864,
		29.147398, 33.916161, 33.619022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578962, 34.352482, 34.088745>,  <29.843863, 33.934559, 33.686829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578962, 34.352482, 34.088745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259445, 34.120831, 34.023586>,  <29.067734, 33.981838, 33.984489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259445, 34.120831, 34.023586>,  <29.578962, 34.352482, 34.088745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259445, 34.120831, 34.023586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160182, -0.056258, 0.985483,
		-0.579887, 0.813292, -0.047827,
		-0.798795, -0.579130, -0.162898,
		29.019806, 33.947090, 33.974716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043541, 34.755451, 34.549030>,  <29.578962, 34.352482, 34.088745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043541, 34.755451, 34.549030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010847, 34.367344, 34.457912>,  <28.991232, 34.134480, 34.403240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010847, 34.367344, 34.457912>,  <29.043541, 34.755451, 34.549030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010847, 34.367344, 34.457912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004183, -0.228225, 0.973599,
		-0.996645, 0.080528, 0.014595,
		-0.081733, -0.970272, -0.227796,
		28.986328, 34.076263, 34.389572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767443, 34.461433, 35.092697>,  <29.043541, 34.755451, 34.549030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767443, 34.461433, 35.092697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840904, 34.127083, 34.885780>,  <28.884981, 33.926472, 34.761631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840904, 34.127083, 34.885780>,  <28.767443, 34.461433, 35.092697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840904, 34.127083, 34.885780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061602, -0.515418, 0.854722,
		-0.981059, -0.188837, -0.043166,
		0.183652, -0.835874, -0.517288,
		28.896000, 33.876320, 34.730595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256445, 33.987007, 35.167976>,  <28.767443, 34.461433, 35.092697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256445, 33.987007, 35.167976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611471, 33.807674, 35.125607>,  <28.824488, 33.700073, 35.100185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611471, 33.807674, 35.125607>,  <28.256445, 33.987007, 35.167976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611471, 33.807674, 35.125607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097408, -0.407380, 0.908049,
		-0.450266, -0.795634, -0.405248,
		0.887565, -0.448338, -0.105929,
		28.877741, 33.673176, 35.093830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146091, 33.240452, 35.415089>,  <28.256445, 33.987007, 35.167976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146091, 33.240452, 35.415089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536751, 33.323540, 35.437035>,  <28.771147, 33.373394, 35.450203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536751, 33.323540, 35.437035>,  <28.146091, 33.240452, 35.415089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536751, 33.323540, 35.437035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042617, -0.437609, 0.898155,
		0.210577, -0.874843, -0.436242,
		0.976648, 0.207723, 0.054867,
		28.829744, 33.385857, 35.453495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463783, 32.664585, 35.611488>,  <28.146091, 33.240452, 35.415089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463783, 32.664585, 35.611488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691860, 32.971855, 35.727966>,  <28.828707, 33.156216, 35.797852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691860, 32.971855, 35.727966>,  <28.463783, 32.664585, 35.611488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691860, 32.971855, 35.727966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060984, -0.393063, 0.917487,
		0.819246, -0.505384, -0.270967,
		0.570191, 0.768172, 0.291195,
		28.862917, 33.202305, 35.815327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976898, 32.305416, 36.015869>,  <28.463783, 32.664585, 35.611488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976898, 32.305416, 36.015869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017544, 32.693218, 36.105072>,  <29.041931, 32.925900, 36.158596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017544, 32.693218, 36.105072>,  <28.976898, 32.305416, 36.015869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017544, 32.693218, 36.105072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238480, -0.241374, 0.940673,
		0.965817, -0.042404, -0.255735,
		0.101616, 0.969505, 0.223011,
		29.048029, 32.984070, 36.171974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469929, 32.334435, 36.575592>,  <28.976898, 32.305416, 36.015869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469929, 32.334435, 36.575592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269636, 32.679222, 36.607288>,  <29.149460, 32.886093, 36.626308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269636, 32.679222, 36.607288>,  <29.469929, 32.334435, 36.575592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269636, 32.679222, 36.607288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020427, -0.103289, 0.994441,
		0.865361, 0.496330, 0.069328,
		-0.500732, 0.861967, 0.079244,
		29.119417, 32.937813, 36.631062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706417, 32.579849, 37.160282>,  <29.469929, 32.334435, 36.575592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706417, 32.579849, 37.160282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392597, 32.826427, 37.133522>,  <29.204306, 32.974377, 37.117466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392597, 32.826427, 37.133522>,  <29.706417, 32.579849, 37.160282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392597, 32.826427, 37.133522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130162, -0.058242, 0.989781,
		0.606253, 0.785238, 0.125932,
		-0.784548, 0.616449, -0.066898,
		29.157232, 33.011364, 37.113453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751663, 33.021973, 37.687550>,  <29.706417, 32.579849, 37.160282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751663, 33.021973, 37.687550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369225, 33.060486, 37.576836>,  <29.139761, 33.083591, 37.510406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369225, 33.060486, 37.576836>,  <29.751663, 33.021973, 37.687550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369225, 33.060486, 37.576836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268340, 0.091964, 0.958925,
		0.117779, 0.991097, -0.062091,
		-0.956097, 0.096279, -0.276782,
		29.082396, 33.089371, 37.493801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554800, 33.374828, 38.256081>,  <29.751663, 33.021973, 37.687550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554800, 33.374828, 38.256081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211868, 33.240768, 38.099792>,  <29.006109, 33.160332, 38.006020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211868, 33.240768, 38.099792>,  <29.554800, 33.374828, 38.256081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211868, 33.240768, 38.099792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389320, -0.074423, 0.918091,
		-0.336772, 0.939223, -0.066674,
		-0.857330, -0.335145, -0.390721,
		28.954670, 33.140224, 37.982574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915342, 33.773464, 38.577370>,  <29.554800, 33.374828, 38.256081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915342, 33.773464, 38.577370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791157, 33.418644, 38.440693>,  <28.716646, 33.205753, 38.358685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791157, 33.418644, 38.440693>,  <28.915342, 33.773464, 38.577370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791157, 33.418644, 38.440693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423016, -0.192980, 0.885334,
		-0.851275, 0.419407, -0.315322,
		-0.310464, -0.887049, -0.341695,
		28.698017, 33.152531, 38.338184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186548, 33.673279, 38.840733>,  <28.915342, 33.773464, 38.577370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186548, 33.673279, 38.840733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274412, 33.299400, 38.728951>,  <28.327131, 33.075073, 38.661880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274412, 33.299400, 38.728951>,  <28.186548, 33.673279, 38.840733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274412, 33.299400, 38.728951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416204, -0.348863, 0.839684,
		-0.882340, -0.068134, -0.465655,
		0.219661, -0.934694, -0.279458,
		28.340311, 33.018993, 38.645115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681007, 33.202461, 39.012913>,  <28.186548, 33.673279, 38.840733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681007, 33.202461, 39.012913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972795, 32.936752, 38.947659>,  <28.147869, 32.777328, 38.908508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972795, 32.936752, 38.947659>,  <27.681007, 33.202461, 39.012913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972795, 32.936752, 38.947659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286328, -0.513138, 0.809139,
		-0.621200, -0.543534, -0.564519,
		0.729471, -0.664274, -0.163133,
		28.191637, 32.737469, 38.898720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408743, 32.569374, 39.307587>,  <27.681007, 33.202461, 39.012913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408743, 32.569374, 39.307587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802263, 32.500267, 39.288460>,  <28.038376, 32.458805, 39.276985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802263, 32.500267, 39.288460>,  <27.408743, 32.569374, 39.307587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802263, 32.500267, 39.288460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029461, -0.418943, 0.907535,
		-0.176820, -0.891426, -0.417247,
		0.983802, -0.172763, -0.047815,
		28.097404, 32.448437, 39.274117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572239, 31.892864, 39.310398>,  <27.408743, 32.569374, 39.307587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572239, 31.892864, 39.310398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926489, 32.025913, 39.440033>,  <28.139038, 32.105743, 39.517815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926489, 32.025913, 39.440033>,  <27.572239, 31.892864, 39.310398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926489, 32.025913, 39.440033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062565, -0.606041, 0.792969,
		0.460172, -0.722548, -0.515913,
		0.885623, 0.332623, 0.324089,
		28.192175, 32.125702, 39.537258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909737, 31.281162, 39.485195>,  <27.572239, 31.892864, 39.310398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909737, 31.281162, 39.485195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071388, 31.602898, 39.659424>,  <28.168379, 31.795938, 39.763962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071388, 31.602898, 39.659424>,  <27.909737, 31.281162, 39.485195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071388, 31.602898, 39.659424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038849, -0.460666, 0.886723,
		0.913877, -0.375272, -0.154921,
		0.404129, 0.804337, 0.435570,
		28.192627, 31.844198, 39.790096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469395, 31.061508, 39.907982>,  <27.909737, 31.281162, 39.485195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469395, 31.061508, 39.907982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313204, 31.409267, 40.029095>,  <28.219490, 31.617924, 40.101761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313204, 31.409267, 40.029095>,  <28.469395, 31.061508, 39.907982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313204, 31.409267, 40.029095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154762, -0.262219, 0.952518,
		0.907512, 0.418794, -0.032160,
		-0.390476, 0.869398, 0.302780,
		28.196060, 31.670086, 40.119930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898750, 31.224327, 40.468754>,  <28.469395, 31.061508, 39.907982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898750, 31.224327, 40.468754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573112, 31.454590, 40.499393>,  <28.377729, 31.592749, 40.517776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573112, 31.454590, 40.499393>,  <28.898750, 31.224327, 40.468754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573112, 31.454590, 40.499393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046727, -0.196401, 0.979410,
		0.578850, 0.793753, 0.186788,
		-0.814094, 0.575659, 0.076597,
		28.328884, 31.627287, 40.522373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004892, 31.497681, 41.109287>,  <28.898750, 31.224327, 40.468754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004892, 31.497681, 41.109287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615126, 31.542721, 41.031487>,  <28.381266, 31.569744, 40.984806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615126, 31.542721, 41.031487>,  <29.004892, 31.497681, 41.109287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615126, 31.542721, 41.031487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220056, -0.302179, 0.927504,
		0.045663, 0.946578, 0.319227,
		-0.974418, 0.112601, -0.194502,
		28.322800, 31.576502, 40.973137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759623, 31.805647, 41.686646>,  <29.004892, 31.497681, 41.109287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759623, 31.805647, 41.686646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423367, 31.675758, 41.513264>,  <28.221613, 31.597826, 41.409237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423367, 31.675758, 41.513264>,  <28.759623, 31.805647, 41.686646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423367, 31.675758, 41.513264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230937, -0.509005, 0.829206,
		-0.489888, 0.797164, 0.352900,
		-0.840641, -0.324721, -0.433450,
		28.171175, 31.578342, 41.383228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211185, 32.009998, 42.100365>,  <28.759623, 31.805647, 41.686646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211185, 32.009998, 42.100365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110535, 31.671547, 41.912426>,  <28.050144, 31.468477, 41.799664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110535, 31.671547, 41.912426>,  <28.211185, 32.009998, 42.100365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110535, 31.671547, 41.912426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261244, -0.408066, 0.874776,
		-0.931899, 0.342863, -0.118364,
		-0.251628, -0.846124, -0.469847,
		28.035046, 31.417709, 41.771473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672523, 31.811333, 42.468307>,  <28.211185, 32.009998, 42.100365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672523, 31.811333, 42.468307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793772, 31.478426, 42.282642>,  <27.866520, 31.278681, 42.171242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793772, 31.478426, 42.282642>,  <27.672523, 31.811333, 42.468307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793772, 31.478426, 42.282642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183067, -0.528863, 0.828728,
		-0.935203, -0.166232, -0.312670,
		0.303120, -0.832269, -0.464162,
		27.884708, 31.228745, 42.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188398, 31.386288, 42.517357>,  <27.672523, 31.811333, 42.468307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188398, 31.386288, 42.517357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502218, 31.148071, 42.448284>,  <27.690510, 31.005142, 42.406841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502218, 31.148071, 42.448284>,  <27.188398, 31.386288, 42.517357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502218, 31.148071, 42.448284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288543, -0.597132, 0.748449,
		-0.548841, -0.537370, -0.640318,
		0.784548, -0.595539, -0.172677,
		27.737583, 30.969410, 42.396481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983665, 30.856289, 42.936310>,  <27.188398, 31.386288, 42.517357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983665, 30.856289, 42.936310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371069, 30.783148, 42.868713>,  <27.603510, 30.739264, 42.828156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371069, 30.783148, 42.868713>,  <26.983665, 30.856289, 42.936310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371069, 30.783148, 42.868713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016800, -0.629189, 0.777071,
		-0.248420, -0.755438, -0.606301,
		0.968507, -0.182854, -0.168994,
		27.661621, 30.728292, 42.818016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045183, 30.046106, 42.871677>,  <26.983665, 30.856289, 42.936310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045183, 30.046106, 42.871677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395426, 30.219326, 42.957264>,  <27.605572, 30.323257, 43.008617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395426, 30.219326, 42.957264>,  <27.045183, 30.046106, 42.871677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395426, 30.219326, 42.957264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136893, -0.647292, 0.749849,
		0.463224, -0.627280, -0.626053,
		0.875605, 0.433051, 0.213971,
		27.658108, 30.349241, 43.021454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464876, 29.383871, 42.971855>,  <27.045183, 30.046106, 42.871677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464876, 29.383871, 42.971855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632338, 29.708117, 43.135628>,  <27.732815, 29.902664, 43.233891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632338, 29.708117, 43.135628>,  <27.464876, 29.383871, 42.971855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632338, 29.708117, 43.135628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154296, -0.380801, 0.911693,
		0.894942, -0.444858, -0.034349,
		0.418654, 0.810612, 0.409435,
		27.757935, 29.951300, 43.258457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831738, 29.106617, 43.428707>,  <27.464876, 29.383871, 42.971855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831738, 29.106617, 43.428707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826321, 29.487844, 43.549686>,  <27.823071, 29.716581, 43.622272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826321, 29.487844, 43.549686>,  <27.831738, 29.106617, 43.428707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826321, 29.487844, 43.549686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043496, -0.301627, 0.952433,
		0.998962, 0.026053, -0.037370,
		-0.013542, 0.953070, 0.302447,
		27.822258, 29.773766, 43.640419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467037, 29.322948, 43.863483>,  <27.831738, 29.106617, 43.428707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467037, 29.322948, 43.863483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142101, 29.532219, 43.966549>,  <27.947140, 29.657782, 44.028389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142101, 29.532219, 43.966549>,  <28.467037, 29.322948, 43.863483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142101, 29.532219, 43.966549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059612, -0.365017, 0.929091,
		0.580130, 0.770097, 0.265330,
		-0.812340, 0.523176, 0.257664,
		27.898399, 29.689173, 44.043850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616243, 29.627970, 44.551968>,  <28.467037, 29.322948, 43.863483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616243, 29.627970, 44.551968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217035, 29.649742, 44.539371>,  <27.977510, 29.662806, 44.531815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217035, 29.649742, 44.539371>,  <28.616243, 29.627970, 44.551968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217035, 29.649742, 44.539371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047918, -0.334064, 0.941332,
		0.040719, 0.940978, 0.336011,
		-0.998021, 0.054431, -0.031487,
		27.917629, 29.666071, 44.529926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443113, 29.786713, 45.260853>,  <28.616243, 29.627970, 44.551968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443113, 29.786713, 45.260853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095066, 29.665710, 45.105217>,  <27.886238, 29.593109, 45.011837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095066, 29.665710, 45.105217>,  <28.443113, 29.786713, 45.260853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095066, 29.665710, 45.105217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262589, -0.383527, 0.885412,
		-0.417066, 0.872581, 0.254279,
		-0.870116, -0.302504, -0.389087,
		27.834030, 29.574959, 44.988491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967480, 30.073565, 45.797161>,  <28.443113, 29.786713, 45.260853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967480, 30.073565, 45.797161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796286, 29.778748, 45.587936>,  <27.693569, 29.601858, 45.462402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796286, 29.778748, 45.587936>,  <27.967480, 30.073565, 45.797161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796286, 29.778748, 45.587936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039140, -0.563090, 0.825468,
		-0.902937, 0.373762, 0.212147,
		-0.427987, -0.737042, -0.523064,
		27.667891, 29.557634, 45.431019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429850, 29.805180, 46.229698>,  <27.967480, 30.073565, 45.797161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429850, 29.805180, 46.229698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479870, 29.507881, 45.966808>,  <27.509882, 29.329502, 45.809074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479870, 29.507881, 45.966808>,  <27.429850, 29.805180, 46.229698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479870, 29.507881, 45.966808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113405, -0.668792, 0.734750,
		-0.985648, -0.017349, -0.167922,
		0.125052, -0.743247, -0.657225,
		27.517385, 29.284906, 45.769642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845938, 29.345676, 46.316662>,  <27.429850, 29.805180, 46.229698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845938, 29.345676, 46.316662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149254, 29.127222, 46.174263>,  <27.331244, 28.996149, 46.088825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149254, 29.127222, 46.174263>,  <26.845938, 29.345676, 46.316662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149254, 29.127222, 46.174263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016129, -0.530192, 0.847724,
		-0.651718, -0.648563, -0.393231,
		0.758290, -0.546134, -0.355997,
		27.376741, 28.963383, 46.067463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715233, 28.669317, 46.573608>,  <26.845938, 29.345676, 46.316662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715233, 28.669317, 46.573608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094618, 28.646547, 46.448914>,  <27.322248, 28.632885, 46.374096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094618, 28.646547, 46.448914>,  <26.715233, 28.669317, 46.573608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094618, 28.646547, 46.448914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150917, -0.783874, 0.602300,
		-0.278647, -0.618305, -0.734884,
		0.948462, -0.056923, -0.311736,
		27.379156, 28.629471, 46.355392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886379, 27.961920, 46.595913>,  <26.715233, 28.669317, 46.573608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886379, 27.961920, 46.595913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247881, 28.133099, 46.592144>,  <27.464783, 28.235806, 46.589882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247881, 28.133099, 46.592144>,  <26.886379, 27.961920, 46.595913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247881, 28.133099, 46.592144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272134, -0.557438, 0.784351,
		0.330412, -0.711423, -0.620246,
		0.903754, 0.427949, -0.009418,
		27.519007, 28.261484, 46.589317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397326, 27.372263, 46.512634>,  <26.886379, 27.961920, 46.595913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397326, 27.372263, 46.512634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576111, 27.682671, 46.690632>,  <27.683382, 27.868916, 46.797428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576111, 27.682671, 46.690632>,  <27.397326, 27.372263, 46.512634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576111, 27.682671, 46.690632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278680, -0.593482, 0.755060,
		0.850036, -0.213475, -0.481526,
		0.446964, 0.776020, 0.444990,
		27.710199, 27.915476, 46.824127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019001, 27.095268, 46.803745>,  <27.397326, 27.372263, 46.512634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019001, 27.095268, 46.803745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961674, 27.429123, 47.016476>,  <27.927279, 27.629436, 47.144115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961674, 27.429123, 47.016476>,  <28.019001, 27.095268, 46.803745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961674, 27.429123, 47.016476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140216, -0.514831, 0.845747,
		0.979694, 0.195781, -0.043245,
		-0.143317, 0.834637, 0.531828,
		27.918678, 27.679514, 47.176025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581093, 27.153044, 47.371559>,  <28.019001, 27.095268, 46.803745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581093, 27.153044, 47.371559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251785, 27.358654, 47.467899>,  <28.054201, 27.482019, 47.525703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251785, 27.358654, 47.467899>,  <28.581093, 27.153044, 47.371559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251785, 27.358654, 47.467899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023531, -0.454829, 0.890268,
		0.567164, 0.727262, 0.386542,
		-0.823269, 0.514023, 0.240850,
		28.004805, 27.512861, 47.540154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710781, 27.434147, 48.049561>,  <28.581093, 27.153044, 47.371559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710781, 27.434147, 48.049561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314600, 27.415106, 47.997810>,  <28.076891, 27.403681, 47.966763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314600, 27.415106, 47.997810>,  <28.710781, 27.434147, 48.049561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314600, 27.415106, 47.997810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095155, -0.442961, 0.891477,
		-0.099746, 0.895276, 0.434202,
		-0.990453, -0.047605, -0.129374,
		28.017464, 27.400824, 47.959000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541344, 27.582273, 48.691383>,  <28.710781, 27.434147, 48.049561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541344, 27.582273, 48.691383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208124, 27.457548, 48.508602>,  <28.008192, 27.382713, 48.398933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208124, 27.457548, 48.508602>,  <28.541344, 27.582273, 48.691383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208124, 27.457548, 48.508602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415511, -0.192646, 0.888953,
		-0.365217, 0.930409, 0.030922,
		-0.833047, -0.311812, -0.456953,
		27.958210, 27.364004, 48.371517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946198, 27.956097, 48.904068>,  <28.541344, 27.582273, 48.691383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946198, 27.956097, 48.904068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798183, 27.607046, 48.776573>,  <27.709375, 27.397615, 48.700077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798183, 27.607046, 48.776573>,  <27.946198, 27.956097, 48.904068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798183, 27.607046, 48.776573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073079, -0.314688, 0.946378,
		-0.926139, 0.373487, 0.052675,
		-0.370035, -0.872628, -0.318739,
		27.687172, 27.345257, 48.680950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430916, 27.764008, 49.423237>,  <27.946198, 27.956097, 48.904068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430916, 27.764008, 49.423237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499310, 27.421886, 49.227596>,  <27.540346, 27.216614, 49.110210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499310, 27.421886, 49.227596>,  <27.430916, 27.764008, 49.423237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499310, 27.421886, 49.227596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128645, -0.511542, 0.849573,
		-0.976840, -0.082342, -0.197496,
		0.170983, -0.855304, -0.489102,
		27.550604, 27.165295, 49.080864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866543, 27.232777, 49.580276>,  <27.430916, 27.764008, 49.423237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866543, 27.232777, 49.580276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176371, 27.006372, 49.467373>,  <27.362268, 26.870531, 49.399632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176371, 27.006372, 49.467373>,  <26.866543, 27.232777, 49.580276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176371, 27.006372, 49.467373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077890, -0.528241, 0.845515,
		-0.627672, -0.632926, -0.453247,
		0.774572, -0.566009, -0.282263,
		27.408743, 26.836569, 49.382694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661301, 26.618448, 49.821880>,  <26.866543, 27.232777, 49.580276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661301, 26.618448, 49.821880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058432, 26.608492, 49.775105>,  <27.296711, 26.602518, 49.747040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058432, 26.608492, 49.775105>,  <26.661301, 26.618448, 49.821880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058432, 26.608492, 49.775105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077806, -0.608137, 0.790010,
		-0.090779, -0.793442, -0.601838,
		0.992827, -0.024890, -0.116940,
		27.356279, 26.601025, 49.740021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898130, 25.940601, 49.948460>,  <26.661301, 26.618448, 49.821880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898130, 25.940601, 49.948460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204731, 26.180763, 50.039669>,  <27.388691, 26.324860, 50.094395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204731, 26.180763, 50.039669>,  <26.898130, 25.940601, 49.948460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204731, 26.180763, 50.039669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207409, -0.567426, 0.796875,
		0.607833, -0.563510, -0.559461,
		0.766499, 0.600404, 0.228023,
		27.434681, 26.360884, 50.108074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816580, 25.274521, 49.835365>,  <26.898130, 25.940601, 49.948460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816580, 25.274521, 49.835365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061787, 25.487324, 49.601727>,  <27.208912, 25.615005, 49.461544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061787, 25.487324, 49.601727>,  <26.816580, 25.274521, 49.835365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061787, 25.487324, 49.601727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789186, -0.377411, 0.484506,
		0.037315, -0.757976, -0.651214,
		0.613019, 0.532009, -0.584101,
		27.245693, 25.646927, 49.426495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375593, 24.856905, 49.516506>,  <26.816580, 25.274521, 49.835365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375593, 24.856905, 49.516506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534706, 25.223814, 49.524300>,  <27.630175, 25.443960, 49.528976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534706, 25.223814, 49.524300>,  <27.375593, 24.856905, 49.516506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534706, 25.223814, 49.524300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876177, -0.386092, 0.288526,
		0.272180, -0.097699, -0.957274,
		0.397784, 0.917272, 0.019485,
		27.654041, 25.498995, 49.530144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044930, 24.838888, 49.197258>,  <27.375593, 24.856905, 49.516506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044930, 24.838888, 49.197258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067415, 25.157938, 49.437469>,  <28.080908, 25.349367, 49.581596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067415, 25.157938, 49.437469>,  <28.044930, 24.838888, 49.197258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067415, 25.157938, 49.437469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838026, -0.364653, 0.405883,
		0.542728, 0.480444, -0.688927,
		0.056216, 0.797623, 0.600532,
		28.084280, 25.397224, 49.617630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772266, 25.061779, 49.301540>,  <28.044930, 24.838888, 49.197258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772266, 25.061779, 49.301540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552782, 25.162645, 49.620369>,  <28.421091, 25.223166, 49.811668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552782, 25.162645, 49.620369>,  <28.772266, 25.061779, 49.301540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552782, 25.162645, 49.620369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684295, -0.412244, 0.601494,
		0.480265, 0.875481, 0.053648,
		-0.548713, 0.252165, 0.797074,
		28.388168, 25.238295, 49.859489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187136, 25.455135, 49.828213>,  <28.772266, 25.061779, 49.301540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187136, 25.455135, 49.828213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890017, 25.226690, 49.967976>,  <28.711746, 25.089624, 50.051834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890017, 25.226690, 49.967976>,  <29.187136, 25.455135, 49.828213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890017, 25.226690, 49.967976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648736, -0.484931, 0.586501,
		-0.165517, 0.662325, 0.730705,
		-0.742795, -0.571111, 0.349410,
		28.667177, 25.055357, 50.072800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864454, 25.482183, 49.475155>,  <29.187136, 25.455135, 49.828213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864454, 25.482183, 49.475155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762831, 25.096142, 49.500542>,  <29.701857, 24.864517, 49.515774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762831, 25.096142, 49.500542>,  <29.864454, 25.482183, 49.475155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762831, 25.096142, 49.500542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396753, 0.044147, -0.916863,
		0.882066, -0.258118, -0.394124,
		-0.254058, -0.965104, 0.063468,
		29.686613, 24.806610, 49.519581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284597, 24.908161, 49.032913>,  <29.864454, 25.482183, 49.475155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284597, 24.908161, 49.032913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891663, 24.877489, 49.101185>,  <29.655901, 24.859085, 49.142147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891663, 24.877489, 49.101185>,  <30.284597, 24.908161, 49.032913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891663, 24.877489, 49.101185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176612, 0.078700, -0.981129,
		0.061779, -0.993947, -0.090849,
		-0.982340, -0.076658, 0.170681,
		29.596962, 24.854485, 49.152390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100857, 24.528856, 48.570007>,  <30.284597, 24.908161, 49.032913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100857, 24.528856, 48.570007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771290, 24.741701, 48.647995>,  <29.573549, 24.869408, 48.694790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771290, 24.741701, 48.647995>,  <30.100857, 24.528856, 48.570007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771290, 24.741701, 48.647995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190032, 0.064706, -0.979643,
		-0.533897, -0.844197, 0.047807,
		-0.823919, 0.532114, 0.194971,
		29.524115, 24.901335, 48.706486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565685, 24.212757, 48.138050>,  <30.100857, 24.528856, 48.570007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565685, 24.212757, 48.138050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520966, 24.602577, 48.215771>,  <29.494133, 24.836470, 48.262402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520966, 24.602577, 48.215771>,  <29.565685, 24.212757, 48.138050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520966, 24.602577, 48.215771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138453, 0.178344, -0.974179,
		-0.984038, -0.135815, 0.114990,
		-0.111801, 0.974550, 0.194301,
		29.487425, 24.894941, 48.274059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135002, 24.464767, 47.628922>,  <29.565685, 24.212757, 48.138050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135002, 24.464767, 47.628922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276356, 24.818110, 47.752087>,  <29.361168, 25.030115, 47.825985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276356, 24.818110, 47.752087>,  <29.135002, 24.464767, 47.628922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276356, 24.818110, 47.752087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022609, 0.337115, -0.941192,
		-0.935206, 0.325640, 0.139102,
		0.353383, 0.883353, 0.307909,
		29.382370, 25.083115, 47.844460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671907, 25.006266, 47.379349>,  <29.135002, 24.464767, 47.628922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671907, 25.006266, 47.379349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027985, 25.179594, 47.435616>,  <29.241631, 25.283590, 47.469376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027985, 25.179594, 47.435616>,  <28.671907, 25.006266, 47.379349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027985, 25.179594, 47.435616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031500, 0.366576, -0.929855,
		-0.454493, 0.823319, 0.339973,
		0.890193, 0.433322, 0.140672,
		29.295042, 25.309591, 47.477818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547421, 25.609632, 47.003445>,  <28.671907, 25.006266, 47.379349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547421, 25.609632, 47.003445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942122, 25.620579, 47.067406>,  <29.178942, 25.627146, 47.105782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942122, 25.620579, 47.067406>,  <28.547421, 25.609632, 47.003445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942122, 25.620579, 47.067406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150807, 0.208544, -0.966316,
		-0.059790, 0.977630, 0.201655,
		0.986754, 0.027365, 0.159902,
		29.238148, 25.628788, 47.115376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826105, 25.989578, 46.488342>,  <28.547421, 25.609632, 47.003445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826105, 25.989578, 46.488342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169237, 25.842894, 46.632366>,  <29.375116, 25.754883, 46.718781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169237, 25.842894, 46.632366>,  <28.826105, 25.989578, 46.488342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169237, 25.842894, 46.632366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407392, 0.058114, -0.911403,
		0.313298, 0.928518, 0.199247,
		0.857832, -0.366712, 0.360063,
		29.426586, 25.732880, 46.740387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379457, 26.452015, 46.274033>,  <28.826105, 25.989578, 46.488342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379457, 26.452015, 46.274033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549837, 26.094040, 46.327183>,  <29.652065, 25.879255, 46.359074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549837, 26.094040, 46.327183>,  <29.379457, 26.452015, 46.274033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549837, 26.094040, 46.327183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441247, 0.077264, -0.894053,
		0.789854, 0.439452, 0.427799,
		0.425947, -0.894937, 0.132880,
		29.677622, 25.825560, 46.367046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060207, 26.556543, 46.042763>,  <29.379457, 26.452015, 46.274033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060207, 26.556543, 46.042763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945217, 26.174122, 46.019707>,  <29.876223, 25.944670, 46.005871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945217, 26.174122, 46.019707>,  <30.060207, 26.556543, 46.042763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945217, 26.174122, 46.019707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243603, -0.014779, -0.969762,
		0.926291, -0.292825, 0.237146,
		-0.287475, -0.956052, -0.057644,
		29.858974, 25.887306, 46.002415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588524, 26.251425, 45.628002>,  <30.060207, 26.556543, 46.042763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588524, 26.251425, 45.628002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281113, 25.996786, 45.602360>,  <30.096666, 25.844002, 45.586975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281113, 25.996786, 45.602360>,  <30.588524, 26.251425, 45.628002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281113, 25.996786, 45.602360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130400, -0.057759, -0.989778,
		0.626388, -0.769030, 0.127402,
		-0.768527, -0.636598, -0.064102,
		30.050554, 25.805807, 45.583130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770479, 25.803093, 45.166706>,  <30.588524, 26.251425, 45.628002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770479, 25.803093, 45.166706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372644, 25.761650, 45.163582>,  <30.133944, 25.736784, 45.161705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372644, 25.761650, 45.163582>,  <30.770479, 25.803093, 45.166706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372644, 25.761650, 45.163582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021195, -0.128697, -0.991457,
		0.101716, -0.986257, 0.130197,
		-0.994588, -0.103607, -0.007813,
		30.074268, 25.730568, 45.161240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802921, 25.202749, 44.721886>,  <30.770479, 25.803093, 45.166706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802921, 25.202749, 44.721886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453495, 25.397196, 44.731445>,  <30.243839, 25.513865, 44.737183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453495, 25.397196, 44.731445>,  <30.802921, 25.202749, 44.721886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453495, 25.397196, 44.731445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082161, 0.195691, -0.977218,
		-0.479719, -0.851701, -0.210889,
		-0.873567, 0.486117, 0.023901,
		30.191425, 25.543032, 44.738617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616755, 25.132032, 44.068066>,  <30.802921, 25.202749, 44.721886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616755, 25.132032, 44.068066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370171, 25.424498, 44.184944>,  <30.222219, 25.599976, 44.255070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370171, 25.424498, 44.184944>,  <30.616755, 25.132032, 44.068066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370171, 25.424498, 44.184944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114456, 0.283940, -0.951986,
		-0.779021, -0.620307, -0.091352,
		-0.616462, 0.731162, 0.292193,
		30.185232, 25.643847, 44.272602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105377, 25.188204, 43.611614>,  <30.616755, 25.132032, 44.068066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105377, 25.188204, 43.611614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086487, 25.553196, 43.774166>,  <30.075151, 25.772192, 43.871696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086487, 25.553196, 43.774166>,  <30.105377, 25.188204, 43.611614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086487, 25.553196, 43.774166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147694, 0.395984, -0.906302,
		-0.987905, -0.102822, 0.116067,
		-0.047227, 0.912482, 0.406381,
		30.072319, 25.826941, 43.896080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751192, 25.593723, 43.142117>,  <30.105377, 25.188204, 43.611614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751192, 25.593723, 43.142117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868725, 25.882591, 43.392601>,  <29.939245, 26.055912, 43.542892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868725, 25.882591, 43.392601>,  <29.751192, 25.593723, 43.142117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868725, 25.882591, 43.392601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148922, 0.681714, -0.716302,
		-0.944185, 0.117215, 0.307856,
		0.293831, 0.722168, 0.626208,
		29.956875, 26.099241, 43.580463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278587, 26.282524, 43.137447>,  <29.751192, 25.593723, 43.142117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278587, 26.282524, 43.137447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658972, 26.360714, 43.233334>,  <29.887203, 26.407627, 43.290867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658972, 26.360714, 43.233334>,  <29.278587, 26.282524, 43.137447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658972, 26.360714, 43.233334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065896, 0.629180, -0.774461,
		-0.302212, 0.752278, 0.585444,
		0.950960, 0.195473, 0.239718,
		29.944260, 26.419355, 43.305248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368885, 26.950693, 43.093159>,  <29.278587, 26.282524, 43.137447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368885, 26.950693, 43.093159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734940, 26.792040, 43.064293>,  <29.954573, 26.696848, 43.046974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734940, 26.792040, 43.064293>,  <29.368885, 26.950693, 43.093159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734940, 26.792040, 43.064293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211208, 0.624170, -0.752199,
		0.343388, 0.673123, 0.654973,
		0.915137, -0.396632, -0.072163,
		30.009481, 26.673050, 43.042645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737108, 27.439825, 42.832573>,  <29.368885, 26.950693, 43.093159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737108, 27.439825, 42.832573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002266, 27.144514, 42.782745>,  <30.161360, 26.967327, 42.752850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002266, 27.144514, 42.782745>,  <29.737108, 27.439825, 42.832573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002266, 27.144514, 42.782745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380216, 0.475270, -0.793444,
		0.644986, 0.478606, 0.595759,
		0.662894, -0.738278, -0.124569,
		30.201134, 26.923031, 42.745373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402916, 27.743813, 42.718227>,  <29.737108, 27.439825, 42.832573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402916, 27.743813, 42.718227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405184, 27.381004, 42.549809>,  <30.406544, 27.163321, 42.448757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405184, 27.381004, 42.549809>,  <30.402916, 27.743813, 42.718227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405184, 27.381004, 42.549809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340720, 0.397615, -0.851946,
		0.940148, -0.138630, 0.311294,
		0.005670, -0.907019, -0.421051,
		30.406885, 27.108898, 42.423492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013365, 27.702770, 42.391441>,  <30.402916, 27.743813, 42.718227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013365, 27.702770, 42.391441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770683, 27.436447, 42.217728>,  <30.625074, 27.276653, 42.113499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770683, 27.436447, 42.217728>,  <31.013365, 27.702770, 42.391441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770683, 27.436447, 42.217728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059693, 0.506623, -0.860099,
		0.792683, -0.547750, -0.267626,
		-0.606704, -0.665810, -0.434289,
		30.588673, 27.236704, 42.087440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237865, 27.514969, 41.727146>,  <31.013365, 27.702770, 42.391441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237865, 27.514969, 41.727146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871378, 27.360392, 41.684803>,  <30.651485, 27.267645, 41.659397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871378, 27.360392, 41.684803>,  <31.237865, 27.514969, 41.727146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871378, 27.360392, 41.684803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061164, 0.395986, -0.916217,
		0.395985, -0.832980, -0.386445,
		0.916217, 0.386445, 0.105856,
		30.596512, 27.244457, 41.653046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239611, 27.318125, 41.024872>,  <31.237865, 27.514969, 41.727146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239611, 27.318125, 41.024872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869566, 27.380833, 41.163200>,  <30.647539, 27.418457, 41.246197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869566, 27.380833, 41.163200>,  <31.239611, 27.318125, 41.024872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869566, 27.380833, 41.163200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236652, 0.474180, -0.848026,
		-0.296929, -0.866358, -0.401569,
		-0.925110, 0.156771, 0.345823,
		30.592033, 27.427864, 41.266949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913788, 27.101488, 40.496437>,  <31.239611, 27.318125, 41.024872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913788, 27.101488, 40.496437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699543, 27.356604, 40.717831>,  <30.570995, 27.509672, 40.850666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699543, 27.356604, 40.717831>,  <30.913788, 27.101488, 40.496437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699543, 27.356604, 40.717831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133407, 0.583290, -0.801234,
		-0.833860, -0.502989, -0.227331,
		-0.535612, 0.637790, 0.553484,
		30.538860, 27.547941, 40.883877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418934, 27.274654, 40.085136>,  <30.913788, 27.101488, 40.496437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418934, 27.274654, 40.085136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446674, 27.574823, 40.348061>,  <30.463318, 27.754925, 40.505814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446674, 27.574823, 40.348061>,  <30.418934, 27.274654, 40.085136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446674, 27.574823, 40.348061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165022, 0.658450, -0.734310,
		-0.983849, -0.057545, 0.169501,
		0.069352, 0.750421, 0.657311,
		30.467480, 27.799950, 40.545254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850742, 27.648912, 39.864246>,  <30.418934, 27.274654, 40.085136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850742, 27.648912, 39.864246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072798, 27.892694, 40.090656>,  <30.206030, 28.038963, 40.226501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072798, 27.892694, 40.090656>,  <29.850742, 27.648912, 39.864246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072798, 27.892694, 40.090656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446321, 0.792516, -0.415590,
		-0.701870, -0.021920, 0.711968,
		0.555136, 0.609456, 0.566027,
		30.239338, 28.075531, 40.260464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404369, 28.217184, 40.021503>,  <29.850742, 27.648912, 39.864246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404369, 28.217184, 40.021503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764992, 28.356293, 40.124458>,  <29.981365, 28.439758, 40.186234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764992, 28.356293, 40.124458>,  <29.404369, 28.217184, 40.021503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764992, 28.356293, 40.124458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183661, 0.846260, -0.500113,
		-0.391744, 0.403608, 0.826824,
		0.901558, 0.347771, 0.257390,
		30.035460, 28.460625, 40.201675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397852, 28.987659, 40.222961>,  <29.404369, 28.217184, 40.021503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397852, 28.987659, 40.222961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774918, 28.908092, 40.115765>,  <30.001156, 28.860352, 40.051445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774918, 28.908092, 40.115765>,  <29.397852, 28.987659, 40.222961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774918, 28.908092, 40.115765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016130, 0.829193, -0.558730,
		0.333359, 0.522371, 0.784857,
		0.942662, -0.198917, -0.267993,
		30.057716, 28.848417, 40.035366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688726, 29.723129, 40.036823>,  <29.397852, 28.987659, 40.222961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688726, 29.723129, 40.036823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943966, 29.446648, 39.901138>,  <30.097109, 29.280758, 39.819725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943966, 29.446648, 39.901138>,  <29.688726, 29.723129, 40.036823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943966, 29.446648, 39.901138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298845, 0.628361, -0.718230,
		0.709594, 0.356928, 0.607519,
		0.638097, -0.691205, -0.339215,
		30.135395, 29.239286, 39.799374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395748, 30.051575, 39.894409>,  <29.688726, 29.723129, 40.036823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395748, 30.051575, 39.894409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362349, 29.747890, 39.636223>,  <30.342308, 29.565680, 39.481312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362349, 29.747890, 39.636223>,  <30.395748, 30.051575, 39.894409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362349, 29.747890, 39.636223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271589, 0.605868, -0.747773,
		0.958784, -0.237741, 0.155603,
		-0.083501, -0.759212, -0.645464,
		30.337297, 29.520126, 39.442585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772013, 30.208487, 39.412651>,  <30.395748, 30.051575, 39.894409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772013, 30.208487, 39.412651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587021, 29.923203, 39.201958>,  <30.476027, 29.752031, 39.075542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587021, 29.923203, 39.201958>,  <30.772013, 30.208487, 39.412651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587021, 29.923203, 39.201958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196753, 0.496712, -0.845320,
		0.864524, -0.494578, -0.089393,
		-0.462480, -0.713211, -0.526729,
		30.448277, 29.709240, 39.043938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120193, 30.205647, 38.806225>,  <30.772013, 30.208487, 39.412651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120193, 30.205647, 38.806225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789032, 30.005724, 38.704426>,  <30.590336, 29.885771, 38.643345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789032, 30.005724, 38.704426>,  <31.120193, 30.205647, 38.806225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789032, 30.005724, 38.704426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095070, 0.322140, -0.941906,
		0.552757, -0.804001, -0.219184,
		-0.827902, -0.499807, -0.254501,
		30.540661, 29.855782, 38.628075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249784, 29.880234, 38.151199>,  <31.120193, 30.205647, 38.806225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249784, 29.880234, 38.151199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854366, 29.939053, 38.164803>,  <30.617115, 29.974344, 38.172966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854366, 29.939053, 38.164803>,  <31.249784, 29.880234, 38.151199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854366, 29.939053, 38.164803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036274, 0.450199, -0.892191,
		-0.146504, -0.880737, -0.450375,
		-0.988544, 0.147046, 0.034008,
		30.557802, 29.983166, 38.175007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996880, 29.606060, 37.534863>,  <31.249784, 29.880234, 38.151199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996880, 29.606060, 37.534863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709814, 29.849258, 37.670685>,  <30.537575, 29.995176, 37.752178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709814, 29.849258, 37.670685>,  <30.996880, 29.606060, 37.534863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709814, 29.849258, 37.670685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164499, 0.325794, -0.931020,
		-0.676682, -0.724017, -0.133796,
		-0.717665, 0.607995, 0.339559,
		30.494514, 30.031656, 37.772552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382523, 29.559980, 37.065174>,  <30.996880, 29.606060, 37.534863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382523, 29.559980, 37.065174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339245, 29.905479, 37.262043>,  <30.313278, 30.112780, 37.380165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339245, 29.905479, 37.262043>,  <30.382523, 29.559980, 37.065174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339245, 29.905479, 37.262043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149917, 0.475238, -0.866991,
		-0.982761, -0.167587, 0.078074,
		-0.108193, 0.863750, 0.492169,
		30.306787, 30.164604, 37.409695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712040, 29.915382, 36.812275>,  <30.382523, 29.559980, 37.065174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712040, 29.915382, 36.812275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964855, 30.187202, 36.961266>,  <30.116545, 30.350294, 37.050659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964855, 30.187202, 36.961266>,  <29.712040, 29.915382, 36.812275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964855, 30.187202, 36.961266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033262, 0.456423, -0.889141,
		-0.774223, 0.574361, 0.265874,
		0.632038, 0.679550, 0.372478,
		30.154467, 30.391068, 37.073009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418173, 30.529440, 36.639877>,  <29.712040, 29.915382, 36.812275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418173, 30.529440, 36.639877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806026, 30.596836, 36.710777>,  <30.038738, 30.637274, 36.753319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806026, 30.596836, 36.710777>,  <29.418173, 30.529440, 36.639877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806026, 30.596836, 36.710777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076062, 0.481073, -0.873374,
		-0.232427, 0.860337, 0.453650,
		0.969635, 0.168490, 0.177254,
		30.096916, 30.647383, 36.763954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500950, 31.241066, 36.478333>,  <29.418173, 30.529440, 36.639877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500950, 31.241066, 36.478333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878035, 31.110130, 36.504089>,  <30.104284, 31.031569, 36.519543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878035, 31.110130, 36.504089>,  <29.500950, 31.241066, 36.478333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878035, 31.110130, 36.504089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227126, 0.488355, -0.842569,
		0.244359, 0.808924, 0.534725,
		0.942710, -0.327339, 0.064394,
		30.160849, 31.011929, 36.523407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884880, 31.892010, 36.212566>,  <29.500950, 31.241066, 36.478333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884880, 31.892010, 36.212566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098892, 31.554949, 36.188309>,  <30.227299, 31.352713, 36.173752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098892, 31.554949, 36.188309>,  <29.884880, 31.892010, 36.212566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098892, 31.554949, 36.188309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385548, 0.307411, -0.869972,
		0.751729, 0.442078, 0.489358,
		0.535029, -0.842654, -0.060648,
		30.259401, 31.302153, 36.170113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459307, 32.135162, 35.946434>,  <29.884880, 31.892010, 36.212566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459307, 32.135162, 35.946434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489899, 31.742607, 35.875984>,  <30.508253, 31.507072, 35.833714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489899, 31.742607, 35.875984>,  <30.459307, 32.135162, 35.946434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489899, 31.742607, 35.875984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429430, 0.191842, -0.882489,
		0.899856, -0.008143, 0.436111,
		0.076478, -0.981392, -0.176127,
		30.512842, 31.448189, 35.823147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179384, 31.986084, 35.773914>,  <30.459307, 32.135162, 35.946434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179384, 31.986084, 35.773914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952114, 31.693254, 35.623585>,  <30.815752, 31.517557, 35.533386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952114, 31.693254, 35.623585>,  <31.179384, 31.986084, 35.773914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952114, 31.693254, 35.623585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323274, 0.221417, -0.920037,
		0.756750, -0.644236, 0.110857,
		-0.568175, -0.732076, -0.375822,
		30.781662, 31.473631, 35.510838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625366, 31.627266, 35.328640>,  <31.179384, 31.986084, 35.773914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625366, 31.627266, 35.328640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259129, 31.542749, 35.191792>,  <31.039387, 31.492041, 35.109680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259129, 31.542749, 35.191792>,  <31.625366, 31.627266, 35.328640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259129, 31.542749, 35.191792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248816, 0.370684, -0.894810,
		0.315880, -0.904407, -0.286824,
		-0.915593, -0.211286, -0.342122,
		30.984451, 31.479362, 35.089153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146984, 31.338835, 35.772274>,  <31.625366, 31.627266, 35.328640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146984, 31.338835, 35.772274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532127, 31.446592, 35.779537>,  <32.763214, 31.511248, 35.783894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532127, 31.446592, 35.779537>,  <32.146984, 31.338835, 35.772274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532127, 31.446592, 35.779537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168098, -0.650712, 0.740484,
		0.211297, -0.709930, -0.671828,
		0.962858, 0.269395, 0.018155,
		32.820984, 31.527411, 35.784985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499680, 30.753529, 35.842163>,  <32.146984, 31.338835, 35.772274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499680, 30.753529, 35.842163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746883, 31.043940, 35.962791>,  <32.895206, 31.218187, 36.035168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746883, 31.043940, 35.962791>,  <32.499680, 30.753529, 35.842163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746883, 31.043940, 35.962791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297715, -0.571160, 0.764945,
		0.727620, -0.382959, -0.569132,
		0.618009, 0.726029, 0.301575,
		32.932285, 31.261747, 36.053265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067673, 30.474539, 35.919540>,  <32.499680, 30.753529, 35.842163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067673, 30.474539, 35.919540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120399, 30.793430, 36.155182>,  <33.152035, 30.984766, 36.296566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120399, 30.793430, 36.155182>,  <33.067673, 30.474539, 35.919540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120399, 30.793430, 36.155182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525799, -0.560034, 0.640232,
		0.840333, 0.225356, -0.493007,
		0.131821, 0.797231, 0.589107,
		33.159946, 31.032600, 36.331913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847374, 30.378780, 36.332493>,  <33.067673, 30.474539, 35.919540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847374, 30.378780, 36.332493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639191, 30.650835, 36.539005>,  <33.514282, 30.814068, 36.662910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639191, 30.650835, 36.539005>,  <33.847374, 30.378780, 36.332493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639191, 30.650835, 36.539005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193153, -0.495174, 0.847050,
		0.831757, 0.540571, 0.126346,
		-0.520454, 0.680136, 0.516277,
		33.483055, 30.854876, 36.693890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179394, 30.345882, 36.983391>,  <33.847374, 30.378780, 36.332493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179394, 30.345882, 36.983391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834656, 30.537668, 37.049515>,  <33.627811, 30.652740, 37.089191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834656, 30.537668, 37.049515>,  <34.179394, 30.345882, 36.983391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834656, 30.537668, 37.049515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088533, -0.463184, 0.881829,
		0.499378, 0.745368, 0.441643,
		-0.861849, 0.479466, 0.165314,
		33.576099, 30.681507, 37.099110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220058, 30.748659, 37.633968>,  <34.179394, 30.345882, 36.983391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220058, 30.748659, 37.633968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830353, 30.675953, 37.580647>,  <33.596531, 30.632328, 37.548653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830353, 30.675953, 37.580647>,  <34.220058, 30.748659, 37.633968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830353, 30.675953, 37.580647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041933, -0.434919, 0.899493,
		-0.221475, 0.881933, 0.416104,
		-0.974264, -0.181766, -0.133306,
		33.538074, 30.621424, 37.540653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830379, 31.131332, 38.222836>,  <34.220058, 30.748659, 37.633968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830379, 31.131332, 38.222836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611446, 30.838968, 38.059765>,  <33.480087, 30.663549, 37.961922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611446, 30.838968, 38.059765>,  <33.830379, 31.131332, 38.222836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611446, 30.838968, 38.059765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111485, -0.546454, 0.830035,
		-0.829459, 0.408852, 0.380576,
		-0.547329, -0.730909, -0.407681,
		33.447247, 30.619696, 37.937462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451393, 30.937710, 38.758888>,  <33.830379, 31.131332, 38.222836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451393, 30.937710, 38.758888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440857, 30.625217, 38.509415>,  <33.434536, 30.437721, 38.359730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440857, 30.625217, 38.509415>,  <33.451393, 30.937710, 38.758888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440857, 30.625217, 38.509415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037640, -0.624235, 0.780329,
		-0.998944, -0.002919, 0.045849,
		-0.026343, -0.781231, -0.623686,
		33.432953, 30.390848, 38.322308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049591, 30.490664, 39.151859>,  <33.451393, 30.937710, 38.758888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049591, 30.490664, 39.151859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224159, 30.263432, 38.872768>,  <33.328899, 30.127092, 38.705315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224159, 30.263432, 38.872768>,  <33.049591, 30.490664, 39.151859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224159, 30.263432, 38.872768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008347, -0.777995, 0.628215,
		-0.899702, -0.268345, -0.344278,
		0.436425, -0.568080, -0.697724,
		33.355087, 30.093008, 38.663452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665283, 29.889872, 39.202690>,  <33.049591, 30.490664, 39.151859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665283, 29.889872, 39.202690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017548, 29.792835, 39.039917>,  <33.228905, 29.734613, 38.942253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017548, 29.792835, 39.039917>,  <32.665283, 29.889872, 39.202690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017548, 29.792835, 39.039917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029456, -0.829253, 0.558097,
		-0.472838, -0.503478, -0.723142,
		0.880657, -0.242589, -0.406933,
		33.281746, 29.720058, 38.917839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578857, 29.153261, 39.056332>,  <32.665283, 29.889872, 39.202690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578857, 29.153261, 39.056332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964119, 29.256332, 39.087162>,  <33.195274, 29.318174, 39.105659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964119, 29.256332, 39.087162>,  <32.578857, 29.153261, 39.056332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964119, 29.256332, 39.087162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119905, -0.667894, 0.734534,
		0.240751, -0.698226, -0.674180,
		0.963152, 0.257678, 0.077075,
		33.253063, 29.333635, 39.110283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859188, 28.583113, 38.985748>,  <32.578857, 29.153261, 39.056332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859188, 28.583113, 38.985748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118118, 28.816423, 39.182018>,  <33.273476, 28.956409, 39.299782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118118, 28.816423, 39.182018>,  <32.859188, 28.583113, 38.985748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118118, 28.816423, 39.182018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025966, -0.660248, 0.750599,
		0.761774, -0.473138, -0.442539,
		0.647322, 0.583278, 0.490674,
		33.312313, 28.991407, 39.329220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463711, 28.172255, 39.129253>,  <32.859188, 28.583113, 38.985748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463711, 28.172255, 39.129253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523659, 28.472473, 39.386692>,  <33.559628, 28.652605, 39.541157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523659, 28.472473, 39.386692>,  <33.463711, 28.172255, 39.129253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523659, 28.472473, 39.386692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122316, -0.660024, 0.741220,
		0.981111, -0.032363, -0.190720,
		0.149868, 0.750547, 0.643598,
		33.568619, 28.697638, 39.579773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094814, 28.031118, 39.565598>,  <33.463711, 28.172255, 39.129253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094814, 28.031118, 39.565598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870476, 28.278595, 39.785660>,  <33.735874, 28.427080, 39.917698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870476, 28.278595, 39.785660>,  <34.094814, 28.031118, 39.565598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870476, 28.278595, 39.785660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287278, -0.477795, 0.830171,
		0.776481, 0.623647, 0.090234,
		-0.560847, 0.618690, 0.550158,
		33.702221, 28.464201, 39.950706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577042, 28.127338, 40.161087>,  <34.094814, 28.031118, 39.565598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577042, 28.127338, 40.161087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223152, 28.252884, 40.298927>,  <34.010818, 28.328211, 40.381630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223152, 28.252884, 40.298927>,  <34.577042, 28.127338, 40.161087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223152, 28.252884, 40.298927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179522, -0.452828, 0.873338,
		0.430155, 0.834527, 0.344283,
		-0.884725, 0.313864, 0.344602,
		33.957733, 28.347044, 40.402309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683460, 28.221197, 40.865089>,  <34.577042, 28.127338, 40.161087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683460, 28.221197, 40.865089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284679, 28.210852, 40.835640>,  <34.045410, 28.204643, 40.817970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284679, 28.210852, 40.835640>,  <34.683460, 28.221197, 40.865089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284679, 28.210852, 40.835640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060149, -0.346331, 0.936182,
		-0.049713, 0.937756, 0.343719,
		-0.996951, -0.025866, -0.073622,
		33.985596, 28.203093, 40.813553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420666, 28.435009, 41.549370>,  <34.683460, 28.221197, 40.865089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420666, 28.435009, 41.549370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130581, 28.224714, 41.371529>,  <33.956532, 28.098537, 41.264824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130581, 28.224714, 41.371529>,  <34.420666, 28.435009, 41.549370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130581, 28.224714, 41.371529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241333, -0.410675, 0.879264,
		-0.644847, 0.744949, 0.170949,
		-0.725211, -0.525734, -0.444603,
		33.913017, 28.066994, 41.238148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775185, 28.530464, 41.987965>,  <34.420666, 28.435009, 41.549370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775185, 28.530464, 41.987965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729633, 28.206076, 41.758404>,  <33.702301, 28.011442, 41.620667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729633, 28.206076, 41.758404>,  <33.775185, 28.530464, 41.987965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729633, 28.206076, 41.758404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351522, -0.507399, 0.786752,
		-0.929228, 0.291333, -0.227291,
		-0.113879, -0.810969, -0.573899,
		33.695469, 27.962786, 41.586235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097755, 28.401884, 42.027111>,  <33.775185, 28.530464, 41.987965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097755, 28.401884, 42.027111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266628, 28.057163, 41.914642>,  <33.367950, 27.850330, 41.847160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266628, 28.057163, 41.914642>,  <33.097755, 28.401884, 42.027111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266628, 28.057163, 41.914642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314476, -0.430145, 0.846215,
		-0.850218, -0.268831, -0.452615,
		0.422179, -0.861803, -0.281176,
		33.393284, 27.798622, 41.830288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563931, 27.963100, 42.067776>,  <33.097755, 28.401884, 42.027111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563931, 27.963100, 42.067776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888023, 27.729523, 42.047672>,  <33.082481, 27.589376, 42.035610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888023, 27.729523, 42.047672>,  <32.563931, 27.963100, 42.067776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888023, 27.729523, 42.047672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317374, -0.509213, 0.799985,
		-0.492744, -0.632222, -0.597912,
		0.810232, -0.583950, -0.050261,
		33.131096, 27.554338, 42.032593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289810, 27.351135, 42.100170>,  <32.563931, 27.963100, 42.067776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289810, 27.351135, 42.100170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673088, 27.319599, 42.210190>,  <32.903053, 27.300678, 42.276203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673088, 27.319599, 42.210190>,  <32.289810, 27.351135, 42.100170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673088, 27.319599, 42.210190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276138, -0.506583, 0.816775,
		0.074944, -0.858579, -0.507174,
		0.958192, -0.078838, 0.275052,
		32.960545, 27.295948, 42.292706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423038, 26.579557, 42.300304>,  <32.289810, 27.351135, 42.100170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423038, 26.579557, 42.300304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685154, 26.815592, 42.488941>,  <32.842422, 26.957212, 42.602123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685154, 26.815592, 42.488941>,  <32.423038, 26.579557, 42.300304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685154, 26.815592, 42.488941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316037, -0.352877, 0.880681,
		0.686093, -0.726136, -0.044745,
		0.655284, 0.590088, 0.471592,
		32.881741, 26.992619, 42.630421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610725, 26.248528, 42.845581>,  <32.423038, 26.579557, 42.300304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610725, 26.248528, 42.845581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761356, 26.601414, 42.958637>,  <32.851734, 26.813145, 43.026470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761356, 26.601414, 42.958637>,  <32.610725, 26.248528, 42.845581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761356, 26.601414, 42.958637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250789, -0.196625, 0.947863,
		0.891793, -0.427828, 0.147205,
		0.376578, 0.882214, 0.282643,
		32.874329, 26.866077, 43.043430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148052, 26.148352, 43.364567>,  <32.610725, 26.248528, 42.845581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148052, 26.148352, 43.364567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979946, 26.507990, 43.413555>,  <32.879082, 26.723774, 43.442947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979946, 26.507990, 43.413555>,  <33.148052, 26.148352, 43.364567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979946, 26.507990, 43.413555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176623, -0.213439, 0.960858,
		0.890044, 0.382187, 0.248503,
		-0.420268, 0.899098, 0.122467,
		32.853867, 26.777719, 43.450294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295017, 26.337946, 44.011776>,  <33.148052, 26.148352, 43.364567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295017, 26.337946, 44.011776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021828, 26.619482, 43.933643>,  <32.857914, 26.788404, 43.886765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021828, 26.619482, 43.933643>,  <33.295017, 26.337946, 44.011776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021828, 26.619482, 43.933643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230009, 0.046580, 0.972073,
		0.693283, 0.708829, 0.130077,
		-0.682975, 0.703841, -0.195330,
		32.816936, 26.830635, 43.875046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333855, 26.662397, 44.591419>,  <33.295017, 26.337946, 44.011776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333855, 26.662397, 44.591419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006691, 26.819832, 44.423550>,  <32.810394, 26.914291, 44.322830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006691, 26.819832, 44.423550>,  <33.333855, 26.662397, 44.591419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006691, 26.819832, 44.423550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286087, 0.354640, 0.890160,
		0.499184, 0.848128, -0.177463,
		-0.817905, 0.393584, -0.419670,
		32.761318, 26.937906, 44.297649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123875, 27.275276, 44.918163>,  <33.333855, 26.662397, 44.591419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123875, 27.275276, 44.918163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782528, 27.151670, 44.750221>,  <32.577721, 27.077507, 44.649456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782528, 27.151670, 44.750221>,  <33.123875, 27.275276, 44.918163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782528, 27.151670, 44.750221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493081, 0.217024, 0.842480,
		-0.169221, 0.925965, -0.337570,
		-0.853367, -0.309014, -0.419851,
		32.526516, 27.058966, 44.624268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696728, 27.845526, 45.023129>,  <33.123875, 27.275276, 44.918163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696728, 27.845526, 45.023129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495178, 27.501570, 44.990391>,  <32.374249, 27.295197, 44.970749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495178, 27.501570, 44.990391>,  <32.696728, 27.845526, 45.023129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495178, 27.501570, 44.990391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466023, 0.190848, 0.863944,
		-0.727278, 0.473461, -0.496892,
		-0.503875, -0.859891, -0.081844,
		32.344017, 27.243603, 44.965839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010040, 27.998817, 45.096249>,  <32.696728, 27.845526, 45.023129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010040, 27.998817, 45.096249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071178, 27.618572, 45.204300>,  <32.107861, 27.390425, 45.269131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071178, 27.618572, 45.204300>,  <32.010040, 27.998817, 45.096249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071178, 27.618572, 45.204300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468981, 0.170834, 0.866529,
		-0.869883, -0.259128, -0.419710,
		0.152841, -0.950615, 0.270131,
		32.117031, 27.333387, 45.285339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421680, 27.873709, 45.412975>,  <32.010040, 27.998817, 45.096249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421680, 27.873709, 45.412975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679239, 27.589294, 45.525990>,  <31.833775, 27.418646, 45.593800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679239, 27.589294, 45.525990>,  <31.421680, 27.873709, 45.412975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679239, 27.589294, 45.525990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249386, 0.154071, 0.956070,
		-0.723329, -0.686071, -0.078116,
		0.643896, -0.711034, 0.282540,
		31.872408, 27.375984, 45.610752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098072, 27.346096, 45.831356>,  <31.421680, 27.873709, 45.412975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098072, 27.346096, 45.831356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481428, 27.295593, 45.933765>,  <31.711441, 27.265291, 45.995213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481428, 27.295593, 45.933765>,  <31.098072, 27.346096, 45.831356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481428, 27.295593, 45.933765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246158, 0.088652, 0.965167,
		-0.144558, -0.988028, 0.053883,
		0.958389, -0.126259, 0.256026,
		31.768946, 27.257715, 46.010574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078518, 26.797909, 46.321526>,  <31.098072, 27.346096, 45.831356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078518, 26.797909, 46.321526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436037, 26.967527, 46.379917>,  <31.650549, 27.069298, 46.414951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436037, 26.967527, 46.379917>,  <31.078518, 26.797909, 46.321526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436037, 26.967527, 46.379917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166630, 0.011803, 0.985949,
		0.416365, -0.905564, 0.081209,
		0.893798, 0.424046, 0.145980,
		31.704176, 27.094742, 46.423710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207924, 26.465359, 46.866383>,  <31.078518, 26.797909, 46.321526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207924, 26.465359, 46.866383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473829, 26.764076, 46.858505>,  <31.633373, 26.943308, 46.853779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473829, 26.764076, 46.858505>,  <31.207924, 26.465359, 46.866383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473829, 26.764076, 46.858505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088798, -0.052818, 0.994648,
		0.741758, -0.662954, -0.101425,
		0.664763, 0.746795, -0.019691,
		31.673258, 26.988115, 46.852596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753016, 26.320045, 47.203384>,  <31.207924, 26.465359, 46.866383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753016, 26.320045, 47.203384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801479, 26.717043, 47.210087>,  <31.830557, 26.955240, 47.214108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801479, 26.717043, 47.210087>,  <31.753016, 26.320045, 47.203384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801479, 26.717043, 47.210087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052670, -0.023288, 0.998340,
		0.991235, -0.120075, -0.055096,
		0.121159, 0.992492, 0.016760,
		31.837828, 27.014790, 47.215115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305843, 26.431238, 47.661339>,  <31.753016, 26.320045, 47.203384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305843, 26.431238, 47.661339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106335, 26.777895, 47.656265>,  <31.986629, 26.985889, 47.653221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106335, 26.777895, 47.656265>,  <32.305843, 26.431238, 47.661339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106335, 26.777895, 47.656265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043896, -0.010647, 0.998980,
		0.865622, 0.498817, 0.043353,
		-0.498770, 0.866642, -0.012679,
		31.956703, 27.037888, 47.652462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583759, 26.901724, 48.207672>,  <32.305843, 26.431238, 47.661339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583759, 26.901724, 48.207672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208179, 27.021940, 48.140682>,  <31.982832, 27.094070, 48.100491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208179, 27.021940, 48.140682>,  <32.583759, 26.901724, 48.207672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208179, 27.021940, 48.140682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215279, -0.133521, 0.967382,
		0.268377, 0.944377, 0.190070,
		-0.938951, 0.300541, -0.167471,
		31.926495, 27.112103, 48.090443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370506, 27.294662, 48.879364>,  <32.583759, 26.901724, 48.207672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370506, 27.294662, 48.879364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026905, 27.181065, 48.708969>,  <31.820745, 27.112906, 48.606731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026905, 27.181065, 48.708969>,  <32.370506, 27.294662, 48.879364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026905, 27.181065, 48.708969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352721, -0.274805, 0.894466,
		-0.371089, 0.918601, 0.135886,
		-0.859000, -0.283997, -0.425987,
		31.769205, 27.095865, 48.581173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829998, 27.613873, 49.311802>,  <32.370506, 27.294662, 48.879364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829998, 27.613873, 49.311802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737789, 27.282419, 49.107754>,  <31.682465, 27.083548, 48.985325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737789, 27.282419, 49.107754>,  <31.829998, 27.613873, 49.311802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737789, 27.282419, 49.107754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487373, -0.355422, 0.797585,
		-0.842215, 0.432481, -0.321922,
		-0.230522, -0.828635, -0.510121,
		31.668633, 27.033829, 48.954716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425720, 27.661173, 49.802361>,  <31.829998, 27.613873, 49.311802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425720, 27.661173, 49.802361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694065, 27.926558, 49.934879>,  <32.855072, 28.085789, 50.014389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694065, 27.926558, 49.934879>,  <32.425720, 27.661173, 49.802361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694065, 27.926558, 49.934879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165668, 0.301370, -0.939005,
		-0.722838, 0.684830, 0.092264,
		0.670864, 0.663464, 0.331297,
		32.895325, 28.125597, 50.034267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195988, 28.304676, 49.568710>,  <32.425720, 27.661173, 49.802361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195988, 28.304676, 49.568710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590111, 28.335913, 49.629475>,  <32.826584, 28.354654, 49.665936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590111, 28.335913, 49.629475>,  <32.195988, 28.304676, 49.568710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590111, 28.335913, 49.629475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103337, 0.435631, -0.894174,
		-0.136008, 0.896731, 0.421158,
		0.985304, 0.078094, 0.151915,
		32.885700, 28.359341, 49.675049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344753, 28.945789, 49.373024>,  <32.195988, 28.304676, 49.568710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344753, 28.945789, 49.373024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704239, 28.771002, 49.387814>,  <32.919930, 28.666128, 49.396687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704239, 28.771002, 49.387814>,  <32.344753, 28.945789, 49.373024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704239, 28.771002, 49.387814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223712, 0.384320, -0.895685,
		0.377177, 0.813238, 0.443150,
		0.898716, -0.436970, 0.036974,
		32.973854, 28.639912, 49.398907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848423, 29.445629, 49.297455>,  <32.344753, 28.945789, 49.373024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848423, 29.445629, 49.297455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046627, 29.118280, 49.181019>,  <33.165550, 28.921871, 49.111156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046627, 29.118280, 49.181019>,  <32.848423, 29.445629, 49.297455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046627, 29.118280, 49.181019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407974, 0.515138, -0.753784,
		0.766827, 0.254753, 0.589133,
		0.495513, -0.818373, -0.291089,
		33.195282, 28.872768, 49.093693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414936, 29.701954, 48.985481>,  <32.848423, 29.445629, 49.297455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414936, 29.701954, 48.985481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389317, 29.327160, 48.848099>,  <33.373943, 29.102283, 48.765671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389317, 29.327160, 48.848099>,  <33.414936, 29.701954, 48.985481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389317, 29.327160, 48.848099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482288, 0.272235, -0.832638,
		0.873668, -0.218973, 0.434459,
		-0.064050, -0.936984, -0.343451,
		33.370102, 29.046064, 48.745064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108154, 29.473021, 48.758656>,  <33.414936, 29.701954, 48.985481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108154, 29.473021, 48.758656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828289, 29.250824, 48.578926>,  <33.660370, 29.117506, 48.471088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828289, 29.250824, 48.578926>,  <34.108154, 29.473021, 48.758656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828289, 29.250824, 48.578926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383452, 0.238694, -0.892182,
		0.602853, -0.796525, 0.045999,
		-0.699666, -0.555494, -0.449327,
		33.618389, 29.084175, 48.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501308, 29.237364, 48.277130>,  <34.108154, 29.473021, 48.758656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501308, 29.237364, 48.277130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133015, 29.143463, 48.152462>,  <33.912037, 29.087122, 48.077660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133015, 29.143463, 48.152462>,  <34.501308, 29.237364, 48.277130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133015, 29.143463, 48.152462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288592, 0.127893, -0.948872,
		0.262611, -0.963605, -0.050007,
		-0.920734, -0.234753, -0.311674,
		33.856796, 29.073038, 48.058960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537251, 28.613428, 47.896111>,  <34.501308, 29.237364, 48.277130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537251, 28.613428, 47.896111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243553, 28.869593, 47.805996>,  <34.067333, 29.023291, 47.751926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243553, 28.869593, 47.805996>,  <34.537251, 28.613428, 47.896111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243553, 28.869593, 47.805996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414192, 0.159651, -0.896078,
		-0.537891, -0.751256, -0.382476,
		-0.734247, 0.640411, -0.225290,
		34.023277, 29.061716, 47.738407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200951, 28.301666, 47.260410>,  <34.537251, 28.613428, 47.896111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200951, 28.301666, 47.260410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083427, 28.683529, 47.279640>,  <34.012913, 28.912645, 47.291180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083427, 28.683529, 47.279640>,  <34.200951, 28.301666, 47.260410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083427, 28.683529, 47.279640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343345, 0.152341, -0.926772,
		-0.892072, -0.255783, -0.372535,
		-0.293805, 0.954656, 0.048078,
		33.995285, 28.969925, 47.294064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893398, 28.492838, 46.608772>,  <34.200951, 28.301666, 47.260410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893398, 28.492838, 46.608772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893307, 28.869968, 46.742085>,  <33.893253, 29.096247, 46.822071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893307, 28.869968, 46.742085>,  <33.893398, 28.492838, 46.608772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893307, 28.869968, 46.742085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042671, 0.332989, -0.941965,
		-0.999089, 0.014006, -0.040307,
		-0.000229, 0.942827, 0.333283,
		33.893238, 29.152817, 46.842068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320503, 28.874378, 46.278118>,  <33.893398, 28.492838, 46.608772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320503, 28.874378, 46.278118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587959, 29.147787, 46.395226>,  <33.748432, 29.311832, 46.465492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587959, 29.147787, 46.395226>,  <33.320503, 28.874378, 46.278118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587959, 29.147787, 46.395226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019797, 0.409956, -0.911890,
		-0.743322, 0.603931, 0.287645,
		0.668641, 0.683523, 0.292773,
		33.788551, 29.352844, 46.483059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055916, 29.379423, 46.017990>,  <33.320503, 28.874378, 46.278118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055916, 29.379423, 46.017990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439911, 29.480932, 46.065365>,  <33.670307, 29.541838, 46.093792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439911, 29.480932, 46.065365>,  <33.055916, 29.379423, 46.017990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439911, 29.480932, 46.065365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015651, 0.470880, -0.882058,
		-0.279613, 0.844909, 0.456010,
		0.959985, 0.253772, 0.118440,
		33.727905, 29.557064, 46.100899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118847, 29.979818, 45.656952>,  <33.055916, 29.379423, 46.017990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118847, 29.979818, 45.656952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499146, 29.862642, 45.697498>,  <33.727325, 29.792337, 45.721825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499146, 29.862642, 45.697498>,  <33.118847, 29.979818, 45.656952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499146, 29.862642, 45.697498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223457, 0.421045, -0.879084,
		0.214840, 0.858433, 0.465765,
		0.950742, -0.292941, 0.101366,
		33.784367, 29.774759, 45.727909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515377, 30.608185, 45.588718>,  <33.118847, 29.979818, 45.656952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515377, 30.608185, 45.588718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750500, 30.300201, 45.489403>,  <33.891575, 30.115412, 45.429813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750500, 30.300201, 45.489403>,  <33.515377, 30.608185, 45.588718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750500, 30.300201, 45.489403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158511, 0.410578, -0.897942,
		0.793321, 0.488459, 0.363387,
		0.587806, -0.769957, -0.248294,
		33.926842, 30.069214, 45.414913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904964, 30.973553, 45.061146>,  <33.515377, 30.608185, 45.588718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904964, 30.973553, 45.061146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003796, 30.589628, 45.007904>,  <34.063095, 30.359274, 44.975960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003796, 30.589628, 45.007904>,  <33.904964, 30.973553, 45.061146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003796, 30.589628, 45.007904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280277, 0.202276, -0.938365,
		0.927577, 0.194542, 0.318991,
		0.247076, -0.959811, -0.133101,
		34.077919, 30.301685, 44.967976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450771, 31.020267, 44.655575>,  <33.904964, 30.973553, 45.061146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450771, 31.020267, 44.655575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328575, 30.645386, 44.588257>,  <34.255257, 30.420456, 44.547867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328575, 30.645386, 44.588257>,  <34.450771, 31.020267, 44.655575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328575, 30.645386, 44.588257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357832, 0.050797, -0.932403,
		0.882401, -0.345063, 0.319844,
		-0.305491, -0.937204, -0.168298,
		34.236927, 30.364225, 44.537769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014103, 30.737961, 44.247780>,  <34.450771, 31.020267, 44.655575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014103, 30.737961, 44.247780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698532, 30.497242, 44.198093>,  <34.509190, 30.352812, 44.168282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698532, 30.497242, 44.198093>,  <35.014103, 30.737961, 44.247780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698532, 30.497242, 44.198093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120751, 0.046375, -0.991599,
		0.602500, -0.797303, 0.036081,
		-0.788931, -0.601795, -0.124216,
		34.461853, 30.316704, 44.160828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271320, 30.150930, 43.925743>,  <35.014103, 30.737961, 44.247780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271320, 30.150930, 43.925743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879559, 30.164608, 43.846153>,  <34.644501, 30.172815, 43.798401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879559, 30.164608, 43.846153>,  <35.271320, 30.150930, 43.925743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879559, 30.164608, 43.846153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193512, -0.121992, -0.973484,
		-0.057559, -0.991942, 0.112864,
		-0.979408, 0.034193, -0.198974,
		34.585735, 30.174868, 43.786461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122131, 29.713661, 43.344990>,  <35.271320, 30.150930, 43.925743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122131, 29.713661, 43.344990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795135, 29.943411, 43.362003>,  <34.598938, 30.081261, 43.372211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795135, 29.943411, 43.362003>,  <35.122131, 29.713661, 43.344990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795135, 29.943411, 43.362003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049148, 0.143156, -0.988479,
		-0.573849, -0.805976, -0.145258,
		-0.817485, 0.574377, 0.042538,
		34.549889, 30.115725, 43.374763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788727, 29.468987, 42.734047>,  <35.122131, 29.713661, 43.344990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788727, 29.468987, 42.734047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632999, 29.827528, 42.818878>,  <34.539562, 30.042654, 42.869778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632999, 29.827528, 42.818878>,  <34.788727, 29.468987, 42.734047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632999, 29.827528, 42.818878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063275, 0.255730, -0.964675,
		-0.918928, -0.362144, -0.156277,
		-0.389316, 0.896356, 0.212083,
		34.516205, 30.096436, 42.882504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176414, 29.519817, 42.330566>,  <34.788727, 29.468987, 42.734047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176414, 29.519817, 42.330566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297253, 29.887613, 42.431183>,  <34.369755, 30.108292, 42.491554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297253, 29.887613, 42.431183>,  <34.176414, 29.519817, 42.330566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297253, 29.887613, 42.431183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113121, 0.227433, -0.967201,
		-0.946543, 0.320641, -0.035307,
		0.302094, 0.919491, 0.251546,
		34.387882, 30.163460, 42.506645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853973, 29.892439, 41.867790>,  <34.176414, 29.519817, 42.330566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853973, 29.892439, 41.867790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112705, 30.158997, 42.016132>,  <34.267944, 30.318932, 42.105137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112705, 30.158997, 42.016132>,  <33.853973, 29.892439, 41.867790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112705, 30.158997, 42.016132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162295, 0.354857, -0.920726,
		-0.745166, 0.655739, 0.121380,
		0.646829, 0.666395, 0.370851,
		34.306755, 30.358915, 42.127388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676380, 30.604908, 41.671360>,  <33.853973, 29.892439, 41.867790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676380, 30.604908, 41.671360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068401, 30.592533, 41.749893>,  <34.303612, 30.585108, 41.797012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068401, 30.592533, 41.749893>,  <33.676380, 30.604908, 41.671360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068401, 30.592533, 41.749893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190034, 0.435291, -0.880005,
		-0.058236, 0.899758, 0.432486,
		0.980049, -0.030939, 0.196334,
		34.362415, 30.583252, 41.808792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953434, 31.302320, 41.466949>,  <33.676380, 30.604908, 41.671360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953434, 31.302320, 41.466949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253311, 31.037752, 41.475685>,  <34.433239, 30.879011, 41.480927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253311, 31.037752, 41.475685>,  <33.953434, 31.302320, 41.466949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253311, 31.037752, 41.475685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327789, 0.342465, -0.880495,
		0.574900, 0.667262, 0.473551,
		0.749696, -0.661422, 0.021838,
		34.478222, 30.839325, 41.482235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514198, 31.736710, 41.384579>,  <33.953434, 31.302320, 41.466949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514198, 31.736710, 41.384579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609348, 31.359545, 41.291344>,  <34.666439, 31.133245, 41.235401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609348, 31.359545, 41.291344>,  <34.514198, 31.736710, 41.384579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609348, 31.359545, 41.291344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458827, 0.320600, -0.828670,
		0.856092, 0.090173, 0.508896,
		0.237876, -0.942913, -0.233089,
		34.680710, 31.076672, 41.221416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024128, 31.837069, 40.993202>,  <34.514198, 31.736710, 41.384579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024128, 31.837069, 40.993202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934296, 31.456661, 40.908234>,  <34.880394, 31.228416, 40.857254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934296, 31.456661, 40.908234>,  <35.024128, 31.837069, 40.993202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934296, 31.456661, 40.908234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501480, 0.074111, -0.861989,
		0.835512, -0.300112, 0.460274,
		-0.224582, -0.951021, -0.212421,
		34.866920, 31.171354, 40.844509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707500, 31.496643, 40.900196>,  <35.024128, 31.837069, 40.993202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707500, 31.496643, 40.900196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437901, 31.276190, 40.703430>,  <35.276142, 31.143919, 40.585373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437901, 31.276190, 40.703430>,  <35.707500, 31.496643, 40.900196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437901, 31.276190, 40.703430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584989, 0.008450, -0.810997,
		0.451122, -0.834376, 0.316710,
		-0.674001, -0.551131, -0.491913,
		35.235699, 31.110851, 40.555855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073322, 31.039135, 40.568996>,  <35.707500, 31.496643, 40.900196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073322, 31.039135, 40.568996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732468, 31.067692, 40.361626>,  <35.527954, 31.084826, 40.237202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732468, 31.067692, 40.361626>,  <36.073322, 31.039135, 40.568996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732468, 31.067692, 40.361626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523314, 0.122381, -0.843307,
		0.003240, -0.989912, -0.141646,
		-0.852134, 0.071393, -0.518431,
		35.476826, 31.089109, 40.206097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207165, 30.568451, 39.983791>,  <36.073322, 31.039135, 40.568996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207165, 30.568451, 39.983791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893082, 30.803225, 39.904846>,  <35.704632, 30.944090, 39.857479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893082, 30.803225, 39.904846>,  <36.207165, 30.568451, 39.983791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893082, 30.803225, 39.904846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336095, 0.136269, -0.931918,
		-0.520082, -0.798083, -0.304266,
		-0.785210, 0.586936, -0.197360,
		35.657520, 30.979305, 39.845638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053787, 30.352671, 39.321365>,  <36.207165, 30.568451, 39.983791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053787, 30.352671, 39.321365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851585, 30.695621, 39.360077>,  <35.730263, 30.901392, 39.383305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851585, 30.695621, 39.360077>,  <36.053787, 30.352671, 39.321365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851585, 30.695621, 39.360077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300196, 0.279921, -0.911881,
		-0.808917, -0.431909, -0.398883,
		-0.505506, 0.857379, 0.096776,
		35.699932, 30.952835, 39.389111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676441, 30.505163, 38.616192>,  <36.053787, 30.352671, 39.321365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676441, 30.505163, 38.616192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730999, 30.847025, 38.816574>,  <35.763733, 31.052143, 38.936806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730999, 30.847025, 38.816574>,  <35.676441, 30.505163, 38.616192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730999, 30.847025, 38.816574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487234, 0.382422, -0.785084,
		-0.862555, 0.351164, -0.364257,
		0.136393, 0.854656, 0.500959,
		35.771915, 31.103422, 38.966862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812256, 30.849882, 38.006153>,  <35.676441, 30.505163, 38.616192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812256, 30.849882, 38.006153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882523, 31.081305, 38.324753>,  <35.924683, 31.220158, 38.515911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882523, 31.081305, 38.324753>,  <35.812256, 30.849882, 38.006153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882523, 31.081305, 38.324753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571831, 0.598625, -0.560943,
		-0.801343, 0.554004, -0.225677,
		0.175669, 0.578557, 0.796500,
		35.935223, 31.254871, 38.563702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661617, 31.500263, 37.732853>,  <35.812256, 30.849882, 38.006153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661617, 31.500263, 37.732853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898937, 31.527039, 38.053730>,  <36.041328, 31.543104, 38.246258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898937, 31.527039, 38.053730>,  <35.661617, 31.500263, 37.732853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898937, 31.527039, 38.053730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601616, 0.625238, -0.497128,
		-0.534839, 0.777558, 0.330681,
		0.593300, 0.066940, 0.802193,
		36.076927, 31.547121, 38.294388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792076, 32.233707, 37.842865>,  <35.661617, 31.500263, 37.732853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792076, 32.233707, 37.842865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088894, 32.023125, 38.008862>,  <36.266983, 31.896774, 38.108459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088894, 32.023125, 38.008862>,  <35.792076, 32.233707, 37.842865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088894, 32.023125, 38.008862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666643, 0.514468, -0.539361,
		0.070451, 0.676879, 0.732716,
		0.742040, -0.526458, 0.414992,
		36.311504, 31.865187, 38.133358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260784, 32.672165, 37.922291>,  <35.792076, 32.233707, 37.842865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260784, 32.672165, 37.922291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477474, 32.336311, 37.938087>,  <36.607487, 32.134800, 37.947567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477474, 32.336311, 37.938087>,  <36.260784, 32.672165, 37.922291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477474, 32.336311, 37.938087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642645, 0.383427, -0.663318,
		0.541798, 0.384715, 0.747295,
		0.541721, -0.839630, 0.039495,
		36.639992, 32.084423, 37.949936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865234, 32.927551, 38.095936>,  <36.260784, 32.672165, 37.922291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865234, 32.927551, 38.095936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938675, 32.568554, 37.935535>,  <36.982738, 32.353157, 37.839294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938675, 32.568554, 37.935535>,  <36.865234, 32.927551, 38.095936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938675, 32.568554, 37.935535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674628, 0.411746, -0.612652,
		0.714960, -0.158045, 0.681068,
		0.183600, -0.897489, -0.401004,
		36.993755, 32.299309, 37.815235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592819, 32.762314, 38.168362>,  <36.865234, 32.927551, 38.095936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592819, 32.762314, 38.168362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471077, 32.529339, 37.866863>,  <37.398033, 32.389553, 37.685963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471077, 32.529339, 37.866863>,  <37.592819, 32.762314, 38.168362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471077, 32.529339, 37.866863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756778, 0.332705, -0.562667,
		0.578493, -0.741671, 0.339514,
		-0.304355, -0.582436, -0.753748,
		37.379772, 32.354607, 37.640739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181416, 32.421078, 37.966457>,  <37.592819, 32.762314, 38.168362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181416, 32.421078, 37.966457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921181, 32.390148, 37.664265>,  <37.765038, 32.371590, 37.482948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921181, 32.390148, 37.664265>,  <38.181416, 32.421078, 37.966457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921181, 32.390148, 37.664265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695542, 0.338704, -0.633641,
		0.304881, -0.937710, -0.166575,
		-0.650591, -0.077325, -0.755481,
		37.726006, 32.366951, 37.437618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422390, 31.895636, 37.470840>,  <38.181416, 32.421078, 37.966457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422390, 31.895636, 37.470840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167942, 32.140965, 37.283569>,  <38.015274, 32.288162, 37.171207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167942, 32.140965, 37.283569>,  <38.422390, 31.895636, 37.470840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167942, 32.140965, 37.283569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743005, 0.323279, -0.586033,
		-0.208078, -0.720642, -0.661346,
		-0.636119, 0.613324, -0.468173,
		37.977108, 32.324963, 37.143116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582291, 31.809277, 36.805908>,  <38.422390, 31.895636, 37.470840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582291, 31.809277, 36.805908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360229, 32.141670, 36.791626>,  <38.226994, 32.341106, 36.783058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360229, 32.141670, 36.791626>,  <38.582291, 31.809277, 36.805908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360229, 32.141670, 36.791626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699854, 0.443491, -0.559929,
		-0.449458, -0.335830, -0.827771,
		-0.555150, 0.830984, -0.035702,
		38.193684, 32.390965, 36.780914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325569, 31.995535, 36.267239>,  <38.582291, 31.809277, 36.805908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325569, 31.995535, 36.267239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385242, 32.349934, 36.442856>,  <38.421047, 32.562572, 36.548225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385242, 32.349934, 36.442856>,  <38.325569, 31.995535, 36.267239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385242, 32.349934, 36.442856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781808, 0.166158, -0.600972,
		-0.605409, 0.432900, -0.667890,
		0.149186, 0.885996, 0.439039,
		38.429996, 32.615734, 36.574566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755795, 32.552120, 35.979828>,  <38.325569, 31.995535, 36.267239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755795, 32.552120, 35.979828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128033, 32.584679, 36.122581>,  <39.351376, 32.604214, 36.208233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128033, 32.584679, 36.122581>,  <38.755795, 32.552120, 35.979828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128033, 32.584679, 36.122581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142301, -0.817826, 0.557595,
		0.337254, -0.569680, -0.749483,
		0.930597, 0.081399, 0.356880,
		39.407211, 32.609097, 36.229645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974190, 32.978477, 36.649651>,  <38.755795, 32.552120, 35.979828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974190, 32.978477, 36.649651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354481, 32.859875, 36.685856>,  <39.582657, 32.788712, 36.707581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354481, 32.859875, 36.685856>,  <38.974190, 32.978477, 36.649651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354481, 32.859875, 36.685856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234610, 0.497263, -0.835277,
		0.202658, 0.815360, 0.542327,
		0.950730, -0.296511, 0.090517,
		39.639698, 32.770920, 36.713013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601658, 33.520985, 36.716034>,  <38.974190, 32.978477, 36.649651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601658, 33.520985, 36.716034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670353, 33.180992, 36.516819>,  <39.711571, 32.976997, 36.397289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670353, 33.180992, 36.516819>,  <39.601658, 33.520985, 36.716034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670353, 33.180992, 36.516819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410345, 0.521328, -0.748220,
		0.895613, -0.075870, 0.438317,
		0.171739, -0.849977, -0.498041,
		39.721874, 32.925999, 36.367405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388252, 33.337887, 36.645092>,  <39.601658, 33.520985, 36.716034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388252, 33.337887, 36.645092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151016, 33.225494, 36.343285>,  <40.008675, 33.158058, 36.162201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151016, 33.225494, 36.343285>,  <40.388252, 33.337887, 36.645092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151016, 33.225494, 36.343285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597477, 0.474571, -0.646378,
		0.539693, -0.834165, -0.113581,
		-0.593088, -0.280983, -0.754516,
		39.973091, 33.141201, 36.116928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775410, 32.931976, 36.029510>,  <40.388252, 33.337887, 36.645092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775410, 32.931976, 36.029510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460693, 33.161999, 35.939823>,  <40.271862, 33.300011, 35.886009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460693, 33.161999, 35.939823>,  <40.775410, 32.931976, 36.029510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460693, 33.161999, 35.939823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581208, 0.568004, -0.582725,
		-0.207740, -0.588801, -0.781126,
		-0.786792, 0.575052, -0.224219,
		40.224655, 33.334515, 35.872559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702507, 33.072731, 35.265526>,  <40.775410, 32.931976, 36.029510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702507, 33.072731, 35.265526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559143, 33.384712, 35.470745>,  <40.473125, 33.571899, 35.593876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559143, 33.384712, 35.470745>,  <40.702507, 33.072731, 35.265526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559143, 33.384712, 35.470745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723868, 0.579220, -0.374860,
		-0.589540, 0.237027, -0.772179,
		-0.358409, 0.779951, 0.513049,
		40.451622, 33.618698, 35.624660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248425, 33.500481, 35.085957>,  <40.702507, 33.072731, 35.265526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248425, 33.500481, 35.085957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637783, 33.590553, 35.068996>,  <41.871399, 33.644596, 35.058819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637783, 33.590553, 35.068996>,  <41.248425, 33.500481, 35.085957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637783, 33.590553, 35.068996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225388, -0.974269, 0.000101,
		-0.041290, -0.009655, -0.999101,
		0.973394, 0.225181, -0.042404,
		41.929802, 33.658108, 35.056274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611549, 32.999420, 34.606453>,  <41.248425, 33.500481, 35.085957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611549, 32.999420, 34.606453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936363, 33.135265, 34.796299>,  <42.131252, 33.216770, 34.910206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936363, 33.135265, 34.796299>,  <41.611549, 32.999420, 34.606453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936363, 33.135265, 34.796299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343901, -0.935505, 0.081007,
		0.471515, 0.097440, -0.876458,
		0.812038, 0.339610, 0.474615,
		42.179974, 33.237148, 34.938683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172535, 32.625217, 34.261604>,  <41.611549, 32.999420, 34.606453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172535, 32.625217, 34.261604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303192, 32.753475, 34.617241>,  <42.381588, 32.830429, 34.830624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303192, 32.753475, 34.617241>,  <42.172535, 32.625217, 34.261604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303192, 32.753475, 34.617241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379987, -0.905873, 0.187092,
		0.865397, 0.276731, -0.417741,
		0.326647, 0.320645, 0.889095,
		42.401188, 32.849670, 34.883968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822170, 32.394394, 34.295666>,  <42.172535, 32.625217, 34.261604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822170, 32.394394, 34.295666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712029, 32.463097, 34.674015>,  <42.645943, 32.504318, 34.901024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712029, 32.463097, 34.674015>,  <42.822170, 32.394394, 34.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712029, 32.463097, 34.674015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339302, -0.903226, 0.262788,
		0.899475, 0.393297, 0.190428,
		-0.275353, 0.171759, 0.945875,
		42.629421, 32.514626, 34.957779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379463, 32.220264, 34.601955>,  <42.822170, 32.394394, 34.295666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379463, 32.220264, 34.601955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086143, 32.200314, 34.873184>,  <42.910152, 32.188343, 35.035923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086143, 32.200314, 34.873184>,  <43.379463, 32.220264, 34.601955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086143, 32.200314, 34.873184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447529, -0.786206, 0.426143,
		0.511851, 0.615948, 0.598845,
		-0.733298, -0.049878, 0.678075,
		42.866154, 32.185349, 35.076607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701981, 32.078571, 35.201054>,  <43.379463, 32.220264, 34.601955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701981, 32.078571, 35.201054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331841, 31.954590, 35.288383>,  <43.109756, 31.880201, 35.340782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331841, 31.954590, 35.288383>,  <43.701981, 32.078571, 35.201054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331841, 31.954590, 35.288383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379081, -0.765171, 0.520395,
		0.005762, 0.564309, 0.825544,
		-0.925346, -0.309949, 0.218327,
		43.054237, 31.861605, 35.353882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737286, 31.745775, 35.815956>,  <43.701981, 32.078571, 35.201054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737286, 31.745775, 35.815956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361103, 31.630486, 35.743889>,  <43.135391, 31.561312, 35.700649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361103, 31.630486, 35.743889>,  <43.737286, 31.745775, 35.815956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361103, 31.630486, 35.743889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176512, -0.867114, 0.465787,
		-0.290476, 0.406253, 0.866362,
		-0.940461, -0.288223, -0.180167,
		43.078964, 31.544018, 35.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388786, 31.582682, 36.478222>,  <43.737286, 31.745775, 35.815956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388786, 31.582682, 36.478222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230831, 31.380581, 36.171295>,  <43.136059, 31.259321, 35.987137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230831, 31.380581, 36.171295>,  <43.388786, 31.582682, 36.478222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230831, 31.380581, 36.171295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175228, -0.861287, 0.476948,
		-0.901862, 0.053887, 0.428650,
		-0.394892, -0.505252, -0.767320,
		43.112362, 31.229006, 35.941097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964813, 31.067402, 36.848503>,  <43.388786, 31.582682, 36.478222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964813, 31.067402, 36.848503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969578, 30.932602, 36.471931>,  <42.972435, 30.851721, 36.245987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969578, 30.932602, 36.471931>,  <42.964813, 31.067402, 36.848503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969578, 30.932602, 36.471931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138405, -0.931877, 0.335334,
		-0.990304, -0.134293, 0.035542,
		0.011912, -0.337001, -0.941429,
		42.973152, 30.831501, 36.189503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533333, 30.561491, 36.875256>,  <42.964813, 31.067402, 36.848503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533333, 30.561491, 36.875256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762859, 30.486879, 36.556274>,  <42.900578, 30.442112, 36.364883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762859, 30.486879, 36.556274>,  <42.533333, 30.561491, 36.875256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762859, 30.486879, 36.556274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096420, -0.951560, 0.291955,
		-0.813285, -0.244420, -0.528040,
		0.573821, -0.186529, -0.797456,
		42.935005, 30.430922, 36.317036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202637, 29.870314, 36.507172>,  <42.533333, 30.561491, 36.875256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202637, 29.870314, 36.507172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585163, 29.915049, 36.399136>,  <42.814678, 29.941891, 36.334312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585163, 29.915049, 36.399136>,  <42.202637, 29.870314, 36.507172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585163, 29.915049, 36.399136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169323, -0.965073, 0.199911,
		-0.238299, -0.236911, -0.941853,
		0.956317, 0.111839, -0.270090,
		42.872059, 29.948601, 36.318108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386562, 29.151361, 36.118221>,  <42.202637, 29.870314, 36.507172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386562, 29.151361, 36.118221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736103, 29.322216, 36.211121>,  <42.945827, 29.424728, 36.266861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736103, 29.322216, 36.211121>,  <42.386562, 29.151361, 36.118221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736103, 29.322216, 36.211121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383407, -0.899142, 0.211050,
		0.298968, -0.095383, -0.949484,
		0.873852, 0.427136, 0.232244,
		42.998260, 29.450357, 36.280792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817413, 28.718313, 35.776600>,  <42.386562, 29.151361, 36.118221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817413, 28.718313, 35.776600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053623, 28.893032, 36.048038>,  <43.195351, 28.997864, 36.210899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053623, 28.893032, 36.048038>,  <42.817413, 28.718313, 35.776600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053623, 28.893032, 36.048038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432366, -0.881241, 0.190984,
		0.681426, 0.180620, -0.709250,
		0.590524, 0.436797, 0.678594,
		43.230782, 29.024071, 36.251617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527592, 28.479160, 35.738071>,  <42.817413, 28.718313, 35.776600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527592, 28.479160, 35.738071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537224, 28.620850, 36.112011>,  <43.543003, 28.705864, 36.336376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537224, 28.620850, 36.112011>,  <43.527592, 28.479160, 35.738071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537224, 28.620850, 36.112011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478932, -0.824914, 0.300234,
		0.877522, 0.440500, -0.189513,
		0.024079, 0.354225, 0.934850,
		43.544449, 28.727118, 36.392467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202587, 28.341656, 35.882275>,  <43.527592, 28.479160, 35.738071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202587, 28.341656, 35.882275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005268, 28.367153, 36.229282>,  <43.886875, 28.382452, 36.437489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005268, 28.367153, 36.229282>,  <44.202587, 28.341656, 35.882275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005268, 28.367153, 36.229282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422378, -0.854295, 0.302947,
		0.760431, 0.515865, 0.394498,
		-0.493297, 0.063743, 0.867522,
		43.857281, 28.386276, 36.489540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679302, 28.365374, 36.435219>,  <44.202587, 28.341656, 35.882275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679302, 28.365374, 36.435219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345467, 28.232914, 36.611309>,  <44.145164, 28.153439, 36.716965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345467, 28.232914, 36.611309>,  <44.679302, 28.365374, 36.435219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345467, 28.232914, 36.611309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493019, -0.805517, 0.328748,
		0.245745, 0.491409, 0.835540,
		-0.834591, -0.331149, 0.440226,
		44.095089, 28.133570, 36.743378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946243, 28.135241, 37.029926>,  <44.679302, 28.365374, 36.435219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946243, 28.135241, 37.029926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586288, 27.961971, 37.050148>,  <44.370316, 27.858009, 37.062283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586288, 27.961971, 37.050148>,  <44.946243, 28.135241, 37.029926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586288, 27.961971, 37.050148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416947, -0.820552, 0.390959,
		-0.127870, 0.372900, 0.919019,
		-0.899891, -0.433174, 0.050556,
		44.316322, 27.832020, 37.065315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913208, 27.793726, 37.677372>,  <44.946243, 28.135241, 37.029926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913208, 27.793726, 37.677372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612408, 27.630995, 37.469917>,  <44.431927, 27.533356, 37.345444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612408, 27.630995, 37.469917>,  <44.913208, 27.793726, 37.677372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612408, 27.630995, 37.469917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195037, -0.888912, 0.414484,
		-0.629651, 0.210537, 0.747807,
		-0.751998, -0.406830, -0.518641,
		44.386806, 27.508945, 37.314323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592720, 27.448168, 38.123718>,  <44.913208, 27.793726, 37.677372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592720, 27.448168, 38.123718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520554, 27.276722, 37.769604>,  <44.477253, 27.173855, 37.557133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520554, 27.276722, 37.769604>,  <44.592720, 27.448168, 38.123718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520554, 27.276722, 37.769604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166318, -0.900394, 0.402031,
		-0.969426, -0.074706, 0.233735,
		-0.180419, -0.428613, -0.885291,
		44.466427, 27.148138, 37.504017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942860, 26.917332, 38.195869>,  <44.592720, 27.448168, 38.123718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942860, 26.917332, 38.195869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181976, 26.816505, 37.891476>,  <44.325447, 26.756010, 37.708839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181976, 26.816505, 37.891476>,  <43.942860, 26.917332, 38.195869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181976, 26.816505, 37.891476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247645, -0.844782, 0.474357,
		-0.762438, -0.472024, -0.442586,
		0.597796, -0.252064, -0.760988,
		44.361317, 26.740887, 37.663177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831524, 26.231245, 38.002865>,  <43.942860, 26.917332, 38.195869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831524, 26.231245, 38.002865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203564, 26.305786, 37.876259>,  <44.426788, 26.350512, 37.800297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203564, 26.305786, 37.876259>,  <43.831524, 26.231245, 38.002865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203564, 26.305786, 37.876259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336455, -0.777921, 0.530695,
		-0.147323, -0.600093, -0.786247,
		0.930104, 0.186354, -0.316510,
		44.482594, 26.361692, 37.781307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173405, 25.599096, 37.857655>,  <43.831524, 26.231245, 38.002865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173405, 25.599096, 37.857655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449169, 25.877062, 37.939442>,  <44.614628, 26.043840, 37.988514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449169, 25.877062, 37.939442>,  <44.173405, 25.599096, 37.857655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449169, 25.877062, 37.939442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569877, -0.694566, 0.439111,
		0.447158, -0.186209, -0.874857,
		0.689412, 0.694913, 0.204464,
		44.655994, 26.085535, 38.000782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898212, 25.515327, 37.558334>,  <44.173405, 25.599096, 37.857655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898212, 25.515327, 37.558334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893547, 25.663382, 37.929897>,  <44.890747, 25.752214, 38.152836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893547, 25.663382, 37.929897>,  <44.898212, 25.515327, 37.558334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893547, 25.663382, 37.929897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539285, -0.779954, 0.317558,
		0.842042, 0.504649, -0.190510,
		-0.011666, 0.370136, 0.928904,
		44.890049, 25.774422, 38.208569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605003, 25.709114, 37.839645>,  <44.898212, 25.515327, 37.558334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605003, 25.709114, 37.839645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342537, 25.566504, 38.105679>,  <45.185059, 25.480936, 38.265297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342537, 25.566504, 38.105679>,  <45.605003, 25.709114, 37.839645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342537, 25.566504, 38.105679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646788, -0.719734, 0.252288,
		0.388736, 0.595710, 0.702861,
		-0.656164, -0.356529, 0.665084,
		45.145687, 25.459545, 38.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940815, 25.595982, 38.563969>,  <45.605003, 25.709114, 37.839645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940815, 25.595982, 38.563969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622147, 25.371202, 38.474941>,  <45.430946, 25.236336, 38.421524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622147, 25.371202, 38.474941>,  <45.940815, 25.595982, 38.563969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622147, 25.371202, 38.474941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549644, -0.826740, 0.119972,
		-0.251423, -0.026755, 0.967508,
		-0.796667, -0.561948, -0.222567,
		45.383148, 25.202618, 38.408173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294754, 25.801296, 38.926399>,  <45.940815, 25.595982, 38.563969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294754, 25.801296, 38.926399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533245, 25.784294, 39.247078>,  <45.676338, 25.774094, 39.439484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533245, 25.784294, 39.247078>,  <45.294754, 25.801296, 38.926399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533245, 25.784294, 39.247078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452394, 0.842740, -0.291768,
		-0.663217, 0.536640, 0.521690,
		0.596224, -0.042504, 0.801693,
		45.712112, 25.771544, 39.487587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347607, 26.358797, 39.344120>,  <45.294754, 25.801296, 38.926399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347607, 26.358797, 39.344120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710354, 26.200424, 39.401844>,  <45.928001, 26.105400, 39.436478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710354, 26.200424, 39.401844>,  <45.347607, 26.358797, 39.344120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710354, 26.200424, 39.401844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421303, 0.859637, -0.289012,
		-0.009626, 0.322895, 0.946386,
		0.906869, -0.395933, 0.144312,
		45.982414, 26.081644, 39.445137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667034, 26.885212, 39.685242>,  <45.347607, 26.358797, 39.344120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667034, 26.885212, 39.685242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915691, 26.652348, 39.475616>,  <46.064888, 26.512629, 39.349842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915691, 26.652348, 39.475616>,  <45.667034, 26.885212, 39.685242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915691, 26.652348, 39.475616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397941, 0.810998, -0.428865,
		0.674686, 0.058055, 0.735819,
		0.621645, -0.582162, -0.524066,
		46.102184, 26.477699, 39.318398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381905, 27.129606, 39.580296>,  <45.667034, 26.885212, 39.685242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381905, 27.129606, 39.580296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.370922, 26.863174, 39.282146>,  <46.364330, 26.703316, 39.103256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.370922, 26.863174, 39.282146>,  <46.381905, 27.129606, 39.580296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.370922, 26.863174, 39.282146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477603, 0.646300, -0.595141,
		0.878147, -0.372334, 0.300376,
		-0.027458, -0.666081, -0.745374,
		46.362686, 26.663349, 39.058533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.050243, 27.055283, 39.197617>,  <46.381905, 27.129606, 39.580296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.050243, 27.055283, 39.197617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.759342, 26.955446, 38.941864>,  <46.584801, 26.895544, 38.788414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.759342, 26.955446, 38.941864>,  <47.050243, 27.055283, 39.197617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.759342, 26.955446, 38.941864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302389, 0.719752, -0.624914,
		0.616167, -0.647813, -0.447969,
		-0.727254, -0.249591, -0.639379,
		46.541168, 26.880569, 38.750050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.262215, 27.064455, 38.431091>,  <47.050243, 27.055283, 39.197617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.262215, 27.064455, 38.431091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883736, 27.191437, 38.456184>,  <46.656647, 27.267626, 38.471241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883736, 27.191437, 38.456184>,  <47.262215, 27.064455, 38.431091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883736, 27.191437, 38.456184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216360, 0.764800, -0.606852,
		-0.240625, -0.560629, -0.792335,
		-0.946197, 0.317454, 0.062732,
		46.599876, 27.286673, 38.475002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142826, 27.416981, 37.824539>,  <47.262215, 27.064455, 38.431091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142826, 27.416981, 37.824539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912106, 27.567303, 38.114662>,  <46.773674, 27.657495, 38.288734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912106, 27.567303, 38.114662>,  <47.142826, 27.416981, 37.824539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912106, 27.567303, 38.114662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100446, 0.848527, -0.519532,
		-0.810683, -0.372523, -0.451687,
		-0.576805, 0.375805, 0.725304,
		46.739063, 27.680044, 38.332253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737057, 27.751841, 37.428730>,  <47.142826, 27.416981, 37.824539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737057, 27.751841, 37.428730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622879, 27.875460, 37.791611>,  <46.554371, 27.949631, 38.009338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622879, 27.875460, 37.791611>,  <46.737057, 27.751841, 37.428730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622879, 27.875460, 37.791611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316687, 0.862997, -0.393631,
		-0.904562, -0.399657, -0.148466,
		-0.285443, 0.309047, 0.907201,
		46.537247, 27.968174, 38.063770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966995, 27.965595, 37.409519>,  <46.737057, 27.751841, 37.428730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966995, 27.965595, 37.409519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154106, 28.156551, 37.707050>,  <46.266373, 28.271126, 37.885571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154106, 28.156551, 37.707050>,  <45.966995, 27.965595, 37.409519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.154106, 28.156551, 37.707050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389904, 0.866726, -0.311066,
		-0.793197, -0.144513, 0.591569,
		0.467775, 0.477391, 0.743830,
		46.294437, 28.299768, 37.930199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502327, 28.479858, 37.696712>,  <45.966995, 27.965595, 37.409519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502327, 28.479858, 37.696712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868629, 28.601429, 37.801796>,  <46.088413, 28.674372, 37.864845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868629, 28.601429, 37.801796>,  <45.502327, 28.479858, 37.696712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868629, 28.601429, 37.801796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173997, 0.889494, -0.422523,
		-0.362091, 0.341219, 0.867444,
		0.915759, 0.303925, 0.262706,
		46.143356, 28.692606, 37.880608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426933, 29.263876, 37.857635>,  <45.502327, 28.479858, 37.696712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426933, 29.263876, 37.857635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820770, 29.215403, 37.807213>,  <46.057072, 29.186317, 37.776958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820770, 29.215403, 37.807213>,  <45.426933, 29.263876, 37.857635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820770, 29.215403, 37.807213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028241, 0.821645, -0.569300,
		0.172565, 0.556969, 0.812408,
		0.984593, -0.121185, -0.126058,
		46.116150, 29.179047, 37.769394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762497, 29.865238, 37.909916>,  <45.426933, 29.263876, 37.857635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762497, 29.865238, 37.909916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992554, 29.649843, 37.663582>,  <46.130589, 29.520607, 37.515781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992554, 29.649843, 37.663582>,  <45.762497, 29.865238, 37.909916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992554, 29.649843, 37.663582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000472, 0.753018, -0.658000,
		0.818057, 0.378150, 0.433343,
		0.575137, -0.538486, -0.615833,
		46.165096, 29.488298, 37.478832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262459, 30.285383, 37.816219>,  <45.762497, 29.865238, 37.909916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262459, 30.285383, 37.816219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360542, 30.031513, 37.523083>,  <46.419392, 29.879190, 37.347202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360542, 30.031513, 37.523083>,  <46.262459, 30.285383, 37.816219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360542, 30.031513, 37.523083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061151, 0.764541, -0.641668,
		0.967539, 0.112531, 0.226286,
		0.245213, -0.634677, -0.732841,
		46.434105, 29.841110, 37.303230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891644, 30.542463, 37.462769>,  <46.262459, 30.285383, 37.816219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891644, 30.542463, 37.462769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707390, 30.298996, 37.204361>,  <46.596836, 30.152916, 37.049316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707390, 30.298996, 37.204361>,  <46.891644, 30.542463, 37.462769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707390, 30.298996, 37.204361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008714, 0.724696, -0.689013,
		0.887548, -0.323012, -0.328515,
		-0.460633, -0.608670, -0.646018,
		46.569199, 30.116396, 37.010555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.284531, 30.625254, 36.879856>,  <46.891644, 30.542463, 37.462769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.284531, 30.625254, 36.879856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917633, 30.493937, 36.789623>,  <46.697495, 30.415146, 36.735481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917633, 30.493937, 36.789623>,  <47.284531, 30.625254, 36.879856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.917633, 30.493937, 36.789623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062213, 0.677453, -0.732930,
		0.393438, -0.658241, -0.641814,
		-0.917244, -0.328292, -0.225585,
		46.642460, 30.395449, 36.721947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216640, 30.644251, 36.090019>,  <47.284531, 30.625254, 36.879856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216640, 30.644251, 36.090019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836582, 30.639885, 36.214661>,  <46.608547, 30.637264, 36.289444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836582, 30.639885, 36.214661>,  <47.216640, 30.644251, 36.090019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836582, 30.639885, 36.214661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254820, 0.603090, -0.755877,
		-0.179673, -0.797599, -0.575807,
		-0.950150, -0.010916, 0.311603,
		46.551537, 30.636610, 36.308140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963116, 30.716232, 35.495365>,  <47.216640, 30.644251, 36.090019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963116, 30.716232, 35.495365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643192, 30.764332, 35.730598>,  <46.451237, 30.793192, 35.871738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643192, 30.764332, 35.730598>,  <46.963116, 30.716232, 35.495365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643192, 30.764332, 35.730598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444140, 0.540493, -0.714568,
		-0.403780, -0.832711, -0.378885,
		-0.799813, 0.120250, 0.588081,
		46.403248, 30.800407, 35.907024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.453758, 30.591751, 35.069420>,  <46.963116, 30.716232, 35.495365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.453758, 30.591751, 35.069420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311016, 30.811701, 35.371490>,  <46.225372, 30.943670, 35.552734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311016, 30.811701, 35.371490>,  <46.453758, 30.591751, 35.069420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311016, 30.811701, 35.371490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338348, 0.677436, -0.653147,
		-0.870734, -0.488591, -0.055696,
		-0.356852, 0.549872, 0.755180,
		46.203960, 30.976662, 35.598045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898518, 30.876621, 34.831059>,  <46.453758, 30.591751, 35.069420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898518, 30.876621, 34.831059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952045, 31.121376, 35.142876>,  <45.984161, 31.268229, 35.329967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952045, 31.121376, 35.142876>,  <45.898518, 30.876621, 34.831059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952045, 31.121376, 35.142876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505694, 0.718658, -0.477288,
		-0.852271, -0.330339, 0.405598,
		0.133820, 0.611887, 0.779543,
		45.992191, 31.304943, 35.376740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185242, 31.184006, 35.055271>,  <45.898518, 30.876621, 34.831059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185242, 31.184006, 35.055271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452099, 31.439201, 35.209095>,  <45.612213, 31.592319, 35.301388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452099, 31.439201, 35.209095>,  <45.185242, 31.184006, 35.055271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452099, 31.439201, 35.209095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610876, 0.763994, -0.207712,
		-0.426320, -0.096344, 0.899427,
		0.667145, 0.637991, 0.384560,
		45.652241, 31.630598, 35.324463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772469, 31.705061, 35.409443>,  <45.185242, 31.184006, 35.055271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772469, 31.705061, 35.409443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126320, 31.863724, 35.311382>,  <45.338631, 31.958921, 35.252544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126320, 31.863724, 35.311382>,  <44.772469, 31.705061, 35.409443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126320, 31.863724, 35.311382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442371, 0.880146, -0.172195,
		0.147469, 0.260777, 0.954069,
		0.884625, 0.396659, -0.245154,
		45.391708, 31.982721, 35.237835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693954, 32.270554, 35.745197>,  <44.772469, 31.705061, 35.409443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693954, 32.270554, 35.745197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998363, 32.317413, 35.489975>,  <45.181011, 32.345528, 35.336842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998363, 32.317413, 35.489975>,  <44.693954, 32.270554, 35.745197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998363, 32.317413, 35.489975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440408, 0.815472, -0.375562,
		0.476319, 0.566817, 0.672189,
		0.761026, 0.117150, -0.638056,
		45.226673, 32.352558, 35.298557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858963, 32.891029, 35.785175>,  <44.693954, 32.270554, 35.745197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858963, 32.891029, 35.785175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037556, 32.826263, 35.433167>,  <45.144711, 32.787403, 35.221962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037556, 32.826263, 35.433167>,  <44.858963, 32.891029, 35.785175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037556, 32.826263, 35.433167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292008, 0.903282, -0.314347,
		0.845804, 0.397324, 0.356020,
		0.446484, -0.161915, -0.880020,
		45.171501, 32.777687, 35.169159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119255, 33.540844, 35.610840>,  <44.858963, 32.891029, 35.785175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119255, 33.540844, 35.610840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114391, 33.344910, 35.262146>,  <45.111473, 33.227348, 35.052929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114391, 33.344910, 35.262146>,  <45.119255, 33.540844, 35.610840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114391, 33.344910, 35.262146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256757, 0.844096, -0.470720,
		0.966399, 0.218098, -0.136034,
		-0.012163, -0.489831, -0.871732,
		45.110741, 33.197960, 35.000626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615337, 33.799671, 35.180862>,  <45.119255, 33.540844, 35.610840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615337, 33.799671, 35.180862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335945, 33.649677, 34.937057>,  <45.168308, 33.559681, 34.790775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335945, 33.649677, 34.937057>,  <45.615337, 33.799671, 35.180862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335945, 33.649677, 34.937057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105680, 0.896431, -0.430399,
		0.707780, -0.236213, -0.665771,
		-0.698483, -0.374987, -0.609513,
		45.126400, 33.537182, 34.754204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755966, 34.157413, 34.592747>,  <45.615337, 33.799671, 35.180862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755966, 34.157413, 34.592747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383640, 34.011219, 34.592087>,  <45.160244, 33.923504, 34.591690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383640, 34.011219, 34.592087>,  <45.755966, 34.157413, 34.592747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383640, 34.011219, 34.592087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320322, 0.817964, -0.477838,
		0.175993, -0.444250, -0.878446,
		-0.930817, -0.365482, -0.001652,
		45.104397, 33.901573, 34.591591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559883, 34.232368, 33.892326>,  <45.755966, 34.157413, 34.592747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559883, 34.232368, 33.892326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254547, 34.247616, 34.150276>,  <45.071346, 34.256763, 34.305046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254547, 34.247616, 34.150276>,  <45.559883, 34.232368, 33.892326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254547, 34.247616, 34.150276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265642, 0.891428, -0.367139,
		-0.588854, -0.451557, -0.670334,
		-0.763338, 0.038123, 0.644873,
		45.025547, 34.259052, 34.343739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925091, 34.967705, 33.924992>,  <45.559883, 34.232368, 33.892326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925091, 34.967705, 33.924992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612354, 34.857441, 33.701302>,  <45.424713, 34.791283, 33.567085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612354, 34.857441, 33.701302>,  <45.925091, 34.967705, 33.924992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612354, 34.857441, 33.701302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622294, 0.400276, 0.672703,
		0.038405, 0.873950, -0.484496,
		-0.781841, -0.275664, -0.559227,
		45.377804, 34.774742, 33.533535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647617, 34.917706, 33.924145>,  <45.925091, 34.967705, 33.924992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647617, 34.917706, 33.924145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411343, 34.715294, 34.175549>,  <46.269577, 34.593845, 34.326389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411343, 34.715294, 34.175549>,  <46.647617, 34.917706, 33.924145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411343, 34.715294, 34.175549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645340, -0.763848, -0.008491,
		0.484379, 0.400584, 0.777759,
		-0.590689, -0.506032, 0.628505,
		46.234135, 34.563484, 34.364101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031357, 34.679714, 34.545120>,  <46.647617, 34.917706, 33.924145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031357, 34.679714, 34.545120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734997, 34.415951, 34.494129>,  <46.557182, 34.257694, 34.463535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734997, 34.415951, 34.494129>,  <47.031357, 34.679714, 34.545120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734997, 34.415951, 34.494129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665263, -0.746595, -0.004574,
		-0.092155, -0.088192, 0.991831,
		-0.740900, -0.659407, -0.127473,
		46.512726, 34.218128, 34.455887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226044, 34.956417, 35.246643>,  <47.031357, 34.679714, 34.545120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226044, 34.956417, 35.246643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587505, 34.944332, 35.075764>,  <47.804382, 34.937080, 34.973236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587505, 34.944332, 35.075764>,  <47.226044, 34.956417, 35.246643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587505, 34.944332, 35.075764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122424, 0.974106, 0.190077,
		0.410389, -0.224063, 0.883955,
		0.903655, -0.030212, -0.427194,
		47.858601, 34.935268, 34.947605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.913868, 32.328339, 44.078060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.514277, 32.316788, 44.064178>,  <30.274521, 32.309856, 44.055851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.514277, 32.316788, 44.064178>,  <30.913868, 32.328339, 44.078060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514277, 32.316788, 44.064178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026077, 0.258455, -0.965671,
		0.036854, -0.965592, -0.257439,
		-0.998981, -0.028875, -0.034705,
		30.214582, 32.308125, 44.053768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818962, 32.018219, 43.482449>,  <30.913868, 32.328339, 44.078060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818962, 32.018219, 43.482449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.462166, 32.189289, 43.541027>,  <30.248087, 32.291931, 43.576176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.462166, 32.189289, 43.541027>,  <30.818962, 32.018219, 43.482449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462166, 32.189289, 43.541027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090138, 0.149190, -0.984692,
		-0.442973, -0.891538, -0.094527,
		-0.891992, 0.427672, 0.146448,
		30.194569, 32.317589, 43.584961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224186, 31.585161, 43.079601>,  <30.818962, 32.018219, 43.482449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224186, 31.585161, 43.079601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.116409, 31.965443, 43.141006>,  <30.051743, 32.193611, 43.177849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.116409, 31.965443, 43.141006>,  <30.224186, 31.585161, 43.079601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116409, 31.965443, 43.141006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104633, 0.129563, -0.986035,
		-0.957316, -0.281741, 0.064565,
		-0.269442, 0.950703, 0.153512,
		30.035576, 32.250652, 43.187061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933897, 31.780394, 42.416851>,  <30.224186, 31.585161, 43.079601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933897, 31.780394, 42.416851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.944874, 32.129898, 42.611084>,  <29.951460, 32.339600, 42.727623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.944874, 32.129898, 42.611084>,  <29.933897, 31.780394, 42.416851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944874, 32.129898, 42.611084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094573, 0.485854, -0.868908,
		-0.995140, -0.022077, 0.095967,
		0.027443, 0.873761, 0.485581,
		29.953106, 32.392025, 42.756760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268572, 32.149326, 42.275799>,  <29.933897, 31.780394, 42.416851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268572, 32.149326, 42.275799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.580376, 32.390156, 42.344929>,  <29.767458, 32.534653, 42.386406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.580376, 32.390156, 42.344929>,  <29.268572, 32.149326, 42.275799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580376, 32.390156, 42.344929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053400, 0.338772, -0.939352,
		-0.624109, 0.723006, 0.296228,
		0.779511, 0.602076, 0.172822,
		29.814228, 32.570778, 42.396774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098547, 32.744781, 41.917286>,  <29.268572, 32.149326, 42.275799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098547, 32.744781, 41.917286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.491739, 32.779282, 41.982166>,  <29.727655, 32.799980, 42.021095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.491739, 32.779282, 41.982166>,  <29.098547, 32.744781, 41.917286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491739, 32.779282, 41.982166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123690, 0.342093, -0.931490,
		-0.135829, 0.935699, 0.325603,
		0.982981, 0.086250, 0.162203,
		29.786634, 32.805157, 42.030827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263355, 33.327526, 41.589020>,  <29.098547, 32.744781, 41.917286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263355, 33.327526, 41.589020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.620329, 33.157475, 41.649452>,  <29.834515, 33.055443, 41.685711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.620329, 33.157475, 41.649452>,  <29.263355, 33.327526, 41.589020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620329, 33.157475, 41.649452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237247, 0.157367, -0.958619,
		0.383759, 0.891349, 0.241299,
		0.892437, -0.425126, 0.151079,
		29.888060, 33.029938, 41.694775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723246, 33.806999, 41.409676>,  <29.263355, 33.327526, 41.589020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723246, 33.806999, 41.409676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.913397, 33.455555, 41.391506>,  <30.027489, 33.244690, 41.380604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.913397, 33.455555, 41.391506>,  <29.723246, 33.806999, 41.409676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913397, 33.455555, 41.391506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401179, 0.262430, -0.877603,
		0.782987, 0.398973, 0.477233,
		0.475380, -0.878607, -0.045420,
		30.056011, 33.191975, 41.377880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215521, 33.973030, 40.925903>,  <29.723246, 33.806999, 41.409676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215521, 33.973030, 40.925903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.245695, 33.578327, 40.983334>,  <30.263800, 33.341503, 41.017792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.245695, 33.578327, 40.983334>,  <30.215521, 33.973030, 40.925903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245695, 33.578327, 40.983334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540376, -0.080552, -0.837559,
		0.838035, 0.140767, 0.527145,
		0.075438, -0.986760, 0.143573,
		30.268326, 33.282299, 41.026405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920420, 33.845646, 40.986652>,  <30.215521, 33.973030, 40.925903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920420, 33.845646, 40.986652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.740007, 33.518696, 40.843281>,  <30.631760, 33.322525, 40.757259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.740007, 33.518696, 40.843281>,  <30.920420, 33.845646, 40.986652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740007, 33.518696, 40.843281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533274, 0.075221, -0.842592,
		0.715675, -0.571174, 0.401958,
		-0.451031, -0.817375, -0.358426,
		30.604698, 33.273483, 40.735752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444086, 33.581402, 40.719337>,  <30.920420, 33.845646, 40.986652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444086, 33.581402, 40.719337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.132631, 33.396870, 40.549210>,  <30.945759, 33.286152, 40.447132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.132631, 33.396870, 40.549210>,  <31.444086, 33.581402, 40.719337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132631, 33.396870, 40.549210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430173, 0.101006, -0.897078,
		0.456809, -0.881460, 0.119805,
		-0.778637, -0.461331, -0.425321,
		30.899040, 33.258472, 40.421612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673904, 32.966412, 40.300259>,  <31.444086, 33.581402, 40.719337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673904, 32.966412, 40.300259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.313105, 33.078682, 40.169041>,  <31.096624, 33.146042, 40.090309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.313105, 33.078682, 40.169041>,  <31.673904, 32.966412, 40.300259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313105, 33.078682, 40.169041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380751, 0.158957, -0.910913,
		-0.203525, -0.946549, -0.250246,
		-0.902001, 0.280675, -0.328047,
		31.042503, 33.162884, 40.070625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491488, 32.515682, 39.805668>,  <31.673904, 32.966412, 40.300259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491488, 32.515682, 39.805668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.286968, 32.849991, 39.725613>,  <31.164257, 33.050575, 39.677582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.286968, 32.849991, 39.725613>,  <31.491488, 32.515682, 39.805668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286968, 32.849991, 39.725613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328020, -0.025457, -0.944328,
		-0.794340, -0.548482, -0.261135,
		-0.511299, 0.835775, -0.200134,
		31.133579, 33.100723, 39.665573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368076, 32.410564, 39.057400>,  <31.491488, 32.515682, 39.805668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368076, 32.410564, 39.057400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.281630, 32.797451, 39.110756>,  <31.229761, 33.029583, 39.142769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.281630, 32.797451, 39.110756>,  <31.368076, 32.410564, 39.057400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281630, 32.797451, 39.110756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444666, 0.219131, -0.868478,
		-0.869233, -0.128379, -0.477444,
		-0.216117, 0.967213, 0.133390,
		31.216795, 33.087616, 39.150772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904289, 32.714767, 38.445522>,  <31.368076, 32.410564, 39.057400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904289, 32.714767, 38.445522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.079922, 33.035351, 38.607944>,  <31.185301, 33.227699, 38.705399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.079922, 33.035351, 38.607944>,  <30.904289, 32.714767, 38.445522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079922, 33.035351, 38.607944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503974, 0.154441, -0.849799,
		-0.743786, 0.577771, -0.336100,
		0.439082, 0.801454, 0.406052,
		31.211647, 33.275787, 38.729759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816109, 33.181446, 37.977974>,  <30.904289, 32.714767, 38.445522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816109, 33.181446, 37.977974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126038, 33.298790, 38.201973>,  <31.311995, 33.369198, 38.336372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126038, 33.298790, 38.201973>,  <30.816109, 33.181446, 37.977974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126038, 33.298790, 38.201973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514747, 0.221480, -0.828241,
		-0.366999, 0.929993, 0.020602,
		0.774821, 0.293359, 0.559994,
		31.358484, 33.386799, 38.369972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176369, 33.818413, 37.638172>,  <30.816109, 33.181446, 37.977974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176369, 33.818413, 37.638172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.448814, 33.671112, 37.891304>,  <31.612282, 33.582729, 38.043182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.448814, 33.671112, 37.891304>,  <31.176369, 33.818413, 37.638172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448814, 33.671112, 37.891304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717005, 0.160444, -0.678352,
		0.148274, 0.915776, 0.373322,
		0.681116, -0.368255, 0.632827,
		31.653149, 33.560635, 38.081154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792858, 34.208393, 37.561760>,  <31.176369, 33.818413, 37.638172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792858, 34.208393, 37.561760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931162, 33.867729, 37.719303>,  <32.014145, 33.663330, 37.813828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931162, 33.867729, 37.719303>,  <31.792858, 34.208393, 37.561760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931162, 33.867729, 37.719303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789804, 0.037526, -0.612210,
		0.506615, 0.522749, 0.685620,
		0.345761, -0.851660, 0.393859,
		32.034889, 33.612232, 37.837460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472527, 34.353268, 37.578781>,  <31.792858, 34.208393, 37.561760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472527, 34.353268, 37.578781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.462673, 33.954369, 37.606728>,  <32.456760, 33.715027, 37.623493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.462673, 33.954369, 37.606728>,  <32.472527, 34.353268, 37.578781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462673, 33.954369, 37.606728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795231, -0.061897, -0.603139,
		0.605806, 0.040700, 0.794570,
		-0.024634, -0.997252, 0.069864,
		32.455284, 33.655193, 37.627686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126892, 34.191273, 37.701405>,  <32.472527, 34.353268, 37.578781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126892, 34.191273, 37.701405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.963982, 33.851879, 37.566231>,  <32.866238, 33.648243, 37.485126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.963982, 33.851879, 37.566231>,  <33.126892, 34.191273, 37.701405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963982, 33.851879, 37.566231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715696, -0.066641, -0.695225,
		0.567369, -0.525004, 0.634400,
		-0.407273, -0.848487, -0.337933,
		32.841801, 33.597332, 37.464851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642002, 33.822292, 37.560738>,  <33.126892, 34.191273, 37.701405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642002, 33.822292, 37.560738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.353676, 33.618359, 37.372910>,  <33.180679, 33.495998, 37.260212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.353676, 33.618359, 37.372910>,  <33.642002, 33.822292, 37.560738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353676, 33.618359, 37.372910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601950, -0.124582, -0.788756,
		0.343638, -0.851202, 0.396697,
		-0.720811, -0.509838, -0.469570,
		33.137432, 33.465408, 37.232040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986973, 33.312267, 37.269573>,  <33.642002, 33.822292, 37.560738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986973, 33.312267, 37.269573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659706, 33.381752, 37.050331>,  <33.463345, 33.423443, 36.918785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659706, 33.381752, 37.050331>,  <33.986973, 33.312267, 37.269573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659706, 33.381752, 37.050331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550323, -0.039539, -0.834015,
		-0.166553, -0.984002, -0.063250,
		-0.818171, 0.173716, -0.548105,
		33.414253, 33.433868, 36.885899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638702, 33.136585, 37.171524>,  <33.986973, 33.312267, 37.269573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638702, 33.136585, 37.171524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949505, 33.377666, 37.098850>,  <35.135986, 33.522316, 37.055248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949505, 33.377666, 37.098850>,  <34.638702, 33.136585, 37.171524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949505, 33.377666, 37.098850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036218, 0.245334, 0.968762,
		0.628453, -0.759312, 0.168797,
		0.777004, 0.602708, -0.181682,
		35.182606, 33.558479, 37.044346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057709, 32.974792, 37.628811>,  <34.638702, 33.136585, 37.171524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057709, 32.974792, 37.628811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193420, 33.333424, 37.514950>,  <35.274849, 33.548603, 37.446632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193420, 33.333424, 37.514950>,  <35.057709, 32.974792, 37.628811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193420, 33.333424, 37.514950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028892, 0.292532, 0.955819,
		0.940242, -0.332513, 0.073346,
		0.339279, 0.896582, -0.284657,
		35.295204, 33.602398, 37.429554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625000, 33.137566, 38.116894>,  <35.057709, 32.974792, 37.628811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625000, 33.137566, 38.116894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.477028, 33.469910, 37.950603>,  <35.388245, 33.669315, 37.850830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.477028, 33.469910, 37.950603>,  <35.625000, 33.137566, 38.116894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477028, 33.469910, 37.950603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010101, 0.443841, 0.896048,
		0.929006, 0.335671, -0.155796,
		-0.369927, 0.830861, -0.415722,
		35.366051, 33.719170, 37.825886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092327, 33.577366, 38.359222>,  <35.625000, 33.137566, 38.116894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092327, 33.577366, 38.359222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753445, 33.760204, 38.250919>,  <35.550114, 33.869907, 38.185940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753445, 33.760204, 38.250919>,  <36.092327, 33.577366, 38.359222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753445, 33.760204, 38.250919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090069, 0.378684, 0.921133,
		0.523574, 0.804776, -0.279653,
		-0.847206, 0.457093, -0.270754,
		35.499283, 33.897331, 38.169693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147762, 34.134808, 38.737823>,  <36.092327, 33.577366, 38.359222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147762, 34.134808, 38.737823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763523, 34.151875, 38.627960>,  <35.532982, 34.162113, 38.562042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763523, 34.151875, 38.627960>,  <36.147762, 34.134808, 38.737823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763523, 34.151875, 38.627960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240774, 0.365957, 0.898946,
		0.138868, 0.929653, -0.341263,
		-0.960595, 0.042668, -0.274656,
		35.475346, 34.164677, 38.545563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978256, 34.706329, 39.016617>,  <36.147762, 34.134808, 38.737823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978256, 34.706329, 39.016617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630020, 34.519756, 38.953983>,  <35.421078, 34.407814, 38.916405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630020, 34.519756, 38.953983>,  <35.978256, 34.706329, 39.016617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630020, 34.519756, 38.953983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358213, 0.382715, 0.851594,
		-0.337283, 0.797478, -0.500269,
		-0.870588, -0.466431, -0.156584,
		35.368843, 34.379826, 38.907009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503872, 35.197754, 39.384480>,  <35.978256, 34.706329, 39.016617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503872, 35.197754, 39.384480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282974, 34.868542, 39.331333>,  <35.150436, 34.671017, 39.299446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282974, 34.868542, 39.331333>,  <35.503872, 35.197754, 39.384480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282974, 34.868542, 39.331333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541477, 0.232913, 0.807808,
		-0.633901, 0.518051, -0.574275,
		-0.552242, -0.823028, -0.132869,
		35.117302, 34.621632, 39.291473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840271, 35.347538, 39.598526>,  <35.503872, 35.197754, 39.384480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840271, 35.347538, 39.598526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847927, 34.947830, 39.611717>,  <34.852520, 34.708004, 39.619633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847927, 34.947830, 39.611717>,  <34.840271, 35.347538, 39.598526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847927, 34.947830, 39.611717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578519, 0.015836, 0.815515,
		-0.815444, -0.034687, -0.577795,
		0.019138, -0.999273, 0.032981,
		34.853668, 34.648048, 39.621613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131996, 35.178108, 39.731770>,  <34.840271, 35.347538, 39.598526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131996, 35.178108, 39.731770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.364540, 34.889454, 39.882107>,  <34.504066, 34.716263, 39.972309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.364540, 34.889454, 39.882107>,  <34.131996, 35.178108, 39.731770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364540, 34.889454, 39.882107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600302, -0.068610, 0.796825,
		-0.549231, -0.688865, -0.473086,
		0.581363, -0.721635, 0.375844,
		34.538948, 34.672962, 39.994862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654034, 34.782822, 40.210060>,  <34.131996, 35.178108, 39.731770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654034, 34.782822, 40.210060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994259, 34.599949, 40.314003>,  <34.198395, 34.490223, 40.376369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.994259, 34.599949, 40.314003>,  <33.654034, 34.782822, 40.210060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994259, 34.599949, 40.314003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396241, -0.232308, 0.888271,
		-0.345741, -0.858494, -0.378749,
		0.850563, -0.457188, 0.259852,
		34.249428, 34.462791, 40.391960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428417, 34.062187, 40.551636>,  <33.654034, 34.782822, 40.210060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428417, 34.062187, 40.551636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.796276, 34.154205, 40.678967>,  <34.016991, 34.209415, 40.755363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.796276, 34.154205, 40.678967>,  <33.428417, 34.062187, 40.551636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796276, 34.154205, 40.678967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239975, -0.312478, 0.919113,
		0.310905, -0.921649, -0.232165,
		0.919646, 0.230043, 0.318324,
		34.072170, 34.223217, 40.774464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649307, 33.529808, 40.922405>,  <33.428417, 34.062187, 40.551636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649307, 33.529808, 40.922405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866203, 33.824459, 41.084080>,  <33.996342, 34.001247, 41.181084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866203, 33.824459, 41.084080>,  <33.649307, 33.529808, 40.922405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866203, 33.824459, 41.084080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320120, -0.263643, 0.909954,
		0.776853, -0.622798, 0.092851,
		0.542238, 0.736624, 0.404182,
		34.028873, 34.045444, 41.205334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953548, 33.254391, 41.462666>,  <33.649307, 33.529808, 40.922405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953548, 33.254391, 41.462666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.932526, 33.650185, 41.516563>,  <33.919910, 33.887661, 41.548904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.932526, 33.650185, 41.516563>,  <33.953548, 33.254391, 41.462666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932526, 33.650185, 41.516563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194597, -0.142496, 0.970478,
		0.979474, 0.024788, 0.200040,
		-0.052561, 0.989485, 0.134747,
		33.916756, 33.947029, 41.556988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359894, 33.542538, 42.062691>,  <33.953548, 33.254391, 41.462666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359894, 33.542538, 42.062691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.016453, 33.732189, 41.984711>,  <33.810387, 33.845978, 41.937923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.016453, 33.732189, 41.984711>,  <34.359894, 33.542538, 42.062691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016453, 33.732189, 41.984711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392628, -0.363692, 0.844731,
		0.329608, 0.801831, 0.498422,
		-0.858604, 0.474125, -0.194946,
		33.758873, 33.874428, 41.926228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176937, 33.841057, 42.729595>,  <34.359894, 33.542538, 42.062691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176937, 33.841057, 42.729595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.844784, 33.873352, 42.509071>,  <33.645493, 33.892731, 42.376755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.844784, 33.873352, 42.509071>,  <34.176937, 33.841057, 42.729595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844784, 33.873352, 42.509071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540137, -0.359592, 0.760885,
		-0.136813, 0.929610, 0.342211,
		-0.830382, 0.080742, -0.551314,
		33.595669, 33.897575, 42.343678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727451, 34.228642, 43.137665>,  <34.176937, 33.841057, 42.729595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727451, 34.228642, 43.137665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507961, 34.023537, 42.873554>,  <33.376266, 33.900475, 42.715088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507961, 34.023537, 42.873554>,  <33.727451, 34.228642, 43.137665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507961, 34.023537, 42.873554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584321, -0.329606, 0.741572,
		-0.597884, 0.792737, -0.118754,
		-0.548730, -0.512764, -0.660279,
		33.343342, 33.869709, 42.675472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022263, 34.399658, 43.306156>,  <33.727451, 34.228642, 43.137665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022263, 34.399658, 43.306156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.995239, 34.057949, 43.099991>,  <32.979027, 33.852924, 42.976292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.995239, 34.057949, 43.099991>,  <33.022263, 34.399658, 43.306156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995239, 34.057949, 43.099991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590306, -0.382251, 0.710931,
		-0.804347, 0.352283, -0.478458,
		-0.067558, -0.854272, -0.515417,
		32.974972, 33.801666, 42.945366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425476, 34.257950, 43.389725>,  <33.022263, 34.399658, 43.306156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425476, 34.257950, 43.389725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539867, 33.891670, 43.276791>,  <32.608501, 33.671902, 43.209030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.539867, 33.891670, 43.276791>,  <32.425476, 34.257950, 43.389725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539867, 33.891670, 43.276791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650690, -0.401864, 0.644289,
		-0.703435, -0.000539, -0.710760,
		0.285976, -0.915699, -0.282334,
		32.625660, 33.616959, 43.192089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.666092, 33.606342, 43.353893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011097, 33.405190, 43.376461>,  <32.218098, 33.284496, 43.389999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011097, 33.405190, 43.376461>,  <31.666092, 33.606342, 43.353893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011097, 33.405190, 43.376461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254626, -0.334943, 0.907182,
		-0.437313, -0.796818, -0.416939,
		0.862510, -0.502886, 0.056416,
		32.269852, 33.254326, 43.393387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507795, 32.913307, 43.503544>,  <31.666092, 33.606342, 43.353893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507795, 32.913307, 43.503544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886679, 32.951916, 43.625839>,  <32.114010, 32.975082, 43.699215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886679, 32.951916, 43.625839>,  <31.507795, 32.913307, 43.503544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886679, 32.951916, 43.625839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262103, -0.316072, 0.911812,
		0.184646, -0.943813, -0.274087,
		0.947211, 0.096523, 0.305738,
		32.170841, 32.980873, 43.717560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664850, 32.320713, 43.839989>,  <31.507795, 32.913307, 43.503544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664850, 32.320713, 43.839989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.962006, 32.554356, 43.970795>,  <32.140297, 32.694542, 44.049278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.962006, 32.554356, 43.970795>,  <31.664850, 32.320713, 43.839989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962006, 32.554356, 43.970795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109307, -0.376113, 0.920104,
		0.660433, -0.719278, -0.215562,
		0.742886, 0.584105, 0.327019,
		32.184872, 32.729588, 44.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049686, 31.862314, 44.194607>,  <31.664850, 32.320713, 43.839989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049686, 31.862314, 44.194607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155857, 32.218624, 44.342155>,  <32.219559, 32.432411, 44.430683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155857, 32.218624, 44.342155>,  <32.049686, 31.862314, 44.194607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155857, 32.218624, 44.342155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190014, -0.326762, 0.925808,
		0.945222, -0.315821, 0.082530,
		0.265422, 0.890777, 0.368873,
		32.235485, 32.485859, 44.452816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521584, 31.677443, 44.646351>,  <32.049686, 31.862314, 44.194607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521584, 31.677443, 44.646351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405727, 32.049862, 44.735126>,  <32.336212, 32.273315, 44.788391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405727, 32.049862, 44.735126>,  <32.521584, 31.677443, 44.646351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405727, 32.049862, 44.735126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032398, -0.241279, 0.969915,
		0.956587, 0.273738, 0.100048,
		-0.289642, 0.931049, 0.221936,
		32.318836, 32.329178, 44.801708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926315, 31.913807, 45.168781>,  <32.521584, 31.677443, 44.646351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926315, 31.913807, 45.168781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.587513, 32.124447, 45.197815>,  <32.384232, 32.250832, 45.215237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.587513, 32.124447, 45.197815>,  <32.926315, 31.913807, 45.168781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587513, 32.124447, 45.197815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006753, -0.147191, 0.989085,
		0.531534, 0.837275, 0.128228,
		-0.847010, 0.526598, 0.072583,
		32.333408, 32.282425, 45.219589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958385, 32.203209, 45.894791>,  <32.926315, 31.913807, 45.168781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958385, 32.203209, 45.894791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575314, 32.230160, 45.782856>,  <32.345470, 32.246330, 45.715694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.575314, 32.230160, 45.782856>,  <32.958385, 32.203209, 45.894791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575314, 32.230160, 45.782856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286835, -0.142487, 0.947324,
		0.023952, 0.987501, 0.155783,
		-0.957681, 0.067374, -0.279837,
		32.288010, 32.250374, 45.698906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667591, 32.583145, 46.453938>,  <32.958385, 32.203209, 45.894791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667591, 32.583145, 46.453938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375820, 32.379807, 46.270844>,  <32.200760, 32.257801, 46.160988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375820, 32.379807, 46.270844>,  <32.667591, 32.583145, 46.453938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375820, 32.379807, 46.270844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361803, -0.281192, 0.888836,
		-0.580552, 0.813948, 0.021186,
		-0.729423, -0.508350, -0.457735,
		32.156994, 32.227303, 46.133522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067890, 32.815525, 46.812702>,  <32.667591, 32.583145, 46.453938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067890, 32.815525, 46.812702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971916, 32.457714, 46.661839>,  <31.914333, 32.243027, 46.571320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971916, 32.457714, 46.661839>,  <32.067890, 32.815525, 46.812702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971916, 32.457714, 46.661839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428690, -0.250951, 0.867899,
		-0.871010, 0.369922, -0.323264,
		-0.239932, -0.894528, -0.377163,
		31.899937, 32.189354, 46.548691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449524, 32.758755, 47.119400>,  <32.067890, 32.815525, 46.812702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449524, 32.758755, 47.119400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551142, 32.400063, 46.974434>,  <31.612112, 32.184849, 46.887455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551142, 32.400063, 46.974434>,  <31.449524, 32.758755, 47.119400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551142, 32.400063, 46.974434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473219, -0.442033, 0.762017,
		-0.843519, -0.022087, -0.536645,
		0.254045, -0.896727, -0.362412,
		31.627356, 32.131046, 46.865711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858276, 32.399128, 47.132336>,  <31.449524, 32.758755, 47.119400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858276, 32.399128, 47.132336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145443, 32.120735, 47.137966>,  <31.317743, 31.953699, 47.141346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145443, 32.120735, 47.137966>,  <30.858276, 32.399128, 47.132336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145443, 32.120735, 47.137966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345048, -0.338209, 0.875533,
		-0.604598, -0.633417, -0.482954,
		0.717917, -0.695987, 0.014079,
		31.360819, 31.911940, 47.142189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555317, 31.769045, 47.438942>,  <30.858276, 32.399128, 47.132336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555317, 31.769045, 47.438942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945778, 31.697466, 47.488106>,  <31.180054, 31.654518, 47.517605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945778, 31.697466, 47.488106>,  <30.555317, 31.769045, 47.438942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945778, 31.697466, 47.488106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190818, -0.437237, 0.878870,
		-0.103528, -0.881364, -0.460955,
		0.976151, -0.178946, 0.122914,
		31.238623, 31.643782, 47.524979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690863, 30.955099, 47.650673>,  <30.555317, 31.769045, 47.438942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690863, 30.955099, 47.650673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.018881, 31.157330, 47.757942>,  <31.215693, 31.278667, 47.822304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.018881, 31.157330, 47.757942>,  <30.690863, 30.955099, 47.650673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018881, 31.157330, 47.757942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008083, -0.478775, 0.877900,
		0.572238, -0.717753, -0.396705,
		0.820048, 0.505575, 0.268171,
		31.264894, 31.309002, 47.838394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189791, 30.473328, 47.938053>,  <30.690863, 30.955099, 47.650673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189791, 30.473328, 47.938053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299591, 30.826214, 48.091076>,  <31.365471, 31.037945, 48.182888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299591, 30.826214, 48.091076>,  <31.189791, 30.473328, 47.938053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299591, 30.826214, 48.091076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185371, -0.438924, 0.879195,
		0.943550, -0.170425, -0.284022,
		0.274501, 0.882214, 0.382555,
		31.381941, 31.090878, 48.205841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851027, 30.351673, 48.216129>,  <31.189791, 30.473328, 47.938053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851027, 30.351673, 48.216129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.705799, 30.672777, 48.405342>,  <31.618662, 30.865438, 48.518871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.705799, 30.672777, 48.405342>,  <31.851027, 30.351673, 48.216129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705799, 30.672777, 48.405342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345645, -0.355415, 0.868453,
		0.865280, 0.478811, -0.148428,
		-0.363071, 0.802758, 0.473032,
		31.596878, 30.913605, 48.547253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344879, 30.546509, 48.675114>,  <31.851027, 30.351673, 48.216129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344879, 30.546509, 48.675114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.032131, 30.725964, 48.848274>,  <31.844482, 30.833637, 48.952171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.032131, 30.725964, 48.848274>,  <32.344879, 30.546509, 48.675114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032131, 30.725964, 48.848274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273981, -0.376472, 0.884988,
		0.560015, 0.810551, 0.171434,
		-0.781868, 0.448637, 0.432906,
		31.797571, 30.860554, 48.978146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548313, 30.841816, 49.349110>,  <32.344879, 30.546509, 48.675114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548313, 30.841816, 49.349110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152481, 30.790960, 49.376163>,  <31.914982, 30.760447, 49.392395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152481, 30.790960, 49.376163>,  <32.548313, 30.841816, 49.349110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152481, 30.790960, 49.376163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108071, -0.345196, 0.932288,
		-0.095180, 0.929880, 0.355338,
		-0.989576, -0.127137, 0.067637,
		31.855608, 30.752819, 49.396454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468746, 31.086651, 49.982708>,  <32.548313, 30.841816, 49.349110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468746, 31.086651, 49.982708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.134468, 30.886919, 49.891247>,  <31.933901, 30.767080, 49.836369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.134468, 30.886919, 49.891247>,  <32.468746, 31.086651, 49.982708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134468, 30.886919, 49.891247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052852, -0.341288, 0.938471,
		-0.546641, 0.796363, 0.258824,
		-0.835697, -0.499328, -0.228651,
		31.883759, 30.737122, 49.822651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925013, 31.242132, 50.461025>,  <32.468746, 31.086651, 49.982708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925013, 31.242132, 50.461025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841583, 30.884804, 50.301792>,  <31.791525, 30.670406, 50.206253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841583, 30.884804, 50.301792>,  <31.925013, 31.242132, 50.461025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841583, 30.884804, 50.301792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155061, -0.371684, 0.915318,
		-0.965636, 0.252640, -0.060996,
		-0.208575, -0.893322, -0.398086,
		31.779011, 30.616808, 50.182365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465328, 31.086618, 50.921043>,  <31.925013, 31.242132, 50.461025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465328, 31.086618, 50.921043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602341, 30.760962, 50.733490>,  <31.684547, 30.565567, 50.620960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602341, 30.760962, 50.733490>,  <31.465328, 31.086618, 50.921043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602341, 30.760962, 50.733490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055935, -0.515857, 0.854846,
		-0.937840, -0.266584, -0.222236,
		0.342530, -0.814140, -0.468880,
		31.705099, 30.516720, 50.592827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103977, 30.599789, 51.187988>,  <31.465328, 31.086618, 50.921043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103977, 30.599789, 51.187988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.392332, 30.372667, 51.029034>,  <31.565346, 30.236395, 50.933659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.392332, 30.372667, 51.029034>,  <31.103977, 30.599789, 51.187988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392332, 30.372667, 51.029034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150503, -0.431449, 0.889495,
		-0.676512, -0.701035, -0.225570,
		0.720888, -0.567804, -0.397388,
		31.608599, 30.202326, 50.909817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880903, 29.911102, 51.359039>,  <31.103977, 30.599789, 51.187988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880903, 29.911102, 51.359039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.272255, 29.923506, 51.277245>,  <31.507065, 29.930948, 51.228168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.272255, 29.923506, 51.277245>,  <30.880903, 29.911102, 51.359039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272255, 29.923506, 51.277245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200533, -0.384234, 0.901194,
		-0.050625, -0.922715, -0.382144,
		0.978378, 0.031010, -0.204487,
		31.565769, 29.932808, 51.215897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382574, 29.456318, 51.511971>,  <30.880903, 29.911102, 51.359039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382574, 29.456318, 51.511971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750467, 29.302835, 51.478832>,  <30.971203, 29.210747, 51.458950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750467, 29.302835, 51.478832>,  <30.382574, 29.456318, 51.511971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750467, 29.302835, 51.478832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300562, -0.824106, 0.480116,
		-0.252500, -0.416676, -0.873284,
		0.919732, -0.383705, -0.082849,
		31.026386, 29.187723, 51.453976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216265, 28.832066, 51.188156>,  <30.382574, 29.456318, 51.511971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216265, 28.832066, 51.188156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.553255, 28.848684, 51.403008>,  <30.755449, 28.858656, 51.531918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.553255, 28.848684, 51.403008>,  <30.216265, 28.832066, 51.188156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553255, 28.848684, 51.403008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276203, -0.822707, 0.496855,
		0.462541, -0.566945, -0.681637,
		0.842477, 0.041545, 0.537128,
		30.805998, 28.861147, 51.564144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870863, 28.186842, 51.221508>,  <30.216265, 28.832066, 51.188156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870863, 28.186842, 51.221508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.477768, 28.189659, 51.147560>,  <29.241911, 28.191349, 51.103191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.477768, 28.189659, 51.147560>,  <29.870863, 28.186842, 51.221508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477768, 28.189659, 51.147560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172060, 0.401972, -0.899341,
		0.067976, -0.915625, -0.396246,
		-0.982738, 0.007044, -0.184867,
		29.182947, 28.191772, 51.092098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771294, 27.873816, 50.599319>,  <29.870863, 28.186842, 51.221508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771294, 27.873816, 50.599319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.439383, 28.087868, 50.662697>,  <29.240236, 28.216299, 50.700726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.439383, 28.087868, 50.662697>,  <29.771294, 27.873816, 50.599319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439383, 28.087868, 50.662697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090323, 0.408926, -0.908087,
		-0.550739, -0.739197, -0.387652,
		-0.829776, 0.535133, 0.158445,
		29.190451, 28.248407, 50.710232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362217, 27.730690, 49.978649>,  <29.771294, 27.873816, 50.599319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362217, 27.730690, 49.978649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.238047, 28.077255, 50.135090>,  <29.163544, 28.285194, 50.228954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.238047, 28.077255, 50.135090>,  <29.362217, 27.730690, 49.978649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238047, 28.077255, 50.135090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093229, 0.437194, -0.894522,
		-0.946014, -0.241222, -0.216492,
		-0.310427, 0.866414, 0.391103,
		29.144918, 28.337179, 50.252422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872400, 27.985035, 49.531891>,  <29.362217, 27.730690, 49.978649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872400, 27.985035, 49.531891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.975056, 28.319292, 49.726143>,  <29.036648, 28.519846, 49.842693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.975056, 28.319292, 49.726143>,  <28.872400, 27.985035, 49.531891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975056, 28.319292, 49.726143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011161, 0.499864, -0.866032,
		-0.966443, 0.227675, 0.118957,
		0.256637, 0.835643, 0.485631,
		29.052046, 28.569984, 49.871834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306217, 28.521193, 49.428181>,  <28.872400, 27.985035, 49.531891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306217, 28.521193, 49.428181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.674009, 28.674604, 49.462730>,  <28.894686, 28.766651, 49.483459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.674009, 28.674604, 49.462730>,  <28.306217, 28.521193, 49.428181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674009, 28.674604, 49.462730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129787, 0.503524, -0.854177,
		-0.371092, 0.774190, 0.512758,
		0.919481, 0.383528, 0.086374,
		28.949854, 28.789663, 49.488644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233881, 29.159391, 49.067993>,  <28.306217, 28.521193, 49.428181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233881, 29.159391, 49.067993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.631432, 29.155230, 49.111988>,  <28.869963, 29.152733, 49.138386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.631432, 29.155230, 49.111988>,  <28.233881, 29.159391, 49.067993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631432, 29.155230, 49.111988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098180, 0.539748, -0.836082,
		-0.050667, 0.841762, 0.537465,
		0.993878, -0.010406, 0.109992,
		28.929596, 29.152107, 49.144985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521742, 29.884008, 49.076653>,  <28.233881, 29.159391, 49.067993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521742, 29.884008, 49.076653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.834112, 29.669033, 48.949333>,  <29.021534, 29.540047, 48.872940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.834112, 29.669033, 48.949333>,  <28.521742, 29.884008, 49.076653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834112, 29.669033, 48.949333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065142, 0.576879, -0.814228,
		0.621218, 0.615117, 0.485509,
		0.780926, -0.537440, -0.318298,
		29.068390, 29.507801, 48.853844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031654, 30.346313, 49.009518>,  <28.521742, 29.884008, 49.076653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031654, 30.346313, 49.009518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.167177, 30.046946, 48.781456>,  <29.248491, 29.867325, 48.644619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.167177, 30.046946, 48.781456>,  <29.031654, 30.346313, 49.009518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167177, 30.046946, 48.781456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293167, 0.659805, -0.691889,
		0.894016, 0.067265, 0.442957,
		0.338805, -0.748420, -0.570156,
		29.268818, 29.822420, 48.610409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792030, 30.429359, 48.676670>,  <29.031654, 30.346313, 49.009518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792030, 30.429359, 48.676670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.579769, 30.186344, 48.440262>,  <29.452412, 30.040535, 48.298416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.579769, 30.186344, 48.440262>,  <29.792030, 30.429359, 48.676670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579769, 30.186344, 48.440262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333729, 0.491204, -0.804577,
		0.779123, -0.624190, -0.057905,
		-0.530652, -0.607540, -0.591019,
		29.420574, 30.004082, 48.262955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160435, 30.340031, 48.157761>,  <29.792030, 30.429359, 48.676670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160435, 30.340031, 48.157761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.825045, 30.195261, 47.994804>,  <29.623810, 30.108398, 47.897030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.825045, 30.195261, 47.994804>,  <30.160435, 30.340031, 48.157761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825045, 30.195261, 47.994804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263635, 0.384870, -0.884518,
		0.476922, -0.849050, -0.227288,
		-0.838476, -0.361925, -0.407392,
		29.573502, 30.086683, 47.872585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400949, 30.276516, 47.449860>,  <30.160435, 30.340031, 48.157761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400949, 30.276516, 47.449860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001873, 30.249533, 47.446602>,  <29.762428, 30.233343, 47.444645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001873, 30.249533, 47.446602>,  <30.400949, 30.276516, 47.449860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001873, 30.249533, 47.446602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020276, 0.410020, -0.911851,
		0.064852, -0.909579, -0.410440,
		-0.997689, -0.067457, -0.008148,
		29.702566, 30.229296, 47.444157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240818, 29.911655, 46.819885>,  <30.400949, 30.276516, 47.449860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240818, 29.911655, 46.819885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899065, 30.107759, 46.888790>,  <29.694014, 30.225422, 46.930134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899065, 30.107759, 46.888790>,  <30.240818, 29.911655, 46.819885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899065, 30.107759, 46.888790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083117, 0.456166, -0.886004,
		-0.512956, -0.742668, -0.430489,
		-0.854381, 0.490263, 0.172264,
		29.642750, 30.254839, 46.940468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717932, 29.866922, 46.203083>,  <30.240818, 29.911655, 46.819885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717932, 29.866922, 46.203083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.556881, 30.181683, 46.390137>,  <29.460251, 30.370539, 46.502369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.556881, 30.181683, 46.390137>,  <29.717932, 29.866922, 46.203083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556881, 30.181683, 46.390137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118985, 0.461542, -0.879103,
		-0.907598, -0.409591, -0.092200,
		-0.402626, 0.786902, 0.467630,
		29.436092, 30.417753, 46.530426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080696, 30.047575, 45.797054>,  <29.717932, 29.866922, 46.203083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080696, 30.047575, 45.797054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201164, 30.351721, 46.027233>,  <29.273445, 30.534208, 46.165340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201164, 30.351721, 46.027233>,  <29.080696, 30.047575, 45.797054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201164, 30.351721, 46.027233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221757, 0.642772, -0.733259,
		-0.927427, 0.093224, 0.362199,
		0.301169, 0.760364, 0.575451,
		29.291515, 30.579830, 46.199867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783833, 30.660759, 45.491779>,  <29.080696, 30.047575, 45.797054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783833, 30.660759, 45.491779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.035788, 30.848930, 45.738983>,  <29.186960, 30.961834, 45.887306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.035788, 30.848930, 45.738983>,  <28.783833, 30.660759, 45.491779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035788, 30.848930, 45.738983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234192, 0.643632, -0.728623,
		-0.740536, 0.603685, 0.295246,
		0.629889, 0.470428, 0.618011,
		29.224754, 30.990059, 45.924385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615200, 31.328581, 45.402866>,  <28.783833, 30.660759, 45.491779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615200, 31.328581, 45.402866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.992270, 31.339119, 45.535934>,  <29.218512, 31.345442, 45.615776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.992270, 31.339119, 45.535934>,  <28.615200, 31.328581, 45.402866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992270, 31.339119, 45.535934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186687, 0.784665, -0.591142,
		-0.276610, 0.619360, 0.734765,
		0.942674, 0.026345, 0.332673,
		29.275072, 31.347023, 45.635735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764145, 31.951996, 45.456619>,  <28.615200, 31.328581, 45.402866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764145, 31.951996, 45.456619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.131876, 31.794662, 45.452168>,  <29.352514, 31.700262, 45.449497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.131876, 31.794662, 45.452168>,  <28.764145, 31.951996, 45.456619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131876, 31.794662, 45.452168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305550, 0.731398, -0.609669,
		0.247940, 0.557086, 0.792578,
		0.919328, -0.393334, -0.011125,
		29.407675, 31.676662, 45.448830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231588, 32.495850, 45.449432>,  <28.764145, 31.951996, 45.456619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231588, 32.495850, 45.449432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445858, 32.197178, 45.291691>,  <29.574419, 32.017975, 45.197044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445858, 32.197178, 45.291691>,  <29.231588, 32.495850, 45.449432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445858, 32.197178, 45.291691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282222, 0.598466, -0.749793,
		0.795868, 0.290348, 0.531312,
		0.535673, -0.746684, -0.394357,
		29.606560, 31.973173, 45.173386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941456, 32.800957, 45.278316>,  <29.231588, 32.495850, 45.449432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941456, 32.800957, 45.278316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890823, 32.470764, 45.058296>,  <29.860445, 32.272648, 44.926285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890823, 32.470764, 45.058296>,  <29.941456, 32.800957, 45.278316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890823, 32.470764, 45.058296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388570, 0.468938, -0.793165,
		0.912684, -0.314133, 0.261399,
		-0.126579, -0.825481, -0.550054,
		29.852850, 32.223122, 44.893280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570827, 32.717175, 44.826809>,  <29.941456, 32.800957, 45.278316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570827, 32.717175, 44.826809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293203, 32.483109, 44.659065>,  <30.126629, 32.342670, 44.558418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293203, 32.483109, 44.659065>,  <30.570827, 32.717175, 44.826809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293203, 32.483109, 44.659065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122634, 0.477899, -0.869813,
		0.709394, -0.655131, -0.259930,
		-0.694062, -0.585164, -0.419359,
		30.084986, 32.307560, 44.533257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.452904, 26.247208, 37.012001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.096375, 26.237812, 37.193108>,  <44.882458, 26.232176, 37.301769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.096375, 26.237812, 37.193108>,  <45.452904, 26.247208, 37.012001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096375, 26.237812, 37.193108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245390, 0.864722, -0.438224,
		-0.381221, -0.501702, -0.776509,
		-0.891322, -0.023487, 0.452763,
		44.828979, 26.230766, 37.328938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871300, 26.314960, 36.548832>,  <45.452904, 26.247208, 37.012001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871300, 26.314960, 36.548832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724358, 26.448187, 36.896191>,  <44.636192, 26.528122, 37.104607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.724358, 26.448187, 36.896191>,  <44.871300, 26.314960, 36.548832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724358, 26.448187, 36.896191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435528, 0.763388, -0.477027,
		-0.821808, -0.553449, -0.135373,
		-0.367353, 0.333066, 0.868400,
		44.614151, 26.548107, 37.156712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198223, 26.530148, 36.425201>,  <44.871300, 26.314960, 36.548832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198223, 26.530148, 36.425201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.291573, 26.730389, 36.758652>,  <44.347580, 26.850533, 36.958721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.291573, 26.730389, 36.758652>,  <44.198223, 26.530148, 36.425201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291573, 26.730389, 36.758652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529065, 0.784666, -0.323092,
		-0.815861, -0.365644, 0.447969,
		0.233369, 0.500603, 0.833628,
		44.361584, 26.880569, 37.008739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483162, 26.875772, 36.615131>,  <44.198223, 26.530148, 36.425201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483162, 26.875772, 36.615131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752293, 27.058022, 36.848270>,  <43.913769, 27.167372, 36.988155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752293, 27.058022, 36.848270>,  <43.483162, 26.875772, 36.615131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752293, 27.058022, 36.848270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319310, 0.889533, -0.326759,
		-0.667344, 0.033742, 0.743984,
		0.672824, 0.455622, 0.582851,
		43.954140, 27.194708, 37.023125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044571, 27.363464, 36.922092>,  <43.483162, 26.875772, 36.615131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044571, 27.363464, 36.922092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418648, 27.499916, 36.960121>,  <43.643093, 27.581787, 36.982941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418648, 27.499916, 36.960121>,  <43.044571, 27.363464, 36.922092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418648, 27.499916, 36.960121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329831, 0.936783, -0.116826,
		-0.128917, 0.077896, 0.988591,
		0.935196, 0.341129, 0.095075,
		43.699207, 27.602255, 36.988644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034698, 27.808689, 37.470810>,  <43.044571, 27.363464, 36.922092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034698, 27.808689, 37.470810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340656, 27.887577, 37.225521>,  <43.524231, 27.934910, 37.078346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340656, 27.887577, 37.225521>,  <43.034698, 27.808689, 37.470810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340656, 27.887577, 37.225521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364644, 0.917331, -0.159810,
		0.531009, 0.345845, 0.773576,
		0.764895, 0.197219, -0.613221,
		43.570126, 27.946743, 37.041553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248360, 28.450125, 37.593838>,  <43.034698, 27.808689, 37.470810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248360, 28.450125, 37.593838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.480061, 28.475658, 37.268780>,  <43.619080, 28.490978, 37.073746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.480061, 28.475658, 37.268780>,  <43.248360, 28.450125, 37.593838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480061, 28.475658, 37.268780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315655, 0.936715, -0.151418,
		0.751550, 0.344225, 0.562744,
		0.579253, 0.063835, -0.812645,
		43.653835, 28.494808, 37.024986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519775, 29.119738, 37.638531>,  <43.248360, 28.450125, 37.593838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519775, 29.119738, 37.638531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553913, 29.000978, 37.258095>,  <43.574394, 28.929724, 37.029835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553913, 29.000978, 37.258095>,  <43.519775, 29.119738, 37.638531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553913, 29.000978, 37.258095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157718, 0.938510, -0.307123,
		0.983790, 0.176214, 0.033267,
		0.085340, -0.296898, -0.951088,
		43.579514, 28.911909, 36.972767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873890, 29.622684, 37.215187>,  <43.519775, 29.119738, 37.638531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873890, 29.622684, 37.215187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664917, 29.433746, 36.931229>,  <43.539532, 29.320383, 36.760853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664917, 29.433746, 36.931229>,  <43.873890, 29.622684, 37.215187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664917, 29.433746, 36.931229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240512, 0.880373, -0.408776,
		0.818055, -0.042822, -0.573544,
		-0.522437, -0.472345, -0.709894,
		43.508186, 29.292044, 36.718262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187359, 29.976957, 36.591496>,  <43.873890, 29.622684, 37.215187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187359, 29.976957, 36.591496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821415, 29.831987, 36.520298>,  <43.601849, 29.745007, 36.477581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821415, 29.831987, 36.520298>,  <44.187359, 29.976957, 36.591496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821415, 29.831987, 36.520298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258921, 0.864837, -0.430136,
		0.309824, -0.347429, -0.885044,
		-0.914860, -0.362423, -0.177990,
		43.546955, 29.723261, 36.466900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092773, 30.134241, 35.897049>,  <44.187359, 29.976957, 36.591496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092773, 30.134241, 35.897049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721363, 30.066774, 36.029346>,  <43.498516, 30.026295, 36.108727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721363, 30.066774, 36.029346>,  <44.092773, 30.134241, 35.897049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721363, 30.066774, 36.029346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331356, 0.778310, -0.533326,
		-0.167470, -0.604801, -0.778569,
		-0.928524, -0.168668, 0.330748,
		43.442806, 30.016174, 36.128571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705086, 30.126019, 35.272064>,  <44.092773, 30.134241, 35.897049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705086, 30.126019, 35.272064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.467594, 30.210342, 35.582687>,  <43.325100, 30.260937, 35.769062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.467594, 30.210342, 35.582687>,  <43.705086, 30.126019, 35.272064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467594, 30.210342, 35.582687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343502, 0.806314, -0.481522,
		-0.727658, -0.552645, -0.406322,
		-0.593733, 0.210811, 0.776556,
		43.289474, 30.273586, 35.815655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115955, 30.327379, 34.959011>,  <43.705086, 30.126019, 35.272064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115955, 30.327379, 34.959011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095886, 30.488150, 35.324730>,  <43.083843, 30.584612, 35.544163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095886, 30.488150, 35.324730>,  <43.115955, 30.327379, 34.959011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095886, 30.488150, 35.324730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388769, 0.835387, -0.388572,
		-0.919968, -0.374947, 0.114340,
		-0.050176, 0.401926, 0.914297,
		43.080833, 30.608727, 35.599018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441467, 30.746054, 34.829735>,  <43.115955, 30.327379, 34.959011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441467, 30.746054, 34.829735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.628677, 30.888609, 35.153202>,  <42.741001, 30.974142, 35.347282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.628677, 30.888609, 35.153202>,  <42.441467, 30.746054, 34.829735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628677, 30.888609, 35.153202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325228, 0.920316, -0.217362,
		-0.821694, -0.161271, 0.546635,
		0.468023, 0.356386, 0.808668,
		42.769085, 30.995525, 35.395802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944660, 31.126055, 35.217014>,  <42.441467, 30.746054, 34.829735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944660, 31.126055, 35.217014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288506, 31.249626, 35.379803>,  <42.494812, 31.323769, 35.477474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288506, 31.249626, 35.379803>,  <41.944660, 31.126055, 35.217014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288506, 31.249626, 35.379803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338167, 0.941086, -0.000090,
		-0.383021, -0.137546, 0.913442,
		0.859615, 0.308930, 0.406969,
		42.546391, 31.342306, 35.501892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831642, 31.555061, 35.823875>,  <41.944660, 31.126055, 35.217014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831642, 31.555061, 35.823875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192650, 31.665930, 35.692039>,  <42.409256, 31.732450, 35.612938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192650, 31.665930, 35.692039>,  <41.831642, 31.555061, 35.823875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192650, 31.665930, 35.692039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315088, 0.946718, -0.066663,
		0.293554, 0.164016, 0.941767,
		0.902522, 0.277170, -0.329593,
		42.463406, 31.749081, 35.593163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060627, 32.140232, 36.158829>,  <41.831642, 31.555061, 35.823875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060627, 32.140232, 36.158829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292713, 32.151608, 35.833241>,  <42.431965, 32.158432, 35.637890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292713, 32.151608, 35.833241>,  <42.060627, 32.140232, 36.158829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292713, 32.151608, 35.833241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291001, 0.940661, -0.174572,
		0.760703, 0.338155, 0.554061,
		0.580215, 0.028435, -0.813967,
		42.466778, 32.160137, 35.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379902, 32.821854, 36.225700>,  <42.060627, 32.140232, 36.158829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379902, 32.821854, 36.225700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459255, 32.709332, 35.850143>,  <42.506866, 32.641819, 35.624809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459255, 32.709332, 35.850143>,  <42.379902, 32.821854, 36.225700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459255, 32.709332, 35.850143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135609, 0.940838, -0.310538,
		0.970698, 0.188927, 0.148499,
		0.198383, -0.281301, -0.938890,
		42.518768, 32.624943, 35.568478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866959, 33.253883, 36.017365>,  <42.379902, 32.821854, 36.225700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866959, 33.253883, 36.017365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730770, 33.123249, 35.664680>,  <42.649055, 33.044868, 35.453068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730770, 33.123249, 35.664680>,  <42.866959, 33.253883, 36.017365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730770, 33.123249, 35.664680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051683, 0.942821, -0.329268,
		0.938827, -0.066543, -0.337899,
		-0.340489, -0.326589, -0.881707,
		42.628628, 33.025272, 35.400166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173691, 33.748222, 35.556263>,  <42.866959, 33.253883, 36.017365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173691, 33.748222, 35.556263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862057, 33.570877, 35.378971>,  <42.675076, 33.464470, 35.272598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862057, 33.570877, 35.378971>,  <43.173691, 33.748222, 35.556263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862057, 33.570877, 35.378971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261547, 0.872400, -0.412930,
		0.569749, -0.205784, -0.795637,
		-0.779089, -0.443363, -0.443227,
		42.628330, 33.437866, 35.246002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223293, 33.886494, 34.849041>,  <43.173691, 33.748222, 35.556263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223293, 33.886494, 34.849041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835014, 33.821918, 34.920242>,  <42.602047, 33.783173, 34.962963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835014, 33.821918, 34.920242>,  <43.223293, 33.886494, 34.849041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835014, 33.821918, 34.920242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237942, 0.749381, -0.617909,
		-0.033633, -0.642156, -0.765836,
		-0.970697, -0.161442, 0.178000,
		42.543804, 33.773487, 34.973640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909542, 33.922897, 35.101082>,  <43.223293, 33.886494, 34.849041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909542, 33.922897, 35.101082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200459, 33.985168, 34.833706>,  <44.375008, 34.022530, 34.673279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200459, 33.985168, 34.833706>,  <43.909542, 33.922897, 35.101082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200459, 33.985168, 34.833706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200209, -0.979699, -0.010335,
		-0.656478, -0.126311, -0.743695,
		0.727292, 0.155679, -0.668440,
		44.418648, 34.031872, 34.633175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925396, 33.349174, 34.540894>,  <43.909542, 33.922897, 35.101082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925396, 33.349174, 34.540894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.290718, 33.511654, 34.529072>,  <44.509911, 33.609142, 34.521980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.290718, 33.511654, 34.529072>,  <43.925396, 33.349174, 34.540894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290718, 33.511654, 34.529072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399772, -0.907989, -0.125449,
		-0.077788, 0.102761, -0.991660,
		0.913308, 0.406196, -0.029550,
		44.564709, 33.633514, 34.520206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250435, 32.905266, 34.038403>,  <43.925396, 33.349174, 34.540894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250435, 32.905266, 34.038403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531979, 33.088116, 34.255886>,  <44.700905, 33.197826, 34.386375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531979, 33.088116, 34.255886>,  <44.250435, 32.905266, 34.038403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531979, 33.088116, 34.255886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503460, -0.861002, 0.072132,
		0.501109, 0.222966, -0.836167,
		0.703859, 0.457123, 0.543711,
		44.743137, 33.225254, 34.418999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979965, 32.591175, 33.863686>,  <44.250435, 32.905266, 34.038403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979965, 32.591175, 33.863686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.009453, 32.766186, 34.222157>,  <45.027145, 32.871193, 34.437241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.009453, 32.766186, 34.222157>,  <44.979965, 32.591175, 33.863686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009453, 32.766186, 34.222157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600522, -0.736913, 0.310375,
		0.796203, 0.515296, -0.317067,
		0.073716, 0.437527, 0.896178,
		45.031567, 32.897446, 34.491009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616222, 32.520927, 33.974056>,  <44.979965, 32.591175, 33.863686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616222, 32.520927, 33.974056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.475285, 32.581921, 34.343403>,  <45.390720, 32.618515, 34.565010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.475285, 32.581921, 34.343403>,  <45.616222, 32.520927, 33.974056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475285, 32.581921, 34.343403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665319, -0.653074, 0.361725,
		0.658182, 0.741784, 0.128660,
		-0.352346, 0.152481, 0.923364,
		45.369579, 32.627666, 34.620411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174782, 32.564098, 34.455498>,  <45.616222, 32.520927, 33.974056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174782, 32.564098, 34.455498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875420, 32.467751, 34.702682>,  <45.695805, 32.409943, 34.850994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875420, 32.467751, 34.702682>,  <46.174782, 32.564098, 34.455498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875420, 32.467751, 34.702682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609928, -0.615954, 0.498587,
		0.260539, 0.750055, 0.607896,
		-0.748403, -0.240871, 0.617959,
		45.650898, 32.395489, 34.888069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.512051, 32.557545, 34.981457>,  <46.174782, 32.564098, 34.455498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.512051, 32.557545, 34.981457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.177208, 32.387341, 35.118973>,  <45.976303, 32.285217, 35.201485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.177208, 32.387341, 35.118973>,  <46.512051, 32.557545, 34.981457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177208, 32.387341, 35.118973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541170, -0.552302, 0.634112,
		-0.079945, 0.716869, 0.692610,
		-0.837105, -0.425513, 0.343794,
		45.926075, 32.259686, 35.222111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529945, 32.509624, 35.716148>,  <46.512051, 32.557545, 34.981457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529945, 32.509624, 35.716148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.278465, 32.227795, 35.584511>,  <46.127575, 32.058697, 35.505527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.278465, 32.227795, 35.584511>,  <46.529945, 32.509624, 35.716148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278465, 32.227795, 35.584511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486286, -0.686448, 0.540662,
		-0.606843, 0.179884, 0.774199,
		-0.628703, -0.704579, -0.329091,
		46.089855, 32.016422, 35.485783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212811, 32.145161, 36.352325>,  <46.529945, 32.509624, 35.716148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212811, 32.145161, 36.352325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144810, 31.903128, 36.041206>,  <46.104008, 31.757908, 35.854534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144810, 31.903128, 36.041206>,  <46.212811, 32.145161, 36.352325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144810, 31.903128, 36.041206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344983, -0.775885, 0.528194,
		-0.923085, -0.178532, 0.340648,
		-0.170004, -0.605086, -0.777798,
		46.093807, 31.721601, 35.807865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662304, 31.767681, 36.546299>,  <46.212811, 32.145161, 36.352325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662304, 31.767681, 36.546299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856274, 31.536684, 36.283588>,  <45.972656, 31.398087, 36.125961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856274, 31.536684, 36.283588>,  <45.662304, 31.767681, 36.546299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856274, 31.536684, 36.283588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061186, -0.726737, 0.684185,
		-0.872413, -0.371964, -0.317079,
		0.484925, -0.577491, -0.656774,
		46.001751, 31.363436, 36.086555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490822, 31.127821, 36.760124>,  <45.662304, 31.767681, 36.546299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490822, 31.127821, 36.760124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755211, 31.029978, 36.476353>,  <45.913845, 30.971272, 36.306091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755211, 31.029978, 36.476353>,  <45.490822, 31.127821, 36.760124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755211, 31.029978, 36.476353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236511, -0.829294, 0.506295,
		-0.712168, -0.502432, -0.490284,
		0.660968, -0.244610, -0.709427,
		45.953503, 30.956594, 36.263523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288074, 30.449488, 36.546112>,  <45.490822, 31.127821, 36.760124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288074, 30.449488, 36.546112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678974, 30.519739, 36.498547>,  <45.913513, 30.561890, 36.470005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678974, 30.519739, 36.498547>,  <45.288074, 30.449488, 36.546112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678974, 30.519739, 36.498547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212016, -0.824710, 0.524312,
		-0.005989, -0.537595, -0.843182,
		0.977248, 0.175628, -0.118918,
		45.972149, 30.572428, 36.462872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525005, 29.818411, 36.404686>,  <45.288074, 30.449488, 36.546112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525005, 29.818411, 36.404686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.867977, 30.013634, 36.469933>,  <46.073761, 30.130768, 36.509083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.867977, 30.013634, 36.469933>,  <45.525005, 29.818411, 36.404686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867977, 30.013634, 36.469933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388093, -0.821462, 0.417833,
		0.337922, -0.294959, -0.893761,
		0.857433, 0.488058, 0.163118,
		46.125206, 30.160051, 36.518867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073612, 29.344988, 36.138741>,  <45.525005, 29.818411, 36.404686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073612, 29.344988, 36.138741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.209694, 29.596603, 36.418331>,  <46.291344, 29.747574, 36.586086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.209694, 29.596603, 36.418331>,  <46.073612, 29.344988, 36.138741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209694, 29.596603, 36.418331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304436, -0.776960, 0.551047,
		0.889707, 0.025324, -0.455829,
		0.340206, 0.629041, 0.698976,
		46.311756, 29.785316, 36.628025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554844, 28.976398, 36.295986>,  <46.073612, 29.344988, 36.138741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554844, 28.976398, 36.295986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542698, 29.250635, 36.586926>,  <46.535408, 29.415178, 36.761490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542698, 29.250635, 36.586926>,  <46.554844, 28.976398, 36.295986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542698, 29.250635, 36.586926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317586, -0.683360, 0.657388,
		0.947743, 0.250961, -0.196982,
		-0.030369, 0.685593, 0.727351,
		46.533588, 29.456312, 36.805130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.120625, 28.839462, 36.813263>,  <46.554844, 28.976398, 36.295986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.120625, 28.839462, 36.813263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.839012, 29.035061, 37.019264>,  <46.670044, 29.152420, 37.142864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.839012, 29.035061, 37.019264>,  <47.120625, 28.839462, 36.813263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839012, 29.035061, 37.019264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159236, -0.598024, 0.785501,
		0.692091, 0.635021, 0.343160,
		-0.704027, 0.488994, 0.515005,
		46.627804, 29.181759, 37.173767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.369591, 28.950024, 37.436695>,  <47.120625, 28.839462, 36.813263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.369591, 28.950024, 37.436695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.989780, 29.027750, 37.535194>,  <46.761894, 29.074385, 37.594296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.989780, 29.027750, 37.535194>,  <47.369591, 28.950024, 37.436695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989780, 29.027750, 37.535194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089823, -0.583728, 0.806966,
		0.300548, 0.788355, 0.536812,
		-0.949528, 0.194314, 0.246251,
		46.704922, 29.086044, 37.609070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253517, 29.259027, 38.191452>,  <47.369591, 28.950024, 37.436695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253517, 29.259027, 38.191452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.912457, 29.070347, 38.101582>,  <46.707821, 28.957138, 38.047657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.912457, 29.070347, 38.101582>,  <47.253517, 29.259027, 38.191452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912457, 29.070347, 38.101582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182712, -0.672074, 0.717588,
		-0.489490, 0.570801, 0.659231,
		-0.852652, -0.471702, -0.224681,
		46.656662, 28.928837, 38.034176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.114494, 28.960371, 38.774895>,  <47.253517, 29.259027, 38.191452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.114494, 28.960371, 38.774895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.865108, 28.779667, 38.519642>,  <46.715477, 28.671244, 38.366489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.865108, 28.779667, 38.519642>,  <47.114494, 28.960371, 38.774895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865108, 28.779667, 38.519642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104709, -0.857067, 0.504453,
		-0.774810, 0.247689, 0.581652,
		-0.623462, -0.451760, -0.638128,
		46.678070, 28.644138, 38.328205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527264, 28.637690, 39.191048>,  <47.114494, 28.960371, 38.774895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527264, 28.637690, 39.191048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.533047, 28.426910, 38.851139>,  <46.536518, 28.300444, 38.647194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.533047, 28.426910, 38.851139>,  <46.527264, 28.637690, 39.191048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.533047, 28.426910, 38.851139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034235, -0.849627, 0.526272,
		-0.999309, 0.021484, -0.030322,
		0.014456, -0.526947, -0.849776,
		46.537384, 28.268826, 38.596207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085148, 28.156527, 39.314857>,  <46.527264, 28.637690, 39.191048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085148, 28.156527, 39.314857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.319042, 28.012066, 39.024300>,  <46.459381, 27.925390, 38.849964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.319042, 28.012066, 39.024300>,  <46.085148, 28.156527, 39.314857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319042, 28.012066, 39.024300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009205, -0.892424, 0.451104,
		-0.811170, -0.270464, -0.518510,
		0.584738, -0.361149, -0.726397,
		46.494465, 27.903721, 38.806381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.835426, 34.928043, 41.697750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578186, 34.665234, 41.540398>,  <34.423843, 34.507549, 41.445988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578186, 34.665234, 41.540398>,  <34.835426, 34.928043, 41.697750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578186, 34.665234, 41.540398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490630, 0.040908, -0.870407,
		0.587967, -0.752763, 0.296046,
		-0.643100, -0.657020, -0.393381,
		34.385258, 34.468128, 41.422382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212643, 34.647995, 41.229290>,  <34.835426, 34.928043, 41.697750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212643, 34.647995, 41.229290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861362, 34.526463, 41.081532>,  <34.650597, 34.453545, 40.992874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861362, 34.526463, 41.081532>,  <35.212643, 34.647995, 41.229290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861362, 34.526463, 41.081532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403477, -0.055838, -0.913284,
		0.256856, -0.951089, 0.171625,
		-0.878198, -0.303829, -0.369400,
		34.597904, 34.435314, 40.970711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369843, 34.076557, 40.834995>,  <35.212643, 34.647995, 41.229290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369843, 34.076557, 40.834995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021755, 34.214275, 40.694038>,  <34.812904, 34.296906, 40.609463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021755, 34.214275, 40.694038>,  <35.369843, 34.076557, 40.834995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021755, 34.214275, 40.694038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302475, -0.191230, -0.933777,
		-0.388884, -0.919180, 0.062271,
		-0.870217, 0.344296, -0.352395,
		34.760689, 34.317562, 40.588322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146404, 33.542900, 40.372192>,  <35.369843, 34.076557, 40.834995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146404, 33.542900, 40.372192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972282, 33.886307, 40.263779>,  <34.867809, 34.092350, 40.198730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972282, 33.886307, 40.263779>,  <35.146404, 33.542900, 40.372192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972282, 33.886307, 40.263779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142007, -0.231807, -0.962341,
		-0.889015, -0.457396, -0.021010,
		-0.435300, 0.858519, -0.271033,
		34.841694, 34.143864, 40.182468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898148, 33.390591, 39.618404>,  <35.146404, 33.542900, 40.372192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898148, 33.390591, 39.618404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843182, 33.786636, 39.607208>,  <34.810200, 34.024265, 39.600491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843182, 33.786636, 39.607208>,  <34.898148, 33.390591, 39.618404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843182, 33.786636, 39.607208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241073, 0.006021, -0.970488,
		-0.960729, -0.140111, -0.239518,
		-0.137418, 0.990117, -0.027992,
		34.801956, 34.083672, 39.598812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331581, 33.588951, 39.143158>,  <34.898148, 33.390591, 39.618404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331581, 33.588951, 39.143158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587502, 33.895699, 39.163441>,  <34.741055, 34.079746, 39.175610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587502, 33.895699, 39.163441>,  <34.331581, 33.588951, 39.143158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587502, 33.895699, 39.163441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146030, -0.056527, -0.987664,
		-0.754538, 0.639315, -0.148151,
		0.639802, 0.766865, 0.050707,
		34.779442, 34.125759, 39.178654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155693, 33.975456, 38.641373>,  <34.331581, 33.588951, 39.143158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155693, 33.975456, 38.641373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535515, 34.072384, 38.720997>,  <34.763409, 34.130539, 38.768772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535515, 34.072384, 38.720997>,  <34.155693, 33.975456, 38.641373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535515, 34.072384, 38.720997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185425, 0.078063, -0.979553,
		-0.252904, 0.967051, 0.029193,
		0.949556, 0.242320, 0.199058,
		34.820381, 34.145081, 38.780716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254128, 34.250988, 38.112808>,  <34.155693, 33.975456, 38.641373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254128, 34.250988, 38.112808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624672, 34.252491, 38.263451>,  <34.847000, 34.253391, 38.353836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624672, 34.252491, 38.263451>,  <34.254128, 34.250988, 38.112808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624672, 34.252491, 38.263451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376307, -0.050340, -0.925127,
		0.015483, 0.998725, -0.048047,
		0.926366, 0.003756, 0.376606,
		34.902580, 34.253616, 38.376434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550007, 34.722759, 37.784241>,  <34.254128, 34.250988, 38.112808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550007, 34.722759, 37.784241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861118, 34.512550, 37.922165>,  <35.047783, 34.386425, 38.004917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861118, 34.512550, 37.922165>,  <34.550007, 34.722759, 37.784241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861118, 34.512550, 37.922165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386173, -0.033295, -0.921825,
		0.495918, 0.850129, 0.177046,
		0.777776, -0.525520, 0.344808,
		35.094452, 34.354893, 38.025608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139694, 34.952587, 37.401936>,  <34.550007, 34.722759, 37.784241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139694, 34.952587, 37.401936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264786, 34.590286, 37.516354>,  <35.339840, 34.372906, 37.585007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264786, 34.590286, 37.516354>,  <35.139694, 34.952587, 37.401936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264786, 34.590286, 37.516354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266831, -0.205252, -0.941633,
		0.911595, 0.370798, 0.177494,
		0.312725, -0.905749, 0.286047,
		35.358604, 34.318562, 37.602169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760975, 34.763756, 37.008972>,  <35.139694, 34.952587, 37.401936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760975, 34.763756, 37.008972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604755, 34.419815, 37.140499>,  <35.511024, 34.213451, 37.219418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604755, 34.419815, 37.140499>,  <35.760975, 34.763756, 37.008972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604755, 34.419815, 37.140499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092555, -0.392055, -0.915274,
		0.915917, -0.327027, 0.232701,
		-0.390551, -0.859852, 0.328822,
		35.487591, 34.161858, 37.239147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245255, 34.254734, 36.920464>,  <35.760975, 34.763756, 37.008972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245255, 34.254734, 36.920464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894142, 34.063931, 36.938210>,  <35.683475, 33.949448, 36.948856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894142, 34.063931, 36.938210>,  <36.245255, 34.254734, 36.920464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894142, 34.063931, 36.938210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139623, -0.343316, -0.928784,
		0.458265, -0.809074, 0.367957,
		-0.877780, -0.477005, 0.044364,
		35.630810, 33.920830, 36.951519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317455, 33.635105, 36.750782>,  <36.245255, 34.254734, 36.920464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317455, 33.635105, 36.750782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930046, 33.676628, 36.660286>,  <35.697601, 33.701542, 36.605988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930046, 33.676628, 36.660286>,  <36.317455, 33.635105, 36.750782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930046, 33.676628, 36.660286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168534, -0.395415, -0.902908,
		-0.183191, -0.912617, 0.365474,
		-0.968524, 0.103810, -0.226244,
		35.639488, 33.707771, 36.592411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917255, 34.005886, 37.083855>,  <36.317455, 33.635105, 36.750782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917255, 34.005886, 37.083855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894993, 33.608238, 37.046692>,  <36.881638, 33.369648, 37.024395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894993, 33.608238, 37.046692>,  <36.917255, 34.005886, 37.083855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894993, 33.608238, 37.046692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227248, -0.077995, 0.970709,
		-0.972245, 0.075136, -0.221570,
		-0.055654, -0.994118, -0.092904,
		36.878296, 33.310001, 37.018822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302513, 33.458488, 36.839874>,  <36.917255, 34.005886, 37.083855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302513, 33.458488, 36.839874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561890, 33.156693, 36.799355>,  <37.717514, 32.975613, 36.775043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561890, 33.156693, 36.799355>,  <37.302513, 33.458488, 36.839874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561890, 33.156693, 36.799355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677917, -0.632850, 0.374071,
		-0.346340, -0.173892, -0.921851,
		0.648442, -0.754494, -0.101297,
		37.756424, 32.930344, 36.768967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998028, 32.966038, 36.438511>,  <37.302513, 33.458488, 36.839874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998028, 32.966038, 36.438511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285233, 32.776642, 36.642574>,  <37.457558, 32.663006, 36.765011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285233, 32.776642, 36.642574>,  <36.998028, 32.966038, 36.438511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285233, 32.776642, 36.642574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671366, -0.664520, 0.328149,
		0.183636, -0.578119, -0.795020,
		0.718015, -0.473489, 0.510159,
		37.500637, 32.634594, 36.795620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796841, 32.283062, 36.435764>,  <36.998028, 32.966038, 36.438511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796841, 32.283062, 36.435764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068214, 32.312450, 36.728153>,  <37.231041, 32.330086, 36.903587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068214, 32.312450, 36.728153>,  <36.796841, 32.283062, 36.435764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068214, 32.312450, 36.728153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553661, -0.602868, 0.574464,
		0.482890, -0.794450, -0.368328,
		0.678437, 0.073474, 0.730976,
		37.271744, 32.334492, 36.947445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834003, 31.602411, 36.738865>,  <36.796841, 32.283062, 36.435764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834003, 31.602411, 36.738865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022072, 31.820189, 37.016720>,  <37.134914, 31.950855, 37.183434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022072, 31.820189, 37.016720>,  <36.834003, 31.602411, 36.738865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022072, 31.820189, 37.016720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414294, -0.558802, 0.718401,
		0.779293, -0.625556, -0.037173,
		0.470172, 0.544445, 0.694635,
		37.163124, 31.983522, 37.225109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203274, 31.130482, 37.286976>,  <36.834003, 31.602411, 36.738865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203274, 31.130482, 37.286976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134663, 31.485180, 37.458679>,  <37.093498, 31.698000, 37.561699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134663, 31.485180, 37.458679>,  <37.203274, 31.130482, 37.286976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134663, 31.485180, 37.458679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415787, -0.460164, 0.784456,
		0.893141, -0.043926, 0.447627,
		-0.171524, 0.886747, 0.429255,
		37.083206, 31.751204, 37.587456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326096, 30.973804, 37.928902>,  <37.203274, 31.130482, 37.286976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326096, 30.973804, 37.928902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118431, 31.315117, 37.948444>,  <36.993832, 31.519905, 37.960171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118431, 31.315117, 37.948444>,  <37.326096, 30.973804, 37.928902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118431, 31.315117, 37.948444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444438, -0.318347, 0.837335,
		0.730034, 0.412997, 0.544503,
		-0.519158, 0.853281, 0.048853,
		36.962685, 31.571102, 37.963100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284107, 31.142246, 38.626438>,  <37.326096, 30.973804, 37.928902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284107, 31.142246, 38.626438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994690, 31.376003, 38.479485>,  <36.821041, 31.516258, 38.391312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994690, 31.376003, 38.479485>,  <37.284107, 31.142246, 38.626438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994690, 31.376003, 38.479485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591908, -0.251429, 0.765786,
		0.355150, 0.771535, 0.527827,
		-0.723542, 0.584394, -0.367382,
		36.777626, 31.551321, 38.369270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987965, 31.484938, 39.210327>,  <37.284107, 31.142246, 38.626438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987965, 31.484938, 39.210327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708233, 31.485306, 38.924408>,  <36.540394, 31.485527, 38.752857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708233, 31.485306, 38.924408>,  <36.987965, 31.484938, 39.210327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708233, 31.485306, 38.924408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681484, -0.302592, 0.666346,
		-0.215679, 0.953119, 0.212239,
		-0.699329, 0.000921, -0.714799,
		36.498432, 31.485582, 38.709969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484669, 31.912270, 39.517464>,  <36.987965, 31.484938, 39.210327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484669, 31.912270, 39.517464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305660, 31.696701, 39.232006>,  <36.198254, 31.567360, 39.060730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305660, 31.696701, 39.232006>,  <36.484669, 31.912270, 39.517464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305660, 31.696701, 39.232006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692212, -0.296488, 0.657979,
		-0.566185, 0.788455, -0.240361,
		-0.447523, -0.538919, -0.713645,
		36.171402, 31.535025, 39.017914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828491, 32.162563, 39.649288>,  <36.484669, 31.912270, 39.517464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828491, 32.162563, 39.649288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796741, 31.832905, 39.424973>,  <35.777691, 31.635109, 39.290382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796741, 31.832905, 39.424973>,  <35.828491, 32.162563, 39.649288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796741, 31.832905, 39.424973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693192, -0.358642, 0.625188,
		-0.716368, 0.438361, -0.542823,
		-0.079379, -0.824146, -0.560788,
		35.772926, 31.585661, 39.256737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080898, 32.161137, 39.404743>,  <35.828491, 32.162563, 39.649288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080898, 32.161137, 39.404743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268696, 31.808788, 39.428890>,  <35.381374, 31.597380, 39.443378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268696, 31.808788, 39.428890>,  <35.080898, 32.161137, 39.404743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268696, 31.808788, 39.428890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650923, -0.299121, 0.697729,
		-0.596550, -0.366878, -0.713813,
		0.469498, -0.880868, 0.060369,
		35.409546, 31.544529, 39.447002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596634, 31.676125, 39.595173>,  <35.080898, 32.161137, 39.404743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596634, 31.676125, 39.595173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937801, 31.478981, 39.664013>,  <35.142502, 31.360695, 39.705318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937801, 31.478981, 39.664013>,  <34.596634, 31.676125, 39.595173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937801, 31.478981, 39.664013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411002, -0.430703, 0.803475,
		-0.321872, -0.756035, -0.569920,
		0.852922, -0.492854, 0.172101,
		35.193676, 31.331123, 39.715641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432686, 31.047720, 39.492924>,  <34.596634, 31.676125, 39.595173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432686, 31.047720, 39.492924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764366, 31.036627, 39.716228>,  <34.963375, 31.029970, 39.850212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764366, 31.036627, 39.716228>,  <34.432686, 31.047720, 39.492924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764366, 31.036627, 39.716228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496923, -0.493871, 0.713554,
		0.255922, -0.869093, -0.423299,
		0.829199, -0.027733, 0.558265,
		35.013126, 31.028307, 39.883709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427704, 30.374413, 39.850903>,  <34.432686, 31.047720, 39.492924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427704, 30.374413, 39.850903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651443, 30.609089, 40.085140>,  <34.785686, 30.749895, 40.225681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651443, 30.609089, 40.085140>,  <34.427704, 30.374413, 39.850903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651443, 30.609089, 40.085140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450578, -0.377771, 0.808869,
		0.695777, -0.716297, 0.053045,
		0.559351, 0.586693, 0.585592,
		34.819248, 30.785097, 40.260818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281673, 29.632648, 39.859631>,  <34.427704, 30.374413, 39.850903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281673, 29.632648, 39.859631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990959, 29.407948, 39.701530>,  <33.816532, 29.273127, 39.606670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990959, 29.407948, 39.701530>,  <34.281673, 29.632648, 39.859631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990959, 29.407948, 39.701530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101963, 0.480823, -0.870869,
		0.679259, -0.673231, -0.292175,
		-0.726781, -0.561755, -0.395248,
		33.772926, 29.239422, 39.582954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519058, 29.579748, 39.101833>,  <34.281673, 29.632648, 39.859631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519058, 29.579748, 39.101833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130325, 29.485653, 39.107674>,  <33.897087, 29.429195, 39.111179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130325, 29.485653, 39.107674>,  <34.519058, 29.579748, 39.101833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130325, 29.485653, 39.107674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119499, 0.438378, -0.890812,
		0.203147, -0.867462, -0.454138,
		-0.971829, -0.235235, 0.014605,
		33.838776, 29.415083, 39.112057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439789, 29.438889, 38.396400>,  <34.519058, 29.579748, 39.101833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439789, 29.438889, 38.396400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071625, 29.494457, 38.542576>,  <33.850727, 29.527798, 38.630280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071625, 29.494457, 38.542576>,  <34.439789, 29.438889, 38.396400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071625, 29.494457, 38.542576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285086, 0.401133, -0.870528,
		-0.267524, -0.905424, -0.329602,
		-0.920412, 0.138922, 0.365436,
		33.795502, 29.536133, 38.652206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981354, 29.301687, 37.845863>,  <34.439789, 29.438889, 38.396400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981354, 29.301687, 37.845863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779842, 29.532026, 38.103424>,  <33.658936, 29.670231, 38.257961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779842, 29.532026, 38.103424>,  <33.981354, 29.301687, 37.845863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779842, 29.532026, 38.103424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229109, 0.629632, -0.742343,
		-0.832897, -0.521498, -0.185262,
		-0.503777, 0.575850, 0.643899,
		33.628708, 29.704781, 38.296593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391525, 29.404434, 37.537098>,  <33.981354, 29.301687, 37.845863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391525, 29.404434, 37.537098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388245, 29.717941, 37.785500>,  <33.386276, 29.906046, 37.934540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388245, 29.717941, 37.785500>,  <33.391525, 29.404434, 37.537098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388245, 29.717941, 37.785500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325004, 0.585215, -0.742897,
		-0.945677, -0.207920, 0.249928,
		-0.008202, 0.783768, 0.621000,
		33.385784, 29.953072, 37.971798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653790, 29.703871, 37.354637>,  <33.391525, 29.404434, 37.537098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653790, 29.703871, 37.354637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888287, 29.969255, 37.540600>,  <33.028984, 30.128487, 37.652176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888287, 29.969255, 37.540600>,  <32.653790, 29.703871, 37.354637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888287, 29.969255, 37.540600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149299, 0.652512, -0.742925,
		-0.796259, 0.366125, 0.481585,
		0.586244, 0.663461, 0.464907,
		33.064159, 30.168293, 37.680073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288818, 30.381712, 37.365250>,  <32.653790, 29.703871, 37.354637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288818, 30.381712, 37.365250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677921, 30.460085, 37.414822>,  <32.911381, 30.507109, 37.444565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677921, 30.460085, 37.414822>,  <32.288818, 30.381712, 37.365250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677921, 30.460085, 37.414822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056267, 0.718108, -0.693653,
		-0.224905, 0.667781, 0.709568,
		0.972755, 0.195932, 0.123932,
		32.969749, 30.518864, 37.452000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333454, 31.074821, 37.288414>,  <32.288818, 30.381712, 37.365250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333454, 31.074821, 37.288414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714046, 30.969685, 37.224422>,  <32.942402, 30.906603, 37.186028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714046, 30.969685, 37.224422>,  <32.333454, 31.074821, 37.288414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714046, 30.969685, 37.224422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062270, 0.673637, -0.736435,
		0.301334, 0.690744, 0.657321,
		0.951483, -0.262844, -0.159977,
		32.999493, 30.890831, 37.176430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754475, 31.749428, 37.269085>,  <32.333454, 31.074821, 37.288414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754475, 31.749428, 37.269085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978188, 31.470516, 37.089752>,  <33.112415, 31.303169, 36.982151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978188, 31.470516, 37.089752>,  <32.754475, 31.749428, 37.269085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978188, 31.470516, 37.089752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054955, 0.570827, -0.819229,
		0.827151, 0.433546, 0.357575,
		0.559287, -0.697277, -0.448334,
		33.145973, 31.261333, 36.955254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337265, 32.104759, 37.001888>,  <32.754475, 31.749428, 37.269085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337265, 32.104759, 37.001888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298805, 31.768742, 36.788319>,  <33.275730, 31.567129, 36.660175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298805, 31.768742, 36.788319>,  <33.337265, 32.104759, 37.001888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298805, 31.768742, 36.788319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069375, 0.540759, -0.838312,
		0.992946, -0.043563, -0.110272,
		-0.096150, -0.840049, -0.533923,
		33.269958, 31.516727, 36.628143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665501, 32.287514, 36.454041>,  <33.337265, 32.104759, 37.001888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665501, 32.287514, 36.454041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444515, 31.978289, 36.329353>,  <33.311924, 31.792755, 36.254543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444515, 31.978289, 36.329353>,  <33.665501, 32.287514, 36.454041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444515, 31.978289, 36.329353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140620, 0.455045, -0.879295,
		0.821592, -0.441943, -0.360102,
		-0.552460, -0.773059, -0.311716,
		33.278778, 31.746370, 36.235840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038593, 31.957605, 35.699249>,  <33.665501, 32.287514, 36.454041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038593, 31.957605, 35.699249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658333, 31.847731, 35.756947>,  <33.430176, 31.781805, 35.791565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658333, 31.847731, 35.756947>,  <34.038593, 31.957605, 35.699249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658333, 31.847731, 35.756947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222544, 0.279774, -0.933917,
		0.216177, -0.919932, -0.327097,
		-0.950653, -0.274685, 0.144245,
		33.373138, 31.765324, 35.800220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.200352, 27.118088, 42.692528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822235, 27.180103, 42.577717>,  <33.595364, 27.217314, 42.508831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822235, 27.180103, 42.577717>,  <34.200352, 27.118088, 42.692528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822235, 27.180103, 42.577717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304606, 0.104518, -0.946727,
		-0.116782, -0.982364, -0.146026,
		-0.945292, 0.155041, -0.287028,
		33.538647, 27.226616, 42.491608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159195, 26.780050, 41.929966>,  <34.200352, 27.118088, 42.692528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159195, 26.780050, 41.929966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.853687, 27.033125, 41.981133>,  <33.670383, 27.184969, 42.011833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.853687, 27.033125, 41.981133>,  <34.159195, 26.780050, 41.929966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853687, 27.033125, 41.981133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072104, 0.280551, -0.957127,
		-0.641446, -0.721804, -0.259896,
		-0.763772, 0.632685, 0.127913,
		33.624557, 27.222931, 42.019508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863308, 26.672455, 41.293022>,  <34.159195, 26.780050, 41.929966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863308, 26.672455, 41.293022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.723026, 27.002790, 41.469654>,  <33.638855, 27.200993, 41.575634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.723026, 27.002790, 41.469654>,  <33.863308, 26.672455, 41.293022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723026, 27.002790, 41.469654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061484, 0.450206, -0.890805,
		-0.934464, -0.339563, -0.107115,
		-0.350708, 0.825840, 0.441579,
		33.617813, 27.250542, 41.602127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618591, 26.915911, 40.782986>,  <33.863308, 26.672455, 41.293022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618591, 26.915911, 40.782986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640324, 27.214897, 41.047817>,  <33.653362, 27.394289, 41.206715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640324, 27.214897, 41.047817>,  <33.618591, 26.915911, 40.782986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640324, 27.214897, 41.047817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150457, 0.661614, -0.734595,
		-0.987123, -0.059706, 0.148404,
		0.054327, 0.747464, 0.662077,
		33.656620, 27.439137, 41.246441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980808, 27.408356, 40.672520>,  <33.618591, 26.915911, 40.782986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980808, 27.408356, 40.672520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.273964, 27.618189, 40.845814>,  <33.449856, 27.744089, 40.949791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.273964, 27.618189, 40.845814>,  <32.980808, 27.408356, 40.672520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273964, 27.618189, 40.845814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056317, 0.681366, -0.729773,
		-0.678017, 0.510442, 0.528907,
		0.732886, 0.524585, 0.433231,
		33.493828, 27.775564, 40.975784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729164, 28.066212, 40.673717>,  <32.980808, 27.408356, 40.672520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729164, 28.066212, 40.673717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.124363, 28.109453, 40.717861>,  <33.361481, 28.135399, 40.744347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.124363, 28.109453, 40.717861>,  <32.729164, 28.066212, 40.673717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124363, 28.109453, 40.717861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000078, 0.714716, -0.699415,
		-0.154485, 0.691010, 0.706144,
		0.987995, 0.108104, 0.110359,
		33.420761, 28.141884, 40.750969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838165, 28.814360, 40.768139>,  <32.729164, 28.066212, 40.673717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838165, 28.814360, 40.768139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191700, 28.671301, 40.647530>,  <33.403820, 28.585464, 40.575165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191700, 28.671301, 40.647530>,  <32.838165, 28.814360, 40.768139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191700, 28.671301, 40.647530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096162, 0.769710, -0.631110,
		0.457799, 0.528805, 0.714692,
		0.883840, -0.357648, -0.301522,
		33.456852, 28.564007, 40.557072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112297, 29.372614, 40.600437>,  <32.838165, 28.814360, 40.768139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112297, 29.372614, 40.600437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.326729, 29.086863, 40.420532>,  <33.455387, 28.915411, 40.312592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.326729, 29.086863, 40.420532>,  <33.112297, 29.372614, 40.600437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326729, 29.086863, 40.420532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131084, 0.596766, -0.791636,
		0.833930, 0.365420, 0.413555,
		0.536075, -0.714380, -0.449760,
		33.487553, 28.872549, 40.285603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794529, 29.626444, 40.395885>,  <33.112297, 29.372614, 40.600437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794529, 29.626444, 40.395885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.696247, 29.332109, 40.143478>,  <33.637280, 29.155510, 39.992035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.696247, 29.332109, 40.143478>,  <33.794529, 29.626444, 40.395885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696247, 29.332109, 40.143478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221160, 0.591245, -0.775576,
		0.943778, -0.330118, 0.017465,
		-0.245705, -0.735834, -0.631013,
		33.622536, 29.111359, 39.954174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531212, 29.963224, 40.546993>,  <33.794529, 29.626444, 40.395885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531212, 29.963224, 40.546993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.673496, 30.325979, 40.637352>,  <34.758865, 30.543633, 40.691566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.673496, 30.325979, 40.637352>,  <34.531212, 29.963224, 40.546993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673496, 30.325979, 40.637352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268433, -0.132388, 0.954158,
		0.895218, -0.400040, 0.196347,
		0.355708, 0.906885, 0.225900,
		34.780209, 30.598045, 40.705124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025894, 29.864471, 41.023399>,  <34.531212, 29.963224, 40.546993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025894, 29.864471, 41.023399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924118, 30.247370, 41.078449>,  <34.863052, 30.477108, 41.111477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.924118, 30.247370, 41.078449>,  <35.025894, 29.864471, 41.023399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924118, 30.247370, 41.078449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023263, -0.136206, 0.990407,
		0.966808, 0.255204, 0.012388,
		-0.254443, 0.957245, 0.137622,
		34.847786, 30.534544, 41.119736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452518, 30.032484, 41.565884>,  <35.025894, 29.864471, 41.023399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452518, 30.032484, 41.565884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148548, 30.292217, 41.554005>,  <34.966167, 30.448057, 41.546879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148548, 30.292217, 41.554005>,  <35.452518, 30.032484, 41.565884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148548, 30.292217, 41.554005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075653, -0.042981, 0.996207,
		0.645595, 0.759287, 0.081787,
		-0.759923, 0.649334, -0.029694,
		34.920570, 30.487017, 41.545097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646439, 30.670992, 41.931908>,  <35.452518, 30.032484, 41.565884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646439, 30.670992, 41.931908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.247978, 30.638813, 41.917999>,  <35.008904, 30.619505, 41.909657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.247978, 30.638813, 41.917999>,  <35.646439, 30.670992, 41.931908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247978, 30.638813, 41.917999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028063, -0.083026, 0.996152,
		-0.083026, 0.993295, 0.080449,
		-0.996152, -0.080449, -0.034768,
		34.949131, 30.614679, 41.907570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310665, 31.224722, 42.472946>,  <35.646439, 30.670992, 41.931908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310665, 31.224722, 42.472946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013142, 30.973707, 42.380909>,  <34.834625, 30.823099, 42.325687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013142, 30.973707, 42.380909>,  <35.310665, 31.224722, 42.472946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013142, 30.973707, 42.380909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273791, -0.027983, 0.961382,
		-0.609741, 0.778084, -0.151000,
		-0.743811, -0.627537, -0.230094,
		34.789997, 30.785446, 42.311882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655602, 31.394554, 42.815067>,  <35.310665, 31.224722, 42.472946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655602, 31.394554, 42.815067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610294, 31.007538, 42.724709>,  <34.583111, 30.775328, 42.670494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610294, 31.007538, 42.724709>,  <34.655602, 31.394554, 42.815067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610294, 31.007538, 42.724709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275232, -0.187912, 0.942834,
		-0.954682, 0.168967, -0.245015,
		-0.113266, -0.967543, -0.225901,
		34.576313, 30.717276, 42.656937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016151, 31.261768, 43.128719>,  <34.655602, 31.394554, 42.815067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016151, 31.261768, 43.128719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.169746, 30.898016, 43.064747>,  <34.261906, 30.679764, 43.026363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.169746, 30.898016, 43.064747>,  <34.016151, 31.261768, 43.128719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169746, 30.898016, 43.064747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348151, -0.303025, 0.887112,
		-0.855186, -0.284960, -0.432960,
		0.383989, -0.909381, -0.159933,
		34.284943, 30.625202, 43.016766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493835, 30.816391, 43.318989>,  <34.016151, 31.261768, 43.128719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493835, 30.816391, 43.318989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.846626, 30.630653, 43.351250>,  <34.058300, 30.519211, 43.370605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.846626, 30.630653, 43.351250>,  <33.493835, 30.816391, 43.318989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846626, 30.630653, 43.351250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268871, -0.355190, 0.895292,
		-0.387084, -0.811306, -0.438118,
		0.881972, -0.464351, 0.080648,
		34.111217, 30.491350, 43.375446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292683, 30.213970, 43.586529>,  <33.493835, 30.816391, 43.318989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292683, 30.213970, 43.586529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687664, 30.224566, 43.648788>,  <33.924652, 30.230923, 43.686142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687664, 30.224566, 43.648788>,  <33.292683, 30.213970, 43.586529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687664, 30.224566, 43.648788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140933, -0.296477, 0.944584,
		0.071167, -0.954672, -0.289025,
		0.987458, 0.026490, 0.155645,
		33.983902, 30.232512, 43.695480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353943, 29.651081, 43.986092>,  <33.292683, 30.213970, 43.586529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353943, 29.651081, 43.986092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693790, 29.851685, 44.051365>,  <33.897701, 29.972048, 44.090530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693790, 29.851685, 44.051365>,  <33.353943, 29.651081, 43.986092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693790, 29.851685, 44.051365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046403, -0.379305, 0.924108,
		0.525347, -0.777570, -0.345537,
		0.849621, 0.501511, 0.163185,
		33.948677, 30.002138, 44.100319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804123, 29.181187, 44.359051>,  <33.353943, 29.651081, 43.986092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804123, 29.181187, 44.359051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975315, 29.535139, 44.432613>,  <34.078030, 29.747511, 44.476753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975315, 29.535139, 44.432613>,  <33.804123, 29.181187, 44.359051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975315, 29.535139, 44.432613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222671, -0.300450, 0.927441,
		0.875930, -0.355972, -0.325622,
		0.427976, 0.884881, 0.183909,
		34.103706, 29.800604, 44.487785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389446, 29.051983, 44.727619>,  <33.804123, 29.181187, 44.359051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389446, 29.051983, 44.727619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.278114, 29.424681, 44.820900>,  <34.211315, 29.648298, 44.876869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.278114, 29.424681, 44.820900>,  <34.389446, 29.051983, 44.727619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278114, 29.424681, 44.820900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229857, -0.171130, 0.958061,
		0.932575, 0.320264, -0.166536,
		-0.278333, 0.931743, 0.233206,
		34.194614, 29.704205, 44.890862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930645, 29.365034, 45.113216>,  <34.389446, 29.051983, 44.727619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930645, 29.365034, 45.113216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591476, 29.555689, 45.206032>,  <34.387974, 29.670082, 45.261723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591476, 29.555689, 45.206032>,  <34.930645, 29.365034, 45.113216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591476, 29.555689, 45.206032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234189, -0.055889, 0.970583,
		0.475584, 0.877322, -0.064234,
		-0.847924, 0.476637, 0.232039,
		34.337101, 29.698681, 45.275642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083427, 29.468765, 45.791691>,  <34.930645, 29.365034, 45.113216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083427, 29.468765, 45.791691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.699818, 29.582022, 45.787769>,  <34.469650, 29.649975, 45.785416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.699818, 29.582022, 45.787769>,  <35.083427, 29.468765, 45.791691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699818, 29.582022, 45.787769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018247, -0.027197, 0.999464,
		0.282722, 0.958693, 0.031250,
		-0.959029, 0.283140, -0.009804,
		34.412109, 29.666964, 45.784828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<26.963623, 30.566408, 44.320454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.259949, 30.308542, 44.244976>,  <27.437744, 30.153822, 44.199692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.259949, 30.308542, 44.244976>,  <26.963623, 30.566408, 44.320454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259949, 30.308542, 44.244976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138375, 0.421348, -0.896280,
		0.657305, 0.637865, 0.401345,
		0.740812, -0.644666, -0.188690,
		27.482193, 30.115143, 44.188370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523010, 30.957024, 44.047676>,  <26.963623, 30.566408, 44.320454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523010, 30.957024, 44.047676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.631660, 30.591724, 43.926224>,  <27.696850, 30.372543, 43.853352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.631660, 30.591724, 43.926224>,  <27.523010, 30.957024, 44.047676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631660, 30.591724, 43.926224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297913, 0.379787, -0.875790,
		0.915133, 0.147429, 0.375229,
		0.271624, -0.913250, -0.303634,
		27.713148, 30.317749, 43.835133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322411, 30.996632, 43.783848>,  <27.523010, 30.957024, 44.047676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322411, 30.996632, 43.783848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.133801, 30.678461, 43.631554>,  <28.020634, 30.487558, 43.540176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.133801, 30.678461, 43.631554>,  <28.322411, 30.996632, 43.783848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133801, 30.678461, 43.631554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330295, 0.241021, -0.912586,
		0.817660, -0.556064, 0.149078,
		-0.471526, -0.795425, -0.380739,
		27.992342, 30.439833, 43.517330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792404, 30.585114, 43.457424>,  <28.322411, 30.996632, 43.783848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792404, 30.585114, 43.457424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.436333, 30.513683, 43.289761>,  <28.222691, 30.470825, 43.189163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.436333, 30.513683, 43.289761>,  <28.792404, 30.585114, 43.457424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436333, 30.513683, 43.289761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358421, 0.293493, -0.886226,
		0.281249, -0.939140, -0.197269,
		-0.890187, -0.178545, -0.419152,
		28.169279, 30.460112, 43.164013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944012, 30.429691, 42.762428>,  <28.792404, 30.585114, 43.457424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944012, 30.429691, 42.762428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.550747, 30.502529, 42.756363>,  <28.314787, 30.546232, 42.752724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.550747, 30.502529, 42.756363>,  <28.944012, 30.429691, 42.762428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550747, 30.502529, 42.756363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068604, 0.290942, -0.954278,
		-0.169358, -0.939252, -0.298536,
		-0.983164, 0.182096, -0.015163,
		28.255798, 30.557158, 42.751816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717619, 30.163956, 42.088215>,  <28.944012, 30.429691, 42.762428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717619, 30.163956, 42.088215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.423773, 30.415937, 42.189011>,  <28.247465, 30.567127, 42.249489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.423773, 30.415937, 42.189011>,  <28.717619, 30.163956, 42.088215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423773, 30.415937, 42.189011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134266, 0.229073, -0.964105,
		-0.665067, -0.742079, -0.083698,
		-0.734615, 0.629956, 0.251985,
		28.203388, 30.604925, 42.264606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275694, 30.153124, 41.487015>,  <28.717619, 30.163956, 42.088215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275694, 30.153124, 41.487015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.132128, 30.466303, 41.690258>,  <28.045988, 30.654211, 41.812202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.132128, 30.466303, 41.690258>,  <28.275694, 30.153124, 41.487015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132128, 30.466303, 41.690258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272715, 0.432654, -0.859324,
		-0.892640, -0.446992, 0.058235,
		-0.358915, 0.782948, 0.508106,
		28.024452, 30.701187, 41.842690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630041, 30.397284, 41.097069>,  <28.275694, 30.153124, 41.487015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630041, 30.397284, 41.097069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.761955, 30.719582, 41.293846>,  <27.841105, 30.912960, 41.411915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.761955, 30.719582, 41.293846>,  <27.630041, 30.397284, 41.097069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761955, 30.719582, 41.293846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271804, 0.580074, -0.767878,
		-0.904081, 0.119524, 0.410306,
		0.329788, 0.805747, 0.491947,
		27.860891, 30.961306, 41.441429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267025, 30.886944, 40.769173>,  <27.630041, 30.397284, 41.097069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267025, 30.886944, 40.769173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.551008, 31.094246, 40.959908>,  <27.721397, 31.218628, 41.074348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.551008, 31.094246, 40.959908>,  <27.267025, 30.886944, 40.769173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551008, 31.094246, 40.959908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024248, 0.694676, -0.718913,
		-0.703829, 0.498834, 0.505756,
		0.709956, 0.518256, 0.476838,
		27.763994, 31.249723, 41.102959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077118, 31.658092, 40.730572>,  <27.267025, 30.886944, 40.769173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077118, 31.658092, 40.730572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.473740, 31.641523, 40.779724>,  <27.711714, 31.631582, 40.809216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.473740, 31.641523, 40.779724>,  <27.077118, 31.658092, 40.730572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473740, 31.641523, 40.779724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106613, 0.799853, -0.590651,
		-0.073820, 0.598764, 0.797516,
		0.991556, -0.041424, 0.122881,
		27.771206, 31.629097, 40.816589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276148, 32.380280, 40.537090>,  <27.077118, 31.658092, 40.730572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276148, 32.380280, 40.537090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.599428, 32.144901, 40.546402>,  <27.793396, 32.003674, 40.551987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.599428, 32.144901, 40.546402>,  <27.276148, 32.380280, 40.537090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599428, 32.144901, 40.546402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404710, 0.526267, -0.747832,
		0.427809, 0.613819, 0.663480,
		0.808201, -0.588446, 0.023277,
		27.841888, 31.968367, 40.553387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900877, 32.830776, 40.559067>,  <27.276148, 32.380280, 40.537090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900877, 32.830776, 40.559067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016211, 32.468712, 40.434135>,  <28.085411, 32.251472, 40.359177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016211, 32.468712, 40.434135>,  <27.900877, 32.830776, 40.559067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016211, 32.468712, 40.434135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628142, 0.424989, -0.651783,
		0.722704, -0.008255, 0.691108,
		0.288333, -0.905161, -0.312326,
		28.102711, 32.197163, 40.340439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722534, 32.799610, 40.507366>,  <27.900877, 32.830776, 40.559067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722534, 32.799610, 40.507366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.557644, 32.512928, 40.282364>,  <28.458710, 32.340919, 40.147362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.557644, 32.512928, 40.282364>,  <28.722534, 32.799610, 40.507366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557644, 32.512928, 40.282364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613890, 0.237706, -0.752751,
		0.673209, -0.655618, 0.341988,
		-0.412225, -0.716702, -0.562503,
		28.433977, 32.297916, 40.113613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257229, 32.597839, 40.005638>,  <28.722534, 32.799610, 40.507366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257229, 32.597839, 40.005638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.933483, 32.441978, 39.829868>,  <28.739235, 32.348461, 39.724407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.933483, 32.441978, 39.829868>,  <29.257229, 32.597839, 40.005638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933483, 32.441978, 39.829868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415370, 0.149179, -0.897337,
		0.415206, -0.908798, 0.041111,
		-0.809365, -0.389656, -0.439428,
		28.690674, 32.325081, 39.698040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896729, 32.311584, 40.218533>,  <29.257229, 32.597839, 40.005638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896729, 32.311584, 40.218533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.131582, 32.593822, 40.377232>,  <30.272493, 32.763165, 40.472450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.131582, 32.593822, 40.377232>,  <29.896729, 32.311584, 40.218533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131582, 32.593822, 40.377232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335784, -0.233678, 0.912493,
		0.736562, -0.668977, 0.099727,
		0.587133, 0.705595, 0.396750,
		30.307722, 32.805500, 40.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210127, 31.968786, 40.875519>,  <29.896729, 32.311584, 40.218533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210127, 31.968786, 40.875519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.237659, 32.365986, 40.913914>,  <30.254179, 32.604305, 40.936951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.237659, 32.365986, 40.913914>,  <30.210127, 31.968786, 40.875519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237659, 32.365986, 40.913914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007398, -0.095702, 0.995382,
		0.997601, -0.069222, 0.000759,
		0.068829, 0.993000, 0.095984,
		30.258308, 32.663887, 40.942711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704130, 32.021103, 41.427185>,  <30.210127, 31.968786, 40.875519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704130, 32.021103, 41.427185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.523888, 32.377483, 41.404690>,  <30.415741, 32.591312, 41.391193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.523888, 32.377483, 41.404690>,  <30.704130, 32.021103, 41.427185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523888, 32.377483, 41.404690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011624, 0.068846, 0.997560,
		0.892646, 0.448854, -0.041379,
		-0.450608, 0.890949, -0.056238,
		30.388706, 32.644768, 41.387817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973299, 32.380905, 41.909534>,  <30.704130, 32.021103, 41.427185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973299, 32.380905, 41.909534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.637239, 32.584702, 41.835171>,  <30.435604, 32.706982, 41.790550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.637239, 32.584702, 41.835171>,  <30.973299, 32.380905, 41.909534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637239, 32.584702, 41.835171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155209, 0.102587, 0.982541,
		0.519670, 0.854338, -0.007110,
		-0.840151, 0.509493, -0.185912,
		30.385195, 32.737549, 41.779396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025616, 33.025532, 42.231621>,  <30.973299, 32.380905, 41.909534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025616, 33.025532, 42.231621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636934, 32.960461, 42.163124>,  <30.403725, 32.921417, 42.122025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636934, 32.960461, 42.163124>,  <31.025616, 33.025532, 42.231621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636934, 32.960461, 42.163124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170609, -0.017960, 0.985175,
		-0.163343, 0.986516, -0.010303,
		-0.971705, -0.162680, -0.171242,
		30.345423, 32.911655, 42.111752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734776, 33.418755, 42.713017>,  <31.025616, 33.025532, 42.231621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734776, 33.418755, 42.713017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.449781, 33.161697, 42.600323>,  <30.278786, 33.007462, 42.532707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.449781, 33.161697, 42.600323>,  <30.734776, 33.418755, 42.713017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449781, 33.161697, 42.600323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286723, -0.099828, 0.952798,
		-0.640435, 0.759634, -0.113135,
		-0.712484, -0.642643, -0.281738,
		30.236036, 32.968903, 42.515800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149790, 33.612270, 43.152115>,  <30.734776, 33.418755, 42.713017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149790, 33.612270, 43.152115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.096556, 33.234550, 43.031719>,  <30.064615, 33.007919, 42.959484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.096556, 33.234550, 43.031719>,  <30.149790, 33.612270, 43.152115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096556, 33.234550, 43.031719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385554, -0.230439, 0.893446,
		-0.913037, 0.234952, -0.333408,
		-0.133087, -0.944296, -0.300986,
		30.056629, 32.951263, 42.941425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586271, 33.437820, 43.555386>,  <30.149790, 33.612270, 43.152115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586271, 33.437820, 43.555386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.711260, 33.082676, 43.420292>,  <29.786253, 32.869591, 43.339233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.711260, 33.082676, 43.420292>,  <29.586271, 33.437820, 43.555386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711260, 33.082676, 43.420292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124667, -0.390794, 0.911997,
		-0.941711, -0.242869, -0.232799,
		0.312472, -0.887860, -0.337737,
		29.805002, 32.816319, 43.318970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134314, 32.957966, 43.804943>,  <29.586271, 33.437820, 43.555386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134314, 32.957966, 43.804943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.464235, 32.755264, 43.704620>,  <29.662188, 32.633644, 43.644424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.464235, 32.755264, 43.704620>,  <29.134314, 32.957966, 43.804943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464235, 32.755264, 43.704620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102974, -0.570787, 0.814615,
		-0.555959, -0.646074, -0.522970,
		0.824807, -0.506745, -0.250806,
		29.711676, 32.603241, 43.629379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933033, 32.218418, 43.828770>,  <29.134314, 32.957966, 43.804943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933033, 32.218418, 43.828770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.325651, 32.232155, 43.904015>,  <29.561222, 32.240398, 43.949162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.325651, 32.232155, 43.904015>,  <28.933033, 32.218418, 43.828770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325651, 32.232155, 43.904015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132554, -0.586834, 0.798784,
		0.137824, -0.808979, -0.571452,
		0.981547, 0.034343, 0.188113,
		29.620115, 32.242458, 43.960449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173069, 31.546406, 44.018623>,  <28.933033, 32.218418, 43.828770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173069, 31.546406, 44.018623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.449539, 31.788660, 44.176350>,  <29.615421, 31.934013, 44.270985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.449539, 31.788660, 44.176350>,  <29.173069, 31.546406, 44.018623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449539, 31.788660, 44.176350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080803, -0.477434, 0.874944,
		0.718156, -0.636601, -0.281053,
		0.691175, 0.605637, 0.394312,
		29.656891, 31.970350, 44.294643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704296, 31.071411, 44.289906>,  <29.173069, 31.546406, 44.018623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704296, 31.071411, 44.289906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744331, 31.430050, 44.462460>,  <29.768353, 31.645233, 44.565990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.744331, 31.430050, 44.462460>,  <29.704296, 31.071411, 44.289906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744331, 31.430050, 44.462460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106921, -0.421359, 0.900569,
		0.989217, -0.136259, 0.053693,
		0.100086, 0.896599, 0.431384,
		29.774357, 31.699030, 44.591873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374365, 31.098497, 44.621387>,  <29.704296, 31.071411, 44.289906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374365, 31.098497, 44.621387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.112936, 31.351587, 44.787521>,  <29.956079, 31.503441, 44.887199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.112936, 31.351587, 44.787521>,  <30.374365, 31.098497, 44.621387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112936, 31.351587, 44.787521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106898, -0.466084, 0.878259,
		0.749277, 0.618404, 0.236982,
		-0.653572, 0.632726, 0.415332,
		29.916864, 31.541405, 44.912121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696028, 31.242664, 45.304810>,  <30.374365, 31.098497, 44.621387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696028, 31.242664, 45.304810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.310364, 31.344261, 45.335487>,  <30.078964, 31.405218, 45.353893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.310364, 31.344261, 45.335487>,  <30.696028, 31.242664, 45.304810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310364, 31.344261, 45.335487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110269, -0.646528, 0.754879,
		0.241316, 0.719368, 0.651364,
		-0.964161, 0.253990, 0.076693,
		30.021116, 31.420458, 45.358494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221182, 31.640362, 45.511982>,  <30.696028, 31.242664, 45.304810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221182, 31.640362, 45.511982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.495823, 31.852839, 45.710541>,  <31.660608, 31.980326, 45.829674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.495823, 31.852839, 45.710541>,  <31.221182, 31.640362, 45.511982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495823, 31.852839, 45.710541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285992, 0.430390, -0.856139,
		-0.668418, 0.729794, 0.143591,
		0.686605, 0.531193, 0.496395,
		31.701805, 32.012196, 45.859459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044424, 32.424213, 45.347260>,  <31.221182, 31.640362, 45.511982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044424, 32.424213, 45.347260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425026, 32.362556, 45.453747>,  <31.653387, 32.325562, 45.517639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425026, 32.362556, 45.453747>,  <31.044424, 32.424213, 45.347260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425026, 32.362556, 45.453747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305135, 0.582854, -0.753110,
		-0.039080, 0.797822, 0.601625,
		0.951507, -0.154145, 0.266221,
		31.710478, 32.316315, 45.533611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294773, 33.065983, 45.283028>,  <31.044424, 32.424213, 45.347260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294773, 33.065983, 45.283028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608974, 32.819107, 45.264854>,  <31.797495, 32.670982, 45.253952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.608974, 32.819107, 45.264854>,  <31.294773, 33.065983, 45.283028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608974, 32.819107, 45.264854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366258, 0.522807, -0.769758,
		0.498838, 0.588007, 0.636717,
		0.785503, -0.617187, -0.045434,
		31.844625, 32.633949, 45.251225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893137, 33.473995, 45.141750>,  <31.294773, 33.065983, 45.283028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893137, 33.473995, 45.141750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.025414, 33.113579, 45.029491>,  <32.104778, 32.897327, 44.962135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.025414, 33.113579, 45.029491>,  <31.893137, 33.473995, 45.141750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025414, 33.113579, 45.029491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343940, 0.391989, -0.853258,
		0.878833, 0.185641, 0.439533,
		0.330692, -0.901045, -0.280643,
		32.124622, 32.843266, 44.945297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429134, 33.705063, 44.786373>,  <31.893137, 33.473995, 45.141750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429134, 33.705063, 44.786373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354988, 33.324257, 44.688965>,  <32.310501, 33.095772, 44.630520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.354988, 33.324257, 44.688965>,  <32.429134, 33.705063, 44.786373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354988, 33.324257, 44.688965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291865, 0.183298, -0.938732,
		0.938326, -0.245081, 0.243884,
		-0.185362, -0.952017, -0.243523,
		32.299381, 33.038651, 44.615910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098209, 33.512737, 44.526505>,  <32.429134, 33.705063, 44.786373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098209, 33.512737, 44.526505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.827908, 33.247040, 44.398674>,  <32.665726, 33.087620, 44.321976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.827908, 33.247040, 44.398674>,  <33.098209, 33.512737, 44.526505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827908, 33.247040, 44.398674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417563, 0.012319, -0.908564,
		0.607446, -0.747413, 0.269040,
		-0.675759, -0.664245, -0.319575,
		32.625179, 33.047768, 44.302803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428387, 32.832794, 44.107555>,  <33.098209, 33.512737, 44.526505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428387, 32.832794, 44.107555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055695, 32.902725, 43.980236>,  <32.832081, 32.944683, 43.903843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.055695, 32.902725, 43.980236>,  <33.428387, 32.832794, 44.107555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055695, 32.902725, 43.980236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359436, 0.318894, -0.876990,
		-0.051819, -0.931526, -0.359963,
		-0.931730, 0.174828, -0.318300,
		32.776176, 32.955173, 43.884747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391171, 32.618671, 43.422104>,  <33.428387, 32.832794, 44.107555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391171, 32.618671, 43.422104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063820, 32.848354, 43.431503>,  <32.867409, 32.986164, 43.437141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063820, 32.848354, 43.431503>,  <33.391171, 32.618671, 43.422104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063820, 32.848354, 43.431503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164734, 0.273565, -0.947642,
		-0.550569, -0.771655, -0.318469,
		-0.818374, 0.574205, 0.023499,
		32.818306, 33.020615, 43.438553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193600, 32.469193, 42.843372>,  <33.391171, 32.618671, 43.422104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193600, 32.469193, 42.843372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018127, 32.812042, 42.951374>,  <32.912846, 33.017750, 43.016174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018127, 32.812042, 42.951374>,  <33.193600, 32.469193, 42.843372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018127, 32.812042, 42.951374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246904, 0.403853, -0.880875,
		-0.864058, -0.319759, -0.388790,
		-0.438681, 0.857121, 0.270003,
		32.886524, 33.069180, 43.032375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723846, 32.741768, 42.235203>,  <33.193600, 32.469193, 42.843372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723846, 32.741768, 42.235203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.801689, 33.067112, 42.454502>,  <32.848392, 33.262318, 42.586082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.801689, 33.067112, 42.454502>,  <32.723846, 32.741768, 42.235203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801689, 33.067112, 42.454502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304174, 0.481337, -0.822067,
		-0.932528, 0.326739, -0.153733,
		0.194603, 0.813361, 0.548245,
		32.860069, 33.311119, 42.618977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412506, 33.415546, 41.936783>,  <32.723846, 32.741768, 42.235203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412506, 33.415546, 41.936783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.721272, 33.523586, 42.166977>,  <32.906532, 33.588409, 42.305096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.721272, 33.523586, 42.166977>,  <32.412506, 33.415546, 41.936783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721272, 33.523586, 42.166977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378098, 0.532682, -0.757160,
		-0.511061, 0.802057, 0.309063,
		0.771918, 0.270099, 0.575490,
		32.952847, 33.604614, 42.339622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463020, 34.069874, 41.700317>,  <32.412506, 33.415546, 41.936783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463020, 34.069874, 41.700317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.818787, 34.017612, 41.875530>,  <33.032246, 33.986256, 41.980659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.818787, 34.017612, 41.875530>,  <32.463020, 34.069874, 41.700317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818787, 34.017612, 41.875530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427050, 0.579233, -0.694347,
		-0.163004, 0.804623, 0.570974,
		0.889414, -0.130652, 0.438032,
		33.085609, 33.978416, 42.006939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797173, 34.698174, 41.770569>,  <32.463020, 34.069874, 41.700317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797173, 34.698174, 41.770569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091553, 34.428288, 41.792973>,  <33.268181, 34.266354, 41.806416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091553, 34.428288, 41.792973>,  <32.797173, 34.698174, 41.770569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091553, 34.428288, 41.792973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542668, 0.538399, -0.644700,
		0.404835, 0.504860, 0.762381,
		0.735949, -0.674717, 0.056009,
		33.312336, 34.225872, 41.809776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521046, 34.941010, 41.991673>,  <32.797173, 34.698174, 41.770569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521046, 34.941010, 41.991673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598934, 34.622395, 41.762722>,  <33.645668, 34.431225, 41.625351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598934, 34.622395, 41.762722>,  <33.521046, 34.941010, 41.991673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598934, 34.622395, 41.762722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426579, 0.594239, -0.681843,
		0.883240, -0.111390, 0.455499,
		0.194725, -0.796538, -0.572372,
		33.657352, 34.383434, 41.591011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.765709, 43.923424, 33.663841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.452131, 43.883926, 33.418671>,  <26.263985, 43.860229, 33.271568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.452131, 43.883926, 33.418671>,  <26.765709, 43.923424, 33.663841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452131, 43.883926, 33.418671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150965, -0.927319, 0.342475,
		-0.602198, 0.361012, 0.712060,
		-0.783944, -0.098741, -0.612929,
		26.216948, 43.854305, 33.234791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303638, 43.518562, 33.998188>,  <26.765709, 43.923424, 33.663841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303638, 43.518562, 33.998188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146854, 43.509884, 33.630299>,  <26.052784, 43.504677, 33.409565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146854, 43.509884, 33.630299>,  <26.303638, 43.518562, 33.998188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146854, 43.509884, 33.630299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303034, -0.940886, 0.151343,
		-0.868641, 0.338028, 0.362215,
		-0.391961, -0.021699, -0.919726,
		26.029266, 43.503372, 33.354382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701817, 43.010071, 34.039406>,  <26.303638, 43.518562, 33.998188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701817, 43.010071, 34.039406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796904, 43.017429, 33.650940>,  <25.853956, 43.021843, 33.417862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796904, 43.017429, 33.650940>,  <25.701817, 43.010071, 34.039406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796904, 43.017429, 33.650940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298253, -0.950139, -0.091000,
		-0.924411, 0.311284, -0.220379,
		0.237717, 0.018392, -0.971160,
		25.868219, 43.022945, 33.359592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172670, 42.704079, 33.775242>,  <25.701817, 43.010071, 34.039406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172670, 42.704079, 33.775242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.459192, 42.678650, 33.497288>,  <25.631105, 42.663391, 33.330517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.459192, 42.678650, 33.497288>,  <25.172670, 42.704079, 33.775242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459192, 42.678650, 33.497288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262837, -0.947076, -0.184294,
		-0.646392, 0.314652, -0.695105,
		0.716306, -0.063573, -0.694885,
		25.674084, 42.659576, 33.288822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809282, 42.322926, 33.425934>,  <25.172670, 42.704079, 33.775242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809282, 42.322926, 33.425934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.182013, 42.269863, 33.290817>,  <25.405651, 42.238026, 33.209747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.182013, 42.269863, 33.290817>,  <24.809282, 42.322926, 33.425934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182013, 42.269863, 33.290817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220934, -0.945792, -0.238045,
		-0.287904, 0.296446, -0.910621,
		0.931826, -0.132653, -0.337792,
		25.461561, 42.230068, 33.189480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692772, 41.916080, 32.917774>,  <24.809282, 42.322926, 33.425934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692772, 41.916080, 32.917774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.082806, 41.864105, 32.989693>,  <25.316826, 41.832920, 33.032845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.082806, 41.864105, 32.989693>,  <24.692772, 41.916080, 32.917774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082806, 41.864105, 32.989693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122822, -0.991159, -0.050194,
		0.184732, 0.026860, -0.982422,
		0.975084, -0.129936, 0.179799,
		25.375330, 41.825123, 33.043633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062803, 41.511776, 32.291775>,  <24.692772, 41.916080, 32.917774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062803, 41.511776, 32.291775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.257368, 41.464905, 32.638111>,  <25.374107, 41.436783, 32.845913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.257368, 41.464905, 32.638111>,  <25.062803, 41.511776, 32.291775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257368, 41.464905, 32.638111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053990, -0.993104, -0.104069,
		0.872061, 0.003873, -0.489383,
		0.486411, -0.117176, 0.865837,
		25.403292, 41.429752, 32.897861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352768, 40.873562, 32.226284>,  <25.062803, 41.511776, 32.291775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352768, 40.873562, 32.226284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.409700, 40.934910, 32.617432>,  <25.443861, 40.971718, 32.852119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.409700, 40.934910, 32.617432>,  <25.352768, 40.873562, 32.226284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409700, 40.934910, 32.617432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037373, -0.986386, 0.160144,
		0.989113, -0.059340, -0.134662,
		0.142332, 0.153368, 0.977865,
		25.452400, 40.980919, 32.910789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957836, 40.421593, 32.423286>,  <25.352768, 40.873562, 32.226284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957836, 40.421593, 32.423286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.733433, 40.490173, 32.747231>,  <25.598791, 40.531322, 32.941597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.733433, 40.490173, 32.747231>,  <25.957836, 40.421593, 32.423286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733433, 40.490173, 32.747231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019217, -0.975356, 0.219798,
		0.827587, 0.138872, 0.543889,
		-0.561009, 0.171450, 0.809860,
		25.565130, 40.541607, 32.990189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326151, 40.166641, 33.006508>,  <25.957836, 40.421593, 32.423286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326151, 40.166641, 33.006508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944777, 40.166714, 33.127148>,  <25.715952, 40.166759, 33.199532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944777, 40.166714, 33.127148>,  <26.326151, 40.166641, 33.006508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944777, 40.166714, 33.127148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115826, -0.923091, 0.366726,
		0.278470, 0.384582, 0.880086,
		-0.953435, 0.000185, 0.301597,
		25.658747, 40.166771, 33.217628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401186, 40.014832, 33.720577>,  <26.326151, 40.166641, 33.006508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401186, 40.014832, 33.720577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.045321, 39.907486, 33.572803>,  <25.831802, 39.843079, 33.484138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.045321, 39.907486, 33.572803>,  <26.401186, 40.014832, 33.720577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045321, 39.907486, 33.572803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106736, -0.908871, 0.403188,
		-0.443969, 0.319269, 0.837233,
		-0.889662, -0.268366, -0.369433,
		25.778421, 39.826977, 33.461975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086439, 39.648537, 34.336727>,  <26.401186, 40.014832, 33.720577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086439, 39.648537, 34.336727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.847538, 39.566906, 34.026466>,  <25.704197, 39.517925, 33.840309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.847538, 39.566906, 34.026466>,  <26.086439, 39.648537, 34.336727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847538, 39.566906, 34.026466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080615, -0.946915, 0.311213,
		-0.797990, 0.248403, 0.549097,
		-0.597254, -0.204079, -0.775654,
		25.668362, 39.505684, 33.793770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627222, 39.190994, 34.536350>,  <26.086439, 39.648537, 34.336727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627222, 39.190994, 34.536350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.595701, 39.126385, 34.142864>,  <25.576790, 39.087620, 33.906773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.595701, 39.126385, 34.142864>,  <25.627222, 39.190994, 34.536350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595701, 39.126385, 34.142864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085263, -0.982078, 0.168086,
		-0.993237, 0.097120, 0.063617,
		-0.078801, -0.161525, -0.983717,
		25.572062, 39.077927, 33.847748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105259, 38.640224, 34.432743>,  <25.627222, 39.190994, 34.536350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105259, 38.640224, 34.432743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.304670, 38.647305, 34.086067>,  <25.424318, 38.651554, 33.878059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.304670, 38.647305, 34.086067>,  <25.105259, 38.640224, 34.432743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304670, 38.647305, 34.086067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018341, -0.999352, -0.030961,
		-0.866679, 0.031331, -0.497882,
		0.498530, 0.017701, -0.866692,
		25.454229, 38.652615, 33.826061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744131, 38.113400, 34.022839>,  <25.105259, 38.640224, 34.432743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744131, 38.113400, 34.022839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.109570, 38.169662, 33.870232>,  <25.328833, 38.203419, 33.778667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.109570, 38.169662, 33.870232>,  <24.744131, 38.113400, 34.022839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109570, 38.169662, 33.870232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170921, -0.984189, 0.046448,
		-0.368956, -0.107644, -0.923192,
		0.913596, 0.140656, -0.381522,
		25.383648, 38.211861, 33.755775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811956, 37.723560, 33.441425>,  <24.744131, 38.113400, 34.022839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811956, 37.723560, 33.441425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.182587, 37.752529, 33.589054>,  <25.404964, 37.769913, 33.677631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.182587, 37.752529, 33.589054>,  <24.811956, 37.723560, 33.441425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182587, 37.752529, 33.589054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032030, -0.992914, 0.114436,
		0.374743, -0.094212, -0.922329,
		0.926575, 0.072426, 0.369070,
		25.460560, 37.774258, 33.699776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272362, 37.201286, 33.054436>,  <24.811956, 37.723560, 33.441425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272362, 37.201286, 33.054436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.500309, 37.311596, 33.364067>,  <25.637077, 37.377781, 33.549847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.500309, 37.311596, 33.364067>,  <25.272362, 37.201286, 33.054436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500309, 37.311596, 33.364067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227326, -0.958148, 0.173997,
		0.789667, 0.076813, -0.608708,
		0.569867, 0.275775, 0.774080,
		25.671268, 37.394329, 33.596291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993570, 36.783863, 33.107891>,  <25.272362, 37.201286, 33.054436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993570, 36.783863, 33.107891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956018, 36.932339, 33.477409>,  <25.933487, 37.021423, 33.699120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956018, 36.932339, 33.477409>,  <25.993570, 36.783863, 33.107891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956018, 36.932339, 33.477409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069688, -0.923170, 0.378022,
		0.993142, 0.099866, 0.060798,
		-0.093878, 0.371192, 0.923798,
		25.927855, 37.043697, 33.754547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528564, 36.371952, 33.518700>,  <25.993570, 36.783863, 33.107891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528564, 36.371952, 33.518700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.268009, 36.533421, 33.775681>,  <26.111675, 36.630302, 33.929871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.268009, 36.533421, 33.775681>,  <26.528564, 36.371952, 33.518700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268009, 36.533421, 33.775681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173062, -0.903456, 0.392195,
		0.738744, 0.144287, 0.658360,
		-0.651388, 0.403669, 0.642453,
		26.072594, 36.654522, 33.968418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658159, 36.079056, 34.112247>,  <26.528564, 36.371952, 33.518700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658159, 36.079056, 34.112247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.277420, 36.188007, 34.168530>,  <26.048977, 36.253380, 34.202297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.277420, 36.188007, 34.168530>,  <26.658159, 36.079056, 34.112247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277420, 36.188007, 34.168530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182735, -0.872586, 0.452991,
		0.246164, 0.405466, 0.880341,
		-0.951846, 0.272379, 0.140706,
		25.991867, 36.269722, 34.210743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248119, 35.831085, 33.598351>,  <26.658159, 36.079056, 34.112247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248119, 35.831085, 33.598351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440411, 35.661373, 33.291393>,  <27.555784, 35.559547, 33.107220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.440411, 35.661373, 33.291393>,  <27.248119, 35.831085, 33.598351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440411, 35.661373, 33.291393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540650, 0.832421, -0.121546,
		0.690362, -0.356460, 0.629553,
		0.480726, -0.424278, -0.767392,
		27.584629, 35.534088, 33.061176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952272, 35.959232, 33.750313>,  <27.248119, 35.831085, 33.598351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952272, 35.959232, 33.750313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953009, 35.872726, 33.359779>,  <27.953449, 35.820824, 33.125458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953009, 35.872726, 33.359779>,  <27.952272, 35.959232, 33.750313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953009, 35.872726, 33.359779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599901, 0.781378, -0.171952,
		0.800072, -0.585387, 0.131176,
		0.001839, -0.216266, -0.976333,
		27.953560, 35.807846, 33.066879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568886, 36.044170, 33.569016>,  <27.952272, 35.959232, 33.750313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568886, 36.044170, 33.569016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.380579, 36.056908, 33.216343>,  <28.267595, 36.064548, 33.004738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.380579, 36.056908, 33.216343>,  <28.568886, 36.044170, 33.569016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380579, 36.056908, 33.216343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555200, 0.787351, -0.268013,
		0.685661, -0.615682, -0.388336,
		-0.470768, 0.031839, -0.881683,
		28.239349, 36.066460, 32.951839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186932, 36.210884, 33.134010>,  <28.568886, 36.044170, 33.569016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186932, 36.210884, 33.134010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870777, 36.299450, 32.905533>,  <28.681084, 36.352589, 32.768448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870777, 36.299450, 32.905533>,  <29.186932, 36.210884, 33.134010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870777, 36.299450, 32.905533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525947, 0.723345, -0.447383,
		0.314113, -0.654024, -0.688176,
		-0.790388, 0.221416, -0.571194,
		28.633661, 36.365875, 32.734173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463106, 36.459229, 32.498852>,  <29.186932, 36.210884, 33.134010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463106, 36.459229, 32.498852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086245, 36.585945, 32.542652>,  <28.860128, 36.661976, 32.568932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086245, 36.585945, 32.542652>,  <29.463106, 36.459229, 32.498852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086245, 36.585945, 32.542652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270674, 0.911767, -0.308895,
		-0.197697, -0.261386, -0.944771,
		-0.942153, 0.316793, 0.109503,
		28.803598, 36.680984, 32.575504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343069, 36.850933, 31.880438>,  <29.463106, 36.459229, 32.498852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343069, 36.850933, 31.880438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047401, 37.007530, 32.099659>,  <28.870001, 37.101490, 32.231190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047401, 37.007530, 32.099659>,  <29.343069, 36.850933, 31.880438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047401, 37.007530, 32.099659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309824, 0.920152, -0.239438,
		-0.598029, -0.007186, -0.801442,
		-0.739169, 0.391496, 0.548051,
		28.825651, 37.124981, 32.264072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066366, 37.295620, 31.365248>,  <29.343069, 36.850933, 31.880438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066366, 37.295620, 31.365248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927761, 37.431042, 31.715176>,  <28.844599, 37.512295, 31.925133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927761, 37.431042, 31.715176>,  <29.066366, 37.295620, 31.365248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927761, 37.431042, 31.715176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145611, 0.940706, -0.306382,
		-0.926675, 0.021218, -0.375264,
		-0.346512, 0.338559, 0.874818,
		28.823807, 37.532608, 31.977621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738419, 37.816074, 31.208555>,  <29.066366, 37.295620, 31.365248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738419, 37.816074, 31.208555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.827030, 37.880856, 31.593199>,  <28.880198, 37.919724, 31.823986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.827030, 37.880856, 31.593199>,  <28.738419, 37.816074, 31.208555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827030, 37.880856, 31.593199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001211, 0.986157, -0.165809,
		-0.975153, 0.035567, 0.218659,
		0.221529, 0.161954, 0.961611,
		28.893490, 37.929443, 31.881681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240536, 38.360561, 31.370388>,  <28.738419, 37.816074, 31.208555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240536, 38.360561, 31.370388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.544466, 38.360062, 31.630438>,  <28.726824, 38.359760, 31.786469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.544466, 38.360062, 31.630438>,  <28.240536, 38.360561, 31.370388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544466, 38.360062, 31.630438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006122, 0.999968, -0.005233,
		-0.650099, 0.007956, 0.759808,
		0.759825, -0.001249, 0.650127,
		28.772413, 38.359688, 31.825476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136703, 39.008312, 31.843050>,  <28.240536, 38.360561, 31.370388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136703, 39.008312, 31.843050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515924, 38.888672, 31.886385>,  <28.743458, 38.816887, 31.912386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515924, 38.888672, 31.886385>,  <28.136703, 39.008312, 31.843050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515924, 38.888672, 31.886385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258020, 0.922188, 0.288087,
		-0.186072, -0.245169, 0.951456,
		0.948052, -0.299099, 0.108335,
		28.800341, 38.798943, 31.918886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366877, 39.186779, 32.416126>,  <28.136703, 39.008312, 31.843050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366877, 39.186779, 32.416126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725138, 39.154064, 32.241261>,  <28.940094, 39.134434, 32.136341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725138, 39.154064, 32.241261>,  <28.366877, 39.186779, 32.416126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725138, 39.154064, 32.241261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251807, 0.903483, 0.346860,
		0.366600, -0.420748, 0.829804,
		0.895655, -0.081791, -0.437164,
		28.993834, 39.129528, 32.110111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939978, 39.324551, 32.930893>,  <28.366877, 39.186779, 32.416126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939978, 39.324551, 32.930893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063210, 39.377201, 32.554008>,  <29.137150, 39.408791, 32.327877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063210, 39.377201, 32.554008>,  <28.939978, 39.324551, 32.930893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063210, 39.377201, 32.554008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395658, 0.882942, 0.252722,
		0.865182, -0.450651, 0.219938,
		0.308082, 0.131631, -0.942210,
		29.155634, 39.416691, 32.271347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647423, 39.547802, 32.956615>,  <28.939978, 39.324551, 32.930893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647423, 39.547802, 32.956615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.465544, 39.679649, 32.625652>,  <29.356417, 39.758759, 32.427074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.465544, 39.679649, 32.625652>,  <29.647423, 39.547802, 32.956615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465544, 39.679649, 32.625652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334319, 0.924230, 0.184471,
		0.825519, -0.192739, -0.530443,
		-0.454697, 0.329621, -0.827406,
		29.329134, 39.778534, 32.377430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897648, 40.102219, 32.913509>,  <29.647423, 39.547802, 32.956615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897648, 40.102219, 32.913509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646778, 40.159485, 32.607265>,  <29.496256, 40.193844, 32.423519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646778, 40.159485, 32.607265>,  <29.897648, 40.102219, 32.913509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646778, 40.159485, 32.607265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181974, 0.982691, 0.034694,
		0.757323, -0.117562, -0.642371,
		-0.627173, 0.143170, -0.765608,
		29.458626, 40.202435, 32.377583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212309, 40.468979, 32.296619>,  <29.897648, 40.102219, 32.913509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212309, 40.468979, 32.296619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.820898, 40.542362, 32.259037>,  <29.586052, 40.586391, 32.236488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.820898, 40.542362, 32.259037>,  <30.212309, 40.468979, 32.296619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820898, 40.542362, 32.259037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166528, 0.972288, 0.164086,
		0.121457, 0.144916, -0.981961,
		-0.978528, 0.183454, -0.093958,
		29.527340, 40.597397, 32.230850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091431, 41.189724, 31.966837>,  <30.212309, 40.468979, 32.296619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091431, 41.189724, 31.966837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733328, 41.130157, 32.134808>,  <29.518467, 41.094418, 32.235592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733328, 41.130157, 32.134808>,  <30.091431, 41.189724, 31.966837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733328, 41.130157, 32.134808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105743, 0.986579, 0.124416,
		-0.432820, 0.066980, -0.898989,
		-0.895257, -0.148912, 0.419929,
		29.464750, 41.085484, 32.260788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764332, 41.725357, 31.740080>,  <30.091431, 41.189724, 31.966837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764332, 41.725357, 31.740080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508083, 41.592934, 32.017208>,  <29.354334, 41.513477, 32.183487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508083, 41.592934, 32.017208>,  <29.764332, 41.725357, 31.740080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508083, 41.592934, 32.017208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364348, 0.925296, 0.105250,
		-0.675910, -0.185003, -0.713386,
		-0.640622, -0.331061, 0.692822,
		29.315897, 41.493614, 32.225056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077400, 42.016525, 31.644131>,  <29.764332, 41.725357, 31.740080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077400, 42.016525, 31.644131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066038, 41.883682, 32.021255>,  <29.059221, 41.803978, 32.247532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066038, 41.883682, 32.021255>,  <29.077400, 42.016525, 31.644131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066038, 41.883682, 32.021255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585348, 0.770090, 0.253631,
		-0.810285, -0.544670, -0.216271,
		-0.028403, -0.332107, 0.942814,
		29.057518, 41.784050, 32.304100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332945, 42.142944, 31.877579>,  <29.077400, 42.016525, 31.644131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332945, 42.142944, 31.877579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595842, 42.117794, 32.177998>,  <28.753582, 42.102703, 32.358250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595842, 42.117794, 32.177998>,  <28.332945, 42.142944, 31.877579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595842, 42.117794, 32.177998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413598, 0.802968, 0.429160,
		-0.630051, -0.592697, 0.501743,
		0.657246, -0.062873, 0.751049,
		28.793016, 42.098934, 32.403313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942129, 42.428146, 32.397888>,  <28.332945, 42.142944, 31.877579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942129, 42.428146, 32.397888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314264, 42.448029, 32.543217>,  <28.537544, 42.459957, 32.630413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314264, 42.448029, 32.543217>,  <27.942129, 42.428146, 32.397888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314264, 42.448029, 32.543217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261877, 0.783606, 0.563367,
		-0.256701, -0.619267, 0.742033,
		0.930336, 0.049705, 0.363324,
		28.593365, 42.462940, 32.652214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898949, 42.534546, 33.124470>,  <27.942129, 42.428146, 32.397888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898949, 42.534546, 33.124470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.241964, 42.697468, 32.998783>,  <28.447775, 42.795219, 32.923370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.241964, 42.697468, 32.998783>,  <27.898949, 42.534546, 33.124470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241964, 42.697468, 32.998783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231141, 0.850765, 0.471988,
		0.459562, -0.332122, 0.823710,
		0.857541, 0.407301, -0.314213,
		28.499226, 42.819656, 32.904518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056627, 42.969383, 33.673496>,  <27.898949, 42.534546, 33.124470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056627, 42.969383, 33.673496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296219, 43.097050, 33.379734>,  <28.439974, 43.173649, 33.203476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296219, 43.097050, 33.379734>,  <28.056627, 42.969383, 33.673496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296219, 43.097050, 33.379734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066960, 0.933886, 0.351245,
		0.797958, -0.161213, 0.580752,
		0.598982, 0.319167, -0.734407,
		28.475914, 43.192799, 33.159412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.983227, 29.785215, 46.468765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602814, 29.735714, 46.355476>,  <34.374565, 29.706013, 46.287502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602814, 29.735714, 46.355476>,  <34.983227, 29.785215, 46.468765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602814, 29.735714, 46.355476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280140, -0.041997, 0.959040,
		-0.130578, 0.991424, 0.005272,
		-0.951037, -0.123753, -0.283222,
		34.317501, 29.698587, 46.270512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654282, 30.168947, 46.911549>,  <34.983227, 29.785215, 46.468765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654282, 30.168947, 46.911549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374924, 29.915043, 46.779297>,  <34.207310, 29.762699, 46.699947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374924, 29.915043, 46.779297>,  <34.654282, 30.168947, 46.911549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374924, 29.915043, 46.779297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289262, -0.172210, 0.941632,
		-0.654650, 0.753274, -0.063341,
		-0.698399, -0.634762, -0.330630,
		34.165405, 29.724615, 46.680107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095936, 30.347454, 47.292873>,  <34.654282, 30.168947, 46.911549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095936, 30.347454, 47.292873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046345, 29.975584, 47.154114>,  <34.016590, 29.752462, 47.070858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046345, 29.975584, 47.154114>,  <34.095936, 30.347454, 47.292873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046345, 29.975584, 47.154114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351587, -0.285756, 0.891476,
		-0.927910, 0.232487, -0.291434,
		-0.123978, -0.929674, -0.346895,
		34.009151, 29.696682, 47.050045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434734, 30.160517, 47.418087>,  <34.095936, 30.347454, 47.292873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434734, 30.160517, 47.418087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.610432, 29.804659, 47.368130>,  <33.715851, 29.591145, 47.338158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.610432, 29.804659, 47.368130>,  <33.434734, 30.160517, 47.418087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610432, 29.804659, 47.368130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589931, -0.390478, 0.706759,
		-0.677532, -0.236760, -0.696344,
		0.439240, -0.889647, -0.124889,
		33.742203, 29.537766, 47.330662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935871, 29.753946, 47.522312>,  <33.434734, 30.160517, 47.418087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935871, 29.753946, 47.522312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262962, 29.526495, 47.558037>,  <33.459217, 29.390024, 47.579472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262962, 29.526495, 47.558037>,  <32.935871, 29.753946, 47.522312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262962, 29.526495, 47.558037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407500, -0.462323, 0.787528,
		-0.406517, -0.680384, -0.609772,
		0.817733, -0.568626, 0.089314,
		33.508282, 29.355907, 47.584831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622677, 29.020086, 47.669762>,  <32.935871, 29.753946, 47.522312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622677, 29.020086, 47.669762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007198, 29.028727, 47.779613>,  <33.237911, 29.033911, 47.845524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007198, 29.028727, 47.779613>,  <32.622677, 29.020086, 47.669762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007198, 29.028727, 47.779613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195872, -0.647392, 0.736558,
		0.193703, -0.761851, -0.618112,
		0.961308, 0.021603, 0.274627,
		33.295589, 29.035208, 47.862003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948071, 28.338068, 47.633381>,  <32.622677, 29.020086, 47.669762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948071, 28.338068, 47.633381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148041, 28.556116, 47.902576>,  <33.268024, 28.686945, 48.064095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148041, 28.556116, 47.902576>,  <32.948071, 28.338068, 47.633381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148041, 28.556116, 47.902576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072888, -0.747828, 0.659880,
		0.862995, -0.378944, -0.334126,
		0.499927, 0.545119, 0.672992,
		33.298019, 28.719652, 48.104473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253319, 27.883890, 48.129093>,  <32.948071, 28.338068, 47.633381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253319, 27.883890, 48.129093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276142, 28.224794, 48.337090>,  <33.289837, 28.429337, 48.461887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276142, 28.224794, 48.337090>,  <33.253319, 27.883890, 48.129093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276142, 28.224794, 48.337090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046669, -0.517997, 0.854109,
		0.997280, -0.073000, 0.010219,
		0.057056, 0.852262, 0.519994,
		33.293259, 28.480473, 48.493088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542950, 27.627396, 48.759575>,  <33.253319, 27.883890, 48.129093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542950, 27.627396, 48.759575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451321, 28.007807, 48.842583>,  <33.396343, 28.236053, 48.892387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451321, 28.007807, 48.842583>,  <33.542950, 27.627396, 48.759575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451321, 28.007807, 48.842583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020186, -0.217788, 0.975787,
		0.973199, 0.219341, 0.069088,
		-0.229077, 0.951030, 0.207524,
		33.382599, 28.293116, 48.904839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951202, 27.814648, 49.302490>,  <33.542950, 27.627396, 48.759575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951202, 27.814648, 49.302490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659977, 28.088291, 49.320042>,  <33.485241, 28.252478, 49.330574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659977, 28.088291, 49.320042>,  <33.951202, 27.814648, 49.302490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659977, 28.088291, 49.320042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026199, -0.036193, 0.999002,
		0.685012, 0.728484, 0.008428,
		-0.728061, 0.684107, 0.043878,
		33.441559, 28.293524, 49.333206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140778, 28.383799, 49.844658>,  <33.951202, 27.814648, 49.302490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140778, 28.383799, 49.844658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743393, 28.391600, 49.799671>,  <33.504963, 28.396280, 49.772678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.743393, 28.391600, 49.799671>,  <34.140778, 28.383799, 49.844658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743393, 28.391600, 49.799671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112803, -0.016851, 0.993474,
		0.017481, 0.999668, 0.018941,
		-0.993464, 0.019503, -0.112471,
		33.445354, 28.397451, 49.765930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880573, 28.870527, 50.425728>,  <34.140778, 28.383799, 49.844658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880573, 28.870527, 50.425728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.610783, 28.597357, 50.313515>,  <33.448910, 28.433455, 50.246185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.610783, 28.597357, 50.313515>,  <33.880573, 28.870527, 50.425728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610783, 28.597357, 50.313515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380671, -0.003893, 0.924703,
		-0.632594, 0.730479, -0.257344,
		-0.674474, -0.682925, -0.280535,
		33.408440, 28.392479, 50.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189354, 29.074228, 50.739452>,  <33.880573, 28.870527, 50.425728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189354, 29.074228, 50.739452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.195995, 28.685331, 50.646095>,  <33.199982, 28.451994, 50.590080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.195995, 28.685331, 50.646095>,  <33.189354, 29.074228, 50.739452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195995, 28.685331, 50.646095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399527, -0.220429, 0.889825,
		-0.916571, 0.078468, -0.392097,
		0.016607, -0.972242, -0.233389,
		33.200977, 28.393660, 50.576080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270042, 29.483139, 51.289413>,  <33.189354, 29.074228, 50.739452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270042, 29.483139, 51.289413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385338, 29.355286, 51.650467>,  <33.454514, 29.278574, 51.867100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385338, 29.355286, 51.650467>,  <33.270042, 29.483139, 51.289413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385338, 29.355286, 51.650467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697857, 0.715585, 0.030548,
		-0.655678, 0.621106, 0.429318,
		0.288240, -0.319632, 0.902637,
		33.471809, 29.259396, 51.921257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874638, 29.988609, 50.802887>,  <33.270042, 29.483139, 51.289413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874638, 29.988609, 50.802887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500671, 29.924913, 50.929745>,  <32.276291, 29.886696, 51.005859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500671, 29.924913, 50.929745>,  <32.874638, 29.988609, 50.802887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500671, 29.924913, 50.929745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341044, 0.156121, -0.926993,
		0.098104, -0.974817, -0.200268,
		-0.934914, -0.159242, 0.317140,
		32.220196, 29.877142, 51.024887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519745, 29.501932, 50.346931>,  <32.874638, 29.988609, 50.802887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519745, 29.501932, 50.346931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243954, 29.732639, 50.522182>,  <32.078480, 29.871063, 50.627335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243954, 29.732639, 50.522182>,  <32.519745, 29.501932, 50.346931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243954, 29.732639, 50.522182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381937, 0.224452, -0.896519,
		-0.615425, -0.785466, 0.065536,
		-0.689476, 0.576770, 0.438132,
		32.037109, 29.905670, 50.653622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968590, 29.404222, 49.934395>,  <32.519745, 29.501932, 50.346931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968590, 29.404222, 49.934395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878773, 29.738735, 50.134480>,  <31.824883, 29.939442, 50.254532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878773, 29.738735, 50.134480>,  <31.968590, 29.404222, 49.934395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878773, 29.738735, 50.134480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409158, 0.384971, -0.827277,
		-0.884404, -0.390427, 0.255728,
		-0.224543, 0.836280, 0.500216,
		31.811409, 29.989618, 50.284546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233770, 29.515078, 49.830757>,  <31.968590, 29.404222, 49.934395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233770, 29.515078, 49.830757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.418890, 29.855904, 49.928577>,  <31.529961, 30.060400, 49.987270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.418890, 29.855904, 49.928577>,  <31.233770, 29.515078, 49.830757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418890, 29.855904, 49.928577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442623, 0.461134, -0.769051,
		-0.768052, 0.247671, 0.590555,
		0.462797, 0.852065, 0.244550,
		31.557730, 30.111523, 50.001942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754501, 29.988369, 49.646397>,  <31.233770, 29.515078, 49.830757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754501, 29.988369, 49.646397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.092018, 30.199408, 49.685696>,  <31.294529, 30.326031, 49.709274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.092018, 30.199408, 49.685696>,  <30.754501, 29.988369, 49.646397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092018, 30.199408, 49.685696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306629, 0.624203, -0.718575,
		-0.440443, 0.576205, 0.688475,
		0.843794, 0.527597, 0.098244,
		31.345156, 30.357687, 49.715168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588976, 30.694540, 49.635548>,  <30.754501, 29.988369, 49.646397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588976, 30.694540, 49.635548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978447, 30.702635, 49.544735>,  <31.212130, 30.707493, 49.490250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978447, 30.702635, 49.544735>,  <30.588976, 30.694540, 49.635548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978447, 30.702635, 49.544735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192118, 0.608843, -0.769675,
		0.122648, 0.793032, 0.596705,
		0.973678, 0.020239, -0.227029,
		31.270550, 30.708706, 49.476627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665676, 31.325005, 49.299919>,  <30.588976, 30.694540, 49.635548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665676, 31.325005, 49.299919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.023161, 31.165562, 49.217564>,  <31.237652, 31.069895, 49.168152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.023161, 31.165562, 49.217564>,  <30.665676, 31.325005, 49.299919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023161, 31.165562, 49.217564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088607, 0.606699, -0.789978,
		0.439803, 0.687770, 0.577534,
		0.893712, -0.398609, -0.205887,
		31.291275, 31.045979, 49.155796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099634, 31.969860, 49.144054>,  <30.665676, 31.325005, 49.299919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099634, 31.969860, 49.144054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.264830, 31.650249, 48.969242>,  <31.363947, 31.458483, 48.864353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.264830, 31.650249, 48.969242>,  <31.099634, 31.969860, 49.144054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264830, 31.650249, 48.969242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116086, 0.522140, -0.844922,
		0.903308, 0.298209, 0.308393,
		0.412988, -0.799025, -0.437035,
		31.388725, 31.410542, 48.838131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832176, 32.176289, 48.699318>,  <31.099634, 31.969860, 49.144054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832176, 32.176289, 48.699318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695429, 31.833153, 48.545830>,  <31.613380, 31.627272, 48.453735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695429, 31.833153, 48.545830>,  <31.832176, 32.176289, 48.699318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695429, 31.833153, 48.545830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180081, 0.340957, -0.922670,
		0.922333, -0.384531, 0.037919,
		-0.341867, -0.857837, -0.383722,
		31.592869, 31.575802, 48.430714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301380, 31.937059, 48.232914>,  <31.832176, 32.176289, 48.699318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301380, 31.937059, 48.232914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973886, 31.741222, 48.112926>,  <31.777391, 31.623720, 48.040936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973886, 31.741222, 48.112926>,  <32.301380, 31.937059, 48.232914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973886, 31.741222, 48.112926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222970, 0.210334, -0.951863,
		0.529118, -0.846203, -0.063042,
		-0.818730, -0.489592, -0.299969,
		31.728268, 31.594345, 48.022934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497375, 31.434568, 47.742275>,  <32.301380, 31.937059, 48.232914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497375, 31.434568, 47.742275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106804, 31.484081, 47.671551>,  <31.872461, 31.513788, 47.629116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106804, 31.484081, 47.671551>,  <32.497375, 31.434568, 47.742275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106804, 31.484081, 47.671551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203359, 0.253147, -0.945813,
		-0.072314, -0.959476, -0.272353,
		-0.976430, 0.123781, -0.176812,
		31.813875, 31.521215, 47.618507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279892, 31.061171, 47.046089>,  <32.497375, 31.434568, 47.742275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279892, 31.061171, 47.046089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.978729, 31.321665, 47.084076>,  <31.798031, 31.477961, 47.106869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.978729, 31.321665, 47.084076>,  <32.279892, 31.061171, 47.046089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978729, 31.321665, 47.084076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050672, 0.201240, -0.978230,
		-0.656168, -0.731708, -0.184516,
		-0.752911, 0.651234, 0.094970,
		31.752855, 31.517035, 47.112568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878515, 30.892023, 46.449764>,  <32.279892, 31.061171, 47.046089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878515, 30.892023, 46.449764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.781040, 31.261425, 46.568260>,  <31.722555, 31.483067, 46.639359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.781040, 31.261425, 46.568260>,  <31.878515, 30.892023, 46.449764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781040, 31.261425, 46.568260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107213, 0.329229, -0.938144,
		-0.963910, -0.196853, -0.179240,
		-0.243687, 0.923503, 0.296242,
		31.707933, 31.538475, 46.657131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331154, 31.129450, 46.086201>,  <31.878515, 30.892023, 46.449764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331154, 31.129450, 46.086201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501804, 31.468239, 46.213089>,  <31.604195, 31.671513, 46.289223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501804, 31.468239, 46.213089>,  <31.331154, 31.129450, 46.086201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501804, 31.468239, 46.213089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150728, 0.279251, -0.948314,
		-0.891779, 0.452391, -0.008527,
		0.426628, 0.846972, 0.317218,
		31.629793, 31.722330, 46.308254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482523, 31.246313, 46.122025>,  <31.331154, 31.129450, 46.086201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482523, 31.246313, 46.122025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.117647, 31.283342, 45.962357>,  <29.898722, 31.305559, 45.866554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.117647, 31.283342, 45.962357>,  <30.482523, 31.246313, 46.122025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117647, 31.283342, 45.962357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371348, -0.598582, 0.709789,
		-0.173232, 0.795695, 0.580397,
		-0.912190, 0.092571, -0.399173,
		29.843990, 31.311113, 45.842606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195126, 31.362492, 46.731842>,  <30.482523, 31.246313, 46.122025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195126, 31.362492, 46.731842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.923210, 31.239710, 46.465408>,  <29.760061, 31.166040, 46.305550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.923210, 31.239710, 46.465408>,  <30.195126, 31.362492, 46.731842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923210, 31.239710, 46.465408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368724, -0.642033, 0.672188,
		-0.633978, 0.702547, 0.323265,
		-0.679790, -0.306957, -0.666080,
		29.719273, 31.147623, 46.265583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566500, 31.548021, 47.019421>,  <30.195126, 31.362492, 46.731842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566500, 31.548021, 47.019421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.468136, 31.249361, 46.772182>,  <29.409117, 31.070164, 46.623840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.468136, 31.249361, 46.772182>,  <29.566500, 31.548021, 47.019421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468136, 31.249361, 46.772182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171267, -0.594171, 0.785894,
		-0.954042, 0.299119, 0.018236,
		-0.245911, -0.746652, -0.618093,
		29.394363, 31.025366, 46.586754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065563, 31.278290, 47.422848>,  <29.566500, 31.548021, 47.019421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065563, 31.278290, 47.422848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133181, 31.022472, 47.122871>,  <29.173750, 30.868982, 46.942886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133181, 31.022472, 47.122871>,  <29.065563, 31.278290, 47.422848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133181, 31.022472, 47.122871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034790, -0.764287, 0.643937,
		-0.984995, -0.082762, -0.151447,
		0.169042, -0.639544, -0.749939,
		29.183893, 30.830610, 46.897888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541311, 30.876642, 47.278584>,  <29.065563, 31.278290, 47.422848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541311, 30.876642, 47.278584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.876871, 30.682091, 47.180862>,  <29.078207, 30.565361, 47.122231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.876871, 30.682091, 47.180862>,  <28.541311, 30.876642, 47.278584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876871, 30.682091, 47.180862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147457, -0.635160, 0.758174,
		-0.523931, -0.600008, -0.604556,
		0.838900, -0.486376, -0.244305,
		29.128542, 30.536179, 47.107571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422281, 30.165453, 47.223026>,  <28.541311, 30.876642, 47.278584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422281, 30.165453, 47.223026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.814857, 30.193068, 47.294594>,  <29.050404, 30.209637, 47.337532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.814857, 30.193068, 47.294594>,  <28.422281, 30.165453, 47.223026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814857, 30.193068, 47.294594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076228, -0.715649, 0.694289,
		0.175974, -0.695040, -0.697103,
		0.981439, 0.069038, 0.178917,
		29.109289, 30.213779, 47.348270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648607, 29.478659, 47.273689>,  <28.422281, 30.165453, 47.223026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648607, 29.478659, 47.273689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926863, 29.686342, 47.472290>,  <29.093815, 29.810953, 47.591450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.926863, 29.686342, 47.472290>,  <28.648607, 29.478659, 47.273689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926863, 29.686342, 47.472290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088375, -0.747724, 0.658103,
		0.712938, -0.413922, -0.566029,
		0.695636, 0.519209, 0.496500,
		29.135553, 29.842104, 47.621239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579994, 28.941353, 46.752666>,  <28.648607, 29.478659, 47.273689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579994, 28.941353, 46.752666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.248156, 28.723049, 46.705475>,  <28.049053, 28.592068, 46.677158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.248156, 28.723049, 46.705475>,  <28.579994, 28.941353, 46.752666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248156, 28.723049, 46.705475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145057, 0.414692, -0.898326,
		0.539196, -0.728132, -0.423192,
		-0.829594, -0.545761, -0.117979,
		27.999277, 28.559320, 46.670082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610413, 28.527756, 45.991127>,  <28.579994, 28.941353, 46.752666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610413, 28.527756, 45.991127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.235645, 28.591578, 46.115532>,  <28.010786, 28.629871, 46.190174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.235645, 28.591578, 46.115532>,  <28.610413, 28.527756, 45.991127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235645, 28.591578, 46.115532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224165, 0.408441, -0.884831,
		-0.268210, -0.898732, -0.346908,
		-0.936917, 0.159555, 0.311012,
		27.954571, 28.639444, 46.208836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262096, 28.297562, 45.397892>,  <28.610413, 28.527756, 45.991127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262096, 28.297562, 45.397892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.999172, 28.496553, 45.624329>,  <27.841417, 28.615948, 45.760189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.999172, 28.496553, 45.624329>,  <28.262096, 28.297562, 45.397892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999172, 28.496553, 45.624329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205460, 0.604409, -0.769725,
		-0.725070, -0.622258, -0.295074,
		-0.657313, 0.497478, 0.566088,
		27.801979, 28.645796, 45.794155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639473, 28.221682, 45.123013>,  <28.262096, 28.297562, 45.397892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639473, 28.221682, 45.123013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.612444, 28.567539, 45.322144>,  <27.596228, 28.775053, 45.441620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.612444, 28.567539, 45.322144>,  <27.639473, 28.221682, 45.123013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612444, 28.567539, 45.322144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266122, 0.465268, -0.844219,
		-0.961568, -0.189526, 0.198661,
		-0.067571, 0.864642, 0.497824,
		27.592173, 28.826931, 45.471489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066116, 28.550503, 44.775845>,  <27.639473, 28.221682, 45.123013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066116, 28.550503, 44.775845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.235630, 28.857494, 44.968254>,  <27.337337, 29.041689, 45.083698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.235630, 28.857494, 44.968254>,  <27.066116, 28.550503, 44.775845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235630, 28.857494, 44.968254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022754, 0.539919, -0.841409,
		-0.905478, 0.345630, 0.246272,
		0.423784, 0.767481, 0.481020,
		27.362764, 29.087738, 45.112560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658600, 29.233511, 44.604458>,  <27.066116, 28.550503, 44.775845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658600, 29.233511, 44.604458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.024269, 29.347330, 44.719917>,  <27.243671, 29.415621, 44.789192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.024269, 29.347330, 44.719917>,  <26.658600, 29.233511, 44.604458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024269, 29.347330, 44.719917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113004, 0.504993, -0.855694,
		-0.389252, 0.814872, 0.429496,
		0.914174, 0.284546, 0.288653,
		27.298521, 29.432693, 44.806515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665545, 29.961132, 44.545929>,  <26.658600, 29.233511, 44.604458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665545, 29.961132, 44.545929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.048573, 29.845861, 44.547504>,  <27.278389, 29.776699, 44.548450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.048573, 29.845861, 44.547504>,  <26.665545, 29.961132, 44.545929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048573, 29.845861, 44.547504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198009, 0.647890, -0.735548,
		0.209415, 0.705118, 0.677461,
		0.957569, -0.288178, 0.003942,
		27.335844, 29.759409, 44.548687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.892735, 26.273676, 48.391373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.038918, 26.597527, 48.575089>,  <31.126627, 26.791838, 48.685318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.038918, 26.597527, 48.575089>,  <30.892735, 26.273676, 48.391373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038918, 26.597527, 48.575089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285597, 0.372090, -0.883167,
		-0.885933, 0.453930, -0.095245,
		0.365456, 0.809628, 0.459287,
		31.148554, 26.840414, 48.712875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631655, 26.893639, 47.982124>,  <30.892735, 26.273676, 48.391373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631655, 26.893639, 47.982124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.965553, 26.977179, 48.185921>,  <31.165894, 27.027302, 48.308197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.965553, 26.977179, 48.185921>,  <30.631655, 26.893639, 47.982124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965553, 26.977179, 48.185921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400327, 0.405112, -0.821963,
		-0.378066, 0.890093, 0.254558,
		0.834748, 0.208850, 0.509487,
		31.215979, 27.039833, 48.338768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746450, 27.558327, 47.804272>,  <30.631655, 26.893639, 47.982124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746450, 27.558327, 47.804272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.105536, 27.407064, 47.894703>,  <31.320986, 27.316307, 47.948963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.105536, 27.407064, 47.894703>,  <30.746450, 27.558327, 47.804272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105536, 27.407064, 47.894703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382815, 0.415462, -0.825132,
		0.218102, 0.827277, 0.517730,
		0.897710, -0.378158, 0.226081,
		31.374849, 27.293617, 47.962528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178888, 28.099079, 47.622250>,  <30.746450, 27.558327, 47.804272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178888, 28.099079, 47.622250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.374958, 27.750565, 47.612572>,  <31.492599, 27.541456, 47.606766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.374958, 27.750565, 47.612572>,  <31.178888, 28.099079, 47.622250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374958, 27.750565, 47.612572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397236, 0.248012, -0.883569,
		0.775843, 0.423493, 0.467676,
		0.490175, -0.871288, -0.024192,
		31.522011, 27.489178, 47.605312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857742, 28.265396, 47.312046>,  <31.178888, 28.099079, 47.622250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857742, 28.265396, 47.312046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.827887, 27.867599, 47.282604>,  <31.809973, 27.628922, 47.264938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.827887, 27.867599, 47.282604>,  <31.857742, 28.265396, 47.312046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827887, 27.867599, 47.282604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397033, 0.038073, -0.917014,
		0.914764, -0.097670, 0.392004,
		-0.074640, -0.994491, -0.073606,
		31.805494, 27.569252, 47.260521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365807, 28.127514, 46.886387>,  <31.857742, 28.265396, 47.312046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365807, 28.127514, 46.886387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.228642, 27.751795, 46.881889>,  <32.146343, 27.526363, 46.879189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.228642, 27.751795, 46.881889>,  <32.365807, 28.127514, 46.886387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228642, 27.751795, 46.881889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226808, -0.071172, -0.971336,
		0.911574, -0.335637, 0.237447,
		-0.342916, -0.939299, -0.011246,
		32.125767, 27.470005, 46.878517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825249, 27.716288, 46.616112>,  <32.365807, 28.127514, 46.886387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825249, 27.716288, 46.616112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.488255, 27.509661, 46.554955>,  <32.286057, 27.385685, 46.518261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.488255, 27.509661, 46.554955>,  <32.825249, 27.716288, 46.616112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488255, 27.509661, 46.554955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172581, 0.010060, -0.984944,
		0.510331, -0.856186, 0.080675,
		-0.842484, -0.516570, -0.152895,
		32.235508, 27.354691, 46.509087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014603, 27.089676, 46.246025>,  <32.825249, 27.716288, 46.616112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014603, 27.089676, 46.246025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623234, 27.143686, 46.183468>,  <32.388412, 27.176092, 46.145935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623234, 27.143686, 46.183468>,  <33.014603, 27.089676, 46.246025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623234, 27.143686, 46.183468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106830, -0.317284, -0.942294,
		-0.176856, -0.938668, 0.296013,
		-0.978422, 0.135027, -0.156392,
		32.329708, 27.184195, 46.136551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715881, 26.424719, 45.870590>,  <33.014603, 27.089676, 46.246025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715881, 26.424719, 45.870590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.462006, 26.725420, 45.798985>,  <32.309681, 26.905840, 45.756023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.462006, 26.725420, 45.798985>,  <32.715881, 26.424719, 45.870590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462006, 26.725420, 45.798985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107031, -0.314929, -0.943061,
		-0.765322, -0.579388, 0.280341,
		-0.634686, 0.751751, -0.179010,
		32.271599, 26.950945, 45.745281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093185, 26.090017, 45.535740>,  <32.715881, 26.424719, 45.870590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093185, 26.090017, 45.535740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.106651, 26.481421, 45.454365>,  <32.114731, 26.716263, 45.405540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.106651, 26.481421, 45.454365>,  <32.093185, 26.090017, 45.535740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106651, 26.481421, 45.454365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119997, -0.206042, -0.971158,
		-0.992203, 0.008278, -0.124354,
		0.033662, 0.978508, -0.203442,
		32.116749, 26.774973, 45.393333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654621, 26.118124, 44.923573>,  <32.093185, 26.090017, 45.535740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654621, 26.118124, 44.923573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.848179, 26.468092, 44.931179>,  <31.964314, 26.678072, 44.935745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.848179, 26.468092, 44.931179>,  <31.654621, 26.118124, 44.923573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848179, 26.468092, 44.931179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120943, -0.045333, -0.991624,
		-0.866730, 0.482140, -0.127751,
		0.483893, 0.874920, 0.019020,
		31.993347, 26.730568, 44.936886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380621, 26.629520, 44.391216>,  <31.654621, 26.118124, 44.923573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380621, 26.629520, 44.391216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748577, 26.761723, 44.475662>,  <31.969351, 26.841043, 44.526329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748577, 26.761723, 44.475662>,  <31.380621, 26.629520, 44.391216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748577, 26.761723, 44.475662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126541, 0.259394, -0.957446,
		-0.371204, 0.907458, 0.196791,
		0.919888, 0.330506, 0.211118,
		32.024544, 26.860874, 44.538998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720062, 26.908428, 44.276756>,  <31.380621, 26.629520, 44.391216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720062, 26.908428, 44.276756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.479530, 26.670473, 44.063396>,  <30.335211, 26.527700, 43.935383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.479530, 26.670473, 44.063396>,  <30.720062, 26.908428, 44.276756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479530, 26.670473, 44.063396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428005, -0.323888, 0.843746,
		-0.674693, 0.735668, -0.059850,
		-0.601332, -0.594886, -0.533395,
		30.299131, 26.492006, 43.903378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100792, 26.903008, 44.614479>,  <30.720062, 26.908428, 44.276756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100792, 26.903008, 44.614479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.077551, 26.576759, 44.384216>,  <30.063606, 26.381010, 44.246059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.077551, 26.576759, 44.384216>,  <30.100792, 26.903008, 44.614479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077551, 26.576759, 44.384216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351220, -0.523070, 0.776558,
		-0.934488, 0.247305, -0.256070,
		-0.058104, -0.815621, -0.575661,
		30.060120, 26.332073, 44.211517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463070, 26.644772, 44.603794>,  <30.100792, 26.903008, 44.614479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463070, 26.644772, 44.603794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.707838, 26.339113, 44.522175>,  <29.854698, 26.155718, 44.473206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.707838, 26.339113, 44.522175>,  <29.463070, 26.644772, 44.603794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707838, 26.339113, 44.522175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341672, -0.488067, 0.803150,
		-0.713312, -0.421748, -0.559746,
		0.611920, -0.764146, -0.204045,
		29.891415, 26.109869, 44.460960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006647, 26.143923, 44.787701>,  <29.463070, 26.644772, 44.603794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006647, 26.143923, 44.787701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.365911, 25.968843, 44.771069>,  <29.581470, 25.863796, 44.761089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.365911, 25.968843, 44.771069>,  <29.006647, 26.143923, 44.787701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365911, 25.968843, 44.771069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144263, -0.382707, 0.912537,
		-0.415333, -0.813603, -0.406876,
		0.898158, -0.437704, -0.041578,
		29.635359, 25.837534, 44.758595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867100, 25.415354, 44.982250>,  <29.006647, 26.143923, 44.787701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867100, 25.415354, 44.982250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.252394, 25.492628, 45.056934>,  <29.483570, 25.538994, 45.101746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.252394, 25.492628, 45.056934>,  <28.867100, 25.415354, 44.982250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252394, 25.492628, 45.056934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181582, -0.044061, 0.982388,
		0.198012, -0.980172, -0.007361,
		0.963234, 0.193188, 0.186706,
		29.541365, 25.550585, 45.112946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034241, 24.967596, 45.609100>,  <28.867100, 25.415354, 44.982250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034241, 24.967596, 45.609100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.367041, 25.187885, 45.582329>,  <29.566721, 25.320059, 45.566265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.367041, 25.187885, 45.582329>,  <29.034241, 24.967596, 45.609100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367041, 25.187885, 45.582329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076936, 0.004934, 0.997024,
		0.549415, -0.834673, -0.038265,
		0.832000, 0.550723, -0.066927,
		29.616640, 25.353102, 45.562252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603716, 24.617222, 45.910408>,  <29.034241, 24.967596, 45.609100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603716, 24.617222, 45.910408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672289, 25.009455, 45.948494>,  <29.713432, 25.244795, 45.971344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672289, 25.009455, 45.948494>,  <29.603716, 24.617222, 45.910408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672289, 25.009455, 45.948494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035945, -0.090356, 0.995261,
		0.984540, -0.174042, 0.019757,
		0.171432, 0.980584, 0.095215,
		29.723719, 25.303631, 45.977058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223967, 24.693130, 46.407722>,  <29.603716, 24.617222, 45.910408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223967, 24.693130, 46.407722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.004507, 25.027418, 46.398285>,  <29.872831, 25.227991, 46.392624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.004507, 25.027418, 46.398285>,  <30.223967, 24.693130, 46.407722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004507, 25.027418, 46.398285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059958, 0.067477, 0.995918,
		0.833900, 0.544995, -0.087130,
		-0.548649, 0.835720, -0.023593,
		29.839912, 25.278133, 46.391209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416798, 25.044130, 46.935276>,  <30.223967, 24.693130, 46.407722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416798, 25.044130, 46.935276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.068142, 25.222265, 46.853378>,  <29.858948, 25.329145, 46.804241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.068142, 25.222265, 46.853378>,  <30.416798, 25.044130, 46.935276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068142, 25.222265, 46.853378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204985, 0.048229, 0.977576,
		0.445225, 0.894063, 0.049249,
		-0.871640, 0.445337, -0.204742,
		29.806650, 25.355865, 46.791954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543772, 25.612122, 47.285477>,  <30.416798, 25.044130, 46.935276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543772, 25.612122, 47.285477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.145512, 25.607550, 47.248497>,  <29.906555, 25.604807, 47.226307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.145512, 25.607550, 47.248497>,  <30.543772, 25.612122, 47.285477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145512, 25.607550, 47.248497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093013, 0.066855, 0.993418,
		-0.005175, 0.997697, -0.067628,
		-0.995651, -0.011431, -0.092452,
		29.846817, 25.604120, 47.220760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218885, 26.138996, 47.650154>,  <30.543772, 25.612122, 47.285477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218885, 26.138996, 47.650154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.955633, 25.839367, 47.619808>,  <29.797682, 25.659590, 47.601601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.955633, 25.839367, 47.619808>,  <30.218885, 26.138996, 47.650154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955633, 25.839367, 47.619808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192760, 0.070227, 0.978729,
		-0.727810, 0.658756, -0.190610,
		-0.658130, -0.749072, -0.075869,
		29.758194, 25.614645, 47.597046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812296, 26.241661, 48.357700>,  <30.218885, 26.138996, 47.650154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812296, 26.241661, 48.357700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.674253, 25.906916, 48.187733>,  <29.591427, 25.706068, 48.085751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.674253, 25.906916, 48.187733>,  <29.812296, 26.241661, 48.357700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674253, 25.906916, 48.187733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421599, -0.266265, 0.866808,
		-0.838543, 0.478289, -0.260931,
		-0.345108, -0.836865, -0.424921,
		29.570721, 25.655857, 48.060257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140638, 26.077835, 48.416279>,  <29.812296, 26.241661, 48.357700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140638, 26.077835, 48.416279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.265556, 25.699413, 48.381748>,  <29.340508, 25.472361, 48.361031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.265556, 25.699413, 48.381748>,  <29.140638, 26.077835, 48.416279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265556, 25.699413, 48.381748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351225, -0.199421, 0.914807,
		-0.882673, -0.255369, -0.394556,
		0.312296, -0.946054, -0.086331,
		29.359245, 25.415598, 48.355850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552176, 25.671230, 48.545563>,  <29.140638, 26.077835, 48.416279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552176, 25.671230, 48.545563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.901579, 25.509813, 48.654476>,  <29.111221, 25.412964, 48.719822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.901579, 25.509813, 48.654476>,  <28.552176, 25.671230, 48.545563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901579, 25.509813, 48.654476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341034, -0.108139, 0.933810,
		-0.347388, -0.908548, -0.232082,
		0.873509, -0.403542, 0.272279,
		29.163631, 25.388752, 48.736160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789711, 26.006790, 48.555626>,  <28.552176, 25.671230, 48.545563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789711, 26.006790, 48.555626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.731245, 26.374041, 48.702965>,  <27.696165, 26.594391, 48.791367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.731245, 26.374041, 48.702965>,  <27.789711, 26.006790, 48.555626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731245, 26.374041, 48.702965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450729, 0.269642, -0.850963,
		-0.880613, -0.290403, 0.374415,
		-0.146165, 0.918128, 0.368343,
		27.687395, 26.649479, 48.813469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186094, 26.276630, 48.280781>,  <27.789711, 26.006790, 48.555626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186094, 26.276630, 48.280781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.379000, 26.607882, 48.395061>,  <27.494743, 26.806633, 48.463631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.379000, 26.607882, 48.395061>,  <27.186094, 26.276630, 48.280781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379000, 26.607882, 48.395061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210195, 0.425993, -0.879971,
		-0.850434, 0.364327, 0.379509,
		0.482265, 0.828128, 0.285699,
		27.523680, 26.856319, 48.480770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808290, 26.875645, 47.977921>,  <27.186094, 26.276630, 48.280781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808290, 26.875645, 47.977921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.170189, 27.022469, 48.064362>,  <27.387327, 27.110563, 48.116226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.170189, 27.022469, 48.064362>,  <26.808290, 26.875645, 47.977921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170189, 27.022469, 48.064362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096229, 0.670367, -0.735763,
		-0.414939, 0.644884, 0.641834,
		0.904746, 0.367060, 0.216105,
		27.441612, 27.132587, 48.129192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756565, 27.643581, 47.922909>,  <26.808290, 26.875645, 47.977921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756565, 27.643581, 47.922909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.149063, 27.566687, 47.928642>,  <27.384562, 27.520550, 47.932083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.149063, 27.566687, 47.928642>,  <26.756565, 27.643581, 47.922909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149063, 27.566687, 47.928642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143404, 0.678220, -0.720731,
		0.128828, 0.709269, 0.693067,
		0.981243, -0.192239, 0.014338,
		27.443436, 27.509014, 47.932945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145781, 28.306431, 48.018078>,  <26.756565, 27.643581, 47.922909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145781, 28.306431, 48.018078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.399841, 28.045059, 47.853340>,  <27.552277, 27.888237, 47.754498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.399841, 28.045059, 47.853340>,  <27.145781, 28.306431, 48.018078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399841, 28.045059, 47.853340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175081, 0.641129, -0.747195,
		0.752283, 0.402476, 0.521616,
		0.635151, -0.653427, -0.411845,
		27.590387, 27.849031, 47.729786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634438, 28.747631, 47.765823>,  <27.145781, 28.306431, 48.018078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634438, 28.747631, 47.765823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.706707, 28.400120, 47.581398>,  <27.750069, 28.191612, 47.470741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.706707, 28.400120, 47.581398>,  <27.634438, 28.747631, 47.765823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706707, 28.400120, 47.581398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167347, 0.489099, -0.856024,
		0.969202, 0.077501, 0.233754,
		0.180672, -0.868778, -0.461066,
		27.760908, 28.139486, 47.443077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256289, 28.861757, 47.393559>,  <27.634438, 28.747631, 47.765823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256289, 28.861757, 47.393559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.067551, 28.552464, 47.224102>,  <27.954308, 28.366888, 47.122429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.067551, 28.552464, 47.224102>,  <28.256289, 28.861757, 47.393559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067551, 28.552464, 47.224102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056043, 0.453217, -0.889637,
		0.879900, -0.443511, -0.170513,
		-0.471843, -0.773235, -0.423641,
		27.925999, 28.320494, 47.097012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142998, 28.931707, 47.519653>,  <28.256289, 28.861757, 47.393559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142998, 28.931707, 47.519653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.212362, 29.249943, 47.751850>,  <29.253981, 29.440884, 47.891167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.212362, 29.249943, 47.751850>,  <29.142998, 28.931707, 47.519653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212362, 29.249943, 47.751850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206940, -0.605696, 0.768315,
		0.962862, -0.013110, -0.269675,
		0.173414, 0.795588, 0.580489,
		29.264387, 29.488619, 47.925999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555466, 28.689589, 47.940533>,  <29.142998, 28.931707, 47.519653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555466, 28.689589, 47.940533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.471430, 29.029982, 48.133072>,  <29.421007, 29.234217, 48.248596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.471430, 29.029982, 48.133072>,  <29.555466, 28.689589, 47.940533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471430, 29.029982, 48.133072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082673, -0.475106, 0.876036,
		0.974180, 0.223842, 0.029463,
		-0.210092, 0.850981, 0.481345,
		29.408401, 29.285276, 48.277473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117228, 28.868206, 48.493389>,  <29.555466, 28.689589, 47.940533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117228, 28.868206, 48.493389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.777052, 29.046032, 48.605900>,  <29.572947, 29.152727, 48.673405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.777052, 29.046032, 48.605900>,  <30.117228, 28.868206, 48.493389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777052, 29.046032, 48.605900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193214, -0.233350, 0.953004,
		0.489307, 0.864818, 0.112554,
		-0.850439, 0.444564, 0.281274,
		29.521919, 29.179401, 48.690281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204456, 29.072844, 49.235390>,  <30.117228, 28.868206, 48.493389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204456, 29.072844, 49.235390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.807171, 29.098412, 49.196522>,  <29.568800, 29.113752, 49.173199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.807171, 29.098412, 49.196522>,  <30.204456, 29.072844, 49.235390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807171, 29.098412, 49.196522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113082, -0.335197, 0.935337,
		0.027216, 0.939977, 0.340151,
		-0.993213, 0.063921, -0.097172,
		29.509207, 29.117588, 49.167370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063547, 29.487637, 49.813828>,  <30.204456, 29.072844, 49.235390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063547, 29.487637, 49.813828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.723520, 29.297724, 49.722637>,  <29.519505, 29.183777, 49.667923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.723520, 29.297724, 49.722637>,  <30.063547, 29.487637, 49.813828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723520, 29.297724, 49.722637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106595, -0.268803, 0.957279,
		-0.515777, 0.838050, 0.177891,
		-0.850065, -0.474781, -0.227974,
		29.468500, 29.155289, 49.654243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545864, 29.576672, 50.433872>,  <30.063547, 29.487637, 49.813828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545864, 29.576672, 50.433872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.390276, 29.247604, 50.268021>,  <29.296923, 29.050163, 50.168510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.390276, 29.247604, 50.268021>,  <29.545864, 29.576672, 50.433872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390276, 29.247604, 50.268021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122772, -0.399770, 0.908356,
		-0.913032, 0.404230, 0.054499,
		-0.388972, -0.822668, -0.414631,
		29.273584, 29.000805, 50.143631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926598, 29.461607, 50.825092>,  <29.545864, 29.576672, 50.433872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926598, 29.461607, 50.825092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.020769, 29.118088, 50.643085>,  <29.077272, 28.911976, 50.533882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.020769, 29.118088, 50.643085>,  <28.926598, 29.461607, 50.825092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020769, 29.118088, 50.643085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215025, -0.502597, 0.837353,
		-0.947807, -0.099298, -0.302989,
		0.235429, -0.858799, -0.455014,
		29.091398, 28.860449, 50.506580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236212, 29.146019, 50.800625>,  <28.926598, 29.461607, 50.825092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236212, 29.146019, 50.800625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.552998, 28.901880, 50.794075>,  <28.743069, 28.755396, 50.790146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.552998, 28.901880, 50.794075>,  <28.236212, 29.146019, 50.800625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552998, 28.901880, 50.794075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231748, -0.325304, 0.916772,
		-0.564877, -0.722255, -0.399076,
		0.791964, -0.610348, -0.016375,
		28.790586, 28.718777, 50.789162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960880, 28.493364, 51.015919>,  <28.236212, 29.146019, 50.800625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960880, 28.493364, 51.015919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.354794, 28.533432, 51.072720>,  <28.591143, 28.557472, 51.106800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.354794, 28.533432, 51.072720>,  <27.960880, 28.493364, 51.015919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354794, 28.533432, 51.072720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107775, -0.288948, 0.951259,
		0.136316, -0.952090, -0.273756,
		0.984785, 0.100167, 0.142000,
		28.650229, 28.563482, 51.115318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.435329, 33.658066, 36.279530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721924, 33.424923, 36.432854>,  <32.893879, 33.285038, 36.524849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721924, 33.424923, 36.432854>,  <32.435329, 33.658066, 36.279530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721924, 33.424923, 36.432854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536212, -0.108659, 0.837060,
		-0.446237, -0.805276, -0.390388,
		0.716483, -0.582858, 0.383311,
		32.936871, 33.250065, 36.547848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219704, 32.943424, 36.527485>,  <32.435329, 33.658066, 36.279530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219704, 32.943424, 36.527485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517086, 33.086281, 36.753658>,  <32.695515, 33.171993, 36.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517086, 33.086281, 36.753658>,  <32.219704, 32.943424, 36.527485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517086, 33.086281, 36.753658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611631, 0.021109, 0.790862,
		0.270514, -0.933812, 0.234132,
		0.743458, 0.357141, 0.565438,
		32.740124, 33.193424, 36.923290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123829, 32.559952, 37.136955>,  <32.219704, 32.943424, 36.527485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123829, 32.559952, 37.136955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365143, 32.858952, 37.248169>,  <32.509930, 33.038349, 37.314896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365143, 32.858952, 37.248169>,  <32.123829, 32.559952, 37.136955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365143, 32.858952, 37.248169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478148, 0.059987, 0.876228,
		0.638299, -0.661552, 0.393603,
		0.603282, 0.747496, 0.278030,
		32.546127, 33.083199, 37.331577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285332, 32.350552, 37.800083>,  <32.123829, 32.559952, 37.136955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285332, 32.350552, 37.800083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361095, 32.739735, 37.747189>,  <32.406555, 32.973244, 37.715454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361095, 32.739735, 37.747189>,  <32.285332, 32.350552, 37.800083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361095, 32.739735, 37.747189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438987, 0.204374, 0.874941,
		0.878302, -0.107674, 0.465825,
		0.189411, 0.972953, -0.132235,
		32.417919, 33.031620, 37.707520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528889, 32.583496, 38.410950>,  <32.285332, 32.350552, 37.800083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528889, 32.583496, 38.410950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348621, 32.886677, 38.222305>,  <32.240459, 33.068584, 38.109119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348621, 32.886677, 38.222305>,  <32.528889, 32.583496, 38.410950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348621, 32.886677, 38.222305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552516, 0.178119, 0.814248,
		0.701160, 0.627526, 0.338506,
		-0.450667, 0.757948, -0.471608,
		32.213421, 33.114059, 38.080822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481171, 33.106506, 38.942467>,  <32.528889, 32.583496, 38.410950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481171, 33.106506, 38.942467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210510, 33.223923, 38.672363>,  <32.048115, 33.294373, 38.510303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210510, 33.223923, 38.672363>,  <32.481171, 33.106506, 38.942467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210510, 33.223923, 38.672363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579457, 0.353519, 0.734339,
		0.454277, 0.888175, -0.069114,
		-0.676655, 0.293545, -0.675255,
		32.007515, 33.311985, 38.469788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371525, 33.878353, 38.985744>,  <32.481171, 33.106506, 38.942467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371525, 33.878353, 38.985744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051769, 33.715488, 38.809021>,  <31.859915, 33.617771, 38.702988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051769, 33.715488, 38.809021>,  <32.371525, 33.878353, 38.985744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051769, 33.715488, 38.809021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579474, 0.328266, 0.745957,
		-0.158692, 0.852328, -0.498351,
		-0.799392, -0.407159, -0.441808,
		31.811953, 33.593342, 38.676479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813057, 34.315868, 39.190517>,  <32.371525, 33.878353, 38.985744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813057, 34.315868, 39.190517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610420, 33.999668, 39.052837>,  <31.488838, 33.809948, 38.970230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610420, 33.999668, 39.052837>,  <31.813057, 34.315868, 39.190517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610420, 33.999668, 39.052837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643028, 0.080465, 0.761604,
		-0.574353, 0.607152, -0.549077,
		-0.506592, -0.790501, -0.344200,
		31.458443, 33.762516, 38.949577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099154, 34.360626, 39.357014>,  <31.813057, 34.315868, 39.190517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099154, 34.360626, 39.357014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132227, 33.964218, 39.314976>,  <31.152071, 33.726372, 39.289753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132227, 33.964218, 39.314976>,  <31.099154, 34.360626, 39.357014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132227, 33.964218, 39.314976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563398, -0.133467, 0.815334,
		-0.822038, -0.008207, -0.569374,
		0.082685, -0.991020, -0.105091,
		31.157032, 33.666912, 39.283447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355944, 34.099682, 39.424911>,  <31.099154, 34.360626, 39.357014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355944, 34.099682, 39.424911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607903, 33.797440, 39.496788>,  <30.759077, 33.616093, 39.539913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607903, 33.797440, 39.496788>,  <30.355944, 34.099682, 39.424911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607903, 33.797440, 39.496788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455083, -0.171583, 0.873761,
		-0.629389, -0.632152, -0.451944,
		0.629896, -0.755607, 0.179690,
		30.796871, 33.570759, 39.550694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971172, 33.627934, 39.649193>,  <30.355944, 34.099682, 39.424911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971172, 33.627934, 39.649193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308380, 33.447624, 39.766582>,  <30.510704, 33.339439, 39.837017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308380, 33.447624, 39.766582>,  <29.971172, 33.627934, 39.649193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308380, 33.447624, 39.766582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438293, -0.259400, 0.860588,
		-0.311804, -0.854116, -0.416249,
		0.843017, -0.450774, 0.293471,
		30.561285, 33.312393, 39.854626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832396, 32.923336, 39.758766>,  <29.971172, 33.627934, 39.649193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832396, 32.923336, 39.758766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155319, 33.032753, 39.967926>,  <30.349073, 33.098404, 40.093422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155319, 33.032753, 39.967926>,  <29.832396, 32.923336, 39.758766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155319, 33.032753, 39.967926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406168, -0.385250, 0.828619,
		0.428113, -0.881337, -0.199910,
		0.807308, 0.273546, 0.522901,
		30.397512, 33.114819, 40.124798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435535, 32.335766, 39.312187>,  <29.832396, 32.923336, 39.758766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435535, 32.335766, 39.312187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035711, 32.347450, 39.309998>,  <28.795816, 32.354462, 39.308685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035711, 32.347450, 39.309998>,  <29.435535, 32.335766, 39.312187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035711, 32.347450, 39.309998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012409, 0.242832, -0.969989,
		-0.027005, -0.969629, -0.243087,
		-0.999559, 0.029211, -0.005475,
		28.735844, 32.356213, 39.308353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182520, 31.912485, 38.765156>,  <29.435535, 32.335766, 39.312187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182520, 31.912485, 38.765156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896547, 32.187065, 38.818310>,  <28.724964, 32.351814, 38.850201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896547, 32.187065, 38.818310>,  <29.182520, 31.912485, 38.765156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896547, 32.187065, 38.818310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040078, 0.229973, -0.972371,
		-0.698045, -0.689853, -0.191927,
		-0.714931, 0.686452, 0.132883,
		28.682068, 32.393002, 38.858173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652739, 31.809456, 38.313671>,  <29.182520, 31.912485, 38.765156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652739, 31.809456, 38.313671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580328, 32.188644, 38.418419>,  <28.536882, 32.416157, 38.481266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580328, 32.188644, 38.418419>,  <28.652739, 31.809456, 38.313671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580328, 32.188644, 38.418419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225433, 0.299176, -0.927186,
		-0.957293, -0.108812, -0.267863,
		-0.181027, 0.947973, 0.261869,
		28.526020, 32.473038, 38.496979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274368, 32.079922, 37.786266>,  <28.652739, 31.809456, 38.313671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274368, 32.079922, 37.786266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394581, 32.415260, 37.968193>,  <28.466709, 32.616463, 38.077351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394581, 32.415260, 37.968193>,  <28.274368, 32.079922, 37.786266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394581, 32.415260, 37.968193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173793, 0.420747, -0.890375,
		-0.937804, 0.346632, -0.019249,
		0.300533, 0.838342, 0.454821,
		28.484741, 32.666763, 38.104641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948217, 32.536381, 37.350235>,  <28.274368, 32.079922, 37.786266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948217, 32.536381, 37.350235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250063, 32.722618, 37.535183>,  <28.431170, 32.834358, 37.646152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250063, 32.722618, 37.535183>,  <27.948217, 32.536381, 37.350235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250063, 32.722618, 37.535183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317663, 0.357356, -0.878286,
		-0.574153, 0.809643, 0.121764,
		0.754612, 0.465590, 0.462371,
		28.476446, 32.862297, 37.673893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881987, 33.154163, 37.057087>,  <27.948217, 32.536381, 37.350235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881987, 33.154163, 37.057087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248774, 33.135696, 37.215599>,  <28.468845, 33.124619, 37.310707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248774, 33.135696, 37.215599>,  <27.881987, 33.154163, 37.057087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248774, 33.135696, 37.215599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379030, 0.410832, -0.829189,
		-0.124527, 0.910542, 0.394217,
		0.916968, -0.046163, 0.396282,
		28.523865, 33.121849, 37.334484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156261, 33.879566, 37.071037>,  <27.881987, 33.154163, 37.057087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156261, 33.879566, 37.071037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452435, 33.611229, 37.087688>,  <28.630138, 33.450226, 37.097679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452435, 33.611229, 37.087688>,  <28.156261, 33.879566, 37.071037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452435, 33.611229, 37.087688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362882, 0.346860, -0.864873,
		0.565755, 0.655484, 0.500262,
		0.740431, -0.670843, 0.041626,
		28.674564, 33.409977, 37.100178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697430, 34.172302, 36.878452>,  <28.156261, 33.879566, 37.071037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697430, 34.172302, 36.878452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794821, 33.796104, 36.783630>,  <28.853254, 33.570385, 36.726738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794821, 33.796104, 36.783630>,  <28.697430, 34.172302, 36.878452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794821, 33.796104, 36.783630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235922, 0.294496, -0.926074,
		0.940776, 0.169551, 0.293586,
		0.243477, -0.940492, -0.237054,
		28.867865, 33.513958, 36.712513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292633, 34.240108, 36.541229>,  <28.697430, 34.172302, 36.878452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292633, 34.240108, 36.541229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200106, 33.866913, 36.430935>,  <29.144590, 33.642998, 36.364758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200106, 33.866913, 36.430935>,  <29.292633, 34.240108, 36.541229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200106, 33.866913, 36.430935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308766, 0.198365, -0.930223,
		0.922581, -0.300314, 0.242189,
		-0.231317, -0.932986, -0.275734,
		29.130711, 33.587017, 36.348213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858435, 34.020065, 35.991085>,  <29.292633, 34.240108, 36.541229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858435, 34.020065, 35.991085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541464, 33.784382, 35.927975>,  <29.351280, 33.642971, 35.890110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541464, 33.784382, 35.927975>,  <29.858435, 34.020065, 35.991085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541464, 33.784382, 35.927975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114526, 0.110341, -0.987273,
		0.599116, -0.800413, -0.019958,
		-0.792429, -0.589206, -0.157776,
		29.303736, 33.607620, 35.880642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060711, 33.673370, 35.319580>,  <29.858435, 34.020065, 35.991085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060711, 33.673370, 35.319580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681318, 33.558537, 35.373196>,  <29.453682, 33.489635, 35.405365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681318, 33.558537, 35.373196>,  <30.060711, 33.673370, 35.319580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681318, 33.558537, 35.373196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147853, 0.026898, -0.988644,
		0.280222, -0.957527, -0.067959,
		-0.948481, -0.287088, 0.134036,
		29.396774, 33.472412, 35.413406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015894, 33.047760, 34.993549>,  <30.060711, 33.673370, 35.319580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015894, 33.047760, 34.993549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670654, 33.249771, 34.994160>,  <29.463511, 33.370979, 34.994526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670654, 33.249771, 34.994160>,  <30.015894, 33.047760, 34.993549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670654, 33.249771, 34.994160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041984, 0.074752, -0.996318,
		-0.503285, -0.859858, -0.085722,
		-0.863100, 0.505031, 0.001522,
		29.411724, 33.401279, 34.994617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773523, 32.869186, 34.428654>,  <30.015894, 33.047760, 34.993549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773523, 32.869186, 34.428654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592321, 33.214497, 34.517681>,  <29.483601, 33.421684, 34.571098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592321, 33.214497, 34.517681>,  <29.773523, 32.869186, 34.428654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592321, 33.214497, 34.517681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002665, 0.248343, -0.968668,
		-0.891503, -0.439406, -0.110200,
		-0.453006, 0.863277, 0.222569,
		29.456419, 33.473480, 34.584454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627363, 32.253269, 34.086506>,  <29.773523, 32.869186, 34.428654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627363, 32.253269, 34.086506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840965, 32.364258, 33.767044>,  <29.969126, 32.430851, 33.575367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840965, 32.364258, 33.767044>,  <29.627363, 32.253269, 34.086506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840965, 32.364258, 33.767044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836219, 0.033878, -0.547349,
		-0.124818, 0.960136, 0.250120,
		0.534003, 0.277474, -0.798655,
		30.001165, 32.447498, 33.527447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043722, 32.150379, 34.670540>,  <29.627363, 32.253269, 34.086506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043722, 32.150379, 34.670540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397274, 32.111176, 34.487610>,  <30.609406, 32.087654, 34.377850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397274, 32.111176, 34.487610>,  <30.043722, 32.150379, 34.670540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397274, 32.111176, 34.487610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256776, -0.715573, 0.649631,
		-0.390923, -0.691628, -0.607314,
		0.883881, -0.098012, -0.457328,
		30.662437, 32.081772, 34.350410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144455, 31.581821, 34.223972>,  <30.043722, 32.150379, 34.670540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144455, 31.581821, 34.223972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468899, 31.699720, 34.426052>,  <30.663565, 31.770460, 34.547298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468899, 31.699720, 34.426052>,  <30.144455, 31.581821, 34.223972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468899, 31.699720, 34.426052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001727, -0.864948, 0.501858,
		0.584893, -0.406189, -0.702076,
		0.811108, 0.294746, 0.505201,
		30.712231, 31.788145, 34.577614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804348, 31.100735, 34.720764>,  <30.144455, 31.581821, 34.223972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804348, 31.100735, 34.720764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177416, 31.199150, 34.826283>,  <30.401257, 31.258200, 34.889595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177416, 31.199150, 34.826283>,  <29.804348, 31.100735, 34.720764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177416, 31.199150, 34.826283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138518, -0.430958, 0.891677,
		0.333074, -0.868182, -0.367861,
		0.932671, 0.246039, 0.263800,
		30.457216, 31.272963, 34.905422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118359, 30.485832, 35.058773>,  <29.804348, 31.100735, 34.720764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118359, 30.485832, 35.058773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362770, 30.772882, 35.192436>,  <30.509417, 30.945112, 35.272633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362770, 30.772882, 35.192436>,  <30.118359, 30.485832, 35.058773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362770, 30.772882, 35.192436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066757, -0.373910, 0.925060,
		0.788790, -0.587544, -0.180562,
		0.611027, 0.717624, 0.334159,
		30.546078, 30.988171, 35.292683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610830, 30.199144, 35.570362>,  <30.118359, 30.485832, 35.058773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610830, 30.199144, 35.570362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562407, 30.581987, 35.675655>,  <30.533352, 30.811693, 35.738831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562407, 30.581987, 35.675655>,  <30.610830, 30.199144, 35.570362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562407, 30.581987, 35.675655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088843, -0.274564, 0.957456,
		0.988662, 0.092521, 0.118270,
		-0.121058, 0.957107, 0.263231,
		30.526089, 30.869120, 35.754623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018648, 30.234550, 36.178062>,  <30.610830, 30.199144, 35.570362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018648, 30.234550, 36.178062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788839, 30.561909, 36.183022>,  <30.650955, 30.758324, 36.185997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788839, 30.561909, 36.183022>,  <31.018648, 30.234550, 36.178062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788839, 30.561909, 36.183022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133205, -0.108437, 0.985139,
		0.807578, 0.564331, 0.171314,
		-0.574521, 0.818396, 0.012399,
		30.616484, 30.807428, 36.186741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381109, 30.638588, 36.635792>,  <31.018648, 30.234550, 36.178062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381109, 30.638588, 36.635792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996128, 30.742226, 36.603397>,  <30.765141, 30.804407, 36.583961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996128, 30.742226, 36.603397>,  <31.381109, 30.638588, 36.635792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996128, 30.742226, 36.603397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105186, -0.080940, 0.991153,
		0.250247, 0.962455, 0.105153,
		-0.962451, 0.259093, -0.080982,
		30.707392, 30.819954, 36.579102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277048, 31.018829, 37.242775>,  <31.381109, 30.638588, 36.635792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277048, 31.018829, 37.242775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917152, 30.914848, 37.102551>,  <30.701214, 30.852459, 37.018417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917152, 30.914848, 37.102551>,  <31.277048, 31.018829, 37.242775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917152, 30.914848, 37.102551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299734, -0.215770, 0.929302,
		-0.317216, 0.941205, 0.116220,
		-0.899741, -0.259954, -0.350557,
		30.647230, 30.836863, 36.997383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887259, 31.257456, 37.742344>,  <31.277048, 31.018829, 37.242775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887259, 31.257456, 37.742344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658470, 30.997335, 37.542362>,  <30.521196, 30.841263, 37.422375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658470, 30.997335, 37.542362>,  <30.887259, 31.257456, 37.742344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658470, 30.997335, 37.542362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313642, -0.389802, 0.865843,
		-0.757942, 0.652045, 0.018994,
		-0.571972, -0.650302, -0.499956,
		30.486879, 30.802244, 37.392376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235588, 31.236744, 38.161644>,  <30.887259, 31.257456, 37.742344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235588, 31.236744, 38.161644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278521, 30.902174, 37.946655>,  <30.304281, 30.701431, 37.817661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278521, 30.902174, 37.946655>,  <30.235588, 31.236744, 38.161644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278521, 30.902174, 37.946655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260154, -0.545383, 0.796792,
		-0.959583, 0.054303, -0.276137,
		0.107332, -0.836426, -0.537468,
		30.310720, 30.651247, 37.785416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527626, 30.786039, 38.290661>,  <30.235588, 31.236744, 38.161644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527626, 30.786039, 38.290661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822241, 30.568748, 38.129456>,  <29.999010, 30.438374, 38.032734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822241, 30.568748, 38.129456>,  <29.527626, 30.786039, 38.290661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822241, 30.568748, 38.129456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195751, -0.741513, 0.641748,
		-0.647451, -0.393782, -0.652490,
		0.736538, -0.543226, -0.403010,
		30.043201, 30.405781, 38.008553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281832, 30.139397, 38.199238>,  <29.527626, 30.786039, 38.290661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281832, 30.139397, 38.199238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676949, 30.077108, 38.197617>,  <29.914019, 30.039736, 38.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676949, 30.077108, 38.197617>,  <29.281832, 30.139397, 38.199238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676949, 30.077108, 38.197617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112483, -0.731040, 0.672999,
		-0.107760, -0.664328, -0.739632,
		0.987793, -0.155718, -0.004052,
		29.973286, 30.030394, 38.196400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335314, 29.410986, 38.426811>,  <29.281832, 30.139397, 38.199238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335314, 29.410986, 38.426811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719185, 29.521210, 38.449032>,  <29.949507, 29.587345, 38.462364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719185, 29.521210, 38.449032>,  <29.335314, 29.410986, 38.426811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719185, 29.521210, 38.449032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174234, -0.738183, 0.651711,
		0.220597, -0.615753, -0.756430,
		0.959677, 0.275562, 0.055556,
		30.007088, 29.603878, 38.465698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735189, 28.849045, 38.408669>,  <29.335314, 29.410986, 38.426811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735189, 28.849045, 38.408669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970205, 29.108196, 38.602596>,  <30.111216, 29.263687, 38.718952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970205, 29.108196, 38.602596>,  <29.735189, 28.849045, 38.408669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970205, 29.108196, 38.602596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071865, -0.638550, 0.766218,
		0.805997, -0.415343, -0.421734,
		0.587541, 0.647877, 0.484821,
		30.146467, 29.302559, 38.748043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286894, 28.513388, 38.705177>,  <29.735189, 28.849045, 38.408669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286894, 28.513388, 38.705177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318117, 28.836878, 38.938370>,  <30.336851, 29.030972, 39.078285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318117, 28.836878, 38.938370>,  <30.286894, 28.513388, 38.705177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318117, 28.836878, 38.938370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131382, -0.588010, 0.798112,
		0.988254, 0.014293, -0.152152,
		0.078060, 0.808727, 0.582981,
		30.341536, 29.079496, 39.113266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808960, 28.370077, 39.170559>,  <30.286894, 28.513388, 38.705177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808960, 28.370077, 39.170559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613131, 28.666407, 39.354515>,  <30.495634, 28.844204, 39.464890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613131, 28.666407, 39.354515>,  <30.808960, 28.370077, 39.170559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613131, 28.666407, 39.354515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147001, -0.449744, 0.880977,
		0.859482, 0.498906, 0.111280,
		-0.489572, 0.740826, 0.459887,
		30.466259, 28.888655, 39.492481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258053, 28.691748, 39.651714>,  <30.808960, 28.370077, 39.170559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258053, 28.691748, 39.651714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881908, 28.752274, 39.773582>,  <30.656221, 28.788589, 39.846703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881908, 28.752274, 39.773582>,  <31.258053, 28.691748, 39.651714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881908, 28.752274, 39.773582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182771, -0.530637, 0.827659,
		0.286908, 0.833983, 0.471334,
		-0.940361, 0.151316, 0.304672,
		30.599800, 28.797668, 39.864983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274025, 28.800829, 40.316952>,  <31.258053, 28.691748, 39.651714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274025, 28.800829, 40.316952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890421, 28.695150, 40.275970>,  <30.660257, 28.631742, 40.251381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890421, 28.695150, 40.275970>,  <31.274025, 28.800829, 40.316952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890421, 28.695150, 40.275970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048097, -0.508077, 0.859968,
		-0.279254, 0.819792, 0.499959,
		-0.959012, -0.264196, -0.102453,
		30.602716, 28.615892, 40.245235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958923, 28.845833, 40.984165>,  <31.274025, 28.800829, 40.316952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958923, 28.845833, 40.984165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719677, 28.601185, 40.777020>,  <30.576130, 28.454397, 40.652733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719677, 28.601185, 40.777020>,  <30.958923, 28.845833, 40.984165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719677, 28.601185, 40.777020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161276, -0.541109, 0.825343,
		-0.785014, 0.577170, 0.225006,
		-0.598116, -0.611618, -0.517862,
		30.540243, 28.417700, 40.621662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224245, 28.740383, 41.339966>,  <30.958923, 28.845833, 40.984165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224245, 28.740383, 41.339966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282061, 28.432201, 41.091606>,  <30.316750, 28.247293, 40.942593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282061, 28.432201, 41.091606>,  <30.224245, 28.740383, 41.339966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282061, 28.432201, 41.091606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256769, -0.635194, 0.728422,
		-0.955603, 0.054140, -0.289640,
		0.144541, -0.770453, -0.620895,
		30.325422, 28.201065, 40.905338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656681, 28.313747, 41.432316>,  <30.224245, 28.740383, 41.339966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656681, 28.313747, 41.432316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940834, 28.072809, 41.286690>,  <30.111326, 27.928247, 41.199314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940834, 28.072809, 41.286690>,  <29.656681, 28.313747, 41.432316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940834, 28.072809, 41.286690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153676, -0.637533, 0.754940,
		-0.686837, -0.480346, -0.545456,
		0.710379, -0.602344, -0.364064,
		30.153948, 27.892107, 41.177471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340321, 27.638033, 41.509377>,  <29.656681, 28.313747, 41.432316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340321, 27.638033, 41.509377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728634, 27.565247, 41.446808>,  <29.961622, 27.521574, 41.409267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728634, 27.565247, 41.446808>,  <29.340321, 27.638033, 41.509377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728634, 27.565247, 41.446808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028552, -0.734840, 0.677639,
		-0.238253, -0.653375, -0.718566,
		0.970783, -0.181966, -0.156422,
		30.019869, 27.510656, 41.399879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378965, 26.897249, 41.582619>,  <29.340321, 27.638033, 41.509377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378965, 26.897249, 41.582619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766628, 26.994814, 41.596725>,  <29.999226, 27.053352, 41.605190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766628, 26.994814, 41.596725>,  <29.378965, 26.897249, 41.582619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766628, 26.994814, 41.596725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142891, -0.672715, 0.725973,
		0.200798, -0.698542, -0.686818,
		0.969155, 0.243914, 0.035264,
		30.057375, 27.067987, 41.607304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807224, 26.251009, 41.696545>,  <29.378965, 26.897249, 41.582619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807224, 26.251009, 41.696545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071714, 26.537853, 41.784664>,  <30.230410, 26.709959, 41.837536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071714, 26.537853, 41.784664>,  <29.807224, 26.251009, 41.696545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071714, 26.537853, 41.784664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347743, -0.553194, 0.757002,
		0.664721, -0.423944, -0.615157,
		0.661227, 0.717111, 0.220296,
		30.270082, 26.752987, 41.850754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517345, 25.913549, 41.855526>,  <29.807224, 26.251009, 41.696545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517345, 25.913549, 41.855526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470097, 26.272865, 42.024815>,  <30.441748, 26.488455, 42.126389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470097, 26.272865, 42.024815>,  <30.517345, 25.913549, 41.855526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470097, 26.272865, 42.024815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195610, -0.396809, 0.896816,
		0.973542, 0.188722, -0.128842,
		-0.118124, 0.898291, 0.423226,
		30.434660, 26.542353, 42.151783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997051, 25.973141, 42.400253>,  <30.517345, 25.913549, 41.855526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997051, 25.973141, 42.400253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743729, 26.258480, 42.520290>,  <30.591734, 26.429684, 42.592312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743729, 26.258480, 42.520290>,  <30.997051, 25.973141, 42.400253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743729, 26.258480, 42.520290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050355, -0.348957, 0.935785,
		0.772259, 0.607752, 0.185077,
		-0.633309, 0.713349, 0.300089,
		30.553736, 26.472485, 42.610317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177448, 26.127218, 43.049065>,  <30.997051, 25.973141, 42.400253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177448, 26.127218, 43.049065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810919, 26.286243, 43.029907>,  <30.591002, 26.381659, 43.018414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810919, 26.286243, 43.029907>,  <31.177448, 26.127218, 43.049065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810919, 26.286243, 43.029907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168610, -0.274580, 0.946666,
		0.363207, 0.875529, 0.318637,
		-0.916325, 0.397561, -0.047893,
		30.536022, 26.405512, 43.015541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192896, 26.702557, 43.564827>,  <31.177448, 26.127218, 43.049065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192896, 26.702557, 43.564827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803242, 26.646591, 43.493858>,  <30.569448, 26.613012, 43.451275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803242, 26.646591, 43.493858>,  <31.192896, 26.702557, 43.564827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803242, 26.646591, 43.493858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138958, -0.248221, 0.958685,
		-0.178175, 0.958546, 0.222359,
		-0.974138, -0.139915, -0.177425,
		30.511000, 26.604616, 43.440632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551220, 27.186796, 43.897266>,  <31.192896, 26.702557, 43.564827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551220, 27.186796, 43.897266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928507, 27.117199, 44.010456>,  <32.154877, 27.075441, 44.078369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928507, 27.117199, 44.010456>,  <31.551220, 27.186796, 43.897266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928507, 27.117199, 44.010456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308518, 0.143082, -0.940396,
		0.123134, 0.974297, 0.188637,
		0.943215, -0.173993, 0.282970,
		32.211472, 27.065001, 44.095348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964220, 27.747366, 43.584885>,  <31.551220, 27.186796, 43.897266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964220, 27.747366, 43.584885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232037, 27.464071, 43.674427>,  <32.392727, 27.294094, 43.728153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232037, 27.464071, 43.674427>,  <31.964220, 27.747366, 43.584885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232037, 27.464071, 43.674427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444881, 0.141031, -0.884416,
		0.594807, 0.691743, 0.409507,
		0.669542, -0.708239, 0.223857,
		32.432899, 27.251600, 43.741585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546230, 28.049421, 43.431110>,  <31.964220, 27.747366, 43.584885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546230, 28.049421, 43.431110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658443, 27.665747, 43.445320>,  <32.725773, 27.435541, 43.453846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658443, 27.665747, 43.445320>,  <32.546230, 28.049421, 43.431110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658443, 27.665747, 43.445320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549533, 0.130156, -0.825272,
		0.786965, 0.251041, 0.563617,
		0.280536, -0.959186, 0.035527,
		32.742603, 27.377991, 43.455978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312874, 28.016909, 43.455765>,  <32.546230, 28.049421, 43.431110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312874, 28.016909, 43.455765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177265, 27.670305, 43.309216>,  <33.095901, 27.462343, 43.221287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177265, 27.670305, 43.309216>,  <33.312874, 28.016909, 43.455765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177265, 27.670305, 43.309216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589752, 0.107669, -0.800374,
		0.732979, -0.487409, 0.474525,
		-0.339018, -0.866510, -0.366369,
		33.075562, 27.410353, 43.199306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867073, 27.581108, 43.242283>,  <33.312874, 28.016909, 43.455765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867073, 27.581108, 43.242283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546505, 27.438763, 43.049999>,  <33.354164, 27.353355, 42.934628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546505, 27.438763, 43.049999>,  <33.867073, 27.581108, 43.242283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546505, 27.438763, 43.049999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497245, 0.050214, -0.866156,
		0.332373, -0.933187, 0.136710,
		-0.801421, -0.355865, -0.480713,
		33.306080, 27.332003, 42.905785>
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
