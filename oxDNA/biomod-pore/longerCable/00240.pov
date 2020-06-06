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
	<24.608679, 35.152821, 34.649864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350300, 34.885326, 34.797131>,  <24.195272, 34.724831, 34.885490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350300, 34.885326, 34.797131>,  <24.608679, 35.152821, 34.649864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.350300, 34.885326, 34.797131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418728, 0.713638, 0.561594,
		-0.638293, 0.208600, -0.740991,
		-0.645948, -0.668736, 0.368164,
		24.156515, 34.684708, 34.907581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.758074, 35.951878, 34.803322>,  <24.608679, 35.152821, 34.649864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.758074, 35.951878, 34.803322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012249, 36.077827, 34.521309>,  <25.164755, 36.153397, 34.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012249, 36.077827, 34.521309>,  <24.758074, 35.951878, 34.803322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.012249, 36.077827, 34.521309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337217, 0.708233, 0.620235,
		0.694625, -0.631870, 0.343856,
		0.635438, 0.314876, -0.705033,
		25.202881, 36.172291, 34.309799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578098, 35.819759, 34.787235>,  <24.758074, 35.951878, 34.803322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578098, 35.819759, 34.787235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484949, 36.161556, 34.601501>,  <25.429060, 36.366634, 34.490063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484949, 36.161556, 34.601501>,  <25.578098, 35.819759, 34.787235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484949, 36.161556, 34.601501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378028, 0.519449, 0.766334,
		0.896027, 0.002927, -0.443989,
		-0.232873, 0.854496, -0.464334,
		25.415087, 36.417904, 34.462200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168449, 36.314087, 34.961407>,  <25.578098, 35.819759, 34.787235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168449, 36.314087, 34.961407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857538, 36.530060, 34.832214>,  <25.670992, 36.659641, 34.754700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857538, 36.530060, 34.832214>,  <26.168449, 36.314087, 34.961407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857538, 36.530060, 34.832214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177237, 0.680472, 0.711017,
		0.603678, 0.495413, -0.624611,
		-0.777277, 0.539930, -0.322980,
		25.624355, 36.692039, 34.735321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429441, 37.065620, 34.767044>,  <26.168449, 36.314087, 34.961407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429441, 37.065620, 34.767044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035145, 37.091728, 34.829082>,  <25.798567, 37.107391, 34.866306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035145, 37.091728, 34.829082>,  <26.429441, 37.065620, 34.767044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035145, 37.091728, 34.829082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141530, 0.820107, 0.554432,
		-0.091007, 0.568476, -0.817650,
		-0.985742, 0.065265, 0.155091,
		25.739422, 37.111309, 34.875610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207876, 37.820656, 34.605484>,  <26.429441, 37.065620, 34.767044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207876, 37.820656, 34.605484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963427, 37.630970, 34.858986>,  <25.816757, 37.517159, 35.011089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963427, 37.630970, 34.858986>,  <26.207876, 37.820656, 34.605484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963427, 37.630970, 34.858986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111771, 0.740945, 0.662199,
		-0.783605, 0.475520, -0.399804,
		-0.611122, -0.474216, 0.633758,
		25.780090, 37.488705, 35.049114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575274, 38.137966, 34.760273>,  <26.207876, 37.820656, 34.605484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575274, 38.137966, 34.760273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698677, 37.907051, 35.062679>,  <25.772718, 37.768501, 35.244125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698677, 37.907051, 35.062679>,  <25.575274, 38.137966, 34.760273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698677, 37.907051, 35.062679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041170, 0.802147, 0.595706,
		-0.950330, -0.152655, 0.271237,
		0.308509, -0.577284, 0.756019,
		25.791229, 37.733868, 35.289486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216433, 38.384235, 35.251133>,  <25.575274, 38.137966, 34.760273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216433, 38.384235, 35.251133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552513, 38.218121, 35.390614>,  <25.754162, 38.118450, 35.474304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552513, 38.218121, 35.390614>,  <25.216433, 38.384235, 35.251133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552513, 38.218121, 35.390614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183511, 0.822852, 0.537809,
		-0.510279, -0.387877, 0.767572,
		0.840202, -0.415291, 0.348705,
		25.804573, 38.093533, 35.495224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346333, 38.533108, 36.014881>,  <25.216433, 38.384235, 35.251133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346333, 38.533108, 36.014881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719318, 38.427376, 35.916382>,  <25.943110, 38.363937, 35.857281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719318, 38.427376, 35.916382>,  <25.346333, 38.533108, 36.014881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719318, 38.427376, 35.916382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358069, 0.766627, 0.532981,
		0.047899, -0.585161, 0.809502,
		0.932466, -0.264328, -0.246249,
		25.999058, 38.348076, 35.842506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787889, 38.457756, 36.646740>,  <25.346333, 38.533108, 36.014881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787889, 38.457756, 36.646740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023760, 38.543186, 36.335186>,  <26.165281, 38.594444, 36.148254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023760, 38.543186, 36.335186>,  <25.787889, 38.457756, 36.646740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023760, 38.543186, 36.335186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346507, 0.804229, 0.482855,
		0.729532, -0.554618, 0.400227,
		0.589675, 0.213576, -0.778890,
		26.200663, 38.607258, 36.101521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368555, 38.696690, 36.926502>,  <25.787889, 38.457756, 36.646740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368555, 38.696690, 36.926502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438957, 38.814796, 36.550877>,  <26.481197, 38.885662, 36.325500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438957, 38.814796, 36.550877>,  <26.368555, 38.696690, 36.926502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438957, 38.814796, 36.550877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399895, 0.850246, 0.342294,
		0.899503, -0.435772, 0.031570,
		0.176004, 0.295270, -0.939063,
		26.491758, 38.903378, 36.269157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974274, 38.919357, 36.875641>,  <26.368555, 38.696690, 36.926502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974274, 38.919357, 36.875641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789850, 39.111229, 36.577023>,  <26.679195, 39.226353, 36.397850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789850, 39.111229, 36.577023>,  <26.974274, 38.919357, 36.875641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789850, 39.111229, 36.577023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503437, 0.834201, 0.225077,
		0.730736, -0.272067, -0.626102,
		-0.461059, 0.479675, -0.746550,
		26.651533, 39.255131, 36.353058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474014, 39.388775, 36.662170>,  <26.974274, 38.919357, 36.875641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474014, 39.388775, 36.662170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127760, 39.542919, 36.534313>,  <26.920008, 39.635406, 36.457600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127760, 39.542919, 36.534313>,  <27.474014, 39.388775, 36.662170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127760, 39.542919, 36.534313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428067, 0.900771, -0.073285,
		0.259684, -0.200266, -0.944700,
		-0.865635, 0.385364, -0.319643,
		26.868069, 39.658527, 36.438419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529533, 39.799442, 36.079773>,  <27.474014, 39.388775, 36.662170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529533, 39.799442, 36.079773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215057, 39.929836, 36.289780>,  <27.026371, 40.008072, 36.415783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215057, 39.929836, 36.289780>,  <27.529533, 39.799442, 36.079773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215057, 39.929836, 36.289780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327056, 0.940310, -0.094086,
		-0.524345, 0.097739, -0.845878,
		-0.786191, 0.325983, 0.525013,
		26.979200, 40.027630, 36.447285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001677, 39.999836, 35.628284>,  <27.529533, 39.799442, 36.079773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001677, 39.999836, 35.628284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963905, 40.193054, 35.976482>,  <26.941242, 40.308983, 36.185402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963905, 40.193054, 35.976482>,  <27.001677, 39.999836, 35.628284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963905, 40.193054, 35.976482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337717, 0.838091, -0.428427,
		-0.936499, 0.253523, -0.242272,
		-0.094430, 0.483041, 0.870491,
		26.935575, 40.337967, 36.237629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249733, 39.816540, 35.485867>,  <27.001677, 39.999836, 35.628284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249733, 39.816540, 35.485867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508945, 39.650494, 35.741283>,  <26.664473, 39.550865, 35.894535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508945, 39.650494, 35.741283>,  <26.249733, 39.816540, 35.485867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508945, 39.650494, 35.741283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380011, -0.902820, -0.201265,
		0.660038, -0.112228, -0.742802,
		0.648029, -0.415115, 0.638544,
		26.703354, 39.525959, 35.932846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667099, 39.394463, 35.128136>,  <26.249733, 39.816540, 35.485867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667099, 39.394463, 35.128136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619131, 39.249660, 35.497910>,  <26.590351, 39.162781, 35.719772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619131, 39.249660, 35.497910>,  <26.667099, 39.394463, 35.128136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619131, 39.249660, 35.497910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386729, -0.840565, -0.379330,
		0.914363, -0.402993, -0.039198,
		-0.119919, -0.362004, 0.924431,
		26.583155, 39.141060, 35.775238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977253, 38.798782, 35.070969>,  <26.667099, 39.394463, 35.128136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977253, 38.798782, 35.070969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749971, 38.753384, 35.396976>,  <26.613602, 38.726143, 35.592583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749971, 38.753384, 35.396976>,  <26.977253, 38.798782, 35.070969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749971, 38.753384, 35.396976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129913, -0.965649, -0.225043,
		0.812568, -0.233752, 0.533940,
		-0.568203, -0.113497, 0.815023,
		26.579510, 38.719334, 35.641483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146812, 38.087353, 35.340946>,  <26.977253, 38.798782, 35.070969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146812, 38.087353, 35.340946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787167, 38.168430, 35.496128>,  <26.571379, 38.217079, 35.589237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787167, 38.168430, 35.496128>,  <27.146812, 38.087353, 35.340946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787167, 38.168430, 35.496128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300943, -0.929865, -0.211624,
		0.317846, -0.307025, 0.897056,
		-0.899115, 0.202698, 0.387951,
		26.517431, 38.229240, 35.612514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956722, 37.562313, 35.847240>,  <27.146812, 38.087353, 35.340946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956722, 37.562313, 35.847240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612852, 37.727642, 35.727161>,  <26.406530, 37.826839, 35.655113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612852, 37.727642, 35.727161>,  <26.956722, 37.562313, 35.847240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612852, 37.727642, 35.727161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301180, -0.884753, -0.355671,
		-0.412607, -0.215349, 0.885088,
		-0.859678, 0.413323, -0.300197,
		26.354948, 37.851639, 35.637104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496174, 37.181377, 36.200596>,  <26.956722, 37.562313, 35.847240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496174, 37.181377, 36.200596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314074, 37.363213, 35.894367>,  <26.204813, 37.472313, 35.710629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314074, 37.363213, 35.894367>,  <26.496174, 37.181377, 36.200596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314074, 37.363213, 35.894367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403693, -0.871766, -0.277589,
		-0.793587, 0.182683, 0.580385,
		-0.455249, 0.454588, -0.765570,
		26.177500, 37.499588, 35.664696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900053, 36.940575, 36.309875>,  <26.496174, 37.181377, 36.200596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900053, 36.940575, 36.309875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975153, 37.029224, 35.927120>,  <26.020212, 37.082413, 35.697468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975153, 37.029224, 35.927120>,  <25.900053, 36.940575, 36.309875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975153, 37.029224, 35.927120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119737, -0.961782, -0.246249,
		-0.974891, 0.160808, -0.154037,
		0.187749, 0.221622, -0.956888,
		26.031477, 37.095711, 35.640053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270229, 36.997993, 35.923626>,  <25.900053, 36.940575, 36.309875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270229, 36.997993, 35.923626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206240, 37.358234, 35.761971>,  <25.167847, 37.574379, 35.664978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206240, 37.358234, 35.761971>,  <25.270229, 36.997993, 35.923626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206240, 37.358234, 35.761971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196168, -0.372242, -0.907168,
		-0.967433, -0.224403, -0.117119,
		-0.159974, 0.900599, -0.404140,
		25.158247, 37.628414, 35.640728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675596, 36.973949, 35.554501>,  <25.270229, 36.997993, 35.923626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.675596, 36.973949, 35.554501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965355, 37.209675, 35.411415>,  <25.139210, 37.351112, 35.325565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965355, 37.209675, 35.411415>,  <24.675596, 36.973949, 35.554501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965355, 37.209675, 35.411415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058258, -0.569361, -0.820020,
		-0.686919, 0.573179, -0.446775,
		0.724395, 0.589316, -0.357713,
		25.182673, 37.386471, 35.304100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456564, 37.195164, 34.957966>,  <24.675596, 36.973949, 35.554501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456564, 37.195164, 34.957966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853462, 37.223019, 34.916790>,  <25.091602, 37.239731, 34.892086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853462, 37.223019, 34.916790>,  <24.456564, 37.195164, 34.957966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853462, 37.223019, 34.916790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047936, -0.549734, -0.833963,
		-0.114668, 0.832432, -0.542133,
		0.992247, 0.069641, -0.102940,
		25.151136, 37.243912, 34.885906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669785, 37.477913, 34.325813>,  <24.456564, 37.195164, 34.957966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669785, 37.477913, 34.325813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952459, 37.232857, 34.467384>,  <25.122065, 37.085823, 34.552326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952459, 37.232857, 34.467384>,  <24.669785, 37.477913, 34.325813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952459, 37.232857, 34.467384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074618, -0.561978, -0.823779,
		0.703583, 0.555743, -0.442856,
		0.706685, -0.612642, 0.353930,
		25.164465, 37.049065, 34.573563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048826, 37.364288, 33.725540>,  <24.669785, 37.477913, 34.325813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048826, 37.364288, 33.725540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130959, 37.067463, 33.980785>,  <25.180239, 36.889370, 34.133930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130959, 37.067463, 33.980785>,  <25.048826, 37.364288, 33.725540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130959, 37.067463, 33.980785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017571, -0.654694, -0.755690,
		0.978534, 0.143956, -0.147469,
		0.205333, -0.742060, 0.638111,
		25.192558, 36.844845, 34.172218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786541, 37.561066, 33.839630>,  <25.048826, 37.364288, 33.725540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786541, 37.561066, 33.839630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654381, 37.300575, 33.566357>,  <25.575085, 37.144279, 33.402393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654381, 37.300575, 33.566357>,  <25.786541, 37.561066, 33.839630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654381, 37.300575, 33.566357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685625, -0.663055, 0.300459,
		-0.648655, -0.369136, 0.665572,
		-0.330400, -0.651227, -0.683183,
		25.555262, 37.105206, 33.361401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810268, 36.836365, 34.045704>,  <25.786541, 37.561066, 33.839630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810268, 36.836365, 34.045704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823322, 36.821564, 33.646191>,  <25.831156, 36.812683, 33.406483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823322, 36.821564, 33.646191>,  <25.810268, 36.836365, 34.045704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823322, 36.821564, 33.646191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805423, -0.590737, 0.048207,
		-0.591801, -0.806015, 0.010527,
		0.032637, -0.037007, -0.998782,
		25.833113, 36.810463, 33.346558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713480, 36.112186, 33.767437>,  <25.810268, 36.836365, 34.045704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713480, 36.112186, 33.767437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947353, 36.355671, 33.552917>,  <26.087677, 36.501762, 33.424206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947353, 36.355671, 33.552917>,  <25.713480, 36.112186, 33.767437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947353, 36.355671, 33.552917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777368, -0.609461, 0.155746,
		-0.232047, -0.507961, -0.829536,
		0.584683, 0.608714, -0.536296,
		26.122759, 36.538284, 33.392029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191128, 35.658741, 33.351799>,  <25.713480, 36.112186, 33.767437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191128, 35.658741, 33.351799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338812, 36.029144, 33.383274>,  <26.427422, 36.251385, 33.402157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338812, 36.029144, 33.383274>,  <26.191128, 35.658741, 33.351799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338812, 36.029144, 33.383274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929318, -0.368532, -0.023495,
		0.007241, 0.081798, -0.996623,
		0.369209, 0.926009, 0.078685,
		26.449575, 36.306946, 33.406879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659643, 35.886742, 32.766647>,  <26.191128, 35.658741, 33.351799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659643, 35.886742, 32.766647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744827, 36.089874, 33.100536>,  <26.795937, 36.211754, 33.300869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744827, 36.089874, 33.100536>,  <26.659643, 35.886742, 32.766647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744827, 36.089874, 33.100536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965845, -0.238489, -0.101319,
		0.147618, 0.827786, -0.541275,
		0.212959, 0.507832, 0.834719,
		26.808716, 36.242226, 33.350952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364021, 36.237293, 32.660465>,  <26.659643, 35.886742, 32.766647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364021, 36.237293, 32.660465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321095, 36.296829, 33.053673>,  <27.295338, 36.332550, 33.289597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321095, 36.296829, 33.053673>,  <27.364021, 36.237293, 32.660465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321095, 36.296829, 33.053673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871254, -0.462231, 0.165105,
		0.478957, 0.874179, -0.080074,
		-0.107318, 0.148843, 0.983020,
		27.288898, 36.341484, 33.348579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087605, 36.358372, 32.936085>,  <27.364021, 36.237293, 32.660465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087605, 36.358372, 32.936085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848841, 36.257771, 33.240833>,  <27.705582, 36.197411, 33.423683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848841, 36.257771, 33.240833>,  <28.087605, 36.358372, 32.936085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848841, 36.257771, 33.240833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778280, -0.412168, 0.473706,
		0.194879, 0.875707, 0.441768,
		-0.596910, -0.251504, 0.761869,
		27.669767, 36.182320, 33.469395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130781, 36.562298, 33.667076>,  <28.087605, 36.358372, 32.936085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130781, 36.562298, 33.667076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866449, 36.520939, 33.964428>,  <27.707850, 36.496124, 34.142838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866449, 36.520939, 33.964428>,  <28.130781, 36.562298, 33.667076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866449, 36.520939, 33.964428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606232, -0.657462, 0.447467,
		0.442479, 0.746360, 0.497150,
		-0.660829, -0.103394, 0.743381,
		27.668201, 36.489922, 34.187443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287304, 36.985027, 34.268646>,  <28.130781, 36.562298, 33.667076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287304, 36.985027, 34.268646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108885, 36.627033, 34.271389>,  <28.001833, 36.412239, 34.273033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108885, 36.627033, 34.271389>,  <28.287304, 36.985027, 34.268646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108885, 36.627033, 34.271389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774295, -0.382034, 0.504498,
		-0.448898, 0.230337, 0.863386,
		-0.446047, -0.894983, 0.006854,
		27.975071, 36.358540, 34.273445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340553, 36.634872, 34.920418>,  <28.287304, 36.985027, 34.268646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340553, 36.634872, 34.920418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296209, 36.334263, 34.660286>,  <28.269604, 36.153896, 34.504208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296209, 36.334263, 34.660286>,  <28.340553, 36.634872, 34.920418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296209, 36.334263, 34.660286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928263, -0.312050, 0.202368,
		-0.355019, -0.581240, 0.732203,
		-0.110859, -0.751522, -0.650327,
		28.262951, 36.108807, 34.465187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613209, 35.956047, 35.213589>,  <28.340553, 36.634872, 34.920418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613209, 35.956047, 35.213589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630983, 35.921814, 34.815453>,  <28.641647, 35.901276, 34.576572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630983, 35.921814, 34.815453>,  <28.613209, 35.956047, 35.213589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630983, 35.921814, 34.815453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860658, -0.502597, 0.081639,
		-0.507241, -0.860275, 0.051323,
		0.044437, -0.085583, -0.995340,
		28.644314, 35.896137, 34.516850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813679, 35.308636, 34.888927>,  <28.613209, 35.956047, 35.213589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813679, 35.308636, 34.888927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949883, 35.592545, 34.642262>,  <29.031605, 35.762890, 34.494263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949883, 35.592545, 34.642262>,  <28.813679, 35.308636, 34.888927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949883, 35.592545, 34.642262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940181, -0.264478, 0.214735,
		-0.010682, -0.652899, -0.757370,
		0.340508, 0.709771, -0.616668,
		29.052034, 35.805477, 34.457260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436047, 35.015854, 34.509205>,  <28.813679, 35.308636, 34.888927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436047, 35.015854, 34.509205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452000, 35.414631, 34.536076>,  <29.461571, 35.653896, 34.552197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452000, 35.414631, 34.536076>,  <29.436047, 35.015854, 34.509205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452000, 35.414631, 34.536076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929946, -0.061627, 0.362495,
		0.365527, 0.048009, -0.929562,
		0.039883, 0.996944, 0.067172,
		29.463964, 35.713715, 34.556229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034208, 35.241005, 34.169476>,  <29.436047, 35.015854, 34.509205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034208, 35.241005, 34.169476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955523, 35.499165, 34.464710>,  <29.908312, 35.654060, 34.641850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955523, 35.499165, 34.464710>,  <30.034208, 35.241005, 34.169476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955523, 35.499165, 34.464710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977737, 0.073044, 0.196712,
		0.073044, 0.760348, -0.645396,
		-0.196712, 0.645396, 0.738084,
		29.896509, 35.692783, 34.686134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712772, 35.908222, 34.078667>,  <30.034208, 35.241005, 34.169476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712772, 35.908222, 34.078667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526932, 35.555073, 34.051311>,  <29.415428, 35.343182, 34.034897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526932, 35.555073, 34.051311>,  <29.712772, 35.908222, 34.078667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526932, 35.555073, 34.051311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874523, 0.469595, -0.121204,
		0.139122, 0.003495, -0.990269,
		-0.464602, -0.882875, -0.068387,
		29.387550, 35.290211, 34.030796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299564, 36.093445, 33.545830>,  <29.712772, 35.908222, 34.078667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299564, 36.093445, 33.545830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170404, 35.816143, 33.803555>,  <29.092909, 35.649761, 33.958187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170404, 35.816143, 33.803555>,  <29.299564, 36.093445, 33.545830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170404, 35.816143, 33.803555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898610, 0.438237, 0.021187,
		-0.297048, -0.572141, -0.764472,
		-0.322898, -0.693255, 0.644309,
		29.073536, 35.608166, 33.996849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713022, 35.809387, 33.238667>,  <29.299564, 36.093445, 33.545830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713022, 35.809387, 33.238667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682846, 35.828621, 33.637062>,  <28.664740, 35.840160, 33.876099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682846, 35.828621, 33.637062>,  <28.713022, 35.809387, 33.238667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682846, 35.828621, 33.637062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925244, 0.369048, -0.087899,
		-0.371795, -0.928166, 0.016645,
		-0.075442, 0.048081, 0.995991,
		28.660213, 35.843044, 33.935860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189245, 35.207264, 33.534164>,  <28.713022, 35.809387, 33.238667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189245, 35.207264, 33.534164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210072, 35.514595, 33.789341>,  <28.222569, 35.698994, 33.942448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210072, 35.514595, 33.789341>,  <28.189245, 35.207264, 33.534164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210072, 35.514595, 33.789341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979863, 0.162611, -0.115871,
		-0.192763, -0.619060, 0.761319,
		0.052068, 0.768324, 0.637940,
		28.225693, 35.745090, 33.980724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646540, 35.125484, 34.005619>,  <28.189245, 35.207264, 33.534164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646540, 35.125484, 34.005619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757051, 35.509907, 34.008339>,  <27.823359, 35.740559, 34.009972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757051, 35.509907, 34.008339>,  <27.646540, 35.125484, 34.005619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757051, 35.509907, 34.008339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944217, 0.272746, -0.184562,
		-0.179228, 0.044570, 0.982797,
		0.276280, 0.961053, 0.006800,
		27.839935, 35.798222, 34.010380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117899, 35.503502, 34.412048>,  <27.646540, 35.125484, 34.005619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117899, 35.503502, 34.412048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286831, 35.779274, 34.176651>,  <27.388189, 35.944736, 34.035412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286831, 35.779274, 34.176651>,  <27.117899, 35.503502, 34.412048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286831, 35.779274, 34.176651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889414, 0.440437, -0.122302,
		0.174877, 0.575067, 0.799197,
		0.422328, 0.689429, -0.588495,
		27.413528, 35.986103, 34.000103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971661, 36.203552, 34.647137>,  <27.117899, 35.503502, 34.412048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971661, 36.203552, 34.647137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060036, 36.239620, 34.258694>,  <27.113060, 36.261261, 34.025627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060036, 36.239620, 34.258694>,  <26.971661, 36.203552, 34.647137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060036, 36.239620, 34.258694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779078, 0.615314, -0.120113,
		0.586707, 0.783108, 0.206198,
		0.220938, 0.090174, -0.971110,
		27.126318, 36.266674, 33.967361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061682, 36.994644, 34.413204>,  <26.971661, 36.203552, 34.647137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061682, 36.994644, 34.413204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966179, 36.777332, 34.091251>,  <26.908876, 36.646946, 33.898079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966179, 36.777332, 34.091251>,  <27.061682, 36.994644, 34.413204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966179, 36.777332, 34.091251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741532, 0.637169, -0.210111,
		0.626998, 0.546683, -0.554987,
		-0.238757, -0.543279, -0.804887,
		26.894552, 36.614349, 33.849785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905924, 37.353214, 33.771969>,  <27.061682, 36.994644, 34.413204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905924, 37.353214, 33.771969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658068, 37.039265, 33.773697>,  <26.509354, 36.850895, 33.774734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658068, 37.039265, 33.773697>,  <26.905924, 37.353214, 33.771969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658068, 37.039265, 33.773697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783779, 0.618468, -0.056456,
		0.041637, -0.038372, -0.998396,
		-0.619642, -0.784873, 0.004324,
		26.472176, 36.803802, 33.774994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629366, 37.500278, 33.183510>,  <26.905924, 37.353214, 33.771969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629366, 37.500278, 33.183510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425911, 37.302010, 33.465107>,  <26.303839, 37.183048, 33.634064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425911, 37.302010, 33.465107>,  <26.629366, 37.500278, 33.183510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425911, 37.302010, 33.465107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741874, 0.667264, -0.066195,
		-0.436936, -0.555940, -0.707120,
		-0.508636, -0.495671, 0.703989,
		26.273319, 37.153309, 33.676304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076405, 38.128941, 33.209660>,  <26.629366, 37.500278, 33.183510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076405, 38.128941, 33.209660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066345, 38.479275, 33.402439>,  <27.060308, 38.689476, 33.518108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066345, 38.479275, 33.402439>,  <27.076405, 38.128941, 33.209660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066345, 38.479275, 33.402439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998902, 0.041083, -0.022534,
		-0.039536, 0.480856, -0.875908,
		-0.025149, 0.875837, 0.481952,
		27.058800, 38.742027, 33.547024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665909, 38.581482, 32.882851>,  <27.076405, 38.128941, 33.209660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665909, 38.581482, 32.882851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595310, 38.734684, 33.245541>,  <27.552952, 38.826607, 33.463154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595310, 38.734684, 33.245541>,  <27.665909, 38.581482, 32.882851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595310, 38.734684, 33.245541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971586, 0.215378, 0.098145,
		-0.157700, 0.898287, -0.410136,
		-0.176496, 0.383005, 0.906728,
		27.542362, 38.849586, 33.517559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105968, 39.279293, 32.853504>,  <27.665909, 38.581482, 32.882851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105968, 39.279293, 32.853504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034111, 39.135883, 33.219933>,  <27.990997, 39.049835, 33.439789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034111, 39.135883, 33.219933>,  <28.105968, 39.279293, 32.853504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034111, 39.135883, 33.219933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866868, 0.382528, 0.319707,
		-0.465047, 0.851545, 0.242078,
		-0.179643, -0.358529, 0.916071,
		27.980219, 39.028324, 33.494755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825958, 38.938713, 32.511032>,  <28.105968, 39.279293, 32.853504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825958, 38.938713, 32.511032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225657, 38.927670, 32.500076>,  <29.465475, 38.921043, 32.493504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225657, 38.927670, 32.500076>,  <28.825958, 38.938713, 32.511032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225657, 38.927670, 32.500076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024640, -0.095339, 0.995140,
		-0.030080, -0.995062, -0.094587,
		0.999244, -0.027603, -0.027386,
		29.525429, 38.919388, 32.491859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060566, 38.482010, 33.077751>,  <28.825958, 38.938713, 32.511032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060566, 38.482010, 33.077751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382030, 38.708298, 33.003899>,  <29.574909, 38.844070, 32.959587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382030, 38.708298, 33.003899>,  <29.060566, 38.482010, 33.077751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382030, 38.708298, 33.003899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230767, -0.010291, 0.972955,
		0.548523, -0.824531, -0.138821,
		0.803660, 0.565724, -0.184630,
		29.623129, 38.878014, 32.948509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612816, 38.278706, 33.486927>,  <29.060566, 38.482010, 33.077751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612816, 38.278706, 33.486927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756388, 38.638371, 33.386791>,  <29.842531, 38.854172, 33.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756388, 38.638371, 33.386791>,  <29.612816, 38.278706, 33.486927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756388, 38.638371, 33.386791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322399, 0.132265, 0.937318,
		0.875916, -0.417139, -0.242417,
		0.358929, 0.899167, -0.250338,
		29.864067, 38.908119, 33.311691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317633, 38.218124, 33.682243>,  <29.612816, 38.278706, 33.486927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317633, 38.218124, 33.682243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108139, 38.558392, 33.700432>,  <29.982443, 38.762550, 33.711346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108139, 38.558392, 33.700432>,  <30.317633, 38.218124, 33.682243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108139, 38.558392, 33.700432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147699, 0.038107, 0.988298,
		0.838979, 0.524323, -0.145601,
		-0.523736, 0.850666, 0.045471,
		29.951017, 38.813591, 33.714073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536291, 38.676586, 34.230839>,  <30.317633, 38.218124, 33.682243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536291, 38.676586, 34.230839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175331, 38.844269, 34.190960>,  <29.958755, 38.944878, 34.167034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175331, 38.844269, 34.190960>,  <30.536291, 38.676586, 34.230839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175331, 38.844269, 34.190960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039657, 0.149593, 0.987952,
		0.429069, 0.895482, -0.118368,
		-0.902401, 0.419206, -0.099698,
		29.904612, 38.970032, 34.161049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502010, 39.314735, 34.574825>,  <30.536291, 38.676586, 34.230839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502010, 39.314735, 34.574825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138527, 39.148514, 34.559021>,  <29.920437, 39.048779, 34.549538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138527, 39.148514, 34.559021>,  <30.502010, 39.314735, 34.574825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138527, 39.148514, 34.559021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130867, 0.193736, 0.972286,
		-0.396388, 0.888694, -0.230432,
		-0.908708, -0.415558, -0.039507,
		29.865915, 39.023846, 34.547169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884550, 39.723957, 34.722988>,  <30.502010, 39.314735, 34.574825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884550, 39.723957, 34.722988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814783, 39.347134, 34.837601>,  <29.772923, 39.121040, 34.906368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814783, 39.347134, 34.837601>,  <29.884550, 39.723957, 34.722988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814783, 39.347134, 34.837601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273613, 0.325897, 0.904946,
		-0.945893, 0.079441, -0.314603,
		-0.174418, -0.942062, 0.286528,
		29.762457, 39.064514, 34.923557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380989, 39.924618, 34.059563>,  <29.884550, 39.723957, 34.722988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380989, 39.924618, 34.059563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764204, 39.825394, 34.117020>,  <29.994133, 39.765858, 34.151493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764204, 39.825394, 34.117020>,  <29.380989, 39.924618, 34.059563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764204, 39.825394, 34.117020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271972, -0.628318, 0.728867,
		-0.090551, -0.737348, -0.669417,
		0.958035, -0.248062, 0.143643,
		30.051615, 39.750977, 34.160114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642611, 40.081940, 33.412739>,  <29.380989, 39.924618, 34.059563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642611, 40.081940, 33.412739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843811, 39.757172, 33.531242>,  <29.964531, 39.562309, 33.602345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843811, 39.757172, 33.531242>,  <29.642611, 40.081940, 33.412739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843811, 39.757172, 33.531242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199067, -0.224732, -0.953870,
		0.841048, 0.538774, 0.048586,
		0.503002, -0.811922, 0.296263,
		29.994711, 39.513596, 33.620121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260227, 40.106960, 33.010708>,  <29.642611, 40.081940, 33.412739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260227, 40.106960, 33.010708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181236, 39.728714, 33.114098>,  <30.133842, 39.501766, 33.176132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181236, 39.728714, 33.114098>,  <30.260227, 40.106960, 33.010708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181236, 39.728714, 33.114098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187871, -0.295284, -0.936756,
		0.962137, -0.136428, 0.235966,
		-0.197477, -0.945619, 0.258473,
		30.121994, 39.445030, 33.191639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647352, 39.629051, 32.552563>,  <30.260227, 40.106960, 33.010708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647352, 39.629051, 32.552563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352715, 39.396149, 32.690205>,  <30.175932, 39.256409, 32.772789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352715, 39.396149, 32.690205>,  <30.647352, 39.629051, 32.552563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352715, 39.396149, 32.690205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106453, -0.402628, -0.909153,
		0.667905, -0.706307, 0.234591,
		-0.736594, -0.582255, 0.344106,
		30.131737, 39.221474, 32.793438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873222, 38.946949, 32.379066>,  <30.647352, 39.629051, 32.552563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873222, 38.946949, 32.379066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474516, 38.937420, 32.409771>,  <30.235292, 38.931702, 32.428196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474516, 38.937420, 32.409771>,  <30.873222, 38.946949, 32.379066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474516, 38.937420, 32.409771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064849, -0.325866, -0.943189,
		0.047487, -0.945115, 0.323267,
		-0.996765, -0.023825, 0.076765,
		30.175486, 38.930271, 32.432800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651503, 38.115604, 32.211777>,  <30.873222, 38.946949, 32.379066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651503, 38.115604, 32.211777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371628, 38.394066, 32.147518>,  <30.203703, 38.561142, 32.108963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371628, 38.394066, 32.147518>,  <30.651503, 38.115604, 32.211777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371628, 38.394066, 32.147518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194956, -0.402364, -0.894480,
		-0.687336, -0.594536, 0.417249,
		-0.699686, 0.696154, -0.160651,
		30.161722, 38.602913, 32.099323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123682, 37.815086, 31.875927>,  <30.651503, 38.115604, 32.211777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123682, 37.815086, 31.875927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083054, 38.204411, 31.793615>,  <30.058676, 38.438007, 31.744228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083054, 38.204411, 31.793615>,  <30.123682, 37.815086, 31.875927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083054, 38.204411, 31.793615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030345, -0.209783, -0.977277,
		-0.994365, -0.093019, 0.050843,
		-0.101571, 0.973313, -0.205778,
		30.052582, 38.496403, 31.731882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690784, 37.881783, 31.337124>,  <30.123682, 37.815086, 31.875927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690784, 37.881783, 31.337124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890215, 38.228420, 31.328770>,  <30.009874, 38.436401, 31.323757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890215, 38.228420, 31.328770>,  <29.690784, 37.881783, 31.337124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890215, 38.228420, 31.328770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069877, -0.064192, -0.995488,
		-0.864024, 0.494868, -0.092559,
		0.498577, 0.866594, -0.020883,
		30.039787, 38.488400, 31.322504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338388, 38.158455, 30.737562>,  <29.690784, 37.881783, 31.337124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338388, 38.158455, 30.737562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653997, 38.400028, 30.782658>,  <29.843363, 38.544971, 30.809715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653997, 38.400028, 30.782658>,  <29.338388, 38.158455, 30.737562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653997, 38.400028, 30.782658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120670, 0.027584, -0.992309,
		-0.602397, 0.796558, -0.051112,
		0.789022, 0.603932, 0.112737,
		29.890703, 38.581207, 30.816479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262829, 38.688496, 30.180523>,  <29.338388, 38.158455, 30.737562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262829, 38.688496, 30.180523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647390, 38.695133, 30.290380>,  <29.878126, 38.699116, 30.356295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647390, 38.695133, 30.290380>,  <29.262829, 38.688496, 30.180523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647390, 38.695133, 30.290380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272837, 0.071529, -0.959397,
		-0.035564, 0.997300, 0.064241,
		0.961403, 0.016592, 0.274645,
		29.935812, 38.700111, 30.372774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558867, 39.092926, 29.679625>,  <29.262829, 38.688496, 30.180523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558867, 39.092926, 29.679625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872238, 38.910141, 29.848112>,  <30.060261, 38.800468, 29.949203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872238, 38.910141, 29.848112>,  <29.558867, 39.092926, 29.679625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872238, 38.910141, 29.848112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404533, -0.139569, -0.903811,
		0.471800, 0.878466, 0.075516,
		0.783427, -0.456966, 0.421217,
		30.107265, 38.773052, 29.974478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126080, 39.336361, 29.287563>,  <29.558867, 39.092926, 29.679625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126080, 39.336361, 29.287563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251312, 38.994274, 29.452772>,  <30.326452, 38.789021, 29.551897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251312, 38.994274, 29.452772>,  <30.126080, 39.336361, 29.287563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251312, 38.994274, 29.452772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394477, -0.278497, -0.875687,
		0.863927, 0.437088, 0.250171,
		0.313080, -0.855216, 0.413022,
		30.345236, 38.737709, 29.576679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847424, 39.398502, 29.300966>,  <30.126080, 39.336361, 29.287563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847424, 39.398502, 29.300966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754738, 39.009815, 29.282768>,  <30.699127, 38.776604, 29.271849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754738, 39.009815, 29.282768>,  <30.847424, 39.398502, 29.300966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754738, 39.009815, 29.282768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516233, -0.083189, -0.852398,
		0.824508, -0.220998, 0.520910,
		-0.231712, -0.971720, -0.045496,
		30.685225, 38.718300, 29.269119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378799, 39.060570, 28.995987>,  <30.847424, 39.398502, 29.300966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378799, 39.060570, 28.995987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138165, 38.743408, 28.957222>,  <30.993784, 38.553112, 28.933964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138165, 38.743408, 28.957222>,  <31.378799, 39.060570, 28.995987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138165, 38.743408, 28.957222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508846, -0.286865, -0.811655,
		0.615767, -0.537594, 0.576042,
		-0.601587, -0.792907, -0.096910,
		30.957689, 38.505535, 28.928148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750399, 38.478989, 28.844946>,  <31.378799, 39.060570, 28.995987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750399, 38.478989, 28.844946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393551, 38.352135, 28.716227>,  <31.179443, 38.276024, 28.638994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393551, 38.352135, 28.716227>,  <31.750399, 38.478989, 28.844946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393551, 38.352135, 28.716227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427213, -0.360345, -0.829241,
		0.147020, -0.877256, 0.456953,
		-0.892117, -0.317132, -0.321797,
		31.125916, 38.256996, 28.619688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829752, 37.794846, 28.505915>,  <31.750399, 38.478989, 28.844946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829752, 37.794846, 28.505915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492357, 37.946793, 28.354004>,  <31.289921, 38.037960, 28.262857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492357, 37.946793, 28.354004>,  <31.829752, 37.794846, 28.505915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492357, 37.946793, 28.354004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292565, -0.268054, -0.917907,
		-0.450483, -0.885352, 0.114964,
		-0.843487, 0.379867, -0.379777,
		31.239311, 38.060753, 28.240070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580881, 37.317917, 28.089170>,  <31.829752, 37.794846, 28.505915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580881, 37.317917, 28.089170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423771, 37.660206, 27.954432>,  <31.329504, 37.865578, 27.873589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423771, 37.660206, 27.954432>,  <31.580881, 37.317917, 28.089170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423771, 37.660206, 27.954432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112158, -0.318974, -0.941104,
		-0.912769, -0.407422, 0.029309,
		-0.392776, 0.855724, -0.336845,
		31.305939, 37.916924, 27.853378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145826, 37.089428, 27.401134>,  <31.580881, 37.317917, 28.089170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145826, 37.089428, 27.401134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184229, 37.484909, 27.355101>,  <31.207270, 37.722198, 27.327480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184229, 37.484909, 27.355101>,  <31.145826, 37.089428, 27.401134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184229, 37.484909, 27.355101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013676, -0.114296, -0.993353,
		-0.995287, 0.096940, 0.002549,
		0.096004, 0.988706, -0.115083,
		31.213030, 37.781521, 27.320576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755981, 37.258251, 26.738031>,  <31.145826, 37.089428, 27.401134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755981, 37.258251, 26.738031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989677, 37.568901, 26.832275>,  <31.129896, 37.755291, 26.888823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989677, 37.568901, 26.832275>,  <30.755981, 37.258251, 26.738031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989677, 37.568901, 26.832275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101921, 0.217803, -0.970657,
		-0.805154, 0.591112, 0.048095,
		0.584242, 0.776626, 0.235612,
		31.164949, 37.801888, 26.902958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402596, 37.667767, 26.386877>,  <30.755981, 37.258251, 26.738031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402596, 37.667767, 26.386877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753548, 37.844467, 26.461775>,  <30.964119, 37.950485, 26.506714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753548, 37.844467, 26.461775>,  <30.402596, 37.667767, 26.386877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753548, 37.844467, 26.461775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124591, 0.167102, -0.978036,
		-0.463335, 0.881439, 0.091575,
		0.877381, 0.441749, 0.187244,
		31.016762, 37.976994, 26.517948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354105, 38.421631, 26.266006>,  <30.402596, 37.667767, 26.386877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354105, 38.421631, 26.266006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743771, 38.331299, 26.264814>,  <30.977570, 38.277100, 26.264099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743771, 38.331299, 26.264814>,  <30.354105, 38.421631, 26.266006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743771, 38.331299, 26.264814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088764, 0.394978, -0.914392,
		0.207671, 0.890503, 0.404818,
		0.974163, -0.225826, -0.002981,
		31.036020, 38.263550, 26.263920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581200, 38.937149, 25.972792>,  <30.354105, 38.421631, 26.266006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581200, 38.937149, 25.972792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862431, 38.655502, 25.932993>,  <31.031168, 38.486515, 25.909115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862431, 38.655502, 25.932993>,  <30.581200, 38.937149, 25.972792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862431, 38.655502, 25.932993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111875, 0.247694, -0.962357,
		0.702259, 0.665480, 0.252921,
		0.703076, -0.704120, -0.099495,
		31.073353, 38.444267, 25.903145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100122, 39.202030, 25.553787>,  <30.581200, 38.937149, 25.972792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100122, 39.202030, 25.553787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099947, 38.802635, 25.531822>,  <31.099842, 38.562996, 25.518644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099947, 38.802635, 25.531822>,  <31.100122, 39.202030, 25.553787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099947, 38.802635, 25.531822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120366, 0.054460, -0.991235,
		0.992730, -0.007042, 0.120161,
		-0.000437, -0.998491, -0.054911,
		31.099815, 38.503086, 25.515348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511887, 39.138496, 24.991547>,  <31.100122, 39.202030, 25.553787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511887, 39.138496, 24.991547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365322, 38.772556, 25.059418>,  <31.277384, 38.552994, 25.100140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365322, 38.772556, 25.059418>,  <31.511887, 39.138496, 24.991547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365322, 38.772556, 25.059418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111257, -0.224131, -0.968188,
		0.923777, -0.335878, 0.183908,
		-0.366412, -0.914851, 0.169678,
		31.255398, 38.498100, 25.110321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988279, 38.579403, 24.786451>,  <31.511887, 39.138496, 24.991547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988279, 38.579403, 24.786451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636387, 38.389820, 24.771309>,  <31.425251, 38.276070, 24.762224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636387, 38.389820, 24.771309>,  <31.988279, 38.579403, 24.786451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636387, 38.389820, 24.771309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239275, -0.372506, -0.896653,
		0.410878, -0.797872, 0.441112,
		-0.879731, -0.473962, -0.037856,
		31.372467, 38.247631, 24.759953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065315, 37.925819, 24.532082>,  <31.988279, 38.579403, 24.786451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065315, 37.925819, 24.532082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674177, 37.971367, 24.461830>,  <31.439493, 37.998695, 24.419680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674177, 37.971367, 24.461830>,  <32.065315, 37.925819, 24.532082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674177, 37.971367, 24.461830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123373, -0.364280, -0.923081,
		-0.169083, -0.924303, 0.342163,
		-0.977849, 0.113863, -0.175628,
		31.380823, 38.005527, 24.409142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843348, 37.444675, 24.005188>,  <32.065315, 37.925819, 24.532082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843348, 37.444675, 24.005188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509348, 37.664616, 23.996780>,  <31.308949, 37.796581, 23.991735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509348, 37.664616, 23.996780>,  <31.843348, 37.444675, 24.005188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509348, 37.664616, 23.996780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022641, -0.072496, -0.997112,
		-0.549786, -0.832111, 0.072984,
		-0.834999, 0.549850, -0.021017,
		31.258848, 37.829571, 23.990475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329266, 37.079967, 23.593864>,  <31.843348, 37.444675, 24.005188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329266, 37.079967, 23.593864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225304, 37.466141, 23.585995>,  <31.162928, 37.697845, 23.581272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225304, 37.466141, 23.585995>,  <31.329266, 37.079967, 23.593864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225304, 37.466141, 23.585995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141355, 0.017882, -0.989798,
		-0.955233, -0.260032, -0.141117,
		-0.259903, 0.965434, -0.019676,
		31.147333, 37.755772, 23.580091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913322, 37.050629, 23.108564>,  <31.329266, 37.079967, 23.593864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913322, 37.050629, 23.108564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010078, 37.437485, 23.139900>,  <31.068132, 37.669598, 23.158701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010078, 37.437485, 23.139900>,  <30.913322, 37.050629, 23.108564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010078, 37.437485, 23.139900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150688, 0.042315, -0.987675,
		-0.958531, 0.250712, -0.135500,
		0.241889, 0.967136, 0.078339,
		31.082645, 37.727627, 23.163403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912075, 37.195705, 22.511497>,  <30.913322, 37.050629, 23.108564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912075, 37.195705, 22.511497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084511, 37.530331, 22.646744>,  <31.187973, 37.731106, 22.727892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084511, 37.530331, 22.646744>,  <30.912075, 37.195705, 22.511497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084511, 37.530331, 22.646744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263422, 0.241713, -0.933908,
		-0.863001, 0.491665, -0.116170,
		0.431090, 0.836565, 0.338114,
		31.213839, 37.781300, 22.748178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522829, 37.797634, 22.153440>,  <30.912075, 37.195705, 22.511497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522829, 37.797634, 22.153440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905134, 37.850967, 22.258314>,  <31.134518, 37.882969, 22.321239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905134, 37.850967, 22.258314>,  <30.522829, 37.797634, 22.153440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905134, 37.850967, 22.258314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225718, 0.239074, -0.944402,
		-0.188602, 0.961803, 0.198402,
		0.955762, 0.133334, 0.262186,
		31.191862, 37.890968, 22.336969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714890, 38.447571, 21.714426>,  <30.522829, 37.797634, 22.153440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714890, 38.447571, 21.714426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039883, 38.238701, 21.818125>,  <31.234879, 38.113380, 21.880344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039883, 38.238701, 21.818125>,  <30.714890, 38.447571, 21.714426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039883, 38.238701, 21.818125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440400, 0.258363, -0.859823,
		0.381996, 0.812764, 0.439880,
		0.812482, -0.522172, 0.259248,
		31.283627, 38.082050, 21.895899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334253, 38.907227, 21.635311>,  <30.714890, 38.447571, 21.714426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334253, 38.907227, 21.635311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490662, 38.539474, 21.652473>,  <31.584507, 38.318821, 21.662771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490662, 38.539474, 21.652473>,  <31.334253, 38.907227, 21.635311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490662, 38.539474, 21.652473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596274, 0.217537, -0.772745,
		0.701115, 0.327741, 0.633265,
		0.391019, -0.919382, 0.042905,
		31.607967, 38.263660, 21.665344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081608, 38.927708, 21.561966>,  <31.334253, 38.907227, 21.635311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081608, 38.927708, 21.561966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947197, 38.567482, 21.451641>,  <31.866550, 38.351349, 21.385447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947197, 38.567482, 21.451641>,  <32.081608, 38.927708, 21.561966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947197, 38.567482, 21.451641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407165, 0.125166, -0.904738,
		0.849295, -0.416319, 0.324618,
		-0.336028, -0.900562, -0.275813,
		31.846388, 38.297314, 21.368896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554081, 38.692451, 21.194872>,  <32.081608, 38.927708, 21.561966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554081, 38.692451, 21.194872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243664, 38.465267, 21.085199>,  <32.057415, 38.328957, 21.019396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243664, 38.465267, 21.085199>,  <32.554081, 38.692451, 21.194872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243664, 38.465267, 21.085199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200897, 0.189475, -0.961114,
		0.597829, -0.800947, -0.032938,
		-0.776042, -0.567965, -0.274182,
		32.010853, 38.294876, 21.002945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793468, 38.359058, 20.650454>,  <32.554081, 38.692451, 21.194872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793468, 38.359058, 20.650454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405495, 38.295486, 20.576721>,  <32.172710, 38.257343, 20.532482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405495, 38.295486, 20.576721>,  <32.793468, 38.359058, 20.650454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405495, 38.295486, 20.576721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132098, 0.292343, -0.947146,
		0.204415, -0.943015, -0.262558,
		-0.969930, -0.158927, -0.184329,
		32.114517, 38.247807, 20.521421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732033, 37.774940, 20.129778>,  <32.793468, 38.359058, 20.650454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732033, 37.774940, 20.129778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395988, 37.991333, 20.145592>,  <32.194363, 38.121166, 20.155081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395988, 37.991333, 20.145592>,  <32.732033, 37.774940, 20.129778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395988, 37.991333, 20.145592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054987, 0.157449, -0.985995,
		-0.539626, -0.826168, -0.162021,
		-0.840107, 0.540978, 0.039535,
		32.143955, 38.153625, 20.157452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249920, 37.573860, 19.605438>,  <32.732033, 37.774940, 20.129778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249920, 37.573860, 19.605438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124260, 37.942459, 19.696789>,  <32.048862, 38.163616, 19.751598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124260, 37.942459, 19.696789>,  <32.249920, 37.573860, 19.605438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124260, 37.942459, 19.696789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104761, 0.205439, -0.973047,
		-0.943576, -0.329608, 0.031998,
		-0.314150, 0.921495, 0.228377,
		32.030014, 38.218906, 19.765303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682873, 37.749634, 19.133549>,  <32.249920, 37.573860, 19.605438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682873, 37.749634, 19.133549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747028, 38.119884, 19.270660>,  <31.785522, 38.342033, 19.352928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747028, 38.119884, 19.270660>,  <31.682873, 37.749634, 19.133549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747028, 38.119884, 19.270660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154818, 0.319386, -0.934892,
		-0.974836, 0.203017, -0.092077,
		0.160391, 0.925623, 0.342779,
		31.795145, 38.397572, 19.373495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338232, 38.172153, 18.717361>,  <31.682873, 37.749634, 19.133549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338232, 38.172153, 18.717361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629536, 38.396320, 18.875132>,  <31.804317, 38.530819, 18.969793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629536, 38.396320, 18.875132>,  <31.338232, 38.172153, 18.717361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629536, 38.396320, 18.875132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158023, 0.422717, -0.892378,
		-0.666833, 0.712212, 0.219289,
		0.728260, 0.560414, 0.394428,
		31.848013, 38.564445, 18.993460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267960, 38.782383, 18.510439>,  <31.338232, 38.172153, 18.717361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267960, 38.782383, 18.510439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654865, 38.799751, 18.610453>,  <31.887009, 38.810173, 18.670460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654865, 38.799751, 18.610453>,  <31.267960, 38.782383, 18.510439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654865, 38.799751, 18.610453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196486, 0.495395, -0.846155,
		-0.160609, 0.867582, 0.470645,
		0.967263, 0.043425, 0.250032,
		31.945044, 38.812778, 18.685463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468100, 39.441551, 18.367044>,  <31.267960, 38.782383, 18.510439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468100, 39.441551, 18.367044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807228, 39.229580, 18.359303>,  <32.010704, 39.102398, 18.354658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807228, 39.229580, 18.359303>,  <31.468100, 39.441551, 18.367044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807228, 39.229580, 18.359303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253464, 0.437030, -0.862995,
		0.465781, 0.726762, 0.504841,
		0.847823, -0.529926, -0.019352,
		32.061577, 39.070602, 18.353497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896645, 39.871677, 18.051413>,  <31.468100, 39.441551, 18.367044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896645, 39.871677, 18.051413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106155, 39.532211, 18.021957>,  <32.231861, 39.328533, 18.004284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106155, 39.532211, 18.021957>,  <31.896645, 39.871677, 18.051413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106155, 39.532211, 18.021957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444483, 0.346018, -0.826260,
		0.726699, 0.400047, 0.558454,
		0.523778, -0.848666, -0.073637,
		32.263290, 39.277611, 17.999866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528316, 40.112026, 18.152428>,  <31.896645, 39.871677, 18.051413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528316, 40.112026, 18.152428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526291, 39.770966, 17.943443>,  <32.525074, 39.566330, 17.818052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526291, 39.770966, 17.943443>,  <32.528316, 40.112026, 18.152428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526291, 39.770966, 17.943443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600149, 0.415320, -0.683616,
		0.799872, -0.317015, 0.509613,
		-0.005064, -0.852649, -0.522460,
		32.524773, 39.515171, 17.786705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215611, 40.080242, 17.827192>,  <32.528316, 40.112026, 18.152428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215611, 40.080242, 17.827192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977467, 39.827534, 17.628630>,  <32.834579, 39.675911, 17.509491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977467, 39.827534, 17.628630>,  <33.215611, 40.080242, 17.827192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977467, 39.827534, 17.628630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541784, 0.140571, -0.828680,
		0.593313, -0.762306, 0.258591,
		-0.595358, -0.631767, -0.496407,
		32.798859, 39.638004, 17.479708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670177, 39.711243, 17.404675>,  <33.215611, 40.080242, 17.827192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670177, 39.711243, 17.404675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323345, 39.623730, 17.225655>,  <33.115246, 39.571220, 17.118242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323345, 39.623730, 17.225655>,  <33.670177, 39.711243, 17.404675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323345, 39.623730, 17.225655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391294, 0.256906, -0.883679,
		0.308312, -0.941347, -0.137150,
		-0.867083, -0.218783, -0.447551,
		33.063221, 39.558094, 17.091389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893719, 39.342545, 16.863441>,  <33.670177, 39.711243, 17.404675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893719, 39.342545, 16.863441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526825, 39.479893, 16.782667>,  <33.306690, 39.562302, 16.734203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526825, 39.479893, 16.782667>,  <33.893719, 39.342545, 16.863441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526825, 39.479893, 16.782667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312063, 0.304318, -0.900004,
		-0.247579, -0.888532, -0.386284,
		-0.917236, 0.343367, -0.201935,
		33.251656, 39.582901, 16.722086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716911, 39.086384, 16.225433>,  <33.893719, 39.342545, 16.863441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716911, 39.086384, 16.225433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493546, 39.417885, 16.240147>,  <33.359528, 39.616783, 16.248974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493546, 39.417885, 16.240147>,  <33.716911, 39.086384, 16.225433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493546, 39.417885, 16.240147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331034, 0.263267, -0.906150,
		-0.760653, -0.493828, -0.421355,
		-0.558411, 0.828749, 0.036781,
		33.326023, 39.666508, 16.251181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397926, 39.084740, 15.629640>,  <33.716911, 39.086384, 16.225433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397926, 39.084740, 15.629640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380058, 39.461361, 15.763192>,  <33.369335, 39.687336, 15.843324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380058, 39.461361, 15.763192>,  <33.397926, 39.084740, 15.629640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380058, 39.461361, 15.763192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287303, 0.332204, -0.898386,
		-0.956797, 0.055792, -0.285352,
		-0.044672, 0.941556, 0.333881,
		33.366657, 39.743828, 15.863357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962154, 39.434879, 15.258290>,  <33.397926, 39.084740, 15.629640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962154, 39.434879, 15.258290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267170, 39.668148, 15.370323>,  <33.450180, 39.808109, 15.437543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267170, 39.668148, 15.370323>,  <32.962154, 39.434879, 15.258290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267170, 39.668148, 15.370323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113671, 0.305423, -0.945408,
		-0.636874, 0.752750, 0.166608,
		0.762542, 0.583168, 0.280082,
		33.495934, 39.843098, 15.454348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820900, 40.185688, 15.041924>,  <32.962154, 39.434879, 15.258290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820900, 40.185688, 15.041924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198685, 40.059917, 15.080160>,  <33.425354, 39.984455, 15.103102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198685, 40.059917, 15.080160>,  <32.820900, 40.185688, 15.041924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198685, 40.059917, 15.080160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163566, 0.197467, -0.966567,
		0.285036, 0.928517, 0.237929,
		0.944458, -0.314424, 0.095588,
		33.482021, 39.965591, 15.108836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247360, 40.644703, 14.779712>,  <32.820900, 40.185688, 15.041924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247360, 40.644703, 14.779712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441330, 40.295242, 14.763774>,  <33.557713, 40.085567, 14.754211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441330, 40.295242, 14.763774>,  <33.247360, 40.644703, 14.779712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441330, 40.295242, 14.763774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135856, 0.120259, -0.983403,
		0.863939, 0.471464, 0.177006,
		0.484926, -0.873647, -0.039845,
		33.586807, 40.033150, 14.751821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944313, 40.752911, 14.406497>,  <33.247360, 40.644703, 14.779712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944313, 40.752911, 14.406497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821999, 40.372482, 14.388825>,  <33.748611, 40.144226, 14.378222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821999, 40.372482, 14.388825>,  <33.944313, 40.752911, 14.406497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821999, 40.372482, 14.388825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056609, 0.028158, -0.997999,
		0.950415, -0.307677, 0.045229,
		-0.305787, -0.951074, -0.044179,
		33.730263, 40.087158, 14.375571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174179, 40.545341, 15.054260>,  <33.944313, 40.752911, 14.406497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174179, 40.545341, 15.054260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317692, 40.597191, 15.424011>,  <34.403801, 40.628300, 15.645862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317692, 40.597191, 15.424011>,  <34.174179, 40.545341, 15.054260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317692, 40.597191, 15.424011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624226, 0.702963, -0.340860,
		-0.693985, 0.699315, 0.171298,
		0.358785, 0.129623, 0.924376,
		34.425327, 40.636078, 15.701324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228382, 41.248760, 15.117450>,  <34.174179, 40.545341, 15.054260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228382, 41.248760, 15.117450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471321, 41.101917, 15.399261>,  <34.617085, 41.013809, 15.568349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471321, 41.101917, 15.399261>,  <34.228382, 41.248760, 15.117450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471321, 41.101917, 15.399261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761794, 0.520732, -0.385368,
		-0.225399, 0.770757, 0.595927,
		0.607343, -0.367112, 0.704530,
		34.653522, 40.991783, 15.610620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766808, 41.745640, 15.347518>,  <34.228382, 41.248760, 15.117450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766808, 41.745640, 15.347518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916195, 41.379814, 15.409608>,  <35.005829, 41.160320, 15.446862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916195, 41.379814, 15.409608>,  <34.766808, 41.745640, 15.347518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916195, 41.379814, 15.409608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926130, 0.377156, -0.006135,
		-0.052933, 0.146050, 0.987860,
		0.373473, -0.914562, 0.155225,
		35.028236, 41.105446, 15.456175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203983, 41.546978, 16.071285>,  <34.766808, 41.745640, 15.347518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203983, 41.546978, 16.071285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308277, 41.405285, 15.712056>,  <35.370853, 41.320271, 15.496518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308277, 41.405285, 15.712056>,  <35.203983, 41.546978, 16.071285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308277, 41.405285, 15.712056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949012, 0.264776, 0.171085,
		0.177185, -0.896890, 0.405208,
		0.260733, -0.354233, -0.898074,
		35.386497, 41.299015, 15.442634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781033, 42.002747, 16.015654>,  <35.203983, 41.546978, 16.071285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781033, 42.002747, 16.015654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391560, 41.926922, 16.066277>,  <34.157875, 41.881428, 16.096649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391560, 41.926922, 16.066277>,  <34.781033, 42.002747, 16.015654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391560, 41.926922, 16.066277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140172, -0.060178, 0.988297,
		-0.179724, 0.980024, 0.085165,
		-0.973679, -0.189558, 0.126556,
		34.099457, 41.870056, 16.104244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709129, 42.121040, 16.702768>,  <34.781033, 42.002747, 16.015654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709129, 42.121040, 16.702768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337711, 42.004677, 16.610531>,  <34.114861, 41.934860, 16.555187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337711, 42.004677, 16.610531>,  <34.709129, 42.121040, 16.702768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337711, 42.004677, 16.610531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161610, -0.242441, 0.956611,
		-0.334189, 0.925525, 0.178105,
		-0.928547, -0.290905, -0.230595,
		34.059147, 41.917404, 16.541353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257496, 42.487167, 17.186684>,  <34.709129, 42.121040, 16.702768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257496, 42.487167, 17.186684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054520, 42.157955, 17.084610>,  <33.932732, 41.960426, 17.023367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054520, 42.157955, 17.084610>,  <34.257496, 42.487167, 17.186684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054520, 42.157955, 17.084610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165966, -0.197245, 0.966204,
		-0.845552, 0.532644, -0.036505,
		-0.507442, -0.823034, -0.255182,
		33.902287, 41.911045, 17.008055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594887, 42.474987, 17.332512>,  <34.257496, 42.487167, 17.186684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594887, 42.474987, 17.332512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682285, 42.084736, 17.340572>,  <33.734726, 41.850586, 17.345409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682285, 42.084736, 17.340572>,  <33.594887, 42.474987, 17.332512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682285, 42.084736, 17.340572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139698, -0.010835, 0.990135,
		-0.965786, -0.219159, -0.138661,
		0.218500, -0.975629, 0.020152,
		33.747837, 41.792046, 17.346619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962582, 42.141464, 17.617298>,  <33.594887, 42.474987, 17.332512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962582, 42.141464, 17.617298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279255, 41.899567, 17.652006>,  <33.469257, 41.754429, 17.672831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279255, 41.899567, 17.652006>,  <32.962582, 42.141464, 17.617298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279255, 41.899567, 17.652006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183166, -0.099456, 0.978038,
		-0.582831, -0.790187, -0.189506,
		0.791681, -0.604742, 0.086769,
		33.516758, 41.718143, 17.678038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729595, 41.686840, 17.934290>,  <32.962582, 42.141464, 17.617298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729595, 41.686840, 17.934290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114632, 41.589264, 17.981462>,  <33.345654, 41.530720, 18.009766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114632, 41.589264, 17.981462>,  <32.729595, 41.686840, 17.934290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114632, 41.589264, 17.981462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199994, -0.346023, 0.916663,
		-0.182801, -0.905960, -0.381865,
		0.962594, -0.243937, 0.117933,
		33.403408, 41.516083, 18.016842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740780, 40.885979, 18.150869>,  <32.729595, 41.686840, 17.934290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740780, 40.885979, 18.150869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063091, 41.084793, 18.279657>,  <33.256477, 41.204082, 18.356930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063091, 41.084793, 18.279657>,  <32.740780, 40.885979, 18.150869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063091, 41.084793, 18.279657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112033, -0.405919, 0.907016,
		0.581518, -0.766929, -0.271397,
		0.805782, 0.497041, 0.321971,
		33.304825, 41.233906, 18.376249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119648, 40.417328, 18.481382>,  <32.740780, 40.885979, 18.150869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119648, 40.417328, 18.481382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250603, 40.771687, 18.612837>,  <33.329174, 40.984303, 18.691710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250603, 40.771687, 18.612837>,  <33.119648, 40.417328, 18.481382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250603, 40.771687, 18.612837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080172, -0.372590, 0.924526,
		0.941484, -0.276329, -0.193005,
		0.327384, 0.885900, 0.328634,
		33.348820, 41.037457, 18.711428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641552, 40.306194, 18.961178>,  <33.119648, 40.417328, 18.481382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641552, 40.306194, 18.961178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551006, 40.680233, 19.070251>,  <33.496677, 40.904655, 19.135696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551006, 40.680233, 19.070251>,  <33.641552, 40.306194, 18.961178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551006, 40.680233, 19.070251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026700, -0.273889, 0.961391,
		0.973676, 0.224907, 0.037032,
		-0.226366, 0.935095, 0.272684,
		33.483097, 40.960762, 19.152056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127544, 40.554035, 19.453566>,  <33.641552, 40.306194, 18.961178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127544, 40.554035, 19.453566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805485, 40.774693, 19.540672>,  <33.612247, 40.907089, 19.592936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805485, 40.774693, 19.540672>,  <34.127544, 40.554035, 19.453566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805485, 40.774693, 19.540672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194782, -0.100854, 0.975648,
		0.560175, 0.827958, -0.026248,
		-0.805149, 0.551646, 0.217767,
		33.563942, 40.940186, 19.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325310, 41.048222, 19.956608>,  <34.127544, 40.554035, 19.453566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325310, 41.048222, 19.956608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927517, 41.089050, 19.966364>,  <33.688843, 41.113548, 19.972218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927517, 41.089050, 19.966364>,  <34.325310, 41.048222, 19.956608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927517, 41.089050, 19.966364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022849, -0.016251, 0.999607,
		0.102427, 0.994644, 0.013829,
		-0.994478, 0.102071, 0.024392,
		33.629173, 41.119671, 19.973680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147697, 41.540817, 20.488359>,  <34.325310, 41.048222, 19.956608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147697, 41.540817, 20.488359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789627, 41.368217, 20.443697>,  <33.574783, 41.264660, 20.416901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789627, 41.368217, 20.443697>,  <34.147697, 41.540817, 20.488359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789627, 41.368217, 20.443697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178535, 0.117607, 0.976880,
		-0.408390, 0.894415, -0.182316,
		-0.895178, -0.431497, -0.111655,
		33.521072, 41.238770, 20.410200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760719, 41.887093, 20.950048>,  <34.147697, 41.540817, 20.488359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760719, 41.887093, 20.950048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511879, 41.584057, 20.871004>,  <33.362576, 41.402237, 20.823578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511879, 41.584057, 20.871004>,  <33.760719, 41.887093, 20.950048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511879, 41.584057, 20.871004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421220, 0.111096, 0.900129,
		-0.659974, 0.643208, -0.388224,
		-0.622100, -0.757589, -0.197612,
		33.325249, 41.356781, 20.811720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067802, 42.104012, 21.134438>,  <33.760719, 41.887093, 20.950048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067802, 42.104012, 21.134438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066162, 41.704174, 21.145695>,  <33.065178, 41.464272, 21.152449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066162, 41.704174, 21.145695>,  <33.067802, 42.104012, 21.134438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066162, 41.704174, 21.145695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540160, 0.025901, 0.841164,
		-0.841553, -0.011749, -0.540047,
		-0.004105, -0.999595, 0.028143,
		33.064930, 41.404297, 21.154139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429790, 41.881180, 21.423977>,  <33.067802, 42.104012, 21.134438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429790, 41.881180, 21.423977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633511, 41.538441, 21.456045>,  <32.755741, 41.332798, 21.475286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633511, 41.538441, 21.456045>,  <32.429790, 41.881180, 21.423977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633511, 41.538441, 21.456045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369197, -0.133389, 0.919729,
		-0.777374, -0.498014, -0.384281,
		0.509296, -0.856849, 0.080172,
		32.786301, 41.281387, 21.480097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959850, 41.220898, 21.511272>,  <32.429790, 41.881180, 21.423977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959850, 41.220898, 21.511272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316181, 41.152393, 21.679604>,  <32.529980, 41.111290, 21.780603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316181, 41.152393, 21.679604>,  <31.959850, 41.220898, 21.511272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316181, 41.152393, 21.679604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452756, -0.411978, 0.790750,
		0.037948, -0.894955, -0.444540,
		0.890826, -0.171260, 0.420830,
		32.583427, 41.101013, 21.805853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099640, 40.501499, 21.845253>,  <31.959850, 41.220898, 21.511272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099640, 40.501499, 21.845253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386215, 40.721210, 22.017307>,  <32.558159, 40.853035, 22.120541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386215, 40.721210, 22.017307>,  <32.099640, 40.501499, 21.845253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386215, 40.721210, 22.017307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272361, -0.347413, 0.897287,
		0.642292, -0.760001, -0.099298,
		0.716436, 0.549275, 0.430135,
		32.601147, 40.885994, 22.146347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183861, 40.106232, 22.352423>,  <32.099640, 40.501499, 21.845253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183861, 40.106232, 22.352423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393044, 40.436020, 22.438921>,  <32.518551, 40.633892, 22.490820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393044, 40.436020, 22.438921>,  <32.183861, 40.106232, 22.352423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393044, 40.436020, 22.438921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253206, -0.091984, 0.963029,
		0.813884, -0.558373, 0.160658,
		0.522952, 0.824474, 0.216248,
		32.549931, 40.683361, 22.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568501, 39.977409, 22.962769>,  <32.183861, 40.106232, 22.352423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568501, 39.977409, 22.962769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540466, 40.374920, 22.928154>,  <32.523643, 40.613426, 22.907385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540466, 40.374920, 22.928154>,  <32.568501, 39.977409, 22.962769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540466, 40.374920, 22.928154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316226, 0.060142, 0.946776,
		0.946091, 0.093725, 0.310043,
		-0.070090, 0.993780, -0.086538,
		32.519440, 40.673054, 22.902193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857498, 40.177128, 23.686993>,  <32.568501, 39.977409, 22.962769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857498, 40.177128, 23.686993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685772, 40.510590, 23.548021>,  <32.582737, 40.710667, 23.464638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685772, 40.510590, 23.548021>,  <32.857498, 40.177128, 23.686993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685772, 40.510590, 23.548021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266759, 0.250473, 0.930646,
		0.862859, 0.492222, 0.114853,
		-0.429317, 0.833655, -0.347428,
		32.556976, 40.760685, 23.443792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052883, 40.587257, 24.136398>,  <32.857498, 40.177128, 23.686993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052883, 40.587257, 24.136398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717545, 40.724934, 23.967306>,  <32.516342, 40.807541, 23.865850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717545, 40.724934, 23.967306>,  <33.052883, 40.587257, 24.136398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717545, 40.724934, 23.967306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451426, -0.003625, 0.892301,
		0.305593, 0.938891, 0.158418,
		-0.838348, 0.344195, -0.422732,
		32.466042, 40.828194, 23.840487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997890, 41.266434, 24.448978>,  <33.052883, 40.587257, 24.136398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997890, 41.266434, 24.448978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645931, 41.128819, 24.317879>,  <32.434757, 41.046249, 24.239220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645931, 41.128819, 24.317879>,  <32.997890, 41.266434, 24.448978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645931, 41.128819, 24.317879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409296, 0.198386, 0.890573,
		-0.241374, 0.917757, -0.315375,
		-0.879895, -0.344042, -0.327749,
		32.381962, 41.025604, 24.219555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598637, 41.763851, 24.715815>,  <32.997890, 41.266434, 24.448978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598637, 41.763851, 24.715815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375111, 41.441696, 24.636736>,  <32.240993, 41.248405, 24.589289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375111, 41.441696, 24.636736>,  <32.598637, 41.763851, 24.715815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375111, 41.441696, 24.636736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441466, 0.087099, 0.893041,
		-0.702022, 0.586318, -0.404222,
		-0.558813, -0.805385, -0.197694,
		32.207466, 41.200081, 24.577427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997749, 41.993259, 24.823696>,  <32.598637, 41.763851, 24.715815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997749, 41.993259, 24.823696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960459, 41.595142, 24.834333>,  <31.938084, 41.356274, 24.840715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960459, 41.595142, 24.834333>,  <31.997749, 41.993259, 24.823696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960459, 41.595142, 24.834333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284144, 0.052193, 0.957360,
		-0.954239, 0.081696, -0.287671,
		-0.093227, -0.995290, 0.026591,
		31.932491, 41.296555, 24.842310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317738, 41.860573, 25.013756>,  <31.997749, 41.993259, 24.823696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317738, 41.860573, 25.013756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510374, 41.518547, 25.090635>,  <31.625956, 41.313332, 25.136763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510374, 41.518547, 25.090635>,  <31.317738, 41.860573, 25.013756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510374, 41.518547, 25.090635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396546, -0.017033, 0.917857,
		-0.781550, -0.518248, -0.347274,
		0.481593, -0.855061, 0.192197,
		31.654852, 41.262028, 25.148294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926647, 41.608849, 25.516171>,  <31.317738, 41.860573, 25.013756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926647, 41.608849, 25.516171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249084, 41.373119, 25.537746>,  <31.442547, 41.231682, 25.550692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249084, 41.373119, 25.537746>,  <30.926647, 41.608849, 25.516171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249084, 41.373119, 25.537746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169529, -0.142630, 0.975149,
		-0.566989, -0.795204, -0.214881,
		0.806091, -0.589327, 0.053940,
		31.490911, 41.196320, 25.553928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720236, 41.061649, 25.957546>,  <30.926647, 41.608849, 25.516171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720236, 41.061649, 25.957546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120035, 41.060074, 25.970129>,  <31.359915, 41.059128, 25.977678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120035, 41.060074, 25.970129>,  <30.720236, 41.061649, 25.957546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120035, 41.060074, 25.970129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031689, -0.154588, 0.987471,
		0.000977, -0.987971, -0.154635,
		0.999497, -0.003936, 0.031459,
		31.419884, 41.058891, 25.979567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926743, 40.454716, 26.233963>,  <30.720236, 41.061649, 25.957546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926743, 40.454716, 26.233963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217104, 40.720776, 26.303980>,  <31.391321, 40.880413, 26.345989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217104, 40.720776, 26.303980>,  <30.926743, 40.454716, 26.233963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217104, 40.720776, 26.303980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090822, -0.344964, 0.934211,
		0.681775, -0.662248, -0.310821,
		0.725902, 0.665152, 0.175041,
		31.434875, 40.920322, 26.356493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357737, 40.119835, 26.715683>,  <30.926743, 40.454716, 26.233963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357737, 40.119835, 26.715683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462826, 40.504463, 26.747557>,  <31.525879, 40.735241, 26.766680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462826, 40.504463, 26.747557>,  <31.357737, 40.119835, 26.715683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462826, 40.504463, 26.747557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257487, -0.149460, 0.954653,
		0.929880, -0.230292, -0.286860,
		0.262723, 0.961575, 0.079682,
		31.541643, 40.792934, 26.771461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945971, 40.141285, 27.172541>,  <31.357737, 40.119835, 26.715683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945971, 40.141285, 27.172541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769962, 40.500187, 27.158072>,  <31.664358, 40.715530, 27.149389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769962, 40.500187, 27.158072>,  <31.945971, 40.141285, 27.172541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769962, 40.500187, 27.158072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181532, 0.128331, 0.974976,
		0.879447, 0.422443, -0.219350,
		-0.440021, 0.897259, -0.036174,
		31.637957, 40.769363, 27.147219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397636, 40.656422, 27.531473>,  <31.945971, 40.141285, 27.172541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397636, 40.656422, 27.531473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026806, 40.806297, 27.536127>,  <31.804308, 40.896221, 27.538919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026806, 40.806297, 27.536127>,  <32.397636, 40.656422, 27.531473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026806, 40.806297, 27.536127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106290, 0.232979, 0.966656,
		0.359485, 0.897402, -0.255815,
		-0.927078, 0.374688, 0.011633,
		31.748682, 40.918705, 27.539618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474113, 41.142826, 27.970045>,  <32.397636, 40.656422, 27.531473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474113, 41.142826, 27.970045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074760, 41.120262, 27.972805>,  <31.835148, 41.106724, 27.974461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074760, 41.120262, 27.972805>,  <32.474113, 41.142826, 27.970045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074760, 41.120262, 27.972805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006585, 0.235432, 0.971869,
		-0.056445, 0.970253, -0.235423,
		-0.998384, -0.056407, 0.006899,
		31.775246, 41.103340, 27.974874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203327, 41.787292, 28.295280>,  <32.474113, 41.142826, 27.970045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203327, 41.787292, 28.295280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911915, 41.515778, 28.332150>,  <31.737068, 41.352871, 28.354271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911915, 41.515778, 28.332150>,  <32.203327, 41.787292, 28.295280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911915, 41.515778, 28.332150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084285, 0.222355, 0.971316,
		-0.679808, 0.699864, -0.219204,
		-0.728530, -0.678784, 0.092171,
		31.693356, 41.312141, 28.359800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705738, 42.104416, 28.781569>,  <32.203327, 41.787292, 28.295280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705738, 42.104416, 28.781569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584078, 41.723412, 28.787384>,  <31.511082, 41.494808, 28.790874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584078, 41.723412, 28.787384>,  <31.705738, 42.104416, 28.781569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584078, 41.723412, 28.787384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250105, 0.094571, 0.963589,
		-0.919206, 0.289439, -0.266992,
		-0.304150, -0.952513, 0.014540,
		31.492832, 41.437656, 28.791746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974997, 41.970222, 29.157137>,  <31.705738, 42.104416, 28.781569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974997, 41.970222, 29.157137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173410, 41.622921, 29.153427>,  <31.292459, 41.414539, 29.151201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173410, 41.622921, 29.153427>,  <30.974997, 41.970222, 29.157137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173410, 41.622921, 29.153427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248368, -0.152111, 0.956648,
		-0.832022, -0.472229, -0.291099,
		0.496036, -0.868252, -0.009273,
		31.322222, 41.362446, 29.150644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583664, 41.376087, 29.388248>,  <30.974997, 41.970222, 29.157137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583664, 41.376087, 29.388248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954443, 41.245880, 29.462879>,  <31.176910, 41.167755, 29.507658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954443, 41.245880, 29.462879>,  <30.583664, 41.376087, 29.388248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954443, 41.245880, 29.462879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246454, -0.153305, 0.956953,
		-0.282900, -0.933026, -0.222330,
		0.926945, -0.325516, 0.186578,
		31.232527, 41.148224, 29.518852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498264, 40.739410, 29.619432>,  <30.583664, 41.376087, 29.388248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498264, 40.739410, 29.619432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861847, 40.847187, 29.746683>,  <31.079996, 40.911854, 29.823032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861847, 40.847187, 29.746683>,  <30.498264, 40.739410, 29.619432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861847, 40.847187, 29.746683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219602, -0.339189, 0.914727,
		0.354366, -0.901307, -0.249138,
		0.908955, 0.269437, 0.318126,
		31.134533, 40.928017, 29.842121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674223, 40.176476, 30.075735>,  <30.498264, 40.739410, 29.619432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674223, 40.176476, 30.075735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908249, 40.489418, 30.161165>,  <31.048664, 40.677185, 30.212423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908249, 40.489418, 30.161165>,  <30.674223, 40.176476, 30.075735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908249, 40.489418, 30.161165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067180, -0.215693, 0.974148,
		0.808198, -0.584289, -0.073636,
		0.585067, 0.782357, 0.213576,
		31.083769, 40.724125, 30.225239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017899, 39.924526, 30.642040>,  <30.674223, 40.176476, 30.075735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017899, 39.924526, 30.642040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074018, 40.320530, 30.647766>,  <31.107691, 40.558132, 30.651201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074018, 40.320530, 30.647766>,  <31.017899, 39.924526, 30.642040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074018, 40.320530, 30.647766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047073, -0.007774, 0.998861,
		0.988990, -0.140812, 0.045512,
		0.140298, 0.990006, 0.014317,
		31.116108, 40.617531, 30.652061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356501, 39.984848, 31.202459>,  <31.017899, 39.924526, 30.642040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356501, 39.984848, 31.202459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213896, 40.351101, 31.128139>,  <31.128332, 40.570850, 31.083548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213896, 40.351101, 31.128139>,  <31.356501, 39.984848, 31.202459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213896, 40.351101, 31.128139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326341, 0.064304, 0.943062,
		0.875443, 0.396847, 0.275882,
		-0.356512, 0.915629, -0.185802,
		31.106943, 40.625790, 31.072399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729214, 40.427692, 31.639318>,  <31.356501, 39.984848, 31.202459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729214, 40.427692, 31.639318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379126, 40.603691, 31.558926>,  <31.169073, 40.709290, 31.510691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379126, 40.603691, 31.558926>,  <31.729214, 40.427692, 31.639318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379126, 40.603691, 31.558926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206065, 0.036766, 0.977847,
		0.437636, 0.897248, 0.058489,
		-0.875221, 0.439993, -0.200982,
		31.116560, 40.735687, 31.498631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353489, 40.015614, 31.817913>,  <31.729214, 40.427692, 31.639318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353489, 40.015614, 31.817913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709343, 40.089417, 31.985004>,  <32.922855, 40.133698, 32.085258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709343, 40.089417, 31.985004>,  <32.353489, 40.015614, 31.817913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709343, 40.089417, 31.985004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312780, 0.420302, -0.851772,
		-0.332732, 0.888427, 0.316207,
		0.889639, 0.184509, 0.417730,
		32.976234, 40.144768, 32.110325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551350, 40.698963, 31.763138>,  <32.353489, 40.015614, 31.817913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551350, 40.698963, 31.763138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898499, 40.503212, 31.797331>,  <33.106789, 40.385761, 31.817846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898499, 40.503212, 31.797331>,  <32.551350, 40.698963, 31.763138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898499, 40.503212, 31.797331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301959, 0.383001, -0.873001,
		0.394491, 0.783464, 0.480168,
		0.867869, -0.489382, 0.085483,
		33.158859, 40.356396, 31.822975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184219, 41.164055, 31.649597>,  <32.551350, 40.698963, 31.763138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184219, 41.164055, 31.649597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286228, 40.787582, 31.560930>,  <33.347435, 40.561699, 31.507730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286228, 40.787582, 31.560930>,  <33.184219, 41.164055, 31.649597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286228, 40.787582, 31.560930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471439, 0.321180, -0.821333,
		0.844220, 0.104957, 0.525619,
		0.255023, -0.941184, -0.221666,
		33.362736, 40.505226, 31.494431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826477, 41.332027, 31.423815>,  <33.184219, 41.164055, 31.649597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826477, 41.332027, 31.423815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749985, 40.955753, 31.311710>,  <33.704090, 40.729988, 31.244448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749985, 40.955753, 31.311710>,  <33.826477, 41.332027, 31.423815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749985, 40.955753, 31.311710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446500, 0.170910, -0.878310,
		0.874110, -0.293097, 0.387331,
		-0.191232, -0.940683, -0.280262,
		33.692616, 40.673550, 31.227633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466095, 41.076149, 31.179293>,  <33.826477, 41.332027, 31.423815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466095, 41.076149, 31.179293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192944, 40.834480, 31.015022>,  <34.029053, 40.689480, 30.916460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192944, 40.834480, 31.015022>,  <34.466095, 41.076149, 31.179293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192944, 40.834480, 31.015022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419095, 0.136456, -0.897630,
		0.598362, -0.785083, 0.160023,
		-0.682878, -0.604172, -0.410674,
		33.988079, 40.653229, 30.891819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800369, 40.590153, 30.583431>,  <34.466095, 41.076149, 31.179293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800369, 40.590153, 30.583431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410046, 40.562180, 30.500584>,  <34.175850, 40.545395, 30.450874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410046, 40.562180, 30.500584>,  <34.800369, 40.590153, 30.583431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410046, 40.562180, 30.500584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205990, 0.023056, -0.978282,
		0.073195, -0.997285, -0.008091,
		-0.975813, -0.069939, -0.207119,
		34.117302, 40.541199, 30.438448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803452, 40.078205, 30.099957>,  <34.800369, 40.590153, 30.583431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803452, 40.078205, 30.099957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461109, 40.279236, 30.051094>,  <34.255703, 40.399857, 30.021776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461109, 40.279236, 30.051094>,  <34.803452, 40.078205, 30.099957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461109, 40.279236, 30.051094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161541, 0.035379, -0.986232,
		-0.491339, -0.863807, -0.111467,
		-0.855857, 0.502580, -0.122157,
		34.204353, 40.430008, 30.014446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318584, 39.683735, 29.602575>,  <34.803452, 40.078205, 30.099957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318584, 39.683735, 29.602575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212509, 40.069408, 29.600256>,  <34.148865, 40.300812, 29.598864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212509, 40.069408, 29.600256>,  <34.318584, 39.683735, 29.602575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212509, 40.069408, 29.600256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055694, 0.009313, -0.998404,
		-0.962588, -0.265084, -0.056169,
		-0.265184, 0.964180, -0.005799,
		34.132954, 40.358662, 29.598516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825775, 39.743210, 29.088097>,  <34.318584, 39.683735, 29.602575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825775, 39.743210, 29.088097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931755, 40.125370, 29.140272>,  <33.995342, 40.354664, 29.171577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931755, 40.125370, 29.140272>,  <33.825775, 39.743210, 29.088097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931755, 40.125370, 29.140272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124486, 0.100252, -0.987144,
		-0.956192, 0.277784, -0.092371,
		0.264953, 0.955398, 0.130441,
		34.011242, 40.411991, 29.179405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525951, 40.050304, 28.567591>,  <33.825775, 39.743210, 29.088097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525951, 40.050304, 28.567591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789455, 40.332150, 28.673088>,  <33.947559, 40.501255, 28.736387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789455, 40.332150, 28.673088>,  <33.525951, 40.050304, 28.567591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789455, 40.332150, 28.673088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057660, 0.302246, -0.951484,
		-0.750141, 0.642006, 0.158479,
		0.658759, 0.704610, 0.263745,
		33.987083, 40.543533, 28.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386059, 40.645390, 28.065912>,  <33.525951, 40.050304, 28.567591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386059, 40.645390, 28.065912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747795, 40.725754, 28.216539>,  <33.964836, 40.773972, 28.306915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747795, 40.725754, 28.216539>,  <33.386059, 40.645390, 28.065912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747795, 40.725754, 28.216539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330357, 0.229139, -0.915620,
		-0.270239, 0.952435, 0.140849,
		0.904342, 0.200906, 0.376566,
		34.019096, 40.786026, 28.329510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537041, 41.261074, 27.778111>,  <33.386059, 40.645390, 28.065912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537041, 41.261074, 27.778111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895260, 41.139393, 27.908010>,  <34.110191, 41.066383, 27.985950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895260, 41.139393, 27.908010>,  <33.537041, 41.261074, 27.778111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895260, 41.139393, 27.908010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366251, 0.089445, -0.926207,
		0.252709, 0.948398, 0.191517,
		0.895543, -0.304205, 0.324748,
		34.163921, 41.048130, 28.005436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033192, 41.806568, 27.739378>,  <33.537041, 41.261074, 27.778111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033192, 41.806568, 27.739378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193367, 41.443291, 27.690649>,  <34.289471, 41.225327, 27.661411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193367, 41.443291, 27.690649>,  <34.033192, 41.806568, 27.739378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193367, 41.443291, 27.690649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293485, 0.253060, -0.921861,
		0.868053, 0.333394, 0.367875,
		0.400437, -0.908190, -0.121823,
		34.313499, 41.170834, 27.654102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550900, 41.892181, 27.277172>,  <34.033192, 41.806568, 27.739378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550900, 41.892181, 27.277172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547413, 41.492355, 27.265965>,  <34.545322, 41.252460, 27.259239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547413, 41.492355, 27.265965>,  <34.550900, 41.892181, 27.277172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547413, 41.492355, 27.265965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241384, 0.025089, -0.970105,
		0.970390, -0.015221, 0.241062,
		-0.008718, -0.999569, -0.028020,
		34.544796, 41.192486, 27.257559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113953, 41.766907, 26.819683>,  <34.550900, 41.892181, 27.277172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113953, 41.766907, 26.819683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915401, 41.419689, 26.823936>,  <34.796272, 41.211361, 26.826488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915401, 41.419689, 26.823936>,  <35.113953, 41.766907, 26.819683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915401, 41.419689, 26.823936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183689, -0.116994, -0.975997,
		0.848451, -0.482509, 0.217523,
		-0.496377, -0.868042, 0.010632,
		34.766487, 41.159275, 26.827126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458542, 41.364250, 26.435184>,  <35.113953, 41.766907, 26.819683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458542, 41.364250, 26.435184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112312, 41.164097, 26.443176>,  <34.904575, 41.044006, 26.447971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112312, 41.164097, 26.443176>,  <35.458542, 41.364250, 26.435184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112312, 41.164097, 26.443176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140531, -0.281000, -0.949363,
		0.480658, -0.818937, 0.313545,
		-0.865574, -0.500382, 0.019979,
		34.852638, 41.013981, 26.449169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530731, 40.644985, 26.137657>,  <35.458542, 41.364250, 26.435184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530731, 40.644985, 26.137657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149242, 40.753426, 26.085640>,  <34.920349, 40.818489, 26.054430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149242, 40.753426, 26.085640>,  <35.530731, 40.644985, 26.137657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149242, 40.753426, 26.085640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036541, -0.324796, -0.945078,
		-0.298452, -0.906096, 0.299860,
		-0.953725, 0.271103, -0.130046,
		34.863125, 40.834755, 26.046627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192585, 40.102985, 25.817741>,  <35.530731, 40.644985, 26.137657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192585, 40.102985, 25.817741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992928, 40.435078, 25.718487>,  <34.873135, 40.634335, 25.658934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992928, 40.435078, 25.718487>,  <35.192585, 40.102985, 25.817741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992928, 40.435078, 25.718487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053707, -0.315452, -0.947421,
		-0.864856, -0.459568, 0.202044,
		-0.499139, 0.830234, -0.248138,
		34.843185, 40.684147, 25.644045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690372, 39.918888, 25.272038>,  <35.192585, 40.102985, 25.817741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690372, 39.918888, 25.272038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683002, 40.318775, 25.278044>,  <34.678581, 40.558708, 25.281647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683002, 40.318775, 25.278044>,  <34.690372, 39.918888, 25.272038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683002, 40.318775, 25.278044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093250, 0.013234, -0.995555,
		-0.995472, -0.019739, 0.092980,
		-0.018420, 0.999718, 0.015015,
		34.677475, 40.618690, 25.282549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180862, 40.069809, 24.721724>,  <34.690372, 39.918888, 25.272038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180862, 40.069809, 24.721724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388241, 40.399963, 24.811113>,  <34.512669, 40.598057, 24.864748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388241, 40.399963, 24.811113>,  <34.180862, 40.069809, 24.721724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388241, 40.399963, 24.811113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038532, 0.238526, -0.970371,
		-0.854240, 0.511699, 0.091860,
		0.518449, 0.825390, 0.223476,
		34.543774, 40.647579, 24.878157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745762, 40.583187, 24.417871>,  <34.180862, 40.069809, 24.721724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745762, 40.583187, 24.417871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119522, 40.718044, 24.463871>,  <34.343781, 40.798958, 24.491470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119522, 40.718044, 24.463871>,  <33.745762, 40.583187, 24.417871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119522, 40.718044, 24.463871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036884, 0.229530, -0.972602,
		-0.354301, 0.913045, 0.202038,
		0.934404, 0.337142, 0.115000,
		34.399845, 40.819187, 24.498371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820389, 41.160248, 23.920284>,  <33.745762, 40.583187, 24.417871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820389, 41.160248, 23.920284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191643, 41.025509, 23.983664>,  <34.414394, 40.944664, 24.021690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191643, 41.025509, 23.983664>,  <33.820389, 41.160248, 23.920284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191643, 41.025509, 23.983664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270255, 0.317016, -0.909100,
		0.256000, 0.886585, 0.385268,
		0.928131, -0.336850, 0.158448,
		34.470081, 40.924454, 24.031199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242535, 41.645218, 23.531168>,  <33.820389, 41.160248, 23.920284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242535, 41.645218, 23.531168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456757, 41.311031, 23.580463>,  <34.585289, 41.110519, 23.610041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456757, 41.311031, 23.580463>,  <34.242535, 41.645218, 23.531168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456757, 41.311031, 23.580463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271267, 0.031988, -0.961972,
		0.799749, 0.548617, 0.243765,
		0.535552, -0.835462, 0.123239,
		34.617424, 41.060394, 23.617435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827599, 41.714424, 23.112490>,  <34.242535, 41.645218, 23.531168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827599, 41.714424, 23.112490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831100, 41.323528, 23.197268>,  <34.833202, 41.088989, 23.248135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831100, 41.323528, 23.197268>,  <34.827599, 41.714424, 23.112490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831100, 41.323528, 23.197268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296078, -0.199915, -0.934009,
		0.955124, 0.070926, 0.287590,
		0.008752, -0.977243, 0.211944,
		34.833725, 41.030357, 23.260851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439983, 41.524216, 23.012596>,  <34.827599, 41.714424, 23.112490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439983, 41.524216, 23.012596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231335, 41.185345, 22.972193>,  <35.106148, 40.982021, 22.947950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231335, 41.185345, 22.972193>,  <35.439983, 41.524216, 23.012596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231335, 41.185345, 22.972193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437814, -0.164175, -0.883949,
		0.732280, -0.505305, 0.456544,
		-0.521617, -0.847179, -0.101008,
		35.074848, 40.931190, 22.941891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855003, 40.911362, 22.879715>,  <35.439983, 41.524216, 23.012596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855003, 40.911362, 22.879715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500492, 40.807018, 22.726637>,  <35.287785, 40.744411, 22.634790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500492, 40.807018, 22.726637>,  <35.855003, 40.911362, 22.879715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500492, 40.807018, 22.726637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439468, -0.212853, -0.872675,
		0.146189, -0.941618, 0.303288,
		-0.886283, -0.260861, -0.382694,
		35.234608, 40.728760, 22.611828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973705, 40.336300, 22.540718>,  <35.855003, 40.911362, 22.879715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973705, 40.336300, 22.540718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632271, 40.461163, 22.373888>,  <35.427410, 40.536079, 22.273790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632271, 40.461163, 22.373888>,  <35.973705, 40.336300, 22.540718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632271, 40.461163, 22.373888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376234, -0.184382, -0.907993,
		-0.360340, -0.931965, 0.039940,
		-0.853582, 0.312160, -0.417077,
		35.376198, 40.554810, 22.248764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833744, 39.798416, 22.092121>,  <35.973705, 40.336300, 22.540718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833744, 39.798416, 22.092121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625679, 40.125687, 21.994129>,  <35.500839, 40.322048, 21.935333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625679, 40.125687, 21.994129>,  <35.833744, 39.798416, 22.092121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625679, 40.125687, 21.994129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245259, -0.131661, -0.960476,
		-0.818092, -0.559690, -0.132180,
		-0.520166, 0.818176, -0.244980,
		35.469627, 40.371140, 21.920635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317730, 39.610641, 21.529217>,  <35.833744, 39.798416, 22.092121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317730, 39.610641, 21.529217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382725, 40.002201, 21.479645>,  <35.421722, 40.237137, 21.449902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382725, 40.002201, 21.479645>,  <35.317730, 39.610641, 21.529217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382725, 40.002201, 21.479645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110244, -0.142826, -0.983589,
		-0.980532, 0.146161, -0.131125,
		0.162491, 0.978896, -0.123932,
		35.431473, 40.295872, 21.442465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031685, 39.721661, 20.945822>,  <35.317730, 39.610641, 21.529217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031685, 39.721661, 20.945822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265305, 40.044594, 20.979528>,  <35.405476, 40.238354, 20.999752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265305, 40.044594, 20.979528>,  <35.031685, 39.721661, 20.945822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265305, 40.044594, 20.979528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228412, -0.063842, -0.971469,
		-0.778916, 0.586637, -0.221691,
		0.584053, 0.807329, 0.084268,
		35.440521, 40.286793, 21.004808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903557, 40.152260, 20.329247>,  <35.031685, 39.721661, 20.945822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903557, 40.152260, 20.329247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244846, 40.309555, 20.466280>,  <35.449619, 40.403934, 20.548500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244846, 40.309555, 20.466280>,  <34.903557, 40.152260, 20.329247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244846, 40.309555, 20.466280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310229, 0.145348, -0.939485,
		-0.419238, 0.907874, 0.002020,
		0.853228, 0.393241, 0.342584,
		35.500816, 40.427528, 20.569056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023899, 40.663857, 19.815323>,  <34.903557, 40.152260, 20.329247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023899, 40.663857, 19.815323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373600, 40.606270, 20.000776>,  <35.583420, 40.571716, 20.112049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373600, 40.606270, 20.000776>,  <35.023899, 40.663857, 19.815323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373600, 40.606270, 20.000776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483365, 0.169209, -0.858910,
		0.045205, 0.975008, 0.217521,
		0.874251, -0.143969, 0.463636,
		35.635876, 40.563080, 20.139868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435448, 41.052608, 19.443928>,  <35.023899, 40.663857, 19.815323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435448, 41.052608, 19.443928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697990, 40.807827, 19.620428>,  <35.855518, 40.660957, 19.726328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697990, 40.807827, 19.620428>,  <35.435448, 41.052608, 19.443928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697990, 40.807827, 19.620428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509292, -0.072103, -0.857568,
		0.556607, 0.787600, 0.264337,
		0.656361, -0.611954, 0.441252,
		35.894897, 40.624241, 19.752804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088528, 41.297401, 19.196842>,  <35.435448, 41.052608, 19.443928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088528, 41.297401, 19.196842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158310, 40.925331, 19.326052>,  <36.200180, 40.702091, 19.403578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158310, 40.925331, 19.326052>,  <36.088528, 41.297401, 19.196842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158310, 40.925331, 19.326052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676036, -0.125369, -0.726125,
		0.715919, 0.345052, 0.606959,
		0.174457, -0.930173, 0.323022,
		36.210648, 40.646278, 19.422958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926949, 41.271847, 19.260815>,  <36.088528, 41.297401, 19.196842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926949, 41.271847, 19.260815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807407, 40.890255, 19.250883>,  <36.735683, 40.661301, 19.244925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807407, 40.890255, 19.250883>,  <36.926949, 41.271847, 19.260815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807407, 40.890255, 19.250883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698092, -0.200803, -0.687274,
		0.650658, -0.222724, 0.725974,
		-0.298850, -0.953977, -0.024828,
		36.717751, 40.604061, 19.243435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542816, 40.854973, 19.415394>,  <36.926949, 41.271847, 19.260815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542816, 40.854973, 19.415394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287846, 40.621048, 19.214724>,  <37.134865, 40.480694, 19.094322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287846, 40.621048, 19.214724>,  <37.542816, 40.854973, 19.415394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287846, 40.621048, 19.214724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740630, -0.285477, -0.608252,
		0.212498, -0.759272, 0.615103,
		-0.637426, -0.584816, -0.501676,
		37.096619, 40.445602, 19.064220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935196, 40.391964, 19.233831>,  <37.542816, 40.854973, 19.415394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935196, 40.391964, 19.233831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627037, 40.334576, 18.985346>,  <37.442142, 40.300140, 18.836254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627037, 40.334576, 18.985346>,  <37.935196, 40.391964, 19.233831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627037, 40.334576, 18.985346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637423, -0.194141, -0.745655,
		-0.013621, -0.970425, 0.241019,
		-0.770394, -0.143475, -0.621215,
		37.395920, 40.291534, 18.798981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028034, 39.764870, 18.968298>,  <37.935196, 40.391964, 19.233831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028034, 39.764870, 18.968298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835587, 39.972992, 18.686075>,  <37.720119, 40.097866, 18.516743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835587, 39.972992, 18.686075>,  <38.028034, 39.764870, 18.968298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835587, 39.972992, 18.686075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563535, -0.432952, -0.703549,
		-0.671532, -0.736095, -0.084910,
		-0.481117, 0.520305, -0.705556,
		37.691250, 40.129082, 18.474409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952641, 39.655628, 18.314341>,  <38.028034, 39.764870, 18.968298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952641, 39.655628, 18.314341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133930, 39.302509, 18.264944>,  <38.242706, 39.090637, 18.235306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133930, 39.302509, 18.264944>,  <37.952641, 39.655628, 18.314341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133930, 39.302509, 18.264944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092301, -0.091312, 0.991535,
		-0.886604, -0.460789, 0.040098,
		0.453227, -0.882800, -0.123489,
		38.269897, 39.037670, 18.227898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501305, 39.026825, 18.614035>,  <37.952641, 39.655628, 18.314341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501305, 39.026825, 18.614035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893154, 38.946789, 18.620939>,  <38.128265, 38.898766, 18.625082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893154, 38.946789, 18.620939>,  <37.501305, 39.026825, 18.614035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893154, 38.946789, 18.620939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047332, -0.146501, 0.988078,
		-0.195186, -0.968761, -0.152987,
		0.979623, -0.200100, 0.017259,
		38.187042, 38.886761, 18.626118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538651, 38.402485, 19.003235>,  <37.501305, 39.026825, 18.614035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538651, 38.402485, 19.003235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903606, 38.562637, 19.037256>,  <38.122581, 38.658730, 19.057669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903606, 38.562637, 19.037256>,  <37.538651, 38.402485, 19.003235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903606, 38.562637, 19.037256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037909, -0.124244, 0.991527,
		0.407560, -0.907885, -0.098181,
		0.912391, 0.400385, 0.085054,
		38.177322, 38.682755, 19.062773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731194, 37.998112, 19.541250>,  <37.538651, 38.402485, 19.003235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731194, 37.998112, 19.541250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960388, 38.324787, 19.513802>,  <38.097904, 38.520794, 19.497332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960388, 38.324787, 19.513802>,  <37.731194, 37.998112, 19.541250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960388, 38.324787, 19.513802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098657, 0.014389, 0.995017,
		0.813606, -0.576900, -0.072327,
		0.572985, 0.816688, -0.068623,
		38.132282, 38.569794, 19.493216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279846, 37.871418, 19.867805>,  <37.731194, 37.998112, 19.541250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279846, 37.871418, 19.867805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282978, 38.271225, 19.879827>,  <38.284855, 38.511108, 19.887041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282978, 38.271225, 19.879827>,  <38.279846, 37.871418, 19.867805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282978, 38.271225, 19.879827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265835, -0.031054, 0.963518,
		0.963987, 0.000449, -0.265950,
		0.007826, 0.999518, 0.030055,
		38.285324, 38.571079, 19.888844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762863, 38.072742, 20.287783>,  <38.279846, 37.871418, 19.867805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762863, 38.072742, 20.287783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544628, 38.407887, 20.280668>,  <38.413685, 38.608974, 20.276400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544628, 38.407887, 20.280668>,  <38.762863, 38.072742, 20.287783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544628, 38.407887, 20.280668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135366, 0.109052, 0.984776,
		0.827048, 0.534876, -0.172916,
		-0.545590, 0.837864, -0.017787,
		38.380951, 38.659245, 20.275331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209328, 38.562511, 20.642702>,  <38.762863, 38.072742, 20.287783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209328, 38.562511, 20.642702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823990, 38.668720, 20.657984>,  <38.592785, 38.732445, 20.667152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823990, 38.668720, 20.657984>,  <39.209328, 38.562511, 20.642702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823990, 38.668720, 20.657984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052818, 0.048123, 0.997444,
		0.263002, 0.962904, -0.060383,
		-0.963348, 0.265520, 0.038202,
		38.534985, 38.748375, 20.669445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096985, 38.943424, 21.312250>,  <39.209328, 38.562511, 20.642702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096985, 38.943424, 21.312250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709660, 38.884907, 21.231281>,  <38.477264, 38.849796, 21.182699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709660, 38.884907, 21.231281>,  <39.096985, 38.943424, 21.312250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709660, 38.884907, 21.231281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237561, 0.289360, 0.927273,
		-0.077079, 0.945976, -0.314943,
		-0.968310, -0.146292, -0.202424,
		38.419167, 38.841019, 21.170555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712845, 39.503746, 21.622921>,  <39.096985, 38.943424, 21.312250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712845, 39.503746, 21.622921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435516, 39.223118, 21.557077>,  <38.269119, 39.054741, 21.517570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435516, 39.223118, 21.557077>,  <38.712845, 39.503746, 21.622921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435516, 39.223118, 21.557077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344261, 0.121788, 0.930942,
		-0.633078, 0.702112, -0.325963,
		-0.693324, -0.701574, -0.164608,
		38.227520, 39.012646, 21.507694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041168, 39.790627, 21.785250>,  <38.712845, 39.503746, 21.622921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041168, 39.790627, 21.785250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016235, 39.392063, 21.808189>,  <38.001274, 39.152927, 21.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016235, 39.392063, 21.808189>,  <38.041168, 39.790627, 21.785250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016235, 39.392063, 21.808189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336985, 0.075098, 0.938510,
		-0.939445, 0.039173, -0.340455,
		-0.062332, -0.996406, 0.057350,
		37.997536, 39.093140, 21.825394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408054, 39.644341, 22.002117>,  <38.041168, 39.790627, 21.785250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408054, 39.644341, 22.002117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585762, 39.298954, 22.097660>,  <37.692387, 39.091721, 22.154985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585762, 39.298954, 22.097660>,  <37.408054, 39.644341, 22.002117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585762, 39.298954, 22.097660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470957, 0.001713, 0.882154,
		-0.762119, -0.504406, -0.405894,
		0.444268, -0.863465, 0.238859,
		37.719044, 39.039913, 22.169317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880119, 39.151588, 22.381065>,  <37.408054, 39.644341, 22.002117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880119, 39.151588, 22.381065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247375, 39.027054, 22.479113>,  <37.467731, 38.952332, 22.537941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247375, 39.027054, 22.479113>,  <36.880119, 39.151588, 22.381065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247375, 39.027054, 22.479113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297483, -0.132953, 0.945424,
		-0.261756, -0.940953, -0.214687,
		0.918144, -0.311336, 0.245116,
		37.522820, 38.933655, 22.552647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797813, 38.499432, 22.823143>,  <36.880119, 39.151588, 22.381065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797813, 38.499432, 22.823143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157391, 38.652031, 22.909273>,  <37.373135, 38.743591, 22.960951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157391, 38.652031, 22.909273>,  <36.797813, 38.499432, 22.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157391, 38.652031, 22.909273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164326, -0.161984, 0.973015,
		0.406088, -0.910064, -0.082923,
		0.898938, 0.381503, 0.215327,
		37.427071, 38.766483, 22.973871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909485, 38.128922, 23.373566>,  <36.797813, 38.499432, 22.823143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909485, 38.128922, 23.373566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161133, 38.438900, 23.397768>,  <37.312122, 38.624889, 23.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161133, 38.438900, 23.397768>,  <36.909485, 38.128922, 23.373566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161133, 38.438900, 23.397768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251971, 0.129680, 0.959007,
		0.735336, -0.618575, 0.276850,
		0.629120, 0.774950, 0.060505,
		37.349869, 38.671387, 23.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356503, 38.038433, 24.020405>,  <36.909485, 38.128922, 23.373566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356503, 38.038433, 24.020405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387463, 38.425354, 23.923800>,  <37.406040, 38.657509, 23.865837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387463, 38.425354, 23.923800>,  <37.356503, 38.038433, 24.020405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387463, 38.425354, 23.923800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196681, 0.252294, 0.947451,
		0.977408, -0.025832, 0.209778,
		0.077400, 0.967306, -0.241514,
		37.410683, 38.715546, 23.851345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700367, 38.289394, 24.539082>,  <37.356503, 38.038433, 24.020405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700367, 38.289394, 24.539082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535229, 38.614388, 24.374439>,  <37.436146, 38.809383, 24.275654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535229, 38.614388, 24.374439>,  <37.700367, 38.289394, 24.539082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535229, 38.614388, 24.374439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180436, 0.370001, 0.911341,
		0.892747, 0.450515, -0.006153,
		-0.412850, 0.812487, -0.411606,
		37.411373, 38.858135, 24.250957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908222, 38.935070, 24.964701>,  <37.700367, 38.289394, 24.539082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908222, 38.935070, 24.964701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575733, 39.064194, 24.783653>,  <37.376240, 39.141666, 24.675024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575733, 39.064194, 24.783653>,  <37.908222, 38.935070, 24.964701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575733, 39.064194, 24.783653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394795, 0.230465, 0.889394,
		0.391414, 0.917977, -0.064126,
		-0.831223, 0.322805, -0.452621,
		37.326366, 39.161034, 24.647867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777870, 39.531693, 25.304049>,  <37.908222, 38.935070, 24.964701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777870, 39.531693, 25.304049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439713, 39.423229, 25.119970>,  <37.236816, 39.358150, 25.009523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439713, 39.423229, 25.119970>,  <37.777870, 39.531693, 25.304049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439713, 39.423229, 25.119970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524716, 0.260456, 0.810454,
		-0.099903, 0.926625, -0.362470,
		-0.845395, -0.271160, -0.460194,
		37.186092, 39.341881, 24.981913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344566, 40.086151, 25.410732>,  <37.777870, 39.531693, 25.304049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344566, 40.086151, 25.410732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105312, 39.774490, 25.335741>,  <36.961758, 39.587494, 25.290747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105312, 39.774490, 25.335741>,  <37.344566, 40.086151, 25.410732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105312, 39.774490, 25.335741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449807, 0.132791, 0.883199,
		-0.663254, 0.612604, -0.429896,
		-0.598137, -0.779155, -0.187479,
		36.925873, 39.540745, 25.279497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771965, 40.284664, 25.608734>,  <37.344566, 40.086151, 25.410732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771965, 40.284664, 25.608734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693985, 39.892590, 25.594749>,  <36.647198, 39.657345, 25.586359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693985, 39.892590, 25.594749>,  <36.771965, 40.284664, 25.608734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693985, 39.892590, 25.594749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505852, 0.069943, 0.859780,
		-0.840303, 0.185298, -0.509466,
		-0.194949, -0.980190, -0.034960,
		36.635502, 39.598534, 25.584261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146072, 40.233944, 25.937019>,  <36.771965, 40.284664, 25.608734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146072, 40.233944, 25.937019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311230, 39.869701, 25.944105>,  <36.410324, 39.651157, 25.948357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311230, 39.869701, 25.944105>,  <36.146072, 40.233944, 25.937019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311230, 39.869701, 25.944105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260935, -0.099638, 0.960200,
		-0.872601, -0.401082, -0.278749,
		0.412893, -0.910607, 0.017713,
		36.435097, 39.596519, 25.949419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665142, 39.830391, 26.365099>,  <36.146072, 40.233944, 25.937019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665142, 39.830391, 26.365099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000683, 39.613205, 26.349501>,  <36.202007, 39.482891, 26.340141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000683, 39.613205, 26.349501>,  <35.665142, 39.830391, 26.365099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000683, 39.613205, 26.349501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146045, -0.293480, 0.944743,
		-0.524410, -0.786801, -0.325483,
		0.838848, -0.542968, -0.038996,
		36.252338, 39.450314, 26.337803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513973, 39.166637, 26.727236>,  <35.665142, 39.830391, 26.365099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513973, 39.166637, 26.727236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912716, 39.197063, 26.718435>,  <36.151962, 39.215321, 26.713154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912716, 39.197063, 26.718435>,  <35.513973, 39.166637, 26.727236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912716, 39.197063, 26.718435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043157, -0.288936, 0.956375,
		0.066392, -0.954321, -0.291312,
		0.996860, 0.076068, -0.022003,
		36.211773, 39.219883, 26.711834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769222, 38.482994, 26.977169>,  <35.513973, 39.166637, 26.727236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769222, 38.482994, 26.977169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036839, 38.776249, 27.025993>,  <36.197407, 38.952202, 27.055288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036839, 38.776249, 27.025993>,  <35.769222, 38.482994, 26.977169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036839, 38.776249, 27.025993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126868, -0.049165, 0.990701,
		0.732320, -0.678302, 0.060118,
		0.669038, 0.733137, 0.122059,
		36.237549, 38.996189, 27.062611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167988, 38.196484, 27.438553>,  <35.769222, 38.482994, 26.977169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167988, 38.196484, 27.438553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254917, 38.586861, 27.445625>,  <36.307076, 38.821087, 27.449869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254917, 38.586861, 27.445625>,  <36.167988, 38.196484, 27.438553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254917, 38.586861, 27.445625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019089, -0.013861, 0.999722,
		0.975914, -0.217597, 0.015617,
		0.217320, 0.975940, 0.017681,
		36.320114, 38.879642, 27.450930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707039, 38.222622, 27.880653>,  <36.167988, 38.196484, 27.438553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707039, 38.222622, 27.880653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587177, 38.603455, 27.856153>,  <36.515259, 38.831955, 27.841454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587177, 38.603455, 27.856153>,  <36.707039, 38.222622, 27.880653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587177, 38.603455, 27.856153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267404, 0.145440, 0.952545,
		0.915807, 0.269056, -0.298172,
		-0.299654, 0.952080, -0.061249,
		36.497280, 38.889080, 27.837778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252884, 38.647228, 28.075684>,  <36.707039, 38.222622, 27.880653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252884, 38.647228, 28.075684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914867, 38.845894, 28.154900>,  <36.712055, 38.965096, 28.202429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914867, 38.845894, 28.154900>,  <37.252884, 38.647228, 28.075684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914867, 38.845894, 28.154900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277777, 0.091311, 0.956296,
		0.456879, 0.863124, -0.215124,
		-0.845046, 0.496668, 0.198038,
		36.661354, 38.994896, 28.214312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516083, 39.065475, 28.501648>,  <37.252884, 38.647228, 28.075684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516083, 39.065475, 28.501648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123783, 39.087036, 28.576721>,  <36.888405, 39.099972, 28.621765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123783, 39.087036, 28.576721>,  <37.516083, 39.065475, 28.501648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123783, 39.087036, 28.576721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192089, 0.093541, 0.976909,
		0.035101, 0.994155, -0.102094,
		-0.980750, 0.053902, 0.187683,
		36.829559, 39.103207, 28.633026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331505, 39.653145, 28.955124>,  <37.516083, 39.065475, 28.501648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331505, 39.653145, 28.955124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027317, 39.398365, 29.005693>,  <36.844807, 39.245495, 29.036036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027317, 39.398365, 29.005693>,  <37.331505, 39.653145, 28.955124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027317, 39.398365, 29.005693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018449, 0.173413, 0.984676,
		-0.649114, 0.751146, -0.120124,
		-0.760467, -0.636951, 0.126422,
		36.799175, 39.207279, 29.043621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975864, 39.934246, 29.540289>,  <37.331505, 39.653145, 28.955124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975864, 39.934246, 29.540289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831490, 39.562183, 29.513359>,  <36.744865, 39.338947, 29.497202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831490, 39.562183, 29.513359>,  <36.975864, 39.934246, 29.540289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831490, 39.562183, 29.513359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025694, -0.062244, 0.997730,
		-0.932237, 0.361845, -0.001434,
		-0.360934, -0.930158, -0.067323,
		36.723209, 39.283134, 29.493162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347759, 39.851532, 29.939884>,  <36.975864, 39.934246, 29.540289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347759, 39.851532, 29.939884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492825, 39.480099, 29.908365>,  <36.579865, 39.257240, 29.889454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492825, 39.480099, 29.908365>,  <36.347759, 39.851532, 29.939884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492825, 39.480099, 29.908365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109615, -0.126471, 0.985895,
		-0.925451, -0.348912, -0.147653,
		0.362665, -0.928582, -0.078797,
		36.601624, 39.201523, 29.884726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899643, 39.445366, 30.355171>,  <36.347759, 39.851532, 29.939884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899643, 39.445366, 30.355171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224823, 39.213551, 30.332355>,  <36.419930, 39.074463, 30.318666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224823, 39.213551, 30.332355>,  <35.899643, 39.445366, 30.355171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224823, 39.213551, 30.332355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074111, -0.200114, 0.976966,
		-0.577599, -0.789996, -0.205633,
		0.812950, -0.579535, -0.057038,
		36.468708, 39.039692, 30.315245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769787, 38.929623, 30.738445>,  <35.899643, 39.445366, 30.355171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769787, 38.929623, 30.738445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167084, 38.885082, 30.725311>,  <36.405460, 38.858356, 30.717432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167084, 38.885082, 30.725311>,  <35.769787, 38.929623, 30.738445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167084, 38.885082, 30.725311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007285, -0.342048, 0.939654,
		-0.115864, -0.933061, -0.340546,
		0.993238, -0.111353, -0.032834,
		36.465054, 38.851677, 30.715462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859116, 38.226048, 31.022036>,  <35.769787, 38.929623, 30.738445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859116, 38.226048, 31.022036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225780, 38.385788, 31.028210>,  <36.445782, 38.481632, 31.031914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225780, 38.385788, 31.028210>,  <35.859116, 38.226048, 31.022036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225780, 38.385788, 31.028210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148931, -0.377181, 0.914087,
		0.370867, -0.835614, -0.405226,
		0.916667, 0.399355, 0.015435,
		36.500782, 38.505592, 31.032841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260738, 37.698574, 31.076130>,  <35.859116, 38.226048, 31.022036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260738, 37.698574, 31.076130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455082, 38.013943, 31.227036>,  <36.571690, 38.203163, 31.317579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455082, 38.013943, 31.227036>,  <36.260738, 37.698574, 31.076130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455082, 38.013943, 31.227036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204525, -0.522209, 0.827930,
		0.849769, -0.325100, -0.414973,
		0.485863, 0.788421, 0.377266,
		36.600842, 38.250469, 31.340216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043507, 37.470402, 31.240814>,  <36.260738, 37.698574, 31.076130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043507, 37.470402, 31.240814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930981, 37.800903, 31.436022>,  <36.863464, 37.999207, 31.553146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930981, 37.800903, 31.436022>,  <37.043507, 37.470402, 31.240814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930981, 37.800903, 31.436022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219699, -0.439594, 0.870913,
		0.934127, 0.352221, -0.057862,
		-0.281318, 0.826255, 0.488019,
		36.846584, 38.048779, 31.582428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497673, 37.508751, 31.772371>,  <37.043507, 37.470402, 31.240814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497673, 37.508751, 31.772371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224979, 37.774014, 31.895956>,  <37.061363, 37.933170, 31.970106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224979, 37.774014, 31.895956>,  <37.497673, 37.508751, 31.772371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224979, 37.774014, 31.895956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191511, -0.245821, 0.950208,
		0.706087, 0.706961, 0.040583,
		-0.681736, 0.663158, 0.308962,
		37.020458, 37.972961, 31.988646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778866, 37.930473, 32.286522>,  <37.497673, 37.508751, 31.772371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778866, 37.930473, 32.286522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381329, 37.911018, 32.326351>,  <37.142807, 37.899345, 32.350250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381329, 37.911018, 32.326351>,  <37.778866, 37.930473, 32.286522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381329, 37.911018, 32.326351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106163, -0.160130, 0.981370,
		-0.031789, 0.985897, 0.164308,
		-0.993841, -0.048640, 0.099575,
		37.083176, 37.896427, 32.356224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640938, 38.290024, 32.821842>,  <37.778866, 37.930473, 32.286522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640938, 38.290024, 32.821842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315533, 38.063061, 32.770863>,  <37.120289, 37.926884, 32.740276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315533, 38.063061, 32.770863>,  <37.640938, 38.290024, 32.821842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315533, 38.063061, 32.770863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021247, -0.248002, 0.968526,
		-0.581154, 0.785204, 0.213809,
		-0.813516, -0.567405, -0.127444,
		37.071476, 37.892838, 32.732628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308681, 38.335575, 33.458149>,  <37.640938, 38.290024, 32.821842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308681, 38.335575, 33.458149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115974, 38.020176, 33.305222>,  <37.000351, 37.830936, 33.213463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115974, 38.020176, 33.305222>,  <37.308681, 38.335575, 33.458149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115974, 38.020176, 33.305222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188710, -0.332703, 0.923957,
		-0.855740, 0.517278, 0.011486,
		-0.481765, -0.788500, -0.382323,
		36.971443, 37.783627, 33.190525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643272, 38.138302, 33.828064>,  <37.308681, 38.335575, 33.458149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643272, 38.138302, 33.828064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740265, 37.799931, 33.638073>,  <36.798462, 37.596909, 33.524078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740265, 37.799931, 33.638073>,  <36.643272, 38.138302, 33.828064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740265, 37.799931, 33.638073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174534, -0.519636, 0.836370,
		-0.954327, -0.119907, -0.273648,
		0.242484, -0.845932, -0.474975,
		36.813011, 37.546150, 33.495579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094524, 37.695946, 33.898132>,  <36.643272, 38.138302, 33.828064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094524, 37.695946, 33.898132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405956, 37.466915, 33.795395>,  <36.592815, 37.329498, 33.733753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405956, 37.466915, 33.795395>,  <36.094524, 37.695946, 33.898132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405956, 37.466915, 33.795395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196684, -0.611310, 0.766561,
		-0.595924, -0.546313, -0.588571,
		0.778582, -0.572575, -0.256844,
		36.639530, 37.295143, 33.718342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804424, 37.066463, 33.946571>,  <36.094524, 37.695946, 33.898132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804424, 37.066463, 33.946571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199997, 37.007389, 33.940765>,  <36.437340, 36.971943, 33.937283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199997, 37.007389, 33.940765>,  <35.804424, 37.066463, 33.946571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199997, 37.007389, 33.940765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089805, -0.673449, 0.733759,
		-0.118140, -0.724331, -0.679255,
		0.988928, -0.147687, -0.014513,
		36.496674, 36.963081, 33.936413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803768, 36.442886, 33.694569>,  <35.804424, 37.066463, 33.946571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803768, 36.442886, 33.694569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160358, 36.495216, 33.868076>,  <36.374313, 36.526615, 33.972179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160358, 36.495216, 33.868076>,  <35.803768, 36.442886, 33.694569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160358, 36.495216, 33.868076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155273, -0.811197, 0.563782,
		0.425630, -0.569950, -0.702848,
		0.891476, 0.130829, 0.433768,
		36.427803, 36.534466, 33.998207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183239, 35.796555, 33.649136>,  <35.803768, 36.442886, 33.694569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183239, 35.796555, 33.649136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321495, 36.008572, 33.958866>,  <36.404449, 36.135784, 34.144703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321495, 36.008572, 33.958866>,  <36.183239, 35.796555, 33.649136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321495, 36.008572, 33.958866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041740, -0.833054, 0.551615,
		0.937439, -0.158339, -0.310060,
		0.345639, 0.530047, 0.774328,
		36.425186, 36.167587, 34.191166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826912, 35.348740, 34.081360>,  <36.183239, 35.796555, 33.649136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826912, 35.348740, 34.081360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701775, 35.647785, 34.315693>,  <36.626694, 35.827213, 34.456295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701775, 35.647785, 34.315693>,  <36.826912, 35.348740, 34.081360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701775, 35.647785, 34.315693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093481, -0.589567, 0.802292,
		0.945193, 0.305757, 0.114554,
		-0.312843, 0.747612, 0.585837,
		36.607922, 35.872070, 34.491444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314121, 35.353977, 34.513577>,  <36.826912, 35.348740, 34.081360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314121, 35.353977, 34.513577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001541, 35.519707, 34.700195>,  <36.813992, 35.619144, 34.812168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001541, 35.519707, 34.700195>,  <37.314121, 35.353977, 34.513577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001541, 35.519707, 34.700195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060479, -0.693902, 0.717525,
		0.621029, 0.588927, 0.517192,
		-0.781451, 0.414325, 0.466551,
		36.767105, 35.644005, 34.840160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462460, 35.464539, 35.270752>,  <37.314121, 35.353977, 34.513577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462460, 35.464539, 35.270752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064278, 35.455025, 35.233868>,  <36.825367, 35.449318, 35.211735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064278, 35.455025, 35.233868>,  <37.462460, 35.464539, 35.270752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064278, 35.455025, 35.233868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046621, -0.722648, 0.689642,
		-0.083037, 0.690807, 0.718255,
		-0.995455, -0.023780, -0.092213,
		36.765640, 35.447891, 35.206203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235325, 35.298111, 35.990604>,  <37.462460, 35.464539, 35.270752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235325, 35.298111, 35.990604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951435, 35.184116, 35.732899>,  <36.781101, 35.115719, 35.578274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951435, 35.184116, 35.732899>,  <37.235325, 35.298111, 35.990604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951435, 35.184116, 35.732899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308565, -0.696379, 0.647953,
		-0.633307, 0.658666, 0.406302,
		-0.709725, -0.284982, -0.644263,
		36.738518, 35.098621, 35.539619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553253, 35.161240, 36.389091>,  <37.235325, 35.298111, 35.990604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553253, 35.161240, 36.389091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621353, 34.966553, 36.046368>,  <36.662212, 34.849739, 35.840733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621353, 34.966553, 36.046368>,  <36.553253, 35.161240, 36.389091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621353, 34.966553, 36.046368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178288, -0.870365, 0.458997,
		-0.969138, 0.074614, -0.234955,
		0.170249, -0.486721, -0.856807,
		36.672428, 34.820538, 35.789326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177505, 34.627281, 36.398510>,  <36.553253, 35.161240, 36.389091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177505, 34.627281, 36.398510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459145, 34.488869, 36.150475>,  <36.628128, 34.405823, 36.001656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459145, 34.488869, 36.150475>,  <36.177505, 34.627281, 36.398510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459145, 34.488869, 36.150475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078842, -0.905931, 0.416021,
		-0.705710, -0.244031, -0.665148,
		0.704100, -0.346031, -0.620085,
		36.670376, 34.385059, 35.964451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968487, 34.088436, 36.053791>,  <36.177505, 34.627281, 36.398510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968487, 34.088436, 36.053791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365536, 34.043831, 36.072842>,  <36.603764, 34.017067, 36.084270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365536, 34.043831, 36.072842>,  <35.968487, 34.088436, 36.053791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365536, 34.043831, 36.072842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121258, -0.913950, 0.387287,
		0.000337, -0.390204, -0.920729,
		0.992621, -0.111515, 0.047624,
		36.663322, 34.010376, 36.087128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162182, 33.431026, 35.786396>,  <35.968487, 34.088436, 36.053791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162182, 33.431026, 35.786396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500713, 33.521797, 35.979156>,  <36.703835, 33.576260, 36.094814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500713, 33.521797, 35.979156>,  <36.162182, 33.431026, 35.786396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500713, 33.521797, 35.979156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111469, -0.960131, 0.256367,
		0.520864, -0.163254, -0.837883,
		0.846330, 0.226930, 0.481900,
		36.754612, 33.589878, 36.123726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661198, 32.835529, 35.542561>,  <36.162182, 33.431026, 35.786396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661198, 32.835529, 35.542561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755989, 32.979324, 35.903584>,  <36.812862, 33.065601, 36.120197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755989, 32.979324, 35.903584>,  <36.661198, 32.835529, 35.542561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755989, 32.979324, 35.903584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060110, -0.932667, 0.355695,
		0.969653, -0.030040, -0.242632,
		0.236980, 0.359485, 0.902558,
		36.827084, 33.087170, 36.174351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296894, 32.478683, 35.767731>,  <36.661198, 32.835529, 35.542561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296894, 32.478683, 35.767731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174248, 32.625458, 36.119038>,  <37.100662, 32.713520, 36.329823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174248, 32.625458, 36.119038>,  <37.296894, 32.478683, 35.767731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174248, 32.625458, 36.119038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209023, -0.874228, 0.438218,
		0.928600, 0.317941, 0.191352,
		-0.306612, 0.366932, 0.878265,
		37.082264, 32.735538, 36.382519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832928, 32.259216, 36.206699>,  <37.296894, 32.478683, 35.767731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832928, 32.259216, 36.206699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489079, 32.333069, 36.397263>,  <37.282768, 32.377380, 36.511600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489079, 32.333069, 36.397263>,  <37.832928, 32.259216, 36.206699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489079, 32.333069, 36.397263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102806, -0.850857, 0.515240,
		0.500485, 0.491888, 0.712433,
		-0.859620, 0.184628, 0.476410,
		37.231194, 32.388458, 36.540184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005348, 32.069733, 36.951324>,  <37.832928, 32.259216, 36.206699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005348, 32.069733, 36.951324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605965, 32.050659, 36.962738>,  <37.366337, 32.039215, 36.969585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605965, 32.050659, 36.962738>,  <38.005348, 32.069733, 36.951324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605965, 32.050659, 36.962738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055571, -0.861061, 0.505455,
		0.000468, 0.506260, 0.862381,
		-0.998455, -0.047687, 0.028536,
		37.306427, 32.036354, 36.971298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862171, 31.643284, 37.644089>,  <38.005348, 32.069733, 36.951324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862171, 31.643284, 37.644089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543941, 31.633635, 37.401939>,  <37.353004, 31.627846, 37.256649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543941, 31.633635, 37.401939>,  <37.862171, 31.643284, 37.644089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543941, 31.633635, 37.401939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151527, -0.959528, 0.237371,
		-0.586599, 0.280577, 0.759722,
		-0.795576, -0.024123, -0.605374,
		37.305267, 31.626398, 37.220325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242256, 31.526192, 37.987492>,  <37.862171, 31.643284, 37.644089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242256, 31.526192, 37.987492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168510, 31.397209, 37.616108>,  <37.124264, 31.319820, 37.393280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168510, 31.397209, 37.616108>,  <37.242256, 31.526192, 37.987492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168510, 31.397209, 37.616108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416909, -0.829796, 0.370979,
		-0.890054, 0.455478, 0.018552,
		-0.184367, -0.322457, -0.928456,
		37.113201, 31.300472, 37.337570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712223, 31.018389, 38.065392>,  <37.242256, 31.526192, 37.987492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712223, 31.018389, 38.065392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843613, 30.968340, 37.690918>,  <36.922447, 30.938311, 37.466232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843613, 30.968340, 37.690918>,  <36.712223, 31.018389, 38.065392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843613, 30.968340, 37.690918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265863, -0.963358, 0.035473,
		-0.906321, 0.237246, -0.349709,
		0.328479, -0.125124, -0.936187,
		36.942158, 30.930803, 37.410061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877766, 30.169903, 38.147396>,  <36.712223, 31.018389, 38.065392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877766, 30.169903, 38.147396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908829, 30.396164, 37.819004>,  <36.927467, 30.531921, 37.621967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908829, 30.396164, 37.819004>,  <36.877766, 30.169903, 38.147396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908829, 30.396164, 37.819004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322696, -0.764876, -0.557523,
		-0.943311, 0.308223, 0.123136,
		0.077658, 0.565653, -0.820978,
		36.932125, 30.565861, 37.572712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700081, 29.479988, 37.989857>,  <36.877766, 30.169903, 38.147396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700081, 29.479988, 37.989857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914246, 29.330017, 37.687130>,  <37.042744, 29.240034, 37.505493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914246, 29.330017, 37.687130>,  <36.700081, 29.479988, 37.989857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914246, 29.330017, 37.687130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377788, 0.907741, -0.182433,
		0.755391, -0.188239, 0.627655,
		0.535407, -0.374929, -0.756814,
		37.074867, 29.217539, 37.460087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425892, 29.633606, 37.986927>,  <36.700081, 29.479988, 37.989857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425892, 29.633606, 37.986927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288582, 29.582235, 37.614761>,  <37.206196, 29.551413, 37.391460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288582, 29.582235, 37.614761>,  <37.425892, 29.633606, 37.986927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288582, 29.582235, 37.614761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100798, 0.979849, -0.172439,
		0.933811, -0.152978, -0.323413,
		-0.343275, -0.128426, -0.930413,
		37.185600, 29.543707, 37.335636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730698, 30.264317, 37.639862>,  <37.425892, 29.633606, 37.986927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730698, 30.264317, 37.639862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464985, 30.098997, 37.390728>,  <37.305557, 29.999805, 37.241249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464985, 30.098997, 37.390728>,  <37.730698, 30.264317, 37.639862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464985, 30.098997, 37.390728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141105, 0.887590, -0.438490,
		0.734045, -0.203395, -0.647926,
		-0.664279, -0.413297, -0.622831,
		37.265701, 29.975008, 37.203880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872944, 30.491850, 36.967907>,  <37.730698, 30.264317, 37.639862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872944, 30.491850, 36.967907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476578, 30.444071, 36.992611>,  <37.238758, 30.415403, 37.007431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476578, 30.444071, 36.992611>,  <37.872944, 30.491850, 36.967907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476578, 30.444071, 36.992611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133038, 0.937703, -0.320958,
		-0.019572, -0.326259, -0.945078,
		-0.990918, -0.119450, 0.061758,
		37.179302, 30.408236, 37.011139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478535, 30.738594, 36.311310>,  <37.872944, 30.491850, 36.967907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478535, 30.738594, 36.311310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256737, 30.750174, 36.643982>,  <37.123657, 30.757122, 36.843586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256737, 30.750174, 36.643982>,  <37.478535, 30.738594, 36.311310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256737, 30.750174, 36.643982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329850, 0.909892, -0.251587,
		-0.764024, -0.413834, -0.494983,
		-0.554496, 0.028949, 0.831682,
		37.090389, 30.758858, 36.893486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827709, 31.049532, 36.156101>,  <37.478535, 30.738594, 36.311310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827709, 31.049532, 36.156101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914780, 31.106642, 36.542309>,  <36.967022, 31.140907, 36.774033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914780, 31.106642, 36.542309>,  <36.827709, 31.049532, 36.156101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914780, 31.106642, 36.542309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234712, 0.967870, -0.090207,
		-0.947380, -0.206984, 0.244190,
		0.217673, 0.142775, 0.965522,
		36.980080, 31.149475, 36.831966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272469, 31.490980, 36.368351>,  <36.827709, 31.049532, 36.156101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272469, 31.490980, 36.368351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585541, 31.542938, 36.611839>,  <36.773384, 31.574112, 36.757931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585541, 31.542938, 36.611839>,  <36.272469, 31.490980, 36.368351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585541, 31.542938, 36.611839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180199, 0.983387, 0.021853,
		-0.595765, -0.126794, 0.793087,
		0.782683, 0.129894, 0.608716,
		36.820347, 31.581907, 36.794453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993408, 31.873369, 36.907566>,  <36.272469, 31.490980, 36.368351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993408, 31.873369, 36.907566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388588, 31.934729, 36.915810>,  <36.625694, 31.971544, 36.920757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388588, 31.934729, 36.915810>,  <35.993408, 31.873369, 36.907566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388588, 31.934729, 36.915810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151866, 0.986442, -0.062195,
		-0.029869, 0.058316, 0.997851,
		0.987950, 0.153398, 0.020608,
		36.684975, 31.980747, 36.921993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307079, 32.398052, 37.490688>,  <35.993408, 31.873369, 36.907566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307079, 32.398052, 37.490688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564808, 32.414112, 37.185207>,  <36.719444, 32.423748, 37.001919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564808, 32.414112, 37.185207>,  <36.307079, 32.398052, 37.490688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564808, 32.414112, 37.185207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195067, 0.974217, -0.113361,
		0.739462, 0.222014, 0.635535,
		0.644317, 0.040146, -0.763704,
		36.758102, 32.426155, 36.956097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640953, 33.111904, 37.545959>,  <36.307079, 32.398052, 37.490688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640953, 33.111904, 37.545959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765129, 32.993530, 37.184616>,  <36.839634, 32.922508, 36.967812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765129, 32.993530, 37.184616>,  <36.640953, 33.111904, 37.545959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765129, 32.993530, 37.184616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087955, 0.955173, -0.282681,
		0.946515, 0.008302, 0.322554,
		0.310442, -0.295932, -0.903355,
		36.858261, 32.904751, 36.913609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172112, 33.571667, 37.368534>,  <36.640953, 33.111904, 37.545959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172112, 33.571667, 37.368534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078098, 33.418625, 37.011127>,  <37.021690, 33.326801, 36.796684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078098, 33.418625, 37.011127>,  <37.172112, 33.571667, 37.368534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078098, 33.418625, 37.011127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348650, 0.824910, -0.444934,
		0.907305, -0.416099, -0.060488,
		-0.235034, -0.382602, -0.893518,
		37.007587, 33.303844, 36.743073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682228, 33.725185, 36.885689>,  <37.172112, 33.571667, 37.368534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682228, 33.725185, 36.885689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338940, 33.690605, 36.683311>,  <37.132965, 33.669857, 36.561886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338940, 33.690605, 36.683311>,  <37.682228, 33.725185, 36.885689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338940, 33.690605, 36.683311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143017, 0.906402, -0.397470,
		0.492946, -0.413477, -0.765534,
		-0.858225, -0.086447, -0.505941,
		37.081470, 33.664673, 36.531528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837315, 33.829865, 36.132393>,  <37.682228, 33.725185, 36.885689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837315, 33.829865, 36.132393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462509, 33.955521, 36.193466>,  <37.237625, 34.030914, 36.230110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462509, 33.955521, 36.193466>,  <37.837315, 33.829865, 36.132393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462509, 33.955521, 36.193466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144995, 0.747527, -0.648213,
		-0.317765, -0.585249, -0.745995,
		-0.937017, 0.314145, 0.152680,
		37.181404, 34.049763, 36.239269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582016, 33.664650, 35.513027>,  <37.837315, 33.829865, 36.132393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582016, 33.664650, 35.513027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430614, 33.981552, 35.704468>,  <37.339771, 34.171696, 35.819332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430614, 33.981552, 35.704468>,  <37.582016, 33.664650, 35.513027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430614, 33.981552, 35.704468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011190, 0.513118, -0.858245,
		-0.925531, -0.330207, -0.185353,
		-0.378506, 0.792258, 0.478602,
		37.317062, 34.219231, 35.848049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083870, 34.030930, 35.204918>,  <37.582016, 33.664650, 35.513027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083870, 34.030930, 35.204918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280018, 34.312653, 35.410240>,  <37.397705, 34.481686, 35.533436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280018, 34.312653, 35.410240>,  <37.083870, 34.030930, 35.204918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280018, 34.312653, 35.410240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000242, 0.589095, -0.808063,
		-0.871516, 0.396124, 0.289044,
		0.490368, 0.704310, 0.513310,
		37.427128, 34.523945, 35.564232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432526, 34.288902, 35.163250>,  <37.083870, 34.030930, 35.204918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432526, 34.288902, 35.163250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305058, 34.494766, 35.481640>,  <36.228577, 34.618282, 35.672676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305058, 34.494766, 35.481640>,  <36.432526, 34.288902, 35.163250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305058, 34.494766, 35.481640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027475, 0.834390, -0.550490,
		-0.947469, -0.197292, -0.251751,
		-0.318665, 0.514655, 0.795979,
		36.209457, 34.649162, 35.720432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765556, 34.693230, 35.032024>,  <36.432526, 34.288902, 35.163250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765556, 34.693230, 35.032024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023224, 34.880486, 35.273983>,  <36.177822, 34.992840, 35.419159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023224, 34.880486, 35.273983>,  <35.765556, 34.693230, 35.032024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023224, 34.880486, 35.273983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063829, 0.820973, -0.567388,
		-0.762218, 0.326882, 0.558723,
		0.644166, 0.468136, 0.604896,
		36.216473, 35.020927, 35.455452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443943, 35.419331, 35.239788>,  <35.765556, 34.693230, 35.032024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443943, 35.419331, 35.239788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843811, 35.411953, 35.232586>,  <36.083733, 35.407528, 35.228264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843811, 35.411953, 35.232586>,  <35.443943, 35.419331, 35.239788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843811, 35.411953, 35.232586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004360, 0.809544, -0.587043,
		0.025405, 0.586769, 0.809355,
		0.999668, -0.018442, -0.018008,
		36.143711, 35.406422, 35.227184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672268, 36.063023, 35.320225>,  <35.443943, 35.419331, 35.239788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672268, 36.063023, 35.320225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029701, 35.945488, 35.184475>,  <36.244160, 35.874969, 35.103024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029701, 35.945488, 35.184475>,  <35.672268, 36.063023, 35.320225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029701, 35.945488, 35.184475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065434, 0.833194, -0.549096,
		0.444106, 0.468456, 0.763753,
		0.893582, -0.293832, -0.339373,
		36.297775, 35.857338, 35.082664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039581, 36.651413, 35.245991>,  <35.672268, 36.063023, 35.320225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039581, 36.651413, 35.245991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250191, 36.404434, 35.012226>,  <36.376556, 36.256245, 34.871967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250191, 36.404434, 35.012226>,  <36.039581, 36.651413, 35.245991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250191, 36.404434, 35.012226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332943, 0.782257, -0.526519,
		0.782257, 0.082647, 0.617449,
		0.526519, -0.617449, -0.584410,
		36.408146, 36.219200, 34.836903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772408, 36.903870, 35.207981>,  <36.039581, 36.651413, 35.245991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772408, 36.903870, 35.207981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644440, 36.698048, 34.889767>,  <36.567657, 36.574554, 34.698837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644440, 36.698048, 34.889767>,  <36.772408, 36.903870, 35.207981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644440, 36.698048, 34.889767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415366, 0.678500, -0.605895,
		0.851541, -0.524277, -0.003335,
		-0.319919, -0.514559, -0.795538,
		36.548462, 36.543678, 34.651104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293964, 36.794518, 34.803951>,  <36.772408, 36.903870, 35.207981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293964, 36.794518, 34.803951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977722, 36.775463, 34.559761>,  <36.787975, 36.764030, 34.413246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977722, 36.775463, 34.559761>,  <37.293964, 36.794518, 34.803951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977722, 36.775463, 34.559761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526817, 0.455243, -0.717787,
		0.312100, -0.889092, -0.334825,
		-0.790605, -0.047630, -0.610471,
		36.740540, 36.761173, 34.376621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747894, 36.613548, 34.232521>,  <37.293964, 36.794518, 34.803951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747894, 36.613548, 34.232521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386089, 36.723270, 34.101917>,  <37.169006, 36.789104, 34.023556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386089, 36.723270, 34.101917>,  <37.747894, 36.613548, 34.232521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386089, 36.723270, 34.101917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423104, 0.481733, -0.767409,
		-0.053215, -0.832280, -0.551795,
		-0.904517, 0.274305, -0.326506,
		37.114735, 36.805561, 34.003967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654839, 36.486382, 33.472157>,  <37.747894, 36.613548, 34.232521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654839, 36.486382, 33.472157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342754, 36.727005, 33.540737>,  <37.155502, 36.871380, 33.581886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342754, 36.727005, 33.540737>,  <37.654839, 36.486382, 33.472157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342754, 36.727005, 33.540737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130444, 0.424552, -0.895957,
		-0.611759, -0.676674, -0.409711,
		-0.780215, 0.601555, 0.171456,
		37.108688, 36.907471, 33.592175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237537, 36.399921, 32.917347>,  <37.654839, 36.486382, 33.472157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237537, 36.399921, 32.917347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145454, 36.744091, 33.099194>,  <37.090206, 36.950592, 33.208302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145454, 36.744091, 33.099194>,  <37.237537, 36.399921, 32.917347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145454, 36.744091, 33.099194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116433, 0.439453, -0.890687,
		-0.966151, -0.257975, -0.000984,
		-0.230207, 0.860424, 0.454615,
		37.076393, 37.002220, 33.235577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861160, 36.717243, 32.785923>,  <37.237537, 36.399921, 32.917347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861160, 36.717243, 32.785923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130611, 36.528038, 32.558773>,  <38.292282, 36.414513, 32.422482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130611, 36.528038, 32.558773>,  <37.861160, 36.717243, 32.785923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130611, 36.528038, 32.558773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715082, 0.611317, 0.339042,
		0.186781, -0.634467, 0.750043,
		0.673625, -0.473016, -0.567878,
		38.332699, 36.386131, 32.388409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361389, 36.511402, 33.281555>,  <37.861160, 36.717243, 32.785923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361389, 36.511402, 33.281555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515892, 36.533615, 32.913269>,  <38.608593, 36.546944, 32.692295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515892, 36.533615, 32.913269>,  <38.361389, 36.511402, 33.281555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515892, 36.533615, 32.913269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738947, 0.578789, 0.344908,
		0.552056, -0.813584, 0.182523,
		0.386254, 0.055534, -0.920720,
		38.631767, 36.550274, 32.637054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033859, 36.253323, 33.201534>,  <38.361389, 36.511402, 33.281555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033859, 36.253323, 33.201534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997585, 36.573193, 32.964115>,  <38.975822, 36.765114, 32.821663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997585, 36.573193, 32.964115>,  <39.033859, 36.253323, 33.201534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997585, 36.573193, 32.964115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687916, 0.481255, 0.543292,
		0.720103, -0.359042, -0.593751,
		-0.090681, 0.799677, -0.593544,
		38.970383, 36.813095, 32.786053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895027, 35.729340, 33.732140>,  <39.033859, 36.253323, 33.201534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895027, 35.729340, 33.732140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101021, 35.411423, 33.860580>,  <39.224617, 35.220673, 33.937645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101021, 35.411423, 33.860580>,  <38.895027, 35.729340, 33.732140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101021, 35.411423, 33.860580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735271, 0.217004, -0.642095,
		0.440650, 0.566762, 0.696138,
		0.514980, -0.794789, 0.321101,
		39.255516, 35.172985, 33.956909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657471, 35.965179, 33.893860>,  <38.895027, 35.729340, 33.732140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657471, 35.965179, 33.893860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621635, 35.583557, 33.779491>,  <39.600132, 35.354584, 33.710869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621635, 35.583557, 33.779491>,  <39.657471, 35.965179, 33.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621635, 35.583557, 33.779491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877853, 0.059965, -0.475161,
		0.470476, -0.293568, 0.832148,
		-0.089592, -0.954056, -0.285922,
		39.594757, 35.297340, 33.693714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632847, 36.543736, 34.210491>,  <39.657471, 35.965179, 33.893860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632847, 36.543736, 34.210491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611256, 36.493919, 34.606789>,  <39.598301, 36.464031, 34.844566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611256, 36.493919, 34.606789>,  <39.632847, 36.543736, 34.210491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611256, 36.493919, 34.606789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970915, -0.238323, 0.022944,
		0.233260, 0.963168, 0.133778,
		-0.053981, -0.124535, 0.990746,
		39.595062, 36.456558, 34.904011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045082, 37.022984, 34.584560>,  <39.632847, 36.543736, 34.210491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045082, 37.022984, 34.584560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019653, 36.676796, 34.783325>,  <40.004395, 36.469082, 34.902584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019653, 36.676796, 34.783325>,  <40.045082, 37.022984, 34.584560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019653, 36.676796, 34.783325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997727, -0.066268, 0.012229,
		0.022345, 0.496558, 0.867716,
		-0.063574, -0.865470, 0.496910,
		40.000580, 36.417156, 34.932400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412373, 37.096748, 35.196114>,  <40.045082, 37.022984, 34.584560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412373, 37.096748, 35.196114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390106, 36.713531, 35.083641>,  <40.376747, 36.483601, 35.016159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390106, 36.713531, 35.083641>,  <40.412373, 37.096748, 35.196114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390106, 36.713531, 35.083641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998442, -0.052291, -0.019487,
		0.003966, -0.281824, 0.959458,
		-0.055663, -0.958040, -0.281178,
		40.373405, 36.426121, 34.999287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748455, 36.606796, 35.705997>,  <40.412373, 37.096748, 35.196114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748455, 36.606796, 35.705997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773453, 36.446064, 35.340565>,  <40.788452, 36.349625, 35.121307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773453, 36.446064, 35.340565>,  <40.748455, 36.606796, 35.705997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773453, 36.446064, 35.340565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954902, -0.242153, 0.171828,
		-0.290271, -0.883116, 0.368576,
		0.062492, -0.401830, -0.913579,
		40.792202, 36.325516, 35.066490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045486, 35.932446, 35.828827>,  <40.748455, 36.606796, 35.705997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045486, 35.932446, 35.828827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100895, 36.058453, 35.453259>,  <41.134140, 36.134056, 35.227917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100895, 36.058453, 35.453259>,  <41.045486, 35.932446, 35.828827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100895, 36.058453, 35.453259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932809, -0.359976, 0.016846,
		-0.332683, -0.878169, -0.343716,
		0.138523, 0.315017, -0.938923,
		41.142452, 36.152958, 35.171581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286850, 35.351933, 35.314575>,  <41.045486, 35.932446, 35.828827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286850, 35.351933, 35.314575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396439, 35.724163, 35.217434>,  <41.462193, 35.947502, 35.159149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396439, 35.724163, 35.217434>,  <41.286850, 35.351933, 35.314575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396439, 35.724163, 35.217434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959084, -0.283107, -0.002856,
		-0.071410, -0.232134, -0.970059,
		0.273967, 0.930572, -0.242852,
		41.478630, 36.003334, 35.144577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885983, 35.369038, 34.861301>,  <41.286850, 35.351933, 35.314575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885983, 35.369038, 34.861301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925701, 35.706200, 35.072826>,  <41.949532, 35.908497, 35.199741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925701, 35.706200, 35.072826>,  <41.885983, 35.369038, 34.861301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925701, 35.706200, 35.072826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984400, -0.160786, 0.071444,
		0.145247, 0.513470, -0.845726,
		0.099297, 0.842909, 0.528814,
		41.955490, 35.959072, 35.231472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328899, 35.728058, 34.494320>,  <41.885983, 35.369038, 34.861301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328899, 35.728058, 34.494320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327545, 35.784916, 34.890255>,  <42.326733, 35.819031, 35.127815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327545, 35.784916, 34.890255>,  <42.328899, 35.728058, 34.494320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327545, 35.784916, 34.890255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962811, -0.266950, 0.041632,
		0.270156, 0.953169, -0.135957,
		-0.003388, 0.142148, 0.989840,
		42.326530, 35.827560, 35.187206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883312, 36.182312, 34.555832>,  <42.328899, 35.728058, 34.494320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883312, 36.182312, 34.555832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802765, 35.948948, 34.870560>,  <42.754436, 35.808929, 35.059395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802765, 35.948948, 34.870560>,  <42.883312, 36.182312, 34.555832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802765, 35.948948, 34.870560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958148, -0.284186, 0.034503,
		0.203473, 0.760836, 0.616220,
		-0.201372, -0.583410, 0.786818,
		42.742352, 35.773926, 35.106606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458164, 36.321442, 34.932766>,  <42.883312, 36.182312, 34.555832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458164, 36.321442, 34.932766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295013, 35.986618, 35.078625>,  <43.197121, 35.785725, 35.166142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295013, 35.986618, 35.078625>,  <43.458164, 36.321442, 34.932766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295013, 35.986618, 35.078625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909282, -0.408580, 0.079178,
		0.082713, 0.363866, 0.927772,
		-0.407879, -0.837057, 0.364651,
		43.172649, 35.735500, 35.188019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904118, 35.772690, 34.915562>,  <43.458164, 36.321442, 34.932766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904118, 35.772690, 34.915562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216827, 35.584709, 35.079502>,  <44.404453, 35.471920, 35.177868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216827, 35.584709, 35.079502>,  <43.904118, 35.772690, 34.915562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216827, 35.584709, 35.079502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134424, -0.768831, -0.625163,
		0.608903, 0.433641, -0.664223,
		0.781772, -0.469951, 0.409852,
		44.451359, 35.443726, 35.202457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597702, 35.676979, 34.558552>,  <43.904118, 35.772690, 34.915562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597702, 35.676979, 34.558552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451263, 35.376541, 34.778305>,  <44.363400, 35.196278, 34.910156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.451263, 35.376541, 34.778305>,  <44.597702, 35.676979, 34.558552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451263, 35.376541, 34.778305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060153, -0.570038, -0.819414,
		0.928631, -0.333032, 0.163508,
		-0.366097, -0.751097, 0.549387,
		44.341434, 35.151211, 34.943123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.281540, 35.288216, 34.856815>,  <44.597702, 35.676979, 34.558552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.281540, 35.288216, 34.856815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406181, 35.656929, 34.764549>,  <45.480968, 35.878159, 34.709190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406181, 35.656929, 34.764549>,  <45.281540, 35.288216, 34.856815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406181, 35.656929, 34.764549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804102, -0.126464, 0.580884,
		0.506280, -0.366489, -0.780619,
		0.311608, 0.921788, -0.230669,
		45.499664, 35.933464, 34.695347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958241, 35.230759, 34.634716>,  <45.281540, 35.288216, 34.856815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958241, 35.230759, 34.634716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937199, 35.609089, 34.762867>,  <45.924576, 35.836086, 34.839756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937199, 35.609089, 34.762867>,  <45.958241, 35.230759, 34.634716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937199, 35.609089, 34.762867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878537, -0.108696, 0.465144,
		0.474770, 0.305927, -0.825229,
		-0.052601, 0.945830, 0.320373,
		45.921417, 35.892838, 34.858978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.638222, 35.514812, 34.647728>,  <45.958241, 35.230759, 34.634716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.638222, 35.514812, 34.647728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458633, 35.791534, 34.873940>,  <46.350880, 35.957569, 35.009666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458633, 35.791534, 34.873940>,  <46.638222, 35.514812, 34.647728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458633, 35.791534, 34.873940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855854, 0.151058, 0.494667,
		0.256786, 0.706105, -0.659907,
		-0.448971, 0.691807, 0.565533,
		46.323940, 35.999077, 35.043598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.383125, 35.327904, 34.756271>,  <46.638222, 35.514812, 34.647728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.383125, 35.327904, 34.756271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742912, 35.181389, 34.851589>,  <47.958786, 35.093479, 34.908779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742912, 35.181389, 34.851589>,  <47.383125, 35.327904, 34.756271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742912, 35.181389, 34.851589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436381, 0.781470, -0.445954,
		-0.022876, 0.505112, 0.862750,
		0.899471, -0.366286, 0.238298,
		48.012753, 35.071503, 34.923080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.159531, 35.723862, 23.428556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.865868, 35.954494, 23.285135>,  <33.689671, 36.092873, 23.199083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.865868, 35.954494, 23.285135>,  <34.159531, 35.723862, 23.428556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865868, 35.954494, 23.285135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174533, 0.350073, 0.920319,
		0.656160, 0.738241, -0.156377,
		-0.734161, 0.576583, -0.358552,
		33.645618, 36.127468, 23.177570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381805, 36.436649, 23.604759>,  <34.159531, 35.723862, 23.428556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381805, 36.436649, 23.604759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983402, 36.408367, 23.582941>,  <33.744362, 36.391399, 23.569849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983402, 36.408367, 23.582941>,  <34.381805, 36.436649, 23.604759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983402, 36.408367, 23.582941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071047, 0.257353, 0.963702,
		-0.054101, 0.963727, -0.261348,
		-0.996005, -0.070706, -0.054547,
		33.684601, 36.387154, 23.566578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190971, 37.013676, 24.057505>,  <34.381805, 36.436649, 23.604759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190971, 37.013676, 24.057505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.856998, 36.797703, 24.014853>,  <33.656616, 36.668121, 23.989262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.856998, 36.797703, 24.014853>,  <34.190971, 37.013676, 24.057505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856998, 36.797703, 24.014853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280953, 0.251545, 0.926170,
		-0.473245, 0.803244, -0.361717,
		-0.834928, -0.539931, -0.106631,
		33.606522, 36.635723, 23.982862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611847, 37.413567, 24.287489>,  <34.190971, 37.013676, 24.057505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611847, 37.413567, 24.287489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490490, 37.032520, 24.296303>,  <33.417675, 36.803894, 24.301592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490490, 37.032520, 24.296303>,  <33.611847, 37.413567, 24.287489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490490, 37.032520, 24.296303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195709, 0.084930, 0.976977,
		-0.932552, 0.292091, -0.212201,
		-0.303388, -0.952612, 0.022037,
		33.399475, 36.746738, 24.302914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042923, 37.403263, 24.639339>,  <33.611847, 37.413567, 24.287489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042923, 37.403263, 24.639339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139111, 37.015430, 24.657576>,  <33.196823, 36.782730, 24.668518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139111, 37.015430, 24.657576>,  <33.042923, 37.403263, 24.639339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139111, 37.015430, 24.657576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233463, -0.012183, 0.972290,
		-0.942162, -0.244453, -0.229291,
		0.240472, -0.969585, 0.045593,
		33.211250, 36.724556, 24.671253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527954, 37.061619, 25.043739>,  <33.042923, 37.403263, 24.639339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527954, 37.061619, 25.043739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.851524, 36.828690, 25.076088>,  <33.045666, 36.688931, 25.095497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.851524, 36.828690, 25.076088>,  <32.527954, 37.061619, 25.043739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851524, 36.828690, 25.076088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066749, 0.045703, 0.996723,
		-0.584115, -0.811668, -0.001900,
		0.808921, -0.582328, 0.080874,
		33.094200, 36.653992, 25.100349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370403, 36.683712, 25.651878>,  <32.527954, 37.061619, 25.043739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370403, 36.683712, 25.651878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763557, 36.637257, 25.594677>,  <32.999451, 36.609383, 25.560356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763557, 36.637257, 25.594677>,  <32.370403, 36.683712, 25.651878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763557, 36.637257, 25.594677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143776, -0.001737, 0.989609,
		-0.115177, -0.993232, 0.014991,
		0.982885, -0.116136, -0.143003,
		33.058422, 36.602417, 25.551777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609066, 36.196163, 26.200693>,  <32.370403, 36.683712, 25.651878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609066, 36.196163, 26.200693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.941750, 36.371498, 26.064390>,  <33.141361, 36.476700, 25.982609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.941750, 36.371498, 26.064390>,  <32.609066, 36.196163, 26.200693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941750, 36.371498, 26.064390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347845, 0.066971, 0.935157,
		0.432735, -0.896312, -0.096773,
		0.831711, 0.438337, -0.340758,
		33.191261, 36.502998, 25.962162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236767, 35.912937, 26.485518>,  <32.609066, 36.196163, 26.200693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236767, 35.912937, 26.485518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.358990, 36.269505, 26.351650>,  <33.432323, 36.483444, 26.271330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.358990, 36.269505, 26.351650>,  <33.236767, 35.912937, 26.485518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358990, 36.269505, 26.351650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436619, 0.181171, 0.881216,
		0.846166, -0.415386, -0.333853,
		0.305560, 0.891421, -0.334666,
		33.450657, 36.536930, 26.251251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871998, 36.091709, 26.830282>,  <33.236767, 35.912937, 26.485518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871998, 36.091709, 26.830282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.758797, 36.453590, 26.702890>,  <33.690876, 36.670719, 26.626455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.758797, 36.453590, 26.702890>,  <33.871998, 36.091709, 26.830282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758797, 36.453590, 26.702890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272940, 0.394290, 0.877519,
		0.919464, 0.161412, -0.358513,
		-0.283000, 0.904700, -0.318480,
		33.673897, 36.724998, 26.607346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391106, 36.674568, 26.975607>,  <33.871998, 36.091709, 26.830282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391106, 36.674568, 26.975607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048450, 36.875866, 26.930153>,  <33.842857, 36.996647, 26.902880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048450, 36.875866, 26.930153>,  <34.391106, 36.674568, 26.975607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048450, 36.875866, 26.930153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167025, 0.478917, 0.861824,
		0.488134, 0.719291, -0.494313,
		-0.856638, 0.503248, -0.113636,
		33.791458, 37.026840, 26.896063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551155, 37.228218, 27.268415>,  <34.391106, 36.674568, 26.975607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551155, 37.228218, 27.268415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151665, 37.246464, 27.259804>,  <33.911972, 37.257412, 27.254637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151665, 37.246464, 27.259804>,  <34.551155, 37.228218, 27.268415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151665, 37.246464, 27.259804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002133, 0.388204, 0.921571,
		0.050396, 0.920444, -0.387612,
		-0.998727, 0.045617, -0.021528,
		33.852047, 37.260147, 27.253345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366711, 37.987534, 27.598986>,  <34.551155, 37.228218, 27.268415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366711, 37.987534, 27.598986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.054230, 37.737831, 27.600866>,  <33.866741, 37.588009, 27.601995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.054230, 37.737831, 27.600866>,  <34.366711, 37.987534, 27.598986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054230, 37.737831, 27.600866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158545, 0.205682, 0.965691,
		-0.603806, 0.753657, -0.259653,
		-0.781205, -0.624257, 0.004703,
		33.819870, 37.550552, 27.602278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722481, 38.423183, 27.802347>,  <34.366711, 37.987534, 27.598986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722481, 38.423183, 27.802347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.656868, 38.036259, 27.879696>,  <33.617500, 37.804104, 27.926105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.656868, 38.036259, 27.879696>,  <33.722481, 38.423183, 27.802347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656868, 38.036259, 27.879696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263050, 0.231821, 0.936517,
		-0.950735, 0.102757, -0.292480,
		-0.164036, -0.967316, 0.193370,
		33.607658, 37.746063, 27.937706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100376, 38.404690, 28.215061>,  <33.722481, 38.423183, 27.802347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100376, 38.404690, 28.215061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328125, 38.082699, 28.281773>,  <33.464775, 37.889503, 28.321798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328125, 38.082699, 28.281773>,  <33.100376, 38.404690, 28.215061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328125, 38.082699, 28.281773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113435, 0.123999, 0.985777,
		-0.814213, -0.580197, -0.020711,
		0.569377, -0.804982, 0.166776,
		33.498940, 37.841206, 28.331806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664070, 38.029751, 28.675995>,  <33.100376, 38.404690, 28.215061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664070, 38.029751, 28.675995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.028629, 37.873093, 28.726528>,  <33.247364, 37.779099, 28.756847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.028629, 37.873093, 28.726528>,  <32.664070, 38.029751, 28.675995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028629, 37.873093, 28.726528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160080, -0.054599, 0.985593,
		-0.379110, -0.918493, -0.112457,
		0.911400, -0.391650, 0.126333,
		33.302048, 37.755596, 28.764427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624794, 37.667862, 29.278463>,  <32.664070, 38.029751, 28.675995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624794, 37.667862, 29.278463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.022415, 37.689201, 29.240503>,  <33.260990, 37.702003, 29.217728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.022415, 37.689201, 29.240503>,  <32.624794, 37.667862, 29.278463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022415, 37.689201, 29.240503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093717, 0.024266, 0.995303,
		0.055403, -0.998281, 0.019122,
		0.994056, 0.053351, -0.094900,
		33.320633, 37.705204, 29.212032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923904, 37.058437, 29.722418>,  <32.624794, 37.667862, 29.278463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923904, 37.058437, 29.722418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221466, 37.321938, 29.677427>,  <33.400005, 37.480038, 29.650433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221466, 37.321938, 29.677427>,  <32.923904, 37.058437, 29.722418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221466, 37.321938, 29.677427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176756, -0.031640, 0.983746,
		0.644483, -0.751697, -0.139975,
		0.743907, 0.658749, -0.112475,
		33.444637, 37.519562, 29.643684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463055, 36.807068, 30.136274>,  <32.923904, 37.058437, 29.722418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463055, 36.807068, 30.136274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.541904, 37.196213, 30.087805>,  <33.589214, 37.429699, 30.058723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.541904, 37.196213, 30.087805>,  <33.463055, 36.807068, 30.136274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541904, 37.196213, 30.087805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024699, 0.118633, 0.992631,
		0.980067, -0.198666, -0.000643,
		0.197126, 0.972861, -0.121176,
		33.601044, 37.488071, 30.051453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936825, 36.998993, 30.596642>,  <33.463055, 36.807068, 30.136274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936825, 36.998993, 30.596642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.798615, 37.368942, 30.533121>,  <33.715687, 37.590912, 30.495008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.798615, 37.368942, 30.533121>,  <33.936825, 36.998993, 30.596642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798615, 37.368942, 30.533121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113529, 0.126783, 0.985412,
		0.931516, 0.358516, 0.061193,
		-0.345528, 0.924874, -0.158802,
		33.694958, 37.646404, 30.485481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264442, 37.420570, 31.089188>,  <33.936825, 36.998993, 30.596642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264442, 37.420570, 31.089188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.932564, 37.615536, 30.980349>,  <33.733437, 37.732513, 30.915045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.932564, 37.615536, 30.980349>,  <34.264442, 37.420570, 31.089188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932564, 37.615536, 30.980349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228301, 0.148516, 0.962196,
		0.509399, 0.860448, -0.011945,
		-0.829693, 0.487414, -0.272095,
		33.683655, 37.761761, 30.898720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825573, 36.842495, 30.951687>,  <34.264442, 37.420570, 31.089188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825573, 36.842495, 30.951687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208702, 36.841759, 31.066626>,  <35.438580, 36.841316, 31.135590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.208702, 36.841759, 31.066626>,  <34.825573, 36.842495, 30.951687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208702, 36.841759, 31.066626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284768, -0.127775, -0.950042,
		0.038466, 0.991802, -0.121861,
		0.957824, -0.001842, 0.287348,
		35.496048, 36.841206, 31.152830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169865, 37.267078, 30.467133>,  <34.825573, 36.842495, 30.951687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169865, 37.267078, 30.467133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450222, 37.028980, 30.624329>,  <35.618435, 36.886124, 30.718647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.450222, 37.028980, 30.624329>,  <35.169865, 37.267078, 30.467133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450222, 37.028980, 30.624329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272171, -0.286090, -0.918736,
		0.659300, 0.750893, -0.038510,
		0.700890, -0.595241, 0.392990,
		35.660488, 36.850407, 30.742226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792088, 37.390923, 30.053757>,  <35.169865, 37.267078, 30.467133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792088, 37.390923, 30.053757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850994, 37.038448, 30.233454>,  <35.886337, 36.826962, 30.341272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850994, 37.038448, 30.233454>,  <35.792088, 37.390923, 30.053757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850994, 37.038448, 30.233454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238562, -0.409142, -0.880733,
		0.959896, 0.236879, 0.149963,
		0.147271, -0.881188, 0.449243,
		35.895176, 36.774094, 30.368227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432259, 37.118584, 29.881310>,  <35.792088, 37.390923, 30.053757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432259, 37.118584, 29.881310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254936, 36.781864, 30.004505>,  <36.148540, 36.579834, 30.078423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254936, 36.781864, 30.004505>,  <36.432259, 37.118584, 29.881310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254936, 36.781864, 30.004505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476521, -0.512343, -0.714446,
		0.759212, -0.169958, 0.628260,
		-0.443310, -0.841795, 0.307988,
		36.121944, 36.529327, 30.096901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969593, 36.666080, 29.898464>,  <36.432259, 37.118584, 29.881310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969593, 36.666080, 29.898464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633492, 36.450050, 29.879360>,  <36.431831, 36.320431, 29.867897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633492, 36.450050, 29.879360>,  <36.969593, 36.666080, 29.898464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633492, 36.450050, 29.879360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361899, -0.493080, -0.791139,
		0.403726, -0.682046, 0.609769,
		-0.840258, -0.540078, -0.047762,
		36.381413, 36.288029, 29.865032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206509, 36.002785, 29.667946>,  <36.969593, 36.666080, 29.898464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206509, 36.002785, 29.667946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810493, 36.003090, 29.611629>,  <36.572884, 36.003273, 29.577839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810493, 36.003090, 29.611629>,  <37.206509, 36.002785, 29.667946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810493, 36.003090, 29.611629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125564, -0.447589, -0.885380,
		-0.063690, -0.894239, 0.443036,
		-0.990039, 0.000760, -0.140791,
		36.513481, 36.003319, 29.569391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108288, 35.348877, 29.451340>,  <37.206509, 36.002785, 29.667946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108288, 35.348877, 29.451340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810799, 35.575817, 29.309925>,  <36.632305, 35.711983, 29.225077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810799, 35.575817, 29.309925>,  <37.108288, 35.348877, 29.451340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810799, 35.575817, 29.309925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191939, -0.325356, -0.925906,
		-0.640342, -0.756474, 0.133076,
		-0.743721, 0.567355, -0.353536,
		36.587681, 35.746025, 29.203865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676647, 34.912262, 29.025068>,  <37.108288, 35.348877, 29.451340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676647, 34.912262, 29.025068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573555, 35.277653, 28.899124>,  <36.511700, 35.496887, 28.823557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573555, 35.277653, 28.899124>,  <36.676647, 34.912262, 29.025068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573555, 35.277653, 28.899124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100631, -0.298722, -0.949020,
		-0.960963, -0.276273, -0.014935,
		-0.257727, 0.913476, -0.314862,
		36.496239, 35.551697, 28.804665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234955, 34.752422, 28.540333>,  <36.676647, 34.912262, 29.025068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234955, 34.752422, 28.540333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311222, 35.140316, 28.479332>,  <36.356983, 35.373055, 28.442732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311222, 35.140316, 28.479332>,  <36.234955, 34.752422, 28.540333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311222, 35.140316, 28.479332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097074, -0.173214, -0.980089,
		-0.976843, 0.172067, -0.127163,
		0.190668, 0.969737, -0.152500,
		36.368423, 35.431236, 28.433582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666859, 35.013107, 28.203964>,  <36.234955, 34.752422, 28.540333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666859, 35.013107, 28.203964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007534, 35.205578, 28.120934>,  <36.211941, 35.321060, 28.071115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007534, 35.205578, 28.120934>,  <35.666859, 35.013107, 28.203964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007534, 35.205578, 28.120934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065901, -0.294615, -0.953341,
		-0.519884, 0.825632, -0.219210,
		0.851691, 0.481181, -0.207576,
		36.263042, 35.349934, 28.058661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501347, 35.344208, 27.579170>,  <35.666859, 35.013107, 28.203964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501347, 35.344208, 27.579170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899483, 35.382759, 27.580175>,  <36.138363, 35.405891, 27.580778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.899483, 35.382759, 27.580175>,  <35.501347, 35.344208, 27.579170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899483, 35.382759, 27.580175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003819, -0.013375, -0.999903,
		-0.096334, 0.995255, -0.013681,
		0.995342, 0.096377, 0.002512,
		36.198086, 35.411671, 27.580929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587738, 35.640541, 26.984514>,  <35.501347, 35.344208, 27.579170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587738, 35.640541, 26.984514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.964359, 35.541691, 27.076084>,  <36.190331, 35.482380, 27.131027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.964359, 35.541691, 27.076084>,  <35.587738, 35.640541, 26.984514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964359, 35.541691, 27.076084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216235, -0.077711, -0.973244,
		0.258302, 0.965863, -0.019732,
		0.941553, -0.247124, 0.228927,
		36.246826, 35.467552, 27.144762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995972, 36.057499, 26.616610>,  <35.587738, 35.640541, 26.984514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995972, 36.057499, 26.616610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203270, 35.720634, 26.676197>,  <36.327648, 35.518517, 26.711950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203270, 35.720634, 26.676197>,  <35.995972, 36.057499, 26.616610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203270, 35.720634, 26.676197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252393, -0.015823, -0.967495,
		0.817140, 0.539001, 0.204354,
		0.518247, -0.842157, 0.148970,
		36.358746, 35.467987, 26.720888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725163, 36.168144, 26.234365>,  <35.995972, 36.057499, 26.616610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725163, 36.168144, 26.234365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621296, 35.786213, 26.292152>,  <36.558975, 35.557053, 26.326824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621296, 35.786213, 26.292152>,  <36.725163, 36.168144, 26.234365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621296, 35.786213, 26.292152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207837, -0.201348, -0.957216,
		0.943068, -0.218532, 0.250732,
		-0.259667, -0.954831, 0.144466,
		36.543396, 35.499763, 26.335491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258270, 35.766941, 25.782364>,  <36.725163, 36.168144, 26.234365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258270, 35.766941, 25.782364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955158, 35.517380, 25.858801>,  <36.773293, 35.367641, 25.904663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955158, 35.517380, 25.858801>,  <37.258270, 35.766941, 25.782364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955158, 35.517380, 25.858801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109886, -0.410691, -0.905129,
		0.643192, -0.664890, 0.379771,
		-0.757779, -0.623903, 0.191091,
		36.727825, 35.330208, 25.916128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462582, 35.076263, 25.678633>,  <37.258270, 35.766941, 25.782364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462582, 35.076263, 25.678633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.064995, 35.078148, 25.634811>,  <36.826443, 35.079277, 25.608519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.064995, 35.078148, 25.634811>,  <37.462582, 35.076263, 25.678633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064995, 35.078148, 25.634811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102903, -0.305090, -0.946748,
		-0.037885, -0.952312, 0.302765,
		-0.993970, 0.004712, -0.109555,
		36.766804, 35.079563, 25.601946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461777, 34.828945, 25.026970>,  <37.462582, 35.076263, 25.678633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461777, 34.828945, 25.026970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073723, 34.882027, 25.108192>,  <36.840893, 34.913876, 25.156925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073723, 34.882027, 25.108192>,  <37.461777, 34.828945, 25.026970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073723, 34.882027, 25.108192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217694, -0.107011, -0.970133,
		-0.107011, -0.985362, 0.132704,
		0.970133, -0.132704, -0.203056,
		36.782684, 34.921837, 25.169109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075886, 34.251770, 24.625193>,  <37.461777, 34.828945, 25.026970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075886, 34.251770, 24.625193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872993, 34.587925, 24.701584>,  <36.751259, 34.789616, 24.747419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872993, 34.587925, 24.701584>,  <37.075886, 34.251770, 24.625193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872993, 34.587925, 24.701584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208541, 0.095328, -0.973357,
		-0.836200, -0.533541, 0.126902,
		-0.507229, 0.840385, 0.190979,
		36.720825, 34.840042, 24.758877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463970, 34.092541, 24.261761>,  <37.075886, 34.251770, 24.625193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463970, 34.092541, 24.261761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471848, 34.488552, 24.317547>,  <36.476574, 34.726158, 24.351019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471848, 34.488552, 24.317547>,  <36.463970, 34.092541, 24.261761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471848, 34.488552, 24.317547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409694, 0.135232, -0.902144,
		-0.912010, -0.039372, 0.408273,
		0.019693, 0.990031, 0.139463,
		36.477757, 34.785561, 24.359386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.860912, 34.420986, 23.947138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125851, 34.720470, 23.957987>,  <36.284813, 34.900162, 23.964497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125851, 34.720470, 23.957987>,  <35.860912, 34.420986, 23.947138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125851, 34.720470, 23.957987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395658, 0.380303, -0.835958,
		-0.636203, 0.542961, 0.548123,
		0.662345, 0.748708, 0.027123,
		36.324554, 34.945084, 23.966124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503162, 35.040722, 23.596409>,  <35.860912, 34.420986, 23.947138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503162, 35.040722, 23.596409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891468, 35.130039, 23.561161>,  <36.124451, 35.183628, 23.540012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891468, 35.130039, 23.561161>,  <35.503162, 35.040722, 23.596409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891468, 35.130039, 23.561161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157066, 0.313239, -0.936596,
		-0.181529, 0.923051, 0.339151,
		0.970761, 0.223289, -0.088118,
		36.182697, 35.197025, 23.534725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476498, 35.701702, 23.281172>,  <35.503162, 35.040722, 23.596409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476498, 35.701702, 23.281172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858662, 35.599457, 23.222040>,  <36.087959, 35.538109, 23.186562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858662, 35.599457, 23.222040>,  <35.476498, 35.701702, 23.281172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858662, 35.599457, 23.222040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026880, 0.423260, -0.905609,
		0.294057, 0.869202, 0.397516,
		0.955410, -0.255616, -0.147827,
		36.145283, 35.522774, 23.177692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862236, 36.344864, 22.901091>,  <35.476498, 35.701702, 23.281172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862236, 36.344864, 22.901091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049149, 36.000370, 22.821175>,  <36.161297, 35.793674, 22.773224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049149, 36.000370, 22.821175>,  <35.862236, 36.344864, 22.901091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049149, 36.000370, 22.821175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097268, 0.274689, -0.956601,
		0.878742, 0.427567, 0.212128,
		0.467280, -0.861239, -0.199792,
		36.189331, 35.741997, 22.761236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333733, 36.507465, 22.316292>,  <35.862236, 36.344864, 22.901091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333733, 36.507465, 22.316292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344776, 36.107632, 22.319405>,  <36.351402, 35.867729, 22.321272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344776, 36.107632, 22.319405>,  <36.333733, 36.507465, 22.316292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344776, 36.107632, 22.319405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058019, -0.006170, -0.998296,
		0.997934, 0.028017, 0.057824,
		0.027613, -0.999588, 0.007783,
		36.353062, 35.807755, 22.321739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020653, 36.337429, 22.004898>,  <36.333733, 36.507465, 22.316292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020653, 36.337429, 22.004898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.761158, 36.035862, 21.963427>,  <36.605461, 35.854923, 21.938543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.761158, 36.035862, 21.963427>,  <37.020653, 36.337429, 22.004898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761158, 36.035862, 21.963427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139626, 0.251839, -0.957644,
		0.748097, -0.606780, -0.268643,
		-0.648734, -0.753919, -0.103678,
		36.566536, 35.809685, 21.932323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181065, 36.044884, 21.285616>,  <37.020653, 36.337429, 22.004898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181065, 36.044884, 21.285616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837002, 35.866077, 21.383839>,  <36.630562, 35.758793, 21.442772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837002, 35.866077, 21.383839>,  <37.181065, 36.044884, 21.285616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837002, 35.866077, 21.383839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232812, -0.084242, -0.968866,
		0.453786, -0.890550, -0.031609,
		-0.860161, -0.447017, 0.245559,
		36.578953, 35.731972, 21.457506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073963, 35.387558, 20.953720>,  <37.181065, 36.044884, 21.285616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073963, 35.387558, 20.953720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703773, 35.525707, 21.015957>,  <36.481659, 35.608597, 21.053299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703773, 35.525707, 21.015957>,  <37.073963, 35.387558, 20.953720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703773, 35.525707, 21.015957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172185, -0.017690, -0.984906,
		-0.337408, -0.938299, 0.075840,
		-0.925477, 0.345373, 0.155592,
		36.426128, 35.629318, 21.062635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776333, 35.059849, 20.459183>,  <37.073963, 35.387558, 20.953720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776333, 35.059849, 20.459183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493950, 35.325451, 20.557747>,  <36.324520, 35.484814, 20.616886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493950, 35.325451, 20.557747>,  <36.776333, 35.059849, 20.459183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493950, 35.325451, 20.557747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254005, 0.087404, -0.963246,
		-0.661139, -0.742601, 0.106957,
		-0.705958, 0.664007, 0.246410,
		36.282162, 35.524654, 20.631670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142803, 34.810429, 20.092712>,  <36.776333, 35.059849, 20.459183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142803, 34.810429, 20.092712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128929, 35.198349, 20.189278>,  <36.120605, 35.431103, 20.247217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128929, 35.198349, 20.189278>,  <36.142803, 34.810429, 20.092712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128929, 35.198349, 20.189278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206703, 0.229374, -0.951137,
		-0.977789, -0.082894, 0.192504,
		-0.034688, 0.969802, 0.241414,
		36.118523, 35.489288, 20.261702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791740, 34.947269, 19.570042>,  <36.142803, 34.810429, 20.092712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791740, 34.947269, 19.570042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873783, 35.317146, 19.698343>,  <35.923008, 35.539070, 19.775324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873783, 35.317146, 19.698343>,  <35.791740, 34.947269, 19.570042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873783, 35.317146, 19.698343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258678, 0.367284, -0.893414,
		-0.943938, 0.100269, 0.314528,
		0.205102, 0.924688, 0.320756,
		35.935314, 35.594551, 19.794571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405518, 35.304470, 19.172613>,  <35.791740, 34.947269, 19.570042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405518, 35.304470, 19.172613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664970, 35.573143, 19.315786>,  <35.820641, 35.734348, 19.401690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664970, 35.573143, 19.315786>,  <35.405518, 35.304470, 19.172613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664970, 35.573143, 19.315786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013584, 0.480423, -0.876932,
		-0.760982, 0.563943, 0.320741,
		0.648631, 0.671686, 0.357933,
		35.859558, 35.774651, 19.423166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318165, 36.004158, 18.742855>,  <35.405518, 35.304470, 19.172613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318165, 36.004158, 18.742855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682110, 36.041759, 18.904503>,  <35.900478, 36.064320, 19.001492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682110, 36.041759, 18.904503>,  <35.318165, 36.004158, 18.742855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682110, 36.041759, 18.904503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295167, 0.537860, -0.789673,
		-0.291593, 0.837777, 0.461632,
		0.909863, 0.094004, 0.404120,
		35.955070, 36.069962, 19.025740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530388, 36.821991, 18.854836>,  <35.318165, 36.004158, 18.742855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530388, 36.821991, 18.854836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842411, 36.573990, 18.821117>,  <36.029625, 36.425186, 18.800886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842411, 36.573990, 18.821117>,  <35.530388, 36.821991, 18.854836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842411, 36.573990, 18.821117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313938, 0.504344, -0.804413,
		0.541255, 0.601023, 0.588060,
		0.780055, -0.620008, -0.084295,
		36.076427, 36.387989, 18.795830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063152, 37.322208, 18.578653>,  <35.530388, 36.821991, 18.854836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063152, 37.322208, 18.578653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218201, 36.959236, 18.513769>,  <36.311230, 36.741451, 18.474838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218201, 36.959236, 18.513769>,  <36.063152, 37.322208, 18.578653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218201, 36.959236, 18.513769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298270, 0.289968, -0.909370,
		0.872229, 0.304110, 0.383059,
		0.387623, -0.907434, -0.162212,
		36.334488, 36.687008, 18.465105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754192, 37.460865, 18.438913>,  <36.063152, 37.322208, 18.578653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754192, 37.460865, 18.438913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710155, 37.089592, 18.296726>,  <36.683735, 36.866829, 18.211414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710155, 37.089592, 18.296726>,  <36.754192, 37.460865, 18.438913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710155, 37.089592, 18.296726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529209, 0.247992, -0.811442,
		0.841320, -0.277447, 0.463902,
		-0.110088, -0.928183, -0.355468,
		36.677128, 36.811138, 18.190086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394077, 37.193787, 18.273943>,  <36.754192, 37.460865, 18.438913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394077, 37.193787, 18.273943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154083, 36.947063, 18.070152>,  <37.010086, 36.799030, 17.947878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.154083, 36.947063, 18.070152>,  <37.394077, 37.193787, 18.273943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154083, 36.947063, 18.070152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473812, 0.239162, -0.847528,
		0.644607, -0.749902, 0.148756,
		-0.599987, -0.616805, -0.509478,
		36.974087, 36.762024, 17.917309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890896, 36.844078, 17.796249>,  <37.394077, 37.193787, 18.273943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890896, 36.844078, 17.796249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525383, 36.821922, 17.635286>,  <37.306076, 36.808628, 17.538708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525383, 36.821922, 17.635286>,  <37.890896, 36.844078, 17.796249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525383, 36.821922, 17.635286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379704, 0.235473, -0.894638,
		0.144310, -0.970301, -0.194139,
		-0.913783, -0.055389, -0.402408,
		37.251247, 36.805305, 17.514565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998730, 36.589279, 17.153654>,  <37.890896, 36.844078, 17.796249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998730, 36.589279, 17.153654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636147, 36.749760, 17.100918>,  <37.418598, 36.846046, 17.069277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636147, 36.749760, 17.100918>,  <37.998730, 36.589279, 17.153654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636147, 36.749760, 17.100918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316976, 0.440078, -0.840153,
		-0.279047, -0.803351, -0.526081,
		-0.906454, 0.401197, -0.131841,
		37.364212, 36.870117, 17.061365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899990, 36.551178, 16.377836>,  <37.998730, 36.589279, 17.153654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899990, 36.551178, 16.377836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645153, 36.825085, 16.519375>,  <37.492249, 36.989429, 16.604298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645153, 36.825085, 16.519375>,  <37.899990, 36.551178, 16.377836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645153, 36.825085, 16.519375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200029, 0.590229, -0.782060,
		-0.744376, -0.427468, -0.513006,
		-0.637097, 0.684763, 0.353847,
		37.454025, 37.030514, 16.625528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538895, 36.645222, 15.786136>,  <37.899990, 36.551178, 16.377836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538895, 36.645222, 15.786136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476398, 36.963215, 16.020605>,  <37.438900, 37.154011, 16.161287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.476398, 36.963215, 16.020605>,  <37.538895, 36.645222, 15.786136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476398, 36.963215, 16.020605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217162, 0.606588, -0.764782,
		-0.963551, 0.007807, -0.267411,
		-0.156237, 0.794978, 0.586173,
		37.429527, 37.201710, 16.196457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046288, 37.037380, 15.389340>,  <37.538895, 36.645222, 15.786136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046288, 37.037380, 15.389340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240025, 37.267570, 15.652930>,  <37.356266, 37.405685, 15.811084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240025, 37.267570, 15.652930>,  <37.046288, 37.037380, 15.389340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240025, 37.267570, 15.652930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126661, 0.699159, -0.703658,
		-0.865663, 0.424276, 0.265741,
		0.484340, 0.575471, 0.658975,
		37.385326, 37.440212, 15.850623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727745, 37.717270, 15.437047>,  <37.046288, 37.037380, 15.389340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727745, 37.717270, 15.437047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102722, 37.757374, 15.570404>,  <37.327709, 37.781437, 15.650418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102722, 37.757374, 15.570404>,  <36.727745, 37.717270, 15.437047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102722, 37.757374, 15.570404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173676, 0.695278, -0.697442,
		-0.301726, 0.711713, 0.634370,
		0.937442, 0.100262, 0.333392,
		37.383953, 37.787453, 15.670422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081112, 37.209469, 15.216591>,  <36.727745, 37.717270, 15.437047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081112, 37.209469, 15.216591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.834251, 37.512554, 15.301436>,  <35.686134, 37.694405, 15.352344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.834251, 37.512554, 15.301436>,  <36.081112, 37.209469, 15.216591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834251, 37.512554, 15.301436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529055, -0.599141, 0.600941,
		0.582426, 0.258654, 0.770635,
		-0.617155, 0.757712, 0.212114,
		35.649105, 37.739868, 15.365070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946697, 37.254787, 15.927051>,  <36.081112, 37.209469, 15.216591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946697, 37.254787, 15.927051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631020, 37.438648, 15.764134>,  <35.441612, 37.548965, 15.666385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631020, 37.438648, 15.764134>,  <35.946697, 37.254787, 15.927051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631020, 37.438648, 15.764134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579426, -0.337480, 0.741872,
		0.203553, 0.821477, 0.532674,
		-0.789197, 0.459655, -0.407290,
		35.394260, 37.576546, 15.641948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711330, 37.759956, 16.343699>,  <35.946697, 37.254787, 15.927051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711330, 37.759956, 16.343699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380383, 37.633240, 16.158184>,  <35.181812, 37.557209, 16.046875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.380383, 37.633240, 16.158184>,  <35.711330, 37.759956, 16.343699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380383, 37.633240, 16.158184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482012, -0.023384, 0.875853,
		-0.288310, 0.948206, -0.133351,
		-0.827370, -0.316794, -0.463788,
		35.132172, 37.538200, 16.019047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078541, 38.167263, 16.650965>,  <35.711330, 37.759956, 16.343699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078541, 38.167263, 16.650965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926170, 37.836666, 16.485163>,  <34.834747, 37.638309, 16.385681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926170, 37.836666, 16.485163>,  <35.078541, 38.167263, 16.650965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926170, 37.836666, 16.485163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600471, -0.119769, 0.790627,
		-0.703089, 0.550066, -0.450659,
		-0.380922, -0.826488, -0.414507,
		34.811893, 37.588718, 16.360811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457943, 38.288349, 16.685795>,  <35.078541, 38.167263, 16.650965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457943, 38.288349, 16.685795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464230, 37.889828, 16.651995>,  <34.468002, 37.650715, 16.631714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464230, 37.889828, 16.651995>,  <34.457943, 38.288349, 16.685795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464230, 37.889828, 16.651995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741807, -0.068285, 0.667127,
		-0.670429, 0.052199, -0.740135,
		0.015717, -0.996299, -0.084502,
		34.468945, 37.590939, 16.626644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758976, 38.048431, 16.665346>,  <34.457943, 38.288349, 16.685795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758976, 38.048431, 16.665346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973759, 37.730927, 16.779623>,  <34.102631, 37.540424, 16.848190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973759, 37.730927, 16.779623>,  <33.758976, 38.048431, 16.665346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973759, 37.730927, 16.779623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592715, -0.113988, 0.797306,
		-0.600303, -0.597456, -0.531680,
		0.536960, -0.793759, 0.285693,
		34.134846, 37.492798, 16.865332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260242, 37.777584, 17.073727>,  <33.758976, 38.048431, 16.665346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260242, 37.777584, 17.073727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601849, 37.591415, 17.166716>,  <33.806812, 37.479713, 17.222509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.601849, 37.591415, 17.166716>,  <33.260242, 37.777584, 17.073727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601849, 37.591415, 17.166716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330173, -0.139544, 0.933549,
		-0.402058, -0.874017, -0.272843,
		0.854011, -0.465426, 0.232472,
		33.858051, 37.451786, 17.236458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056969, 37.195316, 17.415197>,  <33.260242, 37.777584, 17.073727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056969, 37.195316, 17.415197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432499, 37.269978, 17.530966>,  <33.657818, 37.314774, 17.600428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432499, 37.269978, 17.530966>,  <33.056969, 37.195316, 17.415197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432499, 37.269978, 17.530966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242591, -0.238085, 0.940460,
		0.244446, -0.953140, -0.178240,
		0.938827, 0.186653, 0.289422,
		33.714146, 37.325974, 17.617792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234177, 36.536156, 17.811787>,  <33.056969, 37.195316, 17.415197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234177, 36.536156, 17.811787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495892, 36.824036, 17.904692>,  <33.652920, 36.996765, 17.960434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495892, 36.824036, 17.904692>,  <33.234177, 36.536156, 17.811787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495892, 36.824036, 17.904692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043417, -0.270869, 0.961637,
		0.755001, -0.639268, -0.145978,
		0.654285, 0.719699, 0.232262,
		33.692177, 37.039944, 17.974371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797718, 36.249203, 18.256144>,  <33.234177, 36.536156, 17.811787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797718, 36.249203, 18.256144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796444, 36.643360, 18.324242>,  <33.795677, 36.879856, 18.365101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796444, 36.643360, 18.324242>,  <33.797718, 36.249203, 18.256144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796444, 36.643360, 18.324242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126934, -0.168471, 0.977499,
		0.991906, 0.024728, -0.124543,
		-0.003190, 0.985396, 0.170247,
		33.795486, 36.938980, 18.375315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305279, 36.314434, 18.685118>,  <33.797718, 36.249203, 18.256144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305279, 36.314434, 18.685118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087822, 36.648163, 18.721691>,  <33.957348, 36.848400, 18.743635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087822, 36.648163, 18.721691>,  <34.305279, 36.314434, 18.685118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087822, 36.648163, 18.721691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031168, -0.128931, 0.991164,
		0.838738, 0.535990, 0.096097,
		-0.543643, 0.834321, 0.091434,
		33.924728, 36.898460, 18.749121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570210, 36.554134, 19.259014>,  <34.305279, 36.314434, 18.685118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570210, 36.554134, 19.259014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232170, 36.766487, 19.233818>,  <34.029346, 36.893898, 19.218700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232170, 36.766487, 19.233818>,  <34.570210, 36.554134, 19.259014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232170, 36.766487, 19.233818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100390, -0.041857, 0.994067,
		0.525100, 0.846409, 0.088669,
		-0.845099, 0.530886, -0.062992,
		33.978642, 36.925755, 19.214920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647156, 37.060303, 19.825211>,  <34.570210, 36.554134, 19.259014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647156, 37.060303, 19.825211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.257023, 37.067936, 19.737246>,  <34.022942, 37.072514, 19.684467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.257023, 37.067936, 19.737246>,  <34.647156, 37.060303, 19.825211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257023, 37.067936, 19.737246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215298, 0.137586, 0.966808,
		0.048702, 0.990306, -0.130084,
		-0.975333, 0.019078, -0.219912,
		33.964424, 37.073658, 19.671272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452877, 37.623795, 20.103235>,  <34.647156, 37.060303, 19.825211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452877, 37.623795, 20.103235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153362, 37.360004, 20.076674>,  <33.973652, 37.201729, 20.060738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153362, 37.360004, 20.076674>,  <34.452877, 37.623795, 20.103235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153362, 37.360004, 20.076674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012644, -0.114377, 0.993357,
		-0.662691, 0.742972, 0.093983,
		-0.748786, -0.659477, -0.066403,
		33.928726, 37.162163, 20.056753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874695, 37.755634, 20.579237>,  <34.452877, 37.623795, 20.103235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874695, 37.755634, 20.579237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.857052, 37.363434, 20.502634>,  <33.846466, 37.128113, 20.456673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.857052, 37.363434, 20.502634>,  <33.874695, 37.755634, 20.579237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857052, 37.363434, 20.502634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161813, -0.182149, 0.969865,
		-0.985835, 0.073763, -0.150624,
		-0.044104, -0.980500, -0.191505,
		33.843822, 37.069283, 20.445183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428905, 37.487495, 21.128077>,  <33.874695, 37.755634, 20.579237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428905, 37.487495, 21.128077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592182, 37.161495, 20.963568>,  <33.690147, 36.965893, 20.864862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592182, 37.161495, 20.963568>,  <33.428905, 37.487495, 21.128077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592182, 37.161495, 20.963568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026443, -0.460882, 0.887067,
		-0.912512, -0.351221, -0.209681,
		0.408195, -0.815004, -0.411273,
		33.714642, 36.916992, 20.840185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960030, 36.962139, 21.352196>,  <33.428905, 37.487495, 21.128077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960030, 36.962139, 21.352196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322285, 36.810646, 21.275898>,  <33.539639, 36.719749, 21.230120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322285, 36.810646, 21.275898>,  <32.960030, 36.962139, 21.352196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322285, 36.810646, 21.275898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026945, -0.500295, 0.865436,
		-0.423196, -0.778631, -0.463291,
		0.905637, -0.378733, -0.190743,
		33.593975, 36.697025, 21.218676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876869, 36.273277, 21.408751>,  <32.960030, 36.962139, 21.352196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876869, 36.273277, 21.408751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264530, 36.349190, 21.471636>,  <33.497128, 36.394737, 21.509367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264530, 36.349190, 21.471636>,  <32.876869, 36.273277, 21.408751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264530, 36.349190, 21.471636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066291, -0.413665, 0.908013,
		0.237362, -0.890429, -0.388325,
		0.969157, 0.189785, 0.157216,
		33.555279, 36.406124, 21.518801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165344, 35.714363, 21.734922>,  <32.876869, 36.273277, 21.408751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165344, 35.714363, 21.734922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430481, 35.998272, 21.830309>,  <33.589561, 36.168617, 21.887541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430481, 35.998272, 21.830309>,  <33.165344, 35.714363, 21.734922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430481, 35.998272, 21.830309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125187, -0.419048, 0.899292,
		0.738224, -0.566232, -0.366615,
		0.662837, 0.709775, 0.238467,
		33.629333, 36.211205, 21.901850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596867, 35.400982, 22.111689>,  <33.165344, 35.714363, 21.734922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596867, 35.400982, 22.111689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631119, 35.780487, 22.233351>,  <33.651672, 36.008190, 22.306347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631119, 35.780487, 22.233351>,  <33.596867, 35.400982, 22.111689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631119, 35.780487, 22.233351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059097, -0.299901, 0.952138,
		0.994572, -0.099511, 0.030387,
		0.085635, 0.948766, 0.304155,
		33.656811, 36.065117, 22.324596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875927, 35.395199, 22.828636>,  <33.596867, 35.400982, 22.111689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875927, 35.395199, 22.828636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739544, 35.769360, 22.791157>,  <33.657715, 35.993855, 22.768669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739544, 35.769360, 22.791157>,  <33.875927, 35.395199, 22.828636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739544, 35.769360, 22.791157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157336, 0.041485, 0.986673,
		0.926820, 0.351153, 0.133027,
		-0.340955, 0.935398, -0.093699,
		33.637257, 36.049980, 22.763046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.001789, 34.378017, 26.960375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787540, 34.711292, 26.905384>,  <36.658989, 34.911259, 26.872389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787540, 34.711292, 26.905384>,  <37.001789, 34.378017, 26.960375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787540, 34.711292, 26.905384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170052, 0.265888, 0.948887,
		0.827156, 0.484870, -0.284102,
		-0.535626, 0.833189, -0.137478,
		36.626854, 34.961250, 26.864141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373287, 34.797104, 27.448343>,  <37.001789, 34.378017, 26.960375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373287, 34.797104, 27.448343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040447, 34.999325, 27.357107>,  <36.840744, 35.120659, 27.302366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040447, 34.999325, 27.357107>,  <37.373287, 34.797104, 27.448343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040447, 34.999325, 27.357107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025684, 0.445933, 0.894698,
		0.554032, 0.738619, -0.384045,
		-0.832099, 0.505555, -0.228091,
		36.790817, 35.150990, 27.288679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481155, 35.472141, 27.628635>,  <37.373287, 34.797104, 27.448343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481155, 35.472141, 27.628635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.083527, 35.428829, 27.624794>,  <36.844948, 35.402843, 27.622490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.083527, 35.428829, 27.624794>,  <37.481155, 35.472141, 27.628635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083527, 35.428829, 27.624794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070897, 0.578832, 0.812359,
		-0.082403, 0.808226, -0.583079,
		-0.994074, -0.108279, -0.009603,
		36.785305, 35.396347, 27.621914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276340, 36.159866, 27.814306>,  <37.481155, 35.472141, 27.628635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276340, 36.159866, 27.814306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.979942, 35.898052, 27.874323>,  <36.802105, 35.740963, 27.910334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.979942, 35.898052, 27.874323>,  <37.276340, 36.159866, 27.814306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979942, 35.898052, 27.874323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225493, 0.453001, 0.862521,
		-0.632519, 0.605289, -0.483264,
		-0.740994, -0.654534, 0.150043,
		36.757645, 35.701691, 27.919336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788601, 36.632755, 28.158562>,  <37.276340, 36.159866, 27.814306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788601, 36.632755, 28.158562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.663628, 36.261333, 28.238739>,  <36.588646, 36.038479, 28.286844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.663628, 36.261333, 28.238739>,  <36.788601, 36.632755, 28.158562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663628, 36.261333, 28.238739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278373, 0.291235, 0.915254,
		-0.908238, 0.230154, -0.349474,
		-0.312429, -0.928553, 0.200442,
		36.569901, 35.982769, 28.298872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133362, 36.759804, 28.441448>,  <36.788601, 36.632755, 28.158562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133362, 36.759804, 28.441448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243576, 36.392433, 28.554989>,  <36.309704, 36.172009, 28.623114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243576, 36.392433, 28.554989>,  <36.133362, 36.759804, 28.441448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243576, 36.392433, 28.554989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480418, 0.124199, 0.868201,
		-0.832634, -0.375585, -0.407009,
		0.275533, -0.918428, 0.283850,
		36.326237, 36.116905, 28.640144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643692, 36.576099, 28.881226>,  <36.133362, 36.759804, 28.441448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643692, 36.576099, 28.881226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892960, 36.276001, 28.969584>,  <36.042519, 36.095943, 29.022598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892960, 36.276001, 28.969584>,  <35.643692, 36.576099, 28.881226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892960, 36.276001, 28.969584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315190, 0.017568, 0.948866,
		-0.715762, -0.660928, -0.225522,
		0.623170, -0.750244, 0.220892,
		36.079910, 36.050926, 29.035851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266045, 35.976292, 29.173103>,  <35.643692, 36.576099, 28.881226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266045, 35.976292, 29.173103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646385, 35.973652, 29.296938>,  <35.874588, 35.972069, 29.371239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646385, 35.973652, 29.296938>,  <35.266045, 35.976292, 29.173103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646385, 35.973652, 29.296938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306800, 0.115396, 0.944753,
		-0.041959, -0.993298, 0.107700,
		0.950849, -0.006599, 0.309586,
		35.931641, 35.971672, 29.389814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283005, 35.596291, 29.758194>,  <35.266045, 35.976292, 29.173103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283005, 35.596291, 29.758194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.615788, 35.816822, 29.783100>,  <35.815456, 35.949142, 29.798044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.615788, 35.816822, 29.783100>,  <35.283005, 35.596291, 29.758194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615788, 35.816822, 29.783100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253434, 0.277785, 0.926610,
		0.493575, -0.786681, 0.370832,
		0.831958, 0.551334, 0.062264,
		35.865376, 35.982224, 29.801779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528961, 35.418224, 30.397318>,  <35.283005, 35.596291, 29.758194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528961, 35.418224, 30.397318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.702744, 35.766174, 30.303877>,  <35.807011, 35.974945, 30.247812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.702744, 35.766174, 30.303877>,  <35.528961, 35.418224, 30.397318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702744, 35.766174, 30.303877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079368, 0.295324, 0.952095,
		0.897191, -0.395099, 0.197344,
		0.434452, 0.869874, -0.233603,
		35.833080, 36.027138, 30.233795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985970, 35.601341, 30.944731>,  <35.528961, 35.418224, 30.397318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985970, 35.601341, 30.944731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.990391, 35.952015, 30.752356>,  <35.993046, 36.162418, 30.636930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.990391, 35.952015, 30.752356>,  <35.985970, 35.601341, 30.944731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990391, 35.952015, 30.752356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039980, 0.480197, 0.876249,
		0.999139, -0.028916, -0.029740,
		0.011056, 0.876684, -0.480940,
		35.993710, 36.215019, 30.608074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632320, 36.076401, 31.159636>,  <35.985970, 35.601341, 30.944731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632320, 36.076401, 31.159636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.315926, 36.298534, 31.056915>,  <36.126091, 36.431816, 30.995283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.315926, 36.298534, 31.056915>,  <36.632320, 36.076401, 31.159636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315926, 36.298534, 31.056915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025139, 0.448866, 0.893245,
		0.611319, 0.700088, -0.369007,
		-0.790985, 0.555334, -0.256801,
		36.078629, 36.465134, 30.979876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782227, 36.691311, 31.471449>,  <36.632320, 36.076401, 31.159636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782227, 36.691311, 31.471449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.389988, 36.716648, 31.397234>,  <36.154644, 36.731850, 31.352705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.389988, 36.716648, 31.397234>,  <36.782227, 36.691311, 31.471449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389988, 36.716648, 31.397234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162434, 0.267430, 0.949787,
		0.109780, 0.961493, -0.251952,
		-0.980593, 0.063342, -0.185538,
		36.095810, 36.735649, 31.341572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431934, 37.099651, 31.959959>,  <36.782227, 36.691311, 31.471449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431934, 37.099651, 31.959959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.108788, 36.908051, 31.822615>,  <35.914898, 36.793091, 31.740208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.108788, 36.908051, 31.822615>,  <36.431934, 37.099651, 31.959959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108788, 36.908051, 31.822615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457772, 0.143056, 0.877485,
		-0.371200, 0.866077, -0.334846,
		-0.807871, -0.479005, -0.343363,
		35.866425, 36.764347, 31.719606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468723, 36.756413, 32.628460>,  <36.431934, 37.099651, 31.959959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468723, 36.756413, 32.628460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.627048, 37.072884, 32.814949>,  <36.722042, 37.262768, 32.926842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.627048, 37.072884, 32.814949>,  <36.468723, 36.756413, 32.628460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627048, 37.072884, 32.814949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243401, 0.579911, -0.777470,
		-0.885489, 0.194252, 0.422109,
		0.395811, 0.791182, 0.466224,
		36.745792, 37.310238, 32.954815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971127, 37.178047, 32.566639>,  <36.468723, 36.756413, 32.628460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971127, 37.178047, 32.566639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.304821, 37.387016, 32.637203>,  <36.505039, 37.512398, 32.679543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.304821, 37.387016, 32.637203>,  <35.971127, 37.178047, 32.566639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304821, 37.387016, 32.637203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174894, 0.554104, -0.813868,
		-0.522933, 0.648106, 0.553623,
		0.834238, 0.522424, 0.176410,
		36.555092, 37.543743, 32.690125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808502, 37.898373, 32.482136>,  <35.971127, 37.178047, 32.566639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808502, 37.898373, 32.482136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207516, 37.906513, 32.455265>,  <36.446922, 37.911396, 32.439144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207516, 37.906513, 32.455265>,  <35.808502, 37.898373, 32.482136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207516, 37.906513, 32.455265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066957, 0.562915, -0.823798,
		0.021052, 0.826264, 0.562889,
		0.997534, 0.020347, -0.067175,
		36.506775, 37.912617, 32.435112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978611, 38.582218, 32.397133>,  <35.808502, 37.898373, 32.482136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978611, 38.582218, 32.397133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310947, 38.395206, 32.276382>,  <36.510349, 38.283001, 32.203934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310947, 38.395206, 32.276382>,  <35.978611, 38.582218, 32.397133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310947, 38.395206, 32.276382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060549, 0.615153, -0.786079,
		0.553211, 0.634826, 0.539401,
		0.830838, -0.467528, -0.301872,
		36.560200, 38.254948, 32.185822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575336, 39.086788, 32.258705>,  <35.978611, 38.582218, 32.397133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575336, 39.086788, 32.258705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.639290, 38.761745, 32.034527>,  <36.677662, 38.566719, 31.900019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.639290, 38.761745, 32.034527>,  <36.575336, 39.086788, 32.258705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639290, 38.761745, 32.034527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106367, 0.578628, -0.808625,
		0.981388, 0.069676, 0.178951,
		0.159888, -0.812610, -0.560447,
		36.687256, 38.517963, 31.866392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203362, 39.322674, 31.825054>,  <36.575336, 39.086788, 32.258705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203362, 39.322674, 31.825054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.038570, 38.993286, 31.669020>,  <36.939697, 38.795654, 31.575399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.038570, 38.993286, 31.669020>,  <37.203362, 39.322674, 31.825054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038570, 38.993286, 31.669020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027391, 0.416720, -0.908622,
		0.910782, -0.385018, -0.149124,
		-0.411978, -0.823472, -0.390087,
		36.914978, 38.746246, 31.551994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591530, 39.210262, 31.232857>,  <37.203362, 39.322674, 31.825054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591530, 39.210262, 31.232857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260677, 38.993252, 31.174183>,  <37.062164, 38.863045, 31.138979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.260677, 38.993252, 31.174183>,  <37.591530, 39.210262, 31.232857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260677, 38.993252, 31.174183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045596, 0.195361, -0.979671,
		0.560157, -0.817004, -0.136852,
		-0.827131, -0.542529, -0.146684,
		37.012539, 38.830494, 31.130178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769066, 38.738865, 30.723822>,  <37.591530, 39.210262, 31.232857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769066, 38.738865, 30.723822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369480, 38.756741, 30.720381>,  <37.129730, 38.767464, 30.718317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.369480, 38.756741, 30.720381>,  <37.769066, 38.738865, 30.723822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369480, 38.756741, 30.720381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010079, 0.032951, -0.999406,
		-0.044380, -0.998457, -0.033367,
		-0.998964, 0.044690, -0.008601,
		37.069790, 38.770145, 30.717800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496155, 38.278893, 30.243689>,  <37.769066, 38.738865, 30.723822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496155, 38.278893, 30.243689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184437, 38.529396, 30.252600>,  <36.997406, 38.679699, 30.257946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184437, 38.529396, 30.252600>,  <37.496155, 38.278893, 30.243689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184437, 38.529396, 30.252600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044683, -0.020074, -0.998800,
		-0.625057, -0.779359, 0.043626,
		-0.779299, 0.626256, 0.022277,
		36.950645, 38.717274, 30.259283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916058, 37.985619, 29.756710>,  <37.496155, 38.278893, 30.243689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916058, 37.985619, 29.756710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842724, 38.375343, 29.809029>,  <36.798725, 38.609177, 29.840420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.842724, 38.375343, 29.809029>,  <36.916058, 37.985619, 29.756710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842724, 38.375343, 29.809029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147987, 0.104185, -0.983486,
		-0.971849, -0.199659, 0.125085,
		-0.183330, 0.974311, 0.130799,
		36.787724, 38.667637, 29.848269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273766, 38.053947, 29.386152>,  <36.916058, 37.985619, 29.756710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273766, 38.053947, 29.386152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.397957, 38.432384, 29.423058>,  <36.472473, 38.659447, 29.445202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.397957, 38.432384, 29.423058>,  <36.273766, 38.053947, 29.386152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397957, 38.432384, 29.423058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414184, 0.222007, -0.882703,
		-0.855601, 0.235847, 0.460785,
		0.310480, 0.946092, 0.092265,
		36.491100, 38.716213, 29.450737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747837, 38.536587, 29.202265>,  <36.273766, 38.053947, 29.386152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747837, 38.536587, 29.202265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.080311, 38.752560, 29.149191>,  <36.279797, 38.882145, 29.117346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.080311, 38.752560, 29.149191>,  <35.747837, 38.536587, 29.202265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080311, 38.752560, 29.149191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226818, 0.111403, -0.967545,
		-0.507628, 0.834304, 0.215063,
		0.831185, 0.539933, -0.132684,
		36.329666, 38.914539, 29.109386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497803, 39.142239, 28.761225>,  <35.747837, 38.536587, 29.202265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497803, 39.142239, 28.761225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892365, 39.109020, 28.704500>,  <36.129101, 39.089088, 28.670465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.892365, 39.109020, 28.704500>,  <35.497803, 39.142239, 28.761225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892365, 39.109020, 28.704500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137358, 0.057115, -0.988873,
		0.090221, 0.994908, 0.044932,
		0.986404, -0.083045, -0.141812,
		36.188286, 39.084106, 28.661957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540894, 39.665955, 28.330976>,  <35.497803, 39.142239, 28.761225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540894, 39.665955, 28.330976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856037, 39.423954, 28.284931>,  <36.045124, 39.278751, 28.257303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.856037, 39.423954, 28.284931>,  <35.540894, 39.665955, 28.330976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856037, 39.423954, 28.284931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043308, 0.240882, -0.969588,
		0.614333, 0.758912, 0.215982,
		0.787857, -0.605003, -0.115115,
		36.092396, 39.242455, 28.250397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245968, 40.407356, 28.331453>,  <35.540894, 39.665955, 28.330976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245968, 40.407356, 28.331453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920177, 40.602348, 28.205601>,  <34.724705, 40.719341, 28.130089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.920177, 40.602348, 28.205601>,  <35.245968, 40.407356, 28.331453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920177, 40.602348, 28.205601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207269, 0.262035, 0.942538,
		0.541911, 0.832888, -0.112382,
		-0.814477, 0.487478, -0.314631,
		34.675835, 40.748592, 28.111212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239525, 41.039906, 28.687651>,  <35.245968, 40.407356, 28.331453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239525, 41.039906, 28.687651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866253, 40.929569, 28.595486>,  <34.642292, 40.863369, 28.540186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866253, 40.929569, 28.595486>,  <35.239525, 41.039906, 28.687651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866253, 40.929569, 28.595486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227140, -0.044219, 0.972858,
		-0.278543, 0.960185, -0.021391,
		-0.933178, -0.275842, -0.230413,
		34.586300, 40.846817, 28.526361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701633, 41.566479, 28.987309>,  <35.239525, 41.039906, 28.687651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701633, 41.566479, 28.987309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.488262, 41.231598, 28.939051>,  <34.360241, 41.030670, 28.910095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.488262, 41.231598, 28.939051>,  <34.701633, 41.566479, 28.987309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488262, 41.231598, 28.939051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356914, 0.093471, 0.929449,
		-0.766856, 0.538853, -0.348668,
		-0.533427, -0.837198, -0.120645,
		34.328236, 40.980438, 28.902857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217091, 41.644264, 29.437820>,  <34.701633, 41.566479, 28.987309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217091, 41.644264, 29.437820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.170334, 41.257946, 29.345230>,  <34.142281, 41.026157, 29.289677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.170334, 41.257946, 29.345230>,  <34.217091, 41.644264, 29.437820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170334, 41.257946, 29.345230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388557, -0.170020, 0.905603,
		-0.913979, 0.195803, -0.355391,
		-0.116897, -0.965792, -0.231476,
		34.135265, 40.968208, 29.275787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621891, 41.561565, 29.681349>,  <34.217091, 41.644264, 29.437820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621891, 41.561565, 29.681349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.776951, 41.193733, 29.655710>,  <33.869987, 40.973034, 29.640327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.776951, 41.193733, 29.655710>,  <33.621891, 41.561565, 29.681349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776951, 41.193733, 29.655710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288965, -0.187253, 0.938848,
		-0.875345, -0.345419, -0.338313,
		0.387647, -0.919577, -0.064097,
		33.893246, 40.917862, 29.636480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119381, 41.133167, 29.912848>,  <33.621891, 41.561565, 29.681349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119381, 41.133167, 29.912848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.445408, 40.902508, 29.935270>,  <33.641026, 40.764114, 29.948723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.445408, 40.902508, 29.935270>,  <33.119381, 41.133167, 29.912848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445408, 40.902508, 29.935270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299809, -0.337012, 0.892490,
		-0.495758, -0.744247, -0.447571,
		0.815070, -0.576645, 0.056056,
		33.689930, 40.729515, 29.952087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854027, 40.484207, 30.154444>,  <33.119381, 41.133167, 29.912848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854027, 40.484207, 30.154444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.239403, 40.518810, 30.255878>,  <33.470627, 40.539574, 30.316740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.239403, 40.518810, 30.255878>,  <32.854027, 40.484207, 30.154444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239403, 40.518810, 30.255878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204443, -0.374391, 0.904453,
		0.173185, -0.923227, -0.343015,
		0.963437, 0.086511, 0.253586,
		33.528435, 40.544762, 30.331955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063477, 39.853436, 30.470404>,  <32.854027, 40.484207, 30.154444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063477, 39.853436, 30.470404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.334675, 40.113617, 30.607359>,  <33.497395, 40.269726, 30.689533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.334675, 40.113617, 30.607359>,  <33.063477, 39.853436, 30.470404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334675, 40.113617, 30.607359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116089, -0.365199, 0.923663,
		0.725838, -0.665991, -0.172094,
		0.677999, 0.650451, 0.342389,
		33.538074, 40.308754, 30.710075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467403, 39.478771, 30.898111>,  <33.063477, 39.853436, 30.470404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467403, 39.478771, 30.898111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.536751, 39.854420, 31.016768>,  <33.578362, 40.079807, 31.087961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.536751, 39.854420, 31.016768>,  <33.467403, 39.478771, 30.898111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536751, 39.854420, 31.016768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033148, -0.295468, 0.954777,
		0.984298, -0.175365, -0.020096,
		0.173372, 0.939120, 0.296642,
		33.588764, 40.136154, 31.105761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901306, 39.360134, 31.428576>,  <33.467403, 39.478771, 30.898111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901306, 39.360134, 31.428576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746365, 39.728519, 31.445431>,  <33.653400, 39.949551, 31.455544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746365, 39.728519, 31.445431>,  <33.901306, 39.360134, 31.428576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746365, 39.728519, 31.445431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115118, -0.093665, 0.988926,
		0.914715, 0.378215, 0.142302,
		-0.387356, 0.920967, 0.042137,
		33.630157, 40.004810, 31.458073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249939, 39.733688, 32.000992>,  <33.901306, 39.360134, 31.428576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249939, 39.733688, 32.000992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.909477, 39.934464, 31.939554>,  <33.705200, 40.054928, 31.902691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.909477, 39.934464, 31.939554>,  <34.249939, 39.733688, 32.000992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909477, 39.934464, 31.939554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200963, -0.041284, 0.978728,
		0.484918, 0.863919, 0.136010,
		-0.851157, 0.501936, -0.153596,
		33.654129, 40.085045, 31.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151573, 40.494797, 32.365223>,  <34.249939, 39.733688, 32.000992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151573, 40.494797, 32.365223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.794514, 40.322624, 32.311691>,  <33.580276, 40.219322, 32.279572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.794514, 40.322624, 32.311691>,  <34.151573, 40.494797, 32.365223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794514, 40.322624, 32.311691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121535, -0.056085, 0.991001,
		-0.434061, 0.900881, -0.002248,
		-0.892648, -0.430429, -0.133833,
		33.526718, 40.193497, 32.271542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.539917, 41.340122, 24.697601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205990, 41.140045, 24.605618>,  <35.005634, 41.020000, 24.550426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205990, 41.140045, 24.605618>,  <35.539917, 41.340122, 24.697601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205990, 41.140045, 24.605618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239411, -0.046287, 0.969814,
		-0.495739, 0.864676, -0.081110,
		-0.834821, -0.500194, -0.229959,
		34.955544, 40.989986, 24.536631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142338, 41.805969, 24.909229>,  <35.539917, 41.340122, 24.697601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142338, 41.805969, 24.909229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969276, 41.445347, 24.909208>,  <34.865440, 41.228973, 24.909197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969276, 41.445347, 24.909208>,  <35.142338, 41.805969, 24.909229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969276, 41.445347, 24.909208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188691, 0.090497, 0.977858,
		-0.881591, 0.423088, -0.209270,
		-0.432658, -0.901558, -0.000052,
		34.839478, 41.174881, 24.909193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616348, 41.965141, 25.231781>,  <35.142338, 41.805969, 24.909229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616348, 41.965141, 25.231781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631428, 41.565441, 25.235455>,  <34.640476, 41.325623, 25.237659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631428, 41.565441, 25.235455>,  <34.616348, 41.965141, 25.231781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631428, 41.565441, 25.235455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320227, -0.003374, 0.947335,
		-0.946590, -0.038659, -0.320113,
		0.037704, -0.999247, 0.009186,
		34.642738, 41.265667, 25.238211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981041, 41.676186, 25.593353>,  <34.616348, 41.965141, 25.231781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981041, 41.676186, 25.593353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261135, 41.391399, 25.614431>,  <34.429192, 41.220528, 25.627079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261135, 41.391399, 25.614431>,  <33.981041, 41.676186, 25.593353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261135, 41.391399, 25.614431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169456, -0.094050, 0.981040,
		-0.693513, -0.695885, -0.186504,
		0.700231, -0.711968, 0.052697,
		34.471203, 41.177811, 25.630241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634285, 41.162746, 25.944002>,  <33.981041, 41.676186, 25.593353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634285, 41.162746, 25.944002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011135, 41.031544, 25.971769>,  <34.237244, 40.952824, 25.988430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011135, 41.031544, 25.971769>,  <33.634285, 41.162746, 25.944002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011135, 41.031544, 25.971769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162354, -0.265183, 0.950431,
		-0.293350, -0.906688, -0.303089,
		0.942118, -0.328016, 0.069413,
		34.293774, 40.933144, 25.992594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607094, 40.633495, 26.427513>,  <33.634285, 41.162746, 25.944002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607094, 40.633495, 26.427513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996582, 40.724579, 26.429449>,  <34.230274, 40.779228, 26.430611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996582, 40.724579, 26.429449>,  <33.607094, 40.633495, 26.427513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996582, 40.724579, 26.429449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005344, -0.044092, 0.999013,
		0.227693, -0.972732, -0.044150,
		0.973718, 0.227705, 0.004841,
		34.288696, 40.792889, 26.430901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004795, 40.104050, 26.782156>,  <33.607094, 40.633495, 26.427513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004795, 40.104050, 26.782156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248543, 40.420975, 26.794207>,  <34.394791, 40.611130, 26.801437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248543, 40.420975, 26.794207>,  <34.004795, 40.104050, 26.782156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248543, 40.420975, 26.794207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106176, -0.119199, 0.987177,
		0.785744, -0.598359, -0.156761,
		0.609372, 0.792312, 0.030128,
		34.431355, 40.658669, 26.803246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580654, 39.900417, 27.210205>,  <34.004795, 40.104050, 26.782156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580654, 39.900417, 27.210205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568069, 40.300049, 27.221924>,  <34.560516, 40.539825, 27.228954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568069, 40.300049, 27.221924>,  <34.580654, 39.900417, 27.210205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568069, 40.300049, 27.221924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201346, -0.022375, 0.979265,
		0.979015, 0.036712, -0.200456,
		-0.031466, 0.999075, 0.029297,
		34.558628, 40.599770, 27.230713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138924, 40.080872, 27.703897>,  <34.580654, 39.900417, 27.210205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138924, 40.080872, 27.703897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877018, 40.382969, 27.691977>,  <34.719875, 40.564228, 27.684824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877018, 40.382969, 27.691977>,  <35.138924, 40.080872, 27.703897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877018, 40.382969, 27.691977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092201, 0.118946, 0.988611,
		0.750186, 0.644561, -0.147516,
		-0.654767, 0.755243, -0.029802,
		34.680588, 40.609543, 27.683037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956493, 40.010220, 27.785599>,  <35.138924, 40.080872, 27.703897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956493, 40.010220, 27.785599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125591, 39.648964, 27.815601>,  <36.227051, 39.432213, 27.833603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125591, 39.648964, 27.815601>,  <35.956493, 40.010220, 27.785599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125591, 39.648964, 27.815601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302803, 0.062757, -0.950985,
		0.854162, 0.424741, 0.300003,
		0.422749, -0.903137, 0.075009,
		36.252415, 39.378021, 27.838104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549847, 40.139206, 27.340031>,  <35.956493, 40.010220, 27.785599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549847, 40.139206, 27.340031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519554, 39.743858, 27.392776>,  <36.501377, 39.506649, 27.424423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519554, 39.743858, 27.392776>,  <36.549847, 40.139206, 27.340031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519554, 39.743858, 27.392776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247333, -0.146730, -0.957756,
		0.965966, -0.039922, 0.255569,
		-0.075735, -0.988370, 0.131862,
		36.496834, 39.447346, 27.432335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262150, 39.911594, 27.302067>,  <36.549847, 40.139206, 27.340031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262150, 39.911594, 27.302067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963215, 39.655235, 27.231939>,  <36.783855, 39.501419, 27.189863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963215, 39.655235, 27.231939>,  <37.262150, 39.911594, 27.302067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963215, 39.655235, 27.231939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159721, 0.082840, -0.983680,
		0.644966, -0.763139, 0.040457,
		-0.747334, -0.640903, -0.175319,
		36.739014, 39.462963, 27.179344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483337, 39.440590, 26.793312>,  <37.262150, 39.911594, 27.302067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483337, 39.440590, 26.793312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088760, 39.383511, 26.760895>,  <36.852013, 39.349262, 26.741446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088760, 39.383511, 26.760895>,  <37.483337, 39.440590, 26.793312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088760, 39.383511, 26.760895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099692, -0.128800, -0.986647,
		0.130359, -0.981349, 0.141280,
		-0.986442, -0.142703, -0.081042,
		36.792828, 39.340698, 26.736582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373306, 38.792366, 26.318295>,  <37.483337, 39.440590, 26.793312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373306, 38.792366, 26.318295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031853, 39.000385, 26.330030>,  <36.826981, 39.125198, 26.337072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031853, 39.000385, 26.330030>,  <37.373306, 38.792366, 26.318295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031853, 39.000385, 26.330030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136302, -0.168655, -0.976206,
		-0.502729, -0.837318, 0.214853,
		-0.853630, 0.520052, 0.029340,
		36.775764, 39.156403, 26.338833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876099, 38.376549, 25.987297>,  <37.373306, 38.792366, 26.318295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876099, 38.376549, 25.987297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760490, 38.758865, 25.965668>,  <36.691124, 38.988255, 25.952690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760490, 38.758865, 25.965668>,  <36.876099, 38.376549, 25.987297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760490, 38.758865, 25.965668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018988, -0.062194, -0.997883,
		-0.957133, -0.287386, 0.036125,
		-0.289024, 0.955793, -0.054071,
		36.673782, 39.045605, 25.949446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393887, 38.294353, 25.486197>,  <36.876099, 38.376549, 25.987297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393887, 38.294353, 25.486197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473106, 38.685387, 25.514812>,  <36.520638, 38.920006, 25.531982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473106, 38.685387, 25.514812>,  <36.393887, 38.294353, 25.486197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473106, 38.685387, 25.514812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028147, 0.067285, -0.997337,
		-0.979788, 0.199533, -0.014190,
		0.198047, 0.977578, 0.071542,
		36.532520, 38.978661, 25.536276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050400, 38.554935, 24.968315>,  <36.393887, 38.294353, 25.486197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050400, 38.554935, 24.968315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314632, 38.839638, 25.063839>,  <36.473171, 39.010460, 25.121153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314632, 38.839638, 25.063839>,  <36.050400, 38.554935, 24.968315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314632, 38.839638, 25.063839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213969, 0.126411, -0.968627,
		-0.719615, 0.690958, -0.068788,
		0.660585, 0.711757, 0.238810,
		36.512806, 39.053165, 25.135483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978924, 39.047306, 24.359320>,  <36.050400, 38.554935, 24.968315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978924, 39.047306, 24.359320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322605, 39.129383, 24.546797>,  <36.528812, 39.178631, 24.659283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322605, 39.129383, 24.546797>,  <35.978924, 39.047306, 24.359320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322605, 39.129383, 24.546797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455760, 0.109337, -0.883362,
		-0.232508, 0.972594, 0.000422,
		0.859199, 0.205196, 0.468692,
		36.580364, 39.190941, 24.687405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297462, 39.650978, 23.997910>,  <35.978924, 39.047306, 24.359320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297462, 39.650978, 23.997910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593685, 39.489784, 24.213013>,  <36.771420, 39.393066, 24.342073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593685, 39.489784, 24.213013>,  <36.297462, 39.650978, 23.997910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593685, 39.489784, 24.213013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622484, 0.109898, -0.774878,
		0.253169, 0.908583, 0.332239,
		0.740553, -0.402989, 0.537756,
		36.815849, 39.368889, 24.374340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883221, 39.957710, 23.876310>,  <36.297462, 39.650978, 23.997910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883221, 39.957710, 23.876310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016045, 39.593452, 23.974669>,  <37.095741, 39.374897, 24.033684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016045, 39.593452, 23.974669>,  <36.883221, 39.957710, 23.876310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016045, 39.593452, 23.974669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540107, -0.030155, -0.841056,
		0.773316, 0.412093, 0.481831,
		0.332064, -0.910642, 0.245894,
		37.115665, 39.320259, 24.048437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467060, 39.987526, 23.580072>,  <36.883221, 39.957710, 23.876310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467060, 39.987526, 23.580072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414459, 39.598068, 23.654619>,  <37.382900, 39.364395, 23.699347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414459, 39.598068, 23.654619>,  <37.467060, 39.987526, 23.580072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414459, 39.598068, 23.654619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533929, -0.227963, -0.814219,
		0.835241, -0.007564, 0.549832,
		-0.131500, -0.973641, 0.186365,
		37.375008, 39.305977, 23.710529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150486, 39.702747, 23.574696>,  <37.467060, 39.987526, 23.580072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150486, 39.702747, 23.574696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878925, 39.416992, 23.506874>,  <37.715988, 39.245541, 23.466181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878925, 39.416992, 23.506874>,  <38.150486, 39.702747, 23.574696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878925, 39.416992, 23.506874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452403, -0.225121, -0.862932,
		0.578296, -0.662551, 0.476025,
		-0.678900, -0.714385, -0.169554,
		37.675255, 39.202675, 23.456009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600082, 39.240475, 23.278860>,  <38.150486, 39.702747, 23.574696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600082, 39.240475, 23.278860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241844, 39.083553, 23.194944>,  <38.026901, 38.989399, 23.144596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241844, 39.083553, 23.194944>,  <38.600082, 39.240475, 23.278860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241844, 39.083553, 23.194944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290455, -0.158438, -0.943681,
		0.336973, -0.906087, 0.255843,
		-0.895592, -0.392306, -0.209788,
		37.973167, 38.965862, 23.132008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.514631, 37.041512, 21.065031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.592651, 37.424778, 21.148819>,  <31.639463, 37.654736, 21.199091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.592651, 37.424778, 21.148819>,  <31.514631, 37.041512, 21.065031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592651, 37.424778, 21.148819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074869, -0.198402, 0.977257,
		0.977931, -0.206299, 0.033038,
		0.195052, 0.958163, 0.209469,
		31.651167, 37.712227, 21.211660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968596, 37.028469, 21.681721>,  <31.514631, 37.041512, 21.065031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968596, 37.028469, 21.681721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849634, 37.410248, 21.672003>,  <31.778257, 37.639313, 21.666172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849634, 37.410248, 21.672003>,  <31.968596, 37.028469, 21.681721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849634, 37.410248, 21.672003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003613, 0.024319, 0.999697,
		0.954744, 0.297403, -0.003784,
		-0.297405, 0.954442, -0.024293,
		31.760412, 37.696579, 21.664715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300404, 37.333832, 22.323503>,  <31.968596, 37.028469, 21.681721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300404, 37.333832, 22.323503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.019531, 37.588455, 22.195919>,  <31.851009, 37.741230, 22.119368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.019531, 37.588455, 22.195919>,  <32.300404, 37.333832, 22.323503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019531, 37.588455, 22.195919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305544, 0.135233, 0.942526,
		0.643110, 0.759277, 0.099540,
		-0.702177, 0.636562, -0.318962,
		31.808878, 37.779423, 22.100231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426838, 37.939236, 22.734272>,  <32.300404, 37.333832, 22.323503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426838, 37.939236, 22.734272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.043411, 37.921795, 22.621666>,  <31.813356, 37.911331, 22.554102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.043411, 37.921795, 22.621666>,  <32.426838, 37.939236, 22.734272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043411, 37.921795, 22.621666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279055, 0.342417, 0.897150,
		0.057282, 0.938536, -0.340395,
		-0.958565, -0.043598, -0.281517,
		31.755842, 37.908714, 22.537210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162079, 38.608490, 22.974403>,  <32.426838, 37.939236, 22.734272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162079, 38.608490, 22.974403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.855562, 38.360233, 22.907949>,  <31.671652, 38.211281, 22.868078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.855562, 38.360233, 22.907949>,  <32.162079, 38.608490, 22.974403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855562, 38.360233, 22.907949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367291, 0.211011, 0.905854,
		-0.527152, 0.755171, -0.389652,
		-0.766295, -0.620638, -0.166133,
		31.625673, 38.174042, 22.858110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542282, 38.940948, 23.229176>,  <32.162079, 38.608490, 22.974403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542282, 38.940948, 23.229176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.413774, 38.562164, 23.226252>,  <31.336670, 38.334892, 23.224497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.413774, 38.562164, 23.226252>,  <31.542282, 38.940948, 23.229176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413774, 38.562164, 23.226252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599855, 0.197525, 0.775343,
		-0.732775, 0.253479, -0.631498,
		-0.321269, -0.946959, -0.007309,
		31.317394, 38.278076, 23.224058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776638, 38.976559, 23.409985>,  <31.542282, 38.940948, 23.229176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776638, 38.976559, 23.409985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.898632, 38.602921, 23.484221>,  <30.971828, 38.378738, 23.528761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.898632, 38.602921, 23.484221>,  <30.776638, 38.976559, 23.409985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898632, 38.602921, 23.484221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379280, 0.059618, 0.923359,
		-0.873573, -0.352002, -0.336102,
		0.304987, -0.934099, 0.185588,
		30.990128, 38.322689, 23.539896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310133, 38.785000, 23.931110>,  <30.776638, 38.976559, 23.409985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310133, 38.785000, 23.931110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.579245, 38.489235, 23.941170>,  <30.740711, 38.311775, 23.947205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.579245, 38.489235, 23.941170>,  <30.310133, 38.785000, 23.931110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579245, 38.489235, 23.941170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248886, -0.194186, 0.948866,
		-0.696723, -0.644638, -0.314675,
		0.672781, -0.739415, 0.025147,
		30.781078, 38.267410, 23.948713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131258, 38.244286, 24.260931>,  <30.310133, 38.785000, 23.931110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131258, 38.244286, 24.260931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.519159, 38.160538, 24.311121>,  <30.751900, 38.110291, 24.341234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.519159, 38.160538, 24.311121>,  <30.131258, 38.244286, 24.260931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519159, 38.160538, 24.311121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126024, 0.010759, 0.991969,
		-0.209035, -0.977778, -0.015951,
		0.969753, -0.209367, 0.125473,
		30.810085, 38.097729, 24.348763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150299, 37.767639, 24.779383>,  <30.131258, 38.244286, 24.260931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150299, 37.767639, 24.779383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.527130, 37.901745, 24.783022>,  <30.753229, 37.982208, 24.785206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.527130, 37.901745, 24.783022>,  <30.150299, 37.767639, 24.779383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527130, 37.901745, 24.783022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001079, -0.030159, 0.999545,
		0.335391, -0.941640, -0.028774,
		0.942079, 0.335269, 0.009099,
		30.809753, 38.002327, 24.785751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566158, 37.388832, 25.231962>,  <30.150299, 37.767639, 24.779383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566158, 37.388832, 25.231962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.801249, 37.705433, 25.164917>,  <30.942303, 37.895393, 25.124689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.801249, 37.705433, 25.164917>,  <30.566158, 37.388832, 25.231962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801249, 37.705433, 25.164917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446784, -0.144800, 0.882846,
		0.674508, -0.593760, -0.438735,
		0.587727, 0.791506, -0.167614,
		30.977566, 37.942886, 25.114634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269844, 37.227211, 25.418257>,  <30.566158, 37.388832, 25.231962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269844, 37.227211, 25.418257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.235600, 37.624203, 25.453257>,  <31.215052, 37.862396, 25.474257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.235600, 37.624203, 25.453257>,  <31.269844, 37.227211, 25.418257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235600, 37.624203, 25.453257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453207, -0.039419, 0.890533,
		0.887284, 0.115897, -0.446424,
		-0.085613, 0.992479, 0.087501,
		31.209915, 37.921947, 25.479507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896328, 37.476521, 25.679100>,  <31.269844, 37.227211, 25.418257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896328, 37.476521, 25.679100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.644796, 37.776726, 25.760393>,  <31.493877, 37.956848, 25.809170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.644796, 37.776726, 25.760393>,  <31.896328, 37.476521, 25.679100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644796, 37.776726, 25.760393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343193, 0.033365, 0.938672,
		0.697705, 0.660013, -0.278552,
		-0.628830, 0.750513, 0.203232,
		31.456148, 38.001881, 25.821363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287155, 37.944988, 26.135998>,  <31.896328, 37.476521, 25.679100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287155, 37.944988, 26.135998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.897837, 38.027847, 26.175571>,  <31.664246, 38.077564, 26.199316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.897837, 38.027847, 26.175571>,  <32.287155, 37.944988, 26.135998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897837, 38.027847, 26.175571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113349, 0.058878, 0.991809,
		0.199628, 0.976536, -0.080786,
		-0.973294, 0.207150, 0.098936,
		31.605848, 38.089993, 26.205252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149445, 37.848938, 26.165508>,  <32.287155, 37.944988, 26.135998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149445, 37.848938, 26.165508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.292091, 37.500900, 26.301605>,  <33.377682, 37.292080, 26.383263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.292091, 37.500900, 26.301605>,  <33.149445, 37.848938, 26.165508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292091, 37.500900, 26.301605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026620, -0.354577, -0.934648,
		0.933870, 0.342371, -0.103288,
		0.356620, -0.870090, 0.340243,
		33.399078, 37.239872, 26.403679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842831, 37.688328, 25.799288>,  <33.149445, 37.848938, 26.165508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842831, 37.688328, 25.799288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694256, 37.346775, 25.945116>,  <33.605110, 37.141842, 26.032614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.694256, 37.346775, 25.945116>,  <33.842831, 37.688328, 25.799288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694256, 37.346775, 25.945116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068006, -0.416630, -0.906529,
		0.925964, -0.311927, 0.212822,
		-0.371438, -0.853886, 0.364572,
		33.582825, 37.090611, 26.054487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168003, 37.177921, 25.479399>,  <33.842831, 37.688328, 25.799288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168003, 37.177921, 25.479399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864441, 36.969582, 25.635744>,  <33.682304, 36.844578, 25.729551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864441, 36.969582, 25.635744>,  <34.168003, 37.177921, 25.479399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864441, 36.969582, 25.635744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068201, -0.533350, -0.843141,
		0.647621, -0.666521, 0.369239,
		-0.758904, -0.520853, 0.390866,
		33.636768, 36.813324, 25.753004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278618, 36.535015, 25.130711>,  <34.168003, 37.177921, 25.479399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278618, 36.535015, 25.130711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.907417, 36.539452, 25.279675>,  <33.684696, 36.542114, 25.369053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.907417, 36.539452, 25.279675>,  <34.278618, 36.535015, 25.130711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907417, 36.539452, 25.279675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321180, -0.530399, -0.784551,
		0.188824, -0.847676, 0.495774,
		-0.928003, 0.011091, 0.372408,
		33.629017, 36.542778, 25.391397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103130, 35.872040, 25.019094>,  <34.278618, 36.535015, 25.130711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103130, 35.872040, 25.019094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769920, 36.087181, 25.070904>,  <33.569992, 36.216267, 25.101990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769920, 36.087181, 25.070904>,  <34.103130, 35.872040, 25.019094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769920, 36.087181, 25.070904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337108, -0.307858, -0.889709,
		-0.438660, -0.784815, 0.437770,
		-0.833028, 0.537856, 0.129523,
		33.520012, 36.248539, 25.109760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523167, 35.483944, 24.848663>,  <34.103130, 35.872040, 25.019094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523167, 35.483944, 24.848663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.438873, 35.870083, 24.787086>,  <33.388298, 36.101765, 24.750141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.438873, 35.870083, 24.787086>,  <33.523167, 35.483944, 24.848663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438873, 35.870083, 24.787086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265028, -0.208001, -0.941539,
		-0.940932, -0.157612, 0.299676,
		-0.210731, 0.965347, -0.153943,
		33.375652, 36.159687, 24.740904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035046, 35.482357, 24.279070>,  <33.523167, 35.483944, 24.848663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035046, 35.482357, 24.279070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.145863, 35.866375, 24.294836>,  <33.212353, 36.096786, 24.304296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.145863, 35.866375, 24.294836>,  <33.035046, 35.482357, 24.279070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145863, 35.866375, 24.294836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078885, 0.063610, -0.994852,
		-0.957614, 0.272506, 0.093356,
		0.277041, 0.960049, 0.039417,
		33.228973, 36.154388, 24.306662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566376, 35.867661, 23.890535>,  <33.035046, 35.482357, 24.279070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566376, 35.867661, 23.890535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.890442, 36.102081, 23.895958>,  <33.084881, 36.242733, 23.899212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.890442, 36.102081, 23.895958>,  <32.566376, 35.867661, 23.890535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890442, 36.102081, 23.895958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100213, 0.161246, -0.981813,
		-0.577579, 0.794068, 0.189365,
		0.810161, 0.586051, 0.013556,
		33.133492, 36.277897, 23.900024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407307, 36.268787, 23.374546>,  <32.566376, 35.867661, 23.890535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407307, 36.268787, 23.374546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.799698, 36.308411, 23.441320>,  <33.035133, 36.332184, 23.481386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.799698, 36.308411, 23.441320>,  <32.407307, 36.268787, 23.374546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799698, 36.308411, 23.441320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140131, 0.233738, -0.962148,
		-0.134326, 0.967241, 0.215412,
		0.980979, 0.099055, 0.166938,
		33.093990, 36.338127, 23.491402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593075, 36.805153, 22.873064>,  <32.407307, 36.268787, 23.374546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593075, 36.805153, 22.873064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.926537, 36.602543, 22.961121>,  <33.126614, 36.480976, 23.013954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.926537, 36.602543, 22.961121>,  <32.593075, 36.805153, 22.873064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926537, 36.602543, 22.961121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368068, 0.212360, -0.905223,
		0.411767, 0.835666, 0.363469,
		0.833651, -0.506522, 0.220140,
		33.176632, 36.450584, 23.027163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092022, 37.171913, 22.542545>,  <32.593075, 36.805153, 22.873064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092022, 37.171913, 22.542545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.289917, 36.837967, 22.639078>,  <33.408653, 36.637600, 22.696999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.289917, 36.837967, 22.639078>,  <33.092022, 37.171913, 22.542545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289917, 36.837967, 22.639078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528257, 0.068395, -0.846325,
		0.690060, 0.546191, 0.474860,
		0.494733, -0.834864, 0.241333,
		33.438335, 36.587509, 22.711477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784073, 37.311653, 22.592014>,  <33.092022, 37.171913, 22.542545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784073, 37.311653, 22.592014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.729778, 36.926384, 22.499178>,  <33.697201, 36.695221, 22.443476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.729778, 36.926384, 22.499178>,  <33.784073, 37.311653, 22.592014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729778, 36.926384, 22.499178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565993, 0.116882, -0.816082,
		0.813159, -0.242136, 0.529285,
		-0.135739, -0.963176, -0.232091,
		33.689056, 36.637432, 22.429550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471630, 37.056782, 22.383451>,  <33.784073, 37.311653, 22.592014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471630, 37.056782, 22.383451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.175617, 36.834682, 22.231630>,  <33.998009, 36.701424, 22.140537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.175617, 36.834682, 22.231630>,  <34.471630, 37.056782, 22.383451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175617, 36.834682, 22.231630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382895, 0.116148, -0.916461,
		0.552947, -0.823535, 0.126649,
		-0.740028, -0.555248, -0.379550,
		33.953609, 36.668110, 22.117765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788704, 36.580791, 21.844255>,  <34.471630, 37.056782, 22.383451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788704, 36.580791, 21.844255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400005, 36.571041, 21.750345>,  <34.166786, 36.565193, 21.693998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400005, 36.571041, 21.750345>,  <34.788704, 36.580791, 21.844255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400005, 36.571041, 21.750345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219044, 0.277452, -0.935436,
		0.087939, -0.960430, -0.264274,
		-0.971744, -0.024374, -0.234775,
		34.108482, 36.563728, 21.679913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290142, 36.032196, 21.474140>,  <34.788704, 36.580791, 21.844255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290142, 36.032196, 21.474140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.633492, 35.877869, 21.338888>,  <35.839500, 35.785271, 21.257738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.633492, 35.877869, 21.338888>,  <35.290142, 36.032196, 21.474140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633492, 35.877869, 21.338888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265028, -0.230837, 0.936202,
		-0.439258, -0.893229, -0.095892,
		0.858378, -0.385820, -0.338128,
		35.891006, 35.762123, 21.237450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346943, 35.435970, 21.793272>,  <35.290142, 36.032196, 21.474140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346943, 35.435970, 21.793272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719604, 35.504551, 21.665127>,  <35.943199, 35.545700, 21.588240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719604, 35.504551, 21.665127>,  <35.346943, 35.435970, 21.793272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719604, 35.504551, 21.665127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363223, -0.415517, 0.833915,
		0.009861, -0.893280, -0.449392,
		0.931650, 0.171452, -0.320362,
		35.999100, 35.555988, 21.569017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673527, 34.803055, 21.973326>,  <35.346943, 35.435970, 21.793272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673527, 34.803055, 21.973326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932007, 35.107738, 21.954424>,  <36.087093, 35.290546, 21.943083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932007, 35.107738, 21.954424>,  <35.673527, 34.803055, 21.973326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932007, 35.107738, 21.954424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343196, -0.234729, 0.909461,
		0.681649, -0.603909, -0.413095,
		0.646197, 0.761706, -0.047256,
		36.125866, 35.336250, 21.940247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380730, 34.520905, 22.088415>,  <35.673527, 34.803055, 21.973326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380730, 34.520905, 22.088415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352303, 34.909279, 22.179827>,  <36.335247, 35.142303, 22.234674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352303, 34.909279, 22.179827>,  <36.380730, 34.520905, 22.088415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352303, 34.909279, 22.179827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241527, -0.205541, 0.948376,
		0.967788, 0.122599, -0.219900,
		-0.071071, 0.970939, 0.228531,
		36.330982, 35.200562, 22.248386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953129, 34.726135, 22.477757>,  <36.380730, 34.520905, 22.088415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953129, 34.726135, 22.477757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710361, 35.032169, 22.563828>,  <36.564701, 35.215790, 22.615471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710361, 35.032169, 22.563828>,  <36.953129, 34.726135, 22.477757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710361, 35.032169, 22.563828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243282, -0.078906, 0.966741,
		0.756615, 0.639079, -0.138241,
		-0.606916, 0.765082, 0.215178,
		36.528286, 35.261696, 22.628382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313862, 35.072029, 23.004906>,  <36.953129, 34.726135, 22.477757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313862, 35.072029, 23.004906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949348, 35.232380, 23.042543>,  <36.730640, 35.328590, 23.065125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949348, 35.232380, 23.042543>,  <37.313862, 35.072029, 23.004906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949348, 35.232380, 23.042543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145673, 0.100130, 0.984253,
		0.385145, 0.910643, -0.149644,
		-0.911286, 0.400880, 0.094092,
		36.675964, 35.352642, 23.070770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433521, 35.629124, 23.460783>,  <37.313862, 35.072029, 23.004906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433521, 35.629124, 23.460783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051609, 35.511307, 23.477007>,  <36.822464, 35.440617, 23.486742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051609, 35.511307, 23.477007>,  <37.433521, 35.629124, 23.460783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051609, 35.511307, 23.477007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074298, -0.104264, 0.991770,
		-0.287891, 0.949933, 0.121433,
		-0.954777, -0.294544, 0.040562,
		36.765175, 35.422943, 23.489176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160755, 35.951954, 24.061998>,  <37.433521, 35.629124, 23.460783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160755, 35.951954, 24.061998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878670, 35.670498, 24.027195>,  <36.709419, 35.501625, 24.006313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878670, 35.670498, 24.027195>,  <37.160755, 35.951954, 24.061998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878670, 35.670498, 24.027195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064446, -0.185828, 0.980467,
		-0.706062, 0.685829, 0.176394,
		-0.705212, -0.703638, -0.087007,
		36.667107, 35.459408, 24.001093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585537, 36.080063, 24.504967>,  <37.160755, 35.951954, 24.061998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585537, 36.080063, 24.504967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552029, 35.683670, 24.463150>,  <36.531925, 35.445835, 24.438059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552029, 35.683670, 24.463150>,  <36.585537, 36.080063, 24.504967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552029, 35.683670, 24.463150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105099, -0.095540, 0.989862,
		-0.990927, 0.093910, -0.096148,
		-0.083772, -0.990986, -0.104543,
		36.526897, 35.386375, 24.431787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982258, 35.918171, 24.920029>,  <36.585537, 36.080063, 24.504967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982258, 35.918171, 24.920029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.225174, 35.605286, 24.864407>,  <36.370926, 35.417553, 24.831034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.225174, 35.605286, 24.864407>,  <35.982258, 35.918171, 24.920029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225174, 35.605286, 24.864407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035467, -0.201544, 0.978837,
		-0.793687, -0.589508, -0.150138,
		0.607292, -0.782215, -0.139055,
		36.407360, 35.370621, 24.822691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541512, 35.481987, 25.199070>,  <35.982258, 35.918171, 24.920029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541512, 35.481987, 25.199070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.911892, 35.330956, 25.201984>,  <36.134121, 35.240337, 25.203733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.911892, 35.330956, 25.201984>,  <35.541512, 35.481987, 25.199070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911892, 35.330956, 25.201984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079451, -0.175906, 0.981196,
		-0.369193, -0.909118, -0.192879,
		0.925950, -0.377575, 0.007287,
		36.189678, 35.217682, 25.204170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494560, 34.879456, 25.646458>,  <35.541512, 35.481987, 25.199070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494560, 34.879456, 25.646458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.889782, 34.936199, 25.622355>,  <36.126915, 34.970245, 25.607893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.889782, 34.936199, 25.622355>,  <35.494560, 34.879456, 25.646458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889782, 34.936199, 25.622355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086685, -0.188211, 0.978296,
		0.127440, -0.971829, -0.198259,
		0.988051, 0.141860, -0.060258,
		36.186195, 34.978756, 25.604277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779701, 34.512417, 26.322208>,  <35.494560, 34.879456, 25.646458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779701, 34.512417, 26.322208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073978, 34.753162, 26.197935>,  <36.250546, 34.897610, 26.123371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073978, 34.753162, 26.197935>,  <35.779701, 34.512417, 26.322208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073978, 34.753162, 26.197935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192880, 0.253538, 0.947900,
		0.649275, -0.757285, 0.070439,
		0.735690, 0.601862, -0.310681,
		36.294685, 34.933720, 26.104731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318840, 34.304626, 26.749002>,  <35.779701, 34.512417, 26.322208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318840, 34.304626, 26.749002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404697, 34.669979, 26.610638>,  <36.456211, 34.889191, 26.527618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.404697, 34.669979, 26.610638>,  <36.318840, 34.304626, 26.749002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404697, 34.669979, 26.610638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218711, 0.300223, 0.928456,
		0.951890, -0.274940, -0.135327,
		0.214642, 0.913386, -0.345912,
		36.469090, 34.943996, 26.506865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.690491, 38.528389, 22.886213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327366, 38.658138, 22.779884>,  <38.109493, 38.735989, 22.716087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327366, 38.658138, 22.779884>,  <38.690491, 38.528389, 22.886213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327366, 38.658138, 22.779884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193549, -0.238258, -0.951720,
		-0.372050, -0.915430, 0.153510,
		-0.907809, 0.324376, -0.265825,
		38.055023, 38.755451, 22.700136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590160, 38.115570, 22.365250>,  <38.690491, 38.528389, 22.886213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590160, 38.115570, 22.365250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.302223, 38.388783, 22.315781>,  <38.129459, 38.552711, 22.286098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.302223, 38.388783, 22.315781>,  <38.590160, 38.115570, 22.365250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302223, 38.388783, 22.315781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082773, -0.092432, -0.992273,
		-0.689186, -0.724516, 0.010000,
		-0.719841, 0.683033, -0.123673,
		38.086269, 38.593693, 22.278679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020840, 37.820683, 21.945646>,  <38.590160, 38.115570, 22.365250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020840, 37.820683, 21.945646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.007408, 38.218708, 21.908297>,  <37.999348, 38.457523, 21.885887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.007408, 38.218708, 21.908297>,  <38.020840, 37.820683, 21.945646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007408, 38.218708, 21.908297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049573, -0.094970, -0.994245,
		-0.998206, -0.028757, 0.052517,
		-0.033579, 0.995065, -0.093374,
		37.997334, 38.517227, 21.880285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550613, 37.929531, 21.417282>,  <38.020840, 37.820683, 21.945646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550613, 37.929531, 21.417282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754723, 38.272999, 21.436455>,  <37.877190, 38.479080, 21.447958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754723, 38.272999, 21.436455>,  <37.550613, 37.929531, 21.417282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754723, 38.272999, 21.436455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149723, -0.033816, -0.988150,
		-0.846877, 0.511407, -0.145818,
		0.510277, 0.858673, 0.047931,
		37.907806, 38.530602, 21.450834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231064, 38.455688, 20.899897>,  <37.550613, 37.929531, 21.417282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231064, 38.455688, 20.899897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602467, 38.575386, 20.987835>,  <37.825306, 38.647205, 21.040598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602467, 38.575386, 20.987835>,  <37.231064, 38.455688, 20.899897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602467, 38.575386, 20.987835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187329, 0.133697, -0.973156,
		-0.320604, 0.944763, 0.068081,
		0.928505, 0.299244, 0.219845,
		37.881020, 38.665161, 21.053789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287766, 39.202900, 20.665318>,  <37.231064, 38.455688, 20.899897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287766, 39.202900, 20.665318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660652, 39.060928, 20.693569>,  <37.884384, 38.975746, 20.710520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660652, 39.060928, 20.693569>,  <37.287766, 39.202900, 20.665318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660652, 39.060928, 20.693569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160285, 0.229974, -0.959906,
		0.324458, 0.906165, 0.271277,
		0.932221, -0.354931, 0.070628,
		37.940319, 38.954449, 20.714758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691685, 39.694973, 20.347132>,  <37.287766, 39.202900, 20.665318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691685, 39.694973, 20.347132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912167, 39.362003, 20.324352>,  <38.044456, 39.162220, 20.310684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912167, 39.362003, 20.324352>,  <37.691685, 39.694973, 20.347132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912167, 39.362003, 20.324352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206889, 0.202480, -0.957183,
		0.808314, 0.515820, 0.283827,
		0.551203, -0.832425, -0.056950,
		38.077526, 39.112274, 20.307268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169281, 39.878281, 19.913279>,  <37.691685, 39.694973, 20.347132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169281, 39.878281, 19.913279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250446, 39.486973, 19.896208>,  <38.299145, 39.252190, 19.885965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250446, 39.486973, 19.896208>,  <38.169281, 39.878281, 19.913279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250446, 39.486973, 19.896208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219905, 0.087996, -0.971544,
		0.954185, 0.187753, 0.232981,
		0.202912, -0.978266, -0.042677,
		38.311321, 39.193493, 19.883406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846291, 39.697876, 19.505764>,  <38.169281, 39.878281, 19.913279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846291, 39.697876, 19.505764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640568, 39.354847, 19.502613>,  <38.517136, 39.149029, 19.500723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640568, 39.354847, 19.502613>,  <38.846291, 39.697876, 19.505764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640568, 39.354847, 19.502613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244853, -0.138028, -0.959685,
		0.821910, -0.495502, 0.280967,
		-0.514307, -0.857570, -0.007879,
		38.486275, 39.097576, 19.500250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341309, 39.282848, 19.076170>,  <38.846291, 39.697876, 19.505764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341309, 39.282848, 19.076170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001785, 39.071430, 19.081400>,  <38.798073, 38.944580, 19.084538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001785, 39.071430, 19.081400>,  <39.341309, 39.282848, 19.076170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001785, 39.071430, 19.081400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108281, -0.197995, -0.974204,
		0.517501, -0.825492, 0.225291,
		-0.848804, -0.528546, 0.013077,
		38.747143, 38.912865, 19.085323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477722, 38.706844, 18.540422>,  <39.341309, 39.282848, 19.076170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477722, 38.706844, 18.540422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080135, 38.726585, 18.579590>,  <38.841583, 38.738430, 18.603090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.080135, 38.726585, 18.579590>,  <39.477722, 38.706844, 18.540422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080135, 38.726585, 18.579590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104660, -0.160645, -0.981448,
		-0.032703, -0.985778, 0.164841,
		-0.993970, 0.049348, 0.097918,
		38.781944, 38.741390, 18.608965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124889, 38.119064, 18.170078>,  <39.477722, 38.706844, 18.540422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124889, 38.119064, 18.170078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.868896, 38.426411, 18.167633>,  <38.715302, 38.610817, 18.166166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.868896, 38.426411, 18.167633>,  <39.124889, 38.119064, 18.170078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868896, 38.426411, 18.167633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194057, -0.169323, -0.966267,
		-0.743479, -0.617210, 0.257471,
		-0.639985, 0.768363, -0.006114,
		38.676903, 38.656921, 18.165798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548103, 37.832611, 17.857483>,  <39.124889, 38.119064, 18.170078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548103, 37.832611, 17.857483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619839, 38.225697, 17.839130>,  <38.662880, 38.461548, 17.828119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619839, 38.225697, 17.839130>,  <38.548103, 37.832611, 17.857483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619839, 38.225697, 17.839130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027837, -0.041547, -0.998748,
		-0.983393, 0.180395, 0.019905,
		0.179342, 0.982716, -0.045879,
		38.673641, 38.520512, 17.825367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342861, 37.808525, 17.086641>,  <38.548103, 37.832611, 17.857483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342861, 37.808525, 17.086641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352432, 38.203178, 17.151121>,  <38.358173, 38.439968, 17.189810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352432, 38.203178, 17.151121>,  <38.342861, 37.808525, 17.086641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352432, 38.203178, 17.151121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633244, -0.109817, 0.766121,
		0.773582, -0.120409, 0.622151,
		0.023925, 0.986632, 0.161200,
		38.359612, 38.499168, 17.199482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926434, 38.221729, 16.699249>,  <38.342861, 37.808525, 17.086641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926434, 38.221729, 16.699249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.790894, 37.951836, 16.436977>,  <37.709568, 37.789902, 16.279613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.790894, 37.951836, 16.436977>,  <37.926434, 38.221729, 16.699249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790894, 37.951836, 16.436977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667278, -0.318952, 0.673060,
		-0.663266, 0.665588, -0.342158,
		-0.338848, -0.674732, -0.655682,
		37.689240, 37.749416, 16.240273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259605, 38.266415, 16.831062>,  <37.926434, 38.221729, 16.699249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259605, 38.266415, 16.831062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302937, 37.912525, 16.649723>,  <37.328938, 37.700191, 16.540918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302937, 37.912525, 16.649723>,  <37.259605, 38.266415, 16.831062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302937, 37.912525, 16.649723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564094, -0.430213, 0.704780,
		-0.818573, 0.179383, -0.545673,
		0.108330, -0.884725, -0.453350,
		37.335434, 37.647106, 16.513718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675442, 37.975475, 17.156092>,  <37.259605, 38.266415, 16.831062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675442, 37.975475, 17.156092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913017, 37.709774, 16.974541>,  <37.055565, 37.550354, 16.865610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.913017, 37.709774, 16.974541>,  <36.675442, 37.975475, 17.156092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913017, 37.709774, 16.974541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409406, -0.735211, 0.540233,
		-0.692549, -0.135044, -0.708618,
		0.593939, -0.664250, -0.453882,
		37.091198, 37.510498, 16.838377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199066, 37.401348, 16.777534>,  <36.675442, 37.975475, 17.156092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199066, 37.401348, 16.777534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559948, 37.269913, 16.889282>,  <36.776478, 37.191051, 16.956331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559948, 37.269913, 16.889282>,  <36.199066, 37.401348, 16.777534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559948, 37.269913, 16.889282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420552, -0.526522, 0.738858,
		-0.095686, -0.784094, -0.613222,
		0.902209, -0.328590, 0.279372,
		36.830612, 37.171337, 16.973093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033302, 36.781433, 17.036631>,  <36.199066, 37.401348, 16.777534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033302, 36.781433, 17.036631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.405060, 36.782471, 17.184259>,  <36.628117, 36.783092, 17.272837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.405060, 36.782471, 17.184259>,  <36.033302, 36.781433, 17.036631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405060, 36.782471, 17.184259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272585, -0.669345, 0.691139,
		0.248831, -0.742947, -0.621380,
		0.929398, 0.002598, 0.369070,
		36.683880, 36.783249, 17.294981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099655, 36.091351, 17.216328>,  <36.033302, 36.781433, 17.036631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099655, 36.091351, 17.216328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401646, 36.248627, 17.426249>,  <36.582840, 36.342991, 17.552200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401646, 36.248627, 17.426249>,  <36.099655, 36.091351, 17.216328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401646, 36.248627, 17.426249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341936, -0.446840, 0.826688,
		0.559547, -0.803577, -0.202906,
		0.754974, 0.393190, 0.524800,
		36.628139, 36.366585, 17.583689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413967, 35.568230, 17.681936>,  <36.099655, 36.091351, 17.216328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413967, 35.568230, 17.681936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.512154, 35.927647, 17.827465>,  <36.571064, 36.143295, 17.914782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.512154, 35.927647, 17.827465>,  <36.413967, 35.568230, 17.681936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512154, 35.927647, 17.827465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351422, -0.267296, 0.897249,
		0.903465, -0.348097, 0.250157,
		0.245464, 0.898543, 0.363822,
		36.585793, 36.197208, 17.936611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916393, 35.542645, 18.272612>,  <36.413967, 35.568230, 17.681936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916393, 35.542645, 18.272612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.718090, 35.883972, 18.337210>,  <36.599110, 36.088768, 18.375969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.718090, 35.883972, 18.337210>,  <36.916393, 35.542645, 18.272612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718090, 35.883972, 18.337210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101354, -0.241532, 0.965085,
		0.862529, 0.462076, 0.206227,
		-0.495753, 0.853316, 0.161495,
		36.569363, 36.139965, 18.385658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293617, 35.878830, 18.735214>,  <36.916393, 35.542645, 18.272612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293617, 35.878830, 18.735214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916714, 36.008633, 18.768322>,  <36.690571, 36.086514, 18.788187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916714, 36.008633, 18.768322>,  <37.293617, 35.878830, 18.735214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916714, 36.008633, 18.768322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052274, -0.101607, 0.993450,
		0.330792, 0.940410, 0.078777,
		-0.942255, 0.324507, 0.082770,
		36.634037, 36.105984, 18.793154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173634, 35.984268, 19.355804>,  <37.293617, 35.878830, 18.735214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173634, 35.984268, 19.355804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.786160, 36.034130, 19.269913>,  <36.553677, 36.064049, 19.218378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.786160, 36.034130, 19.269913>,  <37.173634, 35.984268, 19.355804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786160, 36.034130, 19.269913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234412, -0.174058, 0.956428,
		0.081846, 0.976814, 0.197828,
		-0.968686, 0.124653, -0.214731,
		36.495552, 36.071526, 19.205494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880009, 36.485828, 19.826693>,  <37.173634, 35.984268, 19.355804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880009, 36.485828, 19.826693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568577, 36.266296, 19.704971>,  <36.381718, 36.134579, 19.631939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568577, 36.266296, 19.704971>,  <36.880009, 36.485828, 19.826693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568577, 36.266296, 19.704971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256173, -0.164711, 0.952495,
		-0.572879, 0.819547, -0.012354,
		-0.778579, -0.548829, -0.304305,
		36.335003, 36.101646, 19.613680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353924, 36.746483, 20.156847>,  <36.880009, 36.485828, 19.826693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353924, 36.746483, 20.156847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221340, 36.381420, 20.061188>,  <36.141788, 36.162384, 20.003792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221340, 36.381420, 20.061188>,  <36.353924, 36.746483, 20.156847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221340, 36.381420, 20.061188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215482, -0.173548, 0.960962,
		-0.918532, 0.370053, -0.139136,
		-0.331460, -0.912656, -0.239149,
		36.121902, 36.107624, 19.989443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785625, 36.757439, 20.435699>,  <36.353924, 36.746483, 20.156847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785625, 36.757439, 20.435699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887917, 36.372253, 20.401537>,  <35.949291, 36.141140, 20.381039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887917, 36.372253, 20.401537>,  <35.785625, 36.757439, 20.435699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887917, 36.372253, 20.401537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047407, -0.100731, 0.993783,
		-0.965585, -0.250093, -0.071412,
		0.255732, -0.962967, -0.085408,
		35.964638, 36.083363, 20.375914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295639, 36.328995, 20.818344>,  <35.785625, 36.757439, 20.435699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295639, 36.328995, 20.818344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614006, 36.090931, 20.773972>,  <35.805027, 35.948093, 20.747349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614006, 36.090931, 20.773972>,  <35.295639, 36.328995, 20.818344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614006, 36.090931, 20.773972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027058, -0.218018, 0.975570,
		-0.604802, -0.773470, -0.189628,
		0.795916, -0.595158, -0.110929,
		35.852779, 35.912384, 20.740692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636425, 35.951637, 20.934048>,  <35.295639, 36.328995, 20.818344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636425, 35.951637, 20.934048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294292, 36.147724, 21.001085>,  <34.089012, 36.265377, 21.041307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.294292, 36.147724, 21.001085>,  <34.636425, 35.951637, 20.934048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294292, 36.147724, 21.001085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011263, 0.305823, -0.952022,
		-0.517954, -0.816184, -0.256060,
		-0.855334, 0.490220, 0.167595,
		34.037693, 36.294788, 21.051363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201439, 35.800575, 20.373615>,  <34.636425, 35.951637, 20.934048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201439, 35.800575, 20.373615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039333, 36.133801, 20.524221>,  <33.942070, 36.333736, 20.614584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039333, 36.133801, 20.524221>,  <34.201439, 35.800575, 20.373615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039333, 36.133801, 20.524221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287175, 0.274997, -0.917555,
		-0.867923, -0.479980, 0.127788,
		-0.405266, 0.833064, 0.376514,
		33.917755, 36.383720, 20.637177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620735, 35.878380, 20.087236>,  <34.201439, 35.800575, 20.373615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620735, 35.878380, 20.087236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.674999, 36.250050, 20.224777>,  <33.707558, 36.473053, 20.307301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.674999, 36.250050, 20.224777>,  <33.620735, 35.878380, 20.087236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674999, 36.250050, 20.224777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355004, 0.369600, -0.858701,
		-0.924970, -0.005580, 0.379999,
		0.135657, 0.929174, 0.343850,
		33.715694, 36.528801, 20.327932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970974, 36.323418, 19.810019>,  <33.620735, 35.878380, 20.087236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970974, 36.323418, 19.810019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.266296, 36.575203, 19.906919>,  <33.443489, 36.726273, 19.965059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.266296, 36.575203, 19.906919>,  <32.970974, 36.323418, 19.810019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266296, 36.575203, 19.906919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139249, 0.493691, -0.858417,
		-0.659940, 0.600037, 0.452145,
		0.738301, 0.629464, 0.242251,
		33.487785, 36.764042, 19.979595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700470, 36.862747, 19.466841>,  <32.970974, 36.323418, 19.810019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700470, 36.862747, 19.466841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087654, 36.943512, 19.526548>,  <33.319965, 36.991970, 19.562374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087654, 36.943512, 19.526548>,  <32.700470, 36.862747, 19.466841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087654, 36.943512, 19.526548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046638, 0.439556, -0.897004,
		-0.246729, 0.875227, 0.416056,
		0.967962, 0.201913, 0.149270,
		33.378044, 37.004086, 19.571329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800743, 37.418701, 19.031656>,  <32.700470, 36.862747, 19.466841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800743, 37.418701, 19.031656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176556, 37.296700, 19.093939>,  <33.402042, 37.223499, 19.131310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176556, 37.296700, 19.093939>,  <32.800743, 37.418701, 19.031656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176556, 37.296700, 19.093939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305290, 0.539991, -0.784352,
		0.155151, 0.784462, 0.600456,
		0.939535, -0.305006, 0.155708,
		33.458416, 37.205196, 19.140652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315346, 38.047215, 19.026119>,  <32.800743, 37.418701, 19.031656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315346, 38.047215, 19.026119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.482746, 37.697376, 18.928190>,  <33.583187, 37.487473, 18.869432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.482746, 37.697376, 18.928190>,  <33.315346, 38.047215, 19.026119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482746, 37.697376, 18.928190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213546, 0.356768, -0.909458,
		0.882752, 0.328331, 0.336076,
		0.418505, -0.874594, -0.244824,
		33.608299, 37.434998, 18.854744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200996, 38.877605, 18.968662>,  <33.315346, 38.047215, 19.026119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200996, 38.877605, 18.968662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812321, 38.860863, 18.875647>,  <32.579117, 38.850815, 18.819838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812321, 38.860863, 18.875647>,  <33.200996, 38.877605, 18.968662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812321, 38.860863, 18.875647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227623, -0.098080, 0.968797,
		-0.063360, 0.994298, 0.085775,
		-0.971686, -0.041859, -0.232539,
		32.520817, 38.848305, 18.805885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761208, 39.340153, 19.462620>,  <33.200996, 38.877605, 18.968662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761208, 39.340153, 19.462620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.484623, 39.080212, 19.336403>,  <32.318672, 38.924248, 19.260674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.484623, 39.080212, 19.336403>,  <32.761208, 39.340153, 19.462620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484623, 39.080212, 19.336403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427065, 0.015426, 0.904089,
		-0.582658, 0.759903, -0.288196,
		-0.691466, -0.649853, -0.315540,
		32.277184, 38.885254, 19.241741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154331, 39.500053, 19.959984>,  <32.761208, 39.340153, 19.462620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154331, 39.500053, 19.959984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041866, 39.172245, 19.760250>,  <31.974386, 38.975559, 19.640409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041866, 39.172245, 19.760250>,  <32.154331, 39.500053, 19.959984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041866, 39.172245, 19.760250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346775, -0.398405, 0.849129,
		-0.894815, 0.411901, -0.172172,
		-0.281163, -0.819519, -0.499336,
		31.957518, 38.926388, 19.610449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547785, 39.366589, 20.142635>,  <32.154331, 39.500053, 19.959984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547785, 39.366589, 20.142635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.694838, 39.015717, 20.019087>,  <31.783070, 38.805195, 19.944958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.694838, 39.015717, 20.019087>,  <31.547785, 39.366589, 20.142635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694838, 39.015717, 20.019087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174548, -0.391312, 0.903553,
		-0.913445, -0.278260, -0.296968,
		0.367630, -0.877181, -0.308872,
		31.805126, 38.752563, 19.926426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989985, 38.791290, 20.309065>,  <31.547785, 39.366589, 20.142635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989985, 38.791290, 20.309065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.335173, 38.602173, 20.237797>,  <31.542286, 38.488701, 20.195036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.335173, 38.602173, 20.237797>,  <30.989985, 38.791290, 20.309065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335173, 38.602173, 20.237797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162887, -0.594144, 0.787693,
		-0.478275, -0.650735, -0.589743,
		0.862972, -0.472795, -0.178168,
		31.594065, 38.460335, 20.184347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818518, 38.095062, 20.291885>,  <30.989985, 38.791290, 20.309065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818518, 38.095062, 20.291885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.208387, 38.143620, 20.367010>,  <31.442308, 38.172752, 20.412085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.208387, 38.143620, 20.367010>,  <30.818518, 38.095062, 20.291885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208387, 38.143620, 20.367010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091854, -0.548407, 0.831152,
		0.203893, -0.827353, -0.523367,
		0.974675, 0.121393, 0.187812,
		31.500790, 38.180038, 20.423353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092192, 37.446835, 20.641541>,  <30.818518, 38.095062, 20.291885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092192, 37.446835, 20.641541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347368, 37.729908, 20.763006>,  <31.500475, 37.899754, 20.835886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.347368, 37.729908, 20.763006>,  <31.092192, 37.446835, 20.641541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347368, 37.729908, 20.763006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171893, -0.515237, 0.839633,
		0.750656, -0.483438, -0.450337,
		0.637941, 0.707686, 0.303666,
		31.538750, 37.942215, 20.854107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.854179, 40.655273, 17.564278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082027, 40.482964, 17.844267>,  <37.218735, 40.379578, 18.012260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082027, 40.482964, 17.844267>,  <36.854179, 40.655273, 17.564278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082027, 40.482964, 17.844267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744139, 0.091312, 0.661755,
		-0.348986, -0.897826, -0.268546,
		0.569619, -0.430778, 0.699974,
		37.252914, 40.353729, 18.054258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389362, 40.193226, 17.954823>,  <36.854179, 40.655273, 17.564278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389362, 40.193226, 17.954823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.700172, 40.210060, 18.206047>,  <36.886658, 40.220161, 18.356783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.700172, 40.210060, 18.206047>,  <36.389362, 40.193226, 17.954823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700172, 40.210060, 18.206047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627907, 0.122141, 0.768645,
		-0.044367, -0.991620, 0.121330,
		0.777023, 0.042081, 0.628064,
		36.933281, 40.222687, 18.394466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192669, 39.763317, 18.518702>,  <36.389362, 40.193226, 17.954823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192669, 39.763317, 18.518702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.488586, 39.969475, 18.691704>,  <36.666138, 40.093170, 18.795506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.488586, 39.969475, 18.691704>,  <36.192669, 39.763317, 18.518702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488586, 39.969475, 18.691704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411869, -0.161404, 0.896835,
		0.532036, -0.841613, 0.092870,
		0.739798, 0.515399, 0.432508,
		36.710526, 40.124096, 18.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230572, 39.450623, 19.085020>,  <36.192669, 39.763317, 18.518702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230572, 39.450623, 19.085020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.395744, 39.808823, 19.151423>,  <36.494850, 40.023743, 19.191265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.395744, 39.808823, 19.151423>,  <36.230572, 39.450623, 19.085020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395744, 39.808823, 19.151423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477001, 0.057371, 0.877028,
		0.775858, -0.441341, 0.450847,
		0.412934, 0.895504, 0.166008,
		36.519623, 40.077473, 19.201225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401741, 39.408310, 19.761480>,  <36.230572, 39.450623, 19.085020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401741, 39.408310, 19.761480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.349949, 39.794430, 19.670774>,  <36.318874, 40.026104, 19.616350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.349949, 39.794430, 19.670774>,  <36.401741, 39.408310, 19.761480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349949, 39.794430, 19.670774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375234, 0.163983, 0.912310,
		0.917842, 0.203217, 0.340982,
		-0.129482, 0.965304, -0.226765,
		36.311104, 40.084023, 19.602745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710846, 39.728874, 20.335045>,  <36.401741, 39.408310, 19.761480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710846, 39.728874, 20.335045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481564, 40.013546, 20.172586>,  <36.343994, 40.184349, 20.075111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481564, 40.013546, 20.172586>,  <36.710846, 39.728874, 20.335045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481564, 40.013546, 20.172586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319941, 0.261929, 0.910511,
		0.754371, 0.651850, 0.077556,
		-0.573203, 0.711677, -0.406146,
		36.309601, 40.227051, 20.050743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755241, 40.310009, 20.744963>,  <36.710846, 39.728874, 20.335045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755241, 40.310009, 20.744963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.405544, 40.386429, 20.566435>,  <36.195724, 40.432281, 20.459318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.405544, 40.386429, 20.566435>,  <36.755241, 40.310009, 20.744963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405544, 40.386429, 20.566435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452813, 0.010704, 0.891541,
		0.175107, 0.981522, 0.077153,
		-0.874241, 0.191051, -0.446320,
		36.143272, 40.443745, 20.432539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575314, 40.931717, 21.073175>,  <36.755241, 40.310009, 20.744963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575314, 40.931717, 21.073175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.252247, 40.765186, 20.906157>,  <36.058407, 40.665268, 20.805944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.252247, 40.765186, 20.906157>,  <36.575314, 40.931717, 21.073175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252247, 40.765186, 20.906157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519943, 0.168887, 0.837339,
		-0.278085, 0.893393, -0.352870,
		-0.807668, -0.416324, -0.417549,
		36.009945, 40.640289, 20.780891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052860, 41.465260, 21.097017>,  <36.575314, 40.931717, 21.073175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052860, 41.465260, 21.097017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.869312, 41.110561, 21.074690>,  <35.759186, 40.897743, 21.061293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.869312, 41.110561, 21.074690>,  <36.052860, 41.465260, 21.097017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869312, 41.110561, 21.074690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491941, 0.201246, 0.847050,
		-0.739889, 0.416143, -0.528573,
		-0.458867, -0.886750, -0.055818,
		35.731651, 40.844536, 21.057945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449944, 41.591316, 21.389278>,  <36.052860, 41.465260, 21.097017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449944, 41.591316, 21.389278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.446583, 41.191418, 21.397568>,  <35.444569, 40.951477, 21.402540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.446583, 41.191418, 21.397568>,  <35.449944, 41.591316, 21.389278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446583, 41.191418, 21.397568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436016, 0.022310, 0.899662,
		-0.899900, -0.001479, -0.436094,
		-0.008399, -0.999750, 0.020722,
		35.444065, 40.891491, 21.403784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708031, 41.424843, 21.623934>,  <35.449944, 41.591316, 21.389278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708031, 41.424843, 21.623934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.929024, 41.096962, 21.684401>,  <35.061619, 40.900234, 21.720680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.929024, 41.096962, 21.684401>,  <34.708031, 41.424843, 21.623934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929024, 41.096962, 21.684401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430977, -0.125691, 0.893566,
		-0.713456, -0.558833, -0.422714,
		0.552486, -0.819700, 0.151168,
		35.094769, 40.851051, 21.729752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262875, 40.887520, 21.664812>,  <34.708031, 41.424843, 21.623934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262875, 40.887520, 21.664812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.595177, 40.778618, 21.859018>,  <34.794559, 40.713276, 21.975542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.595177, 40.778618, 21.859018>,  <34.262875, 40.887520, 21.664812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595177, 40.778618, 21.859018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508821, -0.017728, 0.860690,
		-0.225719, -0.962062, -0.153257,
		0.830754, -0.272254, 0.485516,
		34.844402, 40.696941, 22.004673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710388, 40.340576, 21.578903>,  <34.262875, 40.887520, 21.664812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710388, 40.340576, 21.578903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.421631, 40.616425, 21.555937>,  <33.248375, 40.781933, 21.542156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.421631, 40.616425, 21.555937>,  <33.710388, 40.340576, 21.578903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421631, 40.616425, 21.555937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108571, -0.194816, -0.974812,
		-0.683433, -0.697478, 0.215509,
		-0.721895, 0.689617, -0.057418,
		33.205063, 40.823311, 21.538712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218487, 40.060173, 21.123039>,  <33.710388, 40.340576, 21.578903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218487, 40.060173, 21.123039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187744, 40.457966, 21.151602>,  <33.169300, 40.696640, 21.168739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187744, 40.457966, 21.151602>,  <33.218487, 40.060173, 21.123039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187744, 40.457966, 21.151602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050123, 0.075383, -0.995894,
		-0.995781, -0.072960, -0.055640,
		-0.076855, 0.994482, 0.071408,
		33.164688, 40.756310, 21.173023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774452, 40.203304, 20.613905>,  <33.218487, 40.060173, 21.123039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774452, 40.203304, 20.613905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.950848, 40.554333, 20.689157>,  <33.056686, 40.764950, 20.734308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.950848, 40.554333, 20.689157>,  <32.774452, 40.203304, 20.613905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950848, 40.554333, 20.689157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169462, 0.124428, -0.977651,
		-0.881368, 0.463015, -0.093844,
		0.440991, 0.877573, 0.188130,
		33.083145, 40.817604, 20.745596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347042, 40.740982, 20.249958>,  <32.774452, 40.203304, 20.613905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347042, 40.740982, 20.249958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.713223, 40.896137, 20.292845>,  <32.932930, 40.989231, 20.318577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.713223, 40.896137, 20.292845>,  <32.347042, 40.740982, 20.249958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713223, 40.896137, 20.292845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065842, 0.118473, -0.990772,
		-0.397010, 0.914061, 0.082917,
		0.915450, 0.387887, 0.107219,
		32.987858, 41.012505, 20.325010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287910, 41.341713, 19.987619>,  <32.347042, 40.740982, 20.249958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287910, 41.341713, 19.987619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.679153, 41.258507, 19.990017>,  <32.913898, 41.208584, 19.991455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.679153, 41.258507, 19.990017>,  <32.287910, 41.341713, 19.987619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679153, 41.258507, 19.990017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028177, 0.103852, -0.994194,
		0.206181, 0.972598, 0.107440,
		0.978108, -0.208011, 0.005993,
		32.972588, 41.196102, 19.991816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593155, 41.843388, 19.676025>,  <32.287910, 41.341713, 19.987619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593155, 41.843388, 19.676025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.848831, 41.536800, 19.650839>,  <33.002239, 41.352848, 19.635727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.848831, 41.536800, 19.650839>,  <32.593155, 41.843388, 19.676025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848831, 41.536800, 19.650839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291869, 0.317520, -0.902216,
		0.711509, 0.558313, 0.426664,
		0.639193, -0.766464, -0.062964,
		33.040588, 41.306862, 19.631950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211731, 42.183338, 19.458336>,  <32.593155, 41.843388, 19.676025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211731, 42.183338, 19.458336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.269100, 41.795334, 19.379850>,  <33.303524, 41.562531, 19.332760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.269100, 41.795334, 19.379850>,  <33.211731, 42.183338, 19.458336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269100, 41.795334, 19.379850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304618, 0.231907, -0.923811,
		0.941614, 0.072730, 0.328746,
		0.143427, -0.970015, -0.196212,
		33.312130, 41.504330, 19.320988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796555, 42.205379, 19.000360>,  <33.211731, 42.183338, 19.458336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796555, 42.205379, 19.000360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.647427, 41.837723, 18.949492>,  <33.557949, 41.617126, 18.918970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.647427, 41.837723, 18.949492>,  <33.796555, 42.205379, 19.000360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647427, 41.837723, 18.949492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320094, 0.001245, -0.947385,
		0.870944, -0.393914, 0.293749,
		-0.372823, -0.919147, -0.127174,
		33.535580, 41.561977, 18.911339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379845, 41.708668, 18.819967>,  <33.796555, 42.205379, 19.000360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379845, 41.708668, 18.819967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.033512, 41.577744, 18.668594>,  <33.825714, 41.499191, 18.577770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.033512, 41.577744, 18.668594>,  <34.379845, 41.708668, 18.819967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033512, 41.577744, 18.668594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396359, 0.012906, -0.918005,
		0.305355, -0.944829, 0.118557,
		-0.865828, -0.327309, -0.378433,
		33.773766, 41.479549, 18.555065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594910, 41.252045, 18.281498>,  <34.379845, 41.708668, 18.819967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594910, 41.252045, 18.281498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.218353, 41.359814, 18.200317>,  <33.992420, 41.424477, 18.151609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.218353, 41.359814, 18.200317>,  <34.594910, 41.252045, 18.281498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218353, 41.359814, 18.200317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219228, 0.031429, -0.975167,
		-0.256357, -0.962508, -0.088653,
		-0.941393, 0.269426, -0.202952,
		33.935936, 41.440643, 18.139431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312294, 40.687679, 17.903887>,  <34.594910, 41.252045, 18.281498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312294, 40.687679, 17.903887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.098473, 41.016949, 17.827326>,  <33.970181, 41.214512, 17.781389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.098473, 41.016949, 17.827326>,  <34.312294, 40.687679, 17.903887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098473, 41.016949, 17.827326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073424, -0.180386, -0.980852,
		-0.841940, -0.538371, 0.035985,
		-0.534553, 0.823176, -0.191403,
		33.938107, 41.263901, 17.769905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928452, 40.518288, 17.281378>,  <34.312294, 40.687679, 17.903887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928452, 40.518288, 17.281378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.882599, 40.914337, 17.313669>,  <33.855087, 41.151966, 17.333044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.882599, 40.914337, 17.313669>,  <33.928452, 40.518288, 17.281378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882599, 40.914337, 17.313669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131412, 0.095666, -0.986701,
		-0.984677, -0.102502, -0.141080,
		-0.114636, 0.990122, 0.080731,
		33.848209, 41.211372, 17.337889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398819, 40.753815, 16.731575>,  <33.928452, 40.518288, 17.281378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398819, 40.753815, 16.731575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.679092, 41.015820, 16.844711>,  <33.847256, 41.173023, 16.912594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.679092, 41.015820, 16.844711>,  <33.398819, 40.753815, 16.731575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679092, 41.015820, 16.844711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411424, -0.047062, -0.910228,
		-0.582904, 0.754147, -0.302465,
		0.700681, 0.655017, 0.282841,
		33.889297, 41.212326, 16.929564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148369, 41.013885, 16.123520>,  <33.398819, 40.753815, 16.731575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148369, 41.013885, 16.123520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.156204, 40.620438, 16.051849>,  <33.160904, 40.384369, 16.008848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.156204, 40.620438, 16.051849>,  <33.148369, 41.013885, 16.123520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156204, 40.620438, 16.051849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258707, -0.178092, 0.949396,
		-0.965757, 0.027758, -0.257958,
		0.019587, -0.983622, -0.179175,
		33.162079, 40.325352, 15.998096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520100, 40.661625, 16.238775>,  <33.148369, 41.013885, 16.123520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520100, 40.661625, 16.238775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.758099, 40.340202, 16.245396>,  <32.900898, 40.147346, 16.249367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.758099, 40.340202, 16.245396>,  <32.520100, 40.661625, 16.238775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758099, 40.340202, 16.245396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464902, -0.327294, 0.822645,
		-0.655628, -0.497162, -0.568315,
		0.594994, -0.803560, 0.016548,
		32.936596, 40.099136, 16.250360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100136, 40.074703, 16.364307>,  <32.520100, 40.661625, 16.238775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100136, 40.074703, 16.364307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453842, 39.952232, 16.505348>,  <32.666065, 39.878750, 16.589973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453842, 39.952232, 16.505348>,  <32.100136, 40.074703, 16.364307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453842, 39.952232, 16.505348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466095, -0.532121, 0.706825,
		-0.028785, -0.789369, -0.613244,
		0.884266, -0.306176, 0.352604,
		32.719124, 39.860378, 16.611130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923197, 39.412712, 16.522732>,  <32.100136, 40.074703, 16.364307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923197, 39.412712, 16.522732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.268620, 39.443558, 16.722061>,  <32.475872, 39.462063, 16.841660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.268620, 39.443558, 16.722061>,  <31.923197, 39.412712, 16.522732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268620, 39.443558, 16.722061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420180, -0.436323, 0.795657,
		0.278785, -0.896480, -0.344389,
		0.863555, 0.077112, 0.498323,
		32.527687, 39.466690, 16.871557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247818, 38.762863, 16.738617>,  <31.923197, 39.412712, 16.522732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247818, 38.762863, 16.738617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389359, 39.031361, 16.999146>,  <32.474285, 39.192459, 17.155462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389359, 39.031361, 16.999146>,  <32.247818, 38.762863, 16.738617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389359, 39.031361, 16.999146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154592, -0.644822, 0.748536,
		0.922436, -0.365562, -0.124405,
		0.353856, 0.671244, 0.651320,
		32.495514, 39.232735, 17.194542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575012, 38.317188, 17.219591>,  <32.247818, 38.762863, 16.738617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575012, 38.317188, 17.219591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.563622, 38.686607, 17.372557>,  <32.556786, 38.908260, 17.464336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.563622, 38.686607, 17.372557>,  <32.575012, 38.317188, 17.219591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563622, 38.686607, 17.372557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179747, -0.381067, 0.906907,
		0.983301, -0.042910, 0.176858,
		-0.028479, 0.923551, 0.382416,
		32.555077, 38.963673, 17.487282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809616, 38.117756, 17.861330>,  <32.575012, 38.317188, 17.219591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809616, 38.117756, 17.861330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.645336, 38.479992, 17.903738>,  <32.546768, 38.697334, 17.929182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.645336, 38.479992, 17.903738>,  <32.809616, 38.117756, 17.861330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645336, 38.479992, 17.903738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183180, -0.195861, 0.963371,
		0.893180, 0.376236, 0.246325,
		-0.410700, 0.905585, 0.106021,
		32.522125, 38.751667, 17.935545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187592, 38.422321, 18.376158>,  <32.809616, 38.117756, 17.861330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187592, 38.422321, 18.376158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.848724, 38.634815, 18.372099>,  <32.645405, 38.762310, 18.369663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.848724, 38.634815, 18.372099>,  <33.187592, 38.422321, 18.376158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848724, 38.634815, 18.372099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128034, -0.185563, 0.974255,
		0.515676, 0.826653, 0.225219,
		-0.847163, 0.531236, -0.010150,
		32.594574, 38.794186, 18.369055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866192, 38.244019, 18.536085>,  <33.187592, 38.422321, 18.376158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866192, 38.244019, 18.536085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.857723, 37.846699, 18.490654>,  <33.852642, 37.608307, 18.463394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.857723, 37.846699, 18.490654>,  <33.866192, 38.244019, 18.536085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857723, 37.846699, 18.490654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346827, 0.099253, -0.932663,
		0.937690, -0.059137, 0.342403,
		-0.021171, -0.993303, -0.113579,
		33.851372, 37.548706, 18.456581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528217, 37.954845, 18.306959>,  <33.866192, 38.244019, 18.536085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528217, 37.954845, 18.306959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.280609, 37.658451, 18.202837>,  <34.132046, 37.480614, 18.140364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.280609, 37.658451, 18.202837>,  <34.528217, 37.954845, 18.306959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280609, 37.658451, 18.202837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445777, -0.058613, -0.893223,
		0.646608, -0.668958, 0.366597,
		-0.619016, -0.740985, -0.260307,
		34.094906, 37.436157, 18.124744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962490, 37.388298, 18.034372>,  <34.528217, 37.954845, 18.306959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962490, 37.388298, 18.034372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.586311, 37.358089, 17.901796>,  <34.360603, 37.339966, 17.822250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.586311, 37.358089, 17.901796>,  <34.962490, 37.388298, 18.034372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586311, 37.358089, 17.901796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337938, -0.102238, -0.935599,
		0.036770, -0.991889, 0.121671,
		-0.940450, -0.075519, -0.331438,
		34.304176, 37.335434, 17.802364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055119, 36.941467, 17.418486>,  <34.962490, 37.388298, 18.034372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055119, 36.941467, 17.418486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684277, 37.088757, 17.390518>,  <34.461773, 37.177132, 17.373737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684277, 37.088757, 17.390518>,  <35.055119, 36.941467, 17.418486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684277, 37.088757, 17.390518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106158, 0.079074, -0.991200,
		-0.359453, -0.926369, -0.112399,
		-0.927105, 0.368223, -0.069918,
		34.406143, 37.199223, 17.369543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645710, 36.368343, 17.167994>,  <35.055119, 36.941467, 17.418486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645710, 36.368343, 17.167994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.497566, 36.725330, 17.064972>,  <34.408680, 36.939522, 17.003159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.497566, 36.725330, 17.064972>,  <34.645710, 36.368343, 17.167994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497566, 36.725330, 17.064972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266223, -0.163654, -0.949917,
		-0.889923, -0.420373, -0.176987,
		-0.370355, 0.892471, -0.257552,
		34.386459, 36.993073, 16.987707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654919, 36.313877, 16.455948>,  <34.645710, 36.368343, 17.167994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654919, 36.313877, 16.455948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.587563, 36.706039, 16.496838>,  <34.547150, 36.941338, 16.521372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.587563, 36.706039, 16.496838>,  <34.654919, 36.313877, 16.455948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587563, 36.706039, 16.496838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309875, 0.151098, -0.938694,
		-0.935746, -0.126393, -0.329247,
		-0.168393, 0.980405, 0.102223,
		34.537045, 37.000160, 16.527504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327938, 36.503815, 15.865107>,  <34.654919, 36.313877, 16.455948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327938, 36.503815, 15.865107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.471573, 36.840733, 16.025904>,  <34.557755, 37.042885, 16.122381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.471573, 36.840733, 16.025904>,  <34.327938, 36.503815, 15.865107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471573, 36.840733, 16.025904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247310, 0.329449, -0.911209,
		-0.899942, 0.426617, -0.090008,
		0.359084, 0.842295, 0.401992,
		34.579300, 37.093422, 16.146502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042694, 37.102303, 15.410120>,  <34.327938, 36.503815, 15.865107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042694, 37.102303, 15.410120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.374325, 37.231388, 15.592759>,  <34.573303, 37.308838, 15.702342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.374325, 37.231388, 15.592759>,  <34.042694, 37.102303, 15.410120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374325, 37.231388, 15.592759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244908, 0.524516, -0.815416,
		-0.502637, 0.787871, 0.355831,
		0.829081, 0.322712, 0.456597,
		34.623051, 37.328201, 15.729738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093056, 37.790951, 15.196624>,  <34.042694, 37.102303, 15.410120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093056, 37.790951, 15.196624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.465698, 37.685799, 15.297031>,  <34.689281, 37.622707, 15.357276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.465698, 37.685799, 15.297031>,  <34.093056, 37.790951, 15.196624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465698, 37.685799, 15.297031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334081, 0.347190, -0.876270,
		0.143204, 0.900196, 0.411266,
		0.931602, -0.262882, 0.251019,
		34.745178, 37.606934, 15.372337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.536972, 38.039139, 31.113756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928070, 38.107925, 31.161814>,  <33.162731, 38.149197, 31.190649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928070, 38.107925, 31.161814>,  <32.536972, 38.039139, 31.113756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928070, 38.107925, 31.161814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136636, -0.087480, -0.986751,
		-0.159175, 0.981211, -0.109030,
		0.977749, 0.171964, 0.120144,
		33.221394, 38.159515, 31.197857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750404, 38.587723, 30.642494>,  <32.536972, 38.039139, 31.113756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750404, 38.587723, 30.642494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047104, 38.335655, 30.734324>,  <33.225124, 38.184414, 30.789421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047104, 38.335655, 30.734324>,  <32.750404, 38.587723, 30.642494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047104, 38.335655, 30.734324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305036, 0.012128, -0.952264,
		0.597300, 0.776366, 0.201219,
		0.741745, -0.630166, 0.229575,
		33.269627, 38.146606, 30.803196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287865, 38.866882, 30.232273>,  <32.750404, 38.587723, 30.642494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287865, 38.866882, 30.232273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412376, 38.494438, 30.308317>,  <33.487083, 38.270973, 30.353943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.412376, 38.494438, 30.308317>,  <33.287865, 38.866882, 30.232273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412376, 38.494438, 30.308317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383483, -0.059964, -0.921599,
		0.869509, 0.359778, 0.338399,
		0.311280, -0.931109, 0.190108,
		33.505760, 38.215107, 30.365349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802368, 38.747223, 29.839130>,  <33.287865, 38.866882, 30.232273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802368, 38.747223, 29.839130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735786, 38.356949, 29.896170>,  <33.695839, 38.122784, 29.930393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735786, 38.356949, 29.896170>,  <33.802368, 38.747223, 29.839130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735786, 38.356949, 29.896170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223705, -0.178212, -0.958226,
		0.960338, -0.127602, 0.247930,
		-0.166456, -0.975683, 0.142599,
		33.685848, 38.064243, 29.938950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318634, 38.403584, 29.436642>,  <33.802368, 38.747223, 29.839130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318634, 38.403584, 29.436642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040501, 38.123737, 29.502436>,  <33.873623, 37.955830, 29.541912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040501, 38.123737, 29.502436>,  <34.318634, 38.403584, 29.436642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040501, 38.123737, 29.502436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036012, -0.262496, -0.964261,
		0.717789, -0.664555, 0.207716,
		-0.695329, -0.699616, 0.164485,
		33.831902, 37.913853, 29.551781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612019, 37.703243, 29.165489>,  <34.318634, 38.403584, 29.436642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612019, 37.703243, 29.165489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212406, 37.685726, 29.163906>,  <33.972637, 37.675217, 29.162956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212406, 37.685726, 29.163906>,  <34.612019, 37.703243, 29.165489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212406, 37.685726, 29.163906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013467, -0.219102, -0.975609,
		0.041858, -0.974719, 0.219480,
		-0.999033, -0.043793, -0.003955,
		33.912697, 37.672588, 29.162720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395374, 37.051029, 28.960329>,  <34.612019, 37.703243, 29.165489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395374, 37.051029, 28.960329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064369, 37.262577, 28.884941>,  <33.865768, 37.389507, 28.839708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064369, 37.262577, 28.884941>,  <34.395374, 37.051029, 28.960329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064369, 37.262577, 28.884941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025209, -0.300350, -0.953496,
		-0.560884, -0.793779, 0.235210,
		-0.827510, 0.528872, -0.188472,
		33.816116, 37.421238, 28.828400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963974, 36.628868, 28.566151>,  <34.395374, 37.051029, 28.960329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963974, 36.628868, 28.566151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823235, 36.997047, 28.498049>,  <33.738792, 37.217953, 28.457188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823235, 36.997047, 28.498049>,  <33.963974, 36.628868, 28.566151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823235, 36.997047, 28.498049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212356, -0.255630, -0.943164,
		-0.911651, -0.295696, 0.285404,
		-0.351848, 0.920444, -0.170253,
		33.717682, 37.273182, 28.446974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381599, 36.469532, 28.211370>,  <33.963974, 36.628868, 28.566151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381599, 36.469532, 28.211370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464558, 36.854290, 28.140097>,  <33.514332, 37.085144, 28.097332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464558, 36.854290, 28.140097>,  <33.381599, 36.469532, 28.211370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464558, 36.854290, 28.140097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121506, -0.155407, -0.980349,
		-0.970682, 0.224968, 0.084645,
		0.207393, 0.961893, -0.178186,
		33.526775, 37.142857, 28.086641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810730, 36.732773, 27.662397>,  <33.381599, 36.469532, 28.211370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810730, 36.732773, 27.662397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118813, 36.987606, 27.650305>,  <33.303661, 37.140507, 27.643049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118813, 36.987606, 27.650305>,  <32.810730, 36.732773, 27.662397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118813, 36.987606, 27.650305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060188, 0.025411, -0.997864,
		-0.634954, 0.770376, 0.057917,
		0.770202, 0.637083, -0.030232,
		33.349873, 37.178730, 27.641235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592289, 37.323631, 27.280043>,  <32.810730, 36.732773, 27.662397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592289, 37.323631, 27.280043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.991096, 37.313530, 27.250868>,  <33.230381, 37.307468, 27.233362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.991096, 37.313530, 27.250868>,  <32.592289, 37.323631, 27.280043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991096, 37.313530, 27.250868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068913, 0.134404, -0.988527,
		0.034768, 0.990605, 0.132262,
		0.997017, -0.025254, -0.072939,
		33.290203, 37.305954, 27.228987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711121, 37.787136, 26.772299>,  <32.592289, 37.323631, 27.280043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711121, 37.787136, 26.772299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046833, 37.570221, 26.787937>,  <33.248260, 37.440071, 26.797319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046833, 37.570221, 26.787937>,  <32.711121, 37.787136, 26.772299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046833, 37.570221, 26.787937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017852, -0.099356, -0.994892,
		0.543400, 0.834299, -0.093069,
		0.839284, -0.542286, 0.039096,
		33.298618, 37.407536, 26.799665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309013, 38.375576, 26.790224>,  <32.711121, 37.787136, 26.772299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309013, 38.375576, 26.790224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.930887, 38.282787, 26.698517>,  <31.704012, 38.227112, 26.643492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.930887, 38.282787, 26.698517>,  <32.309013, 38.375576, 26.790224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930887, 38.282787, 26.698517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288344, 0.265884, 0.919872,
		-0.152427, 0.935679, -0.318232,
		-0.945317, -0.231974, -0.229269,
		31.647293, 38.213196, 26.629736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826645, 38.863319, 26.991430>,  <32.309013, 38.375576, 26.790224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826645, 38.863319, 26.991430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586218, 38.544167, 26.973093>,  <31.441961, 38.352676, 26.962090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586218, 38.544167, 26.973093>,  <31.826645, 38.863319, 26.991430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586218, 38.544167, 26.973093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339887, 0.203288, 0.918232,
		-0.723321, 0.567502, -0.393380,
		-0.601068, -0.797882, -0.045844,
		31.405897, 38.304802, 26.959339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241127, 39.075966, 27.299196>,  <31.826645, 38.863319, 26.991430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241127, 39.075966, 27.299196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.227726, 38.676311, 27.308981>,  <31.219685, 38.436520, 27.314852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.227726, 38.676311, 27.308981>,  <31.241127, 39.075966, 27.299196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227726, 38.676311, 27.308981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410027, 0.036061, 0.911361,
		-0.911458, 0.020503, -0.410882,
		-0.033502, -0.999139, 0.024461,
		31.217676, 38.376568, 27.316319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591408, 38.981918, 27.527308>,  <31.241127, 39.075966, 27.299196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591408, 38.981918, 27.527308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.794666, 38.646099, 27.604189>,  <30.916622, 38.444607, 27.650318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.794666, 38.646099, 27.604189>,  <30.591408, 38.981918, 27.527308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794666, 38.646099, 27.604189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426233, -0.051213, 0.903163,
		-0.748406, -0.540864, -0.383868,
		0.508147, -0.839550, 0.192206,
		30.947111, 38.394234, 27.661850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157093, 38.549931, 27.771141>,  <30.591408, 38.981918, 27.527308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157093, 38.549931, 27.771141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.479729, 38.376572, 27.931931>,  <30.673309, 38.272556, 28.028404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.479729, 38.376572, 27.931931>,  <30.157093, 38.549931, 27.771141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479729, 38.376572, 27.931931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455069, -0.021261, 0.890202,
		-0.377262, -0.900954, -0.214373,
		0.806589, -0.433394, 0.401975,
		30.721706, 38.246555, 28.052523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919931, 37.973591, 28.203766>,  <30.157093, 38.549931, 27.771141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919931, 37.973591, 28.203766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286243, 38.042839, 28.348747>,  <30.506031, 38.084389, 28.435736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286243, 38.042839, 28.348747>,  <29.919931, 37.973591, 28.203766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286243, 38.042839, 28.348747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384452, 0.116363, 0.915782,
		0.116363, -0.978003, 0.173119,
		-0.915782, -0.173119, -0.362455,
		30.560978, 38.094776, 28.457483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070137, 37.506950, 28.874918>,  <29.919931, 37.973591, 28.203766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070137, 37.506950, 28.874918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.328012, 37.812725, 28.876303>,  <30.482738, 37.996189, 28.877134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.328012, 37.812725, 28.876303>,  <30.070137, 37.506950, 28.874918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328012, 37.812725, 28.876303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150794, 0.122731, 0.980917,
		0.749424, -0.632909, 0.194396,
		0.644690, 0.764436, 0.003461,
		30.521420, 38.042057, 28.877340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415443, 37.428539, 29.443424>,  <30.070137, 37.506950, 28.874918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415443, 37.428539, 29.443424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.507954, 37.814625, 29.394646>,  <30.563459, 38.046276, 29.365379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.507954, 37.814625, 29.394646>,  <30.415443, 37.428539, 29.443424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507954, 37.814625, 29.394646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090100, 0.146056, 0.985165,
		0.968707, -0.216856, 0.120745,
		0.231274, 0.965216, -0.121946,
		30.577335, 38.104191, 29.358063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763157, 37.603615, 30.048000>,  <30.415443, 37.428539, 29.443424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763157, 37.603615, 30.048000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.645821, 37.959816, 29.908890>,  <30.575418, 38.173538, 29.825424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.645821, 37.959816, 29.908890>,  <30.763157, 37.603615, 30.048000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645821, 37.959816, 29.908890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151375, 0.315923, 0.936631,
		0.943947, 0.327398, 0.042127,
		-0.293343, 0.890507, -0.347775,
		30.557817, 38.226967, 29.804558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095068, 38.046627, 30.457069>,  <30.763157, 37.603615, 30.048000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095068, 38.046627, 30.457069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800032, 38.268150, 30.302532>,  <30.623011, 38.401066, 30.209810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800032, 38.268150, 30.302532>,  <31.095068, 38.046627, 30.457069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800032, 38.268150, 30.302532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189642, 0.379225, 0.905663,
		0.648073, 0.741274, -0.174687,
		-0.737589, 0.553807, -0.386341,
		30.578754, 38.434292, 30.186630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210205, 38.720737, 30.645590>,  <31.095068, 38.046627, 30.457069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210205, 38.720737, 30.645590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.814734, 38.695587, 30.591093>,  <30.577450, 38.680496, 30.558395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.814734, 38.695587, 30.591093>,  <31.210205, 38.720737, 30.645590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814734, 38.695587, 30.591093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148235, 0.268511, 0.951803,
		-0.023264, 0.961222, -0.274792,
		-0.988678, -0.062877, -0.136240,
		30.518129, 38.676723, 30.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005608, 39.238312, 31.057169>,  <31.210205, 38.720737, 30.645590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005608, 39.238312, 31.057169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657587, 39.054184, 30.986610>,  <30.448774, 38.943707, 30.944275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657587, 39.054184, 30.986610>,  <31.005608, 39.238312, 31.057169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657587, 39.054184, 30.986610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295472, 0.200532, 0.934068,
		-0.394593, 0.864810, -0.310484,
		-0.870053, -0.460316, -0.176398,
		30.396570, 38.916088, 30.933691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447876, 39.681957, 31.309313>,  <31.005608, 39.238312, 31.057169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447876, 39.681957, 31.309313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.306280, 39.308159, 31.294334>,  <30.221323, 39.083878, 31.285347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.306280, 39.308159, 31.294334>,  <30.447876, 39.681957, 31.309313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306280, 39.308159, 31.294334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309154, 0.079133, 0.947714,
		-0.882675, 0.347056, -0.316917,
		-0.353989, -0.934500, -0.037445,
		30.200083, 39.027809, 31.283100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768423, 39.777805, 31.645233>,  <30.447876, 39.681957, 31.309313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768423, 39.777805, 31.645233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880066, 39.393826, 31.654964>,  <29.947052, 39.163437, 31.660803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.880066, 39.393826, 31.654964>,  <29.768423, 39.777805, 31.645233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880066, 39.393826, 31.654964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237638, -0.044503, 0.970334,
		-0.930391, -0.276608, -0.240542,
		0.279107, -0.959952, 0.024327,
		29.963799, 39.105839, 31.662262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920301, 40.405312, 31.945065>,  <29.768423, 39.777805, 31.645233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920301, 40.405312, 31.945065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.159796, 40.714882, 32.027584>,  <30.303492, 40.900623, 32.077095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.159796, 40.714882, 32.027584>,  <29.920301, 40.405312, 31.945065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159796, 40.714882, 32.027584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409822, -0.074721, -0.909100,
		-0.688158, 0.628857, -0.361908,
		0.598736, 0.773922, 0.206300,
		30.339417, 40.947060, 32.089474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889179, 40.774731, 31.364616>,  <29.920301, 40.405312, 31.945065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889179, 40.774731, 31.364616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.221771, 40.895721, 31.551014>,  <30.421326, 40.968315, 31.662853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.221771, 40.895721, 31.551014>,  <29.889179, 40.774731, 31.364616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221771, 40.895721, 31.551014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513113, -0.096572, -0.852871,
		-0.212971, 0.948252, -0.235502,
		0.831480, 0.302476, 0.465993,
		30.471214, 40.986465, 31.690811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057791, 41.344723, 31.084478>,  <29.889179, 40.774731, 31.364616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057791, 41.344723, 31.084478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388748, 41.177380, 31.234356>,  <30.587322, 41.076973, 31.324284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388748, 41.177380, 31.234356>,  <30.057791, 41.344723, 31.084478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388748, 41.177380, 31.234356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476370, 0.169397, -0.862772,
		0.297477, 0.892345, 0.339452,
		0.827393, -0.418359, 0.374695,
		30.636967, 41.051872, 31.346764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602879, 41.868946, 31.033621>,  <30.057791, 41.344723, 31.084478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602879, 41.868946, 31.033621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.748732, 41.496609, 31.024092>,  <30.836243, 41.273205, 31.018375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.748732, 41.496609, 31.024092>,  <30.602879, 41.868946, 31.033621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748732, 41.496609, 31.024092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424548, 0.188964, -0.885467,
		0.828736, 0.312755, 0.464092,
		0.364631, -0.930847, -0.023821,
		30.858120, 41.217354, 31.016945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250111, 41.931526, 30.659597>,  <30.602879, 41.868946, 31.033621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250111, 41.931526, 30.659597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229643, 41.533409, 30.692499>,  <31.217361, 41.294537, 30.712240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229643, 41.533409, 30.692499>,  <31.250111, 41.931526, 30.659597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229643, 41.533409, 30.692499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480862, -0.096740, -0.871443,
		0.875302, -0.005038, 0.483551,
		-0.051169, -0.995297, 0.082254,
		31.214293, 41.234821, 30.717175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980284, 41.592022, 30.578997>,  <31.250111, 41.931526, 30.659597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980284, 41.592022, 30.578997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698618, 41.333267, 30.461901>,  <31.529619, 41.178017, 30.391644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698618, 41.333267, 30.461901>,  <31.980284, 41.592022, 30.578997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698618, 41.333267, 30.461901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459161, -0.100381, -0.882663,
		0.541596, -0.755952, 0.367709,
		-0.704162, -0.646885, -0.292738,
		31.487370, 41.139202, 30.374079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359425, 41.102108, 30.252186>,  <31.980284, 41.592022, 30.578997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359425, 41.102108, 30.252186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985809, 41.074299, 30.112053>,  <31.761639, 41.057613, 30.027973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985809, 41.074299, 30.112053>,  <32.359425, 41.102108, 30.252186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985809, 41.074299, 30.112053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356714, -0.132377, -0.924787,
		0.017924, -0.988758, 0.148448,
		-0.934042, -0.069529, -0.350331,
		31.705597, 41.053440, 30.006954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395439, 40.726635, 29.606085>,  <32.359425, 41.102108, 30.252186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395439, 40.726635, 29.606085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020924, 40.865215, 29.582972>,  <31.796215, 40.948364, 29.569103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020924, 40.865215, 29.582972>,  <32.395439, 40.726635, 29.606085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020924, 40.865215, 29.582972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055789, -0.015728, -0.998319,
		-0.346776, -0.937937, -0.004602,
		-0.936287, 0.346450, -0.057781,
		31.740038, 40.969151, 29.565638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042652, 40.261822, 29.107779>,  <32.395439, 40.726635, 29.606085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042652, 40.261822, 29.107779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836452, 40.603489, 29.135099>,  <31.712732, 40.808487, 29.151491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836452, 40.603489, 29.135099>,  <32.042652, 40.261822, 29.107779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836452, 40.603489, 29.135099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021264, 0.066934, -0.997531,
		-0.856626, -0.515679, -0.016341,
		-0.515499, 0.854163, 0.068303,
		31.681803, 40.859737, 29.155590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427315, 40.173492, 28.662922>,  <32.042652, 40.261822, 29.107779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427315, 40.173492, 28.662922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439827, 40.569313, 28.719210>,  <31.447334, 40.806805, 28.752983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439827, 40.569313, 28.719210>,  <31.427315, 40.173492, 28.662922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439827, 40.569313, 28.719210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111693, 0.143367, -0.983347,
		-0.993250, 0.015041, 0.115011,
		0.031279, 0.989555, 0.140719,
		31.449211, 40.866180, 28.761425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762955, 40.412704, 28.390327>,  <31.427315, 40.173492, 28.662922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762955, 40.412704, 28.390327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047508, 40.693779, 28.395346>,  <31.218241, 40.862423, 28.398357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047508, 40.693779, 28.395346>,  <30.762955, 40.412704, 28.390327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047508, 40.693779, 28.395346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115212, 0.134213, -0.984232,
		-0.693295, 0.698722, 0.176435,
		0.711385, 0.702691, 0.012548,
		31.260923, 40.904587, 28.399111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512222, 41.033993, 28.012583>,  <30.762955, 40.412704, 28.390327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512222, 41.033993, 28.012583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.912003, 41.046799, 28.009161>,  <31.151871, 41.054482, 28.007107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.912003, 41.046799, 28.009161>,  <30.512222, 41.033993, 28.012583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912003, 41.046799, 28.009161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007309, -0.038847, -0.999218,
		-0.032325, 0.998732, -0.038592,
		0.999451, 0.032018, -0.008556,
		31.211838, 41.056404, 28.006594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663115, 41.665478, 27.607134>,  <30.512222, 41.033993, 28.012583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663115, 41.665478, 27.607134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.981136, 41.423157, 27.595152>,  <31.171949, 41.277763, 27.587963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.981136, 41.423157, 27.595152>,  <30.663115, 41.665478, 27.607134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981136, 41.423157, 27.595152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034074, 0.093921, -0.994996,
		0.605582, 0.790055, 0.095314,
		0.795053, -0.605799, -0.029956,
		31.219652, 41.241417, 27.586164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118498, 42.024391, 27.163540>,  <30.663115, 41.665478, 27.607134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118498, 42.024391, 27.163540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.274626, 41.656120, 27.162663>,  <31.368301, 41.435158, 27.162136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.274626, 41.656120, 27.162663>,  <31.118498, 42.024391, 27.163540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274626, 41.656120, 27.162663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174197, 0.076190, -0.981759,
		0.904050, 0.382817, 0.190118,
		0.390319, -0.920677, -0.002194,
		31.391722, 41.379917, 27.162004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782431, 42.030964, 26.797571>,  <31.118498, 42.024391, 27.163540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782431, 42.030964, 26.797571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.687393, 41.642429, 26.794516>,  <31.630371, 41.409309, 26.792683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.687393, 41.642429, 26.794516>,  <31.782431, 42.030964, 26.797571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687393, 41.642429, 26.794516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206569, -0.042840, -0.977494,
		0.949146, -0.233826, 0.210826,
		-0.237595, -0.971334, -0.007640,
		31.616114, 41.351028, 26.792223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351704, 41.770718, 26.450428>,  <31.782431, 42.030964, 26.797571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351704, 41.770718, 26.450428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092133, 41.468628, 26.413504>,  <31.936390, 41.287373, 26.391348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.092133, 41.468628, 26.413504>,  <32.351704, 41.770718, 26.450428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092133, 41.468628, 26.413504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229954, -0.079025, -0.969988,
		0.725267, -0.650681, 0.224949,
		-0.648929, -0.755228, -0.092313,
		31.897453, 41.242058, 26.385809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673298, 41.199482, 26.042555>,  <32.351704, 41.770718, 26.450428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673298, 41.199482, 26.042555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280075, 41.130905, 26.016613>,  <32.044140, 41.089760, 26.001047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280075, 41.130905, 26.016613>,  <32.673298, 41.199482, 26.042555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280075, 41.130905, 26.016613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081715, -0.093178, -0.992290,
		0.164075, -0.980778, 0.105609,
		-0.983057, -0.171440, -0.064856,
		31.985157, 41.079475, 25.997156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587112, 40.568531, 25.791325>,  <32.673298, 41.199482, 26.042555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587112, 40.568531, 25.791325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233643, 40.737869, 25.711426>,  <32.021561, 40.839474, 25.663486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.233643, 40.737869, 25.711426>,  <32.587112, 40.568531, 25.791325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233643, 40.737869, 25.711426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085199, -0.274132, -0.957911,
		-0.460286, -0.863498, 0.206174,
		-0.883673, 0.423347, -0.199748,
		31.968540, 40.864872, 25.651501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293808, 40.139446, 25.366043>,  <32.587112, 40.568531, 25.791325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293808, 40.139446, 25.366043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100819, 40.483303, 25.298836>,  <31.985025, 40.689617, 25.258511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100819, 40.483303, 25.298836>,  <32.293808, 40.139446, 25.366043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100819, 40.483303, 25.298836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090353, -0.141955, -0.985741,
		-0.871237, -0.490776, -0.009182,
		-0.482475, 0.859644, -0.168020,
		31.956076, 40.741196, 25.248430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854870, 39.992847, 24.775143>,  <32.293808, 40.139446, 25.366043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854870, 39.992847, 24.775143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876440, 40.391331, 24.802427>,  <31.889381, 40.630421, 24.818798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876440, 40.391331, 24.802427>,  <31.854870, 39.992847, 24.775143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876440, 40.391331, 24.802427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046524, 0.065729, -0.996752,
		-0.997461, 0.056924, -0.042803,
		0.053926, 0.996213, 0.068210,
		31.892618, 40.690193, 24.822891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389549, 40.193611, 24.291849>,  <31.854870, 39.992847, 24.775143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389549, 40.193611, 24.291849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649595, 40.488441, 24.365688>,  <31.805622, 40.665340, 24.409992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649595, 40.488441, 24.365688>,  <31.389549, 40.193611, 24.291849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649595, 40.488441, 24.365688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075134, 0.179395, -0.980904,
		-0.756114, 0.651568, 0.061248,
		0.650113, 0.737073, 0.184598,
		31.844629, 40.709564, 24.421068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202803, 40.684052, 23.769917>,  <31.389549, 40.193611, 24.291849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202803, 40.684052, 23.769917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.555740, 40.800079, 23.918148>,  <31.767502, 40.869698, 24.007088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.555740, 40.800079, 23.918148>,  <31.202803, 40.684052, 23.769917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555740, 40.800079, 23.918148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329829, 0.180523, -0.926620,
		-0.335684, 0.939824, 0.063609,
		0.882343, 0.290072, 0.370580,
		31.820444, 40.887100, 24.029322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335855, 41.169266, 23.302103>,  <31.202803, 40.684052, 23.769917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335855, 41.169266, 23.302103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676598, 41.101898, 23.500488>,  <31.881042, 41.061478, 23.619520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676598, 41.101898, 23.500488>,  <31.335855, 41.169266, 23.302103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676598, 41.101898, 23.500488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518276, 0.134122, -0.844631,
		0.075729, 0.976549, 0.201537,
		0.851854, -0.168415, 0.495965,
		31.932154, 41.051373, 23.649279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714521, 41.769260, 23.163733>,  <31.335855, 41.169266, 23.302103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714521, 41.769260, 23.163733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956324, 41.456280, 23.223520>,  <32.101406, 41.268490, 23.259392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956324, 41.456280, 23.223520>,  <31.714521, 41.769260, 23.163733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956324, 41.456280, 23.223520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498062, 0.224811, -0.837493,
		0.621696, 0.580715, 0.525609,
		0.604507, -0.782451, 0.149468,
		32.137676, 41.221546, 23.268360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331860, 41.950565, 22.938505>,  <31.714521, 41.769260, 23.163733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331860, 41.950565, 22.938505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392033, 41.555202, 22.930387>,  <32.428139, 41.317986, 22.925516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.392033, 41.555202, 22.930387>,  <32.331860, 41.950565, 22.938505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392033, 41.555202, 22.930387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478127, 0.090709, -0.873594,
		0.865311, 0.121717, 0.486232,
		0.150437, -0.988411, -0.020296,
		32.437164, 41.258678, 22.924299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065414, 41.895435, 22.837965>,  <32.331860, 41.950565, 22.938505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065414, 41.895435, 22.837965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906300, 41.546082, 22.725563>,  <32.810829, 41.336468, 22.658121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906300, 41.546082, 22.725563>,  <33.065414, 41.895435, 22.837965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906300, 41.546082, 22.725563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582518, -0.003798, -0.812809,
		0.708827, -0.487018, 0.510273,
		-0.397791, -0.873384, -0.281004,
		32.786961, 41.284065, 22.641262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593632, 41.550610, 22.613588>,  <33.065414, 41.895435, 22.837965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593632, 41.550610, 22.613588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285809, 41.347267, 22.459003>,  <33.101116, 41.225262, 22.366253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.285809, 41.347267, 22.459003>,  <33.593632, 41.550610, 22.613588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285809, 41.347267, 22.459003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438777, 0.018749, -0.898400,
		0.463955, -0.860941, 0.208628,
		-0.769558, -0.508358, -0.386460,
		33.054939, 41.194759, 22.343065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846447, 40.941116, 22.285192>,  <33.593632, 41.550610, 22.613588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846447, 40.941116, 22.285192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483578, 41.018574, 22.135777>,  <33.265854, 41.065048, 22.046127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483578, 41.018574, 22.135777>,  <33.846447, 40.941116, 22.285192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483578, 41.018574, 22.135777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353612, -0.130213, -0.926285,
		-0.228012, -0.972391, 0.049650,
		-0.907177, 0.193647, -0.373539,
		33.211426, 41.076668, 22.023714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131863, 40.221088, 22.176760>,  <33.846447, 40.941116, 22.285192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131863, 40.221088, 22.176760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461540, 40.407986, 22.304756>,  <34.659348, 40.520123, 22.381554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461540, 40.407986, 22.304756>,  <34.131863, 40.221088, 22.176760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461540, 40.407986, 22.304756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278018, -0.158429, 0.947421,
		0.493372, -0.869818, -0.000673,
		0.824191, 0.467243, 0.319990,
		34.708797, 40.548157, 22.400753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329662, 39.806942, 22.761152>,  <34.131863, 40.221088, 22.176760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329662, 39.806942, 22.761152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558002, 40.129913, 22.820747>,  <34.695007, 40.323696, 22.856504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558002, 40.129913, 22.820747>,  <34.329662, 39.806942, 22.761152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558002, 40.129913, 22.820747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278242, 0.019518, 0.960313,
		0.772472, -0.589648, 0.235801,
		0.570849, 0.807424, 0.148988,
		34.729256, 40.372139, 22.865444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846310, 39.764923, 23.455647>,  <34.329662, 39.806942, 22.761152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846310, 39.764923, 23.455647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826153, 40.161736, 23.409468>,  <34.814060, 40.399822, 23.381760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826153, 40.161736, 23.409468>,  <34.846310, 39.764923, 23.455647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826153, 40.161736, 23.409468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102342, 0.120114, 0.987471,
		0.993472, 0.037944, -0.107580,
		-0.050391, 0.992035, -0.115447,
		34.811035, 40.459347, 23.374834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393024, 40.028706, 23.920286>,  <34.846310, 39.764923, 23.455647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393024, 40.028706, 23.920286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164497, 40.343410, 23.826818>,  <35.027382, 40.532234, 23.770739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164497, 40.343410, 23.826818>,  <35.393024, 40.028706, 23.920286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164497, 40.343410, 23.826818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135812, 0.190156, 0.972315,
		0.809413, 0.587237, -0.001788,
		-0.571319, 0.786761, -0.233669,
		34.993103, 40.579437, 23.756718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698673, 40.597351, 24.201036>,  <35.393024, 40.028706, 23.920286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698673, 40.597351, 24.201036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312447, 40.687778, 24.149536>,  <35.080711, 40.742035, 24.118635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.312447, 40.687778, 24.149536>,  <35.698673, 40.597351, 24.201036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312447, 40.687778, 24.149536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055032, 0.306217, 0.950370,
		0.254273, 0.924730, -0.283232,
		-0.965565, 0.226067, -0.128752,
		35.022778, 40.755600, 24.110910>
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
