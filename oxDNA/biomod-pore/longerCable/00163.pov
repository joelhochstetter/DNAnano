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
	<24.472778, 35.253601, 34.884933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388798, 34.862827, 34.869377>,  <24.338409, 34.628361, 34.860043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388798, 34.862827, 34.869377>,  <24.472778, 35.253601, 34.884933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388798, 34.862827, 34.869377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454045, -0.132647, 0.881049,
		-0.865889, 0.167319, 0.471423,
		-0.209950, -0.976938, -0.038887,
		24.325813, 34.569744, 34.857712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.056513, 35.005848, 35.446777>,  <24.472778, 35.253601, 34.884933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.056513, 35.005848, 35.446777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327435, 34.757275, 35.289257>,  <24.489988, 34.608131, 35.194744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327435, 34.757275, 35.289257>,  <24.056513, 35.005848, 35.446777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327435, 34.757275, 35.289257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404937, -0.132009, 0.904765,
		-0.614235, -0.772267, 0.162230,
		0.677304, -0.621432, -0.393804,
		24.530626, 34.570847, 35.171116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.168081, 34.435448, 35.907196>,  <24.056513, 35.005848, 35.446777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.168081, 34.435448, 35.907196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498165, 34.403027, 35.683601>,  <24.696215, 34.383572, 35.549446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498165, 34.403027, 35.683601>,  <24.168081, 34.435448, 35.907196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498165, 34.403027, 35.683601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514729, -0.299563, 0.803316,
		-0.232561, -0.950628, -0.205482,
		0.825209, -0.081052, -0.558983,
		24.745728, 34.378708, 35.515907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430325, 33.844780, 35.953278>,  <24.168081, 34.435448, 35.907196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430325, 33.844780, 35.953278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765724, 34.032848, 35.843105>,  <24.966963, 34.145691, 35.777000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765724, 34.032848, 35.843105>,  <24.430325, 33.844780, 35.953278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765724, 34.032848, 35.843105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496058, -0.449467, 0.742904,
		0.225495, -0.759553, -0.610108,
		0.838498, 0.470170, -0.275430,
		25.017273, 34.173901, 35.760475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888126, 33.464714, 35.689575>,  <24.430325, 33.844780, 35.953278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888126, 33.464714, 35.689575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103493, 33.759819, 35.852455>,  <25.232714, 33.936882, 35.950184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103493, 33.759819, 35.852455>,  <24.888126, 33.464714, 35.689575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103493, 33.759819, 35.852455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224970, -0.591524, 0.774266,
		0.812094, -0.325271, -0.484461,
		0.538417, 0.737766, 0.407196,
		25.265018, 33.981148, 35.974613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687702, 33.308781, 35.738182>,  <24.888126, 33.464714, 35.689575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687702, 33.308781, 35.738182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565516, 33.564430, 36.020519>,  <25.492203, 33.717819, 36.189922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565516, 33.564430, 36.020519>,  <25.687702, 33.308781, 35.738182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565516, 33.564430, 36.020519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260119, -0.657066, 0.707533,
		0.915985, 0.399730, 0.034464,
		-0.305467, 0.639125, 0.705839,
		25.473875, 33.756168, 36.232269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196583, 33.263508, 36.211365>,  <25.687702, 33.308781, 35.738182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196583, 33.263508, 36.211365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862625, 33.405853, 36.379322>,  <25.662251, 33.491261, 36.480095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862625, 33.405853, 36.379322>,  <26.196583, 33.263508, 36.211365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862625, 33.405853, 36.379322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191643, -0.527190, 0.827855,
		0.515970, 0.771641, 0.371948,
		-0.834894, 0.355867, 0.419894,
		25.612158, 33.512615, 36.505291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394245, 33.259895, 36.873028>,  <26.196583, 33.263508, 36.211365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394245, 33.259895, 36.873028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694313, 33.271481, 36.608784>,  <26.874353, 33.278431, 36.450237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694313, 33.271481, 36.608784>,  <26.394245, 33.259895, 36.873028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694313, 33.271481, 36.608784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126194, -0.986950, 0.100029,
		-0.649092, -0.158404, -0.744035,
		0.750170, 0.028964, -0.660610,
		26.919365, 33.280170, 36.410599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330635, 32.573097, 36.418606>,  <26.394245, 33.259895, 36.873028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330635, 32.573097, 36.418606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705755, 32.711685, 36.427490>,  <26.930826, 32.794838, 36.432819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705755, 32.711685, 36.427490>,  <26.330635, 32.573097, 36.418606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705755, 32.711685, 36.427490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328353, -0.905905, 0.267435,
		0.112776, -0.243508, -0.963320,
		0.937798, 0.346470, 0.022208,
		26.987095, 32.815624, 36.434155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836729, 32.093731, 36.055172>,  <26.330635, 32.573097, 36.418606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836729, 32.093731, 36.055172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031450, 32.303135, 36.334877>,  <27.148283, 32.428776, 36.502701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031450, 32.303135, 36.334877>,  <26.836729, 32.093731, 36.055172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031450, 32.303135, 36.334877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400259, -0.845214, 0.354127,
		0.776413, 0.107496, -0.620989,
		0.486801, 0.523505, 0.699262,
		27.177490, 32.460186, 36.544655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493853, 31.877085, 36.039791>,  <26.836729, 32.093731, 36.055172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493853, 31.877085, 36.039791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508730, 32.048412, 36.400936>,  <27.517656, 32.151207, 36.617622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508730, 32.048412, 36.400936>,  <27.493853, 31.877085, 36.039791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508730, 32.048412, 36.400936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311578, -0.863419, 0.396769,
		0.949492, 0.266555, -0.165568,
		0.037194, 0.428317, 0.902863,
		27.519888, 32.176907, 36.671795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551533, 31.273012, 36.410946>,  <27.493853, 31.877085, 36.039791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551533, 31.273012, 36.410946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586306, 31.511326, 36.730316>,  <27.607170, 31.654314, 36.921940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586306, 31.511326, 36.730316>,  <27.551533, 31.273012, 36.410946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586306, 31.511326, 36.730316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140433, -0.786129, 0.601897,
		0.986267, -0.164449, 0.015328,
		0.086931, 0.595783, 0.798426,
		27.612385, 31.690062, 36.969845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334177, 30.670547, 36.616539>,  <27.551533, 31.273012, 36.410946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334177, 30.670547, 36.616539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146646, 30.437374, 36.881985>,  <27.034128, 30.297470, 37.041252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146646, 30.437374, 36.881985>,  <27.334177, 30.670547, 36.616539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146646, 30.437374, 36.881985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830190, -0.547372, 0.105683,
		0.301639, 0.600476, 0.740569,
		-0.468827, -0.582934, 0.663618,
		27.005999, 30.262493, 37.081070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739891, 31.063757, 37.119793>,  <27.334177, 30.670547, 36.616539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739891, 31.063757, 37.119793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034010, 31.272667, 37.292564>,  <28.210482, 31.398012, 37.396229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034010, 31.272667, 37.292564>,  <27.739891, 31.063757, 37.119793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034010, 31.272667, 37.292564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353454, 0.839284, -0.413126,
		-0.578278, 0.151104, 0.801725,
		0.735299, 0.522274, 0.431931,
		28.254601, 31.429350, 37.422142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409100, 31.422720, 37.758205>,  <27.739891, 31.063757, 37.119793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409100, 31.422720, 37.758205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717798, 31.566315, 37.548241>,  <27.903017, 31.652472, 37.422260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717798, 31.566315, 37.548241>,  <27.409100, 31.422720, 37.758205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717798, 31.566315, 37.548241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552467, 0.787265, -0.273849,
		0.314938, 0.501340, 0.805898,
		0.771748, 0.358987, -0.524914,
		27.949322, 31.674011, 37.390766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645948, 32.112114, 38.047905>,  <27.409100, 31.422720, 37.758205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645948, 32.112114, 38.047905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703911, 32.071335, 37.654232>,  <27.738689, 32.046867, 37.418030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703911, 32.071335, 37.654232>,  <27.645948, 32.112114, 38.047905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703911, 32.071335, 37.654232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345886, 0.926702, -0.146924,
		0.927019, 0.361704, 0.099023,
		0.144908, -0.101950, -0.984179,
		27.747383, 32.040749, 37.358978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450098, 32.755447, 37.796318>,  <27.645948, 32.112114, 38.047905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450098, 32.755447, 37.796318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491198, 32.584301, 37.437126>,  <27.515858, 32.481613, 37.221611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491198, 32.584301, 37.437126>,  <27.450098, 32.755447, 37.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491198, 32.584301, 37.437126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306981, 0.845054, -0.437775,
		0.946153, 0.320643, -0.044521,
		0.102747, -0.427870, -0.897981,
		27.522022, 32.455940, 37.167732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981112, 33.153236, 37.388588>,  <27.450098, 32.755447, 37.796318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981112, 33.153236, 37.388588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750088, 32.956238, 37.128166>,  <27.611473, 32.838039, 36.971912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750088, 32.956238, 37.128166>,  <27.981112, 33.153236, 37.388588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750088, 32.956238, 37.128166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004535, 0.795569, -0.605846,
		0.816341, -0.352861, -0.457249,
		-0.577553, -0.492503, -0.651056,
		27.576820, 32.808487, 36.932850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145296, 33.340504, 36.686493>,  <27.981112, 33.153236, 37.388588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145296, 33.340504, 36.686493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796680, 33.181496, 36.571674>,  <27.587511, 33.086090, 36.502781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796680, 33.181496, 36.571674>,  <28.145296, 33.340504, 36.686493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796680, 33.181496, 36.571674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116558, 0.736615, -0.666193,
		0.476268, -0.547156, -0.688324,
		-0.871541, -0.397516, -0.287051,
		27.535219, 33.062241, 36.485558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109552, 33.439682, 35.917786>,  <28.145296, 33.340504, 36.686493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109552, 33.439682, 35.917786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736195, 33.381985, 36.049221>,  <27.512180, 33.347366, 36.128082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736195, 33.381985, 36.049221>,  <28.109552, 33.439682, 35.917786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736195, 33.381985, 36.049221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344520, 0.616408, -0.708058,
		-0.100413, -0.774103, -0.625046,
		-0.933393, -0.144242, 0.328589,
		27.456177, 33.338711, 36.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693110, 33.716667, 35.530262>,  <28.109552, 33.439682, 35.917786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693110, 33.716667, 35.530262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745874, 33.937248, 35.200779>,  <28.777534, 34.069595, 35.003090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745874, 33.937248, 35.200779>,  <28.693110, 33.716667, 35.530262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745874, 33.937248, 35.200779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701160, -0.639300, -0.315705,
		-0.700695, -0.535908, -0.470988,
		0.131914, 0.551451, -0.823712,
		28.785448, 34.102684, 34.953667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510172, 33.219490, 34.933350>,  <28.693110, 33.716667, 35.530262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510172, 33.219490, 34.933350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767035, 33.513634, 34.846741>,  <28.921152, 33.690121, 34.794777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767035, 33.513634, 34.846741>,  <28.510172, 33.219490, 34.933350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767035, 33.513634, 34.846741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536363, -0.632810, -0.558449,
		-0.547676, 0.242479, -0.800784,
		0.642157, 0.735360, -0.216518,
		28.959681, 33.734241, 34.781784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527052, 33.396706, 34.134270>,  <28.510172, 33.219490, 34.933350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527052, 33.396706, 34.134270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853949, 33.409340, 34.364441>,  <29.050087, 33.416920, 34.502544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853949, 33.409340, 34.364441>,  <28.527052, 33.396706, 34.134270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853949, 33.409340, 34.364441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364373, -0.801907, -0.473473,
		0.446488, 0.596613, -0.666859,
		0.817240, 0.031585, 0.575432,
		29.099121, 33.418816, 34.537071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127401, 33.465641, 33.815605>,  <28.527052, 33.396706, 34.134270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127401, 33.465641, 33.815605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156641, 33.241352, 34.145512>,  <29.174185, 33.106777, 34.343456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156641, 33.241352, 34.145512>,  <29.127401, 33.465641, 33.815605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156641, 33.241352, 34.145512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022295, -0.825858, -0.563438,
		0.997075, 0.059575, -0.047868,
		0.073100, -0.560723, 0.824771,
		29.178572, 33.073135, 34.392944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685722, 32.970791, 33.935383>,  <29.127401, 33.465641, 33.815605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685722, 32.970791, 33.935383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780516, 32.615849, 33.777176>,  <29.837391, 32.402882, 33.682251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780516, 32.615849, 33.777176>,  <29.685722, 32.970791, 33.935383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780516, 32.615849, 33.777176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808551, -0.045553, 0.586660,
		-0.538595, -0.458825, 0.706679,
		0.236983, -0.887358, -0.395518,
		29.851610, 32.349640, 33.658520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680864, 32.479496, 34.387154>,  <29.685722, 32.970791, 33.935383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680864, 32.479496, 34.387154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950874, 32.335518, 34.129539>,  <30.112881, 32.249130, 33.974972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950874, 32.335518, 34.129539>,  <29.680864, 32.479496, 34.387154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950874, 32.335518, 34.129539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601723, -0.236534, 0.762876,
		-0.426933, -0.902490, 0.056924,
		0.675024, -0.359950, -0.644034,
		30.153381, 32.227531, 33.936329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911234, 31.730667, 34.499645>,  <29.680864, 32.479496, 34.387154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911234, 31.730667, 34.499645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209070, 31.932575, 34.324928>,  <30.387772, 32.053719, 34.220097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209070, 31.932575, 34.324928>,  <29.911234, 31.730667, 34.499645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209070, 31.932575, 34.324928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610613, -0.250680, 0.751206,
		0.269691, -0.826055, -0.494874,
		0.744593, 0.504770, -0.436794,
		30.432447, 32.084007, 34.193890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589231, 31.444122, 33.924183>,  <29.911234, 31.730667, 34.499645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589231, 31.444122, 33.924183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501780, 31.683567, 33.615932>,  <29.449308, 31.827234, 33.430981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501780, 31.683567, 33.615932>,  <29.589231, 31.444122, 33.924183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501780, 31.683567, 33.615932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811410, 0.550207, 0.197193,
		0.542046, -0.582182, -0.606012,
		-0.218630, 0.598612, -0.770626,
		29.436190, 31.863152, 33.384747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257303, 31.253561, 33.621964>,  <29.589231, 31.444122, 33.924183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257303, 31.253561, 33.621964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014452, 31.296898, 33.307091>,  <29.868742, 31.322899, 33.118168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014452, 31.296898, 33.307091>,  <30.257303, 31.253561, 33.621964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014452, 31.296898, 33.307091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417154, 0.799708, 0.431798,
		0.676299, 0.590533, -0.440329,
		-0.607126, 0.108340, -0.787185,
		29.832314, 31.329399, 33.070934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021128, 31.542498, 33.504955>,  <30.257303, 31.253561, 33.621964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021128, 31.542498, 33.504955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099421, 31.219845, 33.281876>,  <31.146397, 31.026253, 33.148026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099421, 31.219845, 33.281876>,  <31.021128, 31.542498, 33.504955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099421, 31.219845, 33.281876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888734, 0.386304, -0.246822,
		0.414538, -0.447339, 0.792493,
		0.195731, -0.806633, -0.557703,
		31.158140, 30.977856, 33.114563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693520, 31.292582, 33.621609>,  <31.021128, 31.542498, 33.504955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693520, 31.292582, 33.621609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600552, 31.148506, 33.260223>,  <31.544771, 31.062061, 33.043392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600552, 31.148506, 33.260223>,  <31.693520, 31.292582, 33.621609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600552, 31.148506, 33.260223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958302, 0.073973, -0.276017,
		0.166250, -0.929942, 0.327977,
		-0.232418, -0.360189, -0.903463,
		31.530827, 31.040449, 32.989185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923491, 31.680288, 32.999577>,  <31.693520, 31.292582, 33.621609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923491, 31.680288, 32.999577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278767, 31.557838, 33.136635>,  <32.491932, 31.484369, 33.218872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278767, 31.557838, 33.136635>,  <31.923491, 31.680288, 32.999577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278767, 31.557838, 33.136635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390621, 0.110398, -0.913908,
		0.241943, 0.945569, 0.217633,
		0.888189, -0.306125, 0.342649,
		32.545223, 31.466002, 33.239429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539284, 32.364704, 33.181396>,  <31.923491, 31.680288, 32.999577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539284, 32.364704, 33.181396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912081, 32.246208, 33.264954>,  <32.135757, 32.175110, 33.315090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912081, 32.246208, 33.264954>,  <31.539284, 32.364704, 33.181396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912081, 32.246208, 33.264954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360607, 0.699183, -0.617337,
		0.036821, 0.650682, 0.758457,
		0.931991, -0.296235, 0.208896,
		32.191677, 32.157337, 33.327621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009579, 32.732849, 32.735329>,  <31.539284, 32.364704, 33.181396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009579, 32.732849, 32.735329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309917, 32.538834, 32.914650>,  <32.490120, 32.422424, 33.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309917, 32.538834, 32.914650>,  <32.009579, 32.732849, 32.735329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309917, 32.538834, 32.914650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660477, 0.549514, -0.511668,
		0.001831, 0.680274, 0.732955,
		0.750844, -0.485037, 0.448299,
		32.535172, 32.393322, 33.049141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737967, 33.230534, 33.267033>,  <32.009579, 32.732849, 32.735329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737967, 33.230534, 33.267033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805643, 33.423092, 33.611038>,  <31.846249, 33.538628, 33.817444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805643, 33.423092, 33.611038>,  <31.737967, 33.230534, 33.267033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805643, 33.423092, 33.611038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336731, 0.791855, -0.509489,
		-0.926276, 0.375795, -0.028128,
		0.169190, 0.481399, 0.860017,
		31.856400, 33.567513, 33.869045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365532, 32.990402, 33.713310>,  <31.737967, 33.230534, 33.267033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365532, 32.990402, 33.713310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520191, 32.941608, 33.347660>,  <32.612988, 32.912331, 33.128269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520191, 32.941608, 33.347660>,  <32.365532, 32.990402, 33.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520191, 32.941608, 33.347660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914876, -0.074180, 0.396861,
		-0.116223, -0.989756, 0.082924,
		0.386644, -0.121989, -0.914125,
		32.636185, 32.905010, 33.073421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895035, 32.431293, 33.792377>,  <32.365532, 32.990402, 33.713310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895035, 32.431293, 33.792377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961388, 32.673729, 33.481213>,  <33.001198, 32.819191, 33.294514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961388, 32.673729, 33.481213>,  <32.895035, 32.431293, 33.792377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961388, 32.673729, 33.481213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985806, -0.081202, 0.146949,
		0.025896, -0.791244, -0.610952,
		0.165883, 0.606085, -0.777909,
		33.011154, 32.855553, 33.247841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403770, 32.147381, 33.530262>,  <32.895035, 32.431293, 33.792377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403770, 32.147381, 33.530262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392509, 32.511326, 33.364685>,  <33.385754, 32.729694, 33.265339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392509, 32.511326, 33.364685>,  <33.403770, 32.147381, 33.530262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392509, 32.511326, 33.364685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999359, 0.016459, -0.031780,
		-0.022103, -0.414575, -0.909747,
		-0.028149, 0.909866, -0.413946,
		33.384064, 32.784286, 33.240501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732841, 32.234497, 32.864742>,  <33.403770, 32.147381, 33.530262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732841, 32.234497, 32.864742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751091, 32.594803, 33.037502>,  <33.762039, 32.810986, 33.141159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751091, 32.594803, 33.037502>,  <33.732841, 32.234497, 32.864742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751091, 32.594803, 33.037502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997503, -0.017750, -0.068355,
		-0.053905, 0.433937, -0.899329,
		0.045625, 0.900768, 0.431897,
		33.764778, 32.865032, 33.167072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969818, 32.796959, 32.429291>,  <33.732841, 32.234497, 32.864742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969818, 32.796959, 32.429291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053093, 32.784527, 32.820328>,  <34.103058, 32.777069, 33.054951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053093, 32.784527, 32.820328>,  <33.969818, 32.796959, 32.429291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053093, 32.784527, 32.820328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975634, 0.077358, -0.205314,
		-0.069243, 0.996519, 0.046429,
		0.208191, -0.031081, 0.977594,
		34.115551, 32.775204, 33.113605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577946, 33.085613, 32.470802>,  <33.969818, 32.796959, 32.429291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577946, 33.085613, 32.470802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547558, 32.923119, 32.835045>,  <34.529324, 32.825623, 33.053589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547558, 32.923119, 32.835045>,  <34.577946, 33.085613, 32.470802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547558, 32.923119, 32.835045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997074, -0.023192, 0.072839,
		-0.008471, 0.913476, 0.406805,
		-0.075971, -0.406232, 0.910606,
		34.524765, 32.801250, 33.108227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060272, 33.485500, 32.878502>,  <34.577946, 33.085613, 32.470802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060272, 33.485500, 32.878502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007740, 33.127796, 33.049637>,  <34.976219, 32.913174, 33.152317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007740, 33.127796, 33.049637>,  <35.060272, 33.485500, 32.878502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007740, 33.127796, 33.049637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980832, -0.054549, 0.187064,
		-0.143946, 0.444206, 0.884285,
		-0.131331, -0.894262, 0.427840,
		34.968342, 32.859516, 33.177990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456219, 33.536022, 33.533741>,  <35.060272, 33.485500, 32.878502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456219, 33.536022, 33.533741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397186, 33.180241, 33.360722>,  <35.361767, 32.966774, 33.256908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397186, 33.180241, 33.360722>,  <35.456219, 33.536022, 33.533741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397186, 33.180241, 33.360722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955922, -0.240518, 0.168418,
		-0.253835, -0.388626, 0.885741,
		-0.147585, -0.889450, -0.432548,
		35.352909, 32.913406, 33.230957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704346, 32.854755, 33.994953>,  <35.456219, 33.536022, 33.533741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704346, 32.854755, 33.994953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692993, 32.768543, 33.604519>,  <35.686184, 32.716816, 33.370258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692993, 32.768543, 33.604519>,  <35.704346, 32.854755, 33.994953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692993, 32.768543, 33.604519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919500, -0.388624, 0.059078,
		-0.392063, -0.895835, 0.209205,
		-0.028378, -0.215527, -0.976085,
		35.684479, 32.703884, 33.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977367, 32.219814, 33.895943>,  <35.704346, 32.854755, 33.994953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977367, 32.219814, 33.895943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062073, 32.409172, 33.553936>,  <36.112896, 32.522785, 33.348732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062073, 32.409172, 33.553936>,  <35.977367, 32.219814, 33.895943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062073, 32.409172, 33.553936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942441, -0.330551, 0.050398,
		-0.258769, -0.816476, -0.516145,
		0.211761, 0.473395, -0.855017,
		36.125603, 32.551189, 33.297432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304447, 31.873096, 33.344719>,  <35.977367, 32.219814, 33.895943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304447, 31.873096, 33.344719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476284, 32.233780, 33.364201>,  <36.579384, 32.450191, 33.375889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476284, 32.233780, 33.364201>,  <36.304447, 31.873096, 33.344719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476284, 32.233780, 33.364201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898578, -0.432197, 0.075915,
		0.089502, 0.011149, -0.995924,
		0.429589, 0.901710, 0.048701,
		36.605160, 32.504292, 33.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491318, 31.869726, 33.478241>,  <36.304447, 31.873096, 33.344719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491318, 31.869726, 33.478241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220604, 31.575645, 33.463070>,  <35.058174, 31.399197, 33.453968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220604, 31.575645, 33.463070>,  <35.491318, 31.869726, 33.478241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220604, 31.575645, 33.463070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485007, -0.406527, -0.774277,
		0.553831, -0.542415, 0.631710,
		-0.676787, -0.735202, -0.037928,
		35.017567, 31.355085, 33.451691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831337, 31.215439, 33.438370>,  <35.491318, 31.869726, 33.478241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831337, 31.215439, 33.438370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466461, 31.111208, 33.311874>,  <35.247536, 31.048670, 33.235977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466461, 31.111208, 33.311874>,  <35.831337, 31.215439, 33.438370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466461, 31.111208, 33.311874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406472, -0.477722, -0.778821,
		0.051867, -0.838976, 0.541690,
		-0.912190, -0.260577, -0.316243,
		35.192802, 31.033035, 33.217003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093937, 31.442232, 34.180275>,  <35.831337, 31.215439, 33.438370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093937, 31.442232, 34.180275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763992, 31.243465, 34.288113>,  <35.566025, 31.124205, 34.352818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763992, 31.243465, 34.288113>,  <36.093937, 31.442232, 34.180275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763992, 31.243465, 34.288113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152043, 0.264317, 0.952376,
		-0.544510, 0.826565, -0.142471,
		-0.824858, -0.496917, 0.269597,
		35.516533, 31.094391, 34.368992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501587, 31.971239, 34.590199>,  <36.093937, 31.442232, 34.180275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501587, 31.971239, 34.590199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507683, 31.582655, 34.684887>,  <35.511341, 31.349504, 34.741699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507683, 31.582655, 34.684887>,  <35.501587, 31.971239, 34.590199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507683, 31.582655, 34.684887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156363, 0.236147, 0.959055,
		-0.987582, 0.022401, 0.155499,
		0.015236, -0.971459, 0.236717,
		35.512253, 31.291218, 34.755901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025356, 31.805859, 35.130432>,  <35.501587, 31.971239, 34.590199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025356, 31.805859, 35.130432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307461, 31.522781, 35.147324>,  <35.476723, 31.352936, 35.157459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307461, 31.522781, 35.147324>,  <35.025356, 31.805859, 35.130432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307461, 31.522781, 35.147324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187170, 0.243312, 0.951718,
		-0.683799, -0.663301, 0.304056,
		0.705256, -0.707694, 0.042227,
		35.519039, 31.310472, 35.159992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946728, 31.349524, 35.729443>,  <35.025356, 31.805859, 35.130432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946728, 31.349524, 35.729443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333221, 31.320105, 35.630665>,  <35.565117, 31.302454, 35.571400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333221, 31.320105, 35.630665>,  <34.946728, 31.349524, 35.729443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333221, 31.320105, 35.630665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253359, 0.096724, 0.962525,
		-0.046906, -0.992590, 0.112092,
		0.966234, -0.073548, -0.246944,
		35.623093, 31.298040, 35.556580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291637, 30.825413, 36.206806>,  <34.946728, 31.349524, 35.729443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291637, 30.825413, 36.206806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507935, 31.134968, 36.074932>,  <35.637711, 31.320702, 35.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507935, 31.134968, 36.074932>,  <35.291637, 30.825413, 36.206806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507935, 31.134968, 36.074932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154191, 0.294104, 0.943254,
		0.826937, -0.560891, 0.039707,
		0.540741, 0.773889, -0.329690,
		35.670158, 31.367134, 35.976025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707897, 30.798513, 36.706718>,  <35.291637, 30.825413, 36.206806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707897, 30.798513, 36.706718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791965, 31.145567, 36.526478>,  <35.842407, 31.353800, 36.418335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791965, 31.145567, 36.526478>,  <35.707897, 30.798513, 36.706718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791965, 31.145567, 36.526478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319100, 0.374774, 0.870470,
		0.924123, -0.326732, -0.198096,
		0.210170, 0.867635, -0.450598,
		35.855015, 31.405857, 36.391300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498707, 30.893143, 36.838142>,  <35.707897, 30.798513, 36.706718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498707, 30.893143, 36.838142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235847, 31.194248, 36.822624>,  <36.078133, 31.374912, 36.813313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235847, 31.194248, 36.822624>,  <36.498707, 30.893143, 36.838142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235847, 31.194248, 36.822624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341478, 0.343199, 0.874990,
		0.671975, 0.561748, -0.482585,
		-0.657146, 0.752764, -0.038797,
		36.038704, 31.420078, 36.810986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345825, 30.128281, 36.673729>,  <36.498707, 30.893143, 36.838142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345825, 30.128281, 36.673729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427364, 30.239695, 37.049145>,  <36.476288, 30.306543, 37.274395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427364, 30.239695, 37.049145>,  <36.345825, 30.128281, 36.673729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427364, 30.239695, 37.049145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938313, 0.217923, -0.268476,
		-0.279310, 0.935375, -0.216930,
		0.203851, 0.278536, 0.938543,
		36.488522, 30.323256, 37.330708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997234, 30.605272, 36.357140>,  <36.345825, 30.128281, 36.673729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997234, 30.605272, 36.357140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011623, 30.674627, 36.750816>,  <37.020256, 30.716240, 36.987022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011623, 30.674627, 36.750816>,  <36.997234, 30.605272, 36.357140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011623, 30.674627, 36.750816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999135, -0.026785, -0.031797,
		0.020848, 0.984489, -0.174201,
		0.035969, 0.173388, 0.984196,
		37.022415, 30.726645, 37.046074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300976, 31.320944, 36.621365>,  <36.997234, 30.605272, 36.357140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300976, 31.320944, 36.621365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359573, 31.036001, 36.895908>,  <37.394733, 30.865036, 37.060635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359573, 31.036001, 36.895908>,  <37.300976, 31.320944, 36.621365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359573, 31.036001, 36.895908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987599, 0.144925, -0.060382,
		-0.056456, 0.686692, 0.724753,
		0.146499, -0.712356, 0.686358,
		37.403522, 30.822294, 37.101814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693016, 31.544060, 37.143162>,  <37.300976, 31.320944, 36.621365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693016, 31.544060, 37.143162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785286, 31.161034, 37.074047>,  <37.840649, 30.931217, 37.032578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785286, 31.161034, 37.074047>,  <37.693016, 31.544060, 37.143162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785286, 31.161034, 37.074047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964642, 0.248315, -0.088343,
		0.127500, -0.146300, 0.980989,
		0.230670, -0.957568, -0.172787,
		37.854488, 30.873764, 37.022209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327023, 31.504642, 37.446632>,  <37.693016, 31.544060, 37.143162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327023, 31.504642, 37.446632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298283, 31.171362, 37.227318>,  <38.281040, 30.971394, 37.095730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298283, 31.171362, 37.227318>,  <38.327023, 31.504642, 37.446632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298283, 31.171362, 37.227318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989803, 0.008226, -0.142207,
		0.122997, -0.552909, 0.824114,
		-0.071849, -0.833201, -0.548283,
		38.276730, 30.921402, 37.062832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742874, 30.979015, 37.736057>,  <38.327023, 31.504642, 37.446632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742874, 30.979015, 37.736057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730522, 30.940313, 37.338127>,  <38.723110, 30.917091, 37.099369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730522, 30.940313, 37.338127>,  <38.742874, 30.979015, 37.736057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730522, 30.940313, 37.338127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998771, -0.041590, -0.026955,
		-0.038767, -0.994439, 0.097921,
		-0.030878, -0.096756, -0.994829,
		38.721260, 30.911285, 37.039677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923420, 30.295572, 37.564701>,  <38.742874, 30.979015, 37.736057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923420, 30.295572, 37.564701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042088, 30.562267, 37.291218>,  <39.113289, 30.722284, 37.127129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042088, 30.562267, 37.291218>,  <38.923420, 30.295572, 37.564701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042088, 30.562267, 37.291218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944067, -0.312683, 0.104716,
		-0.143964, -0.676529, -0.722207,
		0.296666, 0.666737, -0.683704,
		39.131088, 30.762289, 37.086105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870464, 30.001207, 36.918816>,  <38.923420, 30.295572, 37.564701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870464, 30.001207, 36.918816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226559, 29.887018, 37.060795>,  <39.440216, 29.818504, 37.145985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226559, 29.887018, 37.060795>,  <38.870464, 30.001207, 36.918816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226559, 29.887018, 37.060795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357574, -0.920710, 0.156314,
		0.282184, -0.266077, -0.921724,
		0.890233, -0.285475, 0.354952,
		39.493629, 29.801376, 37.167282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718002, 29.257908, 36.996704>,  <38.870464, 30.001207, 36.918816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718002, 29.257908, 36.996704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095047, 29.313341, 37.118210>,  <39.321274, 29.346601, 37.191113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095047, 29.313341, 37.118210>,  <38.718002, 29.257908, 36.996704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095047, 29.313341, 37.118210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008483, -0.919437, 0.393146,
		0.333772, -0.368009, -0.867851,
		0.942616, 0.138583, 0.303761,
		39.377831, 29.354916, 37.209339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281788, 28.783129, 36.643810>,  <38.718002, 29.257908, 36.996704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281788, 28.783129, 36.643810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270473, 28.871588, 37.033741>,  <39.263683, 28.924664, 37.267700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270473, 28.871588, 37.033741>,  <39.281788, 28.783129, 36.643810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270473, 28.871588, 37.033741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013168, -0.975053, 0.221581,
		0.999513, 0.019105, 0.024673,
		-0.028291, 0.221148, 0.974830,
		39.261986, 28.937933, 37.326191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818565, 28.458681, 36.872757>,  <39.281788, 28.783129, 36.643810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818565, 28.458681, 36.872757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496185, 28.486551, 37.107906>,  <39.302757, 28.503273, 37.248997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496185, 28.486551, 37.107906>,  <39.818565, 28.458681, 36.872757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496185, 28.486551, 37.107906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051779, -0.980947, 0.187250,
		0.589715, 0.181353, 0.786986,
		-0.805950, 0.069675, 0.587869,
		39.254402, 28.507454, 37.284267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567783, 28.766281, 37.108875>,  <39.818565, 28.458681, 36.872757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567783, 28.766281, 37.108875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539837, 29.026236, 37.411602>,  <40.523071, 29.182209, 37.593239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539837, 29.026236, 37.411602>,  <40.567783, 28.766281, 37.108875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539837, 29.026236, 37.411602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815270, -0.474385, 0.332103,
		0.574851, -0.593806, 0.562975,
		-0.069862, 0.649887, 0.756813,
		40.518879, 29.221201, 37.638645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849506, 29.358196, 36.807907>,  <40.567783, 28.766281, 37.108875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849506, 29.358196, 36.807907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702816, 29.712412, 36.921982>,  <40.614799, 29.924942, 36.990425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702816, 29.712412, 36.921982>,  <40.849506, 29.358196, 36.807907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702816, 29.712412, 36.921982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290962, 0.400338, -0.868948,
		-0.883658, -0.235689, -0.404474,
		-0.366728, 0.885539, 0.285186,
		40.592796, 29.978073, 37.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660191, 29.506933, 36.202328>,  <40.849506, 29.358196, 36.807907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660191, 29.506933, 36.202328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650143, 29.846334, 36.413765>,  <40.644115, 30.049974, 36.540627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650143, 29.846334, 36.413765>,  <40.660191, 29.506933, 36.202328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650143, 29.846334, 36.413765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321572, 0.507518, -0.799386,
		-0.946552, 0.149901, -0.285603,
		-0.025120, 0.848502, 0.528596,
		40.642609, 30.100885, 36.572342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299747, 30.079590, 35.757195>,  <40.660191, 29.506933, 36.202328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299747, 30.079590, 35.757195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506958, 30.282803, 36.032455>,  <40.631283, 30.404730, 36.197613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506958, 30.282803, 36.032455>,  <40.299747, 30.079590, 35.757195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506958, 30.282803, 36.032455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223349, 0.696265, -0.682151,
		-0.825692, 0.507068, 0.247212,
		0.518022, 0.508032, 0.688154,
		40.662365, 30.435213, 36.238903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940933, 30.745806, 35.750828>,  <40.299747, 30.079590, 35.757195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940933, 30.745806, 35.750828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318642, 30.780664, 35.877792>,  <40.545269, 30.801579, 35.953972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318642, 30.780664, 35.877792>,  <39.940933, 30.745806, 35.750828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318642, 30.780664, 35.877792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117181, 0.812141, -0.571574,
		-0.307595, 0.576917, 0.756672,
		0.944274, 0.087146, 0.317414,
		40.601925, 30.806808, 35.973015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103466, 31.440807, 35.676918>,  <39.940933, 30.745806, 35.750828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103466, 31.440807, 35.676918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460484, 31.260490, 35.671902>,  <40.674694, 31.152300, 35.668892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460484, 31.260490, 35.671902>,  <40.103466, 31.440807, 35.676918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460484, 31.260490, 35.671902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310850, 0.635142, -0.707083,
		0.326714, 0.627202, 0.707019,
		0.892542, -0.450791, -0.012544,
		40.728245, 31.125254, 35.668137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522633, 31.980684, 35.529568>,  <40.103466, 31.440807, 35.676918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522633, 31.980684, 35.529568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742176, 31.653727, 35.459572>,  <40.873901, 31.457552, 35.417576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742176, 31.653727, 35.459572>,  <40.522633, 31.980684, 35.529568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742176, 31.653727, 35.459572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429589, 0.455397, -0.779787,
		0.717080, 0.352823, 0.601093,
		0.548862, -0.817392, -0.174988,
		40.906834, 31.408508, 35.407074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190765, 32.227737, 35.591961>,  <40.522633, 31.980684, 35.529568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190765, 32.227737, 35.591961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193371, 31.905066, 35.355579>,  <41.194935, 31.711464, 35.213749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193371, 31.905066, 35.355579>,  <41.190765, 32.227737, 35.591961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193371, 31.905066, 35.355579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352943, 0.554791, -0.753418,
		0.935622, -0.203664, 0.288327,
		0.006517, -0.806677, -0.590957,
		41.195324, 31.663063, 35.178291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857506, 32.175888, 35.210735>,  <41.190765, 32.227737, 35.591961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857506, 32.175888, 35.210735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646301, 31.928883, 34.977539>,  <41.519577, 31.780680, 34.837620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646301, 31.928883, 34.977539>,  <41.857506, 32.175888, 35.210735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646301, 31.928883, 34.977539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445190, 0.383332, -0.809236,
		0.723195, -0.686827, 0.072509,
		-0.528010, -0.617516, -0.582992,
		41.487900, 31.743628, 34.802643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302670, 31.857357, 34.723259>,  <41.857506, 32.175888, 35.210735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302670, 31.857357, 34.723259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947563, 31.813925, 34.544338>,  <41.734497, 31.787867, 34.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947563, 31.813925, 34.544338>,  <42.302670, 31.857357, 34.723259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947563, 31.813925, 34.544338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391848, 0.331584, -0.858200,
		0.241499, -0.937157, -0.251824,
		-0.887769, -0.108578, -0.447300,
		41.681232, 31.781351, 34.410149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460125, 31.448385, 34.128422>,  <42.302670, 31.857357, 34.723259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460125, 31.448385, 34.128422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111935, 31.634943, 34.065491>,  <41.903023, 31.746878, 34.027733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111935, 31.634943, 34.065491>,  <42.460125, 31.448385, 34.128422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111935, 31.634943, 34.065491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406613, 0.501244, -0.763820,
		-0.277382, -0.728856, -0.625961,
		-0.870474, 0.466394, -0.157326,
		41.850792, 31.774860, 34.018291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435509, 31.521173, 33.363453>,  <42.460125, 31.448385, 34.128422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435509, 31.521173, 33.363453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159084, 31.783852, 33.484241>,  <41.993229, 31.941460, 33.556713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159084, 31.783852, 33.484241>,  <42.435509, 31.521173, 33.363453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159084, 31.783852, 33.484241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046290, 0.457135, -0.888192,
		-0.721315, -0.599815, -0.346305,
		-0.691059, 0.656697, 0.301973,
		41.951767, 31.980860, 33.574833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346287, 31.680714, 32.725830>,  <42.435509, 31.521173, 33.363453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346287, 31.680714, 32.725830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148727, 31.945440, 32.951420>,  <42.030190, 32.104275, 33.086773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148727, 31.945440, 32.951420>,  <42.346287, 31.680714, 32.725830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148727, 31.945440, 32.951420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266447, 0.502204, -0.822677,
		-0.827689, -0.556588, -0.071700,
		-0.493900, 0.661816, 0.563970,
		42.000557, 32.143986, 33.120609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688835, 31.663567, 32.445316>,  <42.346287, 31.680714, 32.725830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688835, 31.663567, 32.445316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777882, 32.019428, 32.604794>,  <41.831310, 32.232944, 32.700481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777882, 32.019428, 32.604794>,  <41.688835, 31.663567, 32.445316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777882, 32.019428, 32.604794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236006, 0.445970, -0.863373,
		-0.945909, 0.098108, 0.309244,
		0.222617, 0.889655, 0.398693,
		41.844666, 32.286324, 32.724400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098896, 32.090233, 32.358231>,  <41.688835, 31.663567, 32.445316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098896, 32.090233, 32.358231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393967, 32.352085, 32.424301>,  <41.571011, 32.509197, 32.463943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393967, 32.352085, 32.424301>,  <41.098896, 32.090233, 32.358231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393967, 32.352085, 32.424301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384555, 0.608490, -0.694159,
		-0.554929, 0.448547, 0.700613,
		0.737679, 0.654634, 0.165177,
		41.615269, 32.548473, 32.473854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817192, 32.696110, 32.627560>,  <41.098896, 32.090233, 32.358231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817192, 32.696110, 32.627560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160835, 32.776562, 32.439312>,  <41.367020, 32.824833, 32.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160835, 32.776562, 32.439312>,  <40.817192, 32.696110, 32.627560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160835, 32.776562, 32.439312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501530, 0.514075, -0.695840,
		0.101977, 0.833830, 0.542520,
		0.859109, 0.201131, -0.470615,
		41.418568, 32.836903, 32.298126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688366, 33.245594, 32.296291>,  <40.817192, 32.696110, 32.627560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688366, 33.245594, 32.296291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021729, 33.117496, 32.116127>,  <41.221748, 33.040638, 32.008030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021729, 33.117496, 32.116127>,  <40.688366, 33.245594, 32.296291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021729, 33.117496, 32.116127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351362, 0.322038, -0.879111,
		0.426583, 0.890917, 0.155867,
		0.833410, -0.320248, -0.450410,
		41.271751, 33.021423, 31.981005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798317, 33.700161, 31.765942>,  <40.688366, 33.245594, 32.296291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798317, 33.700161, 31.765942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038319, 33.403637, 31.645639>,  <41.182320, 33.225723, 31.573458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038319, 33.403637, 31.645639>,  <40.798317, 33.700161, 31.765942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038319, 33.403637, 31.645639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218315, 0.209947, -0.953027,
		0.769635, 0.637475, -0.035872,
		0.600000, -0.741315, -0.300753,
		41.218319, 33.181244, 31.555414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219604, 34.025692, 31.279221>,  <40.798317, 33.700161, 31.765942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219604, 34.025692, 31.279221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231785, 33.630569, 31.218143>,  <41.239094, 33.393497, 31.181498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231785, 33.630569, 31.218143>,  <41.219604, 34.025692, 31.279221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231785, 33.630569, 31.218143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035806, 0.151586, -0.987795,
		0.998895, 0.035551, -0.030753,
		0.030455, -0.987805, -0.152691,
		41.240921, 33.334229, 31.172337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687176, 33.936062, 30.752251>,  <41.219604, 34.025692, 31.279221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687176, 33.936062, 30.752251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505642, 33.580318, 30.730066>,  <41.396721, 33.366875, 30.716755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505642, 33.580318, 30.730066>,  <41.687176, 33.936062, 30.752251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505642, 33.580318, 30.730066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068419, 0.027279, -0.997284,
		0.888454, -0.456400, 0.048469,
		-0.453838, -0.889356, -0.055463,
		41.369492, 33.313511, 30.713428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047760, 33.547470, 30.252443>,  <41.687176, 33.936062, 30.752251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047760, 33.547470, 30.252443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677143, 33.398243, 30.271820>,  <41.454773, 33.308708, 30.283445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677143, 33.398243, 30.271820>,  <42.047760, 33.547470, 30.252443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677143, 33.398243, 30.271820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045218, -0.017392, -0.998826,
		0.373472, -0.927641, -0.000755,
		-0.926539, -0.373068, 0.048442,
		41.399181, 33.286324, 30.286352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057579, 33.187164, 29.635189>,  <42.047760, 33.547470, 30.252443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057579, 33.187164, 29.635189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669384, 33.196877, 29.731159>,  <41.436466, 33.202705, 29.788742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669384, 33.196877, 29.731159>,  <42.057579, 33.187164, 29.635189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669384, 33.196877, 29.731159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235896, 0.110970, -0.965421,
		-0.050066, -0.993527, -0.101967,
		-0.970488, 0.024281, 0.239925,
		41.378239, 33.204163, 29.803137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735542, 32.790165, 29.108749>,  <42.057579, 33.187164, 29.635189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735542, 32.790165, 29.108749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456135, 33.012753, 29.288713>,  <41.288490, 33.146305, 29.396692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456135, 33.012753, 29.288713>,  <41.735542, 32.790165, 29.108749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456135, 33.012753, 29.288713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438258, 0.164345, -0.883697,
		-0.565690, -0.814452, 0.129080,
		-0.698516, 0.556469, 0.449908,
		41.246578, 33.179691, 29.423685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111565, 32.503746, 28.870943>,  <41.735542, 32.790165, 29.108749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111565, 32.503746, 28.870943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081936, 32.884850, 28.988768>,  <41.064159, 33.113510, 29.059464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081936, 32.884850, 28.988768>,  <41.111565, 32.503746, 28.870943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081936, 32.884850, 28.988768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454965, 0.230557, -0.860146,
		-0.887423, -0.197732, 0.416392,
		-0.074076, 0.952757, 0.294563,
		41.059711, 33.170677, 29.077137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472256, 32.644817, 28.669138>,  <41.111565, 32.503746, 28.870943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472256, 32.644817, 28.669138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636360, 33.008770, 28.693773>,  <40.734825, 33.227142, 28.708553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636360, 33.008770, 28.693773>,  <40.472256, 32.644817, 28.669138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636360, 33.008770, 28.693773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242587, 0.173982, -0.954401,
		-0.879110, 0.376618, 0.292105,
		0.410266, 0.909884, 0.061586,
		40.759441, 33.281734, 28.712250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970955, 33.045444, 28.356205>,  <40.472256, 32.644817, 28.669138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970955, 33.045444, 28.356205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289753, 33.287037, 28.356312>,  <40.481033, 33.431992, 28.356377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289753, 33.287037, 28.356312>,  <39.970955, 33.045444, 28.356205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289753, 33.287037, 28.356312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338849, 0.447503, -0.827600,
		-0.499975, 0.659506, 0.561318,
		0.796999, 0.603981, 0.000267,
		40.528854, 33.468231, 28.356392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658249, 33.689087, 28.249956>,  <39.970955, 33.045444, 28.356205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658249, 33.689087, 28.249956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043941, 33.701633, 28.144678>,  <40.275356, 33.709164, 28.081512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043941, 33.701633, 28.144678>,  <39.658249, 33.689087, 28.249956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043941, 33.701633, 28.144678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257386, 0.347972, -0.901481,
		0.063305, 0.936980, 0.343600,
		0.964233, 0.031370, -0.263194,
		40.333210, 33.711044, 28.065720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704922, 34.307301, 28.006224>,  <39.658249, 33.689087, 28.249956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704922, 34.307301, 28.006224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012527, 34.104984, 27.849873>,  <40.197090, 33.983593, 27.756062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012527, 34.104984, 27.849873>,  <39.704922, 34.307301, 28.006224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012527, 34.104984, 27.849873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205675, 0.383187, -0.900481,
		0.605234, 0.772881, 0.190650,
		0.769019, -0.505789, -0.390880,
		40.243233, 33.953247, 27.732609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960945, 34.784149, 27.620024>,  <39.704922, 34.307301, 28.006224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960945, 34.784149, 27.620024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105587, 34.433460, 27.493156>,  <40.192371, 34.223045, 27.417036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105587, 34.433460, 27.493156>,  <39.960945, 34.784149, 27.620024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105587, 34.433460, 27.493156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144529, 0.283363, -0.948060,
		0.921063, 0.388659, -0.024248,
		0.361601, -0.876727, -0.317167,
		40.214066, 34.170441, 27.398006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430119, 34.918941, 27.105024>,  <39.960945, 34.784149, 27.620024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430119, 34.918941, 27.105024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326389, 34.537766, 27.042221>,  <40.264153, 34.309059, 27.004539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326389, 34.537766, 27.042221>,  <40.430119, 34.918941, 27.105024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326389, 34.537766, 27.042221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162362, 0.203271, -0.965567,
		0.952044, -0.224906, -0.207435,
		-0.259327, -0.952942, -0.157007,
		40.248592, 34.251884, 26.995119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033131, 34.561440, 26.724075>,  <40.430119, 34.918941, 27.105024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033131, 34.561440, 26.724075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672512, 34.391586, 26.690842>,  <40.456142, 34.289673, 26.670902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672512, 34.391586, 26.690842>,  <41.033131, 34.561440, 26.724075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672512, 34.391586, 26.690842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133767, 0.456141, -0.879796,
		0.411487, -0.782063, -0.468034,
		-0.901546, -0.424632, -0.083082,
		40.402050, 34.264194, 26.665916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037235, 34.422142, 26.010422>,  <41.033131, 34.561440, 26.724075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037235, 34.422142, 26.010422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661091, 34.425472, 26.146456>,  <40.435406, 34.427471, 26.228075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661091, 34.425472, 26.146456>,  <41.037235, 34.422142, 26.010422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661091, 34.425472, 26.146456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322368, 0.297480, -0.898657,
		-0.108652, -0.954692, -0.277053,
		-0.940358, 0.008328, 0.340084,
		40.378983, 34.427971, 26.248482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588032, 34.012978, 25.537790>,  <41.037235, 34.422142, 26.010422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588032, 34.012978, 25.537790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326843, 34.252472, 25.723326>,  <40.170132, 34.396168, 25.834648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326843, 34.252472, 25.723326>,  <40.588032, 34.012978, 25.537790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326843, 34.252472, 25.723326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334132, 0.321879, -0.885861,
		-0.679696, -0.733424, -0.010122,
		-0.652970, 0.598734, 0.463840,
		40.130951, 34.432091, 25.862478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976143, 34.008068, 24.988401>,  <40.588032, 34.012978, 25.537790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976143, 34.008068, 24.988401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895794, 34.319485, 25.226233>,  <39.847584, 34.506336, 25.368931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895794, 34.319485, 25.226233>,  <39.976143, 34.008068, 24.988401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895794, 34.319485, 25.226233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584873, 0.391587, -0.710340,
		-0.785859, -0.490442, 0.376688,
		-0.200874, 0.778541, 0.594578,
		39.835533, 34.553047, 25.404606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305023, 34.116798, 24.893291>,  <39.976143, 34.008068, 24.988401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305023, 34.116798, 24.893291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431446, 34.460732, 25.053686>,  <39.507301, 34.667091, 25.149923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431446, 34.460732, 25.053686>,  <39.305023, 34.116798, 24.893291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431446, 34.460732, 25.053686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705057, 0.495677, -0.507148,
		-0.634824, -0.122429, 0.762896,
		0.316060, 0.859835, 0.400987,
		39.526264, 34.718681, 25.173983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693161, 34.418762, 25.154509>,  <39.305023, 34.116798, 24.893291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693161, 34.418762, 25.154509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965748, 34.709629, 25.121450>,  <39.129299, 34.884148, 25.101616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965748, 34.709629, 25.121450>,  <38.693161, 34.418762, 25.154509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965748, 34.709629, 25.121450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638717, 0.535818, -0.552214,
		-0.357269, 0.429102, 0.829596,
		0.681468, 0.727166, -0.082644,
		39.170189, 34.927780, 25.096657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384094, 34.989311, 25.323605>,  <38.693161, 34.418762, 25.154509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384094, 34.989311, 25.323605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667156, 35.085297, 25.057779>,  <38.836994, 35.142887, 24.898283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667156, 35.085297, 25.057779>,  <38.384094, 34.989311, 25.323605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667156, 35.085297, 25.057779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679335, 0.489651, -0.546576,
		0.194246, 0.838248, 0.509518,
		0.707653, 0.239963, -0.664564,
		38.879452, 35.157284, 24.858410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081829, 35.567806, 25.068327>,  <38.384094, 34.989311, 25.323605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081829, 35.567806, 25.068327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389317, 35.506191, 24.820023>,  <38.573811, 35.469223, 24.671040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389317, 35.506191, 24.820023>,  <38.081829, 35.567806, 25.068327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389317, 35.506191, 24.820023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377302, 0.674482, -0.634600,
		0.516442, 0.722043, 0.460371,
		0.768720, -0.154036, -0.620759,
		38.619934, 35.459980, 24.633795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301525, 36.198330, 24.835535>,  <38.081829, 35.567806, 25.068327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301525, 36.198330, 24.835535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390282, 35.913780, 24.568789>,  <38.443535, 35.743050, 24.408741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390282, 35.913780, 24.568789>,  <38.301525, 36.198330, 24.835535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390282, 35.913780, 24.568789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316746, 0.594240, -0.739291,
		0.922191, 0.375271, -0.093467,
		0.221893, -0.711372, -0.666868,
		38.456848, 35.700367, 24.368729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592346, 36.555775, 24.397207>,  <38.301525, 36.198330, 24.835535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592346, 36.555775, 24.397207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469570, 36.222969, 24.212366>,  <38.395905, 36.023285, 24.101461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469570, 36.222969, 24.212366>,  <38.592346, 36.555775, 24.397207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469570, 36.222969, 24.212366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325695, 0.548053, -0.770429,
		0.894266, -0.085970, -0.439202,
		-0.306939, -0.832014, -0.462105,
		38.377487, 35.973366, 24.073734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740959, 36.698364, 23.709051>,  <38.592346, 36.555775, 24.397207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740959, 36.698364, 23.709051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497898, 36.381779, 23.682692>,  <38.352062, 36.191826, 23.666876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497898, 36.381779, 23.682692>,  <38.740959, 36.698364, 23.709051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497898, 36.381779, 23.682692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434797, 0.400956, -0.806341,
		0.664613, -0.461322, -0.587768,
		-0.607652, -0.791465, -0.065899,
		38.315601, 36.144341, 23.662922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453812, 36.799683, 23.002390>,  <38.740959, 36.698364, 23.709051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453812, 36.799683, 23.002390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233582, 36.486763, 23.118921>,  <38.101444, 36.299011, 23.188841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233582, 36.486763, 23.118921>,  <38.453812, 36.799683, 23.002390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233582, 36.486763, 23.118921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650118, 0.182911, -0.737489,
		0.523649, -0.595443, -0.609294,
		-0.550579, -0.782298, 0.291327,
		38.068409, 36.252075, 23.206320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314636, 36.111412, 22.478226>,  <38.453812, 36.799683, 23.002390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314636, 36.111412, 22.478226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014641, 36.173664, 22.735378>,  <37.834644, 36.211014, 22.889669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014641, 36.173664, 22.735378>,  <38.314636, 36.111412, 22.478226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014641, 36.173664, 22.735378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588265, 0.287450, -0.755855,
		-0.302431, -0.945067, -0.124032,
		-0.749987, 0.155631, 0.642884,
		37.789646, 36.220352, 22.928244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688961, 35.827984, 22.151512>,  <38.314636, 36.111412, 22.478226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688961, 35.827984, 22.151512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535202, 36.045612, 22.449835>,  <37.442947, 36.176189, 22.628828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535202, 36.045612, 22.449835>,  <37.688961, 35.827984, 22.151512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535202, 36.045612, 22.449835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623331, 0.442949, -0.644403,
		-0.680953, -0.712592, 0.168866,
		-0.384397, 0.544068, 0.745808,
		37.419884, 36.208832, 22.673576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953030, 35.806530, 22.058676>,  <37.688961, 35.827984, 22.151512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953030, 35.806530, 22.058676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047710, 36.132206, 22.270741>,  <37.104519, 36.327610, 22.397980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047710, 36.132206, 22.270741>,  <36.953030, 35.806530, 22.058676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047710, 36.132206, 22.270741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616508, 0.547608, -0.565724,
		-0.750925, -0.192940, 0.631574,
		0.236704, 0.814186, 0.530162,
		37.118721, 36.376461, 22.429789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615696, 36.333248, 21.739902>,  <36.953030, 35.806530, 22.058676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615696, 36.333248, 21.739902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776680, 36.563354, 22.024746>,  <36.873268, 36.701416, 22.195652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776680, 36.563354, 22.024746>,  <36.615696, 36.333248, 21.739902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776680, 36.563354, 22.024746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374418, 0.813288, -0.445392,
		-0.835368, -0.087375, 0.542703,
		0.402457, 0.575264, 0.712109,
		36.897419, 36.735935, 22.238379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205204, 36.744698, 22.119019>,  <36.615696, 36.333248, 21.739902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205204, 36.744698, 22.119019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555828, 36.936218, 22.099449>,  <36.766201, 37.051128, 22.087708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555828, 36.936218, 22.099449>,  <36.205204, 36.744698, 22.119019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555828, 36.936218, 22.099449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439090, 0.753933, -0.488656,
		-0.197082, 0.449819, 0.871104,
		0.876561, 0.478798, -0.048925,
		36.818798, 37.079857, 22.084772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163380, 37.524494, 22.357702>,  <36.205204, 36.744698, 22.119019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163380, 37.524494, 22.357702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438435, 37.450409, 22.076887>,  <36.603466, 37.405956, 21.908398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438435, 37.450409, 22.076887>,  <36.163380, 37.524494, 22.357702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438435, 37.450409, 22.076887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357751, 0.754964, -0.549585,
		0.631803, 0.629068, 0.452878,
		0.687633, -0.185212, -0.702038,
		36.644726, 37.394844, 21.866276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310463, 38.194733, 22.156317>,  <36.163380, 37.524494, 22.357702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310463, 38.194733, 22.156317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410713, 37.950020, 21.856207>,  <36.470863, 37.803192, 21.676140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410713, 37.950020, 21.856207>,  <36.310463, 38.194733, 22.156317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410713, 37.950020, 21.856207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430214, 0.623893, -0.652436,
		0.867238, 0.486297, -0.106832,
		0.250626, -0.611778, -0.750276,
		36.485901, 37.766487, 21.631124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103970, 38.778011, 21.709036>,  <36.310463, 38.194733, 22.156317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103970, 38.778011, 21.709036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815632, 38.567017, 21.529196>,  <35.642632, 38.440418, 21.421291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815632, 38.567017, 21.529196>,  <36.103970, 38.778011, 21.709036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815632, 38.567017, 21.529196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688539, -0.470694, -0.551690,
		0.079386, -0.707250, 0.702493,
		-0.720841, -0.527490, -0.449602,
		35.599380, 38.408768, 21.394316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416649, 38.258514, 21.912790>,  <36.103970, 38.778011, 21.709036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416649, 38.258514, 21.912790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181683, 38.297951, 22.234093>,  <35.040703, 38.321613, 22.426874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181683, 38.297951, 22.234093>,  <35.416649, 38.258514, 21.912790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181683, 38.297951, 22.234093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567579, -0.657332, 0.495750,
		0.576883, 0.747124, 0.330169,
		-0.587417, 0.098593, 0.803256,
		35.005459, 38.327530, 22.475069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808346, 38.541725, 22.565681>,  <35.416649, 38.258514, 21.912790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808346, 38.541725, 22.565681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483196, 38.348804, 22.696295>,  <35.288105, 38.233051, 22.774662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483196, 38.348804, 22.696295>,  <35.808346, 38.541725, 22.565681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483196, 38.348804, 22.696295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559349, -0.490133, 0.668504,
		-0.162376, 0.726054, 0.668191,
		-0.812873, -0.482301, 0.326532,
		35.239334, 38.204113, 22.794254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571018, 38.691994, 23.288029>,  <35.808346, 38.541725, 22.565681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571018, 38.691994, 23.288029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437321, 38.328243, 23.188976>,  <35.357101, 38.109993, 23.129545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437321, 38.328243, 23.188976>,  <35.571018, 38.691994, 23.288029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437321, 38.328243, 23.188976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288350, -0.348812, 0.891731,
		-0.897292, 0.226655, 0.378807,
		-0.334248, -0.909372, -0.247631,
		35.337048, 38.055431, 23.114687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170712, 38.444473, 23.801273>,  <35.571018, 38.691994, 23.288029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170712, 38.444473, 23.801273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375900, 38.153721, 23.618624>,  <35.499012, 37.979271, 23.509033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375900, 38.153721, 23.618624>,  <35.170712, 38.444473, 23.801273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375900, 38.153721, 23.618624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248953, -0.383106, 0.889523,
		-0.821514, -0.569975, -0.015562,
		0.512968, -0.726882, -0.456625,
		35.529789, 37.935658, 23.481636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882877, 37.788734, 24.121483>,  <35.170712, 38.444473, 23.801273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882877, 37.788734, 24.121483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252480, 37.741470, 23.976017>,  <35.474239, 37.713112, 23.888737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252480, 37.741470, 23.976017>,  <34.882877, 37.788734, 24.121483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252480, 37.741470, 23.976017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277515, -0.447053, 0.850370,
		-0.263056, -0.886669, -0.380289,
		0.924006, -0.118159, -0.363664,
		35.529682, 37.706024, 23.866919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024643, 37.155903, 24.118717>,  <34.882877, 37.788734, 24.121483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024643, 37.155903, 24.118717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397263, 37.301281, 24.114388>,  <35.620834, 37.388508, 24.111790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397263, 37.301281, 24.114388>,  <35.024643, 37.155903, 24.118717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397263, 37.301281, 24.114388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190846, -0.463381, 0.865365,
		0.309498, -0.808199, -0.501026,
		0.931552, 0.363447, -0.010826,
		35.676727, 37.410316, 24.111139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519344, 36.601631, 24.211039>,  <35.024643, 37.155903, 24.118717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519344, 36.601631, 24.211039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734703, 36.923401, 24.311464>,  <35.863918, 37.116463, 24.371719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734703, 36.923401, 24.311464>,  <35.519344, 36.601631, 24.211039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734703, 36.923401, 24.311464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270765, -0.447267, 0.852431,
		0.798010, -0.390963, -0.458616,
		0.538393, 0.804425, 0.251064,
		35.896221, 37.164730, 24.386784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093678, 36.230579, 24.484350>,  <35.519344, 36.601631, 24.211039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093678, 36.230579, 24.484350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128918, 36.614197, 24.592039>,  <36.150063, 36.844368, 24.656652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128918, 36.614197, 24.592039>,  <36.093678, 36.230579, 24.484350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128918, 36.614197, 24.592039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318794, -0.283203, 0.904525,
		0.943720, 0.006135, -0.330687,
		0.088102, 0.959040, 0.269221,
		36.155350, 36.901909, 24.672806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768372, 36.388332, 24.794758>,  <36.093678, 36.230579, 24.484350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768372, 36.388332, 24.794758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525940, 36.665668, 24.950684>,  <36.380482, 36.832069, 25.044239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525940, 36.665668, 24.950684>,  <36.768372, 36.388332, 24.794758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525940, 36.665668, 24.950684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284929, -0.268313, 0.920230,
		0.742622, 0.668799, -0.034934,
		-0.606076, 0.693337, 0.389815,
		36.344116, 36.873669, 25.067629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193939, 36.554428, 25.323914>,  <36.768372, 36.388332, 24.794758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193939, 36.554428, 25.323914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826565, 36.687019, 25.410252>,  <36.606140, 36.766575, 25.462053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826565, 36.687019, 25.410252>,  <37.193939, 36.554428, 25.323914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826565, 36.687019, 25.410252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126029, -0.272009, 0.954006,
		0.374947, 0.903400, 0.208047,
		-0.918440, 0.331482, 0.215843,
		36.551033, 36.786465, 25.475004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342724, 37.031136, 25.787844>,  <37.193939, 36.554428, 25.323914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342724, 37.031136, 25.787844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964695, 36.912594, 25.842987>,  <36.737877, 36.841469, 25.876074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964695, 36.912594, 25.842987>,  <37.342724, 37.031136, 25.787844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964695, 36.912594, 25.842987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167243, -0.076074, 0.982976,
		-0.280821, 0.952044, 0.121459,
		-0.945076, -0.296354, 0.137860,
		36.681171, 36.823689, 25.884346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091679, 37.269741, 26.519110>,  <37.342724, 37.031136, 25.787844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091679, 37.269741, 26.519110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817448, 36.990112, 26.437840>,  <36.652908, 36.822334, 26.389078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817448, 36.990112, 26.437840>,  <37.091679, 37.269741, 26.519110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817448, 36.990112, 26.437840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068653, -0.339923, 0.937944,
		-0.724757, 0.629083, 0.281037,
		-0.685576, -0.699075, -0.203173,
		36.611774, 36.780388, 26.376888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441658, 37.337696, 27.083353>,  <37.091679, 37.269741, 26.519110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441658, 37.337696, 27.083353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466957, 36.984383, 26.897533>,  <36.482136, 36.772392, 26.786041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466957, 36.984383, 26.897533>,  <36.441658, 37.337696, 27.083353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466957, 36.984383, 26.897533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064758, -0.460868, 0.885103,
		-0.995895, -0.086064, 0.028050,
		0.063248, -0.883286, -0.464549,
		36.485931, 36.719398, 26.758169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957603, 36.979000, 27.446100>,  <36.441658, 37.337696, 27.083353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957603, 36.979000, 27.446100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193748, 36.716972, 27.257483>,  <36.335434, 36.559753, 27.144312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193748, 36.716972, 27.257483>,  <35.957603, 36.979000, 27.446100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193748, 36.716972, 27.257483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070119, -0.540383, 0.838492,
		-0.804089, -0.528075, -0.273087,
		0.590359, -0.655074, -0.471544,
		36.370857, 36.520451, 27.116020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719521, 36.264832, 27.567059>,  <35.957603, 36.979000, 27.446100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719521, 36.264832, 27.567059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102341, 36.222446, 27.459114>,  <36.332031, 36.197018, 27.394348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102341, 36.222446, 27.459114>,  <35.719521, 36.264832, 27.567059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102341, 36.222446, 27.459114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173363, -0.536907, 0.825637,
		-0.232374, -0.836961, -0.495479,
		0.957052, -0.105958, -0.269861,
		36.389458, 36.190659, 27.378155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892536, 35.503952, 27.645758>,  <35.719521, 36.264832, 27.567059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892536, 35.503952, 27.645758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243622, 35.695625, 27.645178>,  <36.454273, 35.810631, 27.644829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243622, 35.695625, 27.645178>,  <35.892536, 35.503952, 27.645758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243622, 35.695625, 27.645178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314356, -0.573511, 0.756482,
		0.361662, -0.664430, -0.654013,
		0.877713, 0.479184, -0.001451,
		36.506935, 35.839382, 27.644743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341259, 34.978611, 27.765816>,  <35.892536, 35.503952, 27.645758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341259, 34.978611, 27.765816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552181, 35.304279, 27.863039>,  <36.678734, 35.499680, 27.921373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552181, 35.304279, 27.863039>,  <36.341259, 34.978611, 27.765816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552181, 35.304279, 27.863039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530310, -0.538861, 0.654523,
		0.663867, -0.216239, -0.715906,
		0.527307, 0.814168, 0.243058,
		36.710373, 35.548531, 27.935957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119244, 34.771877, 27.680750>,  <36.341259, 34.978611, 27.765816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119244, 34.771877, 27.680750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088154, 35.104465, 27.900793>,  <37.069500, 35.304016, 28.032820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088154, 35.104465, 27.900793>,  <37.119244, 34.771877, 27.680750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088154, 35.104465, 27.900793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574449, -0.413628, 0.706343,
		0.814842, 0.370906, -0.445489,
		-0.077720, 0.831469, 0.550108,
		37.064838, 35.353905, 28.065826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792770, 34.868145, 27.905075>,  <37.119244, 34.771877, 27.680750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792770, 34.868145, 27.905075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547779, 35.055836, 28.159538>,  <37.400784, 35.168449, 28.312216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547779, 35.055836, 28.159538>,  <37.792770, 34.868145, 27.905075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547779, 35.055836, 28.159538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622547, -0.209622, 0.753985,
		0.487143, 0.857838, -0.163727,
		-0.612476, 0.469226, 0.636160,
		37.364037, 35.196602, 28.350386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200783, 35.273666, 28.371443>,  <37.792770, 34.868145, 27.905075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200783, 35.273666, 28.371443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869209, 35.312260, 28.591829>,  <37.670265, 35.335415, 28.724062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869209, 35.312260, 28.591829>,  <38.200783, 35.273666, 28.371443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869209, 35.312260, 28.591829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547963, -0.057691, 0.834511,
		0.112302, 0.993661, -0.005048,
		-0.828930, 0.096483, 0.550968,
		37.620529, 35.341206, 28.757120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344795, 35.596653, 28.928343>,  <38.200783, 35.273666, 28.371443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344795, 35.596653, 28.928343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003853, 35.438377, 29.065113>,  <37.799286, 35.343410, 29.147175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003853, 35.438377, 29.065113>,  <38.344795, 35.596653, 28.928343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003853, 35.438377, 29.065113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374672, -0.005923, 0.927139,
		-0.364837, 0.918364, 0.153303,
		-0.852358, -0.395693, 0.341924,
		37.748146, 35.319668, 29.167690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124641, 35.952892, 29.393602>,  <38.344795, 35.596653, 28.928343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124641, 35.952892, 29.393602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935505, 35.612614, 29.485456>,  <37.822021, 35.408447, 29.540569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935505, 35.612614, 29.485456>,  <38.124641, 35.952892, 29.393602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935505, 35.612614, 29.485456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347859, 0.059225, 0.935675,
		-0.809577, 0.522307, 0.267919,
		-0.472842, -0.850698, 0.229636,
		37.793652, 35.357403, 29.554348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811928, 35.994492, 30.052490>,  <38.124641, 35.952892, 29.393602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811928, 35.994492, 30.052490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814819, 35.595917, 30.018883>,  <37.816555, 35.356773, 29.998718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814819, 35.595917, 30.018883>,  <37.811928, 35.994492, 30.052490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814819, 35.595917, 30.018883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280059, -0.078642, 0.956756,
		-0.959956, -0.030448, 0.278493,
		0.007230, -0.996438, -0.084020,
		37.816990, 35.296986, 29.993677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689892, 35.794243, 30.761206>,  <37.811928, 35.994492, 30.052490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689892, 35.794243, 30.761206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811668, 35.462322, 30.574123>,  <37.884735, 35.263168, 30.461874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811668, 35.462322, 30.574123>,  <37.689892, 35.794243, 30.761206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811668, 35.462322, 30.574123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410005, -0.329039, 0.850664,
		-0.859775, -0.450736, 0.240050,
		0.304439, -0.829801, -0.467704,
		37.903000, 35.213383, 30.433813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432053, 35.151337, 31.107323>,  <37.689892, 35.794243, 30.761206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432053, 35.151337, 31.107323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762451, 35.054707, 30.903612>,  <37.960690, 34.996727, 30.781385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762451, 35.054707, 30.903612>,  <37.432053, 35.151337, 31.107323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762451, 35.054707, 30.903612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413881, -0.353422, 0.838925,
		-0.382659, -0.903731, -0.191940,
		0.825999, -0.241582, -0.509278,
		38.010250, 34.982231, 30.750830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652084, 34.575882, 31.388397>,  <37.432053, 35.151337, 31.107323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652084, 34.575882, 31.388397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976784, 34.708710, 31.196232>,  <38.171604, 34.788406, 31.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976784, 34.708710, 31.196232>,  <37.652084, 34.575882, 31.388397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976784, 34.708710, 31.196232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574397, -0.305323, 0.759504,
		0.105524, -0.892474, -0.438583,
		0.811747, 0.332067, -0.480416,
		38.220306, 34.808331, 31.052107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168034, 34.068314, 31.611250>,  <37.652084, 34.575882, 31.388397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168034, 34.068314, 31.611250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386124, 34.368176, 31.461180>,  <38.516975, 34.548092, 31.371138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386124, 34.368176, 31.461180>,  <38.168034, 34.068314, 31.611250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386124, 34.368176, 31.461180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657114, -0.104302, 0.746540,
		0.520514, -0.653561, -0.549476,
		0.545221, 0.749653, -0.375173,
		38.549690, 34.593071, 31.348627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845421, 33.801163, 31.715416>,  <38.168034, 34.068314, 31.611250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845421, 33.801163, 31.715416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875767, 34.199089, 31.688330>,  <38.893974, 34.437843, 31.672079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875767, 34.199089, 31.688330>,  <38.845421, 33.801163, 31.715416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875767, 34.199089, 31.688330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693081, -0.003786, 0.720850,
		0.716857, -0.101615, -0.689776,
		0.075861, 0.994817, -0.067714,
		38.898525, 34.497536, 31.668016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530437, 34.027142, 31.804659>,  <38.845421, 33.801163, 31.715416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530437, 34.027142, 31.804659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366364, 34.382641, 31.886520>,  <39.267921, 34.595940, 31.935637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366364, 34.382641, 31.886520>,  <39.530437, 34.027142, 31.804659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366364, 34.382641, 31.886520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612548, 0.102222, 0.783796,
		0.675675, 0.446857, -0.586329,
		-0.410180, 0.888746, 0.204653,
		39.243309, 34.649265, 31.947916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075603, 34.505444, 31.987850>,  <39.530437, 34.027142, 31.804659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075603, 34.505444, 31.987850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733959, 34.638321, 32.147919>,  <39.528973, 34.718048, 32.243961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733959, 34.638321, 32.147919>,  <40.075603, 34.505444, 31.987850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733959, 34.638321, 32.147919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441778, 0.057371, 0.895288,
		0.274450, 0.941465, -0.195757,
		-0.854113, 0.332193, 0.400173,
		39.477726, 34.737980, 32.267971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234657, 35.033360, 32.471516>,  <40.075603, 34.505444, 31.987850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234657, 35.033360, 32.471516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870705, 34.907978, 32.580231>,  <39.652332, 34.832748, 32.645458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870705, 34.907978, 32.580231>,  <40.234657, 35.033360, 32.471516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870705, 34.907978, 32.580231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244490, 0.124143, 0.961672,
		-0.335179, 0.941454, -0.036319,
		-0.909879, -0.313452, 0.271786,
		39.597740, 34.813942, 32.661766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042622, 35.384914, 33.052933>,  <40.234657, 35.033360, 32.471516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042622, 35.384914, 33.052933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783833, 35.080997, 33.078686>,  <39.628559, 34.898647, 33.094139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783833, 35.080997, 33.078686>,  <40.042622, 35.384914, 33.052933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783833, 35.080997, 33.078686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000419, 0.084794, 0.996398,
		-0.762514, 0.644614, -0.055178,
		-0.646971, -0.759791, 0.064387,
		39.589741, 34.853062, 33.098003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444042, 35.615479, 33.569557>,  <40.042622, 35.384914, 33.052933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444042, 35.615479, 33.569557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456184, 35.216431, 33.544804>,  <39.463470, 34.977001, 33.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456184, 35.216431, 33.544804>,  <39.444042, 35.615479, 33.569557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456184, 35.216431, 33.544804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138979, -0.065519, 0.988125,
		-0.989830, -0.021390, -0.140638,
		0.030351, -0.997622, -0.061880,
		39.465290, 34.917145, 33.526241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935074, 35.345310, 34.118275>,  <39.444042, 35.615479, 33.569557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935074, 35.345310, 34.118275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155876, 35.024029, 34.028690>,  <39.288357, 34.831261, 33.974941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155876, 35.024029, 34.028690>,  <38.935074, 35.345310, 34.118275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155876, 35.024029, 34.028690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051042, -0.235539, 0.970524,
		-0.832278, -0.547164, -0.089021,
		0.552003, -0.803202, -0.223962,
		39.321476, 34.783070, 33.961502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528728, 34.695976, 34.330013>,  <38.935074, 35.345310, 34.118275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528728, 34.695976, 34.330013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920715, 34.616642, 34.322769>,  <39.155907, 34.569042, 34.318424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920715, 34.616642, 34.322769>,  <38.528728, 34.695976, 34.330013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920715, 34.616642, 34.322769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046159, -0.314641, 0.948088,
		-0.193737, -0.928259, -0.317492,
		0.979967, -0.198335, -0.018110,
		39.214706, 34.557140, 34.317337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567951, 34.199821, 34.863640>,  <38.528728, 34.695976, 34.330013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567951, 34.199821, 34.863640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959557, 34.246834, 34.797047>,  <39.194519, 34.275040, 34.757092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959557, 34.246834, 34.797047>,  <38.567951, 34.199821, 34.863640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959557, 34.246834, 34.797047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203452, -0.516716, 0.831632,
		0.011713, -0.848052, -0.529784,
		0.979015, 0.117527, -0.166486,
		39.253262, 34.282093, 34.747101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860703, 33.515888, 34.982006>,  <38.567951, 34.199821, 34.863640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860703, 33.515888, 34.982006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147865, 33.790039, 35.030773>,  <39.320164, 33.954529, 35.060032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147865, 33.790039, 35.030773>,  <38.860703, 33.515888, 34.982006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147865, 33.790039, 35.030773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364605, -0.519386, 0.772853,
		0.593015, -0.510390, -0.622765,
		0.717912, 0.685376, 0.121913,
		39.363239, 33.995651, 35.067348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473400, 33.184429, 35.167492>,  <38.860703, 33.515888, 34.982006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473400, 33.184429, 35.167492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554100, 33.550694, 35.306553>,  <39.602520, 33.770451, 35.389988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554100, 33.550694, 35.306553>,  <39.473400, 33.184429, 35.167492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554100, 33.550694, 35.306553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462340, -0.401948, 0.790367,
		0.863446, 0.001279, -0.504439,
		0.201747, 0.915661, 0.347652,
		39.614624, 33.825394, 35.410847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144382, 33.108990, 35.441059>,  <39.473400, 33.184429, 35.167492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144382, 33.108990, 35.441059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984299, 33.435760, 35.607174>,  <39.888248, 33.631824, 35.706841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984299, 33.435760, 35.607174>,  <40.144382, 33.108990, 35.441059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984299, 33.435760, 35.607174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299212, -0.311839, 0.901792,
		0.866200, 0.485166, -0.119632,
		-0.400213, 0.816927, 0.415283,
		39.864235, 33.680840, 35.731758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721317, 33.394028, 35.971951>,  <40.144382, 33.108990, 35.441059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721317, 33.394028, 35.971951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378536, 33.557804, 36.097160>,  <40.172867, 33.656071, 36.172287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378536, 33.557804, 36.097160>,  <40.721317, 33.394028, 35.971951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378536, 33.557804, 36.097160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216030, -0.266075, 0.939433,
		0.467930, 0.872676, 0.139564,
		-0.856955, 0.409439, 0.313029,
		40.121449, 33.680637, 36.191071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933811, 33.713287, 36.567245>,  <40.721317, 33.394028, 35.971951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933811, 33.713287, 36.567245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538803, 33.654987, 36.591091>,  <40.301796, 33.620007, 36.605396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538803, 33.654987, 36.591091>,  <40.933811, 33.713287, 36.567245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538803, 33.654987, 36.591091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100525, -0.292107, 0.951088,
		-0.121206, 0.945215, 0.303114,
		-0.987524, -0.145748, 0.059612,
		40.242546, 33.611263, 36.608974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766697, 34.119129, 37.204906>,  <40.933811, 33.713287, 36.567245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766697, 34.119129, 37.204906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510647, 33.825142, 37.115402>,  <40.357018, 33.648750, 37.061699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510647, 33.825142, 37.115402>,  <40.766697, 34.119129, 37.204906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510647, 33.825142, 37.115402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178568, -0.425611, 0.887113,
		-0.747233, 0.527903, 0.403684,
		-0.640122, -0.734965, -0.223764,
		40.318611, 33.604652, 37.048271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273907, 34.111641, 37.770145>,  <40.766697, 34.119129, 37.204906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273907, 34.111641, 37.770145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264111, 33.762173, 37.575787>,  <40.258232, 33.552490, 37.459171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264111, 33.762173, 37.575787>,  <40.273907, 34.111641, 37.770145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264111, 33.762173, 37.575787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409231, -0.452217, 0.792483,
		-0.912102, -0.179434, 0.368610,
		-0.024493, -0.873672, -0.485898,
		40.256763, 33.500072, 37.430016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950939, 34.785633, 38.033054>,  <40.273907, 34.111641, 37.770145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950939, 34.785633, 38.033054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110687, 35.134144, 38.147171>,  <40.206535, 35.343250, 38.215641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110687, 35.134144, 38.147171>,  <39.950939, 34.785633, 38.033054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110687, 35.134144, 38.147171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608464, 0.484664, -0.628389,
		-0.685769, 0.077368, 0.723696,
		0.399366, 0.871272, 0.285292,
		40.230495, 35.395527, 38.232758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403412, 35.282612, 38.169029>,  <39.950939, 34.785633, 38.033054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403412, 35.282612, 38.169029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725677, 35.486523, 38.048340>,  <39.919037, 35.608871, 37.975925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725677, 35.486523, 38.048340>,  <39.403412, 35.282612, 38.169029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725677, 35.486523, 38.048340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590592, 0.651703, -0.475905,
		-0.045973, 0.561612, 0.826123,
		0.805660, 0.509780, -0.301722,
		39.967377, 35.639458, 37.957825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092842, 35.861858, 38.080231>,  <39.403412, 35.282612, 38.169029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092842, 35.861858, 38.080231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437355, 35.859600, 37.876991>,  <39.644062, 35.858246, 37.755047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437355, 35.859600, 37.876991>,  <39.092842, 35.861858, 38.080231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437355, 35.859600, 37.876991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434760, 0.509420, -0.742614,
		0.263027, 0.860500, 0.436299,
		0.861279, -0.005642, -0.508102,
		39.695740, 35.857906, 37.724560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248714, 36.559967, 37.941925>,  <39.092842, 35.861858, 38.080231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248714, 36.559967, 37.941925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425083, 36.325089, 37.670399>,  <39.530903, 36.184162, 37.507484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425083, 36.325089, 37.670399>,  <39.248714, 36.559967, 37.941925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425083, 36.325089, 37.670399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478654, 0.485944, -0.731265,
		0.759264, 0.647345, -0.066804,
		0.440918, -0.587199, -0.678814,
		39.557358, 36.148930, 37.466755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308369, 37.085564, 37.508656>,  <39.248714, 36.559967, 37.941925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308369, 37.085564, 37.508656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401909, 36.765408, 37.287861>,  <39.458031, 36.573315, 37.155384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401909, 36.765408, 37.287861>,  <39.308369, 37.085564, 37.508656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401909, 36.765408, 37.287861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252559, 0.498238, -0.829441,
		0.938898, 0.333373, -0.085634,
		0.233848, -0.800388, -0.551991,
		39.472065, 36.525291, 37.122265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842972, 37.307476, 36.928913>,  <39.308369, 37.085564, 37.508656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842972, 37.307476, 36.928913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651726, 36.974541, 36.816757>,  <39.536980, 36.774780, 36.749462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651726, 36.974541, 36.816757>,  <39.842972, 37.307476, 36.928913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651726, 36.974541, 36.816757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191094, 0.410176, -0.891761,
		0.857257, -0.372783, -0.355166,
		-0.478114, -0.832339, -0.280390,
		39.508293, 36.724838, 36.732639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205704, 37.117367, 36.237110>,  <39.842972, 37.307476, 36.928913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205704, 37.117367, 36.237110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842697, 36.953434, 36.273872>,  <39.624893, 36.855076, 36.295929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842697, 36.953434, 36.273872>,  <40.205704, 37.117367, 36.237110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842697, 36.953434, 36.273872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240630, 0.327975, -0.913526,
		0.344258, -0.851154, -0.396263,
		-0.907515, -0.409841, 0.091905,
		39.570442, 36.830486, 36.301445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018127, 36.870537, 35.564449>,  <40.205704, 37.117367, 36.237110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018127, 36.870537, 35.564449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663704, 36.924194, 35.741947>,  <39.451050, 36.956390, 35.848446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663704, 36.924194, 35.741947>,  <40.018127, 36.870537, 35.564449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663704, 36.924194, 35.741947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348739, 0.437776, -0.828694,
		-0.305426, -0.889020, -0.341113,
		-0.886057, 0.134145, 0.443744,
		39.397888, 36.964439, 35.875069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607143, 36.622887, 35.093998>,  <40.018127, 36.870537, 35.564449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607143, 36.622887, 35.093998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353924, 36.861202, 35.291702>,  <39.201992, 37.004192, 35.410324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353924, 36.861202, 35.291702>,  <39.607143, 36.622887, 35.093998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353924, 36.861202, 35.291702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376494, 0.320924, -0.869057,
		-0.676392, -0.736238, 0.021152,
		-0.633045, 0.595787, 0.494260,
		39.164009, 37.039940, 35.439980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909039, 36.445969, 34.833492>,  <39.607143, 36.622887, 35.093998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909039, 36.445969, 34.833492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864090, 36.809147, 34.994991>,  <38.837120, 37.027054, 35.091888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864090, 36.809147, 34.994991>,  <38.909039, 36.445969, 34.833492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864090, 36.809147, 34.994991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518147, 0.293165, -0.803479,
		-0.847878, -0.299484, 0.437506,
		-0.112367, 0.907945, 0.403744,
		38.830379, 37.081532, 35.116116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288723, 36.647861, 34.692768>,  <38.909039, 36.445969, 34.833492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288723, 36.647861, 34.692768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470520, 36.996914, 34.764267>,  <38.579597, 37.206345, 34.807167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470520, 36.996914, 34.764267>,  <38.288723, 36.647861, 34.692768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470520, 36.996914, 34.764267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453347, 0.399344, -0.796869,
		-0.766755, 0.281136, 0.577104,
		0.454492, 0.872632, 0.178747,
		38.606869, 37.258705, 34.817890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779442, 37.129200, 34.542419>,  <38.288723, 36.647861, 34.692768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779442, 37.129200, 34.542419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086109, 37.386009, 34.540344>,  <38.270107, 37.540096, 34.539097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086109, 37.386009, 34.540344>,  <37.779442, 37.129200, 34.542419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086109, 37.386009, 34.540344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424595, 0.500925, -0.754184,
		-0.481605, 0.580411, 0.656642,
		0.766666, 0.642026, -0.005192,
		38.316109, 37.578617, 34.538788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314938, 37.780003, 34.541119>,  <37.779442, 37.129200, 34.542419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314938, 37.780003, 34.541119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662224, 37.853455, 34.356739>,  <37.870598, 37.897526, 34.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662224, 37.853455, 34.356739>,  <37.314938, 37.780003, 34.541119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662224, 37.853455, 34.356739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495669, 0.363129, -0.788954,
		0.022509, 0.913464, 0.406295,
		0.868220, 0.183629, -0.460950,
		37.922691, 37.908543, 34.218452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181820, 38.507824, 34.279434>,  <37.314938, 37.780003, 34.541119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181820, 38.507824, 34.279434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490707, 38.348930, 34.081089>,  <37.676041, 38.253593, 33.962082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490707, 38.348930, 34.081089>,  <37.181820, 38.507824, 34.279434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490707, 38.348930, 34.081089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406310, 0.291254, -0.866073,
		0.488457, 0.870273, 0.063512,
		0.772219, -0.397234, -0.495866,
		37.722374, 38.229759, 33.932331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370434, 39.048992, 33.733761>,  <37.181820, 38.507824, 34.279434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370434, 39.048992, 33.733761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529915, 38.698463, 33.625618>,  <37.625603, 38.488148, 33.560730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529915, 38.698463, 33.625618>,  <37.370434, 39.048992, 33.733761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529915, 38.698463, 33.625618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324395, 0.140981, -0.935357,
		0.857789, 0.460635, -0.228064,
		0.398706, -0.876322, -0.270359,
		37.649525, 38.435566, 33.544510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720741, 39.191700, 33.110538>,  <37.370434, 39.048992, 33.733761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720741, 39.191700, 33.110538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675327, 38.794289, 33.108917>,  <37.648079, 38.555843, 33.107944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675327, 38.794289, 33.108917>,  <37.720741, 39.191700, 33.110538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675327, 38.794289, 33.108917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421031, 0.051807, -0.905566,
		0.899913, -0.101108, -0.424187,
		-0.113536, -0.993526, -0.004052,
		37.641266, 38.496231, 33.107700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971214, 39.070587, 32.494545>,  <37.720741, 39.191700, 33.110538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971214, 39.070587, 32.494545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775280, 38.734978, 32.589291>,  <37.657719, 38.533611, 32.646137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775280, 38.734978, 32.589291>,  <37.971214, 39.070587, 32.494545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775280, 38.734978, 32.589291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226790, -0.139704, -0.963872,
		0.841798, -0.525861, -0.121849,
		-0.489840, -0.839019, 0.236862,
		37.628326, 38.483273, 32.660351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245594, 38.524036, 32.160007>,  <37.971214, 39.070587, 32.494545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245594, 38.524036, 32.160007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869106, 38.407242, 32.227951>,  <37.643215, 38.337166, 32.268719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869106, 38.407242, 32.227951>,  <38.245594, 38.524036, 32.160007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869106, 38.407242, 32.227951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124054, -0.168931, -0.977790,
		0.314193, -0.941386, 0.122779,
		-0.941219, -0.291984, 0.169860,
		37.586742, 38.319645, 32.278908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112644, 37.983871, 31.646057>,  <38.245594, 38.524036, 32.160007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112644, 37.983871, 31.646057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738903, 38.062172, 31.765162>,  <37.514656, 38.109154, 31.836624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738903, 38.062172, 31.765162>,  <38.112644, 37.983871, 31.646057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738903, 38.062172, 31.765162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339049, -0.231199, -0.911917,
		-0.109663, -0.953011, 0.282390,
		-0.934355, 0.195748, 0.297764,
		37.458595, 38.120895, 31.854490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751106, 37.451599, 31.244839>,  <38.112644, 37.983871, 31.646057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751106, 37.451599, 31.244839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487049, 37.738110, 31.335310>,  <37.328613, 37.910015, 31.389593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487049, 37.738110, 31.335310>,  <37.751106, 37.451599, 31.244839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487049, 37.738110, 31.335310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097162, 0.217158, -0.971289,
		-0.744825, -0.663170, -0.073762,
		-0.660148, 0.716274, 0.226180,
		37.289005, 37.952991, 31.403164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153442, 37.257912, 30.901367>,  <37.751106, 37.451599, 31.244839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153442, 37.257912, 30.901367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108604, 37.648026, 30.977522>,  <37.081703, 37.882095, 31.023214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108604, 37.648026, 30.977522>,  <37.153442, 37.257912, 30.901367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108604, 37.648026, 30.977522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374839, 0.135938, -0.917070,
		-0.920289, -0.174163, 0.350338,
		-0.112095, 0.975289, 0.190386,
		37.074974, 37.940613, 31.034637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535946, 37.398880, 30.778038>,  <37.153442, 37.257912, 30.901367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535946, 37.398880, 30.778038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706970, 37.758553, 30.740795>,  <36.809586, 37.974354, 30.718449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706970, 37.758553, 30.740795>,  <36.535946, 37.398880, 30.778038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706970, 37.758553, 30.740795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434155, 0.113913, -0.893607,
		-0.792905, 0.422496, 0.439088,
		0.427563, 0.899178, -0.093107,
		36.835239, 38.028305, 30.712864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126934, 37.680641, 30.252579>,  <36.535946, 37.398880, 30.778038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126934, 37.680641, 30.252579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431232, 37.940201, 30.246944>,  <36.613811, 38.095936, 30.243565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431232, 37.940201, 30.246944>,  <36.126934, 37.680641, 30.252579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431232, 37.940201, 30.246944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084654, 0.077683, -0.993378,
		-0.643507, 0.756899, 0.114029,
		0.760744, 0.648899, -0.014085,
		36.659454, 38.134869, 30.242720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899555, 38.301872, 29.846331>,  <36.126934, 37.680641, 30.252579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899555, 38.301872, 29.846331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298420, 38.271774, 29.846485>,  <36.537739, 38.253716, 29.846579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298420, 38.271774, 29.846485>,  <35.899555, 38.301872, 29.846331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298420, 38.271774, 29.846485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012556, 0.161321, -0.986822,
		0.074195, 0.984029, 0.161809,
		0.997165, -0.075249, 0.000386,
		36.597569, 38.249199, 29.846601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104408, 38.769600, 29.295630>,  <35.899555, 38.301872, 29.846331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104408, 38.769600, 29.295630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400673, 38.511715, 29.371281>,  <36.578430, 38.356983, 29.416672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400673, 38.511715, 29.371281>,  <36.104408, 38.769600, 29.295630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400673, 38.511715, 29.371281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267390, 0.024606, -0.963274,
		0.616383, 0.764028, 0.190615,
		0.740659, -0.644714, 0.189127,
		36.622871, 38.318302, 29.428019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676376, 39.068268, 28.947119>,  <36.104408, 38.769600, 29.295630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676376, 39.068268, 28.947119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748093, 38.678493, 29.001280>,  <36.791122, 38.444630, 29.033777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748093, 38.678493, 29.001280>,  <36.676376, 39.068268, 28.947119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748093, 38.678493, 29.001280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503249, -0.027422, -0.863706,
		0.845337, 0.222998, 0.485466,
		0.179293, -0.974433, 0.135405,
		36.801880, 38.386162, 29.041901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358994, 39.080997, 28.825069>,  <36.676376, 39.068268, 28.947119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358994, 39.080997, 28.825069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235661, 38.704388, 28.770731>,  <37.161659, 38.478420, 28.738129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235661, 38.704388, 28.770731>,  <37.358994, 39.080997, 28.825069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235661, 38.704388, 28.770731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523358, -0.048648, -0.850723,
		0.794371, -0.333403, 0.507756,
		-0.308335, -0.941528, -0.135845,
		37.143162, 38.421928, 28.729977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015034, 38.652634, 28.684925>,  <37.358994, 39.080997, 28.825069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015034, 38.652634, 28.684925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683460, 38.493866, 28.527279>,  <37.484516, 38.398605, 28.432692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683460, 38.493866, 28.527279>,  <38.015034, 38.652634, 28.684925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683460, 38.493866, 28.527279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409988, 0.048167, -0.910818,
		0.380508, -0.916587, 0.122807,
		-0.828929, -0.396923, -0.394118,
		37.434780, 38.374790, 28.409044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250004, 38.291382, 28.083031>,  <38.015034, 38.652634, 28.684925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250004, 38.291382, 28.083031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856815, 38.315056, 28.013449>,  <37.620903, 38.329258, 27.971699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856815, 38.315056, 28.013449>,  <38.250004, 38.291382, 28.083031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856815, 38.315056, 28.013449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183744, 0.322989, -0.928394,
		0.001242, -0.944551, -0.328364,
		-0.982973, 0.059182, -0.173957,
		37.561924, 38.332809, 27.961262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022541, 38.240913, 27.275129>,  <38.250004, 38.291382, 28.083031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022541, 38.240913, 27.275129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690891, 38.431355, 27.392351>,  <37.491901, 38.545620, 27.462685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690891, 38.431355, 27.392351>,  <38.022541, 38.240913, 27.275129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690891, 38.431355, 27.392351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120341, 0.359909, -0.925194,
		-0.545958, -0.802368, -0.241115,
		-0.829125, 0.476101, 0.293053,
		37.442154, 38.574184, 27.480267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660877, 38.272030, 26.633430>,  <38.022541, 38.240913, 27.275129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660877, 38.272030, 26.633430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435669, 38.506409, 26.866556>,  <37.300545, 38.647038, 27.006432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435669, 38.506409, 26.866556>,  <37.660877, 38.272030, 26.633430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435669, 38.506409, 26.866556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251792, 0.550064, -0.796260,
		-0.787156, -0.595056, -0.162157,
		-0.563016, 0.585951, 0.582816,
		37.266766, 38.682194, 27.041401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901161, 38.265541, 26.367701>,  <37.660877, 38.272030, 26.633430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901161, 38.265541, 26.367701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019203, 38.603825, 26.545549>,  <37.090027, 38.806793, 26.652258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019203, 38.603825, 26.545549>,  <36.901161, 38.265541, 26.367701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019203, 38.603825, 26.545549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372207, 0.530338, -0.761711,
		-0.879987, 0.059291, 0.471283,
		0.295102, 0.845711, 0.444622,
		37.107735, 38.857536, 26.678936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549641, 38.820797, 25.984165>,  <36.901161, 38.265541, 26.367701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549641, 38.820797, 25.984165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757019, 39.049477, 26.238525>,  <36.881447, 39.186684, 26.391142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757019, 39.049477, 26.238525>,  <36.549641, 38.820797, 25.984165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757019, 39.049477, 26.238525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029034, 0.731451, -0.681275,
		-0.854615, 0.371670, 0.362622,
		0.518450, 0.571699, 0.635900,
		36.912556, 39.220985, 26.429296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228424, 39.492031, 26.037380>,  <36.549641, 38.820797, 25.984165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228424, 39.492031, 26.037380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622746, 39.499825, 26.104078>,  <36.859341, 39.504501, 26.144096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622746, 39.499825, 26.104078>,  <36.228424, 39.492031, 26.037380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622746, 39.499825, 26.104078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107358, 0.690422, -0.715396,
		-0.129063, 0.723144, 0.678532,
		0.985808, 0.019485, 0.166744,
		36.918488, 39.505669, 26.154102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386642, 40.143116, 26.032040>,  <36.228424, 39.492031, 26.037380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386642, 40.143116, 26.032040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744610, 39.971859, 25.981749>,  <36.959393, 39.869106, 25.951574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744610, 39.971859, 25.981749>,  <36.386642, 40.143116, 26.032040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744610, 39.971859, 25.981749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256568, 0.724247, -0.640031,
		0.365083, 0.540520, 0.757993,
		0.894923, -0.428141, -0.125730,
		37.013088, 39.843418, 25.944029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799896, 40.769424, 25.951056>,  <36.386642, 40.143116, 26.032040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799896, 40.769424, 25.951056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002609, 40.470589, 25.778994>,  <37.124237, 40.291286, 25.675756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002609, 40.470589, 25.778994>,  <36.799896, 40.769424, 25.951056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002609, 40.470589, 25.778994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101932, 0.547404, -0.830637,
		0.856027, 0.377105, 0.353566,
		0.506781, -0.747088, -0.430154,
		37.154644, 40.246464, 25.649948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456436, 41.055397, 25.667929>,  <36.799896, 40.769424, 25.951056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456436, 41.055397, 25.667929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383137, 40.714802, 25.471405>,  <37.339157, 40.510445, 25.353491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383137, 40.714802, 25.471405>,  <37.456436, 41.055397, 25.667929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383137, 40.714802, 25.471405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060488, 0.489057, -0.870152,
		0.981204, -0.189171, -0.038114,
		-0.183248, -0.851491, -0.491307,
		37.328163, 40.459354, 25.324013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039375, 40.940441, 25.251932>,  <37.456436, 41.055397, 25.667929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039375, 40.940441, 25.251932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736492, 40.737221, 25.087732>,  <37.554760, 40.615288, 24.989212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736492, 40.737221, 25.087732>,  <38.039375, 40.940441, 25.251932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736492, 40.737221, 25.087732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180565, 0.441162, -0.879075,
		0.627716, -0.739768, -0.242315,
		-0.757212, -0.508056, -0.410501,
		37.509327, 40.584805, 24.964582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063725, 41.338905, 24.446190>,  <38.039375, 40.940441, 25.251932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063725, 41.338905, 24.446190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443985, 41.453705, 24.399035>,  <38.672142, 41.522583, 24.370741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443985, 41.453705, 24.399035>,  <38.063725, 41.338905, 24.446190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443985, 41.453705, 24.399035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199464, -0.274284, 0.940735,
		0.237651, -0.917825, -0.317994,
		0.950651, 0.286995, -0.117889,
		38.729179, 41.539803, 24.363668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557465, 40.854359, 24.595423>,  <38.063725, 41.338905, 24.446190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557465, 40.854359, 24.595423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778564, 41.184811, 24.639208>,  <38.911224, 41.383083, 24.665478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778564, 41.184811, 24.639208>,  <38.557465, 40.854359, 24.595423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778564, 41.184811, 24.639208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238993, -0.282980, 0.928873,
		0.798344, -0.487272, -0.353855,
		0.552748, 0.826129, 0.109461,
		38.944389, 41.432648, 24.672047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124786, 40.599785, 24.939781>,  <38.557465, 40.854359, 24.595423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124786, 40.599785, 24.939781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150627, 40.998379, 24.961142>,  <39.166134, 41.237534, 24.973957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150627, 40.998379, 24.961142>,  <39.124786, 40.599785, 24.939781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150627, 40.998379, 24.961142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165563, -0.063474, 0.984154,
		0.984081, -0.054742, -0.169082,
		0.064607, 0.996481, 0.053400,
		39.170010, 41.297321, 24.977161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753738, 40.789032, 25.207535>,  <39.124786, 40.599785, 24.939781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753738, 40.789032, 25.207535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502861, 41.088474, 25.293530>,  <39.352333, 41.268139, 25.345127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502861, 41.088474, 25.293530>,  <39.753738, 40.789032, 25.207535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502861, 41.088474, 25.293530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139862, -0.163290, 0.976614,
		0.766201, 0.642597, -0.002287,
		-0.627196, 0.748603, 0.214988,
		39.314701, 41.313057, 25.358027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033108, 41.124905, 25.796917>,  <39.753738, 40.789032, 25.207535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033108, 41.124905, 25.796917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667015, 41.285633, 25.785013>,  <39.447361, 41.382072, 25.777870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667015, 41.285633, 25.785013>,  <40.033108, 41.124905, 25.796917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667015, 41.285633, 25.785013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033463, 0.149409, 0.988209,
		0.401534, 0.903446, -0.150190,
		-0.915233, 0.401825, -0.029760,
		39.392445, 41.406181, 25.776085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062534, 41.687466, 26.253305>,  <40.033108, 41.124905, 25.796917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062534, 41.687466, 26.253305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673775, 41.596527, 26.228914>,  <39.440517, 41.541965, 26.214279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673775, 41.596527, 26.228914>,  <40.062534, 41.687466, 26.253305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673775, 41.596527, 26.228914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068418, 0.024979, 0.997344,
		-0.225218, 0.973494, -0.039831,
		-0.971903, -0.227345, -0.060979,
		39.382202, 41.528324, 26.210621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650398, 42.175018, 26.713108>,  <40.062534, 41.687466, 26.253305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650398, 42.175018, 26.713108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445656, 41.833458, 26.675478>,  <39.322811, 41.628521, 26.652901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445656, 41.833458, 26.675478>,  <39.650398, 42.175018, 26.713108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445656, 41.833458, 26.675478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116201, -0.039680, 0.992433,
		-0.851177, 0.518914, -0.078914,
		-0.511855, -0.853905, -0.094073,
		39.292099, 41.577286, 26.647257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307812, 42.155205, 27.306318>,  <39.650398, 42.175018, 26.713108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307812, 42.155205, 27.306318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234901, 41.788067, 27.165272>,  <39.191154, 41.567783, 27.080645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234901, 41.788067, 27.165272>,  <39.307812, 42.155205, 27.306318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234901, 41.788067, 27.165272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285110, -0.293876, 0.912331,
		-0.941003, 0.266832, -0.208120,
		-0.182278, -0.917844, -0.352615,
		39.180218, 41.512714, 27.059486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795971, 41.907825, 27.696451>,  <39.307812, 42.155205, 27.306318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795971, 41.907825, 27.696451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934357, 41.561817, 27.551098>,  <39.017387, 41.354214, 27.463886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934357, 41.561817, 27.551098>,  <38.795971, 41.907825, 27.696451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934357, 41.561817, 27.551098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110365, -0.422129, 0.899792,
		-0.931733, -0.271194, -0.241511,
		0.345967, -0.865021, -0.363381,
		39.038147, 41.302311, 27.442083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273045, 41.367279, 27.942194>,  <38.795971, 41.907825, 27.696451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273045, 41.367279, 27.942194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624390, 41.195721, 27.857780>,  <38.835197, 41.092785, 27.807133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624390, 41.195721, 27.857780>,  <38.273045, 41.367279, 27.942194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624390, 41.195721, 27.857780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045000, -0.365337, 0.929787,
		-0.475879, -0.826183, -0.301597,
		0.878359, -0.428894, -0.211034,
		38.887897, 41.067051, 27.794470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265724, 40.712254, 28.219809>,  <38.273045, 41.367279, 27.942194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265724, 40.712254, 28.219809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658413, 40.779125, 28.183424>,  <38.894028, 40.819248, 28.161592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658413, 40.779125, 28.183424>,  <38.265724, 40.712254, 28.219809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658413, 40.779125, 28.183424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152557, -0.405458, 0.901294,
		0.113795, -0.898696, -0.423551,
		0.981721, 0.167179, -0.090963,
		38.952930, 40.829277, 28.156136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512951, 40.073181, 28.484850>,  <38.265724, 40.712254, 28.219809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512951, 40.073181, 28.484850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826145, 40.321968, 28.488667>,  <39.014061, 40.471241, 28.490957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826145, 40.321968, 28.488667>,  <38.512951, 40.073181, 28.484850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826145, 40.321968, 28.488667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236279, -0.311571, 0.920378,
		0.575418, -0.718388, -0.390913,
		0.782986, 0.621966, 0.009544,
		39.061043, 40.508556, 28.491529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047230, 39.756767, 28.621878>,  <38.512951, 40.073181, 28.484850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047230, 39.756767, 28.621878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176147, 40.123695, 28.715397>,  <39.253498, 40.343853, 28.771509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176147, 40.123695, 28.715397>,  <39.047230, 39.756767, 28.621878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176147, 40.123695, 28.715397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189108, -0.304386, 0.933588,
		0.927560, -0.256673, -0.271572,
		0.322289, 0.917316, 0.233798,
		39.272835, 40.398891, 28.785536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691849, 39.653778, 28.923130>,  <39.047230, 39.756767, 28.621878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691849, 39.653778, 28.923130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548119, 40.005127, 29.049212>,  <39.461880, 40.215935, 29.124861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548119, 40.005127, 29.049212>,  <39.691849, 39.653778, 28.923130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548119, 40.005127, 29.049212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097195, -0.300698, 0.948754,
		0.928136, 0.371550, 0.022677,
		-0.359329, 0.878368, 0.315202,
		39.440319, 40.268639, 29.143772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242832, 40.032745, 29.403730>,  <39.691849, 39.653778, 28.923130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242832, 40.032745, 29.403730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888504, 40.202785, 29.478144>,  <39.675907, 40.304810, 29.522793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888504, 40.202785, 29.478144>,  <40.242832, 40.032745, 29.403730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888504, 40.202785, 29.478144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208769, 0.007062, 0.977939,
		0.414405, 0.905120, -0.095003,
		-0.885824, 0.425096, 0.186034,
		39.622757, 40.330315, 29.533955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450951, 40.510586, 29.881021>,  <40.242832, 40.032745, 29.403730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450951, 40.510586, 29.881021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054062, 40.465366, 29.901892>,  <39.815929, 40.438236, 29.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054062, 40.465366, 29.901892>,  <40.450951, 40.510586, 29.881021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054062, 40.465366, 29.901892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061001, -0.076056, 0.995236,
		-0.108541, 0.990674, 0.082360,
		-0.992219, -0.113048, 0.052177,
		39.756397, 40.431454, 29.917545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170158, 40.956905, 30.395437>,  <40.450951, 40.510586, 29.881021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170158, 40.956905, 30.395437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883270, 40.680714, 30.357826>,  <39.711140, 40.514999, 30.335260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883270, 40.680714, 30.357826>,  <40.170158, 40.956905, 30.395437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883270, 40.680714, 30.357826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032795, -0.101339, 0.994311,
		-0.696076, 0.716222, 0.050038,
		-0.717219, -0.690475, -0.094028,
		39.668106, 40.473572, 30.329618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681900, 41.182518, 30.885130>,  <40.170158, 40.956905, 30.395437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681900, 41.182518, 30.885130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606697, 40.793762, 30.828442>,  <39.561577, 40.560509, 30.794428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606697, 40.793762, 30.828442>,  <39.681900, 41.182518, 30.885130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606697, 40.793762, 30.828442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187490, -0.106129, 0.976517,
		-0.964107, 0.210161, -0.162266,
		-0.188005, -0.971889, -0.141723,
		39.550297, 40.502197, 30.785925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107597, 40.935478, 31.407957>,  <39.681900, 41.182518, 30.885130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107597, 40.935478, 31.407957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306145, 40.607170, 31.294844>,  <39.425274, 40.410187, 31.226976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306145, 40.607170, 31.294844>,  <39.107597, 40.935478, 31.407957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306145, 40.607170, 31.294844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070323, -0.362689, 0.929253,
		-0.865261, -0.441362, -0.237745,
		0.496365, -0.820765, -0.282783,
		39.455055, 40.360939, 31.210009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730228, 40.232971, 31.646645>,  <39.107597, 40.935478, 31.407957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730228, 40.232971, 31.646645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102215, 40.112263, 31.562651>,  <39.325405, 40.039837, 31.512255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102215, 40.112263, 31.562651>,  <38.730228, 40.232971, 31.646645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102215, 40.112263, 31.562651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016975, -0.535318, 0.844480,
		-0.367249, -0.788904, -0.492706,
		0.929968, -0.301771, -0.209986,
		39.381207, 40.021732, 31.499655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733990, 39.587055, 31.912451>,  <38.730228, 40.232971, 31.646645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733990, 39.587055, 31.912451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125725, 39.647633, 31.858843>,  <39.360767, 39.683979, 31.826677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125725, 39.647633, 31.858843>,  <38.733990, 39.587055, 31.912451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125725, 39.647633, 31.858843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181973, -0.370839, 0.910694,
		0.088222, -0.916265, -0.390736,
		0.979338, 0.151447, -0.134020,
		39.419525, 39.693066, 31.818636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100224, 38.968525, 32.137272>,  <38.733990, 39.587055, 31.912451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100224, 38.968525, 32.137272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379295, 39.255089, 32.136974>,  <39.546738, 39.427029, 32.136795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379295, 39.255089, 32.136974>,  <39.100224, 38.968525, 32.137272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379295, 39.255089, 32.136974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399710, -0.388392, 0.830291,
		0.594541, -0.579573, -0.557330,
		0.697677, 0.716412, -0.000746,
		39.588600, 39.470013, 32.136749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627186, 38.635265, 32.090256>,  <39.100224, 38.968525, 32.137272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627186, 38.635265, 32.090256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759853, 38.979866, 32.244038>,  <39.839455, 39.186626, 32.336308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759853, 38.979866, 32.244038>,  <39.627186, 38.635265, 32.090256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759853, 38.979866, 32.244038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595237, -0.507266, 0.623197,
		0.731907, 0.022146, -0.681044,
		0.331670, 0.861505, 0.384453,
		39.859356, 39.238319, 32.359375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266144, 38.442917, 32.244408>,  <39.627186, 38.635265, 32.090256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266144, 38.442917, 32.244408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195995, 38.778488, 32.450497>,  <40.153908, 38.979832, 32.574150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195995, 38.778488, 32.450497>,  <40.266144, 38.442917, 32.244408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195995, 38.778488, 32.450497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557658, -0.346634, 0.754230,
		0.811335, 0.419585, -0.407044,
		-0.175368, 0.838924, 0.515221,
		40.143387, 39.030167, 32.605064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916927, 38.585430, 32.529480>,  <40.266144, 38.442917, 32.244408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916927, 38.585430, 32.529480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662258, 38.807625, 32.743427>,  <40.509457, 38.940941, 32.871796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662258, 38.807625, 32.743427>,  <40.916927, 38.585430, 32.529480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662258, 38.807625, 32.743427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435185, -0.313784, 0.843892,
		0.636604, 0.770048, -0.041962,
		-0.636671, 0.555486, 0.534869,
		40.471256, 38.974270, 32.903889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243134, 38.877556, 33.003475>,  <40.916927, 38.585430, 32.529480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243134, 38.877556, 33.003475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870850, 38.892738, 33.148991>,  <40.647480, 38.901848, 33.236298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870850, 38.892738, 33.148991>,  <41.243134, 38.877556, 33.003475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870850, 38.892738, 33.148991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329519, -0.344654, 0.878995,
		0.158741, 0.937962, 0.308266,
		-0.930709, 0.037953, 0.363787,
		40.591637, 38.904125, 33.258125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302711, 39.336948, 33.626431>,  <41.243134, 38.877556, 33.003475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302711, 39.336948, 33.626431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979481, 39.101974, 33.644035>,  <40.785542, 38.960991, 33.654598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979481, 39.101974, 33.644035>,  <41.302711, 39.336948, 33.626431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979481, 39.101974, 33.644035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209898, -0.217310, 0.953268,
		-0.550414, 0.779551, 0.298904,
		-0.808076, -0.587431, 0.044015,
		40.737057, 38.925743, 33.657242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090111, 39.442940, 34.269089>,  <41.302711, 39.336948, 33.626431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090111, 39.442940, 34.269089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887920, 39.108337, 34.184467>,  <40.766605, 38.907574, 34.133694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887920, 39.108337, 34.184467>,  <41.090111, 39.442940, 34.269089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887920, 39.108337, 34.184467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187129, -0.345620, 0.919527,
		-0.842307, 0.425208, 0.331236,
		-0.505471, -0.836508, -0.211549,
		40.736279, 38.857384, 34.121002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508129, 39.422226, 34.830025>,  <41.090111, 39.442940, 34.269089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508129, 39.422226, 34.830025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608383, 39.075779, 34.657036>,  <40.668533, 38.867912, 34.553242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608383, 39.075779, 34.657036>,  <40.508129, 39.422226, 34.830025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608383, 39.075779, 34.657036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330629, -0.343284, 0.879113,
		-0.909872, -0.363322, 0.200324,
		0.250633, -0.866114, -0.432470,
		40.683575, 38.815945, 34.527294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195602, 39.020855, 35.242760>,  <40.508129, 39.422226, 34.830025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195602, 39.020855, 35.242760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451347, 38.774216, 35.059010>,  <40.604794, 38.626232, 34.948761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451347, 38.774216, 35.059010>,  <40.195602, 39.020855, 35.242760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451347, 38.774216, 35.059010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253955, -0.394569, 0.883075,
		-0.725759, -0.681262, -0.095682,
		0.639359, -0.616601, -0.459373,
		40.643154, 38.589237, 34.921196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108902, 38.457058, 35.516079>,  <40.195602, 39.020855, 35.242760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108902, 38.457058, 35.516079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464825, 38.373394, 35.353844>,  <40.678379, 38.323196, 35.256504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464825, 38.373394, 35.353844>,  <40.108902, 38.457058, 35.516079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464825, 38.373394, 35.353844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289223, -0.428994, 0.855753,
		-0.352981, -0.878758, -0.321228,
		0.889806, -0.209158, -0.405584,
		40.731766, 38.310646, 35.232170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273052, 37.872467, 35.692036>,  <40.108902, 38.457058, 35.516079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273052, 37.872467, 35.692036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643646, 37.995270, 35.604980>,  <40.866005, 38.068951, 35.552746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643646, 37.995270, 35.604980>,  <40.273052, 37.872467, 35.692036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643646, 37.995270, 35.604980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348823, -0.483565, 0.802799,
		0.141223, -0.819702, -0.555109,
		0.926487, 0.307008, -0.217641,
		40.921593, 38.087372, 35.539688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743885, 37.296715, 35.774269>,  <40.273052, 37.872467, 35.692036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743885, 37.296715, 35.774269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970345, 37.625790, 35.794941>,  <41.106220, 37.823235, 35.807346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970345, 37.625790, 35.794941>,  <40.743885, 37.296715, 35.774269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970345, 37.625790, 35.794941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445126, -0.357888, 0.820840,
		0.693789, -0.441709, -0.568815,
		0.566145, 0.822684, 0.051682,
		41.140186, 37.872597, 35.810444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456856, 37.019161, 35.868896>,  <40.743885, 37.296715, 35.774269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456856, 37.019161, 35.868896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477619, 37.404175, 35.975353>,  <41.490078, 37.635185, 36.039227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477619, 37.404175, 35.975353>,  <41.456856, 37.019161, 35.868896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477619, 37.404175, 35.975353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499267, -0.255814, 0.827823,
		0.864892, 0.089907, -0.493840,
		0.051904, 0.962536, 0.266139,
		41.493191, 37.692936, 36.055195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159420, 37.067265, 36.081013>,  <41.456856, 37.019161, 35.868896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159420, 37.067265, 36.081013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974621, 37.392059, 36.223698>,  <41.863743, 37.586937, 36.309307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974621, 37.392059, 36.223698>,  <42.159420, 37.067265, 36.081013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974621, 37.392059, 36.223698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529149, -0.070409, 0.845603,
		0.711730, 0.579420, -0.397131,
		-0.461997, 0.811982, 0.356712,
		41.836021, 37.635654, 36.330711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721710, 37.529724, 36.269199>,  <42.159420, 37.067265, 36.081013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721710, 37.529724, 36.269199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383766, 37.598106, 36.471973>,  <42.181000, 37.639133, 36.593636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383766, 37.598106, 36.471973>,  <42.721710, 37.529724, 36.269199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383766, 37.598106, 36.471973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502558, -0.071256, 0.861602,
		0.183416, 0.982699, -0.025712,
		-0.844863, 0.170953, 0.506933,
		42.130306, 37.649391, 36.624054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959602, 37.934059, 36.914742>,  <42.721710, 37.529724, 36.269199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959602, 37.934059, 36.914742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600262, 37.786022, 37.009392>,  <42.384655, 37.697201, 37.066181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600262, 37.786022, 37.009392>,  <42.959602, 37.934059, 36.914742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600262, 37.786022, 37.009392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372813, -0.357497, 0.856275,
		-0.232308, 0.857455, 0.459134,
		-0.898356, -0.370091, 0.236621,
		42.330753, 37.674995, 37.080379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891781, 38.210144, 37.500324>,  <42.959602, 37.934059, 36.914742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891781, 38.210144, 37.500324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647388, 37.893837, 37.485470>,  <42.500751, 37.704052, 37.476559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647388, 37.893837, 37.485470>,  <42.891781, 38.210144, 37.500324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647388, 37.893837, 37.485470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233288, -0.224678, 0.946095,
		-0.756490, 0.569385, 0.321752,
		-0.610983, -0.790772, -0.037136,
		42.464092, 37.656605, 37.474327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737320, 38.247311, 38.215385>,  <42.891781, 38.210144, 37.500324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737320, 38.247311, 38.215385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559456, 37.908104, 38.100044>,  <42.452736, 37.704578, 38.030842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559456, 37.908104, 38.100044>,  <42.737320, 38.247311, 38.215385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559456, 37.908104, 38.100044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036396, -0.338767, 0.940166,
		-0.894959, 0.407561, 0.181501,
		-0.444661, -0.848016, -0.288349,
		42.426056, 37.653698, 38.013538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105465, 38.070427, 38.615952>,  <42.737320, 38.247311, 38.215385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105465, 38.070427, 38.615952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247219, 37.727730, 38.466064>,  <42.332272, 37.522114, 38.376133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247219, 37.727730, 38.466064>,  <42.105465, 38.070427, 38.615952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247219, 37.727730, 38.466064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093772, -0.366146, 0.925821,
		-0.930387, -0.363231, -0.049417,
		0.354381, -0.856738, -0.374718,
		42.353535, 37.470707, 38.353649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525795, 38.024387, 39.130577>,  <42.105465, 38.070427, 38.615952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525795, 38.024387, 39.130577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580868, 37.837330, 39.479828>,  <42.613911, 37.725094, 39.689377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.580868, 37.837330, 39.479828>,  <42.525795, 38.024387, 39.130577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580868, 37.837330, 39.479828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897723, 0.313544, 0.309489,
		-0.418495, -0.826437, -0.376648,
		0.137677, -0.467646, 0.873128,
		42.622169, 37.697037, 39.741768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866440, 37.817883, 39.276798>,  <42.525795, 38.024387, 39.130577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866440, 37.817883, 39.276798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066273, 37.813038, 39.623268>,  <42.186172, 37.810131, 39.831150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066273, 37.813038, 39.623268>,  <41.866440, 37.817883, 39.276798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066273, 37.813038, 39.623268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841697, 0.229655, 0.488677,
		-0.204841, -0.973197, 0.104538,
		0.499587, -0.012112, 0.866179,
		42.216148, 37.809402, 39.883121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431526, 37.536049, 39.837852>,  <41.866440, 37.817883, 39.276798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431526, 37.536049, 39.837852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697929, 37.718212, 40.074169>,  <41.857773, 37.827511, 40.215961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697929, 37.718212, 40.074169>,  <41.431526, 37.536049, 39.837852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697929, 37.718212, 40.074169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726563, 0.216670, 0.652043,
		0.168940, -0.863514, 0.475187,
		0.666008, 0.455409, 0.590793,
		41.897732, 37.854836, 40.251408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341579, 37.271660, 40.521908>,  <41.431526, 37.536049, 39.837852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341579, 37.271660, 40.521908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489414, 37.642471, 40.547283>,  <41.578114, 37.864960, 40.562508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489414, 37.642471, 40.547283>,  <41.341579, 37.271660, 40.521908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489414, 37.642471, 40.547283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688305, 0.227270, 0.688901,
		0.624213, -0.298272, 0.722074,
		0.369586, 0.927028, 0.063437,
		41.600288, 37.920578, 40.566315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347805, 37.539223, 41.329380>,  <41.341579, 37.271660, 40.521908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347805, 37.539223, 41.329380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369114, 37.847805, 41.075760>,  <41.381897, 38.032955, 40.923588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369114, 37.847805, 41.075760>,  <41.347805, 37.539223, 41.329380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369114, 37.847805, 41.075760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739595, 0.457103, 0.494021,
		0.670941, 0.442625, 0.594913,
		0.053270, 0.771453, -0.634052,
		41.385094, 38.079243, 40.885544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272419, 38.111271, 41.744648>,  <41.347805, 37.539223, 41.329380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272419, 38.111271, 41.744648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146858, 38.233791, 41.385170>,  <41.071522, 38.307304, 41.169483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146858, 38.233791, 41.385170>,  <41.272419, 38.111271, 41.744648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146858, 38.233791, 41.385170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840847, 0.349919, 0.412956,
		0.440958, 0.885289, 0.147713,
		-0.313898, 0.306300, -0.898693,
		41.052689, 38.325680, 41.115562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034592, 38.774323, 41.851994>,  <41.272419, 38.111271, 41.744648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034592, 38.774323, 41.851994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858444, 38.659077, 41.511860>,  <40.752758, 38.589928, 41.307781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858444, 38.659077, 41.511860>,  <41.034592, 38.774323, 41.851994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858444, 38.659077, 41.511860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806395, 0.543320, 0.233518,
		0.394723, 0.788538, -0.471594,
		-0.440365, -0.288117, -0.850334,
		40.726334, 38.572643, 41.256760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904659, 39.358692, 41.431862>,  <41.034592, 38.774323, 41.851994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904659, 39.358692, 41.431862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665047, 39.067844, 41.297726>,  <40.521278, 38.893333, 41.217243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665047, 39.067844, 41.297726>,  <40.904659, 39.358692, 41.431862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665047, 39.067844, 41.297726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800511, 0.534154, 0.271774,
		-0.018489, 0.431246, -0.902045,
		-0.599033, -0.727122, -0.335341,
		40.485336, 38.849709, 41.197124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349586, 39.639713, 41.068176>,  <40.904659, 39.358692, 41.431862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349586, 39.639713, 41.068176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225601, 39.288696, 41.214508>,  <40.151211, 39.078087, 41.302307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225601, 39.288696, 41.214508>,  <40.349586, 39.639713, 41.068176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225601, 39.288696, 41.214508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894815, 0.399301, 0.199661,
		-0.321289, -0.265464, -0.909012,
		-0.309966, -0.877547, 0.365832,
		40.132610, 39.025433, 41.324257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670811, 39.465626, 40.687763>,  <40.349586, 39.639713, 41.068176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670811, 39.465626, 40.687763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703506, 39.288837, 41.045082>,  <39.723122, 39.182762, 41.259472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703506, 39.288837, 41.045082>,  <39.670811, 39.465626, 40.687763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703506, 39.288837, 41.045082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932261, 0.283037, 0.225341,
		-0.352431, -0.851204, -0.388902,
		0.081737, -0.441975, 0.893296,
		39.728027, 39.156246, 41.313072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964294, 39.117908, 40.729008>,  <39.670811, 39.465626, 40.687763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964294, 39.117908, 40.729008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106216, 39.079868, 41.101044>,  <39.191372, 39.057045, 41.324265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106216, 39.079868, 41.101044>,  <38.964294, 39.117908, 40.729008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106216, 39.079868, 41.101044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872073, 0.324966, 0.365904,
		-0.337046, -0.940932, 0.032363,
		0.354807, -0.095103, 0.930090,
		39.212658, 39.051338, 41.380070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564342, 38.550117, 41.161270>,  <38.964294, 39.117908, 40.729008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564342, 38.550117, 41.161270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745335, 38.797188, 41.418564>,  <38.853928, 38.945431, 41.572941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745335, 38.797188, 41.418564>,  <38.564342, 38.550117, 41.161270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745335, 38.797188, 41.418564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874412, 0.165659, 0.456027,
		0.175119, -0.768790, 0.615057,
		0.452479, 0.617672, 0.643229,
		38.881077, 38.982491, 41.611534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317596, 38.333984, 41.748394>,  <38.564342, 38.550117, 41.161270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317596, 38.333984, 41.748394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426407, 38.712200, 41.819889>,  <38.491692, 38.939129, 41.862785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426407, 38.712200, 41.819889>,  <38.317596, 38.333984, 41.748394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426407, 38.712200, 41.819889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865456, 0.159188, 0.475021,
		0.420700, -0.283911, 0.861630,
		0.272025, 0.945544, 0.178742,
		38.508015, 38.995865, 41.873512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114422, 38.516602, 42.477619>,  <38.317596, 38.333984, 41.748394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114422, 38.516602, 42.477619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151798, 38.860466, 42.276722>,  <38.174225, 39.066784, 42.156181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151798, 38.860466, 42.276722>,  <38.114422, 38.516602, 42.477619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151798, 38.860466, 42.276722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974426, 0.182506, 0.131093,
		0.204359, 0.477153, 0.854729,
		0.093442, 0.859661, -0.502247,
		38.179832, 39.118366, 42.126049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679199, 38.992218, 42.826054>,  <38.114422, 38.516602, 42.477619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679199, 38.992218, 42.826054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732029, 39.156208, 42.465061>,  <37.763725, 39.254601, 42.248466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732029, 39.156208, 42.465061>,  <37.679199, 38.992218, 42.826054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732029, 39.156208, 42.465061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972711, 0.228818, -0.038402,
		0.190761, 0.882930, 0.429005,
		0.132070, 0.409972, -0.902486,
		37.771648, 39.279202, 42.194317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384014, 39.630409, 43.018402>,  <37.679199, 38.992218, 42.826054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384014, 39.630409, 43.018402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403389, 39.643936, 42.619099>,  <37.415012, 39.652050, 42.379517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403389, 39.643936, 42.619099>,  <37.384014, 39.630409, 43.018402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403389, 39.643936, 42.619099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936435, 0.349228, -0.033606,
		0.347482, 0.936428, 0.048579,
		0.048435, 0.033813, -0.998254,
		37.417919, 39.654079, 42.319622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216488, 40.243404, 42.686913>,  <37.384014, 39.630409, 43.018402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216488, 40.243404, 42.686913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138008, 39.987534, 42.389641>,  <37.090919, 39.834011, 42.211277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138008, 39.987534, 42.389641>,  <37.216488, 40.243404, 42.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138008, 39.987534, 42.389641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834245, 0.507192, -0.216315,
		0.515308, 0.577557, -0.633155,
		-0.196197, -0.639675, -0.743184,
		37.079147, 39.795631, 42.166687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089005, 40.569576, 42.175159>,  <37.216488, 40.243404, 42.686913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089005, 40.569576, 42.175159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889977, 40.235794, 42.080410>,  <36.770561, 40.035526, 42.023560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889977, 40.235794, 42.080410>,  <37.089005, 40.569576, 42.175159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889977, 40.235794, 42.080410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740981, 0.550855, -0.384064,
		0.450966, -0.015583, -0.892405,
		-0.497571, -0.834456, -0.236870,
		36.740704, 39.985458, 42.009350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828636, 40.733231, 41.575634>,  <37.089005, 40.569576, 42.175159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828636, 40.733231, 41.575634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625919, 40.416298, 41.711502>,  <36.504288, 40.226139, 41.793022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625919, 40.416298, 41.711502>,  <36.828636, 40.733231, 41.575634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625919, 40.416298, 41.711502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861578, 0.478822, -0.168558,
		-0.029086, -0.378073, -0.925319,
		-0.506790, -0.792332, 0.339666,
		36.473881, 40.178596, 41.813400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305996, 40.567265, 41.125427>,  <36.828636, 40.733231, 41.575634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305996, 40.567265, 41.125427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202423, 40.420853, 41.482971>,  <36.140278, 40.333008, 41.697498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202423, 40.420853, 41.482971>,  <36.305996, 40.567265, 41.125427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202423, 40.420853, 41.482971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875546, 0.479740, -0.057181,
		-0.407888, -0.797417, -0.444694,
		-0.258934, -0.366027, 0.893855,
		36.124744, 40.311043, 41.751129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628090, 40.538502, 40.842674>,  <36.305996, 40.567265, 41.125427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628090, 40.538502, 40.842674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563107, 40.432812, 41.222946>,  <35.524117, 40.369396, 41.451111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563107, 40.432812, 41.222946>,  <35.628090, 40.538502, 40.842674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563107, 40.432812, 41.222946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821320, 0.497755, 0.278700,
		-0.546846, 0.826089, 0.136149,
		-0.162462, -0.264228, 0.950679,
		35.514366, 40.353542, 41.508148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706333, 41.136147, 41.284603>,  <35.628090, 40.538502, 40.842674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706333, 41.136147, 41.284603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762199, 40.806938, 41.504833>,  <35.795719, 40.609413, 41.636971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762199, 40.806938, 41.504833>,  <35.706333, 41.136147, 41.284603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762199, 40.806938, 41.504833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796289, 0.423854, 0.431592,
		-0.588572, 0.378142, 0.714557,
		0.139665, -0.823017, 0.550579,
		35.804100, 40.560032, 41.670006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588753, 41.286545, 42.048897>,  <35.706333, 41.136147, 41.284603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588753, 41.286545, 42.048897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847099, 40.994526, 41.959557>,  <36.002106, 40.819313, 41.905952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847099, 40.994526, 41.959557>,  <35.588753, 41.286545, 42.048897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847099, 40.994526, 41.959557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709126, 0.465279, 0.529769,
		-0.282838, -0.500543, 0.818205,
		0.645866, -0.730049, -0.223349,
		36.040859, 40.775513, 41.892551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891788, 41.121052, 42.666908>,  <35.588753, 41.286545, 42.048897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891788, 41.121052, 42.666908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105598, 41.079849, 42.331367>,  <36.233887, 41.055130, 42.130043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105598, 41.079849, 42.331367>,  <35.891788, 41.121052, 42.666908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105598, 41.079849, 42.331367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514966, 0.826709, 0.226632,
		0.670141, -0.553120, 0.494944,
		0.534530, -0.103004, -0.838849,
		36.265957, 41.048946, 42.079712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707298, 40.393963, 42.808514>,  <35.891788, 41.121052, 42.666908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707298, 40.393963, 42.808514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623184, 40.343586, 42.420715>,  <35.572716, 40.313358, 42.188038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623184, 40.343586, 42.420715>,  <35.707298, 40.393963, 42.808514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623184, 40.343586, 42.420715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727245, -0.682898, -0.069033,
		-0.653370, -0.719576, 0.235197,
		-0.210290, -0.125941, -0.969493,
		35.560097, 40.305805, 42.129868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600544, 39.636467, 42.612984>,  <35.707298, 40.393963, 42.808514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600544, 39.636467, 42.612984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710152, 39.835285, 42.283653>,  <35.775917, 39.954575, 42.086056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710152, 39.835285, 42.283653>,  <35.600544, 39.636467, 42.612984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710152, 39.835285, 42.283653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688590, -0.699041, -0.192834,
		-0.671384, -0.514092, -0.533809,
		0.274020, 0.497042, -0.823324,
		35.792358, 39.984398, 42.036655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758957, 39.117954, 42.152603>,  <35.600544, 39.636467, 42.612984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758957, 39.117954, 42.152603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982792, 39.431870, 42.046043>,  <36.117092, 39.620216, 41.982105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982792, 39.431870, 42.046043>,  <35.758957, 39.117954, 42.152603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982792, 39.431870, 42.046043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797014, -0.597716, -0.086625,
		-0.227216, -0.163853, -0.959961,
		0.559591, 0.784785, -0.266403,
		36.150669, 39.667305, 41.966122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146675, 38.903141, 41.610306>,  <35.758957, 39.117954, 42.152603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146675, 38.903141, 41.610306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341919, 39.233662, 41.722721>,  <36.459064, 39.431973, 41.790169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341919, 39.233662, 41.722721>,  <36.146675, 38.903141, 41.610306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341919, 39.233662, 41.722721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872678, -0.467085, -0.142358,
		0.013637, 0.314739, -0.949080,
		0.488106, 0.826300, 0.281035,
		36.488350, 39.481552, 41.807034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801643, 38.930363, 41.209000>,  <36.146675, 38.903141, 41.610306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801643, 38.930363, 41.209000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907684, 39.168671, 41.512257>,  <36.971310, 39.311657, 41.694210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907684, 39.168671, 41.512257>,  <36.801643, 38.930363, 41.209000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907684, 39.168671, 41.512257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946466, -0.310976, -0.086583,
		0.184179, 0.740506, -0.646320,
		0.265105, 0.595773, 0.758139,
		36.987217, 39.347401, 41.739697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481213, 39.101639, 40.969246>,  <36.801643, 38.930363, 41.209000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481213, 39.101639, 40.969246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446487, 39.209564, 41.352844>,  <37.425652, 39.274319, 41.583004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446487, 39.209564, 41.352844>,  <37.481213, 39.101639, 40.969246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446487, 39.209564, 41.352844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976180, -0.169095, 0.135941,
		0.198839, 0.947949, -0.248709,
		-0.086810, 0.269815, 0.958991,
		37.420444, 39.290508, 41.640541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982819, 39.728359, 40.990383>,  <37.481213, 39.101639, 40.969246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982819, 39.728359, 40.990383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926521, 39.612228, 41.368992>,  <37.892742, 39.542549, 41.596157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926521, 39.612228, 41.368992>,  <37.982819, 39.728359, 40.990383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926521, 39.612228, 41.368992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990037, -0.037113, 0.135828,
		-0.004307, 0.956206, 0.292661,
		-0.140741, -0.290331, 0.946520,
		37.884300, 39.525127, 41.652946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384312, 40.155685, 41.407352>,  <37.982819, 39.728359, 40.990383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384312, 40.155685, 41.407352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307964, 39.843235, 41.645145>,  <38.262154, 39.655766, 41.787823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307964, 39.843235, 41.645145>,  <38.384312, 40.155685, 41.407352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307964, 39.843235, 41.645145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979259, -0.109594, 0.170412,
		-0.067961, 0.614682, 0.785841,
		-0.190873, -0.781124, 0.594486,
		38.250702, 39.608898, 41.823490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851238, 40.232689, 41.943851>,  <38.384312, 40.155685, 41.407352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851238, 40.232689, 41.943851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748127, 39.847092, 41.917702>,  <38.686260, 39.615734, 41.902012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748127, 39.847092, 41.917702>,  <38.851238, 40.232689, 41.943851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748127, 39.847092, 41.917702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957563, -0.245862, -0.150416,
		0.128927, -0.101374, 0.986459,
		-0.257781, -0.963989, -0.065374,
		38.670792, 39.557896, 41.898090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414276, 39.848434, 42.312332>,  <38.851238, 40.232689, 41.943851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414276, 39.848434, 42.312332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234261, 39.604168, 42.051704>,  <39.126251, 39.457607, 41.895329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234261, 39.604168, 42.051704>,  <39.414276, 39.848434, 42.312332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234261, 39.604168, 42.051704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889026, -0.375209, -0.262393,
		-0.084241, -0.697353, 0.711760,
		-0.450040, -0.610669, -0.651573,
		39.099247, 39.420967, 41.856232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596741, 39.216381, 42.492085>,  <39.414276, 39.848434, 42.312332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596741, 39.216381, 42.492085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498409, 39.220722, 42.104385>,  <39.439411, 39.223328, 41.871765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498409, 39.220722, 42.104385>,  <39.596741, 39.216381, 42.492085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498409, 39.220722, 42.104385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841652, -0.493624, -0.218994,
		-0.480822, -0.869608, 0.112216,
		-0.245832, 0.010850, -0.969252,
		39.424660, 39.223976, 41.813610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854546, 38.553913, 42.448685>,  <39.596741, 39.216381, 42.492085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854546, 38.553913, 42.448685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791359, 38.748169, 42.104778>,  <39.753448, 38.864723, 41.898434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791359, 38.748169, 42.104778>,  <39.854546, 38.553913, 42.448685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791359, 38.748169, 42.104778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793297, -0.456054, -0.403354,
		-0.587985, -0.745769, -0.313213,
		-0.157967, 0.485637, -0.859769,
		39.743969, 38.893860, 41.846848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713020, 37.961086, 41.974400>,  <39.854546, 38.553913, 42.448685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713020, 37.961086, 41.974400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839478, 38.285831, 41.778057>,  <39.915352, 38.480679, 41.660252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839478, 38.285831, 41.778057>,  <39.713020, 37.961086, 41.974400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839478, 38.285831, 41.778057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893374, -0.428879, -0.133963,
		-0.319276, -0.396165, -0.860881,
		0.316142, 0.811860, -0.490854,
		39.934319, 38.529388, 41.630802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959248, 37.792969, 41.331455>,  <39.713020, 37.961086, 41.974400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959248, 37.792969, 41.331455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169739, 38.099224, 41.479443>,  <40.296032, 38.282978, 41.568237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169739, 38.099224, 41.479443>,  <39.959248, 37.792969, 41.331455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169739, 38.099224, 41.479443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844803, -0.520307, -0.124852,
		0.096908, 0.378254, -0.920615,
		0.526229, 0.765640, 0.369972,
		40.327606, 38.328915, 41.590435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836212, 37.935703, 40.566757>,  <39.959248, 37.792969, 41.331455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836212, 37.935703, 40.566757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998856, 38.246937, 40.758282>,  <40.096439, 38.433678, 40.873196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998856, 38.246937, 40.758282>,  <39.836212, 37.935703, 40.566757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998856, 38.246937, 40.758282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899729, -0.250044, -0.357722,
		-0.158615, 0.576249, -0.801734,
		0.406606, 0.778084, 0.478808,
		40.120838, 38.480362, 40.901924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350143, 38.286003, 40.050560>,  <39.836212, 37.935703, 40.566757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350143, 38.286003, 40.050560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449177, 38.368160, 40.429298>,  <40.508598, 38.417454, 40.656540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449177, 38.368160, 40.429298>,  <40.350143, 38.286003, 40.050560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449177, 38.368160, 40.429298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949610, -0.245315, -0.195093,
		0.192203, 0.947435, -0.255784,
		0.247586, 0.205398, 0.946844,
		40.523453, 38.429779, 40.713352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026531, 38.706093, 39.959518>,  <40.350143, 38.286003, 40.050560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026531, 38.706093, 39.959518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000603, 38.642746, 40.353619>,  <40.985046, 38.604736, 40.590080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000603, 38.642746, 40.353619>,  <41.026531, 38.706093, 39.959518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000603, 38.642746, 40.353619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952139, -0.305364, 0.013562,
		0.298712, 0.938974, 0.170585,
		-0.064825, -0.158369, 0.985250,
		40.981155, 38.595234, 40.649193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625320, 39.088776, 40.176891>,  <41.026531, 38.706093, 39.959518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625320, 39.088776, 40.176891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532536, 38.778580, 40.411774>,  <41.476864, 38.592464, 40.552704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532536, 38.778580, 40.411774>,  <41.625320, 39.088776, 40.176891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532536, 38.778580, 40.411774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946853, -0.318310, -0.046344,
		0.222854, 0.545251, 0.808107,
		-0.231960, -0.775487, 0.587209,
		41.462948, 38.545933, 40.587936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227524, 39.066181, 40.550541>,  <41.625320, 39.088776, 40.176891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227524, 39.066181, 40.550541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033894, 38.717590, 40.582024>,  <41.917717, 38.508434, 40.600914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033894, 38.717590, 40.582024>,  <42.227524, 39.066181, 40.550541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033894, 38.717590, 40.582024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862111, -0.490394, -0.127585,
		0.149786, 0.006095, 0.988700,
		-0.484075, -0.871479, 0.078709,
		41.888672, 38.456146, 40.605637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695488, 38.576210, 40.950760>,  <42.227524, 39.066181, 40.550541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695488, 38.576210, 40.950760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442554, 38.346066, 40.743252>,  <42.290794, 38.207981, 40.618748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442554, 38.346066, 40.743252>,  <42.695488, 38.576210, 40.950760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442554, 38.346066, 40.743252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771575, -0.527814, -0.355085,
		-0.069512, -0.624800, 0.777684,
		-0.632329, -0.575359, -0.518769,
		42.252857, 38.173458, 40.587620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912136, 37.898453, 41.062359>,  <42.695488, 38.576210, 40.950760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912136, 37.898453, 41.062359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719986, 37.875107, 40.712311>,  <42.604694, 37.861099, 40.502281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719986, 37.875107, 40.712311>,  <42.912136, 37.898453, 41.062359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719986, 37.875107, 40.712311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746232, -0.551472, -0.372848,
		-0.460841, -0.832149, 0.308471,
		-0.480378, -0.058367, -0.875117,
		42.575874, 37.857597, 40.449776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947258, 37.232063, 40.914352>,  <42.912136, 37.898453, 41.062359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947258, 37.232063, 40.914352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873978, 37.404507, 40.560951>,  <42.830009, 37.507973, 40.348911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873978, 37.404507, 40.560951>,  <42.947258, 37.232063, 40.914352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873978, 37.404507, 40.560951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749580, -0.520218, -0.409271,
		-0.636057, -0.737236, -0.227849,
		-0.183198, 0.431110, -0.883506,
		42.819019, 37.533840, 40.295898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877037, 36.682453, 40.291580>,  <42.947258, 37.232063, 40.914352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877037, 36.682453, 40.291580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989201, 37.039780, 40.151089>,  <43.056499, 37.254173, 40.066795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989201, 37.039780, 40.151089>,  <42.877037, 36.682453, 40.291580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989201, 37.039780, 40.151089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577063, -0.449287, -0.682010,
		-0.767050, -0.011435, -0.641485,
		0.280413, 0.893314, -0.351225,
		43.073326, 37.307774, 40.045723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878960, 36.536781, 39.607697>,  <42.877037, 36.682453, 40.291580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878960, 36.536781, 39.607697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140350, 36.823082, 39.706226>,  <43.297184, 36.994862, 39.765347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140350, 36.823082, 39.706226>,  <42.878960, 36.536781, 39.607697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140350, 36.823082, 39.706226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734881, -0.521884, -0.433114,
		-0.181445, 0.464051, -0.867026,
		0.653473, 0.715747, 0.246329,
		43.336391, 37.037807, 39.780125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514107, 36.648987, 39.170628>,  <42.878960, 36.536781, 39.607697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514107, 36.648987, 39.170628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674728, 36.828911, 39.489731>,  <43.771103, 36.936863, 39.681194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674728, 36.828911, 39.489731>,  <43.514107, 36.648987, 39.170628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674728, 36.828911, 39.489731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818310, -0.567366, -0.092001,
		0.411241, 0.689761, -0.595911,
		0.401559, 0.449806, 0.797763,
		43.795197, 36.963852, 39.729061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269676, 36.812115, 39.112949>,  <43.514107, 36.648987, 39.170628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269676, 36.812115, 39.112949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206627, 36.823353, 39.507790>,  <44.168797, 36.830097, 39.744694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206627, 36.823353, 39.507790>,  <44.269676, 36.812115, 39.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206627, 36.823353, 39.507790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730054, -0.669793, 0.135639,
		0.664963, 0.742016, 0.085063,
		-0.157621, 0.028094, 0.987100,
		44.159340, 36.831779, 39.803921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746395, 36.505650, 39.438351>,  <44.269676, 36.812115, 39.112949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746395, 36.505650, 39.438351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577389, 36.542198, 39.799046>,  <44.475983, 36.564129, 40.015461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577389, 36.542198, 39.799046>,  <44.746395, 36.505650, 39.438351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577389, 36.542198, 39.799046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766605, -0.494734, 0.409334,
		0.483523, 0.864227, 0.138985,
		-0.422518, 0.091376, 0.901737,
		44.450634, 36.569611, 40.069565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235012, 36.020992, 39.497139>,  <44.746395, 36.505650, 39.438351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235012, 36.020992, 39.497139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471127, 35.767414, 39.697010>,  <45.612793, 35.615269, 39.816933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471127, 35.767414, 39.697010>,  <45.235012, 36.020992, 39.497139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471127, 35.767414, 39.697010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627988, -0.028259, -0.777710,
		0.507146, 0.772861, 0.381429,
		0.590283, -0.633946, 0.499678,
		45.648212, 35.577229, 39.846912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048065, 36.285744, 39.538147>,  <45.235012, 36.020992, 39.497139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048065, 36.285744, 39.538147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020557, 35.887745, 39.567139>,  <46.004055, 35.648945, 39.584534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.020557, 35.887745, 39.567139>,  <46.048065, 36.285744, 39.538147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020557, 35.887745, 39.567139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535480, -0.098111, -0.838830,
		0.841744, -0.018874, 0.539548,
		-0.068767, -0.994997, 0.072478,
		45.999928, 35.589245, 39.588882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730537, 35.920052, 39.613930>,  <46.048065, 36.285744, 39.538147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730537, 35.920052, 39.613930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475857, 35.655327, 39.455631>,  <46.323048, 35.496490, 39.360653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475857, 35.655327, 39.455631>,  <46.730537, 35.920052, 39.613930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.475857, 35.655327, 39.455631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669049, -0.218966, -0.710231,
		0.383388, -0.716975, 0.582203,
		-0.636700, -0.661817, -0.395742,
		46.284847, 35.456783, 39.336910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843163, 35.682552, 39.042950>,  <46.730537, 35.920052, 39.613930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843163, 35.682552, 39.042950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615250, 35.354305, 39.025364>,  <46.478500, 35.157356, 39.014812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615250, 35.354305, 39.025364>,  <46.843163, 35.682552, 39.042950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.615250, 35.354305, 39.025364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612327, -0.388265, -0.688699,
		0.548088, -0.419331, 0.723713,
		-0.569786, -0.820617, -0.043964,
		46.444313, 35.108120, 39.012177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.291126, 35.065804, 38.988026>,  <46.843163, 35.682552, 39.042950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.291126, 35.065804, 38.988026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.951630, 34.979496, 38.794910>,  <46.747932, 34.927711, 38.679043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.951630, 34.979496, 38.794910>,  <47.291126, 35.065804, 38.988026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.951630, 34.979496, 38.794910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515771, -0.539244, -0.665730,
		-0.116695, -0.814040, 0.568966,
		-0.848742, -0.215768, -0.482785,
		46.697006, 34.914764, 38.650074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.292866, 34.363140, 38.736618>,  <47.291126, 35.065804, 38.988026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.292866, 34.363140, 38.736618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.040844, 34.546982, 38.486244>,  <46.889629, 34.657288, 38.336021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.040844, 34.546982, 38.486244>,  <47.292866, 34.363140, 38.736618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.040844, 34.546982, 38.486244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383515, -0.516719, -0.765452,
		-0.675239, -0.722332, 0.149296,
		-0.630055, 0.459606, -0.625934,
		46.851830, 34.684864, 38.298466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.408417, 34.030220, 38.100758>,  <47.292866, 34.363140, 38.736618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.408417, 34.030220, 38.100758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162987, 34.329121, 37.998665>,  <47.015728, 34.508461, 37.937408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162987, 34.329121, 37.998665>,  <47.408417, 34.030220, 38.100758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162987, 34.329121, 37.998665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282678, -0.093940, -0.954604,
		-0.737304, -0.657870, -0.153591,
		-0.613577, 0.747250, -0.255228,
		46.978912, 34.553295, 37.922096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.077568, 33.724312, 37.459728>,  <47.408417, 34.030220, 38.100758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.077568, 33.724312, 37.459728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070274, 34.124214, 37.464794>,  <47.065899, 34.364155, 37.467834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070274, 34.124214, 37.464794>,  <47.077568, 33.724312, 37.459728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.070274, 34.124214, 37.464794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146924, 0.015210, -0.989031,
		-0.988980, -0.016174, -0.147165,
		-0.018235, 0.999753, 0.012666,
		47.064804, 34.424141, 37.468594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437519, 33.915260, 37.205219>,  <47.077568, 33.724312, 37.459728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437519, 33.915260, 37.205219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226791, 34.233074, 37.326000>,  <46.100357, 34.423763, 37.398468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226791, 34.233074, 37.326000>,  <46.437519, 33.915260, 37.205219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226791, 34.233074, 37.326000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577380, 0.595222, -0.558876,
		-0.623777, -0.120084, -0.772323,
		-0.526815, 0.794538, 0.301952,
		46.068748, 34.471436, 37.416584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965729, 34.343071, 36.672375>,  <46.437519, 33.915260, 37.205219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965729, 34.343071, 36.672375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136856, 34.537746, 36.977036>,  <46.239532, 34.654552, 37.159832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136856, 34.537746, 36.977036>,  <45.965729, 34.343071, 36.672375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136856, 34.537746, 36.977036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595993, 0.481625, -0.642518,
		-0.679534, 0.728818, -0.084014,
		0.427815, 0.486684, 0.761651,
		46.265202, 34.683750, 37.205532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890800, 35.046558, 36.758339>,  <45.965729, 34.343071, 36.672375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890800, 35.046558, 36.758339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.259850, 34.945774, 36.875156>,  <46.481277, 34.885303, 36.945248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.259850, 34.945774, 36.875156>,  <45.890800, 35.046558, 36.758339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.259850, 34.945774, 36.875156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381657, 0.486933, -0.785642,
		0.055744, 0.836310, 0.545416,
		0.922621, -0.251956, 0.292041,
		46.536636, 34.870186, 36.962769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311890, 35.680706, 36.526222>,  <45.890800, 35.046558, 36.758339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.311890, 35.680706, 36.526222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575825, 35.380146, 36.527454>,  <46.734188, 35.199810, 36.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575825, 35.380146, 36.527454>,  <46.311890, 35.680706, 36.526222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575825, 35.380146, 36.527454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402264, 0.349774, -0.846074,
		0.634662, 0.559514, 0.533056,
		0.659839, -0.751400, 0.003084,
		46.773777, 35.154724, 36.528381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.969391, 35.895325, 36.216179>,  <46.311890, 35.680706, 36.526222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.969391, 35.895325, 36.216179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857723, 35.519356, 36.137581>,  <46.790722, 35.293774, 36.090424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857723, 35.519356, 36.137581>,  <46.969391, 35.895325, 36.216179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857723, 35.519356, 36.137581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276642, 0.117228, -0.953796,
		0.919529, -0.320631, 0.227295,
		-0.279171, -0.939922, -0.196494,
		46.773972, 35.237381, 36.078632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.550587, 35.769104, 35.718121>,  <46.969391, 35.895325, 36.216179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.550587, 35.769104, 35.718121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.258644, 35.496288, 35.699635>,  <47.083481, 35.332600, 35.688541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.258644, 35.496288, 35.699635>,  <47.550587, 35.769104, 35.718121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.258644, 35.496288, 35.699635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176789, -0.123013, -0.976531,
		0.660347, -0.720896, 0.210358,
		-0.729854, -0.682039, -0.046215,
		47.039688, 35.291676, 35.685772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.760880, 35.290257, 35.219791>,  <47.550587, 35.769104, 35.718121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.760880, 35.290257, 35.219791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370304, 35.204414, 35.210762>,  <47.135960, 35.152908, 35.205345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370304, 35.204414, 35.210762>,  <47.760880, 35.290257, 35.219791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.370304, 35.204414, 35.210762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038272, -0.069300, -0.996862,
		0.212363, -0.974240, 0.075881,
		-0.976441, -0.214601, -0.022569,
		47.077374, 35.140034, 35.203991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.352032, 34.825733, 34.760204>,  <47.760880, 35.290257, 35.219791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.352032, 34.825733, 34.760204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.713238, 34.809139, 34.931244>,  <47.929962, 34.799183, 35.033867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.713238, 34.809139, 34.931244>,  <47.352032, 34.825733, 34.760204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.713238, 34.809139, 34.931244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412790, 0.191923, 0.890376,
		-0.119006, -0.980533, 0.156184,
		0.903018, -0.041489, 0.427594,
		47.984142, 34.796692, 35.059521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.965591, 36.460342, 28.807432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.889912, 36.102974, 28.644461>,  <42.844505, 35.888554, 28.546679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.889912, 36.102974, 28.644461>,  <42.965591, 36.460342, 28.807432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889912, 36.102974, 28.644461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136277, -0.434796, 0.890158,
		-0.972436, 0.112894, 0.204016,
		-0.189198, -0.893425, -0.407427,
		42.833153, 35.834946, 28.522232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519375, 36.164886, 29.277052>,  <42.965591, 36.460342, 28.807432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519375, 36.164886, 29.277052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.695805, 35.869621, 29.072865>,  <42.801662, 35.692463, 28.950352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.695805, 35.869621, 29.072865>,  <42.519375, 36.164886, 29.277052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695805, 35.869621, 29.072865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072344, -0.537688, 0.840034,
		-0.894551, -0.407445, -0.183757,
		0.441071, -0.738160, -0.510466,
		42.828125, 35.648174, 28.919725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226391, 35.540089, 29.390682>,  <42.519375, 36.164886, 29.277052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226391, 35.540089, 29.390682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.597553, 35.422794, 29.298595>,  <42.820251, 35.352417, 29.243343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.597553, 35.422794, 29.298595>,  <42.226391, 35.540089, 29.390682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597553, 35.422794, 29.298595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037506, -0.540957, 0.840213,
		-0.370918, -0.788275, -0.490960,
		0.927908, -0.293236, -0.230216,
		42.875927, 35.334824, 29.229530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230110, 34.761971, 29.398556>,  <42.226391, 35.540089, 29.390682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230110, 34.761971, 29.398556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.601131, 34.898506, 29.459387>,  <42.823746, 34.980427, 29.495886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.601131, 34.898506, 29.459387>,  <42.230110, 34.761971, 29.398556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601131, 34.898506, 29.459387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066241, -0.550713, 0.832062,
		0.367770, -0.761709, -0.533427,
		0.927554, 0.341342, 0.152080,
		42.879398, 35.000908, 29.505011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630573, 34.264755, 29.784092>,  <42.230110, 34.761971, 29.398556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630573, 34.264755, 29.784092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.884636, 34.566223, 29.851694>,  <43.037075, 34.747105, 29.892256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.884636, 34.566223, 29.851694>,  <42.630573, 34.264755, 29.784092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884636, 34.566223, 29.851694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281933, -0.429940, 0.857709,
		0.719089, -0.497132, -0.485563,
		0.635158, 0.753665, 0.169007,
		43.075184, 34.792324, 29.902397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151176, 33.896732, 30.117182>,  <42.630573, 34.264755, 29.784092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151176, 33.896732, 30.117182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.218739, 34.282074, 30.200533>,  <43.259277, 34.513279, 30.250544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.218739, 34.282074, 30.200533>,  <43.151176, 33.896732, 30.117182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218739, 34.282074, 30.200533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343819, -0.255725, 0.903545,
		0.923720, -0.080971, -0.374413,
		0.168908, 0.963353, 0.208379,
		43.269413, 34.571079, 30.263046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761482, 33.869022, 30.411345>,  <43.151176, 33.896732, 30.117182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761482, 33.869022, 30.411345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.639122, 34.238934, 30.501869>,  <43.565708, 34.460880, 30.556185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.639122, 34.238934, 30.501869>,  <43.761482, 33.869022, 30.411345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639122, 34.238934, 30.501869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349584, -0.112000, 0.930187,
		0.885560, 0.363657, -0.289026,
		-0.305898, 0.924775, 0.226312,
		43.547352, 34.516365, 30.569763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331978, 34.300804, 30.652546>,  <43.761482, 33.869022, 30.411345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331978, 34.300804, 30.652546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.999969, 34.470776, 30.797043>,  <43.800762, 34.572758, 30.883741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.999969, 34.470776, 30.797043>,  <44.331978, 34.300804, 30.652546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999969, 34.470776, 30.797043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343891, -0.119996, 0.931311,
		0.439086, 0.897239, -0.046529,
		-0.830026, 0.424927, 0.361241,
		43.750961, 34.598255, 30.905415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567024, 34.714306, 31.171686>,  <44.331978, 34.300804, 30.652546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567024, 34.714306, 31.171686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.178024, 34.695797, 31.262989>,  <43.944626, 34.684692, 31.317770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.178024, 34.695797, 31.262989>,  <44.567024, 34.714306, 31.171686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178024, 34.695797, 31.262989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232849, -0.213593, 0.948767,
		0.004851, 0.975826, 0.218494,
		-0.972501, -0.046273, 0.228256,
		43.886272, 34.681915, 31.331467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471905, 35.037334, 31.782545>,  <44.567024, 34.714306, 31.171686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471905, 35.037334, 31.782545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.128422, 34.832561, 31.773138>,  <43.922333, 34.709698, 31.767494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.128422, 34.832561, 31.773138>,  <44.471905, 35.037334, 31.782545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128422, 34.832561, 31.773138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077637, -0.175311, 0.981447,
		-0.506553, 0.840949, 0.190286,
		-0.858706, -0.511929, -0.023516,
		43.870811, 34.678982, 31.766083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035847, 35.415695, 32.250000>,  <44.471905, 35.037334, 31.782545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035847, 35.415695, 32.250000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.868053, 35.053249, 32.228142>,  <43.767376, 34.835781, 32.215027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.868053, 35.053249, 32.228142>,  <44.035847, 35.415695, 32.250000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868053, 35.053249, 32.228142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177830, 0.022992, 0.983792,
		-0.890175, 0.422402, -0.170780,
		-0.419482, -0.906117, -0.054649,
		43.742210, 34.781414, 32.211746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643929, 35.388962, 32.839252>,  <44.035847, 35.415695, 32.250000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643929, 35.388962, 32.839252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.637257, 34.999924, 32.746494>,  <43.633255, 34.766499, 32.690842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.637257, 34.999924, 32.746494>,  <43.643929, 35.388962, 32.839252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637257, 34.999924, 32.746494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171746, -0.225690, 0.958941,
		-0.985000, 0.055821, -0.163275,
		-0.016679, -0.972599, -0.231892,
		43.632252, 34.708145, 32.676926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959263, 35.032269, 33.096157>,  <43.643929, 35.388962, 32.839252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959263, 35.032269, 33.096157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.244122, 34.755764, 33.047161>,  <43.415035, 34.589863, 33.017761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.244122, 34.755764, 33.047161>,  <42.959263, 35.032269, 33.096157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244122, 34.755764, 33.047161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033833, -0.208076, 0.977527,
		-0.701216, -0.691998, -0.171568,
		0.712146, -0.691263, -0.122494,
		43.457764, 34.548386, 33.010414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705143, 34.386127, 33.439907>,  <42.959263, 35.032269, 33.096157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705143, 34.386127, 33.439907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.100441, 34.337769, 33.402462>,  <43.337620, 34.308754, 33.379993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.100441, 34.337769, 33.402462>,  <42.705143, 34.386127, 33.439907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100441, 34.337769, 33.402462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073815, -0.158965, 0.984521,
		-0.133907, -0.979854, -0.148171,
		0.988241, -0.120897, -0.093615,
		43.396912, 34.301498, 33.374378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913830, 33.688717, 33.620571>,  <42.705143, 34.386127, 33.439907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913830, 33.688717, 33.620571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.231091, 33.926071, 33.675426>,  <43.421448, 34.068481, 33.708340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.231091, 33.926071, 33.675426>,  <42.913830, 33.688717, 33.620571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231091, 33.926071, 33.675426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026553, -0.191275, 0.981177,
		0.608445, -0.781864, -0.135954,
		0.793152, 0.593382, 0.137142,
		43.469036, 34.104084, 33.716568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389400, 33.288677, 33.966793>,  <42.913830, 33.688717, 33.620571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389400, 33.288677, 33.966793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.531204, 33.655960, 34.037460>,  <43.616287, 33.876331, 34.079861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.531204, 33.655960, 34.037460>,  <43.389400, 33.288677, 33.966793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531204, 33.655960, 34.037460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133220, -0.236614, 0.962427,
		0.925514, -0.317653, -0.206206,
		0.354510, 0.918211, 0.176672,
		43.637558, 33.931423, 34.090462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889973, 33.237473, 34.478130>,  <43.389400, 33.288677, 33.966793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889973, 33.237473, 34.478130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.877460, 33.635880, 34.511539>,  <43.869953, 33.874924, 34.531586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.877460, 33.635880, 34.511539>,  <43.889973, 33.237473, 34.478130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877460, 33.635880, 34.511539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115004, -0.079418, 0.990185,
		0.992873, 0.040575, -0.112062,
		-0.031277, 0.996015, 0.083518,
		43.868076, 33.934685, 34.536594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481998, 33.524746, 35.050472>,  <43.889973, 33.237473, 34.478130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481998, 33.524746, 35.050472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.226875, 33.832493, 35.036182>,  <44.073803, 34.017143, 35.027607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.226875, 33.832493, 35.036182>,  <44.481998, 33.524746, 35.050472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226875, 33.832493, 35.036182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064464, 0.099549, 0.992942,
		0.767496, 0.630999, -0.113089,
		-0.637804, 0.769370, -0.035726,
		44.035534, 34.063305, 35.025463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746262, 34.068157, 35.456364>,  <44.481998, 33.524746, 35.050472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746262, 34.068157, 35.456364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.361134, 34.174526, 35.437374>,  <44.130054, 34.238350, 35.425980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.361134, 34.174526, 35.437374>,  <44.746262, 34.068157, 35.456364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361134, 34.174526, 35.437374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023036, 0.094291, 0.995278,
		0.269148, 0.959371, -0.084660,
		-0.962823, 0.265927, -0.047479,
		44.072285, 34.254303, 35.423130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789436, 34.648331, 35.821198>,  <44.746262, 34.068157, 35.456364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789436, 34.648331, 35.821198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.413254, 34.513191, 35.836170>,  <44.187546, 34.432106, 35.845154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.413254, 34.513191, 35.836170>,  <44.789436, 34.648331, 35.821198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413254, 34.513191, 35.836170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010532, 0.081110, 0.996650,
		-0.339752, 0.937699, -0.072722,
		-0.940456, -0.337848, 0.037433,
		44.131119, 34.411839, 35.847401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475895, 35.185337, 36.157593>,  <44.789436, 34.648331, 35.821198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475895, 35.185337, 36.157593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.268902, 34.849804, 36.225204>,  <44.144707, 34.648483, 36.265774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.268902, 34.849804, 36.225204>,  <44.475895, 35.185337, 36.157593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268902, 34.849804, 36.225204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044719, 0.223780, 0.973613,
		-0.854523, 0.496271, -0.153315,
		-0.517485, -0.838831, 0.169032,
		44.113655, 34.598156, 36.275913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530422, 35.667194, 36.781921>,  <44.475895, 35.185337, 36.157593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530422, 35.667194, 36.781921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.439590, 36.033131, 36.915489>,  <44.385090, 36.252693, 36.995628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.439590, 36.033131, 36.915489>,  <44.530422, 35.667194, 36.781921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439590, 36.033131, 36.915489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103771, 0.318195, -0.942329,
		-0.968332, -0.248636, 0.022678,
		-0.227081, 0.914840, 0.333919,
		44.371468, 36.307583, 37.015663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991791, 35.828712, 36.374962>,  <44.530422, 35.667194, 36.781921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991791, 35.828712, 36.374962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.129963, 36.168411, 36.534691>,  <44.212868, 36.372231, 36.630527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.129963, 36.168411, 36.534691>,  <43.991791, 35.828712, 36.374962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129963, 36.168411, 36.534691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216482, 0.486148, -0.846638,
		-0.913132, 0.206013, 0.351778,
		0.345434, 0.849246, 0.399319,
		44.233593, 36.423183, 36.654488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464016, 36.404118, 36.264942>,  <43.991791, 35.828712, 36.374962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464016, 36.404118, 36.264942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.820736, 36.581684, 36.299873>,  <44.034767, 36.688225, 36.320831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.820736, 36.581684, 36.299873>,  <43.464016, 36.404118, 36.264942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820736, 36.581684, 36.299873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164821, 0.498536, -0.851056,
		-0.421336, 0.744579, 0.517762,
		0.891801, 0.443919, 0.087329,
		44.088276, 36.714859, 36.326073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340942, 36.954426, 35.926174>,  <43.464016, 36.404118, 36.264942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340942, 36.954426, 35.926174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.740429, 36.970161, 35.938923>,  <43.980122, 36.979603, 35.946571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.740429, 36.970161, 35.938923>,  <43.340942, 36.954426, 35.926174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740429, 36.970161, 35.938923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012023, 0.427177, -0.904088,
		-0.049184, 0.903312, 0.426156,
		0.998717, 0.039343, 0.031871,
		44.040043, 36.981964, 35.948483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445183, 37.611111, 35.669586>,  <43.340942, 36.954426, 35.926174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445183, 37.611111, 35.669586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.812660, 37.453232, 35.675499>,  <44.033146, 37.358505, 35.679047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.812660, 37.453232, 35.675499>,  <43.445183, 37.611111, 35.669586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812660, 37.453232, 35.675499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222602, 0.486487, -0.844854,
		0.326270, 0.779452, 0.534792,
		0.918693, -0.394696, 0.014782,
		44.088268, 37.334824, 35.679935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980907, 38.090023, 35.673084>,  <43.445183, 37.611111, 35.669586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980907, 38.090023, 35.673084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.140720, 37.765491, 35.502380>,  <44.236607, 37.570774, 35.399956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.140720, 37.765491, 35.502380>,  <43.980907, 38.090023, 35.673084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140720, 37.765491, 35.502380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073827, 0.492499, -0.867176,
		0.913742, 0.314957, 0.256666,
		0.399531, -0.811324, -0.426764,
		44.260578, 37.522095, 35.374352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639191, 38.326115, 35.218174>,  <43.980907, 38.090023, 35.673084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639191, 38.326115, 35.218174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.502399, 37.973495, 35.087990>,  <44.420322, 37.761925, 35.009880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.502399, 37.973495, 35.087990>,  <44.639191, 38.326115, 35.218174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502399, 37.973495, 35.087990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021726, 0.353667, -0.935119,
		0.939456, -0.312721, -0.140099,
		-0.341980, -0.881547, -0.325461,
		44.399807, 37.709030, 34.990353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907032, 38.417904, 34.594471>,  <44.639191, 38.326115, 35.218174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907032, 38.417904, 34.594471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.676624, 38.091011, 34.587120>,  <44.538380, 37.894875, 34.582710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.676624, 38.091011, 34.587120>,  <44.907032, 38.417904, 34.594471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676624, 38.091011, 34.587120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062338, 0.066328, -0.995849,
		0.815057, -0.572480, -0.089150,
		-0.576017, -0.817231, -0.018374,
		44.503819, 37.845840, 34.581608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225563, 37.918243, 34.239204>,  <44.907032, 38.417904, 34.594471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225563, 37.918243, 34.239204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.837906, 37.821144, 34.222107>,  <44.605312, 37.762882, 34.211849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.837906, 37.821144, 34.222107>,  <45.225563, 37.918243, 34.239204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837906, 37.821144, 34.222107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011525, 0.217852, -0.975914,
		0.246219, -0.945310, -0.213928,
		-0.969146, -0.242754, -0.042745,
		44.547161, 37.748318, 34.209282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205822, 37.519268, 33.687920>,  <45.225563, 37.918243, 34.239204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205822, 37.519268, 33.687920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.826244, 37.633789, 33.740898>,  <44.598499, 37.702503, 33.772686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.826244, 37.633789, 33.740898>,  <45.205822, 37.519268, 33.687920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826244, 37.633789, 33.740898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127992, 0.034306, -0.991182,
		-0.288325, -0.957524, 0.004091,
		-0.948940, 0.286306, 0.132446,
		44.541561, 37.719681, 33.780632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757313, 37.075825, 33.289455>,  <45.205822, 37.519268, 33.687920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757313, 37.075825, 33.289455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.558281, 37.420845, 33.326149>,  <44.438862, 37.627857, 33.348164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.558281, 37.420845, 33.326149>,  <44.757313, 37.075825, 33.289455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558281, 37.420845, 33.326149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320086, -0.084290, -0.943632,
		-0.806202, -0.498893, 0.318032,
		-0.497579, 0.862555, 0.091734,
		44.409008, 37.679611, 33.353668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113827, 36.984489, 32.869827>,  <44.757313, 37.075825, 33.289455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113827, 36.984489, 32.869827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.145344, 37.377071, 32.939720>,  <44.164253, 37.612621, 32.981655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.145344, 37.377071, 32.939720>,  <44.113827, 36.984489, 32.869827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145344, 37.377071, 32.939720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471652, 0.191120, -0.860824,
		-0.878258, -0.014590, 0.477965,
		0.078790, 0.981458, 0.174734,
		44.168980, 37.671509, 32.992142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480644, 37.298801, 32.765541>,  <44.113827, 36.984489, 32.869827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480644, 37.298801, 32.765541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.753761, 37.588295, 32.725536>,  <43.917633, 37.761990, 32.701534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.753761, 37.588295, 32.725536>,  <43.480644, 37.298801, 32.765541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753761, 37.588295, 32.725536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338182, 0.191731, -0.921342,
		-0.647628, 0.662912, 0.375666,
		0.682796, 0.723731, -0.100014,
		43.958599, 37.805416, 32.695534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173801, 38.018387, 32.712650>,  <43.480644, 37.298801, 32.765541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173801, 38.018387, 32.712650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.529713, 38.061787, 32.535324>,  <43.743259, 38.087826, 32.428928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.529713, 38.061787, 32.535324>,  <43.173801, 38.018387, 32.712650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529713, 38.061787, 32.535324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455507, 0.271810, -0.847722,
		0.028523, 0.956216, 0.291270,
		0.889775, 0.108496, -0.443315,
		43.796646, 38.094334, 32.402328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072411, 38.577492, 32.224327>,  <43.173801, 38.018387, 32.712650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072411, 38.577492, 32.224327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.409863, 38.398342, 32.105881>,  <43.612335, 38.290852, 32.034813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.409863, 38.398342, 32.105881>,  <43.072411, 38.577492, 32.224327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409863, 38.398342, 32.105881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281950, 0.099806, -0.954224,
		0.456931, 0.888506, -0.042079,
		0.843634, -0.447878, -0.296119,
		43.662952, 38.263977, 32.017044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310696, 39.064209, 31.743364>,  <43.072411, 38.577492, 32.224327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310696, 39.064209, 31.743364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.537159, 38.745289, 31.659666>,  <43.673038, 38.553936, 31.609447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.537159, 38.745289, 31.659666>,  <43.310696, 39.064209, 31.743364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537159, 38.745289, 31.659666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047564, 0.285022, -0.957340,
		0.822924, 0.532053, 0.199290,
		0.566158, -0.797297, -0.209245,
		43.707005, 38.506100, 31.596893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935143, 39.304001, 31.320290>,  <43.310696, 39.064209, 31.743364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935143, 39.304001, 31.320290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.908199, 38.908230, 31.268915>,  <43.892033, 38.670769, 31.238091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.908199, 38.908230, 31.268915>,  <43.935143, 39.304001, 31.320290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908199, 38.908230, 31.268915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082005, 0.133785, -0.987612,
		0.994353, -0.055990, -0.090150,
		-0.067357, -0.989428, -0.128438,
		43.887993, 38.611401, 31.230383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352726, 39.148872, 30.732908>,  <43.935143, 39.304001, 31.320290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352726, 39.148872, 30.732908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.105679, 38.836323, 30.768688>,  <43.957451, 38.648792, 30.790155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.105679, 38.836323, 30.768688>,  <44.352726, 39.148872, 30.732908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105679, 38.836323, 30.768688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140978, -0.001899, -0.990011,
		0.773738, -0.624061, -0.108984,
		-0.617620, -0.781373, 0.089449,
		43.920391, 38.601910, 30.795523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538879, 38.800404, 30.222984>,  <44.352726, 39.148872, 30.732908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538879, 38.800404, 30.222984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.170429, 38.666817, 30.302979>,  <43.949360, 38.586666, 30.350975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.170429, 38.666817, 30.302979>,  <44.538879, 38.800404, 30.222984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170429, 38.666817, 30.302979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282473, 0.219973, -0.933713,
		0.267846, -0.916555, -0.296961,
		-0.921123, -0.333974, 0.199983,
		43.894093, 38.566628, 30.362974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.444187, 38.268009, 29.738249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.077682, 38.361168, 29.868612>,  <43.857780, 38.417065, 29.946831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.077682, 38.361168, 29.868612>,  <44.444187, 38.268009, 29.738249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077682, 38.361168, 29.868612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316597, 0.077397, -0.945397,
		-0.245407, -0.969416, 0.002819,
		-0.916265, 0.232900, 0.325908,
		43.802803, 38.431038, 29.966385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049057, 37.814098, 29.379063>,  <44.444187, 38.268009, 29.738249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049057, 37.814098, 29.379063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.793644, 38.093594, 29.508091>,  <43.640396, 38.261292, 29.585508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.793644, 38.093594, 29.508091>,  <44.049057, 37.814098, 29.379063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793644, 38.093594, 29.508091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559890, -0.134189, -0.817629,
		-0.528021, -0.702682, 0.476898,
		-0.638527, 0.698735, 0.322570,
		43.602085, 38.303215, 29.604862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411175, 37.596725, 29.342718>,  <44.049057, 37.814098, 29.379063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411175, 37.596725, 29.342718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.341805, 37.990154, 29.362743>,  <43.300182, 38.226212, 29.374758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.341805, 37.990154, 29.362743>,  <43.411175, 37.596725, 29.342718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341805, 37.990154, 29.362743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636665, -0.073186, -0.767660,
		-0.751386, -0.165008, 0.638899,
		-0.173429, 0.983573, 0.050064,
		43.289776, 38.285225, 29.377762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681019, 37.715191, 29.168270>,  <43.411175, 37.596725, 29.342718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681019, 37.715191, 29.168270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.831181, 38.079437, 29.099159>,  <42.921276, 38.297985, 29.057692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.831181, 38.079437, 29.099159>,  <42.681019, 37.715191, 29.168270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831181, 38.079437, 29.099159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481666, 0.032404, -0.875755,
		-0.791877, 0.411984, 0.450777,
		0.375404, 0.910615, -0.172779,
		42.943802, 38.352623, 29.047325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095894, 38.135471, 28.851820>,  <42.681019, 37.715191, 29.168270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095894, 38.135471, 28.851820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.444103, 38.311539, 28.763792>,  <42.653030, 38.417179, 28.710976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.444103, 38.311539, 28.763792>,  <42.095894, 38.135471, 28.851820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444103, 38.311539, 28.763792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326485, 0.181958, -0.927523,
		-0.368225, 0.879284, 0.302109,
		0.870527, 0.440171, -0.220071,
		42.705261, 38.443588, 28.697771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933811, 38.929680, 28.701784>,  <42.095894, 38.135471, 28.851820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933811, 38.929680, 28.701784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261292, 38.786373, 28.522285>,  <42.457779, 38.700390, 28.414587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261292, 38.786373, 28.522285>,  <41.933811, 38.929680, 28.701784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261292, 38.786373, 28.522285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299206, 0.400850, -0.865907,
		0.490104, 0.843187, 0.220982,
		0.818702, -0.358266, -0.448745,
		42.506901, 38.678894, 28.387661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996899, 39.359837, 28.150642>,  <41.933811, 38.929680, 28.701784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996899, 39.359837, 28.150642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.226131, 39.049953, 28.043756>,  <42.363670, 38.864021, 27.979626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.226131, 39.049953, 28.043756>,  <41.996899, 39.359837, 28.150642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226131, 39.049953, 28.043756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286604, 0.116010, -0.950999,
		0.767750, 0.621582, -0.155552,
		0.573079, -0.774711, -0.267214,
		42.398056, 38.817539, 27.963593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314739, 39.581825, 27.487095>,  <41.996899, 39.359837, 28.150642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314739, 39.581825, 27.487095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.382133, 39.187550, 27.489193>,  <42.422569, 38.950985, 27.490452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.382133, 39.187550, 27.489193>,  <42.314739, 39.581825, 27.487095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382133, 39.187550, 27.489193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123431, -0.026375, -0.992003,
		0.977945, 0.166492, -0.126108,
		0.168487, -0.985690, 0.005243,
		42.432678, 38.891842, 27.490767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808876, 39.537735, 27.009529>,  <42.314739, 39.581825, 27.487095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808876, 39.537735, 27.009529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.645565, 39.173611, 27.036770>,  <42.547577, 38.955135, 27.053114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.645565, 39.173611, 27.036770>,  <42.808876, 39.537735, 27.009529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645565, 39.173611, 27.036770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118450, -0.021144, -0.992735,
		0.905141, -0.413377, -0.099194,
		-0.408276, -0.910315, 0.068103,
		42.523083, 38.900517, 27.057201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180466, 39.109909, 26.509550>,  <42.808876, 39.537735, 27.009529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180466, 39.109909, 26.509550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.824257, 38.947224, 26.591084>,  <42.610531, 38.849613, 26.640003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.824257, 38.947224, 26.591084>,  <43.180466, 39.109909, 26.509550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824257, 38.947224, 26.591084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212647, -0.023960, -0.976835,
		0.402174, -0.913242, -0.065149,
		-0.890526, -0.406712, 0.203834,
		42.557098, 38.825211, 26.652233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032887, 38.682438, 25.975410>,  <43.180466, 39.109909, 26.509550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032887, 38.682438, 25.975410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.664825, 38.687931, 26.131937>,  <42.443989, 38.691227, 26.225853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.664825, 38.687931, 26.131937>,  <43.032887, 38.682438, 25.975410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664825, 38.687931, 26.131937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379844, 0.211317, -0.900591,
		-0.095058, -0.977321, -0.189229,
		-0.920153, 0.013731, 0.391317,
		42.388779, 38.692051, 26.249332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601299, 38.235649, 25.534922>,  <43.032887, 38.682438, 25.975410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601299, 38.235649, 25.534922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338562, 38.465843, 25.729805>,  <42.180920, 38.603958, 25.846735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.338562, 38.465843, 25.729805>,  <42.601299, 38.235649, 25.534922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338562, 38.465843, 25.729805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544942, 0.084274, -0.834228,
		-0.521144, -0.813459, 0.258250,
		-0.656847, 0.575484, 0.487207,
		42.141506, 38.638489, 25.875967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905262, 37.970604, 25.515602>,  <42.601299, 38.235649, 25.534922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905262, 37.970604, 25.515602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.871925, 38.367523, 25.552240>,  <41.851921, 38.605675, 25.574223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.871925, 38.367523, 25.552240>,  <41.905262, 37.970604, 25.515602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871925, 38.367523, 25.552240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539176, 0.032396, -0.841570,
		-0.838059, -0.119528, 0.532325,
		-0.083346, 0.992302, 0.091596,
		41.846920, 38.665215, 25.579720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289730, 38.049255, 25.337797>,  <41.905262, 37.970604, 25.515602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289730, 38.049255, 25.337797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.439495, 38.418346, 25.301149>,  <41.529354, 38.639801, 25.279161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.439495, 38.418346, 25.301149>,  <41.289730, 38.049255, 25.337797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439495, 38.418346, 25.301149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577760, 0.154865, -0.801380,
		-0.725266, 0.352979, 0.591097,
		0.374411, 0.922726, -0.091618,
		41.551819, 38.695164, 25.273664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772026, 38.474358, 25.241825>,  <41.289730, 38.049255, 25.337797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772026, 38.474358, 25.241825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.054840, 38.699863, 25.071056>,  <41.224529, 38.835167, 24.968596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.054840, 38.699863, 25.071056>,  <40.772026, 38.474358, 25.241825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054840, 38.699863, 25.071056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623718, 0.212624, -0.752175,
		-0.333279, 0.798095, 0.501966,
		0.707037, 0.563769, -0.426923,
		41.266953, 38.868996, 24.942980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364185, 38.943836, 24.980972>,  <40.772026, 38.474358, 25.241825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364185, 38.943836, 24.980972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717075, 39.027134, 24.812059>,  <40.928810, 39.077114, 24.710712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717075, 39.027134, 24.812059>,  <40.364185, 38.943836, 24.980972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717075, 39.027134, 24.812059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460590, 0.195623, -0.865788,
		-0.097688, 0.958314, 0.268498,
		0.882221, 0.208245, -0.422280,
		40.981743, 39.089607, 24.685375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353821, 39.675865, 24.718277>,  <40.364185, 38.943836, 24.980972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353821, 39.675865, 24.718277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.685570, 39.561649, 24.526190>,  <40.884621, 39.493118, 24.410938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.685570, 39.561649, 24.526190>,  <40.353821, 39.675865, 24.718277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685570, 39.561649, 24.526190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257731, 0.567069, -0.782309,
		0.495699, 0.772591, 0.396718,
		0.829371, -0.285544, -0.480217,
		40.934380, 39.475986, 24.382124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714832, 40.245434, 24.416077>,  <40.353821, 39.675865, 24.718277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714832, 40.245434, 24.416077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779884, 39.925030, 24.185621>,  <40.818916, 39.732788, 24.047348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779884, 39.925030, 24.185621>,  <40.714832, 40.245434, 24.416077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779884, 39.925030, 24.185621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378291, 0.488674, -0.786190,
		0.911288, 0.345810, -0.223539,
		0.162635, -0.801008, -0.576139,
		40.828674, 39.684727, 24.012779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995533, 40.484997, 23.850292>,  <40.714832, 40.245434, 24.416077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995533, 40.484997, 23.850292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.880116, 40.123466, 23.723900>,  <40.810863, 39.906548, 23.648066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.880116, 40.123466, 23.723900>,  <40.995533, 40.484997, 23.850292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880116, 40.123466, 23.723900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252569, 0.390179, -0.885420,
		0.923553, -0.175679, -0.340863,
		-0.288548, -0.903824, -0.315980,
		40.793552, 39.852318, 23.629107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225780, 40.364494, 23.275263>,  <40.995533, 40.484997, 23.850292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225780, 40.364494, 23.275263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.909119, 40.120125, 23.272369>,  <40.719120, 39.973503, 23.270634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.909119, 40.120125, 23.272369>,  <41.225780, 40.364494, 23.275263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909119, 40.120125, 23.272369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276441, 0.368728, -0.887480,
		0.544849, -0.700580, -0.460790,
		-0.791657, -0.610923, -0.007232,
		40.671623, 39.936848, 23.270201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247391, 40.170219, 22.592323>,  <41.225780, 40.364494, 23.275263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247391, 40.170219, 22.592323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.879826, 40.076157, 22.719006>,  <40.659286, 40.019718, 22.795015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.879826, 40.076157, 22.719006>,  <41.247391, 40.170219, 22.592323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879826, 40.076157, 22.719006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367202, 0.216629, -0.904563,
		0.144102, -0.947510, -0.285411,
		-0.918911, -0.235153, 0.316710,
		40.604153, 40.005608, 22.814018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959496, 39.814072, 22.096966>,  <41.247391, 40.170219, 22.592323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959496, 39.814072, 22.096966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614948, 39.894451, 22.283583>,  <40.408218, 39.942680, 22.395554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614948, 39.894451, 22.283583>,  <40.959496, 39.814072, 22.096966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614948, 39.894451, 22.283583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479570, -0.018853, -0.877301,
		-0.167501, -0.979420, 0.112610,
		-0.861369, 0.200953, 0.466542,
		40.356537, 39.954739, 22.423546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488186, 39.220047, 22.043312>,  <40.959496, 39.814072, 22.096966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488186, 39.220047, 22.043312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.311440, 39.578854, 22.047718>,  <40.205391, 39.794136, 22.050362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.311440, 39.578854, 22.047718>,  <40.488186, 39.220047, 22.043312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311440, 39.578854, 22.047718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368832, -0.170469, -0.913730,
		-0.817749, -0.407811, 0.406172,
		-0.441869, 0.897012, 0.011013,
		40.178879, 39.847958, 22.051022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775326, 39.289207, 21.278908>,  <40.488186, 39.220047, 22.043312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775326, 39.289207, 21.278908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.508659, 39.387146, 20.997311>,  <40.348660, 39.445908, 20.828352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.508659, 39.387146, 20.997311>,  <40.775326, 39.289207, 21.278908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508659, 39.387146, 20.997311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681886, 0.581747, -0.443398,
		0.300982, -0.775642, -0.554788,
		-0.666664, 0.244848, -0.703995,
		40.308659, 39.460602, 20.786112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472610, 38.626564, 21.306860>,  <40.775326, 39.289207, 21.278908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472610, 38.626564, 21.306860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428566, 38.252178, 21.173082>,  <40.402142, 38.027546, 21.092815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428566, 38.252178, 21.173082>,  <40.472610, 38.626564, 21.306860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428566, 38.252178, 21.173082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086954, -0.326130, 0.941317,
		-0.990109, 0.132727, -0.045477,
		-0.110107, -0.935961, -0.334445,
		40.395535, 37.971390, 21.072748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994102, 38.267178, 21.750671>,  <40.472610, 38.626564, 21.306860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994102, 38.267178, 21.750671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205856, 37.971478, 21.584175>,  <40.332909, 37.794056, 21.484278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205856, 37.971478, 21.584175>,  <39.994102, 38.267178, 21.750671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205856, 37.971478, 21.584175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164108, -0.392134, 0.905152,
		-0.832358, -0.547482, -0.086272,
		0.529385, -0.739252, -0.416242,
		40.364674, 37.749702, 21.459303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786381, 37.719219, 22.207485>,  <39.994102, 38.267178, 21.750671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786381, 37.719219, 22.207485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098118, 37.566380, 22.008842>,  <40.285160, 37.474674, 21.889656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098118, 37.566380, 22.008842>,  <39.786381, 37.719219, 22.207485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098118, 37.566380, 22.008842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191623, -0.609241, 0.769484,
		-0.596569, -0.694859, -0.401593,
		0.779350, -0.382096, -0.496605,
		40.331921, 37.451748, 21.859859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777077, 36.961452, 22.342127>,  <39.786381, 37.719219, 22.207485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777077, 36.961452, 22.342127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159492, 37.054695, 22.270975>,  <40.388943, 37.110641, 22.228285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159492, 37.054695, 22.270975>,  <39.777077, 36.961452, 22.342127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159492, 37.054695, 22.270975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286070, -0.608312, 0.740352,
		0.064377, -0.758694, -0.648258,
		0.956044, 0.233109, -0.177878,
		40.446304, 37.124626, 22.217611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193611, 36.313057, 22.313139>,  <39.777077, 36.961452, 22.342127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193611, 36.313057, 22.313139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446060, 36.610779, 22.400496>,  <40.597530, 36.789413, 22.452909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.446060, 36.610779, 22.400496>,  <40.193611, 36.313057, 22.313139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446060, 36.610779, 22.400496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412044, -0.560228, 0.718584,
		0.657197, -0.363525, -0.660258,
		0.631119, 0.744308, 0.218392,
		40.635395, 36.834072, 22.466013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795845, 35.985233, 22.493784>,  <40.193611, 36.313057, 22.313139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795845, 35.985233, 22.493784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818771, 36.344028, 22.669115>,  <40.832527, 36.559303, 22.774315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818771, 36.344028, 22.669115>,  <40.795845, 35.985233, 22.493784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818771, 36.344028, 22.669115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336064, -0.430763, 0.837558,
		0.940094, 0.099302, -0.326134,
		0.057315, 0.896985, 0.438330,
		40.835964, 36.613125, 22.800613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471546, 35.997612, 22.877779>,  <40.795845, 35.985233, 22.493784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471546, 35.997612, 22.877779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295902, 36.313915, 23.048372>,  <41.190517, 36.503696, 23.150728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295902, 36.313915, 23.048372>,  <41.471546, 35.997612, 22.877779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295902, 36.313915, 23.048372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486754, -0.189601, 0.852715,
		0.755150, 0.582028, -0.301647,
		-0.439111, 0.790756, 0.426482,
		41.164169, 36.551144, 23.176317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930214, 36.413967, 23.253595>,  <41.471546, 35.997612, 22.877779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930214, 36.413967, 23.253595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.576820, 36.493580, 23.423227>,  <41.364784, 36.541348, 23.525005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.576820, 36.493580, 23.423227>,  <41.930214, 36.413967, 23.253595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576820, 36.493580, 23.423227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423821, -0.046073, 0.904573,
		0.199578, 0.978909, -0.043649,
		-0.883484, 0.199032, 0.424078,
		41.311775, 36.553291, 23.550451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093884, 36.865425, 23.737707>,  <41.930214, 36.413967, 23.253595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093884, 36.865425, 23.737707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.736462, 36.733391, 23.859434>,  <41.522007, 36.654171, 23.932470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.736462, 36.733391, 23.859434>,  <42.093884, 36.865425, 23.737707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736462, 36.733391, 23.859434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320035, 0.007073, 0.947379,
		-0.314865, 0.943926, 0.099318,
		-0.893553, -0.330082, 0.304316,
		41.468395, 36.634365, 23.950729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904789, 37.298965, 24.254377>,  <42.093884, 36.865425, 23.737707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904789, 37.298965, 24.254377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.688431, 36.967678, 24.313011>,  <41.558617, 36.768906, 24.348192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.688431, 36.967678, 24.313011>,  <41.904789, 37.298965, 24.254377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688431, 36.967678, 24.313011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339930, -0.055847, 0.938791,
		-0.769338, 0.557616, 0.311743,
		-0.540895, -0.828219, 0.146585,
		41.526161, 36.719212, 24.356987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542061, 37.452362, 24.882854>,  <41.904789, 37.298965, 24.254377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542061, 37.452362, 24.882854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.523247, 37.054413, 24.847059>,  <41.511959, 36.815643, 24.825583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.523247, 37.054413, 24.847059>,  <41.542061, 37.452362, 24.882854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523247, 37.054413, 24.847059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108588, -0.094147, 0.989619,
		-0.992974, 0.036830, 0.112460,
		-0.047035, -0.994877, -0.089486,
		41.509136, 36.755951, 24.820213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088566, 37.268852, 25.399101>,  <41.542061, 37.452362, 24.882854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088566, 37.268852, 25.399101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.326298, 36.960415, 25.307724>,  <41.468937, 36.775352, 25.252897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.326298, 36.960415, 25.307724>,  <41.088566, 37.268852, 25.399101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326298, 36.960415, 25.307724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192680, -0.139256, 0.971330,
		-0.780796, -0.621310, 0.065809,
		0.594333, -0.771091, -0.228445,
		41.504597, 36.729088, 25.239191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960526, 36.819138, 25.879320>,  <41.088566, 37.268852, 25.399101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960526, 36.819138, 25.879320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.294445, 36.659275, 25.727850>,  <41.494797, 36.563358, 25.636967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.294445, 36.659275, 25.727850>,  <40.960526, 36.819138, 25.879320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294445, 36.659275, 25.727850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268381, -0.305155, 0.913702,
		-0.480719, -0.864383, -0.147482,
		0.834794, -0.399653, -0.378678,
		41.544884, 36.539379, 25.614246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063267, 36.140675, 26.235224>,  <40.960526, 36.819138, 25.879320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063267, 36.140675, 26.235224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.417786, 36.231590, 26.073820>,  <41.630497, 36.286140, 25.976978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.417786, 36.231590, 26.073820>,  <41.063267, 36.140675, 26.235224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417786, 36.231590, 26.073820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453889, -0.253208, 0.854325,
		0.092010, -0.940332, -0.327583,
		0.886295, 0.227293, -0.403508,
		41.683674, 36.299778, 25.952768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480434, 35.569511, 26.432077>,  <41.063267, 36.140675, 26.235224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480434, 35.569511, 26.432077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.734249, 35.863091, 26.335180>,  <41.886539, 36.039238, 26.277042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.734249, 35.863091, 26.335180>,  <41.480434, 35.569511, 26.432077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734249, 35.863091, 26.335180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636746, -0.318776, 0.702095,
		0.438078, -0.599756, -0.669613,
		0.634541, 0.733945, -0.242243,
		41.924610, 36.083275, 26.262506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189293, 35.313160, 26.249161>,  <41.480434, 35.569511, 26.432077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189293, 35.313160, 26.249161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.215618, 35.689693, 26.381563>,  <42.231415, 35.915611, 26.461004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.215618, 35.689693, 26.381563>,  <42.189293, 35.313160, 26.249161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215618, 35.689693, 26.381563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586188, -0.304923, 0.750603,
		0.807497, 0.144633, -0.571865,
		0.065813, 0.941331, 0.331006,
		42.235363, 35.972092, 26.480865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826756, 35.391991, 26.451210>,  <42.189293, 35.313160, 26.249161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826756, 35.391991, 26.451210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.682816, 35.707157, 26.651087>,  <42.596451, 35.896259, 26.771013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.682816, 35.707157, 26.651087>,  <42.826756, 35.391991, 26.451210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682816, 35.707157, 26.651087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623111, -0.195670, 0.757262,
		0.694436, 0.583864, -0.420549,
		-0.359850, 0.787919, 0.499693,
		42.574860, 35.943531, 26.800995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420803, 35.698235, 26.929817>,  <42.826756, 35.391991, 26.451210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420803, 35.698235, 26.929817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.073780, 35.821114, 27.086267>,  <42.865566, 35.894840, 27.180138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.073780, 35.821114, 27.086267>,  <43.420803, 35.698235, 26.929817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073780, 35.821114, 27.086267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353182, -0.173150, 0.919392,
		0.350159, 0.935761, 0.041720,
		-0.867554, 0.307199, 0.391124,
		42.813515, 35.913273, 27.203606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559044, 36.191868, 27.463133>,  <43.420803, 35.698235, 26.929817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559044, 36.191868, 27.463133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.198429, 36.038792, 27.543917>,  <42.982059, 35.946945, 27.592386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.198429, 36.038792, 27.543917>,  <43.559044, 36.191868, 27.463133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198429, 36.038792, 27.543917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278819, -0.156834, 0.947451,
		-0.330905, 0.910468, 0.248092,
		-0.901533, -0.382689, 0.201958,
		42.927971, 35.923985, 27.604504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471069, 36.384594, 28.137577>,  <43.559044, 36.191868, 27.463133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471069, 36.384594, 28.137577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.189480, 36.103695, 28.095125>,  <43.020527, 35.935154, 28.069654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.189480, 36.103695, 28.095125>,  <43.471069, 36.384594, 28.137577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189480, 36.103695, 28.095125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328285, -0.454256, 0.828179,
		-0.629797, 0.548179, 0.550323,
		-0.703978, -0.702248, -0.106130,
		42.978287, 35.893021, 28.063286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.811962, 38.821285, 32.684864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.530357, 38.537228, 32.681801>,  <44.361393, 38.366795, 32.679962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.530357, 38.537228, 32.681801>,  <44.811962, 38.821285, 32.684864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530357, 38.537228, 32.681801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163748, -0.172804, 0.971250,
		-0.691051, 0.682520, 0.237941,
		-0.704014, -0.710145, -0.007655,
		44.319153, 38.324184, 32.679504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251308, 38.970943, 33.233215>,  <44.811962, 38.821285, 32.684864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251308, 38.970943, 33.233215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252972, 38.581306, 33.142765>,  <44.253971, 38.347527, 33.088497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252972, 38.581306, 33.142765>,  <44.251308, 38.970943, 33.233215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252972, 38.581306, 33.142765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109012, -0.225219, 0.968190,
		-0.994032, 0.020624, -0.107124,
		0.004158, -0.974090, -0.226123,
		44.254219, 38.289078, 33.074928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678165, 38.710052, 33.459850>,  <44.251308, 38.970943, 33.233215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678165, 38.710052, 33.459850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.929222, 38.399227, 33.440929>,  <44.079857, 38.212730, 33.429577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.929222, 38.399227, 33.440929>,  <43.678165, 38.710052, 33.459850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929222, 38.399227, 33.440929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168903, -0.195233, 0.966103,
		-0.759959, -0.598378, -0.253785,
		0.627642, -0.777064, -0.047301,
		44.117516, 38.166107, 33.426739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375374, 38.217800, 33.979450>,  <43.678165, 38.710052, 33.459850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375374, 38.217800, 33.979450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721375, 38.030060, 33.908485>,  <43.928974, 37.917416, 33.865906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721375, 38.030060, 33.908485>,  <43.375374, 38.217800, 33.979450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721375, 38.030060, 33.908485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139634, -0.114433, 0.983569,
		-0.481941, -0.875565, -0.033447,
		0.865005, -0.469352, -0.177408,
		43.980877, 37.889256, 33.855263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297344, 37.630295, 34.390942>,  <43.375374, 38.217800, 33.979450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297344, 37.630295, 34.390942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688583, 37.647182, 34.309422>,  <43.923328, 37.657314, 34.260509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688583, 37.647182, 34.309422>,  <43.297344, 37.630295, 34.390942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688583, 37.647182, 34.309422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194732, -0.531295, 0.824503,
		-0.073467, -0.846134, -0.527882,
		0.978101, 0.042222, -0.203802,
		43.982014, 37.659847, 34.248280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589233, 36.929325, 34.368504>,  <43.297344, 37.630295, 34.390942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589233, 36.929325, 34.368504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899265, 37.167149, 34.454056>,  <44.085285, 37.309841, 34.505386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899265, 37.167149, 34.454056>,  <43.589233, 36.929325, 34.368504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899265, 37.167149, 34.454056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193533, -0.545616, 0.815382,
		0.601490, -0.590596, -0.537965,
		0.775084, 0.594558, 0.213883,
		44.131790, 37.345516, 34.518219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194450, 36.472599, 34.599888>,  <43.589233, 36.929325, 34.368504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194450, 36.472599, 34.599888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246956, 36.847084, 34.730289>,  <44.278458, 37.071774, 34.808529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246956, 36.847084, 34.730289>,  <44.194450, 36.472599, 34.599888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246956, 36.847084, 34.730289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260743, -0.349871, 0.899780,
		0.956443, -0.033103, -0.290036,
		0.131261, 0.936213, 0.326000,
		44.286335, 37.127949, 34.828091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887207, 36.449787, 34.964905>,  <44.194450, 36.472599, 34.599888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887207, 36.449787, 34.964905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.676163, 36.762905, 35.096882>,  <44.549538, 36.950775, 35.176067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.676163, 36.762905, 35.096882>,  <44.887207, 36.449787, 34.964905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676163, 36.762905, 35.096882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061384, -0.352257, 0.933888,
		0.847266, 0.512982, 0.137804,
		-0.527610, 0.782793, 0.329944,
		44.517879, 36.997742, 35.195866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283215, 36.727398, 35.469162>,  <44.887207, 36.449787, 34.964905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283215, 36.727398, 35.469162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915771, 36.871784, 35.533485>,  <44.695305, 36.958416, 35.572079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915771, 36.871784, 35.533485>,  <45.283215, 36.727398, 35.469162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915771, 36.871784, 35.533485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103320, -0.173383, 0.979420,
		0.381418, 0.916320, 0.121976,
		-0.918611, 0.360965, 0.160805,
		44.640190, 36.980072, 35.581726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336651, 37.231819, 35.979504>,  <45.283215, 36.727398, 35.469162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336651, 37.231819, 35.979504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948021, 37.138386, 35.994858>,  <44.714844, 37.082325, 36.004070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948021, 37.138386, 35.994858>,  <45.336651, 37.231819, 35.979504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948021, 37.138386, 35.994858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071271, -0.134020, 0.988412,
		-0.225731, 0.963057, 0.146859,
		-0.971579, -0.233582, 0.038386,
		44.656548, 37.068310, 36.006374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068703, 37.495117, 36.611233>,  <45.336651, 37.231819, 35.979504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068703, 37.495117, 36.611233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799522, 37.217518, 36.508862>,  <44.638012, 37.050957, 36.447437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799522, 37.217518, 36.508862>,  <45.068703, 37.495117, 36.611233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799522, 37.217518, 36.508862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136642, -0.223407, 0.965100,
		-0.726953, 0.684439, 0.055514,
		-0.672954, -0.693997, -0.255930,
		44.597637, 37.009319, 36.432083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581108, 37.610439, 37.075771>,  <45.068703, 37.495117, 36.611233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581108, 37.610439, 37.075771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.465210, 37.246361, 36.957394>,  <44.395672, 37.027912, 36.886368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.465210, 37.246361, 36.957394>,  <44.581108, 37.610439, 37.075771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465210, 37.246361, 36.957394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296901, -0.208478, 0.931873,
		-0.909888, 0.357876, -0.209833,
		-0.289749, -0.910199, -0.295945,
		44.378284, 36.973301, 36.868610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065197, 37.520279, 37.497665>,  <44.581108, 37.610439, 37.075771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065197, 37.520279, 37.497665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168945, 37.156170, 37.368587>,  <44.231194, 36.937706, 37.291142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168945, 37.156170, 37.368587>,  <44.065197, 37.520279, 37.497665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168945, 37.156170, 37.368587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152844, -0.368612, 0.916932,
		-0.953606, -0.188505, -0.234737,
		0.259373, -0.910270, -0.322699,
		44.246758, 36.883087, 37.271778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535076, 37.099213, 37.793941>,  <44.065197, 37.520279, 37.497665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535076, 37.099213, 37.793941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866604, 36.904690, 37.683266>,  <44.065521, 36.787975, 37.616859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866604, 36.904690, 37.683266>,  <43.535076, 37.099213, 37.793941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866604, 36.904690, 37.683266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098714, -0.613859, 0.783220,
		-0.550734, -0.621837, -0.556786,
		0.828823, -0.486309, -0.276689,
		44.115250, 36.758797, 37.600258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945885, 36.634403, 37.545773>,  <43.535076, 37.099213, 37.793941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945885, 36.634403, 37.545773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729675, 36.817112, 37.828384>,  <42.599949, 36.926739, 37.997952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729675, 36.817112, 37.828384>,  <42.945885, 36.634403, 37.545773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729675, 36.817112, 37.828384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726175, 0.170779, -0.665961,
		-0.424854, -0.873037, 0.239386,
		-0.540527, 0.456772, 0.706534,
		42.567516, 36.954144, 38.040344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177284, 36.433201, 37.420876>,  <42.945885, 36.634403, 37.545773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177284, 36.433201, 37.420876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.245811, 36.791744, 37.584431>,  <42.286926, 37.006870, 37.682564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.245811, 36.791744, 37.584431>,  <42.177284, 36.433201, 37.420876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245811, 36.791744, 37.584431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520273, 0.434748, -0.735058,
		-0.836640, -0.086807, 0.540830,
		0.171316, 0.896358, 0.408891,
		42.297207, 37.060654, 37.707100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567986, 36.726501, 37.418320>,  <42.177284, 36.433201, 37.420876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567986, 36.726501, 37.418320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795673, 37.047241, 37.491016>,  <41.932285, 37.239685, 37.534634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795673, 37.047241, 37.491016>,  <41.567986, 36.726501, 37.418320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795673, 37.047241, 37.491016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521071, 0.522807, -0.674654,
		-0.635987, 0.289325, 0.715411,
		0.569216, 0.801851, 0.181739,
		41.966438, 37.287796, 37.545540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136951, 37.343777, 37.435905>,  <41.567986, 36.726501, 37.418320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136951, 37.343777, 37.435905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505627, 37.458843, 37.331802>,  <41.726833, 37.527882, 37.269341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505627, 37.458843, 37.331802>,  <41.136951, 37.343777, 37.435905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505627, 37.458843, 37.331802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383603, 0.576026, -0.721833,
		-0.057735, 0.765141, 0.641268,
		0.921691, 0.287668, -0.260253,
		41.782135, 37.545143, 37.253727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030422, 38.045189, 37.226608>,  <41.136951, 37.343777, 37.435905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030422, 38.045189, 37.226608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373272, 37.943825, 37.047222>,  <41.578979, 37.883007, 36.939590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373272, 37.943825, 37.047222>,  <41.030422, 38.045189, 37.226608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373272, 37.943825, 37.047222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244094, 0.566853, -0.786827,
		0.453607, 0.783875, 0.424006,
		0.857122, -0.253413, -0.448467,
		41.630409, 37.867802, 36.912682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316879, 38.676876, 36.958420>,  <41.030422, 38.045189, 37.226608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316879, 38.676876, 36.958420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466351, 38.364876, 36.757633>,  <41.556034, 38.177677, 36.637161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466351, 38.364876, 36.757633>,  <41.316879, 38.676876, 36.958420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466351, 38.364876, 36.757633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269157, 0.426699, -0.863413,
		0.887650, 0.457743, -0.050496,
		0.373675, -0.779999, -0.501964,
		41.578453, 38.130875, 36.607044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367352, 38.960926, 36.318409>,  <41.316879, 38.676876, 36.958420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367352, 38.960926, 36.318409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445080, 38.575321, 36.245823>,  <41.491714, 38.343960, 36.202271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445080, 38.575321, 36.245823>,  <41.367352, 38.960926, 36.318409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445080, 38.575321, 36.245823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179403, 0.146948, -0.972738,
		0.964394, 0.221575, -0.144391,
		0.194317, -0.964007, -0.181467,
		41.503376, 38.286118, 36.191383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853851, 38.953945, 35.823296>,  <41.367352, 38.960926, 36.318409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853851, 38.953945, 35.823296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670391, 38.599251, 35.800186>,  <41.560314, 38.386433, 35.786320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670391, 38.599251, 35.800186>,  <41.853851, 38.953945, 35.823296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670391, 38.599251, 35.800186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179905, 0.156330, -0.971182,
		0.870215, -0.435038, -0.231229,
		-0.458650, -0.886737, -0.057775,
		41.532795, 38.333229, 35.782852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046669, 38.550110, 35.227234>,  <41.853851, 38.953945, 35.823296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046669, 38.550110, 35.227234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692570, 38.403141, 35.341312>,  <41.480110, 38.314960, 35.409760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692570, 38.403141, 35.341312>,  <42.046669, 38.550110, 35.227234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692570, 38.403141, 35.341312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382499, 0.226227, -0.895833,
		0.264637, -0.902118, -0.340808,
		-0.885247, -0.367429, 0.285191,
		41.426994, 38.292915, 35.426868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947098, 38.089821, 34.672092>,  <42.046669, 38.550110, 35.227234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947098, 38.089821, 34.672092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587376, 38.172997, 34.825977>,  <41.371540, 38.222900, 34.918308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587376, 38.172997, 34.825977>,  <41.947098, 38.089821, 34.672092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587376, 38.172997, 34.825977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335976, 0.234606, -0.912184,
		-0.279937, -0.949590, -0.141120,
		-0.899308, 0.207941, 0.384715,
		41.317585, 38.235378, 34.941391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518120, 37.945412, 34.176064>,  <41.947098, 38.089821, 34.672092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518120, 37.945412, 34.176064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272457, 38.132717, 34.430164>,  <41.125057, 38.245098, 34.582623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272457, 38.132717, 34.430164>,  <41.518120, 37.945412, 34.176064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272457, 38.132717, 34.430164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550777, 0.322165, -0.769970,
		-0.565201, -0.822765, 0.060046,
		-0.614159, 0.468260, 0.635248,
		41.088211, 38.273193, 34.620739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862640, 37.592781, 34.047066>,  <41.518120, 37.945412, 34.176064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862640, 37.592781, 34.047066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.863529, 37.971745, 34.175076>,  <40.864063, 38.199123, 34.251881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.863529, 37.971745, 34.175076>,  <40.862640, 37.592781, 34.047066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863529, 37.971745, 34.175076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572142, 0.263671, -0.776615,
		-0.820151, -0.181374, 0.542637,
		0.002220, 0.947407, 0.320022,
		40.864197, 38.255966, 34.271084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137737, 37.721863, 34.119102>,  <40.862640, 37.592781, 34.047066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137737, 37.721863, 34.119102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321972, 38.075676, 34.089512>,  <40.432510, 38.287964, 34.071758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321972, 38.075676, 34.089512>,  <40.137737, 37.721863, 34.119102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321972, 38.075676, 34.089512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569946, 0.230823, -0.788595,
		-0.680459, 0.405377, 0.610447,
		0.460583, 0.884528, -0.073978,
		40.460148, 38.341034, 34.067318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675652, 38.170738, 33.773220>,  <40.137737, 37.721863, 34.119102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675652, 38.170738, 33.773220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991779, 38.412651, 33.733963>,  <40.181458, 38.557800, 33.710407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991779, 38.412651, 33.733963>,  <39.675652, 38.170738, 33.773220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991779, 38.412651, 33.733963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437722, 0.445243, -0.781127,
		-0.428714, 0.660300, 0.616611,
		0.790319, 0.604784, -0.098146,
		40.228874, 38.594086, 33.704517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401039, 38.233536, 34.488083>,  <39.675652, 38.170738, 33.773220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401039, 38.233536, 34.488083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.039516, 38.064590, 34.515621>,  <38.822601, 37.963223, 34.532143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.039516, 38.064590, 34.515621>,  <39.401039, 38.233536, 34.488083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039516, 38.064590, 34.515621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217069, -0.313846, 0.924327,
		-0.368796, 0.850359, 0.375339,
		-0.903809, -0.422363, 0.068841,
		38.768375, 37.937881, 34.536274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102371, 38.371552, 35.144283>,  <39.401039, 38.233536, 34.488083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102371, 38.371552, 35.144283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.909592, 38.032795, 35.054394>,  <38.793922, 37.829540, 35.000462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.909592, 38.032795, 35.054394>,  <39.102371, 38.371552, 35.144283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909592, 38.032795, 35.054394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201604, -0.356773, 0.912178,
		-0.852690, 0.394320, 0.342684,
		-0.481950, -0.846891, -0.224720,
		38.765007, 37.778728, 34.986977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692535, 38.173183, 35.768696>,  <39.102371, 38.371552, 35.144283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692535, 38.173183, 35.768696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719391, 37.837933, 35.552166>,  <38.735504, 37.636780, 35.422249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719391, 37.837933, 35.552166>,  <38.692535, 38.173183, 35.768696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719391, 37.837933, 35.552166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303814, -0.499610, 0.811225,
		-0.950363, -0.218925, 0.221094,
		0.067137, -0.838130, -0.541323,
		38.739532, 37.586494, 35.389771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302582, 37.657631, 36.152302>,  <38.692535, 38.173183, 35.768696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302582, 37.657631, 36.152302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.565670, 37.466934, 35.919025>,  <38.723522, 37.352516, 35.779060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.565670, 37.466934, 35.919025>,  <38.302582, 37.657631, 36.152302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565670, 37.466934, 35.919025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220031, -0.618866, 0.754050,
		-0.720405, -0.624279, -0.302146,
		0.657725, -0.476740, -0.583195,
		38.762989, 37.323914, 35.744068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266853, 37.077812, 36.475086>,  <38.302582, 37.657631, 36.152302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266853, 37.077812, 36.475086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611515, 37.051121, 36.273849>,  <38.818310, 37.035107, 36.153107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611515, 37.051121, 36.273849>,  <38.266853, 37.077812, 36.475086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611515, 37.051121, 36.273849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328987, -0.681370, 0.653836,
		-0.386425, -0.728891, -0.565150,
		0.861651, -0.066732, -0.503094,
		38.870010, 37.031101, 36.122921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337025, 36.351265, 36.409424>,  <38.266853, 37.077812, 36.475086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337025, 36.351265, 36.409424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709980, 36.487534, 36.361107>,  <38.933754, 36.569294, 36.332119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709980, 36.487534, 36.361107>,  <38.337025, 36.351265, 36.409424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709980, 36.487534, 36.361107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352228, -0.781356, 0.515188,
		0.081130, -0.522902, -0.848523,
		0.932391, 0.340671, -0.120789,
		38.989697, 36.589733, 36.324871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766586, 35.751007, 36.412563>,  <38.337025, 36.351265, 36.409424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766586, 35.751007, 36.412563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001923, 36.061726, 36.502403>,  <39.143124, 36.248158, 36.556309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001923, 36.061726, 36.502403>,  <38.766586, 35.751007, 36.412563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001923, 36.061726, 36.502403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465696, -0.552574, 0.691223,
		0.661047, -0.302078, -0.686852,
		0.588339, 0.776795, 0.224601,
		39.178425, 36.294765, 36.569782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453537, 35.405144, 36.442760>,  <38.766586, 35.751007, 36.412563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453537, 35.405144, 36.442760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477795, 35.761650, 36.622520>,  <39.492352, 35.975555, 36.730377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477795, 35.761650, 36.622520>,  <39.453537, 35.405144, 36.442760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477795, 35.761650, 36.622520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496385, -0.417538, 0.761094,
		0.865982, 0.176916, -0.467736,
		0.060648, 0.891270, 0.449399,
		39.495991, 36.029030, 36.757339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155975, 35.491524, 36.592854>,  <39.453537, 35.405144, 36.442760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155975, 35.491524, 36.592854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.993813, 35.738041, 36.862915>,  <39.896515, 35.885952, 37.024952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.993813, 35.738041, 36.862915>,  <40.155975, 35.491524, 36.592854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993813, 35.738041, 36.862915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674843, -0.296428, 0.675808,
		0.616628, 0.729600, -0.295725,
		-0.405409, 0.616290, 0.675152,
		39.872189, 35.922928, 37.065460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717693, 35.861996, 36.897888>,  <40.155975, 35.491524, 36.592854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717693, 35.861996, 36.897888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.429653, 35.883614, 37.174591>,  <40.256828, 35.896584, 37.340614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.429653, 35.883614, 37.174591>,  <40.717693, 35.861996, 36.897888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429653, 35.883614, 37.174591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680119, -0.142519, 0.719115,
		0.137451, 0.988316, 0.065874,
		-0.720101, 0.054041, 0.691761,
		40.213623, 35.899826, 37.382118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811497, 36.446941, 37.459015>,  <40.717693, 35.861996, 36.897888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811497, 36.446941, 37.459015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.575314, 36.155785, 37.598461>,  <40.433601, 35.981091, 37.682129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.575314, 36.155785, 37.598461>,  <40.811497, 36.446941, 37.459015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575314, 36.155785, 37.598461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633194, -0.149968, 0.759325,
		-0.500422, 0.669095, 0.549444,
		-0.590460, -0.727888, 0.348620,
		40.398174, 35.937420, 37.703049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655399, 36.624676, 38.159538>,  <40.811497, 36.446941, 37.459015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655399, 36.624676, 38.159538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647797, 36.233105, 38.078213>,  <40.643234, 35.998161, 38.029419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647797, 36.233105, 38.078213>,  <40.655399, 36.624676, 38.159538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647797, 36.233105, 38.078213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675674, -0.162464, 0.719076,
		-0.736956, -0.123705, 0.664525,
		-0.019008, -0.978929, -0.203313,
		40.642094, 35.939426, 38.017220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.970222, 39.234428, 31.244900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991840, 38.837837, 31.197474>,  <37.004810, 38.599884, 31.169018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991840, 38.837837, 31.197474>,  <36.970222, 39.234428, 31.244900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991840, 38.837837, 31.197474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051170, -0.121334, 0.991292,
		-0.997226, -0.047512, -0.057292,
		0.054049, -0.991474, -0.118567,
		37.008057, 38.540394, 31.161903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532806, 38.976833, 31.743050>,  <36.970222, 39.234428, 31.244900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532806, 38.976833, 31.743050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761890, 38.663670, 31.645845>,  <36.899342, 38.475773, 31.587523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761890, 38.663670, 31.645845>,  <36.532806, 38.976833, 31.743050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761890, 38.663670, 31.645845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085709, -0.237631, 0.967567,
		-0.815263, -0.574966, -0.068992,
		0.572712, -0.782908, -0.243012,
		36.933704, 38.428799, 31.572943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256039, 38.517887, 32.214943>,  <36.532806, 38.976833, 31.743050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256039, 38.517887, 32.214943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623108, 38.405117, 32.102951>,  <36.843349, 38.337456, 32.035755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623108, 38.405117, 32.102951>,  <36.256039, 38.517887, 32.214943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623108, 38.405117, 32.102951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253269, -0.127894, 0.958905,
		-0.306151, -0.950873, -0.045961,
		0.917675, -0.281929, -0.279981,
		36.898411, 38.320538, 32.018955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452770, 37.913628, 32.671490>,  <36.256039, 38.517887, 32.214943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452770, 37.913628, 32.671490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800251, 38.054325, 32.531986>,  <37.008739, 38.138744, 32.448284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800251, 38.054325, 32.531986>,  <36.452770, 37.913628, 32.671490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800251, 38.054325, 32.531986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429452, -0.183959, 0.884155,
		0.246841, -0.917842, -0.310863,
		0.868700, 0.351747, -0.348761,
		37.060860, 38.159847, 32.427357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871487, 37.460629, 32.930984>,  <36.452770, 37.913628, 32.671490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871487, 37.460629, 32.930984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121986, 37.760536, 32.845512>,  <37.272285, 37.940479, 32.794228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121986, 37.760536, 32.845512>,  <36.871487, 37.460629, 32.930984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121986, 37.760536, 32.845512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543595, -0.223470, 0.809052,
		0.558849, -0.622827, -0.547517,
		0.626253, 0.749766, -0.213680,
		37.309864, 37.985466, 32.781410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490547, 37.220516, 33.102203>,  <36.871487, 37.460629, 32.930984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490547, 37.220516, 33.102203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558868, 37.614414, 33.115536>,  <37.599861, 37.850754, 33.123535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558868, 37.614414, 33.115536>,  <37.490547, 37.220516, 33.102203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558868, 37.614414, 33.115536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519925, -0.118813, 0.845909,
		0.836962, -0.127151, -0.532285,
		0.170801, 0.984742, 0.033333,
		37.610107, 37.909836, 33.125534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222069, 37.279049, 33.151672>,  <37.490547, 37.220516, 33.102203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222069, 37.279049, 33.151672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029369, 37.605183, 33.280132>,  <37.913750, 37.800865, 33.357208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029369, 37.605183, 33.280132>,  <38.222069, 37.279049, 33.151672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029369, 37.605183, 33.280132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613934, 0.052522, 0.787608,
		0.625299, 0.576598, -0.525867,
		-0.481753, 0.815338, 0.321151,
		37.884842, 37.849785, 33.376476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752560, 37.819641, 33.232269>,  <38.222069, 37.279049, 33.151672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752560, 37.819641, 33.232269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428791, 37.896126, 33.454361>,  <38.234531, 37.942017, 33.587616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428791, 37.896126, 33.454361>,  <38.752560, 37.819641, 33.232269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428791, 37.896126, 33.454361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567454, 0.011388, 0.823327,
		0.151110, 0.981482, -0.117724,
		-0.809421, 0.191215, 0.555225,
		38.185966, 37.953491, 33.620930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951157, 38.336113, 33.629326>,  <38.752560, 37.819641, 33.232269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951157, 38.336113, 33.629326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637970, 38.177883, 33.821358>,  <38.450058, 38.082947, 33.936577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637970, 38.177883, 33.821358>,  <38.951157, 38.336113, 33.629326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637970, 38.177883, 33.821358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578811, -0.180535, 0.795226,
		-0.227900, 0.900515, 0.370317,
		-0.782968, -0.395575, 0.480084,
		38.403080, 38.059212, 33.965382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454281, 38.941967, 33.852306>,  <38.951157, 38.336113, 33.629326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454281, 38.941967, 33.852306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805626, 38.916855, 33.662762>,  <40.016434, 38.901787, 33.549034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805626, 38.916855, 33.662762>,  <39.454281, 38.941967, 33.852306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805626, 38.916855, 33.662762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368462, 0.542583, -0.754877,
		0.304500, 0.837653, 0.453451,
		0.878360, -0.062780, -0.473860,
		40.069134, 38.898022, 33.520603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451447, 39.569736, 33.551517>,  <39.454281, 38.941967, 33.852306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451447, 39.569736, 33.551517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754616, 39.378277, 33.374226>,  <39.936516, 39.263401, 33.267849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754616, 39.378277, 33.374226>,  <39.451447, 39.569736, 33.551517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754616, 39.378277, 33.374226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162662, 0.519314, -0.838960,
		0.631741, 0.707962, 0.315742,
		0.757921, -0.478646, -0.443230,
		39.981991, 39.234684, 33.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018940, 40.041401, 33.400093>,  <39.451447, 39.569736, 33.551517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018940, 40.041401, 33.400093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004326, 39.729725, 33.149807>,  <39.995556, 39.542717, 32.999634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004326, 39.729725, 33.149807>,  <40.018940, 40.041401, 33.400093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004326, 39.729725, 33.149807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363673, 0.593569, -0.717926,
		0.930810, 0.201326, -0.305058,
		-0.036536, -0.779194, -0.625717,
		39.993366, 39.495968, 32.962093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275520, 40.325741, 32.878227>,  <40.018940, 40.041401, 33.400093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275520, 40.325741, 32.878227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141994, 39.991467, 32.703785>,  <40.061878, 39.790901, 32.599117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141994, 39.991467, 32.703785>,  <40.275520, 40.325741, 32.878227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141994, 39.991467, 32.703785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202712, 0.515463, -0.832590,
		0.920585, -0.189526, -0.341473,
		-0.333814, -0.835690, -0.436108,
		40.041851, 39.740761, 32.572952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383289, 40.434021, 32.144279>,  <40.275520, 40.325741, 32.878227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383289, 40.434021, 32.144279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167866, 40.097038, 32.150349>,  <40.038612, 39.894848, 32.153992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167866, 40.097038, 32.150349>,  <40.383289, 40.434021, 32.144279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167866, 40.097038, 32.150349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080611, 0.033586, -0.996180,
		0.838725, -0.537722, -0.085999,
		-0.538556, -0.842453, 0.015176,
		40.006298, 39.844303, 32.154903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642822, 40.014263, 31.592361>,  <40.383289, 40.434021, 32.144279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642822, 40.014263, 31.592361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273426, 39.875805, 31.658516>,  <40.051788, 39.792728, 31.698208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273426, 39.875805, 31.658516>,  <40.642822, 40.014263, 31.592361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273426, 39.875805, 31.658516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199343, 0.064651, -0.977795,
		0.327771, -0.935949, -0.128707,
		-0.923487, -0.346150, 0.165384,
		39.996380, 39.771961, 31.708132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533875, 39.666023, 31.027191>,  <40.642822, 40.014263, 31.592361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533875, 39.666023, 31.027191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182484, 39.766930, 31.189497>,  <39.971649, 39.827473, 31.286880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182484, 39.766930, 31.189497>,  <40.533875, 39.666023, 31.027191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182484, 39.766930, 31.189497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359417, 0.210640, -0.909093,
		-0.314801, -0.944454, -0.094374,
		-0.878476, 0.252264, 0.405762,
		39.918941, 39.842609, 31.311226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104019, 39.438324, 30.573402>,  <40.533875, 39.666023, 31.027191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104019, 39.438324, 30.573402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886574, 39.699753, 30.784048>,  <39.756107, 39.856609, 30.910435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886574, 39.699753, 30.784048>,  <40.104019, 39.438324, 30.573402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886574, 39.699753, 30.784048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432812, 0.319285, -0.843048,
		-0.719135, -0.686220, 0.109307,
		-0.543616, 0.653575, 0.526613,
		39.723488, 39.895824, 30.942032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403030, 39.291878, 30.464432>,  <40.104019, 39.438324, 30.573402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403030, 39.291878, 30.464432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424644, 39.676228, 30.573092>,  <39.437614, 39.906837, 30.638288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424644, 39.676228, 30.573092>,  <39.403030, 39.291878, 30.464432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424644, 39.676228, 30.573092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326403, 0.274101, -0.904616,
		-0.943685, -0.039785, 0.328445,
		0.054037, 0.960878, 0.271651,
		39.440857, 39.964489, 30.654587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769783, 39.590755, 30.199331>,  <39.403030, 39.291878, 30.464432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769783, 39.590755, 30.199331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044834, 39.877960, 30.242451>,  <39.209866, 40.050285, 30.268322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044834, 39.877960, 30.242451>,  <38.769783, 39.590755, 30.199331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044834, 39.877960, 30.242451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309879, 0.424490, -0.850755,
		-0.656614, 0.551599, 0.514390,
		0.687629, 0.718016, 0.107797,
		39.251122, 40.093365, 30.274790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425846, 40.147434, 29.944565>,  <38.769783, 39.590755, 30.199331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425846, 40.147434, 29.944565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812107, 40.250679, 29.956547>,  <39.043865, 40.312626, 29.963736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812107, 40.250679, 29.956547>,  <38.425846, 40.147434, 29.944565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812107, 40.250679, 29.956547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095791, 0.460777, -0.882331,
		-0.241540, 0.849155, 0.469674,
		0.965651, 0.258109, 0.029955,
		39.101803, 40.328114, 29.965532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462536, 40.924213, 29.749447>,  <38.425846, 40.147434, 29.944565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462536, 40.924213, 29.749447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828079, 40.771084, 29.695328>,  <39.047405, 40.679207, 29.662857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828079, 40.771084, 29.695328>,  <38.462536, 40.924213, 29.749447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828079, 40.771084, 29.695328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021564, 0.378506, -0.925347,
		0.405457, 0.842720, 0.354157,
		0.913860, -0.382826, -0.135296,
		39.102238, 40.656235, 29.654739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910244, 41.418919, 29.427088>,  <38.462536, 40.924213, 29.749447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910244, 41.418919, 29.427088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087337, 41.068901, 29.348816>,  <39.193596, 40.858891, 29.301853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087337, 41.068901, 29.348816>,  <38.910244, 41.418919, 29.427088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087337, 41.068901, 29.348816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172826, 0.297419, -0.938974,
		0.879839, 0.381900, 0.282908,
		0.442736, -0.875040, -0.195679,
		39.220158, 40.806389, 29.290112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593349, 41.594044, 29.194233>,  <38.910244, 41.418919, 29.427088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593349, 41.594044, 29.194233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512005, 41.226994, 29.057636>,  <39.463196, 41.006763, 28.975679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512005, 41.226994, 29.057636>,  <39.593349, 41.594044, 29.194233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512005, 41.226994, 29.057636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084608, 0.331003, -0.939829,
		0.975441, -0.220019, 0.010324,
		-0.203363, -0.917621, -0.341490,
		39.450996, 40.951706, 28.955189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.678288, 32.955658, 27.028580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.556633, 33.325985, 27.118347>,  <40.483643, 33.548180, 27.172207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.556633, 33.325985, 27.118347>,  <40.678288, 32.955658, 27.028580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556633, 33.325985, 27.118347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410454, -0.085235, 0.907889,
		0.859669, 0.368233, -0.354082,
		-0.304134, 0.925819, 0.224416,
		40.465393, 33.603729, 27.185673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237968, 33.279839, 27.306519>,  <40.678288, 32.955658, 27.028580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237968, 33.279839, 27.306519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.920609, 33.488190, 27.432505>,  <40.730194, 33.613201, 27.508097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.920609, 33.488190, 27.432505>,  <41.237968, 33.279839, 27.306519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920609, 33.488190, 27.432505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373219, 0.007517, 0.927713,
		0.480860, 0.853596, -0.200366,
		-0.793398, 0.520881, 0.314964,
		40.682590, 33.644455, 27.526995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587433, 33.769051, 27.709970>,  <41.237968, 33.279839, 27.306519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587433, 33.769051, 27.709970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204723, 33.726433, 27.818218>,  <40.975098, 33.700863, 27.883167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204723, 33.726433, 27.818218>,  <41.587433, 33.769051, 27.709970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204723, 33.726433, 27.818218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266651, 0.050154, 0.962487,
		-0.116124, 0.993042, -0.019575,
		-0.956772, -0.106548, 0.270620,
		40.917690, 33.694469, 27.899405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479797, 34.220043, 28.184742>,  <41.587433, 33.769051, 27.709970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479797, 34.220043, 28.184742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.205379, 33.939850, 28.263401>,  <41.040730, 33.771732, 28.310596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.205379, 33.939850, 28.263401>,  <41.479797, 34.220043, 28.184742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205379, 33.939850, 28.263401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184771, 0.093678, 0.978307,
		-0.703709, 0.707494, 0.065161,
		-0.686042, -0.700483, 0.196646,
		40.999565, 33.729706, 28.322395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107620, 34.516613, 28.660236>,  <41.479797, 34.220043, 28.184742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107620, 34.516613, 28.660236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.026314, 34.125957, 28.688103>,  <40.977531, 33.891563, 28.704823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.026314, 34.125957, 28.688103>,  <41.107620, 34.516613, 28.660236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026314, 34.125957, 28.688103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136482, 0.042193, 0.989744,
		-0.969565, 0.210687, 0.124718,
		-0.203264, -0.976643, 0.069664,
		40.965336, 33.832966, 28.709002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843376, 34.462265, 29.345957>,  <41.107620, 34.516613, 28.660236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843376, 34.462265, 29.345957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.899158, 34.072960, 29.272940>,  <40.932629, 33.839378, 29.229130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.899158, 34.072960, 29.272940>,  <40.843376, 34.462265, 29.345957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899158, 34.072960, 29.272940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330156, -0.128096, 0.935194,
		-0.933569, -0.190681, 0.303464,
		0.139452, -0.973258, -0.182541,
		40.940994, 33.780983, 29.218178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472088, 34.102413, 29.857246>,  <40.843376, 34.462265, 29.345957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472088, 34.102413, 29.857246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.693008, 33.803486, 29.709475>,  <40.825562, 33.624130, 29.620811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.693008, 33.803486, 29.709475>,  <40.472088, 34.102413, 29.857246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693008, 33.803486, 29.709475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052510, -0.411083, 0.910084,
		-0.831988, -0.522042, -0.187802,
		0.552304, -0.747317, -0.369429,
		40.858700, 33.579292, 29.598646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167667, 33.496689, 29.989700>,  <40.472088, 34.102413, 29.857246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167667, 33.496689, 29.989700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.556732, 33.410881, 29.954103>,  <40.790169, 33.359398, 29.932745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.556732, 33.410881, 29.954103>,  <40.167667, 33.496689, 29.989700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556732, 33.410881, 29.954103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028743, -0.491424, 0.870446,
		-0.230456, -0.844089, -0.484153,
		0.972658, -0.214515, -0.088990,
		40.848530, 33.346527, 29.927406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218174, 32.809303, 30.391550>,  <40.167667, 33.496689, 29.989700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218174, 32.809303, 30.391550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.594406, 32.934162, 30.338074>,  <40.820145, 33.009075, 30.305988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.594406, 32.934162, 30.338074>,  <40.218174, 32.809303, 30.391550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594406, 32.934162, 30.338074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286829, -0.519588, 0.804833,
		0.181761, -0.795357, -0.578247,
		0.940581, 0.312146, -0.133691,
		40.876579, 33.027805, 30.297966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663952, 32.297119, 30.515882>,  <40.218174, 32.809303, 30.391550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663952, 32.297119, 30.515882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875996, 32.626671, 30.596081>,  <41.003223, 32.824402, 30.644199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875996, 32.626671, 30.596081>,  <40.663952, 32.297119, 30.515882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875996, 32.626671, 30.596081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377960, -0.441259, 0.813902,
		0.759030, -0.355681, -0.545311,
		0.530113, 0.823882, 0.200496,
		41.035030, 32.873837, 30.656229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148922, 32.019840, 30.840263>,  <40.663952, 32.297119, 30.515882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148922, 32.019840, 30.840263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200066, 32.404926, 30.935627>,  <41.230751, 32.635979, 30.992846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200066, 32.404926, 30.935627>,  <41.148922, 32.019840, 30.840263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200066, 32.404926, 30.935627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380698, -0.269609, 0.884522,
		0.915817, -0.022333, -0.400975,
		0.127861, 0.962711, 0.238410,
		41.238422, 32.693741, 31.007151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813976, 32.162792, 31.128710>,  <41.148922, 32.019840, 30.840263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813976, 32.162792, 31.128710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.600693, 32.472565, 31.264912>,  <41.472721, 32.658428, 31.346632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.600693, 32.472565, 31.264912>,  <41.813976, 32.162792, 31.128710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600693, 32.472565, 31.264912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377152, -0.142676, 0.915096,
		0.757258, 0.616363, -0.216001,
		-0.533213, 0.774429, 0.340505,
		41.440727, 32.704895, 31.367064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286934, 32.631725, 31.392376>,  <41.813976, 32.162792, 31.128710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286934, 32.631725, 31.392376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.949184, 32.767117, 31.558495>,  <41.746536, 32.848351, 31.658165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.949184, 32.767117, 31.558495>,  <42.286934, 32.631725, 31.392376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949184, 32.767117, 31.558495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449600, 0.026097, 0.892849,
		0.291373, 0.940612, -0.174216,
		-0.844370, 0.338480, 0.415295,
		41.695873, 32.868660, 31.683083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566578, 33.200588, 31.798393>,  <42.286934, 32.631725, 31.392376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566578, 33.200588, 31.798393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.214767, 33.072502, 31.939186>,  <42.003681, 32.995651, 32.023663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.214767, 33.072502, 31.939186>,  <42.566578, 33.200588, 31.798393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214767, 33.072502, 31.939186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397378, -0.087366, 0.913486,
		-0.261763, 0.943307, 0.204088,
		-0.879529, -0.320217, 0.351981,
		41.950909, 32.976437, 32.044781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839912, 33.895226, 31.611063>,  <42.566578, 33.200588, 31.798393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839912, 33.895226, 31.611063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.156681, 34.126671, 31.689110>,  <43.346741, 34.265537, 31.735937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.156681, 34.126671, 31.689110>,  <42.839912, 33.895226, 31.611063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156681, 34.126671, 31.689110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184450, 0.531283, -0.826872,
		-0.582099, 0.618828, 0.527459,
		0.791921, 0.578611, 0.195117,
		43.394257, 34.300255, 31.747644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562740, 34.598595, 31.619080>,  <42.839912, 33.895226, 31.611063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562740, 34.598595, 31.619080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.955036, 34.615234, 31.542744>,  <43.190414, 34.625217, 31.496943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.955036, 34.615234, 31.542744>,  <42.562740, 34.598595, 31.619080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955036, 34.615234, 31.542744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189102, 0.446806, -0.874417,
		0.048890, 0.893663, 0.446067,
		0.980740, 0.041602, -0.190838,
		43.249260, 34.627716, 31.485493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598160, 35.132637, 31.209902>,  <42.562740, 34.598595, 31.619080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598160, 35.132637, 31.209902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.964493, 34.984276, 31.148350>,  <43.184292, 34.895260, 31.111418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.964493, 34.984276, 31.148350>,  <42.598160, 35.132637, 31.209902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964493, 34.984276, 31.148350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008706, 0.401461, -0.915835,
		0.401461, 0.837414, 0.370901,
		0.915835, -0.370901, -0.153880,
		43.239243, 34.873005, 31.102186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003307, 35.670883, 30.980724>,  <42.598160, 35.132637, 31.209902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003307, 35.670883, 30.980724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.164696, 35.325466, 30.859726>,  <43.261528, 35.118217, 30.787127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.164696, 35.325466, 30.859726>,  <43.003307, 35.670883, 30.980724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164696, 35.325466, 30.859726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094621, 0.289451, -0.952505,
		0.910085, 0.412934, 0.035077,
		0.403475, -0.863541, -0.302497,
		43.285740, 35.066402, 30.768976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501171, 35.794811, 30.496786>,  <43.003307, 35.670883, 30.980724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501171, 35.794811, 30.496786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.430744, 35.407524, 30.425743>,  <43.388489, 35.175152, 30.383118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.430744, 35.407524, 30.425743>,  <43.501171, 35.794811, 30.496786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430744, 35.407524, 30.425743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085401, 0.164722, -0.982636,
		0.980666, -0.188181, 0.053685,
		-0.176071, -0.968222, -0.177608,
		43.377922, 35.117058, 30.372461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987072, 35.666985, 30.047043>,  <43.501171, 35.794811, 30.496786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987072, 35.666985, 30.047043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.696445, 35.396156, 30.000254>,  <43.522072, 35.233658, 29.972179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.696445, 35.396156, 30.000254>,  <43.987072, 35.666985, 30.047043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696445, 35.396156, 30.000254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058857, 0.230945, -0.971185,
		0.684574, -0.698743, -0.207646,
		-0.726564, -0.677069, -0.116973,
		43.478477, 35.193035, 29.965162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153160, 35.502571, 29.379206>,  <43.987072, 35.666985, 30.047043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153160, 35.502571, 29.379206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.795742, 35.333317, 29.439249>,  <43.581291, 35.231766, 29.475275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.795742, 35.333317, 29.439249>,  <44.153160, 35.502571, 29.379206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795742, 35.333317, 29.439249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213927, 0.107309, -0.970938,
		0.394729, -0.899690, -0.186406,
		-0.893546, -0.423135, 0.150110,
		43.527679, 35.206375, 29.484282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980885, 35.000008, 28.779898>,  <44.153160, 35.502571, 29.379206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980885, 35.000008, 28.779898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.630547, 35.101227, 28.944269>,  <43.420345, 35.161957, 29.042892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.630547, 35.101227, 28.944269>,  <43.980885, 35.000008, 28.779898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630547, 35.101227, 28.944269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332825, 0.299879, -0.894036,
		-0.349460, -0.919805, -0.178429,
		-0.875845, 0.253044, 0.410930,
		43.367794, 35.177139, 29.067549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289455, 34.530720, 28.489481>,  <43.980885, 35.000008, 28.779898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289455, 34.530720, 28.489481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.205685, 34.903671, 28.607338>,  <43.155422, 35.127441, 28.678053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.205685, 34.903671, 28.607338>,  <43.289455, 34.530720, 28.489481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205685, 34.903671, 28.607338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351519, 0.209393, -0.912463,
		-0.912455, -0.294670, 0.283894,
		-0.209430, 0.932376, 0.294644,
		43.142857, 35.183384, 28.695730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770298, 34.672356, 27.907717>,  <43.289455, 34.530720, 28.489481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770298, 34.672356, 27.907717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.786850, 35.018200, 28.108011>,  <42.796780, 35.225708, 28.228188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.786850, 35.018200, 28.108011>,  <42.770298, 34.672356, 27.907717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786850, 35.018200, 28.108011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573593, 0.430906, -0.696642,
		-0.818095, -0.258394, 0.513764,
		0.041376, 0.864611, 0.500735,
		42.799263, 35.277584, 28.258232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109447, 34.909958, 27.884596>,  <42.770298, 34.672356, 27.907717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109447, 34.909958, 27.884596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.371990, 35.203423, 27.954950>,  <42.529514, 35.379501, 27.997164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.371990, 35.203423, 27.954950>,  <42.109447, 34.909958, 27.884596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371990, 35.203423, 27.954950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485077, 0.588935, -0.646418,
		-0.577840, 0.338960, 0.742433,
		0.656355, 0.733663, 0.175888,
		42.568897, 35.423523, 28.007717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749306, 35.489841, 27.845795>,  <42.109447, 34.909958, 27.884596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749306, 35.489841, 27.845795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.112701, 35.647007, 27.788857>,  <42.330738, 35.741306, 27.754694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.112701, 35.647007, 27.788857>,  <41.749306, 35.489841, 27.845795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112701, 35.647007, 27.788857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334341, 0.479012, -0.811642,
		-0.250720, 0.784962, 0.566546,
		0.908491, 0.392914, -0.142347,
		42.385250, 35.764881, 27.746153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708466, 36.253235, 27.756947>,  <41.749306, 35.489841, 27.845795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708466, 36.253235, 27.756947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.052155, 36.151234, 27.579540>,  <42.258369, 36.090034, 27.473097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.052155, 36.151234, 27.579540>,  <41.708466, 36.253235, 27.756947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052155, 36.151234, 27.579540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297632, 0.455958, -0.838759,
		0.416108, 0.852688, 0.315875,
		0.859226, -0.255000, -0.443515,
		42.309921, 36.074734, 27.446486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066425, 36.925106, 27.456057>,  <41.708466, 36.253235, 27.756947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066425, 36.925106, 27.456057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.192162, 36.611080, 27.242569>,  <42.267601, 36.422665, 27.114475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.192162, 36.611080, 27.242569>,  <42.066425, 36.925106, 27.456057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192162, 36.611080, 27.242569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121763, 0.524233, -0.842825,
		0.941470, 0.329920, 0.069194,
		0.314338, -0.785069, -0.533721,
		42.286465, 36.375561, 27.082453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458630, 37.597881, 27.518845>,  <42.066425, 36.925106, 27.456057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458630, 37.597881, 27.518845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.461674, 37.997593, 27.503967>,  <42.463501, 38.237419, 27.495041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.461674, 37.997593, 27.503967>,  <42.458630, 37.597881, 27.518845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461674, 37.997593, 27.503967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568306, 0.026279, 0.822398,
		0.822782, -0.027399, -0.567696,
		0.007615, 0.999279, -0.037193,
		42.463959, 38.297379, 27.492809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238087, 37.872906, 27.669924>,  <42.458630, 37.597881, 27.518845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238087, 37.872906, 27.669924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.967999, 38.154327, 27.758549>,  <42.805946, 38.323181, 27.811724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.967999, 38.154327, 27.758549>,  <43.238087, 37.872906, 27.669924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967999, 38.154327, 27.758549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377157, 0.071166, 0.923411,
		0.633900, 0.707071, -0.313403,
		-0.675220, 0.703553, 0.221565,
		42.765434, 38.365395, 27.825018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649765, 38.489227, 27.896648>,  <43.238087, 37.872906, 27.669924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649765, 38.489227, 27.896648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.281998, 38.566814, 28.033499>,  <43.061337, 38.613365, 28.115608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.281998, 38.566814, 28.033499>,  <43.649765, 38.489227, 27.896648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281998, 38.566814, 28.033499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372393, 0.149612, 0.915937,
		0.126476, 0.969532, -0.209788,
		-0.919417, 0.193968, 0.342124,
		43.006172, 38.625004, 28.136135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731167, 39.069893, 28.292631>,  <43.649765, 38.489227, 27.896648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731167, 39.069893, 28.292631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.412621, 38.865627, 28.422258>,  <43.221493, 38.743069, 28.500034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.412621, 38.865627, 28.422258>,  <43.731167, 39.069893, 28.292631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412621, 38.865627, 28.422258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288479, 0.150220, 0.945629,
		-0.531579, 0.846556, 0.027685,
		-0.796369, -0.510663, 0.324068,
		43.173710, 38.712429, 28.519478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507580, 39.497623, 28.785864>,  <43.731167, 39.069893, 28.292631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507580, 39.497623, 28.785864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.331829, 39.146046, 28.860067>,  <43.226379, 38.935101, 28.904589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.331829, 39.146046, 28.860067>,  <43.507580, 39.497623, 28.785864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331829, 39.146046, 28.860067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088803, 0.162999, 0.982622,
		-0.893905, 0.448211, 0.006436,
		-0.439373, -0.878942, 0.185508,
		43.200016, 38.882362, 28.915720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258961, 39.608707, 29.359249>,  <43.507580, 39.497623, 28.785864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258961, 39.608707, 29.359249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.259766, 39.208843, 29.348860>,  <43.260250, 38.968925, 29.342627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.259766, 39.208843, 29.348860>,  <43.258961, 39.608707, 29.359249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259766, 39.208843, 29.348860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351547, -0.023607, 0.935873,
		-0.936168, -0.011017, 0.351380,
		0.002016, -0.999661, -0.025973,
		43.260372, 38.908943, 29.341068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930618, 39.397343, 30.010328>,  <43.258961, 39.608707, 29.359249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930618, 39.397343, 30.010328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.116501, 39.066479, 29.883936>,  <43.228031, 38.867958, 29.808100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.116501, 39.066479, 29.883936>,  <42.930618, 39.397343, 30.010328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116501, 39.066479, 29.883936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277974, -0.202534, 0.938995,
		-0.840700, -0.524194, 0.135810,
		0.464710, -0.827164, -0.315982,
		43.255913, 38.818329, 29.789141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676067, 38.819057, 30.366426>,  <42.930618, 39.397343, 30.010328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676067, 38.819057, 30.366426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.024258, 38.668877, 30.239111>,  <43.233173, 38.578770, 30.162722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.024258, 38.668877, 30.239111>,  <42.676067, 38.819057, 30.366426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024258, 38.668877, 30.239111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218135, -0.285418, 0.933249,
		-0.441236, -0.881801, -0.166550,
		0.870475, -0.375452, -0.318288,
		43.285400, 38.556240, 30.143625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736752, 38.155968, 30.649408>,  <42.676067, 38.819057, 30.366426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736752, 38.155968, 30.649408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.110916, 38.268021, 30.563126>,  <43.335415, 38.335251, 30.511356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.110916, 38.268021, 30.563126>,  <42.736752, 38.155968, 30.649408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110916, 38.268021, 30.563126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301896, -0.315304, 0.899690,
		0.184016, -0.906703, -0.379509,
		0.935413, 0.280130, -0.215709,
		43.391541, 38.352058, 30.498413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090485, 37.606560, 30.789013>,  <42.736752, 38.155968, 30.649408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090485, 37.606560, 30.789013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.341515, 37.916790, 30.816263>,  <43.492130, 38.102928, 30.832613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.341515, 37.916790, 30.816263>,  <43.090485, 37.606560, 30.789013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341515, 37.916790, 30.816263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441656, -0.426703, 0.789217,
		0.641165, -0.465202, -0.610323,
		0.627572, 0.775571, 0.068127,
		43.529785, 38.149460, 30.836700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735573, 37.331142, 30.977501>,  <43.090485, 37.606560, 30.789013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735573, 37.331142, 30.977501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.756062, 37.718773, 31.074047>,  <43.768356, 37.951351, 31.131975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.756062, 37.718773, 31.074047>,  <43.735573, 37.331142, 30.977501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756062, 37.718773, 31.074047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378166, -0.242509, 0.893409,
		0.924319, 0.045514, -0.378896,
		0.051223, 0.969081, 0.241368,
		43.771427, 38.009499, 31.146458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312912, 37.331993, 31.406078>,  <43.735573, 37.331142, 30.977501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312912, 37.331993, 31.406078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.152020, 37.695869, 31.447395>,  <44.055485, 37.914196, 31.472185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.152020, 37.695869, 31.447395>,  <44.312912, 37.331993, 31.406078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152020, 37.695869, 31.447395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320464, 0.034207, 0.946643,
		0.857622, 0.413869, -0.305283,
		-0.402229, 0.909694, 0.103293,
		44.031349, 37.968777, 31.478384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842052, 37.858078, 31.707878>,  <44.312912, 37.331993, 31.406078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842052, 37.858078, 31.707878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.481998, 38.012321, 31.788935>,  <44.265965, 38.104866, 31.837568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.481998, 38.012321, 31.788935>,  <44.842052, 37.858078, 31.707878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481998, 38.012321, 31.788935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279737, 0.155089, 0.947468,
		0.333923, 0.909535, -0.247469,
		-0.900135, 0.385608, 0.202643,
		44.211960, 38.128002, 31.849728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994217, 38.447990, 32.061020>,  <44.842052, 37.858078, 31.707878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994217, 38.447990, 32.061020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.623070, 38.330269, 32.152634>,  <44.400383, 38.259636, 32.207600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.623070, 38.330269, 32.152634>,  <44.994217, 38.447990, 32.061020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623070, 38.330269, 32.152634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210900, 0.092391, 0.973131,
		-0.307553, 0.951237, -0.023659,
		-0.927864, -0.294300, 0.229031,
		44.344711, 38.241978, 32.221344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.049725, 41.381184, 28.645336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.754890, 41.120178, 28.574986>,  <39.577991, 40.963573, 28.532776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.754890, 41.120178, 28.574986>,  <40.049725, 41.381184, 28.645336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754890, 41.120178, 28.574986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019589, 0.239510, -0.970696,
		0.675518, -0.718930, -0.163757,
		-0.737083, -0.652515, -0.175876,
		39.533764, 40.924423, 28.522223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209263, 40.910107, 28.051085>,  <40.049725, 41.381184, 28.645336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209263, 40.910107, 28.051085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.811932, 40.872002, 28.077066>,  <39.573532, 40.849140, 28.092655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.811932, 40.872002, 28.077066>,  <40.209263, 40.910107, 28.051085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811932, 40.872002, 28.077066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057422, -0.079783, -0.995157,
		0.099981, -0.992250, 0.073781,
		-0.993331, -0.095261, 0.064954,
		39.513931, 40.843422, 28.096552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041752, 40.452747, 27.494543>,  <40.209263, 40.910107, 28.051085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041752, 40.452747, 27.494543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.689640, 40.618710, 27.586596>,  <39.478374, 40.718288, 27.641827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.689640, 40.618710, 27.586596>,  <40.041752, 40.452747, 27.494543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689640, 40.618710, 27.586596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273601, -0.047646, -0.960662,
		-0.387624, -0.908614, 0.155462,
		-0.880278, 0.414911, 0.230129,
		39.425556, 40.743183, 27.655634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538277, 40.163052, 27.060711>,  <40.041752, 40.452747, 27.494543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538277, 40.163052, 27.060711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.384033, 40.515594, 27.169905>,  <39.291485, 40.727119, 27.235420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.384033, 40.515594, 27.169905>,  <39.538277, 40.163052, 27.060711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384033, 40.515594, 27.169905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295679, 0.162219, -0.941413,
		-0.874000, -0.443737, 0.198043,
		-0.385613, 0.881353, 0.272983,
		39.268349, 40.779999, 27.251801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043411, 40.200790, 26.726562>,  <39.538277, 40.163052, 27.060711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043411, 40.200790, 26.726562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.093349, 40.589073, 26.808685>,  <39.123314, 40.822041, 26.857958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.093349, 40.589073, 26.808685>,  <39.043411, 40.200790, 26.726562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093349, 40.589073, 26.808685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161772, 0.224070, -0.961053,
		-0.978899, 0.086770, 0.185006,
		0.124845, 0.970703, 0.205305,
		39.130802, 40.880283, 26.870277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491600, 40.588627, 26.371523>,  <39.043411, 40.200790, 26.726562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491600, 40.588627, 26.371523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734997, 40.894905, 26.454893>,  <38.881035, 41.078674, 26.504915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.734997, 40.894905, 26.454893>,  <38.491600, 40.588627, 26.371523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734997, 40.894905, 26.454893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212940, 0.410563, -0.886620,
		-0.764456, 0.495120, 0.412872,
		0.608493, 0.765699, 0.208427,
		38.917545, 41.124615, 26.517422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112778, 41.150249, 26.115189>,  <38.491600, 40.588627, 26.371523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112778, 41.150249, 26.115189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498314, 41.254780, 26.136063>,  <38.729637, 41.317497, 26.148586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498314, 41.254780, 26.136063>,  <38.112778, 41.150249, 26.115189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498314, 41.254780, 26.136063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077131, 0.461017, -0.884033,
		-0.255076, 0.848041, 0.464503,
		0.963840, 0.261323, 0.052184,
		38.787464, 41.333176, 26.151718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187164, 41.869434, 25.748905>,  <38.112778, 41.150249, 26.115189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187164, 41.869434, 25.748905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559731, 41.724571, 25.763338>,  <38.783272, 41.637653, 25.771997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559731, 41.724571, 25.763338>,  <38.187164, 41.869434, 25.748905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559731, 41.724571, 25.763338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155233, 0.305650, -0.939404,
		0.329185, 0.880579, 0.340907,
		0.931418, -0.362157, 0.036080,
		38.839157, 41.615925, 25.774162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602768, 42.359917, 25.607649>,  <38.187164, 41.869434, 25.748905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602768, 42.359917, 25.607649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.803326, 42.024685, 25.521641>,  <38.923660, 41.823547, 25.470036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.803326, 42.024685, 25.521641>,  <38.602768, 42.359917, 25.607649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803326, 42.024685, 25.521641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108073, 0.307234, -0.945478,
		0.858445, 0.450816, 0.244617,
		0.501391, -0.838077, -0.215022,
		38.953743, 41.773262, 25.457134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165058, 42.593880, 25.226053>,  <38.602768, 42.359917, 25.607649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165058, 42.593880, 25.226053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129723, 42.201775, 25.155306>,  <39.108521, 41.966511, 25.112858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129723, 42.201775, 25.155306>,  <39.165058, 42.593880, 25.226053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129723, 42.201775, 25.155306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090917, 0.168885, -0.981434,
		0.991933, -0.102778, 0.074204,
		-0.088338, -0.980263, -0.176867,
		39.103222, 41.907696, 25.102245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601955, 42.511307, 24.660709>,  <39.165058, 42.593880, 25.226053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601955, 42.511307, 24.660709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.374134, 42.182629, 24.668919>,  <39.237442, 41.985420, 24.673843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.374134, 42.182629, 24.668919>,  <39.601955, 42.511307, 24.660709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374134, 42.182629, 24.668919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002478, -0.023251, -0.999727,
		0.821949, -0.569451, 0.011206,
		-0.569556, -0.821696, 0.020522,
		39.203266, 41.936119, 24.675076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913177, 42.065933, 24.223845>,  <39.601955, 42.511307, 24.660709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913177, 42.065933, 24.223845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.548874, 41.904888, 24.260563>,  <39.330292, 41.808262, 24.282593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.548874, 41.904888, 24.260563>,  <39.913177, 42.065933, 24.223845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548874, 41.904888, 24.260563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036799, -0.142277, -0.989143,
		0.411301, -0.904246, 0.114764,
		-0.910756, -0.402612, 0.091794,
		39.275646, 41.784103, 24.288101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831646, 41.610020, 23.625849>,  <39.913177, 42.065933, 24.223845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831646, 41.610020, 23.625849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462765, 41.687531, 23.759710>,  <39.241436, 41.734039, 23.840027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462765, 41.687531, 23.759710>,  <39.831646, 41.610020, 23.625849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462765, 41.687531, 23.759710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298220, 0.194548, -0.934460,
		-0.246185, -0.961562, -0.121624,
		-0.922202, 0.193779, 0.334652,
		39.186104, 41.745663, 23.860106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354767, 41.059711, 23.435465>,  <39.831646, 41.610020, 23.625849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354767, 41.059711, 23.435465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171604, 41.413559, 23.470736>,  <39.061707, 41.625866, 23.491898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171604, 41.413559, 23.470736>,  <39.354767, 41.059711, 23.435465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171604, 41.413559, 23.470736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066341, 0.064907, -0.995683,
		-0.886521, -0.461781, 0.028965,
		-0.457908, 0.884616, 0.088177,
		39.034233, 41.678944, 23.497189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361801, 40.357986, 23.097113>,  <39.354767, 41.059711, 23.435465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361801, 40.357986, 23.097113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.673584, 40.219124, 22.888527>,  <39.860653, 40.135807, 22.763374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.673584, 40.219124, 22.888527>,  <39.361801, 40.357986, 23.097113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673584, 40.219124, 22.888527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422322, -0.323619, 0.846709,
		-0.462700, -0.880199, -0.105633,
		0.779457, -0.347161, -0.521466,
		39.907421, 40.114975, 22.732088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503201, 39.747360, 23.454075>,  <39.361801, 40.357986, 23.097113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503201, 39.747360, 23.454075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825935, 39.815044, 23.227667>,  <40.019577, 39.855656, 23.091822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.825935, 39.815044, 23.227667>,  <39.503201, 39.747360, 23.454075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825935, 39.815044, 23.227667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574596, -0.447422, 0.685312,
		-0.137290, -0.878170, -0.458224,
		0.806840, 0.169207, -0.566019,
		40.067986, 39.865807, 23.057861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752117, 39.050636, 23.345854>,  <39.503201, 39.747360, 23.454075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752117, 39.050636, 23.345854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.016510, 39.349056, 23.313583>,  <40.175144, 39.528107, 23.294222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.016510, 39.349056, 23.313583>,  <39.752117, 39.050636, 23.345854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016510, 39.349056, 23.313583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577745, -0.437346, 0.689158,
		0.478865, -0.502131, -0.720106,
		0.660983, 0.746051, -0.080674,
		40.214806, 39.572872, 23.289381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377144, 38.609753, 23.443405>,  <39.752117, 39.050636, 23.345854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377144, 38.609753, 23.443405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.495190, 38.991005, 23.470055>,  <40.566017, 39.219757, 23.486044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.495190, 38.991005, 23.470055>,  <40.377144, 38.609753, 23.443405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495190, 38.991005, 23.470055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639073, -0.248747, 0.727812,
		0.710276, -0.172214, -0.682532,
		0.295117, 0.953135, 0.066622,
		40.583725, 39.276947, 23.490042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083427, 38.584141, 23.380150>,  <40.377144, 38.609753, 23.443405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083427, 38.584141, 23.380150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.005470, 38.927849, 23.569323>,  <40.958694, 39.134075, 23.682827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.005470, 38.927849, 23.569323>,  <41.083427, 38.584141, 23.380150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005470, 38.927849, 23.569323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770209, -0.164468, 0.616221,
		0.607285, 0.484353, -0.629767,
		-0.194892, 0.859274, 0.472933,
		40.947002, 39.185631, 23.711203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762318, 38.803001, 23.730436>,  <41.083427, 38.584141, 23.380150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762318, 38.803001, 23.730436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.506649, 39.045208, 23.920095>,  <41.353249, 39.190533, 24.033890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.506649, 39.045208, 23.920095>,  <41.762318, 38.803001, 23.730436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506649, 39.045208, 23.920095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571733, -0.038236, 0.819549,
		0.514378, 0.794915, -0.321753,
		-0.639169, 0.605514, 0.474147,
		41.314899, 39.226864, 24.062340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086727, 39.329384, 24.039721>,  <41.762318, 38.803001, 23.730436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086727, 39.329384, 24.039721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.745029, 39.284580, 24.242786>,  <41.540012, 39.257698, 24.364626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.745029, 39.284580, 24.242786>,  <42.086727, 39.329384, 24.039721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745029, 39.284580, 24.242786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518831, -0.121845, 0.846149,
		-0.032920, 0.986209, 0.162199,
		-0.854243, -0.112009, 0.507665,
		41.488758, 39.250977, 24.395086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171444, 39.700424, 24.613447>,  <42.086727, 39.329384, 24.039721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171444, 39.700424, 24.613447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.880032, 39.453239, 24.731684>,  <41.705185, 39.304928, 24.802626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.880032, 39.453239, 24.731684>,  <42.171444, 39.700424, 24.613447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880032, 39.453239, 24.731684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481631, -0.155237, 0.862515,
		-0.487112, 0.770733, 0.410722,
		-0.728528, -0.617958, 0.295591,
		41.661472, 39.267853, 24.820360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863369, 39.982513, 25.236465>,  <42.171444, 39.700424, 24.613447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863369, 39.982513, 25.236465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786747, 39.589924, 25.237907>,  <41.740776, 39.354370, 25.238773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786747, 39.589924, 25.237907>,  <41.863369, 39.982513, 25.236465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786747, 39.589924, 25.237907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419570, -0.078565, 0.904317,
		-0.887282, 0.174736, 0.426847,
		-0.191552, -0.981476, 0.003605,
		41.729282, 39.295483, 25.238989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754322, 39.929329, 25.858040>,  <41.863369, 39.982513, 25.236465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754322, 39.929329, 25.858040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.794197, 39.544220, 25.757532>,  <41.818123, 39.313156, 25.697227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.794197, 39.544220, 25.757532>,  <41.754322, 39.929329, 25.858040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794197, 39.544220, 25.757532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281406, -0.214939, 0.935207,
		-0.954397, -0.163936, 0.249503,
		0.099686, -0.962770, -0.251270,
		41.824104, 39.255390, 25.682152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351238, 39.600643, 26.309546>,  <41.754322, 39.929329, 25.858040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351238, 39.600643, 26.309546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614357, 39.328220, 26.180883>,  <41.772228, 39.164768, 26.103687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614357, 39.328220, 26.180883>,  <41.351238, 39.600643, 26.309546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614357, 39.328220, 26.180883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102114, -0.342470, 0.933963,
		-0.746240, -0.647205, -0.155731,
		0.657799, -0.681058, -0.321653,
		41.811695, 39.123901, 26.084387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160080, 38.832130, 26.589916>,  <41.351238, 39.600643, 26.309546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160080, 38.832130, 26.589916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547733, 38.797260, 26.497675>,  <41.780327, 38.776340, 26.442331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547733, 38.797260, 26.497675>,  <41.160080, 38.832130, 26.589916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547733, 38.797260, 26.497675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172146, -0.430287, 0.886126,
		-0.176469, -0.898473, -0.402000,
		0.969136, -0.087171, -0.230601,
		41.838474, 38.771111, 26.428495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416798, 38.187328, 26.889362>,  <41.160080, 38.832130, 26.589916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416798, 38.187328, 26.889362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748146, 38.398205, 26.813602>,  <41.946957, 38.524731, 26.768147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748146, 38.398205, 26.813602>,  <41.416798, 38.187328, 26.889362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748146, 38.398205, 26.813602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416080, -0.352667, 0.838155,
		0.375072, -0.773109, -0.511492,
		0.828371, 0.527190, -0.189399,
		41.996658, 38.556362, 26.756783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922298, 37.747143, 27.001841>,  <41.416798, 38.187328, 26.889362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922298, 37.747143, 27.001841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.104465, 38.101269, 27.039389>,  <42.213764, 38.313744, 27.061918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.104465, 38.101269, 27.039389>,  <41.922298, 37.747143, 27.001841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104465, 38.101269, 27.039389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361988, -0.280471, 0.888989,
		0.813364, -0.370881, -0.448204,
		0.455417, 0.885316, 0.093871,
		42.241089, 38.366863, 27.067551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420963, 37.169209, 26.815569>,  <41.922298, 37.747143, 27.001841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420963, 37.169209, 26.815569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376606, 36.783253, 26.720325>,  <42.349991, 36.551682, 26.663179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.376606, 36.783253, 26.720325>,  <42.420963, 37.169209, 26.815569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376606, 36.783253, 26.720325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313887, 0.261328, -0.912789,
		0.942962, -0.026482, -0.331845,
		-0.110893, -0.964887, -0.238110,
		42.343338, 36.493786, 26.648893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670502, 37.100227, 26.106174>,  <42.420963, 37.169209, 26.815569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670502, 37.100227, 26.106174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.442871, 36.775295, 26.157188>,  <42.306293, 36.580334, 26.187798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.442871, 36.775295, 26.157188>,  <42.670502, 37.100227, 26.106174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442871, 36.775295, 26.157188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276481, 0.042961, -0.960059,
		0.774409, -0.581608, -0.249043,
		-0.569077, -0.812334, 0.127534,
		42.272148, 36.531593, 26.195448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900208, 36.657681, 25.544268>,  <42.670502, 37.100227, 26.106174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900208, 36.657681, 25.544268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.527927, 36.589424, 25.673683>,  <42.304558, 36.548470, 25.751331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.527927, 36.589424, 25.673683>,  <42.900208, 36.657681, 25.544268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527927, 36.589424, 25.673683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334512, 0.039239, -0.941574,
		0.147982, -0.984550, -0.093603,
		-0.930700, -0.170648, 0.323538,
		42.248718, 36.538231, 25.770744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658714, 36.163071, 25.117664>,  <42.900208, 36.657681, 25.544268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658714, 36.163071, 25.117664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.310711, 36.278336, 25.277685>,  <42.101910, 36.347496, 25.373697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.310711, 36.278336, 25.277685>,  <42.658714, 36.163071, 25.117664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310711, 36.278336, 25.277685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425822, -0.030207, -0.904303,
		-0.248504, -0.957104, 0.148988,
		-0.870012, 0.288165, 0.400049,
		42.049706, 36.364784, 25.397699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160595, 35.645138, 24.915215>,  <42.658714, 36.163071, 25.117664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160595, 35.645138, 24.915215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.944679, 35.971180, 24.999346>,  <41.815128, 36.166805, 25.049824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.944679, 35.971180, 24.999346>,  <42.160595, 35.645138, 24.915215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944679, 35.971180, 24.999346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503048, -0.112007, -0.856969,
		-0.674959, -0.568388, 0.470496,
		-0.539790, 0.815101, 0.210326,
		41.782742, 36.215710, 25.062443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459358, 35.463825, 24.669935>,  <42.160595, 35.645138, 24.915215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459358, 35.463825, 24.669935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479191, 35.859653, 24.724028>,  <41.491093, 36.097153, 24.756483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479191, 35.859653, 24.724028>,  <41.459358, 35.463825, 24.669935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479191, 35.859653, 24.724028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493181, 0.141999, -0.858260,
		-0.868513, -0.024137, 0.495079,
		0.049584, 0.989572, 0.135232,
		41.494064, 36.156525, 24.764597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674744, 35.726822, 24.711493>,  <41.459358, 35.463825, 24.669935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674744, 35.726822, 24.711493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.925011, 36.011120, 24.582880>,  <41.075172, 36.181698, 24.505713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.925011, 36.011120, 24.582880>,  <40.674744, 35.726822, 24.711493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925011, 36.011120, 24.582880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474866, 0.020002, -0.879831,
		-0.618900, 0.703170, 0.350021,
		0.625672, 0.710740, -0.321532,
		41.112713, 36.224342, 24.486420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055420, 35.839355, 24.985857>,  <40.674744, 35.726822, 24.711493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055420, 35.839355, 24.985857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.754230, 35.577957, 25.016773>,  <39.573517, 35.421120, 25.035322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.754230, 35.577957, 25.016773>,  <40.055420, 35.839355, 24.985857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754230, 35.577957, 25.016773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373970, -0.328312, 0.867386,
		-0.541454, 0.682026, 0.491598,
		-0.752977, -0.653492, 0.077291,
		39.528339, 35.381908, 25.039961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934185, 35.849731, 25.686192>,  <40.055420, 35.839355, 24.985857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934185, 35.849731, 25.686192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.813141, 35.505402, 25.522526>,  <39.740517, 35.298805, 25.424326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.813141, 35.505402, 25.522526>,  <39.934185, 35.849731, 25.686192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813141, 35.505402, 25.522526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395909, -0.504028, 0.767601,
		-0.866997, 0.070292, 0.493330,
		-0.302608, -0.860822, -0.409162,
		39.722359, 35.247154, 25.399776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627460, 35.525993, 26.265507>,  <39.934185, 35.849731, 25.686192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627460, 35.525993, 26.265507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666946, 35.237701, 25.991045>,  <39.690636, 35.064728, 25.826368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666946, 35.237701, 25.991045>,  <39.627460, 35.525993, 26.265507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666946, 35.237701, 25.991045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175236, -0.666156, 0.724933,
		-0.979565, -0.191797, 0.060541,
		0.098711, -0.720729, -0.686153,
		39.696560, 35.021484, 25.785198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210972, 34.977699, 26.546362>,  <39.627460, 35.525993, 26.265507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210972, 34.977699, 26.546362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.496811, 34.805782, 26.325592>,  <39.668316, 34.702633, 26.193130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.496811, 34.805782, 26.325592>,  <39.210972, 34.977699, 26.546362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496811, 34.805782, 26.325592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203903, -0.626754, 0.752066,
		-0.669155, -0.649966, -0.360243,
		0.714601, -0.429794, -0.551925,
		39.711189, 34.676842, 26.160013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057648, 34.246361, 26.567856>,  <39.210972, 34.977699, 26.546362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057648, 34.246361, 26.567856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.440655, 34.296757, 26.464094>,  <39.670460, 34.326996, 26.401838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.440655, 34.296757, 26.464094>,  <39.057648, 34.246361, 26.567856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440655, 34.296757, 26.464094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269399, -0.711759, 0.648709,
		-0.102899, -0.691032, -0.715463,
		0.957516, 0.125993, -0.259402,
		39.727909, 34.334557, 26.386274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328613, 33.543407, 26.437830>,  <39.057648, 34.246361, 26.567856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328613, 33.543407, 26.437830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.647709, 33.770947, 26.517860>,  <39.839165, 33.907471, 26.565878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.647709, 33.770947, 26.517860>,  <39.328613, 33.543407, 26.437830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647709, 33.770947, 26.517860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287571, -0.650522, 0.702939,
		0.530016, -0.503226, -0.682530,
		0.797738, 0.568844, 0.200074,
		39.887032, 33.941601, 26.577883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876865, 33.118088, 26.579168>,  <39.328613, 33.543407, 26.437830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876865, 33.118088, 26.579168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.997223, 33.469196, 26.728291>,  <40.069439, 33.679859, 26.817764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.997223, 33.469196, 26.728291>,  <39.876865, 33.118088, 26.579168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997223, 33.469196, 26.728291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327982, -0.462324, 0.823823,
		0.895483, -0.125612, -0.427004,
		0.300895, 0.877769, 0.372805,
		40.087490, 33.732529, 26.840132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.491779, 39.722702, 24.590832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.803604, 39.952118, 24.691496>,  <36.990700, 40.089767, 24.751894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.803604, 39.952118, 24.691496>,  <36.491779, 39.722702, 24.590832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803604, 39.952118, 24.691496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024699, -0.429649, 0.902658,
		0.625832, -0.697466, -0.349106,
		0.779566, 0.573535, 0.251662,
		37.037476, 40.124180, 24.766994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059944, 39.328537, 24.757132>,  <36.491779, 39.722702, 24.590832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059944, 39.328537, 24.757132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.136646, 39.678444, 24.935125>,  <37.182667, 39.888390, 25.041922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.136646, 39.678444, 24.935125>,  <37.059944, 39.328537, 24.757132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136646, 39.678444, 24.935125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234550, -0.481108, 0.844702,
		0.953003, -0.057607, -0.297433,
		0.191758, 0.874766, 0.444986,
		37.194172, 39.940872, 25.068621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616760, 39.136898, 25.143198>,  <37.059944, 39.328537, 24.757132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616760, 39.136898, 25.143198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503609, 39.489925, 25.293427>,  <37.435719, 39.701740, 25.383564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503609, 39.489925, 25.293427>,  <37.616760, 39.136898, 25.143198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503609, 39.489925, 25.293427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005968, -0.389938, 0.920822,
		0.959138, 0.262720, 0.105037,
		-0.282876, 0.882568, 0.375572,
		37.418747, 39.754696, 25.406097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141453, 39.296680, 25.735043>,  <37.616760, 39.136898, 25.143198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141453, 39.296680, 25.735043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801758, 39.494492, 25.809063>,  <37.597942, 39.613178, 25.853476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801758, 39.494492, 25.809063>,  <38.141453, 39.296680, 25.735043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801758, 39.494492, 25.809063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078787, -0.227862, 0.970501,
		0.522102, 0.838764, 0.154547,
		-0.849236, 0.494524, 0.185050,
		37.546986, 39.642849, 25.864578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166561, 39.623764, 26.415146>,  <38.141453, 39.296680, 25.735043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166561, 39.623764, 26.415146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.776989, 39.575890, 26.338060>,  <37.543247, 39.547165, 26.291809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.776989, 39.575890, 26.338060>,  <38.166561, 39.623764, 26.415146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776989, 39.575890, 26.338060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163616, -0.217840, 0.962172,
		-0.157138, 0.968618, 0.192578,
		-0.973929, -0.119685, -0.192713,
		37.484810, 39.539986, 26.280247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794685, 39.977356, 26.967133>,  <38.166561, 39.623764, 26.415146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794685, 39.977356, 26.967133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.543015, 39.711952, 26.805195>,  <37.392014, 39.552711, 26.708033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.543015, 39.711952, 26.805195>,  <37.794685, 39.977356, 26.967133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543015, 39.711952, 26.805195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103533, -0.444674, 0.889689,
		-0.770339, 0.601683, 0.211082,
		-0.629173, -0.663508, -0.404843,
		37.354263, 39.512901, 26.683743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212658, 39.941444, 27.399635>,  <37.794685, 39.977356, 26.967133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212658, 39.941444, 27.399635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.198219, 39.606953, 27.180761>,  <37.189556, 39.406258, 27.049437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.198219, 39.606953, 27.180761>,  <37.212658, 39.941444, 27.399635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198219, 39.606953, 27.180761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118529, -0.540094, 0.833216,
		-0.992294, 0.094930, -0.079625,
		-0.036092, -0.836234, -0.547184,
		37.187393, 39.356083, 27.016605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848450, 39.628986, 27.853807>,  <37.212658, 39.941444, 27.399635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848450, 39.628986, 27.853807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.947746, 39.335953, 27.600290>,  <37.007324, 39.160133, 27.448179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.947746, 39.335953, 27.600290>,  <36.848450, 39.628986, 27.853807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947746, 39.335953, 27.600290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083226, -0.667983, 0.739508,
		-0.965116, -0.130830, -0.226792,
		0.248243, -0.732586, -0.633793,
		37.022221, 39.116177, 27.410152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340145, 39.037289, 27.910887>,  <36.848450, 39.628986, 27.853807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340145, 39.037289, 27.910887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.687180, 38.889278, 27.778000>,  <36.895401, 38.800472, 27.698269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.687180, 38.889278, 27.778000>,  <36.340145, 39.037289, 27.910887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687180, 38.889278, 27.778000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010956, -0.653678, 0.756694,
		-0.497159, -0.660140, -0.563070,
		0.867590, -0.370028, -0.332214,
		36.947456, 38.778271, 27.678335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178669, 38.347519, 27.830076>,  <36.340145, 39.037289, 27.910887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178669, 38.347519, 27.830076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.578453, 38.353939, 27.841568>,  <36.818321, 38.357792, 27.848463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.578453, 38.353939, 27.841568>,  <36.178669, 38.347519, 27.830076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578453, 38.353939, 27.841568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013045, -0.608211, 0.793668,
		0.030213, -0.793613, -0.607672,
		0.999458, 0.016052, 0.028729,
		36.878292, 38.358753, 27.850187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326385, 37.721989, 27.986668>,  <36.178669, 38.347519, 27.830076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326385, 37.721989, 27.986668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.638813, 37.939472, 28.109505>,  <36.826271, 38.069962, 28.183207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.638813, 37.939472, 28.109505>,  <36.326385, 37.721989, 27.986668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638813, 37.939472, 28.109505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083625, -0.578439, 0.811428,
		0.618817, -0.608102, -0.497270,
		0.781071, 0.543709, 0.307095,
		36.873135, 38.102585, 28.201633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700878, 37.252754, 28.299295>,  <36.326385, 37.721989, 27.986668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700878, 37.252754, 28.299295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819668, 37.602596, 28.452593>,  <36.890942, 37.812500, 28.544571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819668, 37.602596, 28.452593>,  <36.700878, 37.252754, 28.299295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819668, 37.602596, 28.452593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252706, -0.315054, 0.914812,
		0.920840, -0.368522, 0.127456,
		0.296973, 0.874604, 0.383243,
		36.908760, 37.864979, 28.567566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268353, 36.710850, 28.144526>,  <36.700878, 37.252754, 28.299295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268353, 36.710850, 28.144526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.121998, 36.346760, 28.066946>,  <37.034184, 36.128307, 28.020399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.121998, 36.346760, 28.066946>,  <37.268353, 36.710850, 28.144526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121998, 36.346760, 28.066946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162327, 0.267622, -0.949752,
		0.916392, -0.316022, -0.245674,
		-0.365890, -0.910224, -0.193948,
		37.012230, 36.073692, 28.008762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687771, 36.330551, 27.586044>,  <37.268353, 36.710850, 28.144526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687771, 36.330551, 27.586044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.311382, 36.196953, 27.608053>,  <37.085548, 36.116795, 27.621258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.311382, 36.196953, 27.608053>,  <37.687771, 36.330551, 27.586044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311382, 36.196953, 27.608053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169508, 0.324242, -0.930663,
		0.292989, -0.885053, -0.361716,
		-0.940970, -0.333988, 0.055025,
		37.029091, 36.096756, 27.624559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581356, 36.014877, 26.989370>,  <37.687771, 36.330551, 27.586044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581356, 36.014877, 26.989370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206089, 36.066494, 27.117863>,  <36.980930, 36.097466, 27.194958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.206089, 36.066494, 27.117863>,  <37.581356, 36.014877, 26.989370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206089, 36.066494, 27.117863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273868, 0.290929, -0.916710,
		-0.211755, -0.948002, -0.237598,
		-0.938167, 0.129047, 0.321233,
		36.924641, 36.105209, 27.214233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095665, 35.612450, 26.530598>,  <37.581356, 36.014877, 26.989370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095665, 35.612450, 26.530598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.866257, 35.889843, 26.705023>,  <36.728611, 36.056278, 26.809679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.866257, 35.889843, 26.705023>,  <37.095665, 35.612450, 26.530598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866257, 35.889843, 26.705023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395312, 0.231939, -0.888782,
		-0.717498, -0.682115, 0.141121,
		-0.573520, 0.693486, 0.436064,
		36.694202, 36.097889, 26.835842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327549, 35.540707, 26.301226>,  <37.095665, 35.612450, 26.530598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327549, 35.540707, 26.301226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359089, 35.919178, 26.426788>,  <36.378014, 36.146259, 26.502127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359089, 35.919178, 26.426788>,  <36.327549, 35.540707, 26.301226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359089, 35.919178, 26.426788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437137, 0.315815, -0.842123,
		-0.895932, -0.070823, 0.438509,
		0.078846, 0.946174, 0.313908,
		36.382744, 36.203030, 26.520960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834862, 35.896320, 25.981733>,  <36.327549, 35.540707, 26.301226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834862, 35.896320, 25.981733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.041912, 36.210438, 26.117601>,  <36.166142, 36.398911, 26.199121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.041912, 36.210438, 26.117601>,  <35.834862, 35.896320, 25.981733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041912, 36.210438, 26.117601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164598, 0.480969, -0.861148,
		-0.839627, 0.389841, 0.378219,
		0.517623, 0.785298, 0.339668,
		36.197201, 36.446026, 26.219501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419640, 36.543736, 25.846165>,  <35.834862, 35.896320, 25.981733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419640, 36.543736, 25.846165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.804302, 36.650414, 25.871731>,  <36.035099, 36.714420, 25.887070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.804302, 36.650414, 25.871731>,  <35.419640, 36.543736, 25.846165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804302, 36.650414, 25.871731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100204, 0.558644, -0.823333,
		-0.255281, 0.785362, 0.563949,
		0.961661, 0.266691, 0.063915,
		36.092800, 36.730419, 25.890905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406853, 37.281204, 25.755653>,  <35.419640, 36.543736, 25.846165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406853, 37.281204, 25.755653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.756550, 37.111084, 25.661995>,  <35.966366, 37.009010, 25.605801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.756550, 37.111084, 25.661995>,  <35.406853, 37.281204, 25.755653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756550, 37.111084, 25.661995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028883, 0.435866, -0.899548,
		0.484637, 0.793182, 0.368767,
		0.874238, -0.425303, -0.234147,
		36.018822, 36.983494, 25.591751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572117, 37.803913, 25.391630>,  <35.406853, 37.281204, 25.755653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572117, 37.803913, 25.391630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.831165, 37.516476, 25.290264>,  <35.986595, 37.344013, 25.229445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.831165, 37.516476, 25.290264>,  <35.572117, 37.803913, 25.391630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831165, 37.516476, 25.290264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056461, 0.376926, -0.924521,
		0.759870, 0.584429, 0.284676,
		0.647618, -0.718589, -0.253417,
		36.025452, 37.300900, 25.214239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144791, 38.174587, 25.123003>,  <35.572117, 37.803913, 25.391630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144791, 38.174587, 25.123003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146793, 37.798279, 24.987402>,  <36.147995, 37.572495, 24.906042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146793, 37.798279, 24.987402>,  <36.144791, 38.174587, 25.123003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146793, 37.798279, 24.987402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074184, 0.338422, -0.938066,
		0.997232, -0.020451, 0.071485,
		0.005007, -0.940772, -0.339002,
		36.148296, 37.516048, 24.885702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564178, 38.237251, 24.602818>,  <36.144791, 38.174587, 25.123003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564178, 38.237251, 24.602818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.355167, 37.905094, 24.525459>,  <36.229759, 37.705799, 24.479044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.355167, 37.905094, 24.525459>,  <36.564178, 38.237251, 24.602818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355167, 37.905094, 24.525459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046123, 0.198965, -0.978920,
		0.851373, -0.520435, -0.065665,
		-0.522530, -0.830397, -0.193398,
		36.198410, 37.655975, 24.467440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890804, 37.804996, 24.068018>,  <36.564178, 38.237251, 24.602818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890804, 37.804996, 24.068018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.501659, 37.712444, 24.069338>,  <36.268173, 37.656914, 24.070129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.501659, 37.712444, 24.069338>,  <36.890804, 37.804996, 24.068018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501659, 37.712444, 24.069338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052562, 0.207074, -0.976912,
		0.225368, -0.950567, -0.213616,
		-0.972855, -0.231393, 0.003295,
		36.209801, 37.643032, 24.070328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745346, 37.428848, 23.468826>,  <36.890804, 37.804996, 24.068018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745346, 37.428848, 23.468826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.389687, 37.572231, 23.582611>,  <36.176289, 37.658260, 23.650883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.389687, 37.572231, 23.582611>,  <36.745346, 37.428848, 23.468826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389687, 37.572231, 23.582611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149643, 0.359692, -0.920994,
		-0.432453, -0.861471, -0.266180,
		-0.889152, 0.358455, 0.284463,
		36.122940, 37.679768, 23.667950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051876, 36.823498, 23.790422>,  <36.745346, 37.428848, 23.468826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051876, 36.823498, 23.790422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.125881, 36.625156, 23.451035>,  <37.170284, 36.506153, 23.247402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.125881, 36.625156, 23.451035>,  <37.051876, 36.823498, 23.790422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125881, 36.625156, 23.451035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560122, -0.656205, 0.505626,
		-0.807487, -0.568792, 0.156334,
		0.185009, -0.495853, -0.848470,
		37.181385, 36.476402, 23.196493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975624, 36.137215, 23.922318>,  <37.051876, 36.823498, 23.790422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975624, 36.137215, 23.922318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215382, 36.155548, 23.602661>,  <37.359238, 36.166550, 23.410868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215382, 36.155548, 23.602661>,  <36.975624, 36.137215, 23.922318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215382, 36.155548, 23.602661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622079, -0.654949, 0.429021,
		-0.503732, -0.754281, -0.421087,
		0.599393, 0.045838, -0.799142,
		37.395199, 36.169300, 23.362919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104034, 35.483650, 23.632702>,  <36.975624, 36.137215, 23.922318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104034, 35.483650, 23.632702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420158, 35.687214, 23.496216>,  <37.609833, 35.809353, 23.414324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.420158, 35.687214, 23.496216>,  <37.104034, 35.483650, 23.632702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420158, 35.687214, 23.496216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612327, -0.675774, 0.410347,
		-0.021756, -0.533235, -0.845687,
		0.790305, 0.508910, -0.341217,
		37.657249, 35.839886, 23.393850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599674, 35.044823, 23.414709>,  <37.104034, 35.483650, 23.632702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599674, 35.044823, 23.414709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.809204, 35.376854, 23.491211>,  <37.934921, 35.576073, 23.537111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.809204, 35.376854, 23.491211>,  <37.599674, 35.044823, 23.414709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809204, 35.376854, 23.491211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670425, -0.540257, 0.508580,
		0.525485, -0.138188, -0.839505,
		0.523828, 0.830076, 0.191253,
		37.966354, 35.625877, 23.548586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265953, 34.900589, 23.378145>,  <37.599674, 35.044823, 23.414709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265953, 34.900589, 23.378145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288742, 35.227146, 23.608017>,  <38.302414, 35.423080, 23.745939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.288742, 35.227146, 23.608017>,  <38.265953, 34.900589, 23.378145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288742, 35.227146, 23.608017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651465, -0.466580, 0.598244,
		0.756536, 0.340302, -0.558433,
		0.056970, 0.816393, 0.574680,
		38.305832, 35.472065, 23.780420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921127, 34.783958, 23.596582>,  <38.265953, 34.900589, 23.378145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921127, 34.783958, 23.596582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.809650, 35.093037, 23.824713>,  <38.742764, 35.278484, 23.961592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.809650, 35.093037, 23.824713>,  <38.921127, 34.783958, 23.596582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809650, 35.093037, 23.824713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637979, -0.294936, 0.711334,
		0.717855, 0.562097, -0.410769,
		-0.278688, 0.772696, 0.570328,
		38.726044, 35.324844, 23.995811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549164, 35.278553, 23.723705>,  <38.921127, 34.783958, 23.596582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549164, 35.278553, 23.723705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265018, 35.301571, 24.004297>,  <39.094532, 35.315380, 24.172651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265018, 35.301571, 24.004297>,  <39.549164, 35.278553, 23.723705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265018, 35.301571, 24.004297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612274, -0.441033, 0.656209,
		0.347136, 0.895644, 0.278061,
		-0.710364, 0.057544, 0.701478,
		39.051910, 35.318832, 24.214741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981869, 35.534554, 24.320044>,  <39.549164, 35.278553, 23.723705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981869, 35.534554, 24.320044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.619736, 35.443287, 24.463326>,  <39.402454, 35.388527, 24.549294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.619736, 35.443287, 24.463326>,  <39.981869, 35.534554, 24.320044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619736, 35.443287, 24.463326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423117, -0.411809, 0.807085,
		-0.036640, 0.882243, 0.469366,
		-0.905334, -0.228169, 0.358204,
		39.348137, 35.374836, 24.570787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284443, 36.162239, 24.278276>,  <39.981869, 35.534554, 24.320044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284443, 36.162239, 24.278276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.655487, 36.296604, 24.212910>,  <40.878113, 36.377224, 24.173689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.655487, 36.296604, 24.212910>,  <40.284443, 36.162239, 24.278276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655487, 36.296604, 24.212910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266196, 0.287505, -0.920044,
		-0.262069, 0.896942, 0.356110,
		0.927609, 0.335910, -0.163416,
		40.933769, 36.397377, 24.163885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187908, 36.799549, 24.097509>,  <40.284443, 36.162239, 24.278276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187908, 36.799549, 24.097509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.543388, 36.711327, 23.936729>,  <40.756676, 36.658394, 23.840261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.543388, 36.711327, 23.936729>,  <40.187908, 36.799549, 24.097509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543388, 36.711327, 23.936729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223037, 0.557994, -0.799310,
		0.400576, 0.799999, 0.446699,
		0.888703, -0.220554, -0.401949,
		40.809998, 36.645161, 23.816145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351299, 37.361652, 23.727650>,  <40.187908, 36.799549, 24.097509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351299, 37.361652, 23.727650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622055, 37.125610, 23.551653>,  <40.784508, 36.983986, 23.446054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622055, 37.125610, 23.551653>,  <40.351299, 37.361652, 23.727650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622055, 37.125610, 23.551653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164541, 0.461318, -0.871844,
		0.717456, 0.662541, 0.215165,
		0.676892, -0.590106, -0.439990,
		40.825123, 36.948578, 23.419655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896374, 37.782883, 23.313923>,  <40.351299, 37.361652, 23.727650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896374, 37.782883, 23.313923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.878319, 37.412102, 23.164940>,  <40.867485, 37.189632, 23.075550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.878319, 37.412102, 23.164940>,  <40.896374, 37.782883, 23.313923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878319, 37.412102, 23.164940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046215, 0.370500, -0.927682,
		0.997911, -0.059085, 0.026116,
		-0.045136, -0.926951, -0.372457,
		40.864777, 37.134018, 23.053204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336792, 37.868870, 22.764502>,  <40.896374, 37.782883, 23.313923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336792, 37.868870, 22.764502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.123795, 37.540363, 22.682547>,  <40.995995, 37.343262, 22.633373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.123795, 37.540363, 22.682547>,  <41.336792, 37.868870, 22.764502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123795, 37.540363, 22.682547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090830, 0.296106, -0.950826,
		0.841547, -0.487698, -0.232270,
		-0.532493, -0.821262, -0.204889,
		40.964046, 37.293983, 22.621080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624115, 37.510571, 22.146948>,  <41.336792, 37.868870, 22.764502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624115, 37.510571, 22.146948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.237808, 37.409698, 22.171276>,  <41.006023, 37.349174, 22.185873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.237808, 37.409698, 22.171276>,  <41.624115, 37.510571, 22.146948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237808, 37.409698, 22.171276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126923, 0.254875, -0.958608,
		0.226231, -0.933514, -0.278156,
		-0.965769, -0.252172, 0.060824,
		40.948078, 37.334045, 22.189524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484882, 37.193180, 21.427734>,  <41.624115, 37.510571, 22.146948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484882, 37.193180, 21.427734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.111305, 37.254295, 21.556986>,  <40.887161, 37.290966, 21.634537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.111305, 37.254295, 21.556986>,  <41.484882, 37.193180, 21.427734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111305, 37.254295, 21.556986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272014, 0.282650, -0.919847,
		-0.231876, -0.946976, -0.222417,
		-0.933939, 0.152790, 0.323130,
		40.831123, 37.300133, 21.653925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922390, 36.694683, 20.982059>,  <41.484882, 37.193180, 21.427734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922390, 36.694683, 20.982059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.763229, 37.027164, 21.137381>,  <40.667732, 37.226654, 21.230574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.763229, 37.027164, 21.137381>,  <40.922390, 36.694683, 20.982059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763229, 37.027164, 21.137381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294241, 0.285268, -0.912165,
		-0.868964, -0.477203, 0.131066,
		-0.397899, 0.831204, 0.388301,
		40.643860, 37.276524, 21.253870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190666, 36.691586, 20.772621>,  <40.922390, 36.694683, 20.982059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190666, 36.691586, 20.772621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307007, 37.068027, 20.841587>,  <40.376812, 37.293892, 20.882967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307007, 37.068027, 20.841587>,  <40.190666, 36.691586, 20.772621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307007, 37.068027, 20.841587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479088, 0.299240, -0.825185,
		-0.828180, 0.157400, 0.537906,
		0.290847, 0.941106, 0.172417,
		40.394260, 37.350361, 20.893312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.824135, 33.730412, 36.909443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.682587, 34.068481, 36.749218>,  <43.597656, 34.271324, 36.653084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.682587, 34.068481, 36.749218>,  <43.824135, 33.730412, 36.909443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682587, 34.068481, 36.749218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021306, -0.435448, -0.899962,
		-0.935050, -0.309939, 0.172101,
		-0.353874, 0.845176, -0.400562,
		43.576424, 34.322033, 36.629047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372211, 33.530659, 36.361012>,  <43.824135, 33.730412, 36.909443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372211, 33.530659, 36.361012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.503292, 33.904640, 36.306644>,  <43.581940, 34.129028, 36.274025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.503292, 33.904640, 36.306644>,  <43.372211, 33.530659, 36.361012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503292, 33.904640, 36.306644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199159, -0.072265, -0.977299,
		-0.923553, 0.347328, 0.162524,
		0.327698, 0.934955, -0.135914,
		43.601601, 34.185127, 36.265869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923443, 33.944859, 35.875519>,  <43.372211, 33.530659, 36.361012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923443, 33.944859, 35.875519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.282871, 34.119976, 35.863522>,  <43.498528, 34.225048, 35.856323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.282871, 34.119976, 35.863522>,  <42.923443, 33.944859, 35.875519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282871, 34.119976, 35.863522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043220, 0.020284, -0.998860,
		-0.436686, 0.898847, 0.037148,
		0.898575, 0.437793, -0.029991,
		43.552444, 34.251312, 35.854523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886829, 34.618942, 35.451794>,  <42.923443, 33.944859, 35.875519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886829, 34.618942, 35.451794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261517, 34.480057, 35.433872>,  <43.486328, 34.396725, 35.423119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.261517, 34.480057, 35.433872>,  <42.886829, 34.618942, 35.451794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261517, 34.480057, 35.433872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025055, 0.194139, -0.980654,
		0.349197, 0.917470, 0.190552,
		0.936714, -0.347216, -0.044805,
		43.542530, 34.375893, 35.420429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199726, 35.014618, 34.975365>,  <42.886829, 34.618942, 35.451794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199726, 35.014618, 34.975365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.454796, 34.707016, 34.993301>,  <43.607838, 34.522457, 35.004063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.454796, 34.707016, 34.993301>,  <43.199726, 35.014618, 34.975365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454796, 34.707016, 34.993301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163438, 0.078184, -0.983451,
		0.752770, 0.634448, 0.175540,
		0.637673, -0.769002, 0.044838,
		43.646099, 34.476315, 35.006752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806335, 35.279102, 34.596127>,  <43.199726, 35.014618, 34.975365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806335, 35.279102, 34.596127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.808105, 34.879276, 34.584412>,  <43.809166, 34.639381, 34.577381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.808105, 34.879276, 34.584412>,  <43.806335, 35.279102, 34.596127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808105, 34.879276, 34.584412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174397, 0.029611, -0.984230,
		0.984666, -0.000753, 0.174452,
		0.004425, -0.999561, -0.029288,
		43.809433, 34.579407, 34.575626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186935, 35.121670, 34.152534>,  <43.806335, 35.279102, 34.596127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186935, 35.121670, 34.152534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.026546, 34.755325, 34.144329>,  <43.930313, 34.535519, 34.139404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.026546, 34.755325, 34.144329>,  <44.186935, 35.121670, 34.152534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026546, 34.755325, 34.144329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133257, -0.036158, -0.990422,
		0.906348, -0.399861, 0.136543,
		-0.400968, -0.915862, -0.020513,
		43.906258, 34.480568, 34.138176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632202, 34.698723, 33.849979>,  <44.186935, 35.121670, 34.152534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632202, 34.698723, 33.849979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.267998, 34.540192, 33.802822>,  <44.049477, 34.445072, 33.774529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.267998, 34.540192, 33.802822>,  <44.632202, 34.698723, 33.849979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.267998, 34.540192, 33.802822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091503, 0.084921, -0.992177,
		0.403239, -0.914173, -0.041056,
		-0.910509, -0.396327, -0.117893,
		43.994846, 34.421295, 33.767456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731339, 34.390049, 33.204433>,  <44.632202, 34.698723, 33.849979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731339, 34.390049, 33.204433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.340710, 34.341122, 33.275249>,  <44.106331, 34.311764, 33.317741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.340710, 34.341122, 33.275249>,  <44.731339, 34.390049, 33.204433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340710, 34.341122, 33.275249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162876, -0.117518, -0.979623,
		0.140636, -0.985508, 0.094842,
		-0.976572, -0.122323, 0.177043,
		44.047737, 34.304424, 33.328362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436478, 33.810352, 32.806515>,  <44.731339, 34.390049, 33.204433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436478, 33.810352, 32.806515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.112274, 34.038368, 32.860367>,  <43.917751, 34.175179, 32.892677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.112274, 34.038368, 32.860367>,  <44.436478, 33.810352, 32.806515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112274, 34.038368, 32.860367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173390, -0.013952, -0.984754,
		-0.559472, -0.821498, 0.110147,
		-0.810510, 0.570041, 0.134634,
		43.869122, 34.209381, 32.900757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875088, 33.468163, 32.539738>,  <44.436478, 33.810352, 32.806515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875088, 33.468163, 32.539738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.813515, 33.863140, 32.553986>,  <43.776573, 34.100124, 32.562534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.813515, 33.863140, 32.553986>,  <43.875088, 33.468163, 32.539738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813515, 33.863140, 32.553986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155279, 0.011424, -0.987805,
		-0.975804, -0.157583, 0.151570,
		-0.153930, 0.987440, 0.035617,
		43.767334, 34.159370, 32.564671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226662, 33.612530, 32.227272>,  <43.875088, 33.468163, 32.539738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226662, 33.612530, 32.227272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.429298, 33.957256, 32.217201>,  <43.550880, 34.164093, 32.211159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.429298, 33.957256, 32.217201>,  <43.226662, 33.612530, 32.227272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429298, 33.957256, 32.217201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404883, 0.212016, -0.889449,
		-0.761205, 0.460782, 0.456341,
		0.506594, 0.861817, -0.025176,
		43.581276, 34.215801, 32.209648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618290, 33.362251, 32.641071>,  <43.226662, 33.612530, 32.227272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618290, 33.362251, 32.641071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.312702, 33.114719, 32.567959>,  <42.129349, 32.966202, 32.524094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.312702, 33.114719, 32.567959>,  <42.618290, 33.362251, 32.641071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312702, 33.114719, 32.567959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069729, -0.360782, 0.930040,
		-0.641478, 0.697773, 0.318776,
		-0.763966, -0.618828, -0.182779,
		42.083511, 32.929070, 32.513126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155109, 33.482647, 33.226330>,  <42.618290, 33.362251, 32.641071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155109, 33.482647, 33.226330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.065464, 33.122780, 33.076466>,  <42.011677, 32.906860, 32.986546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.065464, 33.122780, 33.076466>,  <42.155109, 33.482647, 33.226330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065464, 33.122780, 33.076466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106349, -0.359566, 0.927040,
		-0.968743, 0.247607, -0.015095,
		-0.224114, -0.899668, -0.374660,
		41.998230, 32.852879, 32.964069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650795, 33.275917, 33.681023>,  <42.155109, 33.482647, 33.226330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650795, 33.275917, 33.681023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.752022, 32.927872, 33.511852>,  <41.812759, 32.719044, 33.410351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.752022, 32.927872, 33.511852>,  <41.650795, 33.275917, 33.681023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752022, 32.927872, 33.511852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185619, -0.472698, 0.861453,
		-0.949475, -0.139501, -0.281133,
		0.253065, -0.870112, -0.422922,
		41.827942, 32.666840, 33.384975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087273, 32.879272, 33.984879>,  <41.650795, 33.275917, 33.681023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087273, 32.879272, 33.984879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.329880, 32.594532, 33.843224>,  <41.475445, 32.423687, 33.758228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.329880, 32.594532, 33.843224>,  <41.087273, 32.879272, 33.984879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329880, 32.594532, 33.843224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402018, -0.658857, 0.635838,
		-0.685947, -0.243274, -0.685780,
		0.606513, -0.711847, -0.354140,
		41.511833, 32.380978, 33.736980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700863, 32.248989, 33.685665>,  <41.087273, 32.879272, 33.984879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700863, 32.248989, 33.685665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.050117, 32.114929, 33.827259>,  <41.259670, 32.034492, 33.912216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.050117, 32.114929, 33.827259>,  <40.700863, 32.248989, 33.685665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050117, 32.114929, 33.827259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480600, -0.713351, 0.510053,
		0.081568, -0.615470, -0.783928,
		0.873138, -0.335152, 0.353981,
		41.312057, 32.014385, 33.933453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521667, 31.577641, 33.839573>,  <40.700863, 32.248989, 33.685665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521667, 31.577641, 33.839573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.869293, 31.640947, 34.027050>,  <41.077869, 31.678930, 34.139538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.869293, 31.640947, 34.027050>,  <40.521667, 31.577641, 33.839573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869293, 31.640947, 34.027050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218756, -0.726824, 0.651055,
		0.443698, -0.668340, -0.597038,
		0.869067, 0.158266, 0.468694,
		41.130013, 31.688427, 34.167660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744579, 30.920628, 34.039482>,  <40.521667, 31.577641, 33.839573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744579, 30.920628, 34.039482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.957027, 31.164682, 34.274647>,  <41.084496, 31.311115, 34.415745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.957027, 31.164682, 34.274647>,  <40.744579, 30.920628, 34.039482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957027, 31.164682, 34.274647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214351, -0.574545, 0.789906,
		0.819735, -0.545555, -0.174369,
		0.531120, 0.610138, 0.587915,
		41.116364, 31.347723, 34.451019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132004, 30.564882, 34.467289>,  <40.744579, 30.920628, 34.039482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132004, 30.564882, 34.467289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149578, 30.905184, 34.676781>,  <41.160122, 31.109364, 34.802475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149578, 30.905184, 34.676781>,  <41.132004, 30.564882, 34.467289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149578, 30.905184, 34.676781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100284, -0.517829, 0.849586,
		0.993988, -0.089848, 0.062565,
		0.043935, 0.850753, 0.523727,
		41.162758, 31.160410, 34.833900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623455, 30.398796, 35.102016>,  <41.132004, 30.564882, 34.467289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623455, 30.398796, 35.102016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.425091, 30.731123, 35.203056>,  <41.306072, 30.930519, 35.263680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.425091, 30.731123, 35.203056>,  <41.623455, 30.398796, 35.102016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425091, 30.731123, 35.203056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028407, -0.306257, 0.951525,
		0.867907, 0.464699, 0.175478,
		-0.495915, 0.830820, 0.252602,
		41.276318, 30.980370, 35.278835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881584, 30.591139, 35.727196>,  <41.623455, 30.398796, 35.102016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881584, 30.591139, 35.727196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.530773, 30.783289, 35.723961>,  <41.320286, 30.898579, 35.722019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.530773, 30.783289, 35.723961>,  <41.881584, 30.591139, 35.727196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530773, 30.783289, 35.723961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166492, -0.288089, 0.943019,
		0.450672, 0.828399, 0.332641,
		-0.877026, 0.480374, -0.008089,
		41.267666, 30.927401, 35.721535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854736, 31.005508, 36.365334>,  <41.881584, 30.591139, 35.727196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854736, 31.005508, 36.365334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.480137, 30.938627, 36.242039>,  <41.255379, 30.898499, 36.168060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.480137, 30.938627, 36.242039>,  <41.854736, 31.005508, 36.365334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480137, 30.938627, 36.242039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232005, -0.363699, 0.902162,
		-0.262951, 0.916388, 0.301812,
		-0.936499, -0.167202, -0.308242,
		41.199188, 30.888466, 36.149567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440842, 31.080910, 36.973602>,  <41.854736, 31.005508, 36.365334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440842, 31.080910, 36.973602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149532, 30.908232, 36.760712>,  <40.974747, 30.804625, 36.632977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149532, 30.908232, 36.760712>,  <41.440842, 31.080910, 36.973602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149532, 30.908232, 36.760712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279612, -0.521866, 0.805899,
		-0.625651, 0.735729, 0.259353,
		-0.728271, -0.431693, -0.532224,
		40.931049, 30.778725, 36.601044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860027, 31.229879, 37.228882>,  <41.440842, 31.080910, 36.973602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860027, 31.229879, 37.228882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740879, 30.902029, 37.033131>,  <40.669392, 30.705318, 36.915680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740879, 30.902029, 37.033131>,  <40.860027, 31.229879, 37.228882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740879, 30.902029, 37.033131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492955, -0.306933, 0.814117,
		-0.817477, 0.483741, -0.312612,
		-0.297871, -0.819626, -0.489374,
		40.651516, 30.656141, 36.886318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144043, 31.158369, 37.244068>,  <40.860027, 31.229879, 37.228882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144043, 31.158369, 37.244068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.297230, 30.793819, 37.183754>,  <40.389141, 30.575090, 37.147564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.297230, 30.793819, 37.183754>,  <40.144043, 31.158369, 37.244068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297230, 30.793819, 37.183754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487633, -0.338082, 0.804931,
		-0.784572, -0.234731, -0.573889,
		0.382964, -0.911373, -0.150787,
		40.412121, 30.520407, 37.138519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495872, 31.832203, 37.583515>,  <40.144043, 31.158369, 37.244068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495872, 31.832203, 37.583515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.867615, 31.731560, 37.691586>,  <41.090660, 31.671173, 37.756428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.867615, 31.731560, 37.691586>,  <40.495872, 31.832203, 37.583515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867615, 31.731560, 37.691586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013740, -0.707730, -0.706349,
		0.368936, 0.660160, -0.654274,
		0.929353, -0.251608, 0.270178,
		41.146420, 31.656076, 37.772640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718086, 32.398613, 37.205963>,  <40.495872, 31.832203, 37.583515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718086, 32.398613, 37.205963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.447853, 32.634094, 37.383507>,  <40.285713, 32.775383, 37.490032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.447853, 32.634094, 37.383507>,  <40.718086, 32.398613, 37.205963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447853, 32.634094, 37.383507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360089, 0.261876, -0.895409,
		-0.643367, -0.764754, 0.035066,
		-0.675584, 0.588704, 0.443861,
		40.245178, 32.810707, 37.516666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187683, 32.302338, 36.815681>,  <40.718086, 32.398613, 37.205963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187683, 32.302338, 36.815681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.185150, 32.650070, 37.013359>,  <40.183628, 32.858707, 37.131966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.185150, 32.650070, 37.013359>,  <40.187683, 32.302338, 36.815681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185150, 32.650070, 37.013359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424485, 0.445132, -0.788461,
		-0.905413, -0.214775, 0.366195,
		-0.006336, 0.869327, 0.494197,
		40.183250, 32.910870, 37.161617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464771, 32.622177, 36.801895>,  <40.187683, 32.302338, 36.815681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464771, 32.622177, 36.801895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.711590, 32.924805, 36.888489>,  <39.859680, 33.106380, 36.940445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.711590, 32.924805, 36.888489>,  <39.464771, 32.622177, 36.801895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711590, 32.924805, 36.888489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498049, 0.588450, -0.636925,
		-0.609265, 0.285192, 0.739907,
		0.617044, 0.756566, 0.216483,
		39.896702, 33.151775, 36.953434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997772, 33.317135, 36.635925>,  <39.464771, 32.622177, 36.801895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997772, 33.317135, 36.635925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.383278, 33.421951, 36.655880>,  <39.614582, 33.484840, 36.667854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.383278, 33.421951, 36.655880>,  <38.997772, 33.317135, 36.635925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383278, 33.421951, 36.655880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095210, 0.512643, -0.853307,
		-0.249175, 0.817639, 0.519017,
		0.963767, 0.262038, 0.049891,
		39.672409, 33.500565, 36.670849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952286, 34.079971, 36.486507>,  <38.997772, 33.317135, 36.635925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952286, 34.079971, 36.486507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323143, 33.964455, 36.391006>,  <39.545658, 33.895145, 36.333706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323143, 33.964455, 36.391006>,  <38.952286, 34.079971, 36.486507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323143, 33.964455, 36.391006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058710, 0.517354, -0.853755,
		0.370079, 0.805571, 0.462706,
		0.927143, -0.288791, -0.238757,
		39.601288, 33.877819, 36.319378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265697, 34.666939, 36.392281>,  <38.952286, 34.079971, 36.486507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265697, 34.666939, 36.392281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453358, 34.370068, 36.200836>,  <39.565956, 34.191944, 36.085972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453358, 34.370068, 36.200836>,  <39.265697, 34.666939, 36.392281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453358, 34.370068, 36.200836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120650, 0.483005, -0.867266,
		0.874835, 0.464626, 0.137060,
		0.469155, -0.742179, -0.478607,
		39.594105, 34.147415, 36.057255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857124, 34.930050, 35.971958>,  <39.265697, 34.666939, 36.392281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857124, 34.930050, 35.971958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.760559, 34.587189, 35.789963>,  <39.702618, 34.381474, 35.680767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.760559, 34.587189, 35.789963>,  <39.857124, 34.930050, 35.971958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760559, 34.587189, 35.789963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047608, 0.457830, -0.887764,
		0.969254, -0.235980, -0.069720,
		-0.241415, -0.857150, -0.454988,
		39.688133, 34.330044, 35.653465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277367, 34.900082, 35.295952>,  <39.857124, 34.930050, 35.971958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277367, 34.900082, 35.295952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.990200, 34.633278, 35.216263>,  <39.817902, 34.473194, 35.168449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.990200, 34.633278, 35.216263>,  <40.277367, 34.900082, 35.295952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990200, 34.633278, 35.216263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139926, 0.142078, -0.979915,
		0.681921, -0.731375, -0.008668,
		-0.717917, -0.667012, -0.199225,
		39.774826, 34.433174, 35.156494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501770, 34.514019, 34.692787>,  <40.277367, 34.900082, 35.295952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501770, 34.514019, 34.692787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.105637, 34.458527, 34.692688>,  <39.867958, 34.425232, 34.692631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.105637, 34.458527, 34.692688>,  <40.501770, 34.514019, 34.692787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105637, 34.458527, 34.692688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007962, 0.058612, -0.998249,
		0.138502, -0.988594, -0.059150,
		-0.990330, -0.138730, -0.000247,
		39.808537, 34.416908, 34.692616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418930, 34.082714, 34.194382>,  <40.501770, 34.514019, 34.692787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418930, 34.082714, 34.194382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.040565, 34.205471, 34.236462>,  <39.813545, 34.279125, 34.261707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.040565, 34.205471, 34.236462>,  <40.418930, 34.082714, 34.194382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040565, 34.205471, 34.236462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053177, 0.173198, -0.983450,
		-0.320037, -0.935851, -0.147510,
		-0.945912, 0.306897, 0.105196,
		39.756794, 34.297539, 34.268021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927528, 33.624001, 33.909389>,  <40.418930, 34.082714, 34.194382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927528, 33.624001, 33.909389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.787437, 33.998657, 33.912037>,  <39.703381, 34.223450, 33.913624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.787437, 33.998657, 33.912037>,  <39.927528, 33.624001, 33.909389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787437, 33.998657, 33.912037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195009, -0.066004, -0.978578,
		-0.916139, -0.344018, 0.205770,
		-0.350231, 0.936640, 0.006618,
		39.682369, 34.279648, 33.914021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451477, 33.633892, 33.405033>,  <39.927528, 33.624001, 33.909389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451477, 33.633892, 33.405033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443027, 34.030212, 33.458511>,  <39.437958, 34.268005, 33.490597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443027, 34.030212, 33.458511>,  <39.451477, 33.633892, 33.405033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443027, 34.030212, 33.458511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336369, 0.118888, -0.934196,
		-0.941493, -0.064703, 0.330763,
		-0.021121, 0.990797, 0.133697,
		39.436691, 34.327450, 33.498619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738964, 33.914680, 33.300411>,  <39.451477, 33.633892, 33.405033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738964, 33.914680, 33.300411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.006718, 34.202789, 33.227596>,  <39.167370, 34.375652, 33.183907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.006718, 34.202789, 33.227596>,  <38.738964, 33.914680, 33.300411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006718, 34.202789, 33.227596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343100, 0.082384, -0.935680,
		-0.658943, 0.688786, 0.302271,
		0.669385, 0.720268, -0.182036,
		39.207535, 34.418869, 33.172985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389912, 34.429996, 33.026920>,  <38.738964, 33.914680, 33.300411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389912, 34.429996, 33.026920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753025, 34.539005, 32.899384>,  <38.970894, 34.604408, 32.822861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753025, 34.539005, 32.899384>,  <38.389912, 34.429996, 33.026920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753025, 34.539005, 32.899384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394986, 0.299691, -0.868431,
		-0.141112, 0.914286, 0.379696,
		0.907785, 0.272520, -0.318840,
		39.025360, 34.620762, 32.803730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329056, 35.042320, 32.731873>,  <38.389912, 34.429996, 33.026920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329056, 35.042320, 32.731873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673119, 34.917786, 32.570278>,  <38.879555, 34.843067, 32.473320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673119, 34.917786, 32.570278>,  <38.329056, 35.042320, 32.731873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673119, 34.917786, 32.570278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320954, 0.285182, -0.903139,
		0.396387, 0.906500, 0.145377,
		0.860154, -0.311333, -0.403988,
		38.931164, 34.824387, 32.449081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473351, 35.588203, 32.254654>,  <38.329056, 35.042320, 32.731873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473351, 35.588203, 32.254654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722683, 35.296879, 32.140789>,  <38.872280, 35.122086, 32.072472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722683, 35.296879, 32.140789>,  <38.473351, 35.588203, 32.254654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722683, 35.296879, 32.140789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253230, 0.156409, -0.954679,
		0.739823, 0.667161, -0.086936,
		0.623327, -0.728308, -0.284660,
		38.909679, 35.078388, 32.055389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829609, 35.803337, 31.607943>,  <38.473351, 35.588203, 32.254654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829609, 35.803337, 31.607943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888107, 35.407825, 31.620161>,  <38.923206, 35.170521, 31.627493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888107, 35.407825, 31.620161>,  <38.829609, 35.803337, 31.607943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888107, 35.407825, 31.620161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186774, -0.057921, -0.980694,
		0.971457, 0.137715, -0.193149,
		0.146243, -0.988777, 0.030546,
		38.931980, 35.111191, 31.629326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346153, 35.573181, 31.040352>,  <38.829609, 35.803337, 31.607943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346153, 35.573181, 31.040352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078701, 35.291714, 31.136511>,  <38.918232, 35.122833, 31.194206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078701, 35.291714, 31.136511>,  <39.346153, 35.573181, 31.040352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078701, 35.291714, 31.136511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302381, -0.038059, -0.952427,
		0.679340, -0.709510, -0.187328,
		-0.668627, -0.703667, 0.240398,
		38.878113, 35.080612, 31.208630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169472, 35.324409, 30.375156>,  <39.346153, 35.573181, 31.040352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169472, 35.324409, 30.375156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.878681, 35.161083, 30.595985>,  <38.704208, 35.063087, 30.728483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.878681, 35.161083, 30.595985>,  <39.169472, 35.324409, 30.375156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878681, 35.161083, 30.595985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568008, -0.094177, -0.817617,
		0.385839, -0.907969, -0.163463,
		-0.726977, -0.408317, 0.552071,
		38.660587, 35.038589, 30.761606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042694, 34.621132, 30.051847>,  <39.169472, 35.324409, 30.375156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042694, 34.621132, 30.051847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727909, 34.740181, 30.268038>,  <38.539040, 34.811611, 30.397753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727909, 34.740181, 30.268038>,  <39.042694, 34.621132, 30.051847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727909, 34.740181, 30.268038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517142, 0.159622, -0.840884,
		-0.336538, -0.941245, 0.028298,
		-0.786960, 0.297624, 0.540476,
		38.491821, 34.829468, 30.430182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580715, 34.320961, 29.777523>,  <39.042694, 34.621132, 30.051847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580715, 34.320961, 29.777523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.370663, 34.586826, 29.990110>,  <38.244629, 34.746346, 30.117662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.370663, 34.586826, 29.990110>,  <38.580715, 34.320961, 29.777523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370663, 34.586826, 29.990110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692508, 0.029234, -0.720817,
		-0.494636, -0.746573, 0.444932,
		-0.525136, 0.664662, 0.531468,
		38.213123, 34.786224, 30.149551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903980, 34.014717, 29.764761>,  <38.580715, 34.320961, 29.777523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903980, 34.014717, 29.764761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876476, 34.407616, 29.834572>,  <37.859974, 34.643356, 29.876459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876476, 34.407616, 29.834572>,  <37.903980, 34.014717, 29.764761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876476, 34.407616, 29.834572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555602, 0.107600, -0.824457,
		-0.828601, -0.153655, 0.538341,
		-0.068756, 0.982249, 0.174528,
		37.855850, 34.702290, 29.886930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283653, 34.159054, 29.629570>,  <37.903980, 34.014717, 29.764761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283653, 34.159054, 29.629570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444450, 34.525146, 29.618681>,  <37.540928, 34.744804, 29.612148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444450, 34.525146, 29.618681>,  <37.283653, 34.159054, 29.629570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444450, 34.525146, 29.618681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564700, 0.224411, -0.794200,
		-0.720771, 0.334638, 0.607047,
		0.401997, 0.915236, -0.027221,
		37.565048, 34.799717, 29.610514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670799, 34.601109, 29.527523>,  <37.283653, 34.159054, 29.629570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670799, 34.601109, 29.527523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991650, 34.815460, 29.422125>,  <37.184158, 34.944069, 29.358887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991650, 34.815460, 29.422125>,  <36.670799, 34.601109, 29.527523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991650, 34.815460, 29.422125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478325, 0.312417, -0.820732,
		-0.357490, 0.784367, 0.506921,
		0.802126, 0.535877, -0.263496,
		37.232288, 34.976223, 29.343077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399830, 35.201160, 29.171486>,  <36.670799, 34.601109, 29.527523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399830, 35.201160, 29.171486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.784050, 35.261200, 29.077833>,  <37.014580, 35.297222, 29.021641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.784050, 35.261200, 29.077833>,  <36.399830, 35.201160, 29.171486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784050, 35.261200, 29.077833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277587, 0.465687, -0.840286,
		-0.017092, 0.872128, 0.488980,
		0.960549, 0.150096, -0.234132,
		37.072216, 35.306229, 29.007593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598328, 35.935120, 29.121300>,  <36.399830, 35.201160, 29.171486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598328, 35.935120, 29.121300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822594, 35.711052, 28.877377>,  <36.957153, 35.576611, 28.731024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822594, 35.711052, 28.877377>,  <36.598328, 35.935120, 29.121300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822594, 35.711052, 28.877377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320958, 0.531855, -0.783656,
		0.763308, 0.635091, 0.118402,
		0.560666, -0.560169, -0.609807,
		36.990795, 35.543003, 28.694435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979206, 36.444336, 28.735569>,  <36.598328, 35.935120, 29.121300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979206, 36.444336, 28.735569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022659, 36.101955, 28.533361>,  <37.048729, 35.896526, 28.412037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022659, 36.101955, 28.533361>,  <36.979206, 36.444336, 28.735569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022659, 36.101955, 28.533361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314898, 0.452712, -0.834201,
		0.942888, 0.249807, -0.220358,
		0.108631, -0.855949, -0.505521,
		37.055248, 35.845169, 28.381704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931759, 37.107944, 29.084242>,  <36.979206, 36.444336, 28.735569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931759, 37.107944, 29.084242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919769, 37.507664, 29.075186>,  <36.912575, 37.747494, 29.069752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919769, 37.507664, 29.075186>,  <36.931759, 37.107944, 29.084242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919769, 37.507664, 29.075186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066993, 0.020593, 0.997541,
		0.997303, 0.031420, 0.066328,
		-0.029976, 0.999294, -0.022642,
		36.910778, 37.807453, 29.068394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554501, 37.406944, 29.511530>,  <36.931759, 37.107944, 29.084242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554501, 37.406944, 29.511530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273739, 37.689377, 29.474033>,  <37.105282, 37.858837, 29.451534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273739, 37.689377, 29.474033>,  <37.554501, 37.406944, 29.511530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273739, 37.689377, 29.474033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050276, 0.082170, 0.995349,
		0.710497, 0.703351, -0.022176,
		-0.701902, 0.706077, -0.093744,
		37.063168, 37.901199, 29.445910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842335, 37.988525, 29.960745>,  <37.554501, 37.406944, 29.511530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842335, 37.988525, 29.960745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462749, 38.108078, 29.920462>,  <37.235001, 38.179810, 29.896292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462749, 38.108078, 29.920462>,  <37.842335, 37.988525, 29.960745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462749, 38.108078, 29.920462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006784, 0.299899, 0.953947,
		0.315320, 0.905942, -0.282564,
		-0.948961, 0.298881, -0.100710,
		37.178062, 38.197742, 29.890249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847267, 38.718647, 30.081882>,  <37.842335, 37.988525, 29.960745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847267, 38.718647, 30.081882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.491554, 38.548168, 30.148266>,  <37.278126, 38.445881, 30.188095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.491554, 38.548168, 30.148266>,  <37.847267, 38.718647, 30.081882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491554, 38.548168, 30.148266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120296, 0.132122, 0.983907,
		-0.441260, 0.894932, -0.066224,
		-0.889280, -0.426192, 0.165957,
		37.224770, 38.420311, 30.198053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543335, 39.084797, 30.614710>,  <37.847267, 38.718647, 30.081882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543335, 39.084797, 30.614710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295681, 38.771751, 30.640612>,  <37.147091, 38.583923, 30.656153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295681, 38.771751, 30.640612>,  <37.543335, 39.084797, 30.614710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295681, 38.771751, 30.640612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081366, 0.018086, 0.996520,
		-0.781060, 0.622248, 0.052480,
		-0.619133, -0.782612, 0.064756,
		37.109940, 38.536968, 30.660038>
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
