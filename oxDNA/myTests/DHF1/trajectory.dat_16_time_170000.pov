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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.863487, 3.556865, 4.272126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.082361, 3.327129, 4.515674>,  <3.213686, 3.189288, 4.661802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.082361, 3.327129, 4.515674>,  <2.863487, 3.556865, 4.272126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.082361, 3.327129, 4.515674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259317, -0.575316, -0.775736,
		0.795829, 0.582361, -0.165868,
		0.547185, -0.574340, 0.608869,
		3.246517, 3.154827, 4.698334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.649610, 3.313907, 4.031915>,  <2.863487, 3.556865, 4.272126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.649610, 3.313907, 4.031915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.491344, 3.029121, 4.263969>,  <3.396385, 2.858250, 4.403202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.491344, 3.029121, 4.263969>,  <3.649610, 3.313907, 4.031915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.491344, 3.029121, 4.263969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330202, -0.699725, -0.633523,
		0.856981, -0.059100, 0.511948,
		-0.395664, -0.711963, 0.580136,
		3.372645, 2.815532, 4.438010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.238516, 2.871981, 4.410378>,  <3.649610, 3.313907, 4.031915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.238516, 2.871981, 4.410378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.917255, 2.657455, 4.306598>,  <3.724499, 2.528740, 4.244330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.917255, 2.657455, 4.306598>,  <4.238516, 2.871981, 4.410378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.917255, 2.657455, 4.306598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540372, -0.472374, -0.696319,
		0.250889, -0.699449, 0.669198,
		-0.803152, -0.536315, -0.259449,
		3.676310, 2.496561, 4.228764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.331932, 2.075633, 4.549112>,  <4.238516, 2.871981, 4.410378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.331932, 2.075633, 4.549112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.118238, 2.238052, 4.252540>,  <3.990023, 2.335504, 4.074597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.118238, 2.238052, 4.252540>,  <4.331932, 2.075633, 4.549112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.118238, 2.238052, 4.252540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685735, -0.304731, -0.660989,
		-0.494331, -0.861547, -0.115645,
		-0.534233, 0.406049, -0.741431,
		3.957969, 2.359867, 4.030111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.283147, 1.611645, 5.181426>,  <4.331932, 2.075633, 4.549112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.283147, 1.611645, 5.181426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.998247, 1.340210, 5.109626>,  <3.827307, 1.177349, 5.066547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.998247, 1.340210, 5.109626>,  <4.283147, 1.611645, 5.181426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.998247, 1.340210, 5.109626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441137, -0.631652, 0.637506,
		-0.545984, 0.374880, 0.749244,
		-0.712250, -0.678587, -0.179498,
		3.784572, 1.136634, 5.055777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.746731, 1.504224, 5.770653>,  <4.283147, 1.611645, 5.181426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.746731, 1.504224, 5.770653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.875832, 1.216721, 5.524330>,  <3.953292, 1.044219, 5.376536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.875832, 1.216721, 5.524330>,  <3.746731, 1.504224, 5.770653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.875832, 1.216721, 5.524330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485716, -0.432643, 0.759540,
		-0.812350, -0.544249, 0.209477,
		0.322750, -0.718758, -0.615808,
		3.972657, 1.001093, 5.339588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.727522, 0.933368, 6.209009>,  <3.746731, 1.504224, 5.770653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.727522, 0.933368, 6.209009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.999378, 0.879776, 5.920526>,  <4.162492, 0.847621, 5.747437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.999378, 0.879776, 5.920526>,  <3.727522, 0.933368, 6.209009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999378, 0.879776, 5.920526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609871, -0.443122, 0.657039,
		-0.407611, -0.886393, -0.219455,
		0.679641, -0.133977, -0.721206,
		4.203270, 0.839582, 5.704164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.921478, 0.272821, 6.186595>,  <3.727522, 0.933368, 6.209009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.921478, 0.272821, 6.186595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.223045, 0.481068, 6.026313>,  <4.403986, 0.606015, 5.930144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.223045, 0.481068, 6.026313>,  <3.921478, 0.272821, 6.186595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.223045, 0.481068, 6.026313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636874, -0.429481, 0.640264,
		0.161236, -0.737906, -0.655361,
		0.753919, 0.520616, -0.400705,
		4.449221, 0.637252, 5.906102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.808269, 2.823659, 3.283198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.413219, 2.817801, 3.220734>,  <1.176190, 2.814286, 3.183255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.413219, 2.817801, 3.220734>,  <1.808269, 2.823659, 3.283198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.413219, 2.817801, 3.220734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154866, 0.066647, -0.985685,
		0.024843, -0.997669, -0.063554,
		-0.987623, -0.014645, -0.156161,
		1.116933, 2.813407, 3.173885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.599574, 2.262245, 2.910781>,  <1.808269, 2.823659, 3.283198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.599574, 2.262245, 2.910781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.346958, 2.562302, 2.832351>,  <1.195388, 2.742335, 2.785292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.346958, 2.562302, 2.832351>,  <1.599574, 2.262245, 2.910781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.346958, 2.562302, 2.832351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150005, -0.129899, -0.980114,
		-0.760694, -0.648394, -0.030488,
		-0.631540, 0.750141, -0.196076,
		1.157496, 2.787344, 2.773528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.436307, 2.127558, 2.273458>,  <1.599574, 2.262245, 2.910781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.436307, 2.127558, 2.273458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.267616, 2.487442, 2.318484>,  <1.166402, 2.703372, 2.345500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.267616, 2.487442, 2.318484>,  <1.436307, 2.127558, 2.273458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.267616, 2.487442, 2.318484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131687, 0.183605, -0.974139,
		-0.897110, -0.395996, -0.195911,
		-0.421726, 0.899709, 0.112566,
		1.141098, 2.757355, 2.352254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.775531, 2.239183, 1.944527>,  <1.436307, 2.127558, 2.273458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.775531, 2.239183, 1.944527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.975813, 2.584633, 1.968012>,  <1.095982, 2.791903, 1.982103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.975813, 2.584633, 1.968012>,  <0.775531, 2.239183, 1.944527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.975813, 2.584633, 1.968012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068652, 0.027993, -0.997248,
		-0.862891, 0.503358, -0.045273,
		0.500706, 0.863624, 0.058712,
		1.126025, 2.843720, 1.985625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.496416, 2.744120, 1.432348>,  <0.775531, 2.239183, 1.944527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.496416, 2.744120, 1.432348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.879441, 2.841265, 1.494431>,  <1.109257, 2.899551, 1.531682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.879441, 2.841265, 1.494431>,  <0.496416, 2.744120, 1.432348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.879441, 2.841265, 1.494431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131255, 0.111982, -0.985004,
		-0.256600, 0.963576, 0.075353,
		0.957564, 0.242862, 0.155209,
		1.166710, 2.914123, 1.540994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.615974, 3.270964, 0.965415>,  <0.496416, 2.744120, 1.432348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.615974, 3.270964, 0.965415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.976442, 3.115742, 1.042672>,  <1.192723, 3.022608, 1.089026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.976442, 3.115742, 1.042672>,  <0.615974, 3.270964, 0.965415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.976442, 3.115742, 1.042672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322905, 0.303732, -0.896370,
		0.289179, 0.870149, 0.399020,
		0.901170, -0.388057, 0.193143,
		1.246793, 2.999325, 1.100615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.185445, 3.825527, 1.000017>,  <0.615974, 3.270964, 0.965415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.185445, 3.825527, 1.000017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.301527, 3.459896, 0.886708>,  <1.371176, 3.240517, 0.818722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.301527, 3.459896, 0.886708>,  <1.185445, 3.825527, 1.000017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.301527, 3.459896, 0.886708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286970, 0.365513, -0.885465,
		0.912923, 0.175675, 0.368387,
		0.290205, -0.914078, -0.283272,
		1.388588, 3.185673, 0.801726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.551220, 3.860020, 0.389514>,  <1.185445, 3.825527, 1.000017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.551220, 3.860020, 0.389514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.540013, 3.461338, 0.419960>,  <1.533289, 3.222129, 0.438228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.540013, 3.461338, 0.419960>,  <1.551220, 3.860020, 0.389514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.540013, 3.461338, 0.419960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415695, -0.080866, -0.905902,
		0.909073, 0.006261, 0.416591,
		-0.028016, -0.996705, 0.076116,
		1.531608, 3.162326, 0.442795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
