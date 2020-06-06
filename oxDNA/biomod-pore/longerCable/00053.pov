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
	<24.007591, 34.629845, 35.119003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304630, 34.893021, 35.068932>,  <24.482853, 35.050926, 35.038887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304630, 34.893021, 35.068932>,  <24.007591, 34.629845, 35.119003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304630, 34.893021, 35.068932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650257, -0.753044, -0.100453,
		-0.160360, -0.006805, -0.987035,
		0.742597, 0.657935, -0.125183,
		24.527409, 35.090401, 35.031376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.385502, 34.446957, 34.531906>,  <24.007591, 34.629845, 35.119003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.385502, 34.446957, 34.531906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.608624, 34.648376, 34.795811>,  <24.742496, 34.769230, 34.954155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.608624, 34.648376, 34.795811>,  <24.385502, 34.446957, 34.531906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.608624, 34.648376, 34.795811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593771, -0.797529, 0.106691,
		0.579907, 0.332237, -0.743859,
		0.557802, 0.503553, 0.659766,
		24.775965, 34.799442, 34.993740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095036, 34.448727, 34.247040>,  <24.385502, 34.446957, 34.531906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095036, 34.448727, 34.247040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050293, 34.459419, 34.644386>,  <25.023447, 34.465836, 34.882793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050293, 34.459419, 34.644386>,  <25.095036, 34.448727, 34.247040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050293, 34.459419, 34.644386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623112, -0.776813, 0.091069,
		0.774093, 0.629164, 0.070232,
		-0.111854, 0.026734, 0.993365,
		25.016737, 34.467438, 34.942394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795303, 34.385891, 34.472946>,  <25.095036, 34.448727, 34.247040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795303, 34.385891, 34.472946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523989, 34.233059, 34.724007>,  <25.361200, 34.141361, 34.874641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.523989, 34.233059, 34.724007>,  <25.795303, 34.385891, 34.472946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523989, 34.233059, 34.724007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499972, -0.865942, 0.013168,
		0.538477, 0.322739, 0.778384,
		-0.678285, -0.382080, 0.627650,
		25.320503, 34.118435, 34.912300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252653, 34.096729, 34.859249>,  <25.795303, 34.385891, 34.472946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252653, 34.096729, 34.859249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412310, 34.023594, 35.218639>,  <26.508104, 33.979713, 35.434273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412310, 34.023594, 35.218639>,  <26.252653, 34.096729, 34.859249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412310, 34.023594, 35.218639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040243, -0.975477, -0.216391,
		0.916005, 0.122528, -0.381996,
		0.399142, -0.182842, 0.898473,
		26.532053, 33.968742, 35.488182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775980, 33.578182, 34.780891>,  <26.252653, 34.096729, 34.859249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775980, 33.578182, 34.780891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660980, 33.563656, 35.163727>,  <26.591980, 33.554939, 35.393429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660980, 33.563656, 35.163727>,  <26.775980, 33.578182, 34.780891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660980, 33.563656, 35.163727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103393, -0.994618, -0.006681,
		0.952183, 0.097036, 0.289709,
		-0.287502, -0.036315, 0.957092,
		26.574730, 33.552761, 35.450855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413490, 33.174171, 35.014137>,  <26.775980, 33.578182, 34.780891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413490, 33.174171, 35.014137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460823, 32.823929, 35.201462>,  <27.489222, 32.613785, 35.313858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460823, 32.823929, 35.201462>,  <27.413490, 33.174171, 35.014137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460823, 32.823929, 35.201462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910060, -0.093036, -0.403900,
		0.397227, 0.473984, 0.785843,
		0.118331, -0.875605, 0.468310,
		27.496323, 32.561249, 35.341953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893633, 33.185158, 35.534576>,  <27.413490, 33.174171, 35.014137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893633, 33.185158, 35.534576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892733, 32.859493, 35.302322>,  <27.892193, 32.664093, 35.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892733, 32.859493, 35.302322>,  <27.893633, 33.185158, 35.534576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892733, 32.859493, 35.302322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889421, 0.263769, -0.373304,
		0.457083, -0.517266, 0.723541,
		-0.002250, -0.814163, -0.580632,
		27.892057, 32.615246, 35.128132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493860, 32.788006, 35.689186>,  <27.893633, 33.185158, 35.534576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493860, 32.788006, 35.689186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393744, 32.682663, 35.316521>,  <28.333673, 32.619457, 35.092922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393744, 32.682663, 35.316521>,  <28.493860, 32.788006, 35.689186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393744, 32.682663, 35.316521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780560, 0.514415, -0.355111,
		0.572782, -0.816101, 0.076812,
		-0.250293, -0.263357, -0.931663,
		28.318655, 32.603657, 35.037022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150448, 32.500401, 35.400143>,  <28.493860, 32.788006, 35.689186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150448, 32.500401, 35.400143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893114, 32.639820, 35.127487>,  <28.738714, 32.723473, 34.963894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893114, 32.639820, 35.127487>,  <29.150448, 32.500401, 35.400143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893114, 32.639820, 35.127487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710025, 0.604627, -0.360957,
		0.286328, -0.716199, -0.636456,
		-0.643336, 0.348547, -0.681641,
		28.700113, 32.744385, 34.922997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475922, 32.381500, 34.829510>,  <29.150448, 32.500401, 35.400143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475922, 32.381500, 34.829510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232838, 32.680786, 34.723030>,  <29.086987, 32.860359, 34.659142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232838, 32.680786, 34.723030>,  <29.475922, 32.381500, 34.829510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232838, 32.680786, 34.723030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740780, 0.413259, -0.529587,
		-0.286236, -0.519030, -0.805405,
		-0.607712, 0.748214, -0.266197,
		29.050524, 32.905251, 34.643169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773859, 32.669884, 34.119629>,  <29.475922, 32.381500, 34.829510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773859, 32.669884, 34.119629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514120, 32.940514, 34.258537>,  <29.358276, 33.102890, 34.341885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514120, 32.940514, 34.258537>,  <29.773859, 32.669884, 34.119629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514120, 32.940514, 34.258537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479571, 0.718700, -0.503471,
		-0.590219, -0.160386, -0.791150,
		-0.649349, 0.676570, 0.347274,
		29.319315, 33.143486, 34.362720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680195, 33.323914, 33.944359>,  <29.773859, 32.669884, 34.119629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680195, 33.323914, 33.944359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302217, 33.195900, 33.971672>,  <29.075432, 33.119091, 33.988060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302217, 33.195900, 33.971672>,  <29.680195, 33.323914, 33.944359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302217, 33.195900, 33.971672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243152, 0.826333, 0.507987,
		-0.218999, 0.463415, -0.858654,
		-0.944943, -0.320032, 0.068286,
		29.018734, 33.099892, 33.992157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822031, 33.260616, 34.777893>,  <29.680195, 33.323914, 33.944359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822031, 33.260616, 34.777893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664297, 33.581768, 34.599060>,  <29.569656, 33.774460, 34.491760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664297, 33.581768, 34.599060>,  <29.822031, 33.260616, 34.777893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664297, 33.581768, 34.599060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796914, -0.541035, -0.268718,
		-0.457634, 0.250318, 0.853177,
		-0.394334, 0.802884, -0.447078,
		29.545998, 33.822632, 34.464935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144226, 33.394917, 35.062176>,  <29.822031, 33.260616, 34.777893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144226, 33.394917, 35.062176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184278, 33.529163, 34.687511>,  <29.208311, 33.609711, 34.462711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184278, 33.529163, 34.687511>,  <29.144226, 33.394917, 35.062176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184278, 33.529163, 34.687511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697544, -0.647623, -0.306621,
		-0.709511, 0.684066, 0.169259,
		0.100133, 0.335617, -0.936661,
		29.214319, 33.629848, 34.406513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626820, 33.846821, 34.907524>,  <29.144226, 33.394917, 35.062176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626820, 33.846821, 34.907524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785892, 33.616268, 34.621971>,  <28.881336, 33.477936, 34.450638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785892, 33.616268, 34.621971>,  <28.626820, 33.846821, 34.907524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785892, 33.616268, 34.621971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729980, -0.670123, 0.134406,
		-0.555858, 0.467669, -0.687246,
		0.397682, -0.576387, -0.713882,
		28.905197, 33.443352, 34.407806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109612, 33.628586, 34.310295>,  <28.626820, 33.846821, 34.907524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109612, 33.628586, 34.310295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405741, 33.364555, 34.361229>,  <28.583418, 33.206135, 34.391788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405741, 33.364555, 34.361229>,  <28.109612, 33.628586, 34.310295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405741, 33.364555, 34.361229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663684, -0.687522, 0.294681,
		-0.106971, -0.302666, -0.947075,
		0.740325, -0.660080, 0.127330,
		28.627838, 33.166531, 34.399429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962990, 33.061649, 33.928585>,  <28.109612, 33.628586, 34.310295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962990, 33.061649, 33.928585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200363, 32.950329, 34.230682>,  <28.342787, 32.883537, 34.411942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200363, 32.950329, 34.230682>,  <27.962990, 33.061649, 33.928585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200363, 32.950329, 34.230682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694912, -0.650605, 0.306284,
		0.406123, -0.706584, -0.579486,
		0.593432, -0.278303, 0.755239,
		28.378393, 32.866837, 34.457253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920359, 32.388222, 33.823963>,  <27.962990, 33.061649, 33.928585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920359, 32.388222, 33.823963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050596, 32.458889, 34.195507>,  <28.128738, 32.501289, 34.418434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050596, 32.458889, 34.195507>,  <27.920359, 32.388222, 33.823963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050596, 32.458889, 34.195507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642752, -0.679129, 0.354476,
		0.693440, -0.712440, -0.107563,
		0.325592, 0.176671, 0.928858,
		28.148273, 32.511890, 34.474163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836182, 31.704727, 34.224545>,  <27.920359, 32.388222, 33.823963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836182, 31.704727, 34.224545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844664, 31.986050, 34.508774>,  <27.849752, 32.154842, 34.679310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844664, 31.986050, 34.508774>,  <27.836182, 31.704727, 34.224545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844664, 31.986050, 34.508774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723202, -0.479943, 0.496622,
		0.690311, -0.524416, 0.498457,
		0.021205, 0.703308, 0.710568,
		27.851025, 32.197041, 34.721943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921146, 31.394352, 34.922771>,  <27.836182, 31.704727, 34.224545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921146, 31.394352, 34.922771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703722, 31.730095, 34.920998>,  <27.573267, 31.931541, 34.919933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703722, 31.730095, 34.920998>,  <27.921146, 31.394352, 34.922771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703722, 31.730095, 34.920998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767683, -0.494996, 0.406991,
		0.339419, 0.224626, 0.913421,
		-0.543560, 0.839358, -0.004431,
		27.540653, 31.981903, 34.919670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730598, 31.531170, 35.584801>,  <27.921146, 31.394352, 34.922771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730598, 31.531170, 35.584801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470242, 31.686928, 35.324123>,  <27.314028, 31.780382, 35.167717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470242, 31.686928, 35.324123>,  <27.730598, 31.531170, 35.584801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470242, 31.686928, 35.324123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738971, -0.521674, 0.426355,
		-0.173951, 0.759096, 0.627307,
		-0.650894, 0.389396, -0.651695,
		27.274973, 31.803747, 35.128616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313665, 31.046755, 35.614506>,  <27.730598, 31.531170, 35.584801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313665, 31.046755, 35.614506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614996, 30.784937, 35.640034>,  <28.795794, 30.627846, 35.655350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614996, 30.784937, 35.640034>,  <28.313665, 31.046755, 35.614506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614996, 30.784937, 35.640034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590965, -0.631168, 0.502383,
		-0.288549, -0.416174, -0.862287,
		0.753326, -0.654543, 0.063821,
		28.840994, 30.588573, 35.659180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078955, 30.380795, 35.466522>,  <28.313665, 31.046755, 35.614506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078955, 30.380795, 35.466522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398178, 30.346659, 35.705124>,  <28.589712, 30.326178, 35.848286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398178, 30.346659, 35.705124>,  <28.078955, 30.380795, 35.466522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398178, 30.346659, 35.705124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485163, -0.678103, 0.552080,
		0.357379, -0.729996, -0.582569,
		0.798058, -0.085339, 0.596507,
		28.637596, 30.321056, 35.884075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303860, 29.683828, 35.449631>,  <28.078955, 30.380795, 35.466522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303860, 29.683828, 35.449631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408424, 29.849464, 35.798386>,  <28.471163, 29.948847, 36.007641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408424, 29.849464, 35.798386>,  <28.303860, 29.683828, 35.449631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408424, 29.849464, 35.798386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325193, -0.812707, 0.483484,
		0.908798, -0.409921, -0.077792,
		0.261413, 0.414091, 0.871890,
		28.486849, 29.973692, 36.059952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750996, 29.242783, 35.778381>,  <28.303860, 29.683828, 35.449631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750996, 29.242783, 35.778381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563705, 29.461878, 36.055725>,  <28.451332, 29.593334, 36.222134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563705, 29.461878, 36.055725>,  <28.750996, 29.242783, 35.778381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563705, 29.461878, 36.055725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319249, -0.836551, 0.445267,
		0.823922, -0.012870, 0.566558,
		-0.468224, 0.547738, 0.693361,
		28.423239, 29.626200, 36.263733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881144, 29.045523, 36.473549>,  <28.750996, 29.242783, 35.778381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881144, 29.045523, 36.473549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523767, 29.224077, 36.453526>,  <28.309341, 29.331211, 36.441513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523767, 29.224077, 36.453526>,  <28.881144, 29.045523, 36.473549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523767, 29.224077, 36.453526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423091, -0.798864, 0.427563,
		0.150870, 0.403180, 0.902598,
		-0.893438, 0.446388, -0.050057,
		28.255735, 29.357994, 36.438507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535967, 29.035440, 37.135525>,  <28.881144, 29.045523, 36.473549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535967, 29.035440, 37.135525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262060, 29.066771, 36.845707>,  <28.097717, 29.085569, 36.671818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262060, 29.066771, 36.845707>,  <28.535967, 29.035440, 37.135525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262060, 29.066771, 36.845707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400728, -0.870879, 0.284583,
		-0.608697, 0.485217, 0.627736,
		-0.684766, 0.078327, -0.724542,
		28.056631, 29.090269, 36.628345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870644, 28.859526, 37.468243>,  <28.535967, 29.035440, 37.135525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870644, 28.859526, 37.468243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811287, 28.813417, 37.075367>,  <27.775673, 28.785751, 36.839642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811287, 28.813417, 37.075367>,  <27.870644, 28.859526, 37.468243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811287, 28.813417, 37.075367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431422, -0.886145, 0.169182,
		-0.889862, 0.448842, 0.081766,
		-0.148393, -0.115273, -0.982187,
		27.766769, 28.778835, 36.780712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176451, 28.928356, 37.210365>,  <27.870644, 28.859526, 37.468243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176451, 28.928356, 37.210365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394627, 28.667799, 36.999393>,  <27.525532, 28.511465, 36.872810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394627, 28.667799, 36.999393>,  <27.176451, 28.928356, 37.210365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394627, 28.667799, 36.999393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673308, -0.715293, 0.187116,
		-0.499153, 0.253063, -0.828737,
		0.545438, -0.651395, -0.527430,
		27.558258, 28.472380, 36.841164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600103, 28.613243, 36.823143>,  <27.176451, 28.928356, 37.210365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600103, 28.613243, 36.823143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917795, 28.373337, 36.784191>,  <27.108410, 28.229393, 36.760822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917795, 28.373337, 36.784191>,  <26.600103, 28.613243, 36.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917795, 28.373337, 36.784191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596897, -0.800102, 0.059583,
		-0.113646, 0.010801, -0.993462,
		0.794228, -0.599766, -0.097376,
		27.156063, 28.193407, 36.754978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544382, 28.069948, 36.242519>,  <26.600103, 28.613243, 36.823143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544382, 28.069948, 36.242519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794670, 27.946241, 36.528969>,  <26.944843, 27.872017, 36.700840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794670, 27.946241, 36.528969>,  <26.544382, 28.069948, 36.242519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794670, 27.946241, 36.528969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488460, -0.871119, 0.050593,
		0.608181, -0.381454, -0.696138,
		0.625718, -0.309266, 0.716123,
		26.982386, 27.853462, 36.743805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967573, 27.518789, 35.912910>,  <26.544382, 28.069948, 36.242519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967573, 27.518789, 35.912910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952629, 27.471556, 36.309830>,  <26.943663, 27.443216, 36.547981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952629, 27.471556, 36.309830>,  <26.967573, 27.518789, 35.912910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952629, 27.471556, 36.309830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213947, -0.969024, -0.123367,
		0.976131, -0.216909, 0.010937,
		-0.037357, -0.118082, 0.992301,
		26.941422, 27.436131, 36.607521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289160, 26.898373, 35.952080>,  <26.967573, 27.518789, 35.912910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289160, 26.898373, 35.952080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091040, 26.945471, 36.296364>,  <26.972168, 26.973730, 36.502934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091040, 26.945471, 36.296364>,  <27.289160, 26.898373, 35.952080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091040, 26.945471, 36.296364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299281, -0.953248, -0.041820,
		0.815543, -0.278307, 0.507381,
		-0.495299, 0.117743, 0.860707,
		26.942450, 26.980793, 36.554577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589128, 26.432800, 36.588451>,  <27.289160, 26.898373, 35.952080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589128, 26.432800, 36.588451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196869, 26.506138, 36.560978>,  <26.961514, 26.550140, 36.544495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196869, 26.506138, 36.560978>,  <27.589128, 26.432800, 36.588451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196869, 26.506138, 36.560978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178473, -0.981351, -0.071395,
		-0.080492, -0.057755, 0.995080,
		-0.980647, 0.183342, -0.068683,
		26.902676, 26.561140, 36.540375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251745, 26.079651, 37.159241>,  <27.589128, 26.432800, 36.588451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251745, 26.079651, 37.159241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954370, 26.164921, 36.905670>,  <26.775946, 26.216084, 36.753529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954370, 26.164921, 36.905670>,  <27.251745, 26.079651, 37.159241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954370, 26.164921, 36.905670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448827, -0.861733, 0.236582,
		-0.495838, 0.460405, 0.736323,
		-0.743437, 0.213176, -0.633922,
		26.731339, 26.228874, 36.715492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606939, 26.169022, 37.630630>,  <27.251745, 26.079651, 37.159241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606939, 26.169022, 37.630630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610907, 26.023518, 37.258057>,  <26.613287, 25.936214, 37.034512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610907, 26.023518, 37.258057>,  <26.606939, 26.169022, 37.630630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610907, 26.023518, 37.258057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491683, -0.812875, 0.312221,
		-0.870718, 0.454876, -0.186919,
		0.009920, -0.363761, -0.931440,
		26.613882, 25.914389, 36.978626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854504, 25.968704, 37.277470>,  <26.606939, 26.169022, 37.630630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854504, 25.968704, 37.277470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154190, 25.779308, 37.092220>,  <26.334002, 25.665670, 36.981071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154190, 25.779308, 37.092220>,  <25.854504, 25.968704, 37.277470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154190, 25.779308, 37.092220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507296, -0.859793, 0.058367,
		-0.425825, 0.191210, -0.884371,
		0.749216, -0.473492, -0.463121,
		26.378954, 25.637260, 36.953285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992531, 26.720703, 37.355141>,  <25.854504, 25.968704, 37.277470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992531, 26.720703, 37.355141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359186, 26.666185, 37.204834>,  <26.579180, 26.633476, 37.114651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359186, 26.666185, 37.204834>,  <25.992531, 26.720703, 37.355141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359186, 26.666185, 37.204834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230796, 0.947999, 0.219160,
		0.326352, -0.287615, 0.900429,
		0.916639, -0.136292, -0.375762,
		26.634178, 26.625298, 37.092106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376587, 27.178295, 37.788212>,  <25.992531, 26.720703, 37.355141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376587, 27.178295, 37.788212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590137, 27.116537, 37.455673>,  <26.718267, 27.079481, 37.256149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590137, 27.116537, 37.455673>,  <26.376587, 27.178295, 37.788212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590137, 27.116537, 37.455673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479083, 0.865384, 0.146939,
		0.696747, -0.476731, 0.535976,
		0.533875, -0.154397, -0.831347,
		26.750299, 27.070217, 37.206268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117447, 27.140493, 37.844616>,  <26.376587, 27.178295, 37.788212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117447, 27.140493, 37.844616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037643, 27.249723, 37.468185>,  <26.989761, 27.315262, 37.242329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037643, 27.249723, 37.468185>,  <27.117447, 27.140493, 37.844616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037643, 27.249723, 37.468185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667325, 0.741123, 0.073581,
		0.717547, -0.613325, -0.330089,
		-0.199507, 0.273075, -0.941078,
		26.977791, 27.331646, 37.185863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805408, 27.456732, 37.613941>,  <27.117447, 27.140493, 37.844616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805408, 27.456732, 37.613941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533918, 27.581728, 37.348103>,  <27.371025, 27.656725, 37.188599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533918, 27.581728, 37.348103>,  <27.805408, 27.456732, 37.613941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533918, 27.581728, 37.348103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551802, 0.814159, -0.180721,
		0.484610, -0.489383, -0.725022,
		-0.678725, 0.312490, -0.664592,
		27.330301, 27.675474, 37.148724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157219, 27.584675, 36.942760>,  <27.805408, 27.456732, 37.613941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157219, 27.584675, 36.942760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827454, 27.804663, 36.996235>,  <27.629593, 27.936655, 37.028320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827454, 27.804663, 36.996235>,  <28.157219, 27.584675, 36.942760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827454, 27.804663, 36.996235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483197, 0.806902, -0.339750,
		-0.294720, -0.215500, -0.930967,
		-0.824416, 0.549971, 0.133682,
		27.580130, 27.969654, 37.036339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585302, 27.649464, 36.502316>,  <28.157219, 27.584675, 36.942760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585302, 27.649464, 36.502316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328672, 27.952234, 36.452610>,  <27.174694, 28.133898, 36.422787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328672, 27.952234, 36.452610>,  <27.585302, 27.649464, 36.502316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328672, 27.952234, 36.452610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667497, 0.471111, -0.576631,
		-0.377927, -0.452897, -0.807500,
		-0.641576, 0.756928, -0.124261,
		27.136200, 28.179312, 36.415333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716312, 27.948156, 35.836952>,  <27.585302, 27.649464, 36.502316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716312, 27.948156, 35.836952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539625, 28.202358, 36.090256>,  <27.433613, 28.354879, 36.242237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539625, 28.202358, 36.090256>,  <27.716312, 27.948156, 35.836952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539625, 28.202358, 36.090256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636819, 0.719290, -0.277638,
		-0.631939, 0.280635, -0.722424,
		-0.441718, 0.635504, 0.633261,
		27.407110, 28.393009, 36.280235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443863, 28.535141, 35.552032>,  <27.716312, 27.948156, 35.836952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443863, 28.535141, 35.552032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507027, 28.636038, 35.933910>,  <27.544924, 28.696575, 36.163036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507027, 28.636038, 35.933910>,  <27.443863, 28.535141, 35.552032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507027, 28.636038, 35.933910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464289, 0.834320, -0.297231,
		-0.871493, 0.490189, 0.014633,
		0.157908, 0.252241, 0.954693,
		27.554399, 28.711710, 36.220318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239861, 29.303116, 35.617184>,  <27.443863, 28.535141, 35.552032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239861, 29.303116, 35.617184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480352, 29.210514, 35.923107>,  <27.624647, 29.154953, 36.106659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480352, 29.210514, 35.923107>,  <27.239861, 29.303116, 35.617184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480352, 29.210514, 35.923107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520004, 0.840075, -0.154500,
		-0.606726, 0.490592, 0.625462,
		0.601231, -0.231504, 0.764805,
		27.660723, 29.141064, 36.152550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191252, 29.838427, 36.151825>,  <27.239861, 29.303116, 35.617184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191252, 29.838427, 36.151825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557037, 29.676655, 36.157398>,  <27.776508, 29.579592, 36.160740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557037, 29.676655, 36.157398>,  <27.191252, 29.838427, 36.151825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557037, 29.676655, 36.157398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390252, 0.872252, -0.294754,
		0.107057, 0.274978, 0.955472,
		0.914463, -0.404431, 0.013930,
		27.831377, 29.555326, 36.161575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420359, 29.916786, 36.826508>,  <27.191252, 29.838427, 36.151825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420359, 29.916786, 36.826508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794340, 29.785982, 36.881538>,  <28.018728, 29.707500, 36.914558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794340, 29.785982, 36.881538>,  <27.420359, 29.916786, 36.826508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794340, 29.785982, 36.881538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327586, 0.646869, -0.688657,
		0.136203, 0.688930, 0.711916,
		0.934953, -0.327010, 0.137578,
		28.074825, 29.687880, 36.922813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917376, 30.362165, 37.198040>,  <27.420359, 29.916786, 36.826508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917376, 30.362165, 37.198040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081314, 30.129803, 36.916737>,  <28.179678, 29.990385, 36.747955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081314, 30.129803, 36.916737>,  <27.917376, 30.362165, 37.198040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081314, 30.129803, 36.916737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430134, 0.802965, -0.412592,
		0.804370, -0.133396, 0.578960,
		0.409847, -0.580907, -0.703259,
		28.204268, 29.955530, 36.705757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648710, 30.605043, 37.203236>,  <27.917376, 30.362165, 37.198040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648710, 30.605043, 37.203236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544418, 30.430832, 36.858601>,  <28.481844, 30.326305, 36.651817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544418, 30.430832, 36.858601>,  <28.648710, 30.605043, 37.203236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544418, 30.430832, 36.858601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480832, 0.715305, -0.507089,
		0.837150, -0.546493, 0.022914,
		-0.260730, -0.435527, -0.861589,
		28.466200, 30.300175, 36.600124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351845, 30.266083, 36.962383>,  <28.648710, 30.605043, 37.203236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351845, 30.266083, 36.962383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097773, 30.121847, 36.689175>,  <28.945330, 30.035305, 36.525249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097773, 30.121847, 36.689175>,  <29.351845, 30.266083, 36.962383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097773, 30.121847, 36.689175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599511, 0.327374, -0.730351,
		0.486961, -0.873385, 0.008235,
		-0.635182, -0.360590, -0.683022,
		28.907217, 30.013670, 36.484268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680096, 29.915371, 36.490490>,  <29.351845, 30.266083, 36.962383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680096, 29.915371, 36.490490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353125, 30.028740, 36.289898>,  <29.156942, 30.096762, 36.169544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353125, 30.028740, 36.289898>,  <29.680096, 29.915371, 36.490490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353125, 30.028740, 36.289898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570767, 0.515936, -0.638776,
		0.077687, -0.808382, -0.583510,
		-0.817428, 0.283424, -0.501480,
		29.107897, 30.113768, 36.139454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680859, 29.665161, 35.805775>,  <29.680096, 29.915371, 36.490490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680859, 29.665161, 35.805775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505802, 30.016279, 35.883690>,  <29.400768, 30.226950, 35.930439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505802, 30.016279, 35.883690>,  <29.680859, 29.665161, 35.805775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505802, 30.016279, 35.883690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806653, 0.479001, -0.346220,
		-0.397217, 0.005610, -0.917708,
		-0.437641, 0.877796, 0.194793,
		29.374510, 30.279617, 35.942127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944807, 30.054743, 35.279636>,  <29.680859, 29.665161, 35.805775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944807, 30.054743, 35.279636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819796, 30.294588, 35.574333>,  <29.744789, 30.438496, 35.751152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819796, 30.294588, 35.574333>,  <29.944807, 30.054743, 35.279636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819796, 30.294588, 35.574333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819010, 0.562986, -0.110769,
		-0.481194, 0.568780, -0.667040,
		-0.312531, 0.599613, 0.736742,
		29.726036, 30.474472, 35.795357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884087, 30.833990, 35.268646>,  <29.944807, 30.054743, 35.279636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884087, 30.833990, 35.268646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948347, 30.773104, 35.658730>,  <29.986902, 30.736572, 35.892780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948347, 30.773104, 35.658730>,  <29.884087, 30.833990, 35.268646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948347, 30.773104, 35.658730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650169, 0.759703, 0.011473,
		-0.742611, 0.632204, 0.221011,
		0.160649, -0.152214, 0.975204,
		29.996542, 30.727440, 35.951290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886848, 31.474592, 35.658287>,  <29.884087, 30.833990, 35.268646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886848, 31.474592, 35.658287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133841, 31.202538, 35.816341>,  <30.282036, 31.039305, 35.911175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133841, 31.202538, 35.816341>,  <29.886848, 31.474592, 35.658287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133841, 31.202538, 35.816341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748675, 0.662256, -0.030038,
		-0.241253, 0.314378, 0.918130,
		0.617481, -0.680135, 0.395138,
		30.319084, 30.998497, 35.934883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161875, 31.820766, 36.167416>,  <29.886848, 31.474592, 35.658287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161875, 31.820766, 36.167416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412374, 31.523638, 36.072731>,  <30.562674, 31.345362, 36.015923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412374, 31.523638, 36.072731>,  <30.161875, 31.820766, 36.167416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412374, 31.523638, 36.072731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779305, 0.605119, 0.162835,
		0.022279, -0.286443, 0.957838,
		0.626249, -0.742820, -0.236708,
		30.600248, 31.300793, 36.001717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701605, 32.157425, 36.594788>,  <30.161875, 31.820766, 36.167416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701605, 32.157425, 36.594788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869591, 32.405266, 36.329540>,  <30.970383, 32.553970, 36.170391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869591, 32.405266, 36.329540>,  <30.701605, 32.157425, 36.594788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869591, 32.405266, 36.329540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458087, 0.486038, 0.744261,
		0.783444, -0.616329, -0.079712,
		0.419966, 0.619602, -0.663116,
		30.995581, 32.591145, 36.130604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412954, 31.994741, 36.515881>,  <30.701605, 32.157425, 36.594788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412954, 31.994741, 36.515881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343081, 32.384937, 36.462360>,  <31.301157, 32.619057, 36.430248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343081, 32.384937, 36.462360>,  <31.412954, 31.994741, 36.515881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343081, 32.384937, 36.462360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629945, 0.215164, 0.746239,
		0.756739, 0.046067, -0.652092,
		-0.174684, 0.975491, -0.133803,
		31.290676, 32.677586, 36.422218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074085, 32.348705, 36.564259>,  <31.412954, 31.994741, 36.515881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074085, 32.348705, 36.564259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798212, 32.633541, 36.616817>,  <31.632689, 32.804443, 36.648354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798212, 32.633541, 36.616817>,  <32.074085, 32.348705, 36.564259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798212, 32.633541, 36.616817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639937, 0.514484, 0.570777,
		0.338844, 0.477740, -0.810524,
		-0.689684, 0.712089, 0.131394,
		31.591307, 32.847168, 36.656235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300411, 33.030357, 36.371094>,  <32.074085, 32.348705, 36.564259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300411, 33.030357, 36.371094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059406, 33.045517, 36.689976>,  <31.914803, 33.054611, 36.881306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059406, 33.045517, 36.689976>,  <32.300411, 33.030357, 36.371094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059406, 33.045517, 36.689976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616985, 0.655734, 0.435135,
		-0.506266, 0.754040, -0.418471,
		-0.602515, 0.037896, 0.797207,
		31.878653, 33.056885, 36.929138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093349, 33.799137, 36.529503>,  <32.300411, 33.030357, 36.371094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093349, 33.799137, 36.529503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111988, 33.546318, 36.838913>,  <32.123173, 33.394627, 37.024559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111988, 33.546318, 36.838913>,  <32.093349, 33.799137, 36.529503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111988, 33.546318, 36.838913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666863, 0.596225, 0.447001,
		-0.743722, 0.495009, 0.449270,
		0.046597, -0.632046, 0.773529,
		32.125969, 33.356705, 37.070972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911505, 34.082119, 37.179169>,  <32.093349, 33.799137, 36.529503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911505, 34.082119, 37.179169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195145, 33.800640, 37.161327>,  <32.365330, 33.631752, 37.150623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195145, 33.800640, 37.161327>,  <31.911505, 34.082119, 37.179169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195145, 33.800640, 37.161327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676421, 0.661027, 0.324804,
		-0.199083, -0.260487, 0.944729,
		0.709099, -0.703697, -0.044599,
		32.407875, 33.589531, 37.147949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280148, 34.102665, 37.796474>,  <31.911505, 34.082119, 37.179169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280148, 34.102665, 37.796474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542377, 33.986603, 37.517612>,  <32.699715, 33.916965, 37.350296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542377, 33.986603, 37.517612>,  <32.280148, 34.102665, 37.796474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542377, 33.986603, 37.517612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658695, 0.671179, 0.340060,
		0.369246, -0.682149, 0.631135,
		0.655575, -0.290160, -0.697157,
		32.739052, 33.899555, 37.308464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821667, 33.614914, 38.010380>,  <32.280148, 34.102665, 37.796474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821667, 33.614914, 38.010380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922058, 33.875561, 37.724052>,  <32.982292, 34.031948, 37.552254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922058, 33.875561, 37.724052>,  <32.821667, 33.614914, 38.010380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922058, 33.875561, 37.724052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575247, 0.494344, 0.651702,
		0.778524, -0.575338, -0.250772,
		0.250981, 0.651621, -0.715820,
		32.997353, 34.071049, 37.509308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528889, 33.627171, 37.945423>,  <32.821667, 33.614914, 38.010380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528889, 33.627171, 37.945423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378632, 33.987152, 37.856907>,  <33.288475, 34.203140, 37.803795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378632, 33.987152, 37.856907>,  <33.528889, 33.627171, 37.945423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378632, 33.987152, 37.856907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519109, 0.402131, 0.754199,
		0.767734, 0.168438, -0.618234,
		-0.375647, 0.899955, -0.221292,
		33.265938, 34.257137, 37.790520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022148, 34.144005, 37.640827>,  <33.528889, 33.627171, 37.945423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022148, 34.144005, 37.640827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730957, 34.246025, 37.895386>,  <33.556244, 34.307240, 38.048119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730957, 34.246025, 37.895386>,  <34.022148, 34.144005, 37.640827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730957, 34.246025, 37.895386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670672, 0.072271, 0.738224,
		0.142294, 0.964222, -0.223670,
		-0.727977, 0.255054, 0.636393,
		33.512566, 34.322540, 38.086304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552429, 33.930111, 37.135361>,  <34.022148, 34.144005, 37.640827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552429, 33.930111, 37.135361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919842, 34.039249, 37.249798>,  <35.140289, 34.104733, 37.318462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919842, 34.039249, 37.249798>,  <34.552429, 33.930111, 37.135361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919842, 34.039249, 37.249798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149152, 0.431025, -0.889928,
		-0.366130, 0.860100, 0.355214,
		0.918533, 0.272849, 0.286097,
		35.195400, 34.121105, 37.335629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502426, 34.695496, 37.067043>,  <34.552429, 33.930111, 37.135361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502426, 34.695496, 37.067043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893192, 34.610085, 37.064419>,  <35.127651, 34.558838, 37.062843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893192, 34.610085, 37.064419>,  <34.502426, 34.695496, 37.067043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893192, 34.610085, 37.064419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137288, 0.651049, -0.746516,
		0.163671, 0.728383, 0.665335,
		0.976915, -0.213526, -0.006559,
		35.186268, 34.546028, 37.062450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885353, 35.404121, 37.134483>,  <34.502426, 34.695496, 37.067043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885353, 35.404121, 37.134483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117298, 35.118591, 36.977402>,  <35.256466, 34.947273, 36.883152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117298, 35.118591, 36.977402>,  <34.885353, 35.404121, 37.134483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117298, 35.118591, 36.977402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185185, 0.584878, -0.789699,
		0.793389, 0.385194, 0.471338,
		0.579863, -0.713823, -0.392703,
		35.291256, 34.904446, 36.859592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459225, 35.765160, 36.779037>,  <34.885353, 35.404121, 37.134483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459225, 35.765160, 36.779037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512615, 35.386242, 36.662544>,  <35.544651, 35.158890, 36.592648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512615, 35.386242, 36.662544>,  <35.459225, 35.765160, 36.779037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512615, 35.386242, 36.662544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260975, 0.317089, -0.911782,
		0.956073, 0.045696, 0.289544,
		0.133476, -0.947294, -0.291234,
		35.552658, 35.102055, 36.575172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161934, 35.583694, 36.638435>,  <35.459225, 35.765160, 36.779037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161934, 35.583694, 36.638435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931774, 35.331467, 36.430088>,  <35.793678, 35.180130, 36.305080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931774, 35.331467, 36.430088>,  <36.161934, 35.583694, 36.638435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931774, 35.331467, 36.430088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489512, 0.244675, -0.836966,
		0.655206, -0.736560, 0.167884,
		-0.575399, -0.630566, -0.520867,
		35.759155, 35.142296, 36.273827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535221, 35.288696, 36.158863>,  <36.161934, 35.583694, 36.638435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535221, 35.288696, 36.158863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181805, 35.221672, 35.983921>,  <35.969757, 35.181458, 35.878956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181805, 35.221672, 35.983921>,  <36.535221, 35.288696, 36.158863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181805, 35.221672, 35.983921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332144, 0.434214, -0.837340,
		0.330209, -0.885089, -0.327993,
		-0.883540, -0.167556, -0.437358,
		35.916744, 35.171406, 35.852715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641968, 34.866585, 35.623547>,  <36.535221, 35.288696, 36.158863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641968, 34.866585, 35.623547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311802, 35.084007, 35.562572>,  <36.113701, 35.214462, 35.525990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311802, 35.084007, 35.562572>,  <36.641968, 34.866585, 35.623547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311802, 35.084007, 35.562572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378090, 0.331778, -0.864275,
		-0.419208, -0.771020, -0.479368,
		-0.825417, 0.543555, -0.152431,
		36.064178, 35.247074, 35.516842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574173, 34.937809, 34.847935>,  <36.641968, 34.866585, 35.623547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574173, 34.937809, 34.847935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305588, 35.221298, 34.934513>,  <36.144436, 35.391392, 34.986462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305588, 35.221298, 34.934513>,  <36.574173, 34.937809, 34.847935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305588, 35.221298, 34.934513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236003, 0.481395, -0.844134,
		-0.702454, -0.515722, -0.490499,
		-0.671462, 0.708725, 0.216446,
		36.104149, 35.433914, 34.999447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280369, 34.962353, 34.256924>,  <36.574173, 34.937809, 34.847935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280369, 34.962353, 34.256924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206882, 35.308804, 34.442856>,  <36.162792, 35.516674, 34.554417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206882, 35.308804, 34.442856>,  <36.280369, 34.962353, 34.256924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206882, 35.308804, 34.442856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094772, 0.486282, -0.868647,
		-0.978401, -0.115528, -0.171420,
		-0.183711, 0.866131, 0.464830,
		36.151768, 35.568642, 34.582306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048988, 35.341663, 33.677528>,  <36.280369, 34.962353, 34.256924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048988, 35.341663, 33.677528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086750, 35.633781, 33.948158>,  <36.109406, 35.809052, 34.110538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086750, 35.633781, 33.948158>,  <36.048988, 35.341663, 33.677528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086750, 35.633781, 33.948158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225911, 0.646169, -0.728992,
		-0.969563, 0.221666, -0.103981,
		0.094403, 0.730295, 0.676578,
		36.115070, 35.852871, 34.151131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726601, 35.911518, 33.398907>,  <36.048988, 35.341663, 33.677528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726601, 35.911518, 33.398907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966774, 36.067223, 33.678322>,  <36.110878, 36.160645, 33.845970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966774, 36.067223, 33.678322>,  <35.726601, 35.911518, 33.398907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966774, 36.067223, 33.678322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373430, 0.635944, -0.675370,
		-0.707125, 0.666371, 0.236483,
		0.600437, 0.389262, 0.698535,
		36.146904, 36.184002, 33.887882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759972, 36.733494, 33.379993>,  <35.726601, 35.911518, 33.398907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759972, 36.733494, 33.379993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088516, 36.681030, 33.602043>,  <36.285645, 36.649551, 33.735271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088516, 36.681030, 33.602043>,  <35.759972, 36.733494, 33.379993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088516, 36.681030, 33.602043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466895, 0.713660, -0.522205,
		-0.327677, 0.688104, 0.647411,
		0.821363, -0.131158, 0.555122,
		36.334927, 36.641682, 33.768581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976982, 37.286625, 33.665543>,  <35.759972, 36.733494, 33.379993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976982, 37.286625, 33.665543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332474, 37.103565, 33.654861>,  <36.545769, 36.993729, 33.648453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332474, 37.103565, 33.654861>,  <35.976982, 37.286625, 33.665543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332474, 37.103565, 33.654861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345390, 0.706756, -0.617415,
		0.301427, 0.539496, 0.786185,
		0.888734, -0.457646, -0.026699,
		36.599094, 36.966270, 33.646851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470436, 37.737411, 33.906548>,  <35.976982, 37.286625, 33.665543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470436, 37.737411, 33.906548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660614, 37.470345, 33.677402>,  <36.774719, 37.310104, 33.539913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660614, 37.470345, 33.677402>,  <36.470436, 37.737411, 33.906548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660614, 37.470345, 33.677402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345152, 0.740527, -0.576619,
		0.809212, 0.076424, 0.582525,
		0.475443, -0.667667, -0.572866,
		36.803246, 37.270046, 33.505543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030884, 38.047741, 33.776146>,  <36.470436, 37.737411, 33.906548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030884, 38.047741, 33.776146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008011, 37.778103, 33.481575>,  <36.994286, 37.616318, 33.304832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008011, 37.778103, 33.481575>,  <37.030884, 38.047741, 33.776146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008011, 37.778103, 33.481575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406741, 0.657909, -0.633812,
		0.911752, -0.335779, 0.236561,
		-0.057185, -0.674098, -0.736425,
		36.990856, 37.575874, 33.260647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669605, 38.133015, 33.392857>,  <37.030884, 38.047741, 33.776146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669605, 38.133015, 33.392857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441418, 37.941574, 33.125870>,  <37.304504, 37.826710, 32.965679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441418, 37.941574, 33.125870>,  <37.669605, 38.133015, 33.392857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441418, 37.941574, 33.125870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493104, 0.450324, -0.744350,
		0.656824, -0.753754, -0.020892,
		-0.570465, -0.478605, -0.667463,
		37.270279, 37.797993, 32.925632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069778, 37.841431, 32.830399>,  <37.669605, 38.133015, 33.392857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069778, 37.841431, 32.830399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715679, 37.840561, 32.644356>,  <37.503220, 37.840038, 32.532730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715679, 37.840561, 32.644356>,  <38.069778, 37.841431, 32.830399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715679, 37.840561, 32.644356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447650, 0.267468, -0.853270,
		0.126259, -0.963564, -0.235802,
		-0.885250, -0.002176, -0.465110,
		37.450104, 37.839909, 32.504822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171925, 37.643276, 32.210484>,  <38.069778, 37.841431, 32.830399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171925, 37.643276, 32.210484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813053, 37.815594, 32.171532>,  <37.597729, 37.918983, 32.148159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813053, 37.815594, 32.171532>,  <38.171925, 37.643276, 32.210484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813053, 37.815594, 32.171532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270657, 0.362042, -0.892004,
		-0.349017, -0.826644, -0.441415,
		-0.897180, 0.430797, -0.097379,
		37.543900, 37.944832, 32.142319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798382, 37.459198, 31.567822>,  <38.171925, 37.643276, 32.210484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798382, 37.459198, 31.567822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652569, 37.814125, 31.680805>,  <37.565079, 38.027081, 31.748596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652569, 37.814125, 31.680805>,  <37.798382, 37.459198, 31.567822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652569, 37.814125, 31.680805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242886, 0.383437, -0.891057,
		-0.898955, -0.256218, -0.355293,
		-0.364537, 0.887316, 0.282461,
		37.543209, 38.080318, 31.765543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633369, 37.702377, 31.013474>,  <37.798382, 37.459198, 31.567822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633369, 37.702377, 31.013474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610176, 38.042290, 31.223049>,  <37.596260, 38.246239, 31.348795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610176, 38.042290, 31.223049>,  <37.633369, 37.702377, 31.013474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610176, 38.042290, 31.223049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047968, 0.526586, -0.848768,
		-0.997165, -0.024082, -0.071295,
		-0.057983, 0.849781, 0.523938,
		37.592781, 38.297222, 31.380230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157639, 38.198025, 30.617277>,  <37.633369, 37.702377, 31.013474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157639, 38.198025, 30.617277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390816, 38.424713, 30.850172>,  <37.530724, 38.560726, 30.989908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390816, 38.424713, 30.850172>,  <37.157639, 38.198025, 30.617277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390816, 38.424713, 30.850172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210864, 0.586515, -0.782008,
		-0.784671, 0.578642, 0.222406,
		0.582948, 0.566721, 0.582236,
		37.565701, 38.594730, 31.024843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876362, 38.813896, 30.508821>,  <37.157639, 38.198025, 30.617277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876362, 38.813896, 30.508821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245480, 38.867363, 30.653364>,  <37.466949, 38.899441, 30.740089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245480, 38.867363, 30.653364>,  <36.876362, 38.813896, 30.508821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245480, 38.867363, 30.653364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141250, 0.755223, -0.640068,
		-0.358459, 0.641695, 0.678038,
		0.922798, 0.133665, 0.361356,
		37.522320, 38.907463, 30.761770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902065, 39.581837, 30.482882>,  <36.876362, 38.813896, 30.508821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902065, 39.581837, 30.482882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284859, 39.474201, 30.526285>,  <37.514534, 39.409618, 30.552326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284859, 39.474201, 30.526285>,  <36.902065, 39.581837, 30.482882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284859, 39.474201, 30.526285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287025, 0.823292, -0.489700,
		0.042441, 0.499779, 0.865112,
		0.956982, -0.269093, 0.108508,
		37.571953, 39.393475, 30.558838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228390, 40.219616, 30.711866>,  <36.902065, 39.581837, 30.482882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228390, 40.219616, 30.711866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512367, 39.982872, 30.559195>,  <37.682755, 39.840828, 30.467590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512367, 39.982872, 30.559195>,  <37.228390, 40.219616, 30.711866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512367, 39.982872, 30.559195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327755, 0.757367, -0.564775,
		0.623339, 0.275863, 0.731675,
		0.709947, -0.591857, -0.381682,
		37.725353, 39.805313, 30.444691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750809, 40.628723, 30.719175>,  <37.228390, 40.219616, 30.711866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750809, 40.628723, 30.719175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832451, 40.346775, 30.447441>,  <37.881435, 40.177605, 30.284401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832451, 40.346775, 30.447441>,  <37.750809, 40.628723, 30.719175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832451, 40.346775, 30.447441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330062, 0.702863, -0.630113,
		0.921629, -0.095614, 0.376109,
		0.204106, -0.704870, -0.679338,
		37.893684, 40.135315, 30.243639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470577, 40.802177, 30.513947>,  <37.750809, 40.628723, 30.719175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470577, 40.802177, 30.513947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324017, 40.567909, 30.224743>,  <38.236080, 40.427349, 30.051220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324017, 40.567909, 30.224743>,  <38.470577, 40.802177, 30.513947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324017, 40.567909, 30.224743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341487, 0.638180, -0.690009,
		0.865525, -0.499721, -0.033835,
		-0.366405, -0.585666, -0.723010,
		38.214096, 40.392208, 30.007839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891144, 40.929443, 29.880928>,  <38.470577, 40.802177, 30.513947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891144, 40.929443, 29.880928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550529, 40.765163, 29.750568>,  <38.346161, 40.666595, 29.672354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550529, 40.765163, 29.750568>,  <38.891144, 40.929443, 29.880928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550529, 40.765163, 29.750568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071659, 0.524595, -0.848331,
		0.519331, -0.745760, -0.417298,
		-0.851563, -0.410661, -0.325878,
		38.295067, 40.641956, 29.652800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119949, 40.700081, 29.351105>,  <38.891144, 40.929443, 29.880928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119949, 40.700081, 29.351105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722610, 40.709801, 29.306074>,  <38.484207, 40.715633, 29.279057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722610, 40.709801, 29.306074>,  <39.119949, 40.700081, 29.351105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722610, 40.709801, 29.306074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106742, 0.561268, -0.820722,
		0.043241, -0.827277, -0.560127,
		-0.993347, 0.024300, -0.112575,
		38.424606, 40.717091, 29.272301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912079, 40.363171, 28.684650>,  <39.119949, 40.700081, 29.351105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912079, 40.363171, 28.684650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624084, 40.618073, 28.794577>,  <38.451290, 40.771015, 28.860533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624084, 40.618073, 28.794577>,  <38.912079, 40.363171, 28.684650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624084, 40.618073, 28.794577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088564, 0.477127, -0.874361,
		-0.688316, -0.605187, -0.399961,
		-0.719984, 0.637259, 0.274816,
		38.408089, 40.809250, 28.877022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542519, 40.523937, 28.072033>,  <38.912079, 40.363171, 28.684650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542519, 40.523937, 28.072033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438038, 40.825806, 28.312782>,  <38.375351, 41.006927, 28.457232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438038, 40.825806, 28.312782>,  <38.542519, 40.523937, 28.072033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438038, 40.825806, 28.312782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140890, 0.646647, -0.749665,
		-0.954947, -0.111016, -0.275230,
		-0.261202, 0.754668, 0.601873,
		38.359676, 41.052204, 28.493343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295807, 41.016937, 27.583952>,  <38.542519, 40.523937, 28.072033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295807, 41.016937, 27.583952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361210, 41.240311, 27.909262>,  <38.400452, 41.374336, 28.104446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361210, 41.240311, 27.909262>,  <38.295807, 41.016937, 27.583952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361210, 41.240311, 27.909262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157891, 0.798929, -0.580330,
		-0.973825, 0.223298, 0.042460,
		0.163509, 0.558436, 0.813274,
		38.410263, 41.407841, 28.153244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941708, 41.576256, 27.503208>,  <38.295807, 41.016937, 27.583952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941708, 41.576256, 27.503208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237301, 41.667240, 27.756874>,  <38.414658, 41.721828, 27.909073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237301, 41.667240, 27.756874>,  <37.941708, 41.576256, 27.503208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237301, 41.667240, 27.756874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263689, 0.768543, -0.582931,
		-0.619975, 0.598000, 0.507964,
		0.738985, 0.227458, 0.634164,
		38.458996, 41.735477, 27.947123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995541, 42.373466, 27.549402>,  <37.941708, 41.576256, 27.503208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995541, 42.373466, 27.549402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333492, 42.238605, 27.715540>,  <38.536263, 42.157688, 27.815222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333492, 42.238605, 27.715540>,  <37.995541, 42.373466, 27.549402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333492, 42.238605, 27.715540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530013, 0.632907, -0.564371,
		-0.072592, 0.696961, 0.713425,
		0.844877, -0.337156, 0.415343,
		38.586956, 42.137459, 27.840143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429073, 42.978157, 27.739874>,  <37.995541, 42.373466, 27.549402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429073, 42.978157, 27.739874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696644, 42.681026, 27.728907>,  <38.857185, 42.502750, 27.722326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696644, 42.681026, 27.728907>,  <38.429073, 42.978157, 27.739874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696644, 42.681026, 27.728907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687756, 0.632486, -0.356306,
		0.282014, 0.219486, 0.933967,
		0.668925, -0.742824, -0.027417,
		38.897320, 42.458179, 27.720682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008907, 43.228798, 28.047049>,  <38.429073, 42.978157, 27.739874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008907, 43.228798, 28.047049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118065, 42.912975, 27.827183>,  <39.183559, 42.723480, 27.695263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118065, 42.912975, 27.827183>,  <39.008907, 43.228798, 28.047049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118065, 42.912975, 27.827183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812061, 0.495399, -0.308442,
		0.515836, -0.362191, 0.776358,
		0.272892, -0.789555, -0.549666,
		39.199932, 42.676109, 27.662283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687618, 43.101402, 28.256512>,  <39.008907, 43.228798, 28.047049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687618, 43.101402, 28.256512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652321, 42.940361, 27.892067>,  <39.631142, 42.843739, 27.673401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652321, 42.940361, 27.892067>,  <39.687618, 43.101402, 28.256512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652321, 42.940361, 27.892067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789799, 0.529094, -0.310285,
		0.606985, -0.746975, 0.271288,
		-0.088239, -0.402602, -0.911112,
		39.625851, 42.819580, 27.618732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370876, 42.969109, 28.047369>,  <39.687618, 43.101402, 28.256512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370876, 42.969109, 28.047369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136814, 42.984871, 27.723385>,  <39.996376, 42.994328, 27.528994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136814, 42.984871, 27.723385>,  <40.370876, 42.969109, 28.047369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136814, 42.984871, 27.723385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600789, 0.691919, -0.400375,
		0.544649, -0.720898, -0.428559,
		-0.585159, 0.039409, -0.809961,
		39.961266, 42.996693, 27.480396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834240, 43.055576, 27.615742>,  <40.370876, 42.969109, 28.047369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834240, 43.055576, 27.615742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500832, 43.183865, 27.435795>,  <40.300785, 43.260838, 27.327826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500832, 43.183865, 27.435795>,  <40.834240, 43.055576, 27.615742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500832, 43.183865, 27.435795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515217, 0.745224, -0.423310,
		0.199488, -0.584618, -0.786401,
		-0.833520, 0.320722, -0.449868,
		40.250774, 43.280083, 27.300835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021107, 43.043282, 26.821827>,  <40.834240, 43.055576, 27.615742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021107, 43.043282, 26.821827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730507, 43.284794, 26.953068>,  <40.556149, 43.429699, 27.031813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730507, 43.284794, 26.953068>,  <41.021107, 43.043282, 26.821827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730507, 43.284794, 26.953068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435796, 0.773997, -0.459359,
		-0.531302, -0.190737, -0.825432,
		-0.726498, 0.603778, 0.328104,
		40.512558, 43.465927, 27.051498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105255, 43.597397, 26.225597>,  <41.021107, 43.043282, 26.821827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105255, 43.597397, 26.225597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817764, 43.761715, 26.449984>,  <40.645271, 43.860306, 26.584616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817764, 43.761715, 26.449984>,  <41.105255, 43.597397, 26.225597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817764, 43.761715, 26.449984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250234, 0.905565, -0.342542,
		-0.648707, -0.105819, -0.753646,
		-0.718723, 0.410797, 0.560966,
		40.602146, 43.884953, 26.618273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735386, 44.128574, 25.782974>,  <41.105255, 43.597397, 26.225597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735386, 44.128574, 25.782974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710144, 44.229385, 26.169239>,  <40.695000, 44.289871, 26.400997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710144, 44.229385, 26.169239>,  <40.735386, 44.128574, 25.782974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710144, 44.229385, 26.169239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197098, 0.951678, -0.235502,
		-0.978351, 0.175469, -0.109726,
		-0.063100, 0.252031, 0.965660,
		40.691216, 44.304993, 26.458937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315514, 44.681396, 25.836378>,  <40.735386, 44.128574, 25.782974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315514, 44.681396, 25.836378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572456, 44.686443, 26.142899>,  <40.726624, 44.689472, 26.326811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572456, 44.686443, 26.142899>,  <40.315514, 44.681396, 25.836378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572456, 44.686443, 26.142899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166585, 0.973661, -0.155674,
		-0.748080, 0.227653, 0.623338,
		0.642359, 0.012617, 0.766300,
		40.765163, 44.690228, 26.372789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017139, 45.111538, 26.382437>,  <40.315514, 44.681396, 25.836378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017139, 45.111538, 26.382437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416786, 45.096092, 26.389090>,  <40.656574, 45.086823, 26.393082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416786, 45.096092, 26.389090>,  <40.017139, 45.111538, 26.382437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416786, 45.096092, 26.389090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041441, 0.971327, -0.234109,
		-0.007113, 0.234592, 0.972068,
		0.999116, -0.038619, 0.016631,
		40.716522, 45.084507, 26.394079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171940, 45.573380, 26.901375>,  <40.017139, 45.111538, 26.382437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171940, 45.573380, 26.901375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462036, 45.548008, 26.627146>,  <40.636093, 45.532784, 26.462608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462036, 45.548008, 26.627146>,  <40.171940, 45.573380, 26.901375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462036, 45.548008, 26.627146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005311, 0.996233, -0.086551,
		0.688479, 0.059129, 0.722842,
		0.725236, -0.063427, -0.685572,
		40.679607, 45.528980, 26.421474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764732, 45.699360, 27.272749>,  <40.171940, 45.573380, 26.901375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764732, 45.699360, 27.272749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867054, 45.913525, 27.594717>,  <40.928448, 46.042023, 27.787899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867054, 45.913525, 27.594717>,  <40.764732, 45.699360, 27.272749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867054, 45.913525, 27.594717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227550, 0.775882, -0.588411,
		-0.939568, 0.333675, 0.076637,
		0.255799, 0.535413, 0.804922,
		40.943794, 46.074150, 27.836193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387642, 46.395771, 27.376926>,  <40.764732, 45.699360, 27.272749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387642, 46.395771, 27.376926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757252, 46.365685, 27.526869>,  <40.979019, 46.347633, 27.616835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757252, 46.365685, 27.526869>,  <40.387642, 46.395771, 27.376926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757252, 46.365685, 27.526869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264827, 0.833082, -0.485634,
		-0.275758, 0.548011, 0.789710,
		0.924026, -0.075219, 0.374858,
		41.034458, 46.343121, 27.639326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641220, 46.947899, 27.162685>,  <40.387642, 46.395771, 27.376926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641220, 46.947899, 27.162685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971165, 46.759945, 27.288425>,  <41.169132, 46.647171, 27.363871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971165, 46.759945, 27.288425>,  <40.641220, 46.947899, 27.162685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971165, 46.759945, 27.288425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560813, 0.609887, -0.559934,
		0.071385, 0.638159, 0.766588,
		0.824859, -0.469883, 0.314351,
		41.218624, 46.618980, 27.382730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240246, 46.719990, 26.815067>,  <40.641220, 46.947899, 27.162685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240246, 46.719990, 26.815067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255222, 47.082737, 26.982964>,  <41.264210, 47.300385, 27.083700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255222, 47.082737, 26.982964>,  <41.240246, 46.719990, 26.815067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255222, 47.082737, 26.982964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055844, -0.421277, 0.905211,
		0.997737, -0.010453, -0.066417,
		0.037442, 0.906872, 0.419740,
		41.266457, 47.354797, 27.108885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854588, 46.700283, 27.145590>,  <41.240246, 46.719990, 26.815067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854588, 46.700283, 27.145590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581776, 46.954601, 27.290144>,  <41.418087, 47.107193, 27.376877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581776, 46.954601, 27.290144>,  <41.854588, 46.700283, 27.145590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581776, 46.954601, 27.290144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035178, -0.522103, 0.852157,
		0.730476, 0.568486, 0.378456,
		-0.682032, 0.635793, 0.361385,
		41.377167, 47.145340, 27.398560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092323, 47.048447, 27.772747>,  <41.854588, 46.700283, 27.145590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092323, 47.048447, 27.772747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700893, 46.970463, 27.746283>,  <41.466034, 46.923672, 27.730404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700893, 46.970463, 27.746283>,  <42.092323, 47.048447, 27.772747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700893, 46.970463, 27.746283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084785, -0.674451, 0.733435,
		-0.187615, 0.712113, 0.676532,
		-0.978577, -0.194963, -0.066161,
		41.407322, 46.911972, 27.726435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001938, 46.659271, 28.315166>,  <42.092323, 47.048447, 27.772747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001938, 46.659271, 28.315166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636677, 46.643757, 28.152863>,  <41.417519, 46.634449, 28.055481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636677, 46.643757, 28.152863>,  <42.001938, 46.659271, 28.315166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636677, 46.643757, 28.152863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285773, -0.648921, 0.705149,
		-0.290653, 0.759867, 0.581484,
		-0.913156, -0.038781, -0.405761,
		41.362728, 46.632122, 28.031134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497677, 46.831833, 28.760178>,  <42.001938, 46.659271, 28.315166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497677, 46.831833, 28.760178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318707, 46.589417, 28.497110>,  <41.211327, 46.443966, 28.339270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318707, 46.589417, 28.497110>,  <41.497677, 46.831833, 28.760178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318707, 46.589417, 28.497110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217927, -0.639330, 0.737404,
		-0.867364, 0.473254, 0.153978,
		-0.447423, -0.606042, -0.657667,
		41.184479, 46.407604, 28.299810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832970, 46.625401, 29.033110>,  <41.497677, 46.831833, 28.760178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832970, 46.625401, 29.033110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910042, 46.354649, 28.748940>,  <40.956284, 46.192196, 28.578438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910042, 46.354649, 28.748940>,  <40.832970, 46.625401, 29.033110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910042, 46.354649, 28.748940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364655, -0.721536, 0.588569,
		-0.910990, 0.145658, -0.385851,
		0.192676, -0.676883, -0.710427,
		40.967846, 46.151585, 28.535812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253059, 46.337307, 29.052048>,  <40.832970, 46.625401, 29.033110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253059, 46.337307, 29.052048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543121, 46.078754, 28.957106>,  <40.717159, 45.923622, 28.900141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543121, 46.078754, 28.957106>,  <40.253059, 46.337307, 29.052048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543121, 46.078754, 28.957106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289649, -0.599065, 0.746475,
		-0.624704, -0.472557, -0.621638,
		0.725154, -0.646383, -0.237363,
		40.760670, 45.884842, 28.885899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981083, 45.728207, 29.347479>,  <40.253059, 46.337307, 29.052048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981083, 45.728207, 29.347479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349979, 45.612003, 29.245438>,  <40.571316, 45.542282, 29.184212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349979, 45.612003, 29.245438>,  <39.981083, 45.728207, 29.347479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349979, 45.612003, 29.245438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029417, -0.710652, 0.702928,
		-0.385497, -0.640764, -0.663938,
		0.922240, -0.290508, -0.255104,
		40.626652, 45.524853, 29.168907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975716, 45.027557, 29.306494>,  <39.981083, 45.728207, 29.347479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975716, 45.027557, 29.306494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367153, 45.104122, 29.336750>,  <40.602016, 45.150063, 29.354904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367153, 45.104122, 29.336750>,  <39.975716, 45.027557, 29.306494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367153, 45.104122, 29.336750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065655, -0.638638, 0.766702,
		0.195066, -0.745320, -0.637532,
		0.978590, 0.191415, 0.075642,
		40.660728, 45.161545, 29.359442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267349, 44.391315, 29.303532>,  <39.975716, 45.027557, 29.306494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267349, 44.391315, 29.303532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542004, 44.624565, 29.477198>,  <40.706795, 44.764515, 29.581396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542004, 44.624565, 29.477198>,  <40.267349, 44.391315, 29.303532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542004, 44.624565, 29.477198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108522, -0.672720, 0.731895,
		0.718855, -0.455430, -0.525196,
		0.686637, 0.583122, 0.434164,
		40.747993, 44.799503, 29.607447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739616, 43.997997, 29.376785>,  <40.267349, 44.391315, 29.303532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739616, 43.997997, 29.376785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808552, 44.294342, 29.636452>,  <40.849915, 44.472149, 29.792252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808552, 44.294342, 29.636452>,  <40.739616, 43.997997, 29.376785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808552, 44.294342, 29.636452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009608, -0.660261, 0.750975,
		0.984991, -0.123186, -0.120908,
		0.172340, 0.740865, 0.649167,
		40.860252, 44.516602, 29.831202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274559, 43.706470, 29.710632>,  <40.739616, 43.997997, 29.376785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274559, 43.706470, 29.710632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099911, 43.977314, 29.947575>,  <40.995121, 44.139820, 30.089739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099911, 43.977314, 29.947575>,  <41.274559, 43.706470, 29.710632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099911, 43.977314, 29.947575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093876, -0.689129, 0.718532,
		0.894732, 0.258121, 0.364455,
		-0.436625, 0.677108, 0.592355,
		40.968922, 44.180447, 30.125280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528374, 43.620651, 30.392532>,  <41.274559, 43.706470, 29.710632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528374, 43.620651, 30.392532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185154, 43.821789, 30.434284>,  <40.979221, 43.942471, 30.459335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185154, 43.821789, 30.434284>,  <41.528374, 43.620651, 30.392532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185154, 43.821789, 30.434284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259951, -0.600548, 0.756153,
		0.442911, 0.621685, 0.646016,
		-0.858053, 0.502841, 0.104381,
		40.927738, 43.972641, 30.465599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423946, 43.655254, 31.082026>,  <41.528374, 43.620651, 30.392532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423946, 43.655254, 31.082026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054161, 43.751713, 30.963900>,  <40.832291, 43.809589, 30.893024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054161, 43.751713, 30.963900>,  <41.423946, 43.655254, 31.082026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054161, 43.751713, 30.963900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381252, -0.590627, 0.711200,
		-0.002919, 0.770070, 0.637952,
		-0.924466, 0.241145, -0.295315,
		40.776821, 43.824055, 30.875305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090443, 43.808228, 31.624310>,  <41.423946, 43.655254, 31.082026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090443, 43.808228, 31.624310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797657, 43.730728, 31.363024>,  <40.621986, 43.684227, 31.206253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797657, 43.730728, 31.363024>,  <41.090443, 43.808228, 31.624310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797657, 43.730728, 31.363024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497117, -0.503761, 0.706470,
		-0.465942, 0.841835, 0.272419,
		-0.731965, -0.193750, -0.653213,
		40.578068, 43.672604, 31.167059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462105, 43.892567, 32.014210>,  <41.090443, 43.808228, 31.624310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462105, 43.892567, 32.014210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376614, 43.655937, 31.703247>,  <40.325317, 43.513958, 31.516670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376614, 43.655937, 31.703247>,  <40.462105, 43.892567, 32.014210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376614, 43.655937, 31.703247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413176, -0.666370, 0.620674,
		-0.885214, 0.453864, -0.101999,
		-0.213733, -0.591573, -0.777405,
		40.312492, 43.478466, 31.470026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740173, 43.683075, 32.121216>,  <40.462105, 43.892567, 32.014210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740173, 43.683075, 32.121216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912075, 43.413261, 31.881111>,  <40.015217, 43.251373, 31.737049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912075, 43.413261, 31.881111>,  <39.740173, 43.683075, 32.121216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912075, 43.413261, 31.881111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329433, -0.736085, 0.591314,
		-0.840708, -0.056370, -0.538547,
		0.429749, -0.674537, -0.600263,
		40.041000, 43.210899, 31.701033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156906, 43.189426, 31.882647>,  <39.740173, 43.683075, 32.121216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156906, 43.189426, 31.882647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501163, 42.990566, 31.838587>,  <39.707718, 42.871250, 31.812151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501163, 42.990566, 31.838587>,  <39.156906, 43.189426, 31.882647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501163, 42.990566, 31.838587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344826, -0.728180, 0.592325,
		-0.374683, -0.471799, -0.798135,
		0.860644, -0.497152, -0.110148,
		39.759357, 42.841419, 31.805542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910484, 42.560543, 31.806292>,  <39.156906, 43.189426, 31.882647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910484, 42.560543, 31.806292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295921, 42.505184, 31.897795>,  <39.527184, 42.471970, 31.952696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295921, 42.505184, 31.897795>,  <38.910484, 42.560543, 31.806292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295921, 42.505184, 31.897795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254982, -0.733089, 0.630528,
		0.080434, -0.665902, -0.741690,
		0.963595, -0.138402, 0.228759,
		39.584999, 42.463665, 31.966423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045811, 41.853554, 31.645290>,  <38.910484, 42.560543, 31.806292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045811, 41.853554, 31.645290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315296, 41.991268, 31.906845>,  <39.476990, 42.073898, 32.063778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315296, 41.991268, 31.906845>,  <39.045811, 41.853554, 31.645290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315296, 41.991268, 31.906845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190683, -0.773887, 0.603936,
		0.713965, -0.531567, -0.455730,
		0.673716, 0.344290, 0.653889,
		39.517410, 42.094555, 32.103012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234077, 41.293583, 32.052402>,  <39.045811, 41.853554, 31.645290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234077, 41.293583, 32.052402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373089, 41.569733, 32.306210>,  <39.456497, 41.735420, 32.458492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373089, 41.569733, 32.306210>,  <39.234077, 41.293583, 32.052402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373089, 41.569733, 32.306210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193353, -0.609391, 0.768933,
		0.917518, -0.389912, -0.078296,
		0.347529, 0.690371, 0.634518,
		39.477348, 41.776844, 32.496563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550240, 40.909897, 32.539207>,  <39.234077, 41.293583, 32.052402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550240, 40.909897, 32.539207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480053, 41.265205, 32.708996>,  <39.437943, 41.478390, 32.810871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480053, 41.265205, 32.708996>,  <39.550240, 40.909897, 32.539207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480053, 41.265205, 32.708996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234495, -0.456465, 0.858284,
		0.956150, 0.051063, 0.288391,
		-0.175467, 0.888275, 0.424475,
		39.427414, 41.531689, 32.836338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933819, 40.956390, 33.151230>,  <39.550240, 40.909897, 32.539207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933819, 40.956390, 33.151230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633907, 41.216026, 33.202641>,  <39.453960, 41.371807, 33.233486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633907, 41.216026, 33.202641>,  <39.933819, 40.956390, 33.151230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633907, 41.216026, 33.202641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306022, -0.512379, 0.802383,
		0.586672, 0.562277, 0.582805,
		-0.749778, 0.649086, 0.128529,
		39.408974, 41.410751, 33.241199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939262, 41.119759, 33.890915>,  <39.933819, 40.956390, 33.151230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939262, 41.119759, 33.890915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586128, 41.282078, 33.796318>,  <39.374249, 41.379471, 33.739559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586128, 41.282078, 33.796318>,  <39.939262, 41.119759, 33.890915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586128, 41.282078, 33.796318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422441, -0.465935, 0.777463,
		0.205304, 0.786276, 0.582770,
		-0.882833, 0.405802, -0.236497,
		39.321278, 41.403820, 33.725368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725048, 41.553272, 34.401356>,  <39.939262, 41.119759, 33.890915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725048, 41.553272, 34.401356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373692, 41.470165, 34.229191>,  <39.162876, 41.420300, 34.125893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373692, 41.470165, 34.229191>,  <39.725048, 41.553272, 34.401356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373692, 41.470165, 34.229191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374951, -0.258867, 0.890168,
		-0.296368, 0.943303, 0.149485,
		-0.878395, -0.207768, -0.430412,
		39.110172, 41.407833, 34.100067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183846, 41.950363, 34.691277>,  <39.725048, 41.553272, 34.401356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183846, 41.950363, 34.691277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024338, 41.610950, 34.552147>,  <38.928631, 41.407303, 34.468670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024338, 41.610950, 34.552147>,  <39.183846, 41.950363, 34.691277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024338, 41.610950, 34.552147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479162, -0.130603, 0.867955,
		-0.781911, 0.512780, -0.354502,
		-0.398771, -0.848528, -0.347825,
		38.904705, 41.356392, 34.447800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547268, 41.950127, 35.015057>,  <39.183846, 41.950363, 34.691277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547268, 41.950127, 35.015057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582066, 41.581333, 34.864128>,  <38.602943, 41.360058, 34.773571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582066, 41.581333, 34.864128>,  <38.547268, 41.950127, 35.015057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582066, 41.581333, 34.864128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347665, -0.383043, 0.855808,
		-0.933574, 0.056729, -0.353866,
		0.086996, -0.921987, -0.377322,
		38.608166, 41.304737, 34.750931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946304, 41.656055, 35.297134>,  <38.547268, 41.950127, 35.015057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946304, 41.656055, 35.297134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145767, 41.322575, 35.202236>,  <38.265446, 41.122486, 35.145298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145767, 41.322575, 35.202236>,  <37.946304, 41.656055, 35.297134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145767, 41.322575, 35.202236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388300, -0.459557, 0.798768,
		-0.774959, -0.306192, -0.552888,
		0.498660, -0.833699, -0.237243,
		38.295364, 41.072464, 35.131062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506104, 41.128910, 35.158909>,  <37.946304, 41.656055, 35.297134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506104, 41.128910, 35.158909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844139, 40.953484, 35.281204>,  <38.046963, 40.848228, 35.354580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844139, 40.953484, 35.281204>,  <37.506104, 41.128910, 35.158909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844139, 40.953484, 35.281204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507668, -0.479021, 0.716110,
		-0.167609, -0.760392, -0.627464,
		0.845092, -0.438570, 0.305738,
		38.097668, 40.821911, 35.372925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299034, 40.477367, 35.198864>,  <37.506104, 41.128910, 35.158909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299034, 40.477367, 35.198864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631615, 40.486130, 35.420929>,  <37.831165, 40.491386, 35.554169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631615, 40.486130, 35.420929>,  <37.299034, 40.477367, 35.198864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631615, 40.486130, 35.420929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378734, -0.708736, 0.595192,
		0.406499, -0.705133, -0.580987,
		0.831456, 0.021905, 0.555159,
		37.881050, 40.492702, 35.587475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469818, 39.744736, 35.136410>,  <37.299034, 40.477367, 35.198864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469818, 39.744736, 35.136410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641106, 39.899193, 35.463219>,  <37.743877, 39.991867, 35.659302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641106, 39.899193, 35.463219>,  <37.469818, 39.744736, 35.136410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641106, 39.899193, 35.463219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367539, -0.751530, 0.547829,
		0.825555, -0.534879, -0.179899,
		0.428222, 0.386143, 0.817018,
		37.769573, 40.015038, 35.708324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816574, 39.139870, 35.488396>,  <37.469818, 39.744736, 35.136410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816574, 39.139870, 35.488396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817207, 39.411465, 35.782055>,  <37.817589, 39.574421, 35.958248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817207, 39.411465, 35.782055>,  <37.816574, 39.139870, 35.488396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817207, 39.411465, 35.782055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292168, -0.701799, 0.649705,
		0.956366, -0.215522, 0.197269,
		0.001582, 0.678991, 0.734145,
		37.817680, 39.615162, 36.002296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965321, 38.797569, 36.108521>,  <37.816574, 39.139870, 35.488396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965321, 38.797569, 36.108521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808605, 39.138489, 36.247135>,  <37.714577, 39.343040, 36.330303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808605, 39.138489, 36.247135>,  <37.965321, 38.797569, 36.108521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808605, 39.138489, 36.247135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476005, -0.510095, 0.716395,
		0.787349, 0.115724, 0.605549,
		-0.391792, 0.852298, 0.346537,
		37.691067, 39.394176, 36.351097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827702, 38.757751, 36.749580>,  <37.965321, 38.797569, 36.108521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827702, 38.757751, 36.749580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573380, 39.065430, 36.724007>,  <37.420784, 39.250034, 36.708664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573380, 39.065430, 36.724007>,  <37.827702, 38.757751, 36.749580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573380, 39.065430, 36.724007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617445, -0.457168, 0.640124,
		0.463150, 0.446473, 0.765607,
		-0.635809, 0.769194, -0.063935,
		37.382637, 39.296188, 36.704826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596966, 38.898643, 37.479305>,  <37.827702, 38.757751, 36.749580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596966, 38.898643, 37.479305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327053, 39.032894, 37.216393>,  <37.165104, 39.113445, 37.058643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327053, 39.032894, 37.216393>,  <37.596966, 38.898643, 37.479305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327053, 39.032894, 37.216393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725183, -0.466900, 0.506078,
		-0.137029, 0.818142, 0.558450,
		-0.674784, 0.335631, -0.657281,
		37.124619, 39.133583, 37.019207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090862, 39.157413, 37.929539>,  <37.596966, 38.898643, 37.479305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090862, 39.157413, 37.929539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897224, 39.097420, 37.584713>,  <36.781040, 39.061424, 37.377819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897224, 39.097420, 37.584713>,  <37.090862, 39.157413, 37.929539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897224, 39.097420, 37.584713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657378, -0.587880, 0.471435,
		-0.577498, 0.794923, 0.185995,
		-0.484097, -0.149984, -0.862064,
		36.751995, 39.052425, 37.326096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354252, 39.200890, 38.037243>,  <37.090862, 39.157413, 37.929539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354252, 39.200890, 38.037243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395973, 38.964882, 37.716991>,  <36.421005, 38.823277, 37.524841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395973, 38.964882, 37.716991>,  <36.354252, 39.200890, 38.037243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395973, 38.964882, 37.716991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598663, -0.680082, 0.423191,
		-0.794181, 0.435167, -0.424153,
		0.104300, -0.590015, -0.800627,
		36.427265, 38.787876, 37.476803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734215, 38.839642, 38.021034>,  <36.354252, 39.200890, 38.037243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734215, 38.839642, 38.021034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952850, 38.642139, 37.750496>,  <36.084034, 38.523640, 37.588173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952850, 38.642139, 37.750496>,  <35.734215, 38.839642, 38.021034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952850, 38.642139, 37.750496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419995, -0.860386, 0.288688,
		-0.724459, 0.126267, -0.677655,
		0.546593, -0.493754, -0.676346,
		36.116829, 38.494015, 37.547592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208851, 38.348209, 37.683926>,  <35.734215, 38.839642, 38.021034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208851, 38.348209, 37.683926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582668, 38.209301, 37.652870>,  <35.806957, 38.125954, 37.634235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582668, 38.209301, 37.652870>,  <35.208851, 38.348209, 37.683926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582668, 38.209301, 37.652870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303447, -0.891689, 0.335874,
		-0.185870, -0.290330, -0.938702,
		0.934544, -0.347275, -0.077638,
		35.863033, 38.105118, 37.629578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188530, 37.696026, 37.402031>,  <35.208851, 38.348209, 37.683926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188530, 37.696026, 37.402031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549770, 37.694710, 37.573799>,  <35.766514, 37.693920, 37.676861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549770, 37.694710, 37.573799>,  <35.188530, 37.696026, 37.402031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549770, 37.694710, 37.573799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075920, -0.985443, 0.152114,
		0.422666, -0.169975, -0.890203,
		0.903100, -0.003291, 0.429417,
		35.820702, 37.693722, 37.702625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345863, 37.038460, 37.294895>,  <35.188530, 37.696026, 37.402031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345863, 37.038460, 37.294895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609741, 37.133266, 37.580166>,  <35.768066, 37.190151, 37.751328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609741, 37.133266, 37.580166>,  <35.345863, 37.038460, 37.294895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609741, 37.133266, 37.580166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001608, -0.949408, 0.314041,
		0.751532, -0.206024, -0.626700,
		0.659695, 0.237020, 0.713179,
		35.807652, 37.204372, 37.794121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757668, 36.489498, 37.275822>,  <35.345863, 37.038460, 37.294895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757668, 36.489498, 37.275822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844864, 36.667042, 37.623493>,  <35.897182, 36.773567, 37.832096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844864, 36.667042, 37.623493>,  <35.757668, 36.489498, 37.275822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844864, 36.667042, 37.623493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220252, -0.889993, 0.399251,
		0.950773, 0.104406, -0.291771,
		0.217990, 0.443860, 0.869177,
		35.910259, 36.800201, 37.884247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427437, 36.298714, 37.334949>,  <35.757668, 36.489498, 37.275822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427437, 36.298714, 37.334949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281666, 36.410625, 37.690235>,  <36.194202, 36.477772, 37.903404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281666, 36.410625, 37.690235>,  <36.427437, 36.298714, 37.334949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281666, 36.410625, 37.690235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189494, -0.911565, 0.364885,
		0.911749, 0.301284, 0.279182,
		-0.364427, 0.279780, 0.888210,
		36.172337, 36.494560, 37.956699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861725, 35.970512, 37.847317>,  <36.427437, 36.298714, 37.334949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861725, 35.970512, 37.847317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522438, 36.053066, 38.042431>,  <36.318867, 36.102600, 38.159500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522438, 36.053066, 38.042431>,  <36.861725, 35.970512, 37.847317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522438, 36.053066, 38.042431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052836, -0.949333, 0.309799,
		0.527006, 0.237005, 0.816145,
		-0.848218, 0.206388, 0.487782,
		36.267971, 36.114983, 38.188766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313831, 36.297703, 38.392086>,  <36.861725, 35.970512, 37.847317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313831, 36.297703, 38.392086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606995, 36.033550, 38.457497>,  <37.782894, 35.875057, 38.496742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606995, 36.033550, 38.457497>,  <37.313831, 36.297703, 38.392086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606995, 36.033550, 38.457497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664180, 0.642483, -0.382205,
		0.147336, 0.388734, 0.909493,
		0.732910, -0.660380, 0.163529,
		37.826866, 35.835438, 38.506554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870949, 36.606018, 38.667065>,  <37.313831, 36.297703, 38.392086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870949, 36.606018, 38.667065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058220, 36.278885, 38.533226>,  <38.170582, 36.082603, 38.452923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058220, 36.278885, 38.533226>,  <37.870949, 36.606018, 38.667065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058220, 36.278885, 38.533226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728466, 0.571552, -0.377711,
		0.500146, -0.066908, 0.863353,
		0.468179, -0.817834, -0.334599,
		38.198673, 36.033535, 38.432846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559135, 36.715343, 38.779930>,  <37.870949, 36.606018, 38.667065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559135, 36.715343, 38.779930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571922, 36.426262, 38.503761>,  <38.579594, 36.252815, 38.338058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571922, 36.426262, 38.503761>,  <38.559135, 36.715343, 38.779930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571922, 36.426262, 38.503761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763259, 0.463640, -0.449972,
		0.645301, -0.512584, 0.566431,
		0.031972, -0.722700, -0.690422,
		38.581512, 36.209454, 38.296635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286537, 36.737473, 38.628944>,  <38.559135, 36.715343, 38.779930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286537, 36.737473, 38.628944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125816, 36.528625, 38.328026>,  <39.029385, 36.403316, 38.147476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125816, 36.528625, 38.328026>,  <39.286537, 36.737473, 38.628944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125816, 36.528625, 38.328026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707754, 0.344232, -0.616918,
		0.581069, -0.780318, 0.231219,
		-0.401799, -0.522118, -0.752297,
		39.005276, 36.371990, 38.102337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801346, 36.277142, 38.289970>,  <39.286537, 36.737473, 38.628944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801346, 36.277142, 38.289970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507679, 36.389053, 38.042511>,  <39.331478, 36.456200, 37.894035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507679, 36.389053, 38.042511>,  <39.801346, 36.277142, 38.289970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507679, 36.389053, 38.042511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662307, 0.495722, -0.561790,
		0.149503, -0.822183, -0.549240,
		-0.734165, 0.279776, -0.618650,
		39.287430, 36.472984, 37.856915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066601, 36.073486, 37.687283>,  <39.801346, 36.277142, 38.289970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066601, 36.073486, 37.687283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779541, 36.334984, 37.591286>,  <39.607304, 36.491882, 37.533688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779541, 36.334984, 37.591286>,  <40.066601, 36.073486, 37.687283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779541, 36.334984, 37.591286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623302, 0.449268, -0.640042,
		-0.310602, -0.608914, -0.729897,
		-0.717650, 0.653744, -0.239994,
		39.564247, 36.531109, 37.519287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093132, 36.101833, 36.968163>,  <40.066601, 36.073486, 37.687283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093132, 36.101833, 36.968163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894253, 36.430744, 37.078903>,  <39.774925, 36.628090, 37.145348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894253, 36.430744, 37.078903>,  <40.093132, 36.101833, 36.968163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894253, 36.430744, 37.078903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524869, 0.539136, -0.658669,
		-0.690872, -0.182177, -0.699648,
		-0.497200, 0.822280, 0.276855,
		39.745094, 36.677429, 37.161961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227749, 36.393425, 36.472023>,  <40.093132, 36.101833, 36.968163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227749, 36.393425, 36.472023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083530, 36.682476, 36.707928>,  <39.997002, 36.855907, 36.849472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083530, 36.682476, 36.707928>,  <40.227749, 36.393425, 36.472023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083530, 36.682476, 36.707928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461422, 0.687682, -0.560520,
		-0.810616, 0.070039, -0.581374,
		-0.360542, 0.722626, 0.589764,
		39.975368, 36.899265, 36.884857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046394, 36.923279, 36.026978>,  <40.227749, 36.393425, 36.472023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046394, 36.923279, 36.026978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065380, 37.109596, 36.380424>,  <40.076771, 37.221386, 36.592491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065380, 37.109596, 36.380424>,  <40.046394, 36.923279, 36.026978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065380, 37.109596, 36.380424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417612, 0.794340, -0.441163,
		-0.907385, 0.389948, -0.156822,
		0.047460, 0.465795, 0.883619,
		40.079617, 37.249336, 36.645512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913765, 37.545509, 35.834404>,  <40.046394, 36.923279, 36.026978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913765, 37.545509, 35.834404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077354, 37.572803, 36.198402>,  <40.175507, 37.589180, 36.416801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077354, 37.572803, 36.198402>,  <39.913765, 37.545509, 35.834404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077354, 37.572803, 36.198402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463524, 0.843444, -0.271567,
		-0.786059, 0.532866, 0.313313,
		0.408971, 0.068239, 0.909992,
		40.200047, 37.593277, 36.471401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798977, 38.271152, 36.010296>,  <39.913765, 37.545509, 35.834404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798977, 38.271152, 36.010296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111275, 38.147388, 36.227440>,  <40.298653, 38.073132, 36.357727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111275, 38.147388, 36.227440>,  <39.798977, 38.271152, 36.010296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111275, 38.147388, 36.227440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537684, 0.775275, -0.331426,
		-0.318320, 0.550648, 0.771660,
		0.780748, -0.309410, 0.542860,
		40.345501, 38.054565, 36.390297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924995, 38.880554, 36.426258>,  <39.798977, 38.271152, 36.010296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924995, 38.880554, 36.426258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263489, 38.667698, 36.436916>,  <40.466583, 38.539982, 36.443314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263489, 38.667698, 36.436916>,  <39.924995, 38.880554, 36.426258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263489, 38.667698, 36.436916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519373, 0.812697, -0.264151,
		0.118908, 0.237375, 0.964113,
		0.846235, -0.532144, 0.026650,
		40.517361, 38.508057, 36.444912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439453, 39.231281, 36.911133>,  <39.924995, 38.880554, 36.426258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439453, 39.231281, 36.911133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617172, 39.003029, 36.634880>,  <40.723804, 38.866077, 36.469128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617172, 39.003029, 36.634880>,  <40.439453, 39.231281, 36.911133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617172, 39.003029, 36.634880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563802, 0.777197, -0.279450,
		0.696222, -0.265222, 0.667032,
		0.444299, -0.570633, -0.690634,
		40.750462, 38.831841, 36.427689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067505, 39.538914, 36.864510>,  <40.439453, 39.231281, 36.911133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067505, 39.538914, 36.864510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029739, 39.306873, 36.540886>,  <41.007080, 39.167648, 36.346710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029739, 39.306873, 36.540886>,  <41.067505, 39.538914, 36.864510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029739, 39.306873, 36.540886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558948, 0.641617, -0.525266,
		0.823810, -0.501812, 0.263668,
		-0.094412, -0.580097, -0.809058,
		41.001415, 39.132843, 36.298168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763523, 39.619511, 36.620655>,  <41.067505, 39.538914, 36.864510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763523, 39.619511, 36.620655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527584, 39.508209, 36.317432>,  <41.386021, 39.441429, 36.135498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527584, 39.508209, 36.317432>,  <41.763523, 39.619511, 36.620655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527584, 39.508209, 36.317432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438044, 0.678375, -0.589851,
		0.678375, -0.679987, -0.278253,
		0.589851, 0.278253, 0.758057,
		41.350628, 39.424732, 36.090015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145226, 39.691730, 35.951569>,  <41.763523, 39.619511, 36.620655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145226, 39.691730, 35.951569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765568, 39.669785, 35.827557>,  <41.537773, 39.656616, 35.753151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765568, 39.669785, 35.827557>,  <42.145226, 39.691730, 35.951569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765568, 39.669785, 35.827557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210549, 0.621511, -0.754582,
		0.234084, -0.781483, -0.578351,
		-0.949144, -0.054864, -0.310026,
		41.480824, 39.653324, 35.734550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248714, 39.737000, 35.237186>,  <42.145226, 39.691730, 35.951569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248714, 39.737000, 35.237186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855198, 39.799603, 35.272194>,  <41.619087, 39.837166, 35.293198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855198, 39.799603, 35.272194>,  <42.248714, 39.737000, 35.237186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855198, 39.799603, 35.272194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007053, 0.521452, -0.853251,
		-0.179174, -0.838805, -0.514104,
		-0.983792, 0.156507, 0.087515,
		41.560059, 39.846554, 35.298447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904694, 39.543118, 34.604038>,  <42.248714, 39.737000, 35.237186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904694, 39.543118, 34.604038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703865, 39.827862, 34.800480>,  <41.583370, 39.998707, 34.918346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703865, 39.827862, 34.800480>,  <41.904694, 39.543118, 34.604038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703865, 39.827862, 34.800480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149156, 0.630631, -0.761614,
		-0.851868, -0.309131, -0.422798,
		-0.502068, 0.711858, 0.491106,
		41.553246, 40.041420, 34.947811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317226, 39.731209, 34.127193>,  <41.904694, 39.543118, 34.604038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317226, 39.731209, 34.127193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371140, 40.040154, 34.375481>,  <41.403488, 40.225521, 34.524452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371140, 40.040154, 34.375481>,  <41.317226, 39.731209, 34.127193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371140, 40.040154, 34.375481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015963, 0.628045, -0.778013,
		-0.990747, 0.094954, 0.096979,
		0.134783, 0.772362, 0.620718,
		41.411575, 40.271862, 34.561695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824574, 40.240784, 33.974369>,  <41.317226, 39.731209, 34.127193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824574, 40.240784, 33.974369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128178, 40.444107, 34.137108>,  <41.310341, 40.566101, 34.234753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128178, 40.444107, 34.137108>,  <40.824574, 40.240784, 33.974369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128178, 40.444107, 34.137108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022078, 0.644624, -0.764181,
		-0.650702, 0.571040, 0.500500,
		0.759012, 0.508304, 0.406851,
		41.355881, 40.596600, 34.259163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735893, 40.904522, 33.660385>,  <40.824574, 40.240784, 33.974369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735893, 40.904522, 33.660385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088547, 40.945442, 33.844669>,  <41.300140, 40.969994, 33.955238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088547, 40.945442, 33.844669>,  <40.735893, 40.904522, 33.660385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088547, 40.945442, 33.844669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301393, 0.629164, -0.716460,
		-0.363154, 0.770511, 0.523862,
		0.881636, 0.102297, 0.460711,
		41.353039, 40.976131, 33.982883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815262, 41.648037, 33.829926>,  <40.735893, 40.904522, 33.660385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815262, 41.648037, 33.829926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173195, 41.469994, 33.816311>,  <41.387955, 41.363167, 33.808140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173195, 41.469994, 33.816311>,  <40.815262, 41.648037, 33.829926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173195, 41.469994, 33.816311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258765, 0.579329, -0.772928,
		0.363755, 0.682832, 0.633580,
		0.894831, -0.445105, -0.034041,
		41.441643, 41.336464, 33.806099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256702, 42.104504, 33.663628>,  <40.815262, 41.648037, 33.829926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256702, 42.104504, 33.663628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478920, 41.790874, 33.552921>,  <41.612251, 41.602695, 33.486496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478920, 41.790874, 33.552921>,  <41.256702, 42.104504, 33.663628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478920, 41.790874, 33.552921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431013, 0.556202, -0.710540,
		0.711055, 0.275444, 0.646940,
		0.555544, -0.784072, -0.276770,
		41.645584, 41.555653, 33.469891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916954, 42.363113, 33.452896>,  <41.256702, 42.104504, 33.663628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916954, 42.363113, 33.452896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903046, 42.014187, 33.257816>,  <41.894703, 41.804829, 33.140770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903046, 42.014187, 33.257816>,  <41.916954, 42.363113, 33.452896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903046, 42.014187, 33.257816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576680, 0.381043, -0.722666,
		0.816230, -0.306369, 0.489803,
		-0.034766, -0.872321, -0.487696,
		41.892616, 41.752491, 33.111507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644482, 42.138638, 33.285397>,  <41.916954, 42.363113, 33.452896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644482, 42.138638, 33.285397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384590, 41.957565, 33.041122>,  <42.228657, 41.848923, 32.894558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384590, 41.957565, 33.041122>,  <42.644482, 42.138638, 33.285397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384590, 41.957565, 33.041122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590112, 0.206064, -0.780580,
		0.479192, -0.867537, 0.133245,
		-0.649726, -0.452677, -0.610688,
		42.189671, 41.821762, 32.857918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128258, 41.791222, 32.691505>,  <42.644482, 42.138638, 33.285397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128258, 41.791222, 32.691505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745811, 41.785831, 32.574432>,  <42.516346, 41.782597, 32.504189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745811, 41.785831, 32.574432>,  <43.128258, 41.791222, 32.691505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745811, 41.785831, 32.574432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287524, 0.149010, -0.946111,
		0.056358, -0.988744, -0.138597,
		-0.956113, -0.013471, -0.292686,
		42.458977, 41.781792, 32.486626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010387, 41.255970, 32.145779>,  <43.128258, 41.791222, 32.691505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010387, 41.255970, 32.145779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720894, 41.528252, 32.100433>,  <42.547195, 41.691620, 32.073227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720894, 41.528252, 32.100433>,  <43.010387, 41.255970, 32.145779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720894, 41.528252, 32.100433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198107, 0.047583, -0.979025,
		-0.661028, -0.731015, -0.169289,
		-0.723736, 0.680700, -0.113366,
		42.503773, 41.732460, 32.066425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720455, 41.107483, 31.512104>,  <43.010387, 41.255970, 32.145779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720455, 41.107483, 31.512104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568737, 41.474354, 31.560984>,  <42.477707, 41.694477, 31.590311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568737, 41.474354, 31.560984>,  <42.720455, 41.107483, 31.512104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568737, 41.474354, 31.560984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068424, 0.103902, -0.992231,
		-0.922744, -0.384706, 0.023348,
		-0.379291, 0.917173, 0.122198,
		42.454948, 41.749504, 31.597643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255005, 41.265659, 30.993151>,  <42.720455, 41.107483, 31.512104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255005, 41.265659, 30.993151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319801, 41.645664, 31.099913>,  <42.358681, 41.873665, 31.163971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319801, 41.645664, 31.099913>,  <42.255005, 41.265659, 30.993151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319801, 41.645664, 31.099913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131555, 0.288855, -0.948291,
		-0.977983, 0.118505, 0.171771,
		0.161994, 0.950010, 0.266906,
		42.368401, 41.930668, 31.179985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688057, 41.567432, 30.669146>,  <42.255005, 41.265659, 30.993151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688057, 41.567432, 30.669146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970669, 41.839527, 30.747213>,  <42.140236, 42.002785, 30.794054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970669, 41.839527, 30.747213>,  <41.688057, 41.567432, 30.669146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970669, 41.839527, 30.747213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089819, 0.359751, -0.928715,
		-0.701959, 0.638636, 0.315274,
		0.706531, 0.680237, 0.195169,
		42.182629, 42.043598, 30.805763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464684, 42.106346, 30.344673>,  <41.688057, 41.567432, 30.669146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464684, 42.106346, 30.344673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851547, 42.198006, 30.388672>,  <42.083664, 42.253002, 30.415071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851547, 42.198006, 30.388672>,  <41.464684, 42.106346, 30.344673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851547, 42.198006, 30.388672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034710, 0.309632, -0.950223,
		-0.251801, 0.922832, 0.291509,
		0.967156, 0.229149, 0.109997,
		42.141693, 42.266750, 30.421671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530441, 42.758553, 30.051027>,  <41.464684, 42.106346, 30.344673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530441, 42.758553, 30.051027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892323, 42.590374, 30.023479>,  <42.109451, 42.489468, 30.006950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892323, 42.590374, 30.023479>,  <41.530441, 42.758553, 30.051027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892323, 42.590374, 30.023479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011164, 0.184980, -0.982679,
		0.425905, 0.888260, 0.172045,
		0.904699, -0.420448, -0.068867,
		42.163731, 42.464241, 30.002819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854561, 43.224976, 29.556089>,  <41.530441, 42.758553, 30.051027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854561, 43.224976, 29.556089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074684, 42.891380, 29.539980>,  <42.206757, 42.691223, 29.530313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074684, 42.891380, 29.539980>,  <41.854561, 43.224976, 29.556089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074684, 42.891380, 29.539980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199819, 0.178375, -0.963460,
		0.810701, 0.522150, 0.264808,
		0.550305, -0.833992, -0.040274,
		42.239777, 42.641182, 29.527897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458092, 43.428398, 29.117023>,  <41.854561, 43.224976, 29.556089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458092, 43.428398, 29.117023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460556, 43.028465, 29.123959>,  <42.462036, 42.788506, 29.128120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460556, 43.028465, 29.123959>,  <42.458092, 43.428398, 29.117023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460556, 43.028465, 29.123959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225227, -0.015506, -0.974183,
		0.974287, 0.009907, 0.225093,
		0.006161, -0.999831, 0.017339,
		42.462406, 42.728516, 29.129160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115982, 43.280807, 28.886955>,  <42.458092, 43.428398, 29.117023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115982, 43.280807, 28.886955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899525, 42.949314, 28.829870>,  <42.769650, 42.750420, 28.795620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899525, 42.949314, 28.829870>,  <43.115982, 43.280807, 28.886955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899525, 42.949314, 28.829870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188095, 0.046121, -0.981067,
		0.819622, -0.557745, 0.130921,
		-0.541147, -0.828730, -0.142711,
		42.737179, 42.700695, 28.787058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505512, 42.882790, 28.503633>,  <43.115982, 43.280807, 28.886955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505512, 42.882790, 28.503633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142590, 42.731682, 28.429794>,  <42.924835, 42.641018, 28.385490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142590, 42.731682, 28.429794>,  <43.505512, 42.882790, 28.503633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142590, 42.731682, 28.429794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188586, 0.026768, -0.981692,
		0.375796, -0.925512, 0.046956,
		-0.907311, -0.377771, -0.184598,
		42.870396, 42.618351, 28.374414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637947, 42.307728, 28.092197>,  <43.505512, 42.882790, 28.503633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637947, 42.307728, 28.092197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245438, 42.360088, 28.035675>,  <43.009933, 42.391506, 28.001760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245438, 42.360088, 28.035675>,  <43.637947, 42.307728, 28.092197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245438, 42.360088, 28.035675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122833, -0.139838, -0.982526,
		-0.148389, -0.981482, 0.121138,
		-0.981271, 0.130916, -0.141309,
		42.951057, 42.399361, 27.993282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334732, 42.269337, 28.083920>,  <43.637947, 42.307728, 28.092197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334732, 42.269337, 28.083920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677109, 42.191250, 28.275440>,  <44.882534, 42.144398, 28.390352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677109, 42.191250, 28.275440>,  <44.334732, 42.269337, 28.083920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677109, 42.191250, 28.275440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173428, 0.763960, 0.621520,
		-0.487118, -0.615024, 0.620050,
		0.855943, -0.195220, 0.478801,
		44.933891, 42.132683, 28.419081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107464, 42.592182, 27.507620>,  <44.334732, 42.269337, 28.083920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107464, 42.592182, 27.507620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474152, 42.459675, 27.418272>,  <44.694164, 42.380169, 27.364664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474152, 42.459675, 27.418272>,  <44.107464, 42.592182, 27.507620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474152, 42.459675, 27.418272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032080, -0.618290, 0.785295,
		-0.398250, -0.712726, -0.577424,
		0.916716, -0.331267, -0.223370,
		44.749165, 42.360294, 27.351261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992813, 41.859993, 27.627146>,  <44.107464, 42.592182, 27.507620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992813, 41.859993, 27.627146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377781, 41.959316, 27.671135>,  <44.608761, 42.018909, 27.697529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377781, 41.959316, 27.671135>,  <43.992813, 41.859993, 27.627146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377781, 41.959316, 27.671135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075901, -0.634765, 0.768968,
		0.260747, -0.731722, -0.629757,
		0.962419, 0.248305, 0.109975,
		44.666508, 42.033810, 27.704128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379208, 41.145920, 27.689054>,  <43.992813, 41.859993, 27.627146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379208, 41.145920, 27.689054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621033, 41.426952, 27.839190>,  <44.766129, 41.595573, 27.929270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621033, 41.426952, 27.839190>,  <44.379208, 41.145920, 27.689054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621033, 41.426952, 27.839190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230970, -0.605576, 0.761532,
		0.762335, -0.373703, -0.528385,
		0.604564, 0.702584, 0.375337,
		44.802402, 41.637726, 27.951790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956932, 40.779926, 27.712120>,  <44.379208, 41.145920, 27.689054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956932, 40.779926, 27.712120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962799, 41.092205, 27.962015>,  <44.966320, 41.279572, 28.111952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962799, 41.092205, 27.962015>,  <44.956932, 40.779926, 27.712120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962799, 41.092205, 27.962015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198021, -0.614698, 0.763501,
		0.980088, 0.112509, -0.163613,
		0.014671, 0.780697, 0.624738,
		44.967201, 41.326416, 28.149437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464756, 40.536415, 28.242447>,  <44.956932, 40.779926, 27.712120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464756, 40.536415, 28.242447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285473, 40.841850, 28.428364>,  <45.177902, 41.025112, 28.539915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285473, 40.841850, 28.428364>,  <45.464756, 40.536415, 28.242447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285473, 40.841850, 28.428364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031166, -0.532977, 0.845555,
		0.893384, 0.364502, 0.262685,
		-0.448212, 0.763592, 0.464793,
		45.151009, 41.070927, 28.567802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814606, 40.580803, 28.906620>,  <45.464756, 40.536415, 28.242447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814606, 40.580803, 28.906620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472401, 40.783344, 28.949879>,  <45.267078, 40.904869, 28.975834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472401, 40.783344, 28.949879>,  <45.814606, 40.580803, 28.906620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472401, 40.783344, 28.949879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108688, -0.379840, 0.918645,
		0.506242, 0.774160, 0.379994,
		-0.855515, 0.506357, 0.108149,
		45.215748, 40.935253, 28.982323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876682, 41.011925, 29.454189>,  <45.814606, 40.580803, 28.906620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876682, 41.011925, 29.454189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484413, 40.954597, 29.400906>,  <45.249054, 40.920200, 29.368937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484413, 40.954597, 29.400906>,  <45.876682, 41.011925, 29.454189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484413, 40.954597, 29.400906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102829, -0.201705, 0.974034,
		-0.166465, 0.968904, 0.183069,
		-0.980671, -0.143318, -0.133208,
		45.190212, 40.911602, 29.360943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612980, 41.344345, 30.044409>,  <45.876682, 41.011925, 29.454189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612980, 41.344345, 30.044409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341606, 41.095192, 29.888596>,  <45.178780, 40.945698, 29.795109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341606, 41.095192, 29.888596>,  <45.612980, 41.344345, 30.044409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341606, 41.095192, 29.888596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290517, -0.259536, 0.921000,
		-0.674775, 0.738007, -0.004880,
		-0.678438, -0.622886, -0.389532,
		45.138073, 40.908325, 29.771736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932697, 41.484287, 30.407654>,  <45.612980, 41.344345, 30.044409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932697, 41.484287, 30.407654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925220, 41.101345, 30.292324>,  <44.920734, 40.871582, 30.223127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925220, 41.101345, 30.292324>,  <44.932697, 41.484287, 30.407654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925220, 41.101345, 30.292324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421627, -0.253932, 0.870488,
		-0.906577, 0.137833, -0.398899,
		-0.018689, -0.957351, -0.288322,
		44.919613, 40.814140, 30.205828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214283, 41.328323, 30.665688>,  <44.932697, 41.484287, 30.407654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214283, 41.328323, 30.665688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368298, 40.973064, 30.565332>,  <44.460705, 40.759911, 30.505119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368298, 40.973064, 30.565332>,  <44.214283, 41.328323, 30.665688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368298, 40.973064, 30.565332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485618, -0.426142, 0.763268,
		-0.784807, -0.172051, -0.595380,
		0.385038, -0.888145, -0.250888,
		44.483810, 40.706619, 30.490067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688526, 40.813015, 30.690737>,  <44.214283, 41.328323, 30.665688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688526, 40.813015, 30.690737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032070, 40.615021, 30.743427>,  <44.238197, 40.496223, 30.775042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032070, 40.615021, 30.743427>,  <43.688526, 40.813015, 30.690737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032070, 40.615021, 30.743427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398651, -0.484476, 0.778691,
		-0.321623, -0.721298, -0.613423,
		0.858857, -0.494987, 0.131728,
		44.289726, 40.466526, 30.782946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543137, 40.097763, 30.828279>,  <43.688526, 40.813015, 30.690737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543137, 40.097763, 30.828279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907539, 40.157120, 30.982185>,  <44.126183, 40.192734, 31.074530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907539, 40.157120, 30.982185>,  <43.543137, 40.097763, 30.828279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907539, 40.157120, 30.982185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268595, -0.494478, 0.826649,
		0.312923, -0.856430, -0.410617,
		0.911008, 0.148388, 0.384767,
		44.180843, 40.201637, 31.097616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791451, 39.378696, 30.987724>,  <43.543137, 40.097763, 30.828279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791451, 39.378696, 30.987724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980103, 39.661358, 31.198706>,  <44.093296, 39.830956, 31.325294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980103, 39.661358, 31.198706>,  <43.791451, 39.378696, 30.987724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980103, 39.661358, 31.198706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403349, -0.359029, 0.841670,
		0.784137, -0.609708, 0.115696,
		0.471634, 0.706651, 0.527452,
		44.121593, 39.873352, 31.356941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049576, 39.100430, 31.643269>,  <43.791451, 39.378696, 30.987724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049576, 39.100430, 31.643269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144344, 39.469250, 31.765703>,  <44.201206, 39.690544, 31.839165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144344, 39.469250, 31.765703>,  <44.049576, 39.100430, 31.643269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144344, 39.469250, 31.765703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159340, -0.273913, 0.948463,
		0.958374, -0.273479, 0.082025,
		0.236917, 0.922053, 0.306087,
		44.215420, 39.745865, 31.857529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621014, 39.041626, 32.161552>,  <44.049576, 39.100430, 31.643269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621014, 39.041626, 32.161552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401478, 39.369522, 32.227047>,  <44.269756, 39.566257, 32.266342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401478, 39.369522, 32.227047>,  <44.621014, 39.041626, 32.161552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401478, 39.369522, 32.227047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174289, -0.303781, 0.936664,
		0.817559, 0.485537, 0.309597,
		-0.548835, 0.819738, 0.163736,
		44.236828, 39.615444, 32.276169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789925, 39.214912, 32.827164>,  <44.621014, 39.041626, 32.161552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789925, 39.214912, 32.827164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442352, 39.403782, 32.767811>,  <44.233810, 39.517101, 32.732201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442352, 39.403782, 32.767811>,  <44.789925, 39.214912, 32.827164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442352, 39.403782, 32.767811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322802, -0.313397, 0.893074,
		0.375182, 0.823916, 0.424737,
		-0.868929, 0.472171, -0.148381,
		44.181675, 39.545433, 32.723297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766674, 39.640472, 33.409111>,  <44.789925, 39.214912, 32.827164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766674, 39.640472, 33.409111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401371, 39.579182, 33.258125>,  <44.182190, 39.542408, 33.167534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401371, 39.579182, 33.258125>,  <44.766674, 39.640472, 33.409111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401371, 39.579182, 33.258125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322491, -0.294206, 0.899690,
		-0.248908, 0.943379, 0.219273,
		-0.913260, -0.153227, -0.377462,
		44.127392, 39.533215, 33.144886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301353, 39.851570, 33.856186>,  <44.766674, 39.640472, 33.409111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301353, 39.851570, 33.856186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067459, 39.599937, 33.651310>,  <43.927124, 39.448959, 33.528385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067459, 39.599937, 33.651310>,  <44.301353, 39.851570, 33.856186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067459, 39.599937, 33.651310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455167, -0.268212, 0.849050,
		-0.671497, 0.729603, -0.129503,
		-0.584735, -0.629080, -0.512195,
		43.892040, 39.411213, 33.497650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821289, 39.716377, 34.497982>,  <44.301353, 39.851570, 33.856186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821289, 39.716377, 34.497982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738373, 39.478443, 34.187321>,  <43.688622, 39.335682, 34.000923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738373, 39.478443, 34.187321>,  <43.821289, 39.716377, 34.497982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738373, 39.478443, 34.187321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421527, -0.662112, 0.619615,
		-0.882805, 0.455823, -0.113490,
		-0.207292, -0.594839, -0.776658,
		43.676186, 39.299992, 33.954323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110916, 39.499222, 34.412716>,  <43.821289, 39.716377, 34.497982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110916, 39.499222, 34.412716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315166, 39.203678, 34.236828>,  <43.437717, 39.026352, 34.131294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315166, 39.203678, 34.236828>,  <43.110916, 39.499222, 34.412716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315166, 39.203678, 34.236828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359102, -0.647942, 0.671726,
		-0.781222, -0.185096, -0.596181,
		0.510625, -0.738857, -0.439719,
		43.468353, 38.982021, 34.104912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686707, 38.954567, 34.322975>,  <43.110916, 39.499222, 34.412716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686707, 38.954567, 34.322975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022308, 38.742050, 34.275997>,  <43.223671, 38.614540, 34.247810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022308, 38.742050, 34.275997>,  <42.686707, 38.954567, 34.322975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022308, 38.742050, 34.275997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372231, -0.717867, 0.588313,
		-0.396881, -0.449879, -0.800059,
		0.839005, -0.531296, -0.117449,
		43.274010, 38.582661, 34.240761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467354, 38.327332, 34.046307>,  <42.686707, 38.954567, 34.322975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467354, 38.327332, 34.046307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824104, 38.297478, 34.224735>,  <43.038155, 38.279568, 34.331795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824104, 38.297478, 34.224735>,  <42.467354, 38.327332, 34.046307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824104, 38.297478, 34.224735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338048, -0.765222, 0.547867,
		0.300457, -0.639426, -0.707715,
		0.891879, -0.074631, 0.446073,
		43.091667, 38.275089, 34.358559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612682, 37.636936, 33.953297>,  <42.467354, 38.327332, 34.046307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612682, 37.636936, 33.953297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843445, 37.777225, 34.248371>,  <42.981903, 37.861397, 34.425415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843445, 37.777225, 34.248371>,  <42.612682, 37.636936, 33.953297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843445, 37.777225, 34.248371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258353, -0.778410, 0.572129,
		0.774875, -0.520647, -0.358461,
		0.576907, 0.350719, 0.737682,
		43.016518, 37.882442, 34.469677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004868, 37.099857, 34.240780>,  <42.612682, 37.636936, 33.953297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004868, 37.099857, 34.240780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012272, 37.359127, 34.545284>,  <43.016716, 37.514690, 34.727989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012272, 37.359127, 34.545284>,  <43.004868, 37.099857, 34.240780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012272, 37.359127, 34.545284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184441, -0.746112, 0.639764,
		0.982669, -0.152252, 0.105738,
		0.018513, 0.648179, 0.761263,
		43.017826, 37.553581, 34.773663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181511, 36.694824, 34.690536>,  <43.004868, 37.099857, 34.240780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181511, 36.694824, 34.690536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076153, 37.025402, 34.889580>,  <43.012939, 37.223751, 35.009007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076153, 37.025402, 34.889580>,  <43.181511, 36.694824, 34.690536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076153, 37.025402, 34.889580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063138, -0.529480, 0.845969,
		0.962621, 0.191403, 0.191641,
		-0.263391, 0.826447, 0.497604,
		42.997135, 37.273335, 35.038860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324802, 36.425789, 35.345539>,  <43.181511, 36.694824, 34.690536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324802, 36.425789, 35.345539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133743, 36.767830, 35.426189>,  <43.019108, 36.973053, 35.474579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133743, 36.767830, 35.426189>,  <43.324802, 36.425789, 35.345539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133743, 36.767830, 35.426189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214262, -0.335949, 0.917186,
		0.852026, 0.394886, 0.343681,
		-0.477644, 0.855104, 0.201628,
		42.990452, 37.024361, 35.486679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629173, 36.787960, 35.948311>,  <43.324802, 36.425789, 35.345539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629173, 36.787960, 35.948311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240646, 36.872105, 35.903965>,  <43.007530, 36.922592, 35.877357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240646, 36.872105, 35.903965>,  <43.629173, 36.787960, 35.948311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240646, 36.872105, 35.903965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196226, -0.445773, 0.873374,
		0.134308, 0.870076, 0.474266,
		-0.971317, 0.210365, -0.110861,
		42.949253, 36.935215, 35.870708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390034, 36.705807, 36.579792>,  <43.629173, 36.787960, 35.948311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390034, 36.705807, 36.579792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030434, 36.713089, 36.404762>,  <42.814674, 36.717457, 36.299744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030434, 36.713089, 36.404762>,  <43.390034, 36.705807, 36.579792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030434, 36.713089, 36.404762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413406, -0.365090, 0.834149,
		-0.144568, 0.930794, 0.335741,
		-0.898997, 0.018206, -0.437577,
		42.760735, 36.718552, 36.273491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900883, 36.994564, 37.042965>,  <43.390034, 36.705807, 36.579792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900883, 36.994564, 37.042965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659214, 36.800018, 36.790478>,  <42.514214, 36.683292, 36.638985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659214, 36.800018, 36.790478>,  <42.900883, 36.994564, 37.042965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659214, 36.800018, 36.790478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496644, -0.389637, 0.775583,
		-0.623158, 0.782072, -0.006142,
		-0.604168, -0.486361, -0.631216,
		42.477962, 36.654110, 36.601112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257950, 36.845844, 37.360249>,  <42.900883, 36.994564, 37.042965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257950, 36.845844, 37.360249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242023, 36.594772, 37.049267>,  <42.232468, 36.444130, 36.862679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242023, 36.594772, 37.049267>,  <42.257950, 36.845844, 37.360249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242023, 36.594772, 37.049267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484905, -0.668170, 0.564283,
		-0.873660, 0.399457, -0.277763,
		-0.039814, -0.627681, -0.777452,
		42.230080, 36.406467, 36.816032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568325, 36.711430, 37.238152>,  <42.257950, 36.845844, 37.360249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568325, 36.711430, 37.238152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799717, 36.424557, 37.082706>,  <41.938553, 36.252434, 36.989441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799717, 36.424557, 37.082706>,  <41.568325, 36.711430, 37.238152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799717, 36.424557, 37.082706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277212, -0.620907, 0.733231,
		-0.767149, -0.316429, -0.557991,
		0.578477, -0.717180, -0.388610,
		41.973259, 36.209404, 36.966122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156612, 36.126694, 37.223553>,  <41.568325, 36.711430, 37.238152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156612, 36.126694, 37.223553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527630, 35.977360, 37.230404>,  <41.750240, 35.887760, 37.234516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527630, 35.977360, 37.230404>,  <41.156612, 36.126694, 37.223553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527630, 35.977360, 37.230404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269309, -0.635912, 0.723249,
		-0.259118, -0.675455, -0.690375,
		0.927540, -0.373331, 0.017129,
		41.805893, 35.865360, 37.235542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027908, 35.465664, 37.139656>,  <41.156612, 36.126694, 37.223553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027908, 35.465664, 37.139656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406075, 35.476608, 37.269547>,  <41.632973, 35.483173, 37.347481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406075, 35.476608, 37.269547>,  <41.027908, 35.465664, 37.139656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406075, 35.476608, 37.269547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195385, -0.749904, 0.632035,
		0.260804, -0.660980, -0.703623,
		0.945413, 0.027360, 0.324724,
		41.689697, 35.484818, 37.366962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270432, 34.797806, 37.268047>,  <41.027908, 35.465664, 37.139656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270432, 34.797806, 37.268047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543076, 34.997021, 37.482471>,  <41.706661, 35.116550, 37.611126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543076, 34.997021, 37.482471>,  <41.270432, 34.797806, 37.268047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543076, 34.997021, 37.482471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153621, -0.618886, 0.770313,
		0.715403, -0.607407, -0.345333,
		0.681615, 0.498034, 0.536063,
		41.747559, 35.146431, 37.643291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797356, 34.301128, 37.434204>,  <41.270432, 34.797806, 37.268047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797356, 34.301128, 37.434204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818909, 34.607212, 37.690811>,  <41.831841, 34.790863, 37.844776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818909, 34.607212, 37.690811>,  <41.797356, 34.301128, 37.434204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818909, 34.607212, 37.690811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191927, -0.622538, 0.758690,
		0.979929, -0.164005, 0.113321,
		0.053882, 0.765212, 0.641520,
		41.835072, 34.836777, 37.883266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161163, 34.091137, 37.982494>,  <41.797356, 34.301128, 37.434204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161163, 34.091137, 37.982494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962456, 34.391388, 38.156750>,  <41.843231, 34.571537, 38.261303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962456, 34.391388, 38.156750>,  <42.161163, 34.091137, 37.982494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962456, 34.391388, 38.156750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129927, -0.560620, 0.817817,
		0.858101, 0.349667, 0.376027,
		-0.496772, 0.750625, 0.435637,
		41.813423, 34.616577, 38.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454487, 34.129383, 38.600258>,  <42.161163, 34.091137, 37.982494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454487, 34.129383, 38.600258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102020, 34.315670, 38.632870>,  <41.890541, 34.427444, 38.652439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102020, 34.315670, 38.632870>,  <42.454487, 34.129383, 38.600258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102020, 34.315670, 38.632870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185320, -0.498855, 0.846641,
		0.434972, 0.730922, 0.525882,
		-0.881167, 0.465721, 0.081533,
		41.837669, 34.455387, 38.657330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359699, 34.124592, 39.306438>,  <42.454487, 34.129383, 38.600258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359699, 34.124592, 39.306438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998463, 34.230526, 39.171215>,  <41.781719, 34.294086, 39.090080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998463, 34.230526, 39.171215>,  <42.359699, 34.124592, 39.306438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998463, 34.230526, 39.171215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426992, -0.637829, 0.640978,
		-0.045871, 0.723212, 0.689102,
		-0.903091, 0.264839, -0.338063,
		41.727535, 34.309978, 39.069798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019093, 34.304901, 39.862614>,  <42.359699, 34.124592, 39.306438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019093, 34.304901, 39.862614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755009, 34.196342, 39.582481>,  <41.596558, 34.131207, 39.414402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755009, 34.196342, 39.582481>,  <42.019093, 34.304901, 39.862614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755009, 34.196342, 39.582481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287513, -0.770089, 0.569473,
		-0.693871, 0.577327, 0.430392,
		-0.660212, -0.271398, -0.700331,
		41.556946, 34.114922, 39.372383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404224, 34.186024, 40.247700>,  <42.019093, 34.304901, 39.862614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404224, 34.186024, 40.247700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349564, 33.999153, 39.898285>,  <41.316769, 33.887032, 39.688637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349564, 33.999153, 39.898285>,  <41.404224, 34.186024, 40.247700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349564, 33.999153, 39.898285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341218, -0.805650, 0.484251,
		-0.929998, 0.364240, -0.049317,
		-0.136651, -0.467180, -0.873538,
		41.308567, 33.858997, 39.636223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691769, 33.864399, 40.285820>,  <41.404224, 34.186024, 40.247700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691769, 33.864399, 40.285820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882092, 33.676102, 39.988632>,  <40.996284, 33.563126, 39.810318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882092, 33.676102, 39.988632>,  <40.691769, 33.864399, 40.285820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882092, 33.676102, 39.988632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310943, -0.880201, 0.358553,
		-0.822751, 0.060420, -0.565181,
		0.475809, -0.470739, -0.742974,
		41.024834, 33.534882, 39.765739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174133, 33.522884, 39.969776>,  <40.691769, 33.864399, 40.285820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174133, 33.522884, 39.969776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523693, 33.340725, 39.901764>,  <40.733429, 33.231430, 39.860958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523693, 33.340725, 39.901764>,  <40.174133, 33.522884, 39.969776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523693, 33.340725, 39.901764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401264, -0.873242, 0.276472,
		-0.274379, -0.173384, -0.945862,
		0.873902, -0.455398, -0.170026,
		40.785862, 33.204105, 39.850758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946651, 32.852146, 39.671616>,  <40.174133, 33.522884, 39.969776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946651, 32.852146, 39.671616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328945, 32.794380, 39.774151>,  <40.558323, 32.759720, 39.835670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328945, 32.794380, 39.774151>,  <39.946651, 32.852146, 39.671616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328945, 32.794380, 39.774151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219922, -0.929416, 0.296345,
		0.195443, -0.339602, -0.920039,
		0.955738, -0.144418, 0.256334,
		40.615665, 32.751053, 39.851051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994480, 32.211029, 39.587017>,  <39.946651, 32.852146, 39.671616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994480, 32.211029, 39.587017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330338, 32.283615, 39.791790>,  <40.531853, 32.327168, 39.914654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330338, 32.283615, 39.791790>,  <39.994480, 32.211029, 39.587017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330338, 32.283615, 39.791790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017347, -0.951017, 0.308652,
		0.542867, -0.250276, -0.801659,
		0.839640, 0.181463, 0.511934,
		40.582230, 32.338055, 39.945370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506634, 31.730009, 39.349327>,  <39.994480, 32.211029, 39.587017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506634, 31.730009, 39.349327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581089, 31.829996, 39.729404>,  <40.625763, 31.889988, 39.957451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581089, 31.829996, 39.729404>,  <40.506634, 31.730009, 39.349327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581089, 31.829996, 39.729404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146294, -0.963366, 0.224777,
		0.971572, 0.097169, -0.215885,
		0.186135, 0.249970, 0.950194,
		40.636929, 31.904987, 40.014462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960209, 31.206230, 39.445713>,  <40.506634, 31.730009, 39.349327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960209, 31.206230, 39.445713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851048, 31.355101, 39.800568>,  <40.785553, 31.444424, 40.013481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851048, 31.355101, 39.800568>,  <40.960209, 31.206230, 39.445713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851048, 31.355101, 39.800568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003495, -0.922515, 0.385946,
		0.962036, 0.102224, 0.253055,
		-0.272900, 0.372178, 0.887135,
		40.769176, 31.466755, 40.066708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464859, 31.125235, 39.929123>,  <40.960209, 31.206230, 39.445713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464859, 31.125235, 39.929123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130215, 31.161453, 40.145229>,  <40.929428, 31.183186, 40.274895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130215, 31.161453, 40.145229>,  <41.464859, 31.125235, 39.929123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130215, 31.161453, 40.145229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153085, -0.908308, 0.389285,
		0.525977, 0.408385, 0.746036,
		-0.836608, 0.090548, 0.540267,
		40.879230, 31.188618, 40.307308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669830, 30.832121, 40.533138>,  <41.464859, 31.125235, 39.929123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669830, 30.832121, 40.533138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269882, 30.825691, 40.533718>,  <41.029915, 30.821833, 40.534065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269882, 30.825691, 40.533718>,  <41.669830, 30.832121, 40.533138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269882, 30.825691, 40.533718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015095, -0.899711, 0.436224,
		-0.005712, 0.436189, 0.899837,
		-0.999870, -0.016075, 0.001445,
		40.969921, 30.820869, 40.534153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094440, 30.601402, 41.126812>,  <41.669830, 30.832121, 40.533138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094440, 30.601402, 41.126812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746475, 30.470873, 41.274738>,  <41.537697, 30.392555, 41.363495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746475, 30.470873, 41.274738>,  <42.094440, 30.601402, 41.126812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746475, 30.470873, 41.274738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077592, -0.831032, -0.550786,
		0.487062, -0.450441, 0.748247,
		-0.869914, -0.326325, 0.369814,
		41.485500, 30.372974, 41.385681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221699, 30.033749, 41.485970>,  <42.094440, 30.601402, 41.126812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221699, 30.033749, 41.485970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878082, 29.998533, 41.284256>,  <41.671913, 29.977404, 41.163227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878082, 29.998533, 41.284256>,  <42.221699, 30.033749, 41.485970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878082, 29.998533, 41.284256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391053, -0.748568, -0.535466,
		-0.330352, -0.657187, 0.677475,
		-0.859038, -0.088037, -0.504286,
		41.620373, 29.972122, 41.132969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022774, 29.381781, 41.576843>,  <42.221699, 30.033749, 41.485970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022774, 29.381781, 41.576843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865383, 29.519436, 41.235844>,  <41.770950, 29.602028, 41.031246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865383, 29.519436, 41.235844>,  <42.022774, 29.381781, 41.576843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865383, 29.519436, 41.235844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267757, -0.844195, -0.464372,
		-0.879480, -0.410979, 0.240022,
		-0.393473, 0.344138, -0.852495,
		41.747341, 29.622677, 40.980095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532768, 28.824640, 41.337250>,  <42.022774, 29.381781, 41.576843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532768, 28.824640, 41.337250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599197, 29.034666, 41.003368>,  <41.639053, 29.160681, 40.803040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599197, 29.034666, 41.003368>,  <41.532768, 28.824640, 41.337250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599197, 29.034666, 41.003368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339908, -0.825061, -0.451372,
		-0.925679, -0.208761, -0.315494,
		0.166072, 0.525065, -0.834701,
		41.649017, 29.192186, 40.752956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269272, 28.412477, 40.861301>,  <41.532768, 28.824640, 41.337250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269272, 28.412477, 40.861301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483379, 28.677670, 40.651943>,  <41.611843, 28.836784, 40.526329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483379, 28.677670, 40.651943>,  <41.269272, 28.412477, 40.861301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483379, 28.677670, 40.651943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376102, -0.741891, -0.555108,
		-0.756329, 0.100282, -0.646460,
		0.535270, 0.662979, -0.523397,
		41.643959, 28.876564, 40.494923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036118, 28.426859, 40.097439>,  <41.269272, 28.412477, 40.861301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036118, 28.426859, 40.097439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421837, 28.526455, 40.133530>,  <41.653267, 28.586212, 40.155186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421837, 28.526455, 40.133530>,  <41.036118, 28.426859, 40.097439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421837, 28.526455, 40.133530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260375, -0.829088, -0.494791,
		-0.048393, 0.500617, -0.864315,
		0.964294, 0.248991, 0.090226,
		41.711124, 28.601152, 40.160599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196735, 28.401541, 39.482571>,  <41.036118, 28.426859, 40.097439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196735, 28.401541, 39.482571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525986, 28.337851, 39.700603>,  <41.723534, 28.299637, 39.831425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525986, 28.337851, 39.700603>,  <41.196735, 28.401541, 39.482571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525986, 28.337851, 39.700603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228888, -0.785434, -0.575069,
		0.519694, 0.598115, -0.610063,
		0.823121, -0.159223, 0.545087,
		41.772923, 28.290083, 39.864128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763119, 28.205025, 38.935516>,  <41.196735, 28.401541, 39.482571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763119, 28.205025, 38.935516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837936, 28.075453, 39.306480>,  <41.882828, 27.997709, 39.529057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837936, 28.075453, 39.306480>,  <41.763119, 28.205025, 38.935516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837936, 28.075453, 39.306480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333690, -0.866982, -0.370125,
		0.923940, 0.378696, -0.054071,
		0.187043, -0.323930, 0.927407,
		41.894051, 27.978273, 39.584702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324085, 27.915697, 38.806164>,  <41.763119, 28.205025, 38.935516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324085, 27.915697, 38.806164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194359, 27.752762, 39.147663>,  <42.116524, 27.655001, 39.352562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194359, 27.752762, 39.147663>,  <42.324085, 27.915697, 38.806164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194359, 27.752762, 39.147663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428053, -0.868040, -0.251551,
		0.843558, 0.283870, 0.455883,
		-0.324317, -0.407340, 0.853753,
		42.097065, 27.630560, 39.403790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868202, 27.708601, 39.138668>,  <42.324085, 27.915697, 38.806164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868202, 27.708601, 39.138668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574459, 27.482393, 39.288818>,  <42.398212, 27.346668, 39.378910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574459, 27.482393, 39.288818>,  <42.868202, 27.708601, 39.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574459, 27.482393, 39.288818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401658, -0.807863, -0.431309,
		0.547166, -0.165963, 0.820406,
		-0.734357, -0.565520, 0.375375,
		42.354153, 27.312737, 39.401432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121506, 27.030409, 39.444633>,  <42.868202, 27.708601, 39.138668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121506, 27.030409, 39.444633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734840, 26.956240, 39.373993>,  <42.502842, 26.911737, 39.331608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734840, 26.956240, 39.373993>,  <43.121506, 27.030409, 39.444633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734840, 26.956240, 39.373993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239033, -0.900757, -0.362629,
		-0.091837, -0.392752, 0.915047,
		-0.966659, -0.185424, -0.176603,
		42.444843, 26.900612, 39.321011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878197, 26.288977, 39.789837>,  <43.121506, 27.030409, 39.444633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878197, 26.288977, 39.789837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695930, 26.444620, 39.469597>,  <42.586571, 26.538006, 39.277454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695930, 26.444620, 39.469597>,  <42.878197, 26.288977, 39.789837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695930, 26.444620, 39.469597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250880, -0.806800, -0.534913,
		-0.854066, -0.444596, 0.270010,
		-0.455664, 0.389111, -0.800602,
		42.559231, 26.561354, 39.229416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335388, 25.795755, 39.400002>,  <42.878197, 26.288977, 39.789837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335388, 25.795755, 39.400002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528770, 26.062929, 39.173679>,  <42.644798, 26.223234, 39.037888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528770, 26.062929, 39.173679>,  <42.335388, 25.795755, 39.400002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528770, 26.062929, 39.173679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374307, -0.742026, -0.556140,
		-0.791305, 0.057086, -0.608751,
		0.483457, 0.667936, -0.565801,
		42.673809, 26.263309, 39.003941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182304, 25.536467, 38.716084>,  <42.335388, 25.795755, 39.400002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182304, 25.536467, 38.716084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559349, 25.463318, 38.604336>,  <42.785576, 25.419428, 38.537285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559349, 25.463318, 38.604336>,  <42.182304, 25.536467, 38.716084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559349, 25.463318, 38.604336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201194, -0.356675, 0.912307,
		-0.266479, -0.916156, -0.299412,
		0.942608, -0.182870, -0.279372,
		42.842133, 25.408457, 38.520523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507217, 25.579340, 38.114784>,  <42.182304, 25.536467, 38.716084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507217, 25.579340, 38.114784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281902, 25.871620, 37.960491>,  <42.146713, 26.046988, 37.867916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281902, 25.871620, 37.960491>,  <42.507217, 25.579340, 38.114784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281902, 25.871620, 37.960491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040905, 0.490923, 0.870242,
		0.825249, 0.474416, -0.306419,
		-0.563285, 0.730701, -0.385728,
		42.112915, 26.090830, 37.844772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724121, 26.254175, 38.344219>,  <42.507217, 25.579340, 38.114784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724121, 26.254175, 38.344219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330475, 26.281509, 38.278671>,  <42.094288, 26.297909, 38.239342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330475, 26.281509, 38.278671>,  <42.724121, 26.254175, 38.344219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330475, 26.281509, 38.278671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124300, 0.393898, 0.910711,
		0.126782, 0.916611, -0.379146,
		-0.984112, 0.068334, -0.163874,
		42.035240, 26.302010, 38.229507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358738, 26.909063, 38.488491>,  <42.724121, 26.254175, 38.344219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358738, 26.909063, 38.488491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135338, 26.590973, 38.582890>,  <42.001297, 26.400120, 38.639526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135338, 26.590973, 38.582890>,  <42.358738, 26.909063, 38.488491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135338, 26.590973, 38.582890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170878, 0.388696, 0.905382,
		-0.811712, 0.465331, -0.352974,
		-0.558502, -0.795225, 0.235995,
		41.967789, 26.352406, 38.653687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634281, 26.995060, 38.550312>,  <42.358738, 26.909063, 38.488491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634281, 26.995060, 38.550312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818851, 26.720850, 38.775574>,  <41.929596, 26.556324, 38.910732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818851, 26.720850, 38.775574>,  <41.634281, 26.995060, 38.550312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818851, 26.720850, 38.775574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220746, 0.526091, 0.821279,
		-0.859276, -0.503275, 0.091426,
		0.461427, -0.685524, 0.563153,
		41.957279, 26.515192, 38.944519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194199, 26.621927, 39.091724>,  <41.634281, 26.995060, 38.550312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194199, 26.621927, 39.091724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579372, 26.707548, 39.157368>,  <41.810478, 26.758921, 39.196754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579372, 26.707548, 39.157368>,  <41.194199, 26.621927, 39.091724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579372, 26.707548, 39.157368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257740, 0.550932, 0.793753,
		0.079493, -0.806633, 0.585683,
		0.962939, 0.214052, 0.164107,
		41.868256, 26.771763, 39.206600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260704, 26.719261, 39.824356>,  <41.194199, 26.621927, 39.091724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260704, 26.719261, 39.824356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610332, 26.888567, 39.728985>,  <41.820110, 26.990150, 39.671764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610332, 26.888567, 39.728985>,  <41.260704, 26.719261, 39.824356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610332, 26.888567, 39.728985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177421, 0.735021, 0.654421,
		0.452240, -0.529709, 0.717556,
		0.874071, 0.423265, -0.238425,
		41.872555, 27.015547, 39.657455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562874, 27.078386, 40.477360>,  <41.260704, 26.719261, 39.824356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562874, 27.078386, 40.477360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753117, 27.225925, 40.157925>,  <41.867264, 27.314449, 39.966263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753117, 27.225925, 40.157925>,  <41.562874, 27.078386, 40.477360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753117, 27.225925, 40.157925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067978, 0.889716, 0.451425,
		0.877027, -0.268987, 0.398082,
		0.475608, 0.368851, -0.798590,
		41.895798, 27.336580, 39.918346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212879, 27.429077, 40.722996>,  <41.562874, 27.078386, 40.477360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212879, 27.429077, 40.722996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181087, 27.616442, 40.371025>,  <42.162010, 27.728861, 40.159843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181087, 27.616442, 40.371025>,  <42.212879, 27.429077, 40.722996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181087, 27.616442, 40.371025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285647, 0.856406, 0.430086,
		0.955033, -0.217164, -0.201871,
		-0.079484, 0.468411, -0.879928,
		42.157242, 27.756966, 40.107048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765415, 27.930893, 40.664341>,  <42.212879, 27.429077, 40.722996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765415, 27.930893, 40.664341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474403, 28.041756, 40.413300>,  <42.299797, 28.108274, 40.262676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474403, 28.041756, 40.413300>,  <42.765415, 27.930893, 40.664341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474403, 28.041756, 40.413300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043545, 0.931579, 0.360921,
		0.684696, 0.235251, -0.689818,
		-0.727527, 0.277159, -0.627605,
		42.256145, 28.124903, 40.225018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000546, 28.519306, 40.418541>,  <42.765415, 27.930893, 40.664341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000546, 28.519306, 40.418541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605244, 28.556856, 40.370304>,  <42.368061, 28.579386, 40.341362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605244, 28.556856, 40.370304>,  <43.000546, 28.519306, 40.418541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605244, 28.556856, 40.370304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069994, 0.979504, 0.188872,
		0.135855, 0.178213, -0.974569,
		-0.988253, 0.093874, -0.120596,
		42.308769, 28.585018, 40.334126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779263, 29.264637, 40.346767>,  <43.000546, 28.519306, 40.418541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779263, 29.264637, 40.346767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451881, 29.069321, 40.225636>,  <42.255451, 28.952131, 40.152954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451881, 29.069321, 40.225636>,  <42.779263, 29.264637, 40.346767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451881, 29.069321, 40.225636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526830, 0.848101, 0.056345,
		0.229319, 0.205656, -0.951377,
		-0.818451, -0.488293, -0.302832,
		42.206345, 28.922832, 40.134785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474026, 29.725883, 39.779758>,  <42.779263, 29.264637, 40.346767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474026, 29.725883, 39.779758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231609, 29.481806, 39.983868>,  <42.086159, 29.335360, 40.106335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231609, 29.481806, 39.983868>,  <42.474026, 29.725883, 39.779758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231609, 29.481806, 39.983868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515018, 0.789897, 0.332894,
		-0.606194, -0.061054, -0.792970,
		-0.606040, -0.610192, 0.510275,
		42.049797, 29.298748, 40.136951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882862, 29.985451, 39.711330>,  <42.474026, 29.725883, 39.779758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882862, 29.985451, 39.711330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852119, 29.748251, 40.031940>,  <41.833672, 29.605932, 40.224308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852119, 29.748251, 40.031940>,  <41.882862, 29.985451, 39.711330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852119, 29.748251, 40.031940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436226, 0.742879, 0.507778,
		-0.896549, -0.310619, -0.315778,
		-0.076859, -0.592998, 0.801527,
		41.829063, 29.570351, 40.272400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227730, 30.062040, 39.882954>,  <41.882862, 29.985451, 39.711330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227730, 30.062040, 39.882954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399437, 29.943703, 40.224293>,  <41.502460, 29.872700, 40.429096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399437, 29.943703, 40.224293>,  <41.227730, 30.062040, 39.882954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399437, 29.943703, 40.224293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507951, 0.702165, 0.498949,
		-0.746802, -0.647643, 0.151144,
		0.429269, -0.295842, 0.853350,
		41.528217, 29.854950, 40.480297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650543, 29.847523, 40.316170>,  <41.227730, 30.062040, 39.882954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650543, 29.847523, 40.316170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973175, 29.928411, 40.538353>,  <41.166756, 29.976946, 40.671661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973175, 29.928411, 40.538353>,  <40.650543, 29.847523, 40.316170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973175, 29.928411, 40.538353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561560, 0.555576, 0.613177,
		-0.184601, -0.806499, 0.561677,
		0.806581, 0.202222, 0.555458,
		41.215149, 29.989079, 40.704990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049145, 30.336166, 40.172276>,  <40.650543, 29.847523, 40.316170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049145, 30.336166, 40.172276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265629, 30.381351, 40.505581>,  <40.395519, 30.408463, 40.705566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265629, 30.381351, 40.505581>,  <40.049145, 30.336166, 40.172276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265629, 30.381351, 40.505581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071712, 0.993526, -0.088111,
		-0.837825, -0.012068, 0.545806,
		0.541209, 0.112962, 0.833266,
		40.427990, 30.415239, 40.755562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724030, 30.684336, 40.843460>,  <40.049145, 30.336166, 40.172276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724030, 30.684336, 40.843460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105476, 30.742985, 40.738300>,  <40.334343, 30.778175, 40.675205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105476, 30.742985, 40.738300>,  <39.724030, 30.684336, 40.843460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105476, 30.742985, 40.738300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167420, 0.984154, -0.058403,
		0.250170, 0.099709, 0.963054,
		0.953617, 0.146624, -0.262899,
		40.391563, 30.786972, 40.659431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705791, 31.472195, 40.834255>,  <39.724030, 30.684336, 40.843460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705791, 31.472195, 40.834255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074635, 31.386862, 40.705132>,  <40.295940, 31.335663, 40.627659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074635, 31.386862, 40.705132>,  <39.705791, 31.472195, 40.834255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074635, 31.386862, 40.705132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157937, 0.969133, -0.189307,
		0.353229, 0.123578, 0.927339,
		0.922109, -0.213330, -0.322808,
		40.351269, 31.322863, 40.608288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105610, 31.918543, 41.053795>,  <39.705791, 31.472195, 40.834255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105610, 31.918543, 41.053795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343498, 31.770609, 40.768269>,  <40.486233, 31.681849, 40.596954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343498, 31.770609, 40.768269>,  <40.105610, 31.918543, 41.053795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343498, 31.770609, 40.768269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383389, 0.910906, -0.152526,
		0.706626, -0.182958, 0.683525,
		0.594721, -0.369834, -0.713814,
		40.521915, 31.659658, 40.554123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801041, 32.217358, 41.229221>,  <40.105610, 31.918543, 41.053795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801041, 32.217358, 41.229221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763195, 32.108627, 40.846149>,  <40.740486, 32.043388, 40.616306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763195, 32.108627, 40.846149>,  <40.801041, 32.217358, 41.229221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763195, 32.108627, 40.846149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340931, 0.894979, -0.287712,
		0.935315, -0.353725, 0.007998,
		-0.094613, -0.271829, -0.957684,
		40.734810, 32.027081, 40.558846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403553, 32.523220, 40.904263>,  <40.801041, 32.217358, 41.229221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403553, 32.523220, 40.904263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161449, 32.454674, 40.593319>,  <41.016186, 32.413548, 40.406754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161449, 32.454674, 40.593319>,  <41.403553, 32.523220, 40.904263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161449, 32.454674, 40.593319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335092, 0.830963, -0.444088,
		0.722060, -0.529277, -0.445528,
		-0.605263, -0.171365, -0.777361,
		40.979870, 32.403263, 40.360111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810665, 32.447193, 40.264343>,  <41.403553, 32.523220, 40.904263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810665, 32.447193, 40.264343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449551, 32.551628, 40.127632>,  <41.232883, 32.614288, 40.045605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449551, 32.551628, 40.127632>,  <41.810665, 32.447193, 40.264343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449551, 32.551628, 40.127632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420823, 0.700338, -0.576572,
		0.088822, -0.664348, -0.742127,
		-0.902784, 0.261092, -0.341779,
		41.178715, 32.629955, 40.025097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836655, 32.554390, 39.578590>,  <41.810665, 32.447193, 40.264343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836655, 32.554390, 39.578590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517532, 32.777733, 39.669575>,  <41.326057, 32.911739, 39.724167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517532, 32.777733, 39.669575>,  <41.836655, 32.554390, 39.578590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517532, 32.777733, 39.669575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341972, 0.729791, -0.591997,
		-0.496549, -0.394511, -0.773175,
		-0.797806, 0.558360, 0.227465,
		41.278191, 32.945240, 39.737816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632401, 32.899162, 38.869946>,  <41.836655, 32.554390, 39.578590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632401, 32.899162, 38.869946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388008, 33.094860, 39.118893>,  <41.241371, 33.212276, 39.268261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388008, 33.094860, 39.118893>,  <41.632401, 32.899162, 38.869946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388008, 33.094860, 39.118893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036992, 0.802957, -0.594887,
		-0.790778, -0.340444, -0.508692,
		-0.610984, 0.489241, 0.622368,
		41.204712, 33.241634, 39.305603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050915, 32.475971, 38.616241>,  <41.632401, 32.899162, 38.869946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050915, 32.475971, 38.616241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220325, 32.199680, 38.381802>,  <42.321972, 32.033905, 38.241138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220325, 32.199680, 38.381802>,  <42.050915, 32.475971, 38.616241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220325, 32.199680, 38.381802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436362, 0.722545, -0.536206,
		0.793859, -0.028655, 0.607426,
		0.423528, -0.690730, -0.586103,
		42.347385, 31.992462, 38.205971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826550, 32.518482, 38.693184>,  <42.050915, 32.475971, 38.616241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826550, 32.518482, 38.693184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707870, 32.388649, 38.333935>,  <42.636665, 32.310749, 38.118385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707870, 32.388649, 38.333935>,  <42.826550, 32.518482, 38.693184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707870, 32.388649, 38.333935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548767, 0.711736, -0.438505,
		0.781555, -0.622961, -0.033049,
		-0.296693, -0.324580, -0.898121,
		42.618862, 32.291275, 38.064499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381565, 32.312908, 38.384735>,  <42.826550, 32.518482, 38.693184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381565, 32.312908, 38.384735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103218, 32.462654, 38.139587>,  <42.936211, 32.552502, 37.992496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103218, 32.462654, 38.139587>,  <43.381565, 32.312908, 38.384735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103218, 32.462654, 38.139587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563896, 0.813288, -0.143472,
		0.444731, -0.445435, -0.777047,
		-0.695870, 0.374367, -0.612873,
		42.894459, 32.574963, 37.955727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646748, 32.462921, 37.826172>,  <43.381565, 32.312908, 38.384735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646748, 32.462921, 37.826172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358685, 32.734966, 37.881046>,  <43.185848, 32.898193, 37.913971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358685, 32.734966, 37.881046>,  <43.646748, 32.462921, 37.826172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358685, 32.734966, 37.881046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668352, 0.733108, -0.125931,
		-0.186222, 0.001000, -0.982507,
		-0.720157, 0.680112, 0.137189,
		43.142639, 32.938999, 37.922203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456200, 32.778236, 37.209763>,  <43.646748, 32.462921, 37.826172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456200, 32.778236, 37.209763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508472, 33.173363, 37.243553>,  <43.539837, 33.410439, 37.263828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508472, 33.173363, 37.243553>,  <43.456200, 32.778236, 37.209763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508472, 33.173363, 37.243553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675201, -0.026280, -0.737166,
		-0.725966, 0.153376, -0.670410,
		0.130682, 0.987818, 0.084481,
		43.547676, 33.469707, 37.268898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380508, 33.160122, 36.540291>,  <43.456200, 32.778236, 37.209763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380508, 33.160122, 36.540291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657459, 33.326836, 36.775887>,  <43.823627, 33.426865, 36.917244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657459, 33.326836, 36.775887>,  <43.380508, 33.160122, 36.540291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657459, 33.326836, 36.775887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658889, -0.032519, -0.751537,
		-0.294078, 0.908422, -0.297132,
		0.692375, 0.416787, 0.588986,
		43.865173, 33.451870, 36.952583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978157, 33.586712, 36.293552>,  <43.380508, 33.160122, 36.540291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978157, 33.586712, 36.293552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349998, 33.727566, 36.337090>,  <44.573101, 33.812077, 36.363213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349998, 33.727566, 36.337090>,  <43.978157, 33.586712, 36.293552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349998, 33.727566, 36.337090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364459, -0.922218, -0.129165,
		0.054894, 0.159740, -0.985632,
		0.929600, 0.352132, 0.108843,
		44.628880, 33.833206, 36.369743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362400, 33.307339, 35.708733>,  <43.978157, 33.586712, 36.293552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362400, 33.307339, 35.708733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614777, 33.406425, 36.002819>,  <44.766205, 33.465878, 36.179272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614777, 33.406425, 36.002819>,  <44.362400, 33.307339, 35.708733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614777, 33.406425, 36.002819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505297, -0.850310, -0.147134,
		0.588715, 0.464336, -0.661669,
		0.630943, 0.247719, 0.735218,
		44.804058, 33.480740, 36.223385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493061, 34.064774, 35.649254>,  <44.362400, 33.307339, 35.708733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.493061, 34.064774, 35.649254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.820034, 34.266529, 35.537979>,  <45.016220, 34.387581, 35.471214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.820034, 34.266529, 35.537979>,  <44.493061, 34.064774, 35.649254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820034, 34.266529, 35.537979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089866, 0.365370, 0.926515,
		0.568966, -0.782367, 0.253339,
		0.817436, 0.504388, -0.278191,
		45.065266, 34.417847, 35.454521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141949, 33.908310, 35.981121>,  <44.493061, 34.064774, 35.649254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141949, 33.908310, 35.981121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188412, 34.289310, 35.868523>,  <45.216290, 34.517910, 35.800964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188412, 34.289310, 35.868523>,  <45.141949, 33.908310, 35.981121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188412, 34.289310, 35.868523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008750, 0.282423, 0.959250,
		0.993192, -0.113887, 0.024471,
		0.116157, 0.952506, -0.281497,
		45.223259, 34.575062, 35.784073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710258, 34.221043, 36.361935>,  <45.141949, 33.908310, 35.981121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710258, 34.221043, 36.361935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452461, 34.505344, 36.249191>,  <45.297783, 34.675926, 36.181545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452461, 34.505344, 36.249191>,  <45.710258, 34.221043, 36.361935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452461, 34.505344, 36.249191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075075, 0.308030, 0.948410,
		0.760912, 0.632408, -0.145164,
		-0.644497, 0.710758, -0.281862,
		45.259113, 34.718571, 36.164631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975197, 34.841709, 36.641136>,  <45.710258, 34.221043, 36.361935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975197, 34.841709, 36.641136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579590, 34.865753, 36.587116>,  <45.342228, 34.880180, 36.554703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579590, 34.865753, 36.587116>,  <45.975197, 34.841709, 36.641136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579590, 34.865753, 36.587116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113525, 0.276272, 0.954351,
		0.094679, 0.959198, -0.266412,
		-0.989014, 0.060112, -0.135050,
		45.282887, 34.883785, 36.546600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712566, 35.529552, 36.858654>,  <45.975197, 34.841709, 36.641136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712566, 35.529552, 36.858654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431267, 35.245396, 36.869892>,  <45.262489, 35.074902, 36.876637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431267, 35.245396, 36.869892>,  <45.712566, 35.529552, 36.858654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431267, 35.245396, 36.869892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100089, 0.138053, 0.985355,
		-0.703865, 0.690135, -0.168188,
		-0.703247, -0.710391, 0.028096,
		45.220291, 35.032280, 36.878323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066269, 35.816147, 37.184200>,  <45.712566, 35.529552, 36.858654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066269, 35.816147, 37.184200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139080, 35.423950, 37.213882>,  <45.182766, 35.188633, 37.231693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139080, 35.423950, 37.213882>,  <45.066269, 35.816147, 37.184200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139080, 35.423950, 37.213882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086245, 0.059259, 0.994510,
		-0.979503, -0.187431, -0.073775,
		0.182030, -0.980488, 0.074210,
		45.193687, 35.129803, 37.236145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848732, 35.432892, 36.515572>,  <45.066269, 35.816147, 37.184200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848732, 35.432892, 36.515572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051659, 35.767231, 36.431675>,  <45.173416, 35.967834, 36.381336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051659, 35.767231, 36.431675>,  <44.848732, 35.432892, 36.515572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051659, 35.767231, 36.431675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782755, -0.548753, -0.293539,
		-0.360450, -0.015260, -0.932654,
		0.507317, 0.835845, -0.209743,
		45.203854, 36.017986, 36.368752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909607, 35.576797, 35.712624>,  <44.848732, 35.432892, 36.515572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909607, 35.576797, 35.712624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191086, 35.694881, 35.971130>,  <45.359974, 35.765732, 36.126236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191086, 35.694881, 35.971130>,  <44.909607, 35.576797, 35.712624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191086, 35.694881, 35.971130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670681, -0.576239, -0.467050,
		0.234526, 0.762100, -0.603490,
		0.703694, 0.295214, 0.646270,
		45.402195, 35.783447, 36.165012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555637, 35.790157, 35.342659>,  <44.909607, 35.576797, 35.712624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555637, 35.790157, 35.342659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629910, 35.671242, 35.717281>,  <45.674473, 35.599892, 35.942055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629910, 35.671242, 35.717281>,  <45.555637, 35.790157, 35.342659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629910, 35.671242, 35.717281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559808, -0.751319, -0.349478,
		0.807550, 0.589184, 0.026918,
		0.185683, -0.297290, 0.936558,
		45.685616, 35.582054, 35.998249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219437, 35.637589, 35.323284>,  <45.555637, 35.790157, 35.342659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219437, 35.637589, 35.323284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060741, 35.444771, 35.635754>,  <45.965523, 35.329079, 35.823235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060741, 35.444771, 35.635754>,  <46.219437, 35.637589, 35.323284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060741, 35.444771, 35.635754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568276, -0.797305, -0.203390,
		0.720875, 0.363228, 0.590258,
		-0.396739, -0.482048, 0.781171,
		45.941719, 35.300156, 35.870106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774612, 35.378410, 35.661587>,  <46.219437, 35.637589, 35.323284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774612, 35.378410, 35.661587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444969, 35.153107, 35.685547>,  <46.247185, 35.017925, 35.699924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444969, 35.153107, 35.685547>,  <46.774612, 35.378410, 35.661587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444969, 35.153107, 35.685547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549486, -0.820641, -0.156890,
		0.137529, -0.096379, 0.985798,
		-0.824107, -0.563259, 0.059903,
		46.197739, 34.984131, 35.703518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971344, 35.180893, 34.946949>,  <46.774612, 35.378410, 35.661587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971344, 35.180893, 34.946949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.299606, 35.341789, 35.109295>,  <47.496563, 35.438328, 35.206703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.299606, 35.341789, 35.109295>,  <46.971344, 35.180893, 34.946949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.299606, 35.341789, 35.109295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149112, -0.836402, 0.527444,
		0.551626, -0.372331, -0.746377,
		0.820655, 0.402245, 0.405863,
		47.545803, 35.462463, 35.231052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648880, 34.720280, 34.710861>,  <46.971344, 35.180893, 34.946949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.648880, 34.720280, 34.710861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626980, 34.939594, 35.044659>,  <47.613842, 35.071182, 35.244938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626980, 34.939594, 35.044659>,  <47.648880, 34.720280, 34.710861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.626980, 34.939594, 35.044659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038727, -0.833954, 0.550473,
		0.997749, 0.062454, 0.024423,
		-0.054747, 0.548288, 0.834496,
		47.610558, 35.104080, 35.295006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.368763, 37.287663, 29.683643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.974995, 37.355564, 29.665281>,  <39.738735, 37.396305, 29.654264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.974995, 37.355564, 29.665281>,  <40.368763, 37.287663, 29.683643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974995, 37.355564, 29.665281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142063, -0.613827, 0.776553,
		0.103649, 0.770973, 0.628377,
		-0.984416, 0.169758, -0.045904,
		39.679668, 37.406490, 29.651510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078175, 37.452362, 30.408134>,  <40.368763, 37.287663, 29.683643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078175, 37.452362, 30.408134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780190, 37.307266, 30.184187>,  <39.601398, 37.220211, 30.049818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780190, 37.307266, 30.184187>,  <40.078175, 37.452362, 30.408134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780190, 37.307266, 30.184187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323573, -0.537445, 0.778752,
		-0.583380, 0.761299, 0.283005,
		-0.744962, -0.362735, -0.559870,
		39.556702, 37.198444, 30.016226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516727, 37.586948, 30.807510>,  <40.078175, 37.452362, 30.408134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516727, 37.586948, 30.807510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377457, 37.319775, 30.544411>,  <39.293896, 37.159470, 30.386551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.377457, 37.319775, 30.544411>,  <39.516727, 37.586948, 30.807510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377457, 37.319775, 30.544411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419965, -0.516160, 0.746463,
		-0.838095, 0.536132, -0.100796,
		-0.348176, -0.667938, -0.657748,
		39.273003, 37.119392, 30.347086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788151, 37.659519, 30.748028>,  <39.516727, 37.586948, 30.807510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788151, 37.659519, 30.748028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955914, 37.301071, 30.689978>,  <39.056572, 37.086002, 30.655148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.955914, 37.301071, 30.689978>,  <38.788151, 37.659519, 30.748028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955914, 37.301071, 30.689978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421441, -0.333795, 0.843189,
		-0.804045, -0.292475, -0.517659,
		0.419403, -0.896124, -0.145126,
		39.081734, 37.032234, 30.646441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282303, 37.302761, 31.020611>,  <38.788151, 37.659519, 30.748028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282303, 37.302761, 31.020611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567768, 37.026039, 30.976625>,  <38.739048, 36.860004, 30.950233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567768, 37.026039, 30.976625>,  <38.282303, 37.302761, 31.020611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567768, 37.026039, 30.976625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317225, -0.459144, 0.829792,
		-0.624545, -0.557307, -0.547132,
		0.713661, -0.691806, -0.109965,
		38.781868, 36.818497, 30.943636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932003, 36.594711, 31.182022>,  <38.282303, 37.302761, 31.020611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932003, 36.594711, 31.182022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320953, 36.508820, 31.218649>,  <38.554321, 36.457283, 31.240625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320953, 36.508820, 31.218649>,  <37.932003, 36.594711, 31.182022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320953, 36.508820, 31.218649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185692, -0.473797, 0.860834,
		-0.141460, -0.854054, -0.500580,
		0.972372, -0.214728, 0.091568,
		38.612663, 36.444401, 31.246119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053234, 35.893791, 31.456253>,  <37.932003, 36.594711, 31.182022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053234, 35.893791, 31.456253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417942, 36.035454, 31.539448>,  <38.636765, 36.120449, 31.589365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417942, 36.035454, 31.539448>,  <38.053234, 35.893791, 31.456253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417942, 36.035454, 31.539448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032297, -0.566669, 0.823312,
		0.409438, -0.743951, -0.528108,
		0.911766, 0.354152, 0.207988,
		38.691471, 36.141701, 31.601845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477116, 35.277386, 31.476187>,  <38.053234, 35.893791, 31.456253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477116, 35.277386, 31.476187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635880, 35.582943, 31.679726>,  <38.731140, 35.766277, 31.801849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635880, 35.582943, 31.679726>,  <38.477116, 35.277386, 31.476187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635880, 35.582943, 31.679726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001834, -0.553726, 0.832697,
		0.917854, -0.331442, -0.218381,
		0.396914, 0.763893, 0.508848,
		38.754955, 35.812111, 31.832380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049389, 34.991291, 31.884802>,  <38.477116, 35.277386, 31.476187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049389, 34.991291, 31.884802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980545, 35.341644, 32.065117>,  <38.939240, 35.551857, 32.173306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980545, 35.341644, 32.065117>,  <39.049389, 34.991291, 31.884802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980545, 35.341644, 32.065117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008261, -0.458883, 0.888458,
		0.985043, 0.149191, 0.086216,
		-0.172113, 0.875881, 0.450787,
		38.928909, 35.604408, 32.200352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483334, 34.956116, 32.492802>,  <39.049389, 34.991291, 31.884802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483334, 34.956116, 32.492802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231232, 35.251007, 32.590187>,  <39.079971, 35.427940, 32.648617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231232, 35.251007, 32.590187>,  <39.483334, 34.956116, 32.492802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231232, 35.251007, 32.590187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122818, -0.404308, 0.906339,
		0.766611, 0.541325, 0.345363,
		-0.630257, 0.737226, 0.243463,
		39.042156, 35.472176, 32.663227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662888, 35.079872, 33.232365>,  <39.483334, 34.956116, 32.492802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662888, 35.079872, 33.232365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307255, 35.259106, 33.194950>,  <39.093872, 35.366646, 33.172501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307255, 35.259106, 33.194950>,  <39.662888, 35.079872, 33.232365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307255, 35.259106, 33.194950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218489, -0.235870, 0.946904,
		0.402228, 0.862316, 0.307610,
		-0.889087, 0.448081, -0.093533,
		39.040527, 35.393532, 33.166889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564602, 35.644272, 33.793552>,  <39.662888, 35.079872, 33.232365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564602, 35.644272, 33.793552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200375, 35.544857, 33.661438>,  <38.981838, 35.485207, 33.582169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200375, 35.544857, 33.661438>,  <39.564602, 35.644272, 33.793552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200375, 35.544857, 33.661438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294126, -0.171834, 0.940193,
		-0.290430, 0.953258, 0.083365,
		-0.910571, -0.248541, -0.330283,
		38.927204, 35.470295, 33.562351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062698, 36.075100, 34.224224>,  <39.564602, 35.644272, 33.793552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062698, 36.075100, 34.224224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876183, 35.748482, 34.088093>,  <38.764275, 35.552509, 34.006413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876183, 35.748482, 34.088093>,  <39.062698, 36.075100, 34.224224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876183, 35.748482, 34.088093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110342, -0.328027, 0.938202,
		-0.877725, 0.475024, 0.062855,
		-0.466287, -0.816548, -0.340332,
		38.736298, 35.503517, 33.985992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550652, 35.905239, 34.737614>,  <39.062698, 36.075100, 34.224224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550652, 35.905239, 34.737614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541054, 35.568058, 34.522636>,  <38.535294, 35.365749, 34.393650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541054, 35.568058, 34.522636>,  <38.550652, 35.905239, 34.737614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541054, 35.568058, 34.522636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134636, -0.529979, 0.837255,
		-0.990605, 0.092449, -0.100776,
		-0.023994, -0.842957, -0.537446,
		38.533855, 35.315170, 34.361404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872517, 35.491520, 34.882229>,  <38.550652, 35.905239, 34.737614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872517, 35.491520, 34.882229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167824, 35.236221, 34.794956>,  <38.345009, 35.083042, 34.742592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167824, 35.236221, 34.794956>,  <37.872517, 35.491520, 34.882229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167824, 35.236221, 34.794956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282430, -0.586251, 0.759305,
		-0.612538, -0.498944, -0.613068,
		0.738262, -0.638252, -0.218185,
		38.389301, 35.044746, 34.729504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561436, 34.720356, 34.871006>,  <37.872517, 35.491520, 34.882229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561436, 34.720356, 34.871006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954536, 34.666916, 34.922153>,  <38.190395, 34.634850, 34.952843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954536, 34.666916, 34.922153>,  <37.561436, 34.720356, 34.871006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954536, 34.666916, 34.922153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183721, -0.626406, 0.757537,
		-0.021113, -0.767962, -0.640147,
		0.982752, -0.133602, 0.127866,
		38.249363, 34.626835, 34.960514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566544, 34.086422, 35.018562>,  <37.561436, 34.720356, 34.871006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566544, 34.086422, 35.018562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934502, 34.193672, 35.133041>,  <38.155277, 34.258022, 35.201729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934502, 34.193672, 35.133041>,  <37.566544, 34.086422, 35.018562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934502, 34.193672, 35.133041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015644, -0.704105, 0.709923,
		0.391857, -0.657531, -0.643507,
		0.919893, 0.268121, 0.286195,
		38.210468, 34.274109, 35.218899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029594, 33.509872, 35.145210>,  <37.566544, 34.086422, 35.018562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029594, 33.509872, 35.145210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210773, 33.796986, 35.356728>,  <38.319481, 33.969254, 35.483639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210773, 33.796986, 35.356728>,  <38.029594, 33.509872, 35.145210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210773, 33.796986, 35.356728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199804, -0.659769, 0.724419,
		0.868857, -0.222472, -0.442259,
		0.452952, 0.717782, 0.528794,
		38.346661, 34.012321, 35.515366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373436, 33.127403, 35.468273>,  <38.029594, 33.509872, 35.145210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373436, 33.127403, 35.468273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418339, 33.468506, 35.672314>,  <38.445282, 33.673168, 35.794739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418339, 33.468506, 35.672314>,  <38.373436, 33.127403, 35.468273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418339, 33.468506, 35.672314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023617, -0.515495, 0.856567,
		0.993398, -0.084109, -0.078008,
		0.112258, 0.852755, 0.510105,
		38.452015, 33.724331, 35.825344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053555, 33.081039, 35.882965>,  <38.373436, 33.127403, 35.468273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053555, 33.081039, 35.882965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828903, 33.369705, 36.044838>,  <38.694111, 33.542904, 36.141960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828903, 33.369705, 36.044838>,  <39.053555, 33.081039, 35.882965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828903, 33.369705, 36.044838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045783, -0.461254, 0.886086,
		0.826120, 0.516182, 0.226015,
		-0.561632, 0.721666, 0.404683,
		38.660412, 33.586205, 36.166245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426472, 33.343166, 36.487106>,  <39.053555, 33.081039, 35.882965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426472, 33.343166, 36.487106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041313, 33.414856, 36.567814>,  <38.810219, 33.457870, 36.616238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041313, 33.414856, 36.567814>,  <39.426472, 33.343166, 36.487106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041313, 33.414856, 36.567814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052922, -0.607731, 0.792378,
		0.264641, 0.773654, 0.575695,
		-0.962894, 0.179229, 0.201774,
		38.752445, 33.468624, 36.628345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418251, 33.491871, 37.210400>,  <39.426472, 33.343166, 36.487106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418251, 33.491871, 37.210400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040981, 33.395069, 37.119312>,  <38.814621, 33.336987, 37.064659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040981, 33.395069, 37.119312>,  <39.418251, 33.491871, 37.210400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040981, 33.395069, 37.119312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005495, -0.696539, 0.717498,
		-0.332253, 0.675474, 0.658288,
		-0.943174, -0.242008, -0.227715,
		38.758030, 33.322468, 37.050999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109394, 33.386246, 37.015488>,  <39.418251, 33.491871, 37.210400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109394, 33.386246, 37.015488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457024, 33.189018, 37.031502>,  <40.665600, 33.070683, 37.041111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457024, 33.189018, 37.031502>,  <40.109394, 33.386246, 37.015488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457024, 33.189018, 37.031502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244611, 0.357975, -0.901121,
		0.429978, 0.792932, 0.431715,
		0.869071, -0.493064, 0.040038,
		40.717747, 33.041100, 37.043514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658718, 33.851482, 36.931950>,  <40.109394, 33.386246, 37.015488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658718, 33.851482, 36.931950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.807266, 33.493275, 36.833858>,  <40.896397, 33.278351, 36.775005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.807266, 33.493275, 36.833858>,  <40.658718, 33.851482, 36.931950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807266, 33.493275, 36.833858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318450, 0.370944, -0.872347,
		0.872165, 0.245874, 0.422935,
		0.371373, -0.895515, -0.245226,
		40.918678, 33.224621, 36.760292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355415, 33.949760, 36.764709>,  <40.658718, 33.851482, 36.931950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355415, 33.949760, 36.764709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.276901, 33.596828, 36.593613>,  <41.229794, 33.385067, 36.490955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.276901, 33.596828, 36.593613>,  <41.355415, 33.949760, 36.764709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276901, 33.596828, 36.593613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173333, 0.398132, -0.900803,
		0.965105, -0.250957, 0.074789,
		-0.196287, -0.882333, -0.427739,
		41.218014, 33.332130, 36.465290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791649, 33.956295, 36.203854>,  <41.355415, 33.949760, 36.764709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791649, 33.956295, 36.203854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.500927, 33.693336, 36.124264>,  <41.326492, 33.535561, 36.076508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.500927, 33.693336, 36.124264>,  <41.791649, 33.956295, 36.203854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500927, 33.693336, 36.124264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166930, 0.111945, -0.979593,
		0.666252, -0.745187, 0.028377,
		-0.726804, -0.657392, -0.198978,
		41.282887, 33.496120, 36.064571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147449, 33.507454, 35.879475>,  <41.791649, 33.956295, 36.203854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147449, 33.507454, 35.879475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.761551, 33.481747, 35.777390>,  <41.530010, 33.466324, 35.716141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.761551, 33.481747, 35.777390>,  <42.147449, 33.507454, 35.879475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761551, 33.481747, 35.777390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236608, 0.212784, -0.948019,
		0.115231, -0.974983, -0.190076,
		-0.964748, -0.064268, -0.255208,
		41.472126, 33.462467, 35.700829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143112, 33.269821, 35.097267>,  <42.147449, 33.507454, 35.879475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143112, 33.269821, 35.097267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.778080, 33.397530, 35.199451>,  <41.559059, 33.474155, 35.260761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.778080, 33.397530, 35.199451>,  <42.143112, 33.269821, 35.097267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778080, 33.397530, 35.199451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197119, 0.203857, -0.958951,
		-0.358242, -0.925477, -0.123102,
		-0.912583, 0.319271, 0.255459,
		41.504307, 33.493309, 35.276089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695023, 33.039768, 34.395145>,  <42.143112, 33.269821, 35.097267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695023, 33.039768, 34.395145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.462669, 33.281643, 34.613110>,  <41.323257, 33.426765, 34.743889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.462669, 33.281643, 34.613110>,  <41.695023, 33.039768, 34.395145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462669, 33.281643, 34.613110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165435, 0.567763, -0.806397,
		-0.796996, -0.558573, -0.229769,
		-0.580886, 0.604684, 0.544912,
		41.288403, 33.463047, 34.776585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035816, 33.087589, 34.045441>,  <41.695023, 33.039768, 34.395145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035816, 33.087589, 34.045441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079132, 33.414562, 34.271740>,  <41.105122, 33.610748, 34.407520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079132, 33.414562, 34.271740>,  <41.035816, 33.087589, 34.045441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079132, 33.414562, 34.271740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010786, 0.570028, -0.821554,
		-0.994060, 0.082866, 0.070546,
		0.108292, 0.817436, 0.565748,
		41.111618, 33.659794, 34.441463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675507, 33.543171, 33.630119>,  <41.035816, 33.087589, 34.045441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675507, 33.543171, 33.630119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.880180, 33.768028, 33.890018>,  <41.002987, 33.902943, 34.045959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.880180, 33.768028, 33.890018>,  <40.675507, 33.543171, 33.630119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880180, 33.768028, 33.890018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106455, 0.708939, -0.697189,
		-0.852551, 0.425913, 0.302913,
		0.511689, 0.562142, 0.649747,
		41.033688, 33.936672, 34.084942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408119, 34.245682, 33.647884>,  <40.675507, 33.543171, 33.630119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408119, 34.245682, 33.647884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795506, 34.248898, 33.747498>,  <41.027935, 34.250828, 33.807266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.795506, 34.248898, 33.747498>,  <40.408119, 34.245682, 33.647884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795506, 34.248898, 33.747498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166216, 0.723733, -0.669763,
		-0.185622, 0.690033, 0.699570,
		0.968461, 0.008043, 0.249035,
		41.086044, 34.251312, 33.822208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565090, 34.942184, 33.619270>,  <40.408119, 34.245682, 33.647884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565090, 34.942184, 33.619270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.921310, 34.761505, 33.597767>,  <41.135044, 34.653099, 33.584866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.921310, 34.761505, 33.597767>,  <40.565090, 34.942184, 33.619270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921310, 34.761505, 33.597767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178638, 0.455958, -0.871889,
		0.418342, 0.766858, 0.486744,
		0.890550, -0.451699, -0.053756,
		41.188477, 34.625996, 33.581638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091072, 35.459469, 33.693386>,  <40.565090, 34.942184, 33.619270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091072, 35.459469, 33.693386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.238453, 35.154091, 33.481197>,  <41.326881, 34.970863, 33.353886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.238453, 35.154091, 33.481197>,  <41.091072, 35.459469, 33.693386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238453, 35.154091, 33.481197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088742, 0.596889, -0.797401,
		0.925403, 0.246726, 0.287672,
		0.368448, -0.763446, -0.530469,
		41.348988, 34.925056, 33.322056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599606, 35.818417, 33.297615>,  <41.091072, 35.459469, 33.693386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599606, 35.818417, 33.297615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.543976, 35.467270, 33.114307>,  <41.510597, 35.256584, 33.004322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.543976, 35.467270, 33.114307>,  <41.599606, 35.818417, 33.297615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543976, 35.467270, 33.114307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090292, 0.449599, -0.888655,
		0.986158, -0.164965, 0.016738,
		-0.139072, -0.877865, -0.458271,
		41.502254, 35.203911, 32.976826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116028, 35.800350, 32.919495>,  <41.599606, 35.818417, 33.297615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116028, 35.800350, 32.919495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.842579, 35.558380, 32.756165>,  <41.678509, 35.413197, 32.658169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.842579, 35.558380, 32.756165>,  <42.116028, 35.800350, 32.919495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842579, 35.558380, 32.756165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139787, 0.440586, -0.886760,
		0.716325, -0.663286, -0.216633,
		-0.683621, -0.604926, -0.408322,
		41.637493, 35.376904, 32.633667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442867, 35.387066, 32.354427>,  <42.116028, 35.800350, 32.919495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442867, 35.387066, 32.354427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.049698, 35.402473, 32.282455>,  <41.813797, 35.411716, 32.239273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.049698, 35.402473, 32.282455>,  <42.442867, 35.387066, 32.354427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049698, 35.402473, 32.282455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183024, 0.305425, -0.934461,
		0.018959, -0.951436, -0.307261,
		-0.982926, 0.038520, -0.179926,
		41.754822, 35.414028, 32.228477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370232, 35.163425, 31.665714>,  <42.442867, 35.387066, 32.354427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370232, 35.163425, 31.665714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.009930, 35.322094, 31.736479>,  <41.793751, 35.417294, 31.778936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.009930, 35.322094, 31.736479>,  <42.370232, 35.163425, 31.665714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009930, 35.322094, 31.736479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076866, 0.546475, -0.833940,
		-0.427475, -0.737576, -0.522730,
		-0.900753, 0.396669, 0.176910,
		41.739704, 35.441093, 31.789553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979172, 35.252872, 30.952404>,  <42.370232, 35.163425, 31.665714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979172, 35.252872, 30.952404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.800747, 35.504749, 31.206812>,  <41.693691, 35.655876, 31.359457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.800747, 35.504749, 31.206812>,  <41.979172, 35.252872, 30.952404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800747, 35.504749, 31.206812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201520, 0.621724, -0.756868,
		-0.872021, -0.465778, -0.150430,
		-0.446058, 0.629691, 0.636020,
		41.666931, 35.693657, 31.397617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286541, 35.339130, 30.728184>,  <41.979172, 35.252872, 30.952404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286541, 35.339130, 30.728184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.395668, 35.661514, 30.938326>,  <41.461143, 35.854942, 31.064411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.395668, 35.661514, 30.938326>,  <41.286541, 35.339130, 30.728184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395668, 35.661514, 30.938326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192020, 0.580702, -0.791147,
		-0.942707, 0.114963, 0.313188,
		0.272822, 0.805958, 0.525357,
		41.477516, 35.903301, 31.095934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.762329, 35.965725, 30.636082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.082718, 36.149494, 30.789635>,  <41.274952, 36.259758, 30.881765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.082718, 36.149494, 30.789635>,  <40.762329, 35.965725, 30.636082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082718, 36.149494, 30.789635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077583, 0.715440, -0.694353,
		-0.593648, 0.526378, 0.608694,
		0.800976, 0.459426, 0.383881,
		41.323009, 36.287323, 30.904799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678661, 36.585243, 30.377842>,  <40.762329, 35.965725, 30.636082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678661, 36.585243, 30.377842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.049896, 36.616840, 30.523396>,  <41.272636, 36.635799, 30.610727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.049896, 36.616840, 30.523396>,  <40.678661, 36.585243, 30.377842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049896, 36.616840, 30.523396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221953, 0.667302, -0.710947,
		-0.298976, 0.740587, 0.601784,
		0.928089, 0.078989, 0.363883,
		41.328323, 36.640537, 30.632561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817078, 37.215839, 30.571423>,  <40.678661, 36.585243, 30.377842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817078, 37.215839, 30.571423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168423, 37.048943, 30.478136>,  <41.379230, 36.948803, 30.422163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168423, 37.048943, 30.478136>,  <40.817078, 37.215839, 30.571423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168423, 37.048943, 30.478136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132624, 0.681477, -0.719722,
		0.459233, 0.601244, 0.653919,
		0.878360, -0.417246, -0.233218,
		41.431931, 36.923767, 30.408171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141491, 37.757549, 30.204248>,  <40.817078, 37.215839, 30.571423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141491, 37.757549, 30.204248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.387154, 37.464825, 30.086086>,  <41.534554, 37.289192, 30.015190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.387154, 37.464825, 30.086086>,  <41.141491, 37.757549, 30.204248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387154, 37.464825, 30.086086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244172, 0.532155, -0.810673,
		0.750459, 0.425753, 0.505515,
		0.614159, -0.731809, -0.295404,
		41.571400, 37.245281, 29.997465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796379, 38.092422, 30.120255>,  <41.141491, 37.757549, 30.204248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796379, 38.092422, 30.120255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.798367, 37.751236, 29.911478>,  <41.799557, 37.546524, 29.786213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.798367, 37.751236, 29.911478>,  <41.796379, 38.092422, 30.120255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798367, 37.751236, 29.911478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220979, 0.509979, -0.831318,
		0.975266, -0.111211, 0.191020,
		0.004964, -0.852968, -0.521940,
		41.799854, 37.495346, 29.754896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450394, 38.116817, 29.785446>,  <41.796379, 38.092422, 30.120255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450394, 38.116817, 29.785446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.237083, 37.841480, 29.588757>,  <42.109097, 37.676277, 29.470743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.237083, 37.841480, 29.588757>,  <42.450394, 38.116817, 29.785446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237083, 37.841480, 29.588757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198126, 0.463477, -0.863675,
		0.822411, -0.558003, -0.110783,
		-0.533279, -0.688347, -0.491724,
		42.077099, 37.634975, 29.441240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929161, 37.773705, 29.213007>,  <42.450394, 38.116817, 29.785446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929161, 37.773705, 29.213007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553108, 37.685867, 29.108747>,  <42.327477, 37.633163, 29.046192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.553108, 37.685867, 29.108747>,  <42.929161, 37.773705, 29.213007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553108, 37.685867, 29.108747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196948, 0.274120, -0.941313,
		0.278200, -0.936279, -0.214447,
		-0.940115, -0.219638, -0.260658,
		42.271069, 37.619987, 29.030554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980122, 37.526497, 28.490040>,  <42.929161, 37.773705, 29.213007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980122, 37.526497, 28.490040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.598194, 37.632450, 28.543938>,  <42.369038, 37.696022, 28.576277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.598194, 37.632450, 28.543938>,  <42.980122, 37.526497, 28.490040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598194, 37.632450, 28.543938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009673, 0.480864, -0.876742,
		-0.297031, -0.835826, -0.461700,
		-0.954819, 0.264885, 0.134746,
		42.311749, 37.711914, 28.584362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613266, 37.416447, 27.847435>,  <42.980122, 37.526497, 28.490040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613266, 37.416447, 27.847435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.387566, 37.662903, 28.067249>,  <42.252144, 37.810776, 28.199137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.387566, 37.662903, 28.067249>,  <42.613266, 37.416447, 27.847435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387566, 37.662903, 28.067249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098208, 0.610797, -0.785673,
		-0.819742, -0.497285, -0.284132,
		-0.564250, 0.616145, 0.549533,
		42.218292, 37.847748, 28.232109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084038, 37.695007, 27.379999>,  <42.613266, 37.416447, 27.847435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084038, 37.695007, 27.379999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105743, 37.946438, 27.690340>,  <42.118767, 38.097298, 27.876545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105743, 37.946438, 27.690340>,  <42.084038, 37.695007, 27.379999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105743, 37.946438, 27.690340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101235, 0.769529, -0.630536,
		-0.993381, 0.112761, -0.021873,
		0.054268, 0.628577, 0.775851,
		42.122025, 38.135010, 27.923096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797642, 38.414665, 27.220993>,  <42.084038, 37.695007, 27.379999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797642, 38.414665, 27.220993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027245, 38.481812, 27.541576>,  <42.165009, 38.522099, 27.733927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027245, 38.481812, 27.541576>,  <41.797642, 38.414665, 27.220993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027245, 38.481812, 27.541576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297475, 0.869142, -0.395095,
		-0.762902, 0.465202, 0.448963,
		0.574012, 0.167863, 0.801457,
		42.199448, 38.532169, 27.782013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717930, 39.162453, 27.332371>,  <41.797642, 38.414665, 27.220993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717930, 39.162453, 27.332371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038788, 39.045326, 27.540533>,  <42.231304, 38.975052, 27.665430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.038788, 39.045326, 27.540533>,  <41.717930, 39.162453, 27.332371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038788, 39.045326, 27.540533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468052, 0.849501, -0.243465,
		-0.370795, 0.438871, 0.818476,
		0.802146, -0.292813, 0.520406,
		42.279430, 38.957481, 27.696655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879776, 39.855610, 27.601555>,  <41.717930, 39.162453, 27.332371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879776, 39.855610, 27.601555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.185474, 39.597786, 27.592937>,  <42.368893, 39.443092, 27.587767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.185474, 39.597786, 27.592937>,  <41.879776, 39.855610, 27.601555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185474, 39.597786, 27.592937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601593, 0.724540, -0.336344,
		0.232403, 0.244090, 0.941493,
		0.764248, -0.644563, -0.021542,
		42.414749, 39.404419, 27.586475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362206, 40.359577, 27.652418>,  <41.879776, 39.855610, 27.601555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362206, 40.359577, 27.652418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.550766, 40.026466, 27.536306>,  <42.663902, 39.826599, 27.466639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.550766, 40.026466, 27.536306>,  <42.362206, 40.359577, 27.652418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550766, 40.026466, 27.536306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686889, 0.553138, -0.471404,
		0.553138, 0.022832, 0.832776,
		0.471404, -0.832776, -0.290279,
		42.692188, 39.776634, 27.449223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922989, 40.494518, 27.851990>,  <42.362206, 40.359577, 27.652418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922989, 40.494518, 27.851990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.000694, 40.208759, 27.583097>,  <43.047318, 40.037304, 27.421762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.000694, 40.208759, 27.583097>,  <42.922989, 40.494518, 27.851990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000694, 40.208759, 27.583097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594405, 0.630877, -0.498676,
		0.780348, -0.302700, 0.547201,
		0.194267, -0.714400, -0.672230,
		43.058975, 39.994438, 27.381428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616993, 40.589016, 27.677938>,  <42.922989, 40.494518, 27.851990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616993, 40.589016, 27.677938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.464409, 40.380196, 27.372797>,  <43.372856, 40.254902, 27.189713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.464409, 40.380196, 27.372797>,  <43.616993, 40.589016, 27.677938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464409, 40.380196, 27.372797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385915, 0.659959, -0.644611,
		0.839973, -0.540293, -0.050283,
		-0.381463, -0.522051, -0.762855,
		43.349968, 40.223579, 27.143940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160980, 40.586906, 27.186678>,  <43.616993, 40.589016, 27.677938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160980, 40.586906, 27.186678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.816566, 40.531742, 26.990881>,  <43.609917, 40.498646, 26.873404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.816566, 40.531742, 26.990881>,  <44.160980, 40.586906, 27.186678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816566, 40.531742, 26.990881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331833, 0.577024, -0.746277,
		0.385364, -0.805000, -0.451076,
		-0.861035, -0.137906, -0.489490,
		43.558254, 40.490372, 26.844034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331112, 40.451862, 26.511564>,  <44.160980, 40.586906, 27.186678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331112, 40.451862, 26.511564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.955856, 40.583172, 26.467516>,  <43.730701, 40.661957, 26.441088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.955856, 40.583172, 26.467516>,  <44.331112, 40.451862, 26.511564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955856, 40.583172, 26.467516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319853, 0.699834, -0.638692,
		-0.132596, -0.634407, -0.761542,
		-0.938143, 0.328269, -0.110121,
		43.674412, 40.681652, 26.434479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227795, 40.577457, 25.814486>,  <44.331112, 40.451862, 26.511564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227795, 40.577457, 25.814486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.891956, 40.764751, 25.924641>,  <43.690453, 40.877129, 25.990734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.891956, 40.764751, 25.924641>,  <44.227795, 40.577457, 25.814486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891956, 40.764751, 25.924641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127921, 0.663129, -0.737494,
		-0.527938, -0.583967, -0.616656,
		-0.839594, 0.468234, 0.275389,
		43.640079, 40.905220, 26.007257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834538, 40.720341, 25.242800>,  <44.227795, 40.577457, 25.814486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834538, 40.720341, 25.242800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.681820, 40.970600, 25.514915>,  <43.590191, 41.120758, 25.678185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.681820, 40.970600, 25.514915>,  <43.834538, 40.720341, 25.242800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681820, 40.970600, 25.514915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005382, 0.734531, -0.678554,
		-0.924232, -0.262729, -0.277072,
		-0.381793, 0.625650, 0.680291,
		43.567284, 41.158295, 25.719004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264713, 41.134171, 24.920168>,  <43.834538, 40.720341, 25.242800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264713, 41.134171, 24.920168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.360485, 41.393520, 25.209246>,  <43.417946, 41.549129, 25.382692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.360485, 41.393520, 25.209246>,  <43.264713, 41.134171, 24.920168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360485, 41.393520, 25.209246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105844, 0.722475, -0.683247,
		-0.965128, 0.240079, 0.104352,
		0.239425, 0.648376, 0.722692,
		43.432312, 41.588032, 25.426054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930473, 41.743713, 24.783667>,  <43.264713, 41.134171, 24.920168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930473, 41.743713, 24.783667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.231804, 41.840759, 25.028168>,  <43.412601, 41.898987, 25.174870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.231804, 41.840759, 25.028168>,  <42.930473, 41.743713, 24.783667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231804, 41.840759, 25.028168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271042, 0.732311, -0.624705,
		-0.599190, 0.636285, 0.485915,
		0.753331, 0.242613, 0.611254,
		43.457802, 41.913544, 25.211544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967255, 42.494915, 25.183897>,  <42.930473, 41.743713, 24.783667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967255, 42.494915, 25.183897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.336647, 42.357098, 25.116411>,  <43.558285, 42.274406, 25.075920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.336647, 42.357098, 25.116411>,  <42.967255, 42.494915, 25.183897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336647, 42.357098, 25.116411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229948, 0.849154, -0.475458,
		0.307082, 0.400283, 0.863409,
		0.923485, -0.344544, -0.168716,
		43.613693, 42.253735, 25.065796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682682, 43.219265, 24.997503>,  <42.967255, 42.494915, 25.183897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682682, 43.219265, 24.997503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.519829, 42.936241, 25.228535>,  <42.422115, 42.766426, 25.367153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.519829, 42.936241, 25.228535>,  <42.682682, 43.219265, 24.997503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519829, 42.936241, 25.228535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524566, -0.336533, -0.782034,
		0.747713, -0.621368, -0.234151,
		-0.407131, -0.707564, 0.577578,
		42.397690, 42.723972, 25.401808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110027, 42.904087, 24.525351>,  <42.682682, 43.219265, 24.997503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110027, 42.904087, 24.525351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.725418, 42.983067, 24.448946>,  <41.494652, 43.030453, 24.403103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.725418, 42.983067, 24.448946>,  <42.110027, 42.904087, 24.525351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725418, 42.983067, 24.448946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271508, -0.788975, 0.551183,
		-0.041874, 0.581837, 0.812227,
		-0.961525, 0.197446, -0.191011,
		41.436962, 43.042301, 24.391642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822395, 42.892136, 25.142784>,  <42.110027, 42.904087, 24.525351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822395, 42.892136, 25.142784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.528313, 42.813854, 24.883194>,  <41.351864, 42.766884, 24.727440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.528313, 42.813854, 24.883194>,  <41.822395, 42.892136, 25.142784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528313, 42.813854, 24.883194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276819, -0.787255, 0.551000,
		-0.618742, 0.584749, 0.524621,
		-0.735207, -0.195702, -0.648977,
		41.307751, 42.755142, 24.688501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195652, 43.057919, 25.453245>,  <41.822395, 42.892136, 25.142784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195652, 43.057919, 25.453245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102478, 42.777969, 25.183157>,  <41.046574, 42.610001, 25.021105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.102478, 42.777969, 25.183157>,  <41.195652, 43.057919, 25.453245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102478, 42.777969, 25.183157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222753, -0.637462, 0.737579,
		-0.946637, 0.322216, -0.007411,
		-0.232936, -0.699870, -0.675220,
		41.032597, 42.568008, 24.980591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655075, 42.752716, 25.773642>,  <41.195652, 43.057919, 25.453245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655075, 42.752716, 25.773642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.744747, 42.484932, 25.490356>,  <40.798550, 42.324261, 25.320385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.744747, 42.484932, 25.490356>,  <40.655075, 42.752716, 25.773642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744747, 42.484932, 25.490356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288978, -0.739693, 0.607739,
		-0.930717, 0.068413, -0.359285,
		0.224183, -0.669458, -0.708214,
		40.812004, 42.284096, 25.277893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098984, 42.325897, 25.817837>,  <40.655075, 42.752716, 25.773642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098984, 42.325897, 25.817837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.410900, 42.138149, 25.652130>,  <40.598049, 42.025501, 25.552706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.410900, 42.138149, 25.652130>,  <40.098984, 42.325897, 25.817837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410900, 42.138149, 25.652130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181294, -0.802680, 0.568188,
		-0.599215, -0.367964, -0.711017,
		0.779791, -0.469369, -0.414268,
		40.644836, 41.997337, 25.527849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832462, 41.691078, 25.788809>,  <40.098984, 42.325897, 25.817837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832462, 41.691078, 25.788809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.226307, 41.650204, 25.732092>,  <40.462612, 41.625679, 25.698063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.226307, 41.650204, 25.732092>,  <39.832462, 41.691078, 25.788809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226307, 41.650204, 25.732092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040693, -0.923007, 0.382626,
		-0.169974, -0.370967, -0.912958,
		0.984608, -0.102188, -0.141791,
		40.521690, 41.619549, 25.689554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790684, 41.061031, 25.426020>,  <39.832462, 41.691078, 25.788809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790684, 41.061031, 25.426020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.153648, 41.119755, 25.583523>,  <40.371429, 41.154987, 25.678024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.153648, 41.119755, 25.583523>,  <39.790684, 41.061031, 25.426020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153648, 41.119755, 25.583523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159695, -0.746234, 0.646245,
		0.388710, -0.649294, -0.653699,
		0.907415, 0.146809, 0.393757,
		40.425873, 41.163799, 25.701651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056492, 40.432125, 25.563805>,  <39.790684, 41.061031, 25.426020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056492, 40.432125, 25.563805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.279156, 40.665405, 25.800451>,  <40.412754, 40.805374, 25.942438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.279156, 40.665405, 25.800451>,  <40.056492, 40.432125, 25.563805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279156, 40.665405, 25.800451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106464, -0.656200, 0.747039,
		0.823888, -0.478835, -0.303192,
		0.556663, 0.583197, 0.591614,
		40.446156, 40.840363, 25.977936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646851, 40.055164, 25.853529>,  <40.056492, 40.432125, 25.563805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646851, 40.055164, 25.853529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617504, 40.358425, 26.112703>,  <40.599895, 40.540382, 26.268208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617504, 40.358425, 26.112703>,  <40.646851, 40.055164, 25.853529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617504, 40.358425, 26.112703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151881, -0.633614, 0.758595,
		0.985672, 0.154067, -0.068661,
		-0.073369, 0.758154, 0.647935,
		40.595493, 40.585873, 26.307083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198639, 39.934433, 26.357857>,  <40.646851, 40.055164, 25.853529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198639, 39.934433, 26.357857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930031, 40.169525, 26.538363>,  <40.768867, 40.310581, 26.646666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930031, 40.169525, 26.538363>,  <41.198639, 39.934433, 26.357857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930031, 40.169525, 26.538363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030491, -0.630403, 0.775669,
		0.740361, 0.507116, 0.441247,
		-0.671518, 0.587728, 0.451263,
		40.728577, 40.345844, 26.673742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364845, 40.131321, 27.107092>,  <41.198639, 39.934433, 26.357857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364845, 40.131321, 27.107092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.968369, 40.179153, 27.084349>,  <40.730480, 40.207855, 27.070702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.968369, 40.179153, 27.084349>,  <41.364845, 40.131321, 27.107092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968369, 40.179153, 27.084349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119926, -0.628694, 0.768350,
		0.056136, 0.768403, 0.637499,
		-0.991195, 0.119585, -0.056859,
		40.671009, 40.215031, 27.067291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080364, 40.217426, 27.787739>,  <41.364845, 40.131321, 27.107092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080364, 40.217426, 27.787739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769936, 40.113094, 27.558069>,  <40.583679, 40.050495, 27.420267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769936, 40.113094, 27.558069>,  <41.080364, 40.217426, 27.787739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769936, 40.113094, 27.558069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359178, -0.565552, 0.742389,
		-0.518363, 0.782380, 0.345226,
		-0.776074, -0.260830, -0.574175,
		40.537113, 40.034847, 27.385817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501808, 40.244904, 28.332975>,  <41.080364, 40.217426, 27.787739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501808, 40.244904, 28.332975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376976, 40.034351, 28.016615>,  <40.302078, 39.908020, 27.826797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376976, 40.034351, 28.016615>,  <40.501808, 40.244904, 28.332975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376976, 40.034351, 28.016615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542282, -0.584851, 0.603224,
		-0.780088, 0.617145, -0.102929,
		-0.312078, -0.526385, -0.790902,
		40.283352, 39.876434, 27.779345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844326, 40.145615, 28.449869>,  <40.501808, 40.244904, 28.332975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844326, 40.145615, 28.449869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972710, 39.861423, 28.199364>,  <40.049740, 39.690910, 28.049061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972710, 39.861423, 28.199364>,  <39.844326, 40.145615, 28.449869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972710, 39.861423, 28.199364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381897, -0.702198, 0.600894,
		-0.866682, 0.046304, -0.496707,
		0.320962, -0.710475, -0.626266,
		40.069000, 39.648281, 28.011484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280418, 39.613827, 28.355442>,  <39.844326, 40.145615, 28.449869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280418, 39.613827, 28.355442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604538, 39.417328, 28.227636>,  <39.799011, 39.299427, 28.150953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604538, 39.417328, 28.227636>,  <39.280418, 39.613827, 28.355442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604538, 39.417328, 28.227636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388150, -0.858397, 0.335401,
		-0.439032, -0.147758, -0.886238,
		0.810302, -0.491246, -0.319512,
		39.847630, 39.269955, 28.131783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947136, 39.053295, 28.191059>,  <39.280418, 39.613827, 28.355442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947136, 39.053295, 28.191059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.328621, 38.933887, 28.176544>,  <39.557510, 38.862244, 28.167835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.328621, 38.933887, 28.176544>,  <38.947136, 39.053295, 28.191059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328621, 38.933887, 28.176544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251403, -0.857707, 0.448480,
		-0.165005, -0.418599, -0.893056,
		0.953714, -0.298518, -0.036289,
		39.614735, 38.844334, 28.165657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931885, 38.391361, 27.920631>,  <38.947136, 39.053295, 28.191059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931885, 38.391361, 27.920631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275772, 38.408543, 28.124214>,  <39.482105, 38.418850, 28.246363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275772, 38.408543, 28.124214>,  <38.931885, 38.391361, 27.920631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275772, 38.408543, 28.124214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311160, -0.746158, 0.588581,
		0.405043, -0.664382, -0.628122,
		0.859721, 0.042954, 0.508955,
		39.533688, 38.421429, 28.276901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274498, 37.634777, 28.057373>,  <38.931885, 38.391361, 27.920631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274498, 37.634777, 28.057373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.448185, 37.856857, 28.341124>,  <39.552399, 37.990105, 28.511374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.448185, 37.856857, 28.341124>,  <39.274498, 37.634777, 28.057373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448185, 37.856857, 28.341124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059474, -0.768099, 0.637563,
		0.898843, -0.319030, -0.300502,
		0.434217, 0.555197, 0.709375,
		39.578449, 38.023415, 28.553936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774651, 37.188507, 28.396790>,  <39.274498, 37.634777, 28.057373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774651, 37.188507, 28.396790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707470, 37.484558, 28.657253>,  <39.667164, 37.662189, 28.813532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707470, 37.484558, 28.657253>,  <39.774651, 37.188507, 28.396790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707470, 37.484558, 28.657253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106580, -0.670303, 0.734394,
		0.980018, 0.053940, 0.191458,
		-0.167948, 0.740125, 0.651159,
		39.657085, 37.706596, 28.852602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190258, 37.046364, 28.948092>,  <39.774651, 37.188507, 28.396790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190258, 37.046364, 28.948092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896065, 37.289253, 29.068323>,  <39.719551, 37.434986, 29.140463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896065, 37.289253, 29.068323>,  <40.190258, 37.046364, 28.948092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896065, 37.289253, 29.068323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052301, -0.493188, 0.868349,
		0.675523, 0.622934, 0.394489,
		-0.735481, 0.607222, 0.300580,
		39.675419, 37.471420, 29.158497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.042007, 33.919899, 32.928368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876080, 34.263832, 33.047432>,  <41.776520, 34.470192, 33.118870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876080, 34.263832, 33.047432>,  <42.042007, 33.919899, 32.928368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876080, 34.263832, 33.047432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001875, -0.326329, 0.945255,
		0.909900, 0.392673, 0.133757,
		-0.414825, 0.859836, 0.297662,
		41.751633, 34.521782, 33.136730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371586, 34.070160, 33.614876>,  <42.042007, 33.919899, 32.928368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371586, 34.070160, 33.614876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019161, 34.259285, 33.609390>,  <41.807709, 34.372761, 33.606098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019161, 34.259285, 33.609390>,  <42.371586, 34.070160, 33.614876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019161, 34.259285, 33.609390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171130, -0.291599, 0.941108,
		0.440967, 0.831517, 0.337827,
		-0.881058, 0.472810, -0.013712,
		41.754845, 34.401127, 33.605278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276070, 34.457127, 34.273529>,  <42.371586, 34.070160, 33.614876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276070, 34.457127, 34.273529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915119, 34.379787, 34.119473>,  <41.698551, 34.333382, 34.027039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915119, 34.379787, 34.119473>,  <42.276070, 34.457127, 34.273529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915119, 34.379787, 34.119473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265520, -0.454485, 0.850260,
		-0.339442, 0.869516, 0.358777,
		-0.902374, -0.193352, -0.385145,
		41.644405, 34.321781, 34.003929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825565, 34.678886, 34.771393>,  <42.276070, 34.457127, 34.273529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825565, 34.678886, 34.771393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.573658, 34.446541, 34.565098>,  <41.422512, 34.307133, 34.441322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.573658, 34.446541, 34.565098>,  <41.825565, 34.678886, 34.771393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573658, 34.446541, 34.565098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405549, -0.320398, 0.856081,
		-0.662510, 0.748291, -0.033793,
		-0.629770, -0.580867, -0.515736,
		41.384727, 34.272282, 34.410378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115318, 34.807678, 35.004532>,  <41.825565, 34.678886, 34.771393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115318, 34.807678, 35.004532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111118, 34.438648, 34.850258>,  <41.108597, 34.217232, 34.757694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111118, 34.438648, 34.850258>,  <41.115318, 34.807678, 35.004532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111118, 34.438648, 34.850258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283676, -0.367110, 0.885866,
		-0.958863, 0.118713, -0.257856,
		-0.010502, -0.922571, -0.385684,
		41.107967, 34.161877, 34.734554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583153, 34.452824, 35.358643>,  <41.115318, 34.807678, 35.004532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583153, 34.452824, 35.358643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.806301, 34.161633, 35.199234>,  <40.940189, 33.986916, 35.103588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.806301, 34.161633, 35.199234>,  <40.583153, 34.452824, 35.358643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806301, 34.161633, 35.199234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072403, -0.521049, 0.850450,
		-0.826762, -0.445589, -0.343388,
		0.557873, -0.727982, -0.398522,
		40.973663, 33.943237, 35.079678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216045, 33.846016, 35.417374>,  <40.583153, 34.452824, 35.358643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216045, 33.846016, 35.417374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596546, 33.731770, 35.370819>,  <40.824848, 33.663223, 35.342888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596546, 33.731770, 35.370819>,  <40.216045, 33.846016, 35.417374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596546, 33.731770, 35.370819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085408, -0.606551, 0.790444,
		-0.296355, -0.741971, -0.601376,
		0.951251, -0.285614, -0.116384,
		40.881920, 33.646084, 35.335903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166107, 33.166660, 35.574558>,  <40.216045, 33.846016, 35.417374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166107, 33.166660, 35.574558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.553558, 33.262463, 35.601082>,  <40.786030, 33.319942, 35.616997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.553558, 33.262463, 35.601082>,  <40.166107, 33.166660, 35.574558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553558, 33.262463, 35.601082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070656, -0.521206, 0.850501,
		0.238257, -0.819134, -0.521778,
		0.968629, 0.239505, 0.066304,
		40.844147, 33.334312, 35.620972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443516, 32.547527, 35.696045>,  <40.166107, 33.166660, 35.574558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443516, 32.547527, 35.696045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.700649, 32.830845, 35.812725>,  <40.854927, 33.000835, 35.882732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.700649, 32.830845, 35.812725>,  <40.443516, 32.547527, 35.696045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700649, 32.830845, 35.812725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123678, -0.471777, 0.873001,
		0.755958, -0.525115, -0.390873,
		0.642831, 0.708294, 0.291698,
		40.893497, 33.043335, 35.900234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082661, 32.172184, 35.861748>,  <40.443516, 32.547527, 35.696045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082661, 32.172184, 35.861748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.087265, 32.520962, 36.057537>,  <41.090027, 32.730228, 36.175011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.087265, 32.520962, 36.057537>,  <41.082661, 32.172184, 35.861748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087265, 32.520962, 36.057537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120623, -0.487144, 0.864951,
		0.992632, 0.049086, -0.110784,
		0.011511, 0.871941, 0.489476,
		41.090717, 32.782543, 36.204380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355377, 32.041458, 36.479919>,  <41.082661, 32.172184, 35.861748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355377, 32.041458, 36.479919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222244, 32.410099, 36.559792>,  <41.142365, 32.631283, 36.607716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222244, 32.410099, 36.559792>,  <41.355377, 32.041458, 36.479919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222244, 32.410099, 36.559792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069605, -0.235184, 0.969455,
		0.940414, 0.308767, 0.142425,
		-0.332831, 0.921603, 0.199679,
		41.122395, 32.686581, 36.619694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749344, 32.248859, 37.068893>,  <41.355377, 32.041458, 36.479919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749344, 32.248859, 37.068893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.414318, 32.467396, 37.068905>,  <41.213303, 32.598518, 37.068913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.414318, 32.467396, 37.068905>,  <41.749344, 32.248859, 37.068893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414318, 32.467396, 37.068905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016880, -0.025935, 0.999521,
		0.546084, 0.837159, 0.030944,
		-0.837560, 0.546345, 0.000032,
		41.163052, 32.631298, 37.068913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782005, 32.880653, 37.540462>,  <41.749344, 32.248859, 37.068893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782005, 32.880653, 37.540462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.392513, 32.796936, 37.504593>,  <41.158817, 32.746704, 37.483070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.392513, 32.796936, 37.504593>,  <41.782005, 32.880653, 37.540462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392513, 32.796936, 37.504593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124429, 0.159297, 0.979358,
		-0.190693, 0.964790, -0.181155,
		-0.973732, -0.209298, -0.089671,
		41.100395, 32.734146, 37.477692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530434, 33.288807, 38.070683>,  <41.782005, 32.880653, 37.540462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530434, 33.288807, 38.070683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250004, 33.006561, 38.029495>,  <41.081745, 32.837215, 38.004784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250004, 33.006561, 38.029495>,  <41.530434, 33.288807, 38.070683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250004, 33.006561, 38.029495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313928, 0.175750, 0.933038,
		-0.640269, 0.686454, -0.344726,
		-0.701074, -0.705615, -0.102970,
		41.039680, 32.794876, 37.998604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104431, 33.315067, 38.503414>,  <41.530434, 33.288807, 38.070683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104431, 33.315067, 38.503414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135876, 33.494286, 38.859634>,  <41.154743, 33.601814, 39.073368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135876, 33.494286, 38.859634>,  <41.104431, 33.315067, 38.503414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135876, 33.494286, 38.859634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141586, 0.879241, -0.454850,
		-0.986800, 0.161845, 0.005681,
		0.078610, 0.448042, 0.890550,
		41.159458, 33.628696, 39.126801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678989, 33.821827, 38.471275>,  <41.104431, 33.315067, 38.503414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678989, 33.821827, 38.471275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945705, 33.913128, 38.755047>,  <41.105736, 33.967907, 38.925308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945705, 33.913128, 38.755047>,  <40.678989, 33.821827, 38.471275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945705, 33.913128, 38.755047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075714, 0.926268, -0.369182,
		-0.741387, 0.299881, 0.600347,
		0.666793, 0.228252, 0.709428,
		41.145744, 33.981602, 38.967876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530380, 34.524952, 38.572788>,  <40.678989, 33.821827, 38.471275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530380, 34.524952, 38.572788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884499, 34.468895, 38.750149>,  <41.096970, 34.435261, 38.856567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884499, 34.468895, 38.750149>,  <40.530380, 34.524952, 38.572788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884499, 34.468895, 38.750149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356718, 0.816374, -0.454187,
		-0.298332, 0.560261, 0.772726,
		0.885297, -0.140147, 0.443406,
		41.150089, 34.426849, 38.883171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716187, 35.154217, 38.905403>,  <40.530380, 34.524952, 38.572788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716187, 35.154217, 38.905403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049877, 34.950741, 38.820267>,  <41.250092, 34.828655, 38.769184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049877, 34.950741, 38.820267>,  <40.716187, 35.154217, 38.905403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049877, 34.950741, 38.820267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352025, 0.788385, -0.504506,
		0.424436, 0.345948, 0.836764,
		0.834225, -0.508693, -0.212837,
		41.300144, 34.798134, 38.756416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231747, 35.633923, 38.803173>,  <40.716187, 35.154217, 38.905403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231747, 35.633923, 38.803173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.420807, 35.310596, 38.662762>,  <41.534245, 35.116600, 38.578514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.420807, 35.310596, 38.662762>,  <41.231747, 35.633923, 38.803173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420807, 35.310596, 38.662762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596017, 0.586622, -0.548304,
		0.649125, 0.049939, 0.759040,
		0.472652, -0.808320, -0.351027,
		41.562603, 35.068100, 38.557453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988468, 35.697319, 38.819851>,  <41.231747, 35.633923, 38.803173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988468, 35.697319, 38.819851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.916931, 35.445492, 38.517418>,  <41.874008, 35.294395, 38.335957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.916931, 35.445492, 38.517418>,  <41.988468, 35.697319, 38.819851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916931, 35.445492, 38.517418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511521, 0.596953, -0.618056,
		0.840454, -0.497284, 0.215279,
		-0.178838, -0.629568, -0.756083,
		41.863281, 35.256622, 38.290592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459820, 35.882656, 38.442310>,  <41.988468, 35.697319, 38.819851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459820, 35.882656, 38.442310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248703, 35.644585, 38.199921>,  <42.122032, 35.501743, 38.054485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248703, 35.644585, 38.199921>,  <42.459820, 35.882656, 38.442310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248703, 35.644585, 38.199921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368104, 0.482676, -0.794685,
		0.765465, -0.642488, -0.035665,
		-0.527790, -0.595175, -0.605974,
		42.090366, 35.466034, 38.018127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902630, 35.659443, 37.904716>,  <42.459820, 35.882656, 38.442310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902630, 35.659443, 37.904716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527256, 35.608501, 37.776260>,  <42.302032, 35.577938, 37.699188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527256, 35.608501, 37.776260>,  <42.902630, 35.659443, 37.904716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527256, 35.608501, 37.776260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251188, 0.386668, -0.887351,
		0.237177, -0.913384, -0.330872,
		-0.938430, -0.127348, -0.321140,
		42.245728, 35.570297, 37.679920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013424, 35.394756, 37.215275>,  <42.902630, 35.659443, 37.904716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013424, 35.394756, 37.215275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639393, 35.536507, 37.217728>,  <42.414974, 35.621559, 37.219200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639393, 35.536507, 37.217728>,  <43.013424, 35.394756, 37.215275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639393, 35.536507, 37.217728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209645, 0.566963, -0.796619,
		-0.285782, -0.743619, -0.604450,
		-0.935082, 0.354379, 0.006132,
		42.358868, 35.642822, 37.219566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764042, 35.297073, 36.504490>,  <43.013424, 35.394756, 37.215275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764042, 35.297073, 36.504490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495296, 35.560394, 36.640278>,  <42.334049, 35.718388, 36.721752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495296, 35.560394, 36.640278>,  <42.764042, 35.297073, 36.504490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495296, 35.560394, 36.640278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015941, 0.445366, -0.895207,
		-0.740505, -0.606867, -0.288731,
		-0.671862, 0.658302, 0.339469,
		42.293739, 35.757885, 36.742119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314911, 35.506905, 35.908791>,  <42.764042, 35.297073, 36.504490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314911, 35.506905, 35.908791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270321, 35.792892, 36.184875>,  <42.243565, 35.964485, 36.350525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270321, 35.792892, 36.184875>,  <42.314911, 35.506905, 35.908791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270321, 35.792892, 36.184875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126868, 0.699098, -0.703681,
		-0.985635, 0.009121, -0.168641,
		-0.111478, 0.714967, 0.690213,
		42.236877, 36.007381, 36.391941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862984, 35.980927, 35.680450>,  <42.314911, 35.506905, 35.908791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862984, 35.980927, 35.680450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.042530, 36.177898, 35.978722>,  <42.150257, 36.296082, 36.157684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.042530, 36.177898, 35.978722>,  <41.862984, 35.980927, 35.680450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042530, 36.177898, 35.978722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156060, 0.778443, -0.608006,
		-0.879865, 0.389285, 0.272571,
		0.448869, 0.492425, 0.745677,
		42.177189, 36.325626, 36.202423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585373, 36.669117, 35.670666>,  <41.862984, 35.980927, 35.680450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585373, 36.669117, 35.670666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.945065, 36.684006, 35.845024>,  <42.160881, 36.692940, 35.949638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.945065, 36.684006, 35.845024>,  <41.585373, 36.669117, 35.670666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945065, 36.684006, 35.845024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298151, 0.677009, -0.672878,
		-0.320147, 0.735033, 0.597689,
		0.899228, 0.037218, 0.435893,
		42.214832, 36.695171, 35.975792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697144, 37.330643, 35.844765>,  <41.585373, 36.669117, 35.670666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697144, 37.330643, 35.844765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068966, 37.186985, 35.811451>,  <42.292061, 37.100788, 35.791462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.068966, 37.186985, 35.811451>,  <41.697144, 37.330643, 35.844765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068966, 37.186985, 35.811451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228788, 0.739083, -0.633571,
		0.289100, 0.569886, 0.769189,
		0.929558, -0.359147, -0.083285,
		42.347832, 37.079243, 35.786465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580219, 37.737755, 36.410580>,  <41.697144, 37.330643, 35.844765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580219, 37.737755, 36.410580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262535, 37.980400, 36.424667>,  <41.071922, 38.125988, 36.433121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262535, 37.980400, 36.424667>,  <41.580219, 37.737755, 36.410580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262535, 37.980400, 36.424667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556477, -0.749401, 0.358792,
		0.244043, 0.265358, 0.932753,
		-0.794215, 0.606616, 0.035220,
		41.024269, 38.162384, 36.435234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349842, 37.662308, 37.139729>,  <41.580219, 37.737755, 36.410580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349842, 37.662308, 37.139729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.032104, 37.794552, 36.935883>,  <40.841461, 37.873898, 36.813576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.032104, 37.794552, 36.935883>,  <41.349842, 37.662308, 37.139729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032104, 37.794552, 36.935883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555492, -0.734856, 0.389121,
		-0.245848, 0.592186, 0.767382,
		-0.794347, 0.330610, -0.509617,
		40.793800, 37.893734, 36.782997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848301, 37.588245, 37.632492>,  <41.349842, 37.662308, 37.139729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848301, 37.588245, 37.632492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649799, 37.615597, 37.286301>,  <40.530701, 37.632008, 37.078587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649799, 37.615597, 37.286301>,  <40.848301, 37.588245, 37.632492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649799, 37.615597, 37.286301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641602, -0.700475, 0.312542,
		-0.584879, 0.710394, 0.391480,
		-0.496250, 0.068375, -0.865483,
		40.500923, 37.636108, 37.026657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219975, 37.732327, 37.830360>,  <40.848301, 37.588245, 37.632492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219975, 37.732327, 37.830360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.174194, 37.609455, 37.452461>,  <40.146725, 37.535732, 37.225723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.174194, 37.609455, 37.452461>,  <40.219975, 37.732327, 37.830360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174194, 37.609455, 37.452461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743628, -0.604095, 0.286509,
		-0.658725, 0.735329, -0.159288,
		-0.114454, -0.307182, -0.944743,
		40.139858, 37.517300, 37.169037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685459, 37.969166, 37.518776>,  <40.219975, 37.732327, 37.830360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685459, 37.969166, 37.518776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759911, 37.614662, 37.349113>,  <39.804581, 37.401962, 37.247318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759911, 37.614662, 37.349113>,  <39.685459, 37.969166, 37.518776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759911, 37.614662, 37.349113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853198, -0.359878, 0.377547,
		-0.487247, 0.291614, -0.823135,
		0.186130, -0.886256, -0.424154,
		39.815750, 37.348785, 37.221867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038315, 37.763493, 37.306698>,  <39.685459, 37.969166, 37.518776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038315, 37.763493, 37.306698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.252483, 37.426811, 37.278790>,  <39.380985, 37.224804, 37.262047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.252483, 37.426811, 37.278790>,  <39.038315, 37.763493, 37.306698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252483, 37.426811, 37.278790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797015, -0.530868, 0.288003,
		-0.279449, -0.098597, -0.955085,
		0.535420, -0.841699, -0.069767,
		39.413109, 37.174301, 37.257858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501232, 37.186867, 37.256805>,  <39.038315, 37.763493, 37.306698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501232, 37.186867, 37.256805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.840698, 36.994267, 37.344372>,  <39.044376, 36.878708, 37.396912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.840698, 36.994267, 37.344372>,  <38.501232, 37.186867, 37.256805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840698, 36.994267, 37.344372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527333, -0.738110, 0.420848,
		-0.041054, -0.472601, -0.880320,
		0.848666, -0.481499, 0.218916,
		39.095299, 36.849815, 37.410046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375526, 36.585426, 36.935368>,  <38.501232, 37.186867, 37.256805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375526, 36.585426, 36.935368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655338, 36.562126, 37.220257>,  <38.823227, 36.548145, 37.391190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655338, 36.562126, 37.220257>,  <38.375526, 36.585426, 36.935368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655338, 36.562126, 37.220257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494873, -0.758490, 0.424020,
		0.515513, -0.649075, -0.559417,
		0.699533, -0.058253, 0.712221,
		38.865200, 36.544651, 37.433922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534897, 35.846935, 36.984058>,  <38.375526, 36.585426, 36.935368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534897, 35.846935, 36.984058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.634949, 36.030029, 37.325333>,  <38.694981, 36.139885, 37.530098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.634949, 36.030029, 37.325333>,  <38.534897, 35.846935, 36.984058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634949, 36.030029, 37.325333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479786, -0.706795, 0.519853,
		0.840978, -0.539373, 0.042826,
		0.250125, 0.457732, 0.853181,
		38.709988, 36.167351, 37.581287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475697, 35.255886, 37.430626>,  <38.534897, 35.846935, 36.984058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475697, 35.255886, 37.430626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533627, 35.543785, 37.702213>,  <38.568382, 35.716522, 37.865166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.533627, 35.543785, 37.702213>,  <38.475697, 35.255886, 37.430626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533627, 35.543785, 37.702213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426812, -0.573635, 0.699124,
		0.892669, -0.391039, 0.224121,
		0.144822, 0.719744, 0.678966,
		38.577072, 35.759708, 37.905903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853062, 35.035480, 38.032421>,  <38.475697, 35.255886, 37.430626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853062, 35.035480, 38.032421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.625668, 35.340271, 38.156494>,  <38.489231, 35.523148, 38.230938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.625668, 35.340271, 38.156494>,  <38.853062, 35.035480, 38.032421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625668, 35.340271, 38.156494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485416, -0.615078, 0.621329,
		0.664223, 0.202653, 0.719541,
		-0.568488, 0.761978, 0.310178,
		38.455120, 35.568863, 38.249546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709202, 34.996296, 38.825821>,  <38.853062, 35.035480, 38.032421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709202, 34.996296, 38.825821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423035, 35.228226, 38.669880>,  <38.251335, 35.367382, 38.576317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423035, 35.228226, 38.669880>,  <38.709202, 34.996296, 38.825821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423035, 35.228226, 38.669880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674735, -0.428481, 0.600947,
		0.181399, 0.692974, 0.697769,
		-0.715421, 0.579820, -0.389848,
		38.208408, 35.402172, 38.552925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.599339, 41.086555, 34.438957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225594, 41.036022, 34.305683>,  <42.001347, 41.005703, 34.225719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225594, 41.036022, 34.305683>,  <42.599339, 41.086555, 34.438957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225594, 41.036022, 34.305683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263106, -0.385987, 0.884189,
		-0.240310, 0.913813, 0.327410,
		-0.934359, -0.126336, -0.333186,
		41.945286, 40.998123, 34.205727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176090, 41.149311, 35.081150>,  <42.599339, 41.086555, 34.438957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176090, 41.149311, 35.081150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910240, 40.993645, 34.826019>,  <41.750729, 40.900246, 34.672939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910240, 40.993645, 34.826019>,  <42.176090, 41.149311, 35.081150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910240, 40.993645, 34.826019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522391, -0.368314, 0.769059,
		-0.534210, 0.844333, 0.041497,
		-0.664626, -0.389161, -0.637829,
		41.710854, 40.876896, 34.634670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533371, 41.393181, 35.288147>,  <42.176090, 41.149311, 35.081150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533371, 41.393181, 35.288147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482395, 41.049755, 35.089500>,  <41.451809, 40.843700, 34.970310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482395, 41.049755, 35.089500>,  <41.533371, 41.393181, 35.288147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482395, 41.049755, 35.089500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391628, -0.416462, 0.820479,
		-0.911256, 0.299050, -0.283165,
		-0.127437, -0.858562, -0.496620,
		41.444164, 40.792187, 34.940514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828636, 40.975506, 35.428234>,  <41.533371, 41.393181, 35.288147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828636, 40.975506, 35.428234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043118, 40.671391, 35.281567>,  <41.171806, 40.488922, 35.193565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043118, 40.671391, 35.281567>,  <40.828636, 40.975506, 35.428234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043118, 40.671391, 35.281567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380664, -0.605520, 0.698886,
		-0.753381, -0.235167, -0.614096,
		0.536202, -0.760291, -0.366668,
		41.203979, 40.443302, 35.171566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379574, 40.374313, 35.423103>,  <40.828636, 40.975506, 35.428234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379574, 40.374313, 35.423103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735783, 40.194233, 35.396893>,  <40.949509, 40.086185, 35.381165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735783, 40.194233, 35.396893>,  <40.379574, 40.374313, 35.423103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735783, 40.194233, 35.396893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306161, -0.699583, 0.645639,
		-0.336505, -0.554894, -0.760826,
		0.890522, -0.450196, -0.065526,
		41.002937, 40.059174, 35.377235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294121, 39.679165, 35.206421>,  <40.379574, 40.374313, 35.423103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294121, 39.679165, 35.206421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629578, 39.681068, 35.424286>,  <40.830853, 39.682209, 35.555004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629578, 39.681068, 35.424286>,  <40.294121, 39.679165, 35.206421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629578, 39.681068, 35.424286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275664, -0.858739, 0.431946,
		0.469780, -0.512391, -0.718862,
		0.838640, 0.004755, 0.544666,
		40.881168, 39.682495, 35.587685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689289, 39.063313, 35.064140>,  <40.294121, 39.679165, 35.206421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689289, 39.063313, 35.064140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897499, 39.163967, 35.390511>,  <41.022427, 39.224358, 35.586334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897499, 39.163967, 35.390511>,  <40.689289, 39.063313, 35.064140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897499, 39.163967, 35.390511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240259, -0.873813, 0.422760,
		0.819347, -0.416090, -0.394384,
		0.520525, 0.251633, 0.815926,
		41.053658, 39.239456, 35.635288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945145, 38.446735, 35.133858>,  <40.689289, 39.063313, 35.064140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945145, 38.446735, 35.133858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994965, 38.619583, 35.491127>,  <41.024857, 38.723289, 35.705490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994965, 38.619583, 35.491127>,  <40.945145, 38.446735, 35.133858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994965, 38.619583, 35.491127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297598, -0.842471, 0.449086,
		0.946531, -0.321742, 0.023665,
		0.124553, 0.432117, 0.893175,
		41.032330, 38.749218, 35.759079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437344, 38.000000, 35.649628>,  <40.945145, 38.446735, 35.133858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437344, 38.000000, 35.649628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247337, 38.249977, 35.897434>,  <41.133335, 38.399963, 36.046120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247337, 38.249977, 35.897434>,  <41.437344, 38.000000, 35.649628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247337, 38.249977, 35.897434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365543, -0.780534, 0.507095,
		0.800464, 0.014414, 0.599207,
		-0.475011, 0.624947, 0.619521,
		41.104836, 38.437462, 36.083290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135750, 37.908340, 35.900341>,  <41.437344, 38.000000, 35.649628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135750, 37.908340, 35.900341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396385, 37.651367, 35.738991>,  <42.552765, 37.497181, 35.642181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396385, 37.651367, 35.738991>,  <42.135750, 37.908340, 35.900341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396385, 37.651367, 35.738991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333851, 0.720347, -0.607983,
		0.681162, 0.261485, 0.683845,
		0.651584, -0.642438, -0.403376,
		42.591862, 37.458637, 35.617977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639465, 38.227135, 35.757793>,  <42.135750, 37.908340, 35.900341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639465, 38.227135, 35.757793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780788, 37.907188, 35.563728>,  <42.865582, 37.715221, 35.447289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780788, 37.907188, 35.563728>,  <42.639465, 38.227135, 35.757793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780788, 37.907188, 35.563728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503957, 0.599665, -0.621635,
		0.788162, -0.024873, 0.614966,
		0.353311, -0.799865, -0.485167,
		42.886784, 37.667229, 35.418179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278568, 38.387325, 35.696236>,  <42.639465, 38.227135, 35.757793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278568, 38.387325, 35.696236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206215, 38.114124, 35.413170>,  <43.162804, 37.950203, 35.243328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206215, 38.114124, 35.413170>,  <43.278568, 38.387325, 35.696236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206215, 38.114124, 35.413170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558889, 0.520688, -0.645389,
		0.809274, -0.512247, 0.287538,
		-0.180881, -0.682999, -0.707669,
		43.151951, 37.909225, 35.200871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912365, 38.229389, 35.421318>,  <43.278568, 38.387325, 35.696236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912365, 38.229389, 35.421318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623528, 38.138962, 35.159790>,  <43.450226, 38.084705, 35.002872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623528, 38.138962, 35.159790>,  <43.912365, 38.229389, 35.421318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623528, 38.138962, 35.159790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513923, 0.457376, -0.725734,
		0.463101, -0.860060, -0.214090,
		-0.722095, -0.226062, -0.653816,
		43.406898, 38.071144, 34.963646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284084, 38.123550, 34.850395>,  <43.912365, 38.229389, 35.421318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284084, 38.123550, 34.850395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920017, 38.168488, 34.690907>,  <43.701576, 38.195450, 34.595215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920017, 38.168488, 34.690907>,  <44.284084, 38.123550, 34.850395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920017, 38.168488, 34.690907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406335, 0.429308, -0.806589,
		0.080558, -0.896143, -0.436391,
		-0.910166, 0.112343, -0.398718,
		43.646969, 38.202190, 34.571293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431168, 38.057011, 34.118328>,  <44.284084, 38.123550, 34.850395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431168, 38.057011, 34.118328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059250, 38.203793, 34.129807>,  <43.836098, 38.291862, 34.136692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059250, 38.203793, 34.129807>,  <44.431168, 38.057011, 34.118328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059250, 38.203793, 34.129807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228834, 0.637361, -0.735802,
		-0.288297, -0.677579, -0.676588,
		-0.929795, 0.366956, 0.028696,
		43.780312, 38.313881, 34.138416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107159, 38.110901, 33.433876>,  <44.431168, 38.057011, 34.118328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107159, 38.110901, 33.433876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906158, 38.380119, 33.650948>,  <43.785557, 38.541649, 33.781189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906158, 38.380119, 33.650948>,  <44.107159, 38.110901, 33.433876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906158, 38.380119, 33.650948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168553, 0.691901, -0.702042,
		-0.847989, -0.261305, -0.461124,
		-0.502499, 0.673048, 0.542680,
		43.755409, 38.582035, 33.813751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592361, 38.298534, 32.976353>,  <44.107159, 38.110901, 33.433876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592361, 38.298534, 32.976353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624943, 38.594353, 33.243614>,  <43.644493, 38.771843, 33.403973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624943, 38.594353, 33.243614>,  <43.592361, 38.298534, 32.976353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624943, 38.594353, 33.243614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036380, 0.672145, -0.739525,
		-0.996013, 0.035931, 0.081655,
		0.081456, 0.739547, 0.668158,
		43.649380, 38.816216, 33.444061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946751, 38.755196, 32.942631>,  <43.592361, 38.298534, 32.976353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946751, 38.755196, 32.942631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264881, 38.939152, 33.100597>,  <43.455761, 39.049526, 33.195377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264881, 38.939152, 33.100597>,  <42.946751, 38.755196, 32.942631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264881, 38.939152, 33.100597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047466, 0.602234, -0.796907,
		-0.604320, 0.652547, 0.457143,
		0.795326, 0.459888, 0.394916,
		43.503479, 39.077118, 33.219070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853664, 39.428566, 32.720131>,  <42.946751, 38.755196, 32.942631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853664, 39.428566, 32.720131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230289, 39.439941, 32.854389>,  <43.456264, 39.446766, 32.934944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230289, 39.439941, 32.854389>,  <42.853664, 39.428566, 32.720131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230289, 39.439941, 32.854389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251701, 0.602810, -0.757144,
		-0.223861, 0.797378, 0.560423,
		0.941559, 0.028436, 0.335647,
		43.512756, 39.448471, 32.955082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033512, 40.155628, 32.718708>,  <42.853664, 39.428566, 32.720131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033512, 40.155628, 32.718708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375435, 39.949219, 32.696712>,  <43.580589, 39.825375, 32.683517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375435, 39.949219, 32.696712>,  <43.033512, 40.155628, 32.718708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375435, 39.949219, 32.696712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248437, 0.499953, -0.829654,
		0.455608, 0.695536, 0.555564,
		0.854810, -0.516019, -0.054986,
		43.631878, 39.794415, 32.680218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536446, 40.659950, 32.569061>,  <43.033512, 40.155628, 32.718708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536446, 40.659950, 32.569061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742893, 40.335670, 32.458508>,  <43.866760, 40.141102, 32.392174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742893, 40.335670, 32.458508>,  <43.536446, 40.659950, 32.569061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742893, 40.335670, 32.458508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272213, 0.461207, -0.844505,
		0.812112, 0.360625, 0.458719,
		0.516115, -0.810702, -0.276385,
		43.897728, 40.092461, 32.375591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176285, 40.956619, 32.286472>,  <43.536446, 40.659950, 32.569061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176285, 40.956619, 32.286472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153122, 40.585110, 32.140034>,  <44.139225, 40.362206, 32.052170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153122, 40.585110, 32.140034>,  <44.176285, 40.956619, 32.286472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153122, 40.585110, 32.140034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553119, 0.275437, -0.786253,
		0.831087, -0.248028, 0.497772,
		-0.057908, -0.928771, -0.366101,
		44.135750, 40.306477, 32.030205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792400, 40.880848, 31.933886>,  <44.176285, 40.956619, 32.286472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792400, 40.880848, 31.933886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600491, 40.563236, 31.784580>,  <44.485344, 40.372669, 31.694998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600491, 40.563236, 31.784580>,  <44.792400, 40.880848, 31.933886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600491, 40.563236, 31.784580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604291, 0.009390, -0.796708,
		0.636117, -0.607804, 0.475321,
		-0.479779, -0.794032, -0.373264,
		44.456558, 40.325027, 31.672602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.210388, 40.217533, 29.129442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566448, 40.326725, 29.275383>,  <37.780083, 40.392242, 29.362947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566448, 40.326725, 29.275383>,  <37.210388, 40.217533, 29.129442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566448, 40.326725, 29.275383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000810, -0.799741, 0.600344,
		0.455672, -0.534690, -0.711666,
		0.890147, 0.272984, 0.364853,
		37.833492, 40.408619, 29.384838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628078, 39.617462, 29.147234>,  <37.210388, 40.217533, 29.129442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628078, 39.617462, 29.147234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790871, 39.857185, 29.422972>,  <37.888546, 40.001019, 29.588413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790871, 39.857185, 29.422972>,  <37.628078, 39.617462, 29.147234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790871, 39.857185, 29.422972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010206, -0.757607, 0.652632,
		0.913379, -0.258574, -0.314448,
		0.406981, 0.599310, 0.689343,
		37.912964, 40.036980, 29.629774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080570, 39.151161, 29.421421>,  <37.628078, 39.617462, 29.147234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080570, 39.151161, 29.421421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.028217, 39.455605, 29.675531>,  <37.996807, 39.638271, 29.827997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.028217, 39.455605, 29.675531>,  <38.080570, 39.151161, 29.421421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028217, 39.455605, 29.675531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081835, -0.630309, 0.772019,
		0.988015, 0.153030, 0.020209,
		-0.130880, 0.761113, 0.635278,
		37.988953, 39.683937, 29.866116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577995, 39.032394, 29.888359>,  <38.080570, 39.151161, 29.421421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577995, 39.032394, 29.888359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315468, 39.284775, 30.053841>,  <38.157951, 39.436203, 30.153130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315468, 39.284775, 30.053841>,  <38.577995, 39.032394, 29.888359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315468, 39.284775, 30.053841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019425, -0.562278, 0.826720,
		0.754234, 0.534554, 0.381289,
		-0.656317, 0.630948, 0.413706,
		38.118572, 39.474060, 30.177952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845268, 39.124050, 30.556583>,  <38.577995, 39.032394, 29.888359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845268, 39.124050, 30.556583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455868, 39.211704, 30.582743>,  <38.222229, 39.264297, 30.598438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455868, 39.211704, 30.582743>,  <38.845268, 39.124050, 30.556583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455868, 39.211704, 30.582743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046082, -0.468085, 0.882481,
		0.223992, 0.856082, 0.465780,
		-0.973501, 0.219132, 0.065398,
		38.163818, 39.277443, 30.602362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754543, 39.091591, 31.290159>,  <38.845268, 39.124050, 30.556583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754543, 39.091591, 31.290159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.387409, 39.070370, 31.132801>,  <38.167130, 39.057636, 31.038387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.387409, 39.070370, 31.132801>,  <38.754543, 39.091591, 31.290159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387409, 39.070370, 31.132801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339234, -0.409813, 0.846743,
		-0.206139, 0.910626, 0.358145,
		-0.917838, -0.053052, -0.393394,
		38.112057, 39.054455, 31.014782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312973, 39.263142, 31.798952>,  <38.754543, 39.091591, 31.290159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312973, 39.263142, 31.798952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058945, 39.076519, 31.552698>,  <37.906528, 38.964546, 31.404945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058945, 39.076519, 31.552698>,  <38.312973, 39.263142, 31.798952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058945, 39.076519, 31.552698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496226, -0.364372, 0.788031,
		-0.591985, 0.805949, -0.000118,
		-0.635070, -0.466561, -0.615636,
		37.868423, 38.936550, 31.368008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695827, 39.390968, 32.040581>,  <38.312973, 39.263142, 31.798952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695827, 39.390968, 32.040581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.650249, 39.047485, 31.840723>,  <37.622902, 38.841396, 31.720808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.650249, 39.047485, 31.840723>,  <37.695827, 39.390968, 32.040581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650249, 39.047485, 31.840723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627269, -0.327817, 0.706449,
		-0.770422, 0.393906, -0.501287,
		-0.113944, -0.858705, -0.499642,
		37.616066, 38.789875, 31.690830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934647, 39.174870, 32.085320>,  <37.695827, 39.390968, 32.040581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934647, 39.174870, 32.085320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111813, 38.834183, 31.973320>,  <37.218113, 38.629772, 31.906120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111813, 38.834183, 31.973320>,  <36.934647, 39.174870, 32.085320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111813, 38.834183, 31.973320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467427, -0.485870, 0.738541,
		-0.765072, -0.196233, -0.613316,
		0.442918, -0.851718, -0.280002,
		37.244686, 38.578667, 31.889320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426125, 38.598759, 32.021294>,  <36.934647, 39.174870, 32.085320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426125, 38.598759, 32.021294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765987, 38.390614, 32.055489>,  <36.969906, 38.265724, 32.076004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765987, 38.390614, 32.055489>,  <36.426125, 38.598759, 32.021294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765987, 38.390614, 32.055489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426016, -0.581775, 0.692855,
		-0.310802, -0.625106, -0.715992,
		0.849654, -0.520365, 0.085489,
		37.020885, 38.234505, 32.081135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231434, 37.877499, 32.118023>,  <36.426125, 38.598759, 32.021294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231434, 37.877499, 32.118023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605976, 37.887871, 32.258057>,  <36.830704, 37.894093, 32.342075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605976, 37.887871, 32.258057>,  <36.231434, 37.877499, 32.118023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605976, 37.887871, 32.258057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267003, -0.594838, 0.758207,
		0.227903, -0.803428, -0.550058,
		0.936360, 0.025931, 0.350083,
		36.886883, 37.895649, 32.363083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443314, 37.152893, 32.147762>,  <36.231434, 37.877499, 32.118023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443314, 37.152893, 32.147762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681767, 37.362740, 32.390877>,  <36.824837, 37.488647, 32.536743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681767, 37.362740, 32.390877>,  <36.443314, 37.152893, 32.147762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681767, 37.362740, 32.390877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250614, -0.597588, 0.761631,
		0.762771, -0.606352, -0.224764,
		0.596132, 0.524621, 0.607783,
		36.860607, 37.520126, 32.573212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848614, 36.658688, 32.398914>,  <36.443314, 37.152893, 32.147762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848614, 36.658688, 32.398914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883148, 36.948799, 32.672123>,  <36.903870, 37.122868, 32.836048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883148, 36.948799, 32.672123>,  <36.848614, 36.658688, 32.398914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883148, 36.948799, 32.672123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102942, -0.688406, 0.717983,
		0.990933, 0.008323, -0.134097,
		0.086338, 0.725277, 0.683022,
		36.909050, 37.166382, 32.877029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381432, 36.430130, 32.714413>,  <36.848614, 36.658688, 32.398914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381432, 36.430130, 32.714413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186855, 36.694336, 32.943180>,  <37.070110, 36.852859, 33.080441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186855, 36.694336, 32.943180>,  <37.381432, 36.430130, 32.714413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186855, 36.694336, 32.943180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132932, -0.702915, 0.698741,
		0.863540, 0.263873, 0.429733,
		-0.486444, 0.660516, 0.571918,
		37.040920, 36.892490, 33.114754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142567, 36.348564, 32.891396>,  <37.381432, 36.430130, 32.714413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142567, 36.348564, 32.891396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.432144, 36.080978, 32.823994>,  <38.605892, 35.920429, 32.783550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.432144, 36.080978, 32.823994>,  <38.142567, 36.348564, 32.891396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432144, 36.080978, 32.823994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279168, 0.507459, -0.815200,
		0.630848, 0.543117, 0.554125,
		0.723945, -0.668961, -0.168509,
		38.649326, 35.880291, 32.773441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697323, 36.772461, 32.726379>,  <38.142567, 36.348564, 32.891396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697323, 36.772461, 32.726379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796249, 36.407471, 32.596012>,  <38.855606, 36.188477, 32.517792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796249, 36.407471, 32.596012>,  <38.697323, 36.772461, 32.726379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796249, 36.407471, 32.596012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371039, 0.399913, -0.838093,
		0.895079, 0.086342, 0.437468,
		0.247312, -0.912477, -0.325917,
		38.870441, 36.133728, 32.498238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513744, 36.639633, 32.447155>,  <38.697323, 36.772461, 32.726379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513744, 36.639633, 32.447155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269173, 36.385437, 32.258556>,  <39.122429, 36.232918, 32.145397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269173, 36.385437, 32.258556>,  <39.513744, 36.639633, 32.447155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269173, 36.385437, 32.258556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292845, 0.371817, -0.880905,
		0.735115, -0.676687, -0.041241,
		-0.611431, -0.635489, -0.471493,
		39.085743, 36.194790, 32.117107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890289, 36.380455, 31.892569>,  <39.513744, 36.639633, 32.447155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890289, 36.380455, 31.892569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505955, 36.321484, 31.798710>,  <39.275352, 36.286098, 31.742393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505955, 36.321484, 31.798710>,  <39.890289, 36.380455, 31.892569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505955, 36.321484, 31.798710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191182, 0.260319, -0.946406,
		0.200611, -0.954201, -0.221938,
		-0.960835, -0.147429, -0.234648,
		39.217705, 36.277252, 31.728315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878662, 36.151043, 31.251408>,  <39.890289, 36.380455, 31.892569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878662, 36.151043, 31.251408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497692, 36.272270, 31.264284>,  <39.269112, 36.345009, 31.272011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497692, 36.272270, 31.264284>,  <39.878662, 36.151043, 31.251408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497692, 36.272270, 31.264284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080764, 0.352826, -0.932197,
		-0.293881, -0.885246, -0.360517,
		-0.952424, 0.303072, 0.032193,
		39.211964, 36.363194, 31.273941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670181, 35.928261, 30.633808>,  <39.878662, 36.151043, 31.251408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670181, 35.928261, 30.633808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.400383, 36.200279, 30.748764>,  <39.238503, 36.363491, 30.817738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.400383, 36.200279, 30.748764>,  <39.670181, 35.928261, 30.633808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400383, 36.200279, 30.748764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170329, 0.235430, -0.956849,
		-0.718363, -0.694341, -0.042964,
		-0.674495, 0.680047, 0.287391,
		39.198036, 36.404293, 30.834982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180832, 35.866470, 30.139900>,  <39.670181, 35.928261, 30.633808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180832, 35.866470, 30.139900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156818, 36.225857, 30.313871>,  <39.142410, 36.441486, 30.418253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156818, 36.225857, 30.313871>,  <39.180832, 35.866470, 30.139900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156818, 36.225857, 30.313871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152927, 0.422290, -0.893468,
		-0.986413, -0.120148, 0.112048,
		-0.060032, 0.898463, 0.434926,
		39.138809, 36.495396, 30.444349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994709, 36.190376, 29.482172>,  <39.180832, 35.866470, 30.139900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994709, 36.190376, 29.482172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.052261, 36.468102, 29.764229>,  <39.086792, 36.634739, 29.933462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.052261, 36.468102, 29.764229>,  <38.994709, 36.190376, 29.482172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052261, 36.468102, 29.764229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167797, 0.685120, -0.708840,
		-0.975266, 0.220306, -0.017931,
		0.143877, 0.694316, 0.705141,
		39.095425, 36.676395, 29.975771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545940, 36.844261, 29.356131>,  <38.994709, 36.190376, 29.482172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545940, 36.844261, 29.356131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848022, 36.983379, 29.578373>,  <39.029270, 37.066853, 29.711720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848022, 36.983379, 29.578373>,  <38.545940, 36.844261, 29.356131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848022, 36.983379, 29.578373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120816, 0.759247, -0.639490,
		-0.644256, 0.550073, 0.531369,
		0.755207, 0.347797, 0.555608,
		39.074585, 37.087719, 29.745056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439323, 37.578655, 29.518265>,  <38.545940, 36.844261, 29.356131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439323, 37.578655, 29.518265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834358, 37.520084, 29.540981>,  <39.071381, 37.484943, 29.554611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834358, 37.520084, 29.540981>,  <38.439323, 37.578655, 29.518265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834358, 37.520084, 29.540981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150363, 0.777145, -0.611094,
		0.045344, 0.612050, 0.789518,
		0.987590, -0.146424, 0.056791,
		39.130634, 37.476158, 29.558018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702614, 38.277443, 29.475367>,  <38.439323, 37.578655, 29.518265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702614, 38.277443, 29.475367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.022346, 38.047413, 29.405659>,  <39.214184, 37.909397, 29.363834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.022346, 38.047413, 29.405659>,  <38.702614, 38.277443, 29.475367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022346, 38.047413, 29.405659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311174, 0.644243, -0.698657,
		0.514050, 0.504227, 0.693908,
		0.799327, -0.575070, -0.174271,
		39.262146, 37.874893, 29.353378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337475, 38.636719, 29.652693>,  <38.702614, 38.277443, 29.475367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337475, 38.636719, 29.652693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454960, 38.345570, 29.404842>,  <39.525452, 38.170879, 29.256132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454960, 38.345570, 29.404842>,  <39.337475, 38.636719, 29.652693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454960, 38.345570, 29.404842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477925, 0.673203, -0.564257,
		0.827839, -0.130403, 0.545598,
		0.293717, -0.727869, -0.619627,
		39.543076, 38.127209, 29.218954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082939, 38.636963, 29.571264>,  <39.337475, 38.636719, 29.652693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082939, 38.636963, 29.571264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.915104, 38.453766, 29.257784>,  <39.814404, 38.343849, 29.069695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.915104, 38.453766, 29.257784>,  <40.082939, 38.636963, 29.571264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915104, 38.453766, 29.257784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543646, 0.564610, -0.621019,
		0.726909, -0.686628, 0.012084,
		-0.419586, -0.457993, -0.783703,
		39.789227, 38.316368, 29.022673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609585, 38.502785, 28.999054>,  <40.082939, 38.636963, 29.571264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609585, 38.502785, 28.999054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269547, 38.484062, 28.789236>,  <40.065525, 38.472828, 28.663345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269547, 38.484062, 28.789236>,  <40.609585, 38.502785, 28.999054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269547, 38.484062, 28.789236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401268, 0.587487, -0.702740,
		0.341056, -0.807879, -0.480638,
		-0.850097, -0.046809, -0.524542,
		40.014519, 38.470020, 28.631874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140404, 38.015053, 28.895367>,  <40.609585, 38.502785, 28.999054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140404, 38.015053, 28.895367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.508041, 37.920929, 28.768938>,  <41.728622, 37.864452, 28.693081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.508041, 37.920929, 28.768938>,  <41.140404, 38.015053, 28.895367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508041, 37.920929, 28.768938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062553, -0.879071, 0.472568,
		-0.389049, -0.414562, -0.822666,
		0.919091, -0.235313, -0.316070,
		41.783768, 37.850334, 28.674116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028481, 37.352070, 28.688356>,  <41.140404, 38.015053, 28.895367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028481, 37.352070, 28.688356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400166, 37.449623, 28.799412>,  <41.623177, 37.508156, 28.866045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400166, 37.449623, 28.799412>,  <41.028481, 37.352070, 28.688356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400166, 37.449623, 28.799412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015960, -0.724124, 0.689485,
		0.369196, -0.645111, -0.668974,
		0.929214, 0.243879, 0.277640,
		41.678928, 37.522785, 28.882704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442921, 36.744698, 28.738552>,  <41.028481, 37.352070, 28.688356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442921, 36.744698, 28.738552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.640461, 37.015240, 28.957150>,  <41.758984, 37.177567, 29.088308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.640461, 37.015240, 28.957150>,  <41.442921, 36.744698, 28.738552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640461, 37.015240, 28.957150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031500, -0.614151, 0.788559,
		0.868978, -0.406643, -0.281992,
		0.493848, 0.676358, 0.546493,
		41.788616, 37.218147, 29.121098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799755, 36.336765, 29.106504>,  <41.442921, 36.744698, 28.738552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799755, 36.336765, 29.106504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.796844, 36.678658, 29.314110>,  <41.795097, 36.883793, 29.438673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.796844, 36.678658, 29.314110>,  <41.799755, 36.336765, 29.106504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796844, 36.678658, 29.314110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083332, -0.516704, 0.852099,
		0.996495, 0.049450, -0.067468,
		-0.007275, 0.854735, 0.519014,
		41.794662, 36.935078, 29.469814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347069, 36.252472, 29.661503>,  <41.799755, 36.336765, 29.106504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347069, 36.252472, 29.661503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.138119, 36.578545, 29.761580>,  <42.012749, 36.774189, 29.821625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.138119, 36.578545, 29.761580>,  <42.347069, 36.252472, 29.661503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138119, 36.578545, 29.761580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045909, -0.319868, 0.946349,
		0.851478, 0.482865, 0.204516,
		-0.522377, 0.815184, 0.250193,
		41.981407, 36.823101, 29.836637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637325, 36.504673, 30.309155>,  <42.347069, 36.252472, 29.661503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637325, 36.504673, 30.309155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.268787, 36.659039, 30.327864>,  <42.047665, 36.751659, 30.339088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.268787, 36.659039, 30.327864>,  <42.637325, 36.504673, 30.309155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268787, 36.659039, 30.327864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107542, -0.368652, 0.923326,
		0.373569, 0.845674, 0.381159,
		-0.921347, 0.385916, 0.046772,
		41.992382, 36.774815, 30.341896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646458, 36.811386, 30.903242>,  <42.637325, 36.504673, 30.309155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646458, 36.811386, 30.903242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.258354, 36.738770, 30.839190>,  <42.025494, 36.695198, 30.800758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.258354, 36.738770, 30.839190>,  <42.646458, 36.811386, 30.903242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258354, 36.738770, 30.839190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061061, -0.456562, 0.887594,
		-0.234245, 0.870973, 0.431898,
		-0.970258, -0.181542, -0.160130,
		41.967278, 36.684307, 30.791151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254158, 37.004917, 31.451036>,  <42.646458, 36.811386, 30.903242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254158, 37.004917, 31.451036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.984581, 36.768406, 31.273863>,  <41.822834, 36.626499, 31.167559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.984581, 36.768406, 31.273863>,  <42.254158, 37.004917, 31.451036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984581, 36.768406, 31.273863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195754, -0.435195, 0.878798,
		-0.712379, 0.678964, 0.177550,
		-0.673940, -0.591281, -0.442934,
		41.782398, 36.591022, 31.140982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696854, 37.028042, 31.865829>,  <42.254158, 37.004917, 31.451036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696854, 37.028042, 31.865829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.666153, 36.692867, 31.649689>,  <41.647732, 36.491764, 31.520004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.666153, 36.692867, 31.649689>,  <41.696854, 37.028042, 31.865829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666153, 36.692867, 31.649689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214785, -0.515330, 0.829640,
		-0.973641, 0.179736, -0.140422,
		-0.076753, -0.837932, -0.540351,
		41.643127, 36.441486, 31.487583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086441, 36.631313, 32.092499>,  <41.696854, 37.028042, 31.865829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086441, 36.631313, 32.092499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.292427, 36.348598, 31.898487>,  <41.416019, 36.178970, 31.782080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.292427, 36.348598, 31.898487>,  <41.086441, 36.631313, 32.092499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292427, 36.348598, 31.898487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159531, -0.634963, 0.755891,
		-0.842233, -0.311883, -0.439741,
		0.514969, -0.706789, -0.485033,
		41.446918, 36.136562, 31.752977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604797, 36.038185, 32.096214>,  <41.086441, 36.631313, 32.092499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604797, 36.038185, 32.096214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969074, 35.884754, 32.034889>,  <41.187641, 35.792694, 31.998095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969074, 35.884754, 32.034889>,  <40.604797, 36.038185, 32.096214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969074, 35.884754, 32.034889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215574, -0.757910, 0.615711,
		-0.352372, -0.527673, -0.772913,
		0.910693, -0.383580, -0.153314,
		41.242283, 35.769680, 31.988895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498219, 35.416779, 31.961788>,  <40.604797, 36.038185, 32.096214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498219, 35.416779, 31.961788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.886185, 35.426380, 32.058693>,  <41.118965, 35.432140, 32.116837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.886185, 35.426380, 32.058693>,  <40.498219, 35.416779, 31.961788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886185, 35.426380, 32.058693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142003, -0.752508, 0.643092,
		0.197743, -0.658146, -0.726459,
		0.969914, 0.024007, 0.242262,
		41.177158, 35.433582, 32.131371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709610, 34.673294, 32.039555>,  <40.498219, 35.416779, 31.961788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709610, 34.673294, 32.039555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.003757, 34.874214, 32.221516>,  <41.180244, 34.994766, 32.330692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.003757, 34.874214, 32.221516>,  <40.709610, 34.673294, 32.039555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003757, 34.874214, 32.221516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008302, -0.664545, 0.747202,
		0.677621, -0.553243, -0.484513,
		0.735365, 0.502297, 0.454902,
		41.224365, 35.024902, 32.357986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258419, 34.177414, 32.245029>,  <40.709610, 34.673294, 32.039555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258419, 34.177414, 32.245029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321796, 34.489532, 32.487034>,  <41.359825, 34.676804, 32.632236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321796, 34.489532, 32.487034>,  <41.258419, 34.177414, 32.245029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321796, 34.489532, 32.487034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023537, -0.615559, 0.787740,
		0.987087, -0.110573, -0.115898,
		0.158445, 0.780295, 0.605008,
		41.369331, 34.723621, 32.668537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.405403, 40.139668, 31.482849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.026222, 40.155411, 31.356459>,  <44.798714, 40.164856, 31.280624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.026222, 40.155411, 31.356459>,  <45.405403, 40.139668, 31.482849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026222, 40.155411, 31.356459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312726, 0.301918, -0.900582,
		0.059950, -0.952521, -0.298513,
		-0.947950, 0.039362, -0.315978,
		44.741837, 40.167221, 31.261665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466785, 39.924381, 30.885538>,  <45.405403, 40.139668, 31.482849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466785, 39.924381, 30.885538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.102531, 40.086548, 30.853596>,  <44.883980, 40.183846, 30.834431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.102531, 40.086548, 30.853596>,  <45.466785, 39.924381, 30.885538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102531, 40.086548, 30.853596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144676, 0.131812, -0.980660,
		-0.387046, -0.904581, -0.178687,
		-0.910639, 0.405413, -0.079854,
		44.829338, 40.208172, 30.829639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121536, 39.605953, 30.280092>,  <45.466785, 39.924381, 30.885538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121536, 39.605953, 30.280092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.933002, 39.953388, 30.341265>,  <44.819881, 40.161850, 30.377968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.933002, 39.953388, 30.341265>,  <45.121536, 39.605953, 30.280092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933002, 39.953388, 30.341265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061177, 0.205182, -0.976810,
		-0.879828, -0.451053, -0.149848,
		-0.471339, 0.868592, 0.152931,
		44.791599, 40.213966, 30.387144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526566, 39.647121, 29.815098>,  <45.121536, 39.605953, 30.280092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526566, 39.647121, 29.815098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.647396, 40.013477, 29.920845>,  <44.719894, 40.233292, 29.984293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.647396, 40.013477, 29.920845>,  <44.526566, 39.647121, 29.815098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647396, 40.013477, 29.920845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022634, 0.284138, -0.958516,
		-0.953016, 0.283558, 0.106561,
		0.302073, 0.915893, 0.264370,
		44.738018, 40.288246, 30.000156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286121, 40.060352, 29.333862>,  <44.526566, 39.647121, 29.815098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286121, 40.060352, 29.333862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.538330, 40.334023, 29.480478>,  <44.689655, 40.498222, 29.568447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.538330, 40.334023, 29.480478>,  <44.286121, 40.060352, 29.333862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538330, 40.334023, 29.480478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074478, 0.523391, -0.848832,
		-0.772590, 0.507908, 0.380965,
		0.630522, 0.684172, 0.366538,
		44.727486, 40.539276, 29.590441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937412, 40.723564, 29.203651>,  <44.286121, 40.060352, 29.333862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937412, 40.723564, 29.203651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.331505, 40.775257, 29.248569>,  <44.567963, 40.806274, 29.275520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.331505, 40.775257, 29.248569>,  <43.937412, 40.723564, 29.203651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331505, 40.775257, 29.248569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018639, 0.571040, -0.820710,
		-0.170190, 0.810686, 0.560200,
		0.985235, 0.129235, 0.112296,
		44.627075, 40.814026, 29.282259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963600, 41.406597, 29.155323>,  <43.937412, 40.723564, 29.203651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963600, 41.406597, 29.155323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.338039, 41.274853, 29.105934>,  <44.562702, 41.195805, 29.076300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.338039, 41.274853, 29.105934>,  <43.963600, 41.406597, 29.155323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338039, 41.274853, 29.105934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116078, 0.620619, -0.775473,
		0.332043, 0.711584, 0.619190,
		0.936095, -0.329364, -0.123473,
		44.618866, 41.176044, 29.068892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488945, 41.966213, 29.277740>,  <43.963600, 41.406597, 29.155323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488945, 41.966213, 29.277740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.667889, 41.695370, 29.044024>,  <44.775253, 41.532864, 28.903793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.667889, 41.695370, 29.044024>,  <44.488945, 41.966213, 29.277740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667889, 41.695370, 29.044024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115732, 0.691648, -0.712902,
		0.886834, 0.251302, 0.387778,
		0.447360, -0.677104, -0.584294,
		44.802097, 41.492237, 28.868736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069519, 42.342819, 29.034058>,  <44.488945, 41.966213, 29.277740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069519, 42.342819, 29.034058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.058823, 42.027863, 28.787708>,  <45.052402, 41.838890, 28.639898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.058823, 42.027863, 28.787708>,  <45.069519, 42.342819, 29.034058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058823, 42.027863, 28.787708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150619, 0.605887, -0.781163,
		0.988230, -0.113655, 0.102391,
		-0.026746, -0.787391, -0.615874,
		45.050800, 41.791645, 28.602945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548828, 42.504532, 28.555506>,  <45.069519, 42.342819, 29.034058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548828, 42.504532, 28.555506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.327858, 42.238724, 28.354214>,  <45.195278, 42.079239, 28.233438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.327858, 42.238724, 28.354214>,  <45.548828, 42.504532, 28.555506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327858, 42.238724, 28.354214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078971, 0.559271, -0.825215,
		0.829816, -0.495606, -0.256475,
		-0.552421, -0.664523, -0.503230,
		45.162132, 42.039368, 28.203245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838528, 42.466530, 27.931742>,  <45.548828, 42.504532, 28.555506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838528, 42.466530, 27.931742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.485142, 42.295311, 27.855558>,  <45.273109, 42.192581, 27.809849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.485142, 42.295311, 27.855558>,  <45.838528, 42.466530, 27.931742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485142, 42.295311, 27.855558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045869, 0.325541, -0.944414,
		0.466254, -0.843090, -0.267969,
		-0.883461, -0.428045, -0.190457,
		45.220104, 42.166897, 27.798422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943970, 42.024693, 27.461695>,  <45.838528, 42.466530, 27.931742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943970, 42.024693, 27.461695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.559666, 42.131763, 27.432598>,  <45.329082, 42.196007, 27.415140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.559666, 42.131763, 27.432598>,  <45.943970, 42.024693, 27.461695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559666, 42.131763, 27.432598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145130, 0.261594, -0.954204,
		-0.236392, -0.927317, -0.290177,
		-0.960758, 0.267680, -0.072743,
		45.271439, 42.212067, 27.410774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741928, 41.614929, 26.881382>,  <45.943970, 42.024693, 27.461695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741928, 41.614929, 26.881382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.544910, 41.959160, 26.933228>,  <45.426701, 42.165699, 26.964334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.544910, 41.959160, 26.933228>,  <45.741928, 41.614929, 26.881382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544910, 41.959160, 26.933228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159005, 0.235413, -0.958800,
		-0.855638, -0.451644, -0.252788,
		-0.492546, 0.860581, 0.129615,
		45.397148, 42.217335, 26.972113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063141, 41.674774, 26.475941>,  <45.741928, 41.614929, 26.881382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063141, 41.674774, 26.475941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.249302, 42.025890, 26.521349>,  <45.361000, 42.236561, 26.548594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.249302, 42.025890, 26.521349>,  <45.063141, 41.674774, 26.475941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249302, 42.025890, 26.521349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028715, 0.113218, -0.993155,
		-0.884633, 0.465477, 0.027487,
		0.465403, 0.877789, 0.113523,
		45.388924, 42.289227, 26.555407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393978, 42.129593, 26.101044>,  <45.063141, 41.674774, 26.475941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393978, 42.129593, 26.101044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.098503, 42.089256, 25.834459>,  <43.921219, 42.065052, 25.674509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.098503, 42.089256, 25.834459>,  <44.393978, 42.129593, 26.101044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098503, 42.089256, 25.834459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519780, -0.544282, 0.658472,
		-0.429145, 0.832819, 0.349639,
		-0.738690, -0.100845, -0.666459,
		43.876896, 42.059002, 25.634521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867249, 42.241318, 26.428291>,  <44.393978, 42.129593, 26.101044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867249, 42.241318, 26.428291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.709255, 42.040260, 26.120695>,  <43.614460, 41.919628, 25.936138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.709255, 42.040260, 26.120695>,  <43.867249, 42.241318, 26.428291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709255, 42.040260, 26.120695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468556, -0.609777, 0.639240,
		-0.790218, 0.612802, 0.005335,
		-0.394981, -0.502639, -0.768989,
		43.590759, 41.889469, 25.889997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251701, 42.022408, 26.639702>,  <43.867249, 42.241318, 26.428291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251701, 42.022408, 26.639702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320805, 41.755226, 26.350153>,  <43.362267, 41.594917, 26.176424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320805, 41.755226, 26.350153>,  <43.251701, 42.022408, 26.639702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320805, 41.755226, 26.350153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264144, -0.739419, 0.619263,
		-0.948885, 0.084224, -0.304176,
		0.172757, -0.667956, -0.723871,
		43.372631, 41.554840, 26.132992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720478, 41.548779, 26.695021>,  <43.251701, 42.022408, 26.639702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720478, 41.548779, 26.695021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.000362, 41.358673, 26.481655>,  <43.168293, 41.244610, 26.353636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.000362, 41.358673, 26.481655>,  <42.720478, 41.548779, 26.695021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000362, 41.358673, 26.481655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199769, -0.847003, 0.492623,
		-0.685931, -0.238132, -0.687598,
		0.699707, -0.475267, -0.533414,
		43.210274, 41.216095, 26.321630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416901, 40.938213, 26.318609>,  <42.720478, 41.548779, 26.695021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416901, 40.938213, 26.318609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.809643, 40.884277, 26.371956>,  <43.045288, 40.851917, 26.403963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.809643, 40.884277, 26.371956>,  <42.416901, 40.938213, 26.318609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809643, 40.884277, 26.371956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178589, -0.894027, 0.410880,
		0.063830, -0.427241, -0.901882,
		0.981851, -0.134840, 0.133367,
		43.104198, 40.843826, 26.411966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589046, 40.204109, 25.994661>,  <42.416901, 40.938213, 26.318609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589046, 40.204109, 25.994661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.870789, 40.274303, 26.269787>,  <43.039833, 40.316418, 26.434862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.870789, 40.274303, 26.269787>,  <42.589046, 40.204109, 25.994661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870789, 40.274303, 26.269787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188211, -0.888113, 0.419324,
		0.684439, -0.424808, -0.592521,
		0.704358, 0.175483, 0.687812,
		43.082096, 40.326950, 26.476131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717438, 39.593716, 26.227280>,  <42.589046, 40.204109, 25.994661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717438, 39.593716, 26.227280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.935429, 39.785908, 26.502129>,  <43.066223, 39.901222, 26.667038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.935429, 39.785908, 26.502129>,  <42.717438, 39.593716, 26.227280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935429, 39.785908, 26.502129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191361, -0.726607, 0.659866,
		0.816324, -0.491098, -0.304035,
		0.544973, 0.480484, 0.687124,
		43.098919, 39.930054, 26.708265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145901, 39.117184, 26.440983>,  <42.717438, 39.593716, 26.227280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145901, 39.117184, 26.440983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101025, 39.381481, 26.737854>,  <43.074100, 39.540062, 26.915977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.101025, 39.381481, 26.737854>,  <43.145901, 39.117184, 26.440983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101025, 39.381481, 26.737854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283811, -0.737087, 0.613314,
		0.952295, -0.141832, 0.270218,
		-0.112187, 0.660747, 0.742178,
		43.067368, 39.579704, 26.960506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362015, 38.766422, 27.024971>,  <43.145901, 39.117184, 26.440983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362015, 38.766422, 27.024971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154285, 39.076927, 27.167923>,  <43.029648, 39.263229, 27.253695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154285, 39.076927, 27.167923>,  <43.362015, 38.766422, 27.024971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154285, 39.076927, 27.167923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420525, -0.596188, 0.683900,
		0.743952, 0.204877, 0.636051,
		-0.519321, 0.776264, 0.357379,
		42.998489, 39.309807, 27.275137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478981, 38.687691, 27.679119>,  <43.362015, 38.766422, 27.024971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478981, 38.687691, 27.679119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.144543, 38.905296, 27.650860>,  <42.943878, 39.035858, 27.633905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.144543, 38.905296, 27.650860>,  <43.478981, 38.687691, 27.679119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144543, 38.905296, 27.650860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443635, -0.594769, 0.670401,
		0.322687, 0.591863, 0.738628,
		-0.836098, 0.544011, -0.070647,
		42.893715, 39.068501, 27.629665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370972, 38.684910, 28.313068>,  <43.478981, 38.687691, 27.679119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370972, 38.684910, 28.313068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.027550, 38.782597, 28.132740>,  <42.821495, 38.841209, 28.024542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.027550, 38.782597, 28.132740>,  <43.370972, 38.684910, 28.313068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027550, 38.782597, 28.132740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490232, -0.648549, 0.582286,
		-0.150178, 0.720933, 0.676537,
		-0.858557, 0.244213, -0.450822,
		42.769981, 38.855862, 27.997494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911716, 38.886440, 28.832239>,  <43.370972, 38.684910, 28.313068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911716, 38.886440, 28.832239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.684750, 38.778084, 28.521202>,  <42.548569, 38.713070, 28.334579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.684750, 38.778084, 28.521202>,  <42.911716, 38.886440, 28.832239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684750, 38.778084, 28.521202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527581, -0.605438, 0.595905,
		-0.632211, 0.748372, 0.200620,
		-0.567421, -0.270894, -0.777592,
		42.514523, 38.696815, 28.287924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205429, 38.854557, 29.023146>,  <42.911716, 38.886440, 28.832239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205429, 38.854557, 29.023146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.163483, 38.647930, 28.683224>,  <42.138313, 38.523956, 28.479271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.163483, 38.647930, 28.683224>,  <42.205429, 38.854557, 29.023146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163483, 38.647930, 28.683224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539741, -0.688147, 0.484905,
		-0.835274, 0.509525, -0.206645,
		-0.104869, -0.516564, -0.849803,
		42.132023, 38.492962, 28.428284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470695, 38.676216, 28.921358>,  <42.205429, 38.854557, 29.023146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470695, 38.676216, 28.921358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691284, 38.421230, 28.706131>,  <41.823639, 38.268238, 28.576994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.691284, 38.421230, 28.706131>,  <41.470695, 38.676216, 28.921358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691284, 38.421230, 28.706131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302607, -0.753953, 0.583081,
		-0.777371, -0.158731, -0.608687,
		0.551474, -0.637463, -0.538068,
		41.856728, 38.229992, 28.544710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890087, 38.629578, 28.314291>,  <41.470695, 38.676216, 28.921358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890087, 38.629578, 28.314291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.500286, 38.670929, 28.234632>,  <40.266407, 38.695740, 28.186838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.500286, 38.670929, 28.234632>,  <40.890087, 38.629578, 28.314291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500286, 38.670929, 28.234632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209775, 0.734711, -0.645131,
		0.079623, -0.670458, -0.737663,
		-0.974502, 0.103376, -0.199145,
		40.207935, 38.701942, 28.174889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798874, 38.611923, 27.611992>,  <40.890087, 38.629578, 28.314291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798874, 38.611923, 27.611992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.499016, 38.809994, 27.787643>,  <40.319099, 38.928837, 27.893034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.499016, 38.809994, 27.787643>,  <40.798874, 38.611923, 27.611992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499016, 38.809994, 27.787643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124599, 0.757226, -0.641159,
		-0.650006, -0.425926, -0.629348,
		-0.749645, 0.495173, 0.439131,
		40.274124, 38.958546, 27.919382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396385, 38.788742, 27.097441>,  <40.798874, 38.611923, 27.611992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396385, 38.788742, 27.097441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303730, 39.053699, 27.382418>,  <40.248135, 39.212673, 27.553404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303730, 39.053699, 27.382418>,  <40.396385, 38.788742, 27.097441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303730, 39.053699, 27.382418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143264, 0.747606, -0.648507,
		-0.962194, -0.048154, -0.268074,
		-0.231642, 0.662395, 0.712443,
		40.234238, 39.252419, 27.596151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920998, 39.127804, 26.766544>,  <40.396385, 38.788742, 27.097441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920998, 39.127804, 26.766544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.031300, 39.356407, 27.075695>,  <40.097481, 39.493568, 27.261185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.031300, 39.356407, 27.075695>,  <39.920998, 39.127804, 26.766544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031300, 39.356407, 27.075695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113684, 0.779017, -0.616611,
		-0.954483, 0.257895, 0.149844,
		0.275752, 0.571509, 0.772877,
		40.114025, 39.527859, 27.307558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447968, 39.653419, 26.717447>,  <39.920998, 39.127804, 26.766544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447968, 39.653419, 26.717447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760948, 39.788738, 26.926567>,  <39.948738, 39.869930, 27.052038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760948, 39.788738, 26.926567>,  <39.447968, 39.653419, 26.717447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760948, 39.788738, 26.926567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104421, 0.756389, -0.645733,
		-0.613889, 0.559848, 0.556516,
		0.782455, 0.338297, 0.522799,
		39.995686, 39.890228, 27.083406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415684, 40.372597, 26.942987>,  <39.447968, 39.653419, 26.717447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415684, 40.372597, 26.942987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.811367, 40.322414, 26.973280>,  <40.048775, 40.292305, 26.991455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.811367, 40.322414, 26.973280>,  <39.415684, 40.372597, 26.942987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811367, 40.322414, 26.973280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145916, 0.795734, -0.587806,
		0.013481, 0.592511, 0.805450,
		0.989205, -0.125452, 0.075730,
		40.108128, 40.284779, 26.995998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693939, 41.035751, 27.089436>,  <39.415684, 40.372597, 26.942987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693939, 41.035751, 27.089436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.006081, 40.820030, 26.962814>,  <40.193367, 40.690598, 26.886843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.006081, 40.820030, 26.962814>,  <39.693939, 41.035751, 27.089436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006081, 40.820030, 26.962814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324511, 0.781949, -0.532211,
		0.534548, 0.312588, 0.785205,
		0.780353, -0.539299, -0.316551,
		40.240185, 40.658241, 26.867849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709629, 41.425091, 27.701647>,  <39.693939, 41.035751, 27.089436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709629, 41.425091, 27.701647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.470570, 41.745136, 27.722137>,  <39.327133, 41.937164, 27.734432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.470570, 41.745136, 27.722137>,  <39.709629, 41.425091, 27.701647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470570, 41.745136, 27.722137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611562, -0.496260, 0.616212,
		0.518464, 0.336951, 0.785913,
		-0.597651, 0.800118, 0.051227,
		39.291275, 41.985172, 27.737505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674591, 41.583961, 28.328875>,  <39.709629, 41.425091, 27.701647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674591, 41.583961, 28.328875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.342319, 41.752911, 28.183784>,  <39.142956, 41.854279, 28.096729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.342319, 41.752911, 28.183784>,  <39.674591, 41.583961, 28.328875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342319, 41.752911, 28.183784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533950, -0.419851, 0.733909,
		0.157692, 0.803322, 0.574288,
		-0.830680, 0.422373, -0.362727,
		39.093117, 41.879623, 28.074966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419735, 42.032532, 28.831348>,  <39.674591, 41.583961, 28.328875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419735, 42.032532, 28.831348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114632, 41.955906, 28.584282>,  <38.931572, 41.909931, 28.436043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.114632, 41.955906, 28.584282>,  <39.419735, 42.032532, 28.831348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114632, 41.955906, 28.584282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454507, -0.520638, 0.722745,
		-0.460032, 0.832009, 0.310051,
		-0.762754, -0.191565, -0.617664,
		38.885807, 41.898438, 28.398983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737026, 42.139374, 29.199221>,  <39.419735, 42.032532, 28.831348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737026, 42.139374, 29.199221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.630131, 41.907776, 28.891104>,  <38.565994, 41.768818, 28.706234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.630131, 41.907776, 28.891104>,  <38.737026, 42.139374, 29.199221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630131, 41.907776, 28.891104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538214, -0.573379, 0.617707,
		-0.799318, 0.579658, -0.158393,
		-0.267239, -0.578993, -0.770292,
		38.549957, 41.734077, 28.660017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000114, 42.002682, 29.315254>,  <38.737026, 42.139374, 29.199221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000114, 42.002682, 29.315254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119484, 41.713120, 29.066448>,  <38.191105, 41.539383, 28.917164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119484, 41.713120, 29.066448>,  <38.000114, 42.002682, 29.315254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119484, 41.713120, 29.066448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420427, -0.684782, 0.595244,
		-0.856844, 0.083875, -0.508707,
		0.298427, -0.723905, -0.622015,
		38.209011, 41.495949, 28.879845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432148, 41.535694, 29.300362>,  <38.000114, 42.002682, 29.315254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432148, 41.535694, 29.300362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730209, 41.315884, 29.149221>,  <37.909046, 41.183998, 29.058537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730209, 41.315884, 29.149221>,  <37.432148, 41.535694, 29.300362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730209, 41.315884, 29.149221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286107, -0.775210, 0.563198,
		-0.602407, -0.311561, -0.734871,
		0.745150, -0.549526, -0.377852,
		37.953754, 41.151028, 29.035866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129768, 40.923569, 29.214642>,  <37.432148, 41.535694, 29.300362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129768, 40.923569, 29.214642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.520508, 40.838478, 29.205599>,  <37.754951, 40.787422, 29.200172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.520508, 40.838478, 29.205599>,  <37.129768, 40.923569, 29.214642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520508, 40.838478, 29.205599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166548, -0.822580, 0.543713,
		-0.134257, -0.527362, -0.838967,
		0.976851, -0.212726, -0.022606,
		37.813564, 40.774662, 29.198816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.119602, 42.993385, 27.246838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.322895, 42.661865, 27.340466>,  <42.444870, 42.462952, 27.396643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.322895, 42.661865, 27.340466>,  <42.119602, 42.993385, 27.246838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322895, 42.661865, 27.340466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100119, 0.213085, 0.971890,
		-0.855382, -0.517378, 0.025317,
		0.508229, -0.828803, 0.234069,
		42.475365, 42.413223, 27.410686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741707, 42.738377, 27.767572>,  <42.119602, 42.993385, 27.246838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741707, 42.738377, 27.767572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.116348, 42.614716, 27.833530>,  <42.341133, 42.540520, 27.873106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.116348, 42.614716, 27.833530>,  <41.741707, 42.738377, 27.767572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116348, 42.614716, 27.833530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195195, -0.069563, 0.978294,
		-0.290973, -0.948465, -0.125498,
		0.936608, -0.309154, 0.164895,
		42.397331, 42.521969, 27.882999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682346, 42.101795, 28.122711>,  <41.741707, 42.738377, 27.767572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682346, 42.101795, 28.122711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.042313, 42.255520, 28.205135>,  <42.258293, 42.347755, 28.254591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.042313, 42.255520, 28.205135>,  <41.682346, 42.101795, 28.122711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042313, 42.255520, 28.205135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154056, -0.161886, 0.974710,
		0.407951, -0.908899, -0.086478,
		0.899913, 0.384312, 0.206063,
		42.312286, 42.370811, 28.266954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081253, 41.538189, 28.611435>,  <41.682346, 42.101795, 28.122711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081253, 41.538189, 28.611435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.245190, 41.899719, 28.660622>,  <42.343552, 42.116638, 28.690134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.245190, 41.899719, 28.660622>,  <42.081253, 41.538189, 28.611435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245190, 41.899719, 28.660622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019622, -0.143516, 0.989454,
		0.911944, -0.403110, -0.076554,
		0.409845, 0.903828, 0.122969,
		42.368145, 42.170868, 28.697512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409389, 41.433922, 29.165625>,  <42.081253, 41.538189, 28.611435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409389, 41.433922, 29.165625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.466503, 41.829796, 29.160948>,  <42.500771, 42.067322, 29.158142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.466503, 41.829796, 29.160948>,  <42.409389, 41.433922, 29.165625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466503, 41.829796, 29.160948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081093, 0.000075, 0.996707,
		0.986426, -0.143267, -0.080246,
		0.142789, 0.989684, -0.011692,
		42.509338, 42.126701, 29.157440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115295, 41.684120, 29.454002>,  <42.409389, 41.433922, 29.165625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115295, 41.684120, 29.454002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.819347, 41.949440, 29.498968>,  <42.641781, 42.108631, 29.525948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.819347, 41.949440, 29.498968>,  <43.115295, 41.684120, 29.454002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819347, 41.949440, 29.498968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008896, -0.157435, 0.987489,
		0.672696, 0.731610, 0.110580,
		-0.739866, 0.663296, 0.112414,
		42.597389, 42.148430, 29.532692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356369, 42.060024, 30.053566>,  <43.115295, 41.684120, 29.454002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356369, 42.060024, 30.053566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.971901, 42.167908, 30.030218>,  <42.741219, 42.232639, 30.016211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.971901, 42.167908, 30.030218>,  <43.356369, 42.060024, 30.053566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971901, 42.167908, 30.030218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059716, 0.003211, 0.998210,
		0.269412, 0.962937, 0.013019,
		-0.961172, 0.269708, -0.058368,
		42.683548, 42.248821, 30.012709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382111, 42.608562, 30.533854>,  <43.356369, 42.060024, 30.053566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382111, 42.608562, 30.533854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.006905, 42.477081, 30.489885>,  <42.781780, 42.398193, 30.463505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.006905, 42.477081, 30.489885>,  <43.382111, 42.608562, 30.533854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006905, 42.477081, 30.489885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110255, -0.017685, 0.993746,
		-0.328591, 0.944268, -0.019652,
		-0.938015, -0.328703, -0.109921,
		42.725502, 42.378471, 30.456909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963505, 43.059822, 31.090553>,  <43.382111, 42.608562, 30.533854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963505, 43.059822, 31.090553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.735615, 42.741203, 31.009634>,  <42.598881, 42.550030, 30.961082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.735615, 42.741203, 31.009634>,  <42.963505, 43.059822, 31.090553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735615, 42.741203, 31.009634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124794, -0.159447, 0.979287,
		-0.812307, 0.583168, -0.008564,
		-0.569723, -0.796550, -0.202296,
		42.564697, 42.502239, 30.948946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492596, 43.159275, 31.537975>,  <42.963505, 43.059822, 31.090553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492596, 43.159275, 31.537975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.467598, 42.772049, 31.440855>,  <42.452599, 42.539715, 31.382584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.467598, 42.772049, 31.440855>,  <42.492596, 43.159275, 31.537975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467598, 42.772049, 31.440855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174670, -0.228911, 0.957648,
		-0.982642, 0.102255, -0.154786,
		-0.062492, -0.968062, -0.242799,
		42.448849, 42.481632, 31.368015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028778, 42.909203, 31.955048>,  <42.492596, 43.159275, 31.537975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028778, 42.909203, 31.955048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.149414, 42.554119, 31.815903>,  <42.221798, 42.341068, 31.732416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.149414, 42.554119, 31.815903>,  <42.028778, 42.909203, 31.955048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149414, 42.554119, 31.815903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349034, -0.442322, 0.826152,
		-0.887253, -0.127745, -0.443243,
		0.301592, -0.887712, -0.347864,
		42.239891, 42.287804, 31.711544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439270, 42.477665, 31.854061>,  <42.028778, 42.909203, 31.955048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439270, 42.477665, 31.854061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.772820, 42.265694, 31.915804>,  <41.972950, 42.138512, 31.952850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.772820, 42.265694, 31.915804>,  <41.439270, 42.477665, 31.854061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772820, 42.265694, 31.915804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333214, -0.260377, 0.906186,
		-0.440027, -0.807078, -0.393702,
		0.833873, -0.529933, 0.154357,
		42.022984, 42.106712, 31.962111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853645, 42.272087, 31.531307>,  <41.439270, 42.477665, 31.854061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853645, 42.272087, 31.531307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.501217, 42.436020, 31.625751>,  <40.289761, 42.534378, 31.682419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.501217, 42.436020, 31.625751>,  <40.853645, 42.272087, 31.531307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501217, 42.436020, 31.625751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062730, 0.596040, -0.800500,
		-0.468803, -0.690488, -0.550864,
		-0.881073, 0.409833, 0.236111,
		40.236897, 42.558971, 31.696585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461296, 42.295162, 30.874430>,  <40.853645, 42.272087, 31.531307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461296, 42.295162, 30.874430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330723, 42.585175, 31.117006>,  <40.252380, 42.759182, 31.262552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330723, 42.585175, 31.117006>,  <40.461296, 42.295162, 30.874430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330723, 42.585175, 31.117006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075481, 0.659533, -0.747876,
		-0.942203, -0.198354, -0.270017,
		-0.326429, 0.725032, 0.606442,
		40.232796, 42.802685, 31.298939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938606, 42.702221, 30.470503>,  <40.461296, 42.295162, 30.874430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938606, 42.702221, 30.470503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.051712, 42.950947, 30.762638>,  <40.119576, 43.100182, 30.937920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.051712, 42.950947, 30.762638>,  <39.938606, 42.702221, 30.470503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051712, 42.950947, 30.762638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112420, 0.734681, -0.669034,
		-0.952579, 0.271283, 0.137838,
		0.282764, 0.621812, 0.730339,
		40.136539, 43.137489, 30.981739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737267, 43.365242, 30.232218>,  <39.938606, 42.702221, 30.470503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737267, 43.365242, 30.232218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991558, 43.434834, 30.533039>,  <40.144131, 43.476589, 30.713531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991558, 43.434834, 30.533039>,  <39.737267, 43.365242, 30.232218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991558, 43.434834, 30.533039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294921, 0.845615, -0.444924,
		-0.713354, 0.504646, 0.486270,
		0.635726, 0.173977, 0.752053,
		40.182278, 43.487026, 30.758656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609505, 44.040543, 30.390097>,  <39.737267, 43.365242, 30.232218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609505, 44.040543, 30.390097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974270, 43.969101, 30.537886>,  <40.193130, 43.926235, 30.626560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974270, 43.969101, 30.537886>,  <39.609505, 44.040543, 30.390097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974270, 43.969101, 30.537886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342050, 0.828242, -0.443865,
		-0.226740, 0.531146, 0.816378,
		0.911916, -0.178600, 0.369474,
		40.247845, 43.915520, 30.648727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829689, 44.657310, 30.651375>,  <39.609505, 44.040543, 30.390097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829689, 44.657310, 30.651375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186138, 44.476593, 30.634480>,  <40.400005, 44.368160, 30.624342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186138, 44.476593, 30.634480>,  <39.829689, 44.657310, 30.651375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186138, 44.476593, 30.634480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386400, 0.804337, -0.451373,
		0.237904, 0.385906, 0.891335,
		0.891121, -0.451795, -0.042240,
		40.453476, 44.341053, 30.621807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372898, 45.131916, 30.786551>,  <39.829689, 44.657310, 30.651375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372898, 45.131916, 30.786551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.563850, 44.838375, 30.593235>,  <40.678421, 44.662251, 30.477245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.563850, 44.838375, 30.593235>,  <40.372898, 45.131916, 30.786551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563850, 44.838375, 30.593235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455618, 0.677021, -0.577975,
		0.751345, 0.055719, 0.657553,
		0.477381, -0.733851, -0.483290,
		40.707066, 44.618221, 30.448248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144657, 45.314671, 30.762756>,  <40.372898, 45.131916, 30.786551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144657, 45.314671, 30.762756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.052956, 45.077297, 30.454140>,  <40.997936, 44.934872, 30.268969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.052956, 45.077297, 30.454140>,  <41.144657, 45.314671, 30.762756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052956, 45.077297, 30.454140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341379, 0.693285, -0.634678,
		0.911539, -0.408891, 0.043648,
		-0.229254, -0.593435, -0.771543,
		40.984180, 44.899265, 30.222677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592026, 45.486786, 30.320143>,  <41.144657, 45.314671, 30.762756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592026, 45.486786, 30.320143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.358379, 45.260353, 30.087467>,  <41.218193, 45.124493, 29.947863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.358379, 45.260353, 30.087467>,  <41.592026, 45.486786, 30.320143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358379, 45.260353, 30.087467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241377, 0.563084, -0.790363,
		0.774953, -0.602066, -0.192264,
		-0.584111, -0.566086, -0.581688,
		41.183147, 45.090527, 29.912960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897415, 45.383026, 29.623806>,  <41.592026, 45.486786, 30.320143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897415, 45.383026, 29.623806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.507095, 45.320454, 29.562691>,  <41.272903, 45.282909, 29.526022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.507095, 45.320454, 29.562691>,  <41.897415, 45.383026, 29.623806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507095, 45.320454, 29.562691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061986, 0.472171, -0.879325,
		0.209695, -0.867516, -0.451048,
		-0.975801, -0.156431, -0.152786,
		41.214355, 45.273525, 29.516855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891750, 45.362427, 28.930668>,  <41.897415, 45.383026, 29.623806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891750, 45.362427, 28.930668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.498127, 45.391769, 28.995478>,  <41.261955, 45.409374, 29.034363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.498127, 45.391769, 28.995478>,  <41.891750, 45.362427, 28.930668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498127, 45.391769, 28.995478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103457, 0.504907, -0.856952,
		-0.144671, -0.860051, -0.489267,
		-0.984056, 0.073358, 0.162024,
		41.202911, 45.413776, 29.044085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540951, 45.021519, 28.339018>,  <41.891750, 45.362427, 28.930668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540951, 45.021519, 28.339018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.304329, 45.283592, 28.526976>,  <41.162357, 45.440838, 28.639751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.304329, 45.283592, 28.526976>,  <41.540951, 45.021519, 28.339018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304329, 45.283592, 28.526976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158578, 0.476874, -0.864549,
		-0.790519, -0.585939, -0.178197,
		-0.591551, 0.655184, 0.469895,
		41.126865, 45.480148, 28.667944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296322, 45.301243, 27.700249>,  <41.540951, 45.021519, 28.339018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296322, 45.301243, 27.700249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.146698, 45.564335, 27.961775>,  <41.056923, 45.722191, 28.118690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.146698, 45.564335, 27.961775>,  <41.296322, 45.301243, 27.700249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146698, 45.564335, 27.961775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111825, 0.731840, -0.672240,
		-0.920637, -0.178347, -0.347304,
		-0.374063, 0.657726, 0.653815,
		41.034477, 45.761654, 28.157919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613731, 45.246365, 28.152643>,  <41.296322, 45.301243, 27.700249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613731, 45.246365, 28.152643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.887989, 45.004875, 27.989958>,  <41.052544, 44.859982, 27.892347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.887989, 45.004875, 27.989958>,  <40.613731, 45.246365, 28.152643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887989, 45.004875, 27.989958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475975, 0.794546, -0.377021,
		0.550768, 0.064916, 0.832130,
		0.685641, -0.603724, -0.406712,
		41.093681, 44.823757, 27.867945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606926, 44.590965, 27.767746>,  <40.613731, 45.246365, 28.152643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606926, 44.590965, 27.767746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.648712, 44.496334, 27.381353>,  <40.673782, 44.439556, 27.149517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.648712, 44.496334, 27.381353>,  <40.606926, 44.590965, 27.767746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648712, 44.496334, 27.381353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519585, -0.841180, 0.149824,
		-0.848009, 0.486259, -0.210793,
		0.104462, -0.236577, -0.965981,
		40.680050, 44.425362, 27.091558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968906, 44.488148, 27.475239>,  <40.606926, 44.590965, 27.767746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968906, 44.488148, 27.475239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.202946, 44.282475, 27.224394>,  <40.343369, 44.159069, 27.073887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.202946, 44.282475, 27.224394>,  <39.968906, 44.488148, 27.475239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202946, 44.282475, 27.224394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572853, -0.809414, 0.129183,
		-0.574019, 0.283660, -0.768140,
		0.585100, -0.514185, -0.627114,
		40.378475, 44.128220, 27.036259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477306, 44.189259, 27.045261>,  <39.968906, 44.488148, 27.475239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477306, 44.189259, 27.045261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.811577, 43.970886, 27.021284>,  <40.012138, 43.839863, 27.006897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.811577, 43.970886, 27.021284>,  <39.477306, 44.189259, 27.045261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811577, 43.970886, 27.021284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539772, -0.836558, 0.093899,
		-0.101409, -0.046114, -0.993775,
		0.835681, -0.545934, -0.059944,
		40.062283, 43.807106, 27.003302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299892, 43.626850, 26.558079>,  <39.477306, 44.189259, 27.045261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299892, 43.626850, 26.558079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.604492, 43.503029, 26.785866>,  <39.787251, 43.428734, 26.922539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.604492, 43.503029, 26.785866>,  <39.299892, 43.626850, 26.558079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604492, 43.503029, 26.785866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409943, -0.910558, 0.053215,
		0.502060, -0.273972, -0.820290,
		0.761500, -0.309555, 0.569467,
		39.832943, 43.410164, 26.956705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363483, 42.964199, 26.366364>,  <39.299892, 43.626850, 26.558079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363483, 42.964199, 26.366364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543488, 42.972065, 26.723486>,  <39.651489, 42.976784, 26.937759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543488, 42.972065, 26.723486>,  <39.363483, 42.964199, 26.366364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543488, 42.972065, 26.723486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413821, -0.881346, 0.227994,
		0.791353, -0.472062, -0.388481,
		0.450013, 0.019662, 0.892805,
		39.678490, 42.977962, 26.991327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676018, 42.278927, 26.459454>,  <39.363483, 42.964199, 26.366364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676018, 42.278927, 26.459454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.622654, 42.459064, 26.812586>,  <39.590637, 42.567146, 27.024466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.622654, 42.459064, 26.812586>,  <39.676018, 42.278927, 26.459454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622654, 42.459064, 26.812586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490801, -0.803912, 0.335916,
		0.860997, -0.388481, 0.328279,
		-0.133411, 0.450342, 0.882833,
		39.582630, 42.594166, 27.077436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671310, 41.735523, 26.936146>,  <39.676018, 42.278927, 26.459454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671310, 41.735523, 26.936146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516109, 42.026249, 27.162842>,  <39.422989, 42.200684, 27.298859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.516109, 42.026249, 27.162842>,  <39.671310, 41.735523, 26.936146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516109, 42.026249, 27.162842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437269, -0.686466, 0.580999,
		0.811327, -0.022389, 0.584164,
		-0.388001, 0.726817, 0.566738,
		39.399708, 42.244293, 27.332863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343811, 41.610878, 27.074076>,  <39.671310, 41.735523, 26.936146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343811, 41.610878, 27.074076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.436729, 41.292580, 26.850351>,  <40.492481, 41.101601, 26.716116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.436729, 41.292580, 26.850351>,  <40.343811, 41.610878, 27.074076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436729, 41.292580, 26.850351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266563, 0.605109, -0.750191,
		0.935405, 0.025175, 0.352681,
		0.232297, -0.795744, -0.559312,
		40.506420, 41.053856, 26.682558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993176, 41.695225, 26.777330>,  <40.343811, 41.610878, 27.074076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993176, 41.695225, 26.777330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.809547, 41.432411, 26.538143>,  <40.699371, 41.274723, 26.394630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.809547, 41.432411, 26.538143>,  <40.993176, 41.695225, 26.777330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809547, 41.432411, 26.538143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447759, 0.410223, -0.794499,
		0.767309, -0.632479, 0.105868,
		-0.459074, -0.657029, -0.597966,
		40.671825, 41.235302, 26.358753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517590, 41.399689, 26.346567>,  <40.993176, 41.695225, 26.777330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517590, 41.399689, 26.346567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.170963, 41.361961, 26.150536>,  <40.962990, 41.339325, 26.032917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.170963, 41.361961, 26.150536>,  <41.517590, 41.399689, 26.346567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170963, 41.361961, 26.150536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437876, 0.327459, -0.837279,
		0.239446, -0.940147, -0.242466,
		-0.866562, -0.094313, -0.490076,
		40.910995, 41.333668, 26.003513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783108, 41.317616, 25.642134>,  <41.517590, 41.399689, 26.346567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783108, 41.317616, 25.642134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390213, 41.391926, 25.631590>,  <41.154476, 41.436512, 25.625263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390213, 41.391926, 25.631590>,  <41.783108, 41.317616, 25.642134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390213, 41.391926, 25.631590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121809, 0.524480, -0.842665,
		-0.142718, -0.830909, -0.537793,
		-0.982239, 0.185771, -0.026360,
		41.095543, 41.447659, 25.623682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595940, 41.279518, 24.963163>,  <41.783108, 41.317616, 25.642134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595940, 41.279518, 24.963163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.296780, 41.489723, 25.125391>,  <41.117283, 41.615845, 25.222727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.296780, 41.489723, 25.125391>,  <41.595940, 41.279518, 24.963163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296780, 41.489723, 25.125391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011499, 0.621132, -0.783621,
		-0.663714, -0.581405, -0.470586,
		-0.747898, 0.525512, 0.405568,
		41.072411, 41.647377, 25.247061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087273, 41.348648, 24.428881>,  <41.595940, 41.279518, 24.963163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087273, 41.348648, 24.428881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.004707, 41.644630, 24.684961>,  <40.955166, 41.822220, 24.838610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.004707, 41.644630, 24.684961>,  <41.087273, 41.348648, 24.428881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004707, 41.644630, 24.684961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116065, 0.668191, -0.734880,
		-0.971556, -0.077387, -0.223809,
		-0.206417, 0.739954, 0.640203,
		40.942783, 41.866615, 24.877022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777962, 41.870441, 23.916800>,  <41.087273, 41.348648, 24.428881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777962, 41.870441, 23.916800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.825996, 42.078693, 24.254917>,  <40.854816, 42.203644, 24.457788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.825996, 42.078693, 24.254917>,  <40.777962, 41.870441, 23.916800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825996, 42.078693, 24.254917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162749, 0.829614, -0.534091,
		-0.979333, 0.201706, 0.014891,
		0.120083, 0.520630, 0.845296,
		40.862022, 42.234882, 24.508507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391220, 42.467644, 23.799212>,  <40.777962, 41.870441, 23.916800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391220, 42.467644, 23.799212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.669029, 42.549126, 24.075224>,  <40.835716, 42.598015, 24.240831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.669029, 42.549126, 24.075224>,  <40.391220, 42.467644, 23.799212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669029, 42.549126, 24.075224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245212, 0.834639, -0.493203,
		-0.676396, 0.511744, 0.529724,
		0.694521, 0.203705, 0.690032,
		40.877384, 42.610237, 24.282234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265545, 43.190914, 24.086634>,  <40.391220, 42.467644, 23.799212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265545, 43.190914, 24.086634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.658684, 43.134834, 24.134560>,  <40.894566, 43.101185, 24.163315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.658684, 43.134834, 24.134560>,  <40.265545, 43.190914, 24.086634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658684, 43.134834, 24.134560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181597, 0.849046, -0.496129,
		-0.032170, 0.509377, 0.859942,
		0.982847, -0.140202, 0.119815,
		40.953537, 43.092773, 24.170504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.550652, 32.998486, 36.753601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921963, 33.104855, 36.857594>,  <38.144749, 33.168678, 36.919987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921963, 33.104855, 36.857594>,  <37.550652, 32.998486, 36.753601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921963, 33.104855, 36.857594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042252, 0.769952, -0.636701,
		-0.369487, 0.580049, 0.725963,
		0.928275, 0.265926, 0.259979,
		38.200447, 33.184631, 36.935589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461639, 33.726322, 36.788464>,  <37.550652, 32.998486, 36.753601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461639, 33.726322, 36.788464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.851856, 33.656433, 36.735100>,  <38.085987, 33.614498, 36.703083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.851856, 33.656433, 36.735100>,  <37.461639, 33.726322, 36.788464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851856, 33.656433, 36.735100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059703, 0.794627, -0.604155,
		0.211571, 0.581411, 0.785620,
		0.975537, -0.174726, -0.133408,
		38.144516, 33.604015, 36.695076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764751, 34.353500, 36.729458>,  <37.461639, 33.726322, 36.788464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764751, 34.353500, 36.729458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046787, 34.121986, 36.565582>,  <38.216011, 33.983078, 36.467255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.046787, 34.121986, 36.565582>,  <37.764751, 34.353500, 36.729458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046787, 34.121986, 36.565582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113913, 0.662698, -0.740172,
		0.699907, 0.475220, 0.533194,
		0.705092, -0.578789, -0.409693,
		38.258316, 33.948349, 36.442673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207371, 34.863693, 36.571468>,  <37.764751, 34.353500, 36.729458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207371, 34.863693, 36.571468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278599, 34.532547, 36.358704>,  <38.321335, 34.333858, 36.231045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278599, 34.532547, 36.358704>,  <38.207371, 34.863693, 36.571468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278599, 34.532547, 36.358704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271881, 0.560902, -0.781965,
		0.945712, -0.005371, 0.324961,
		0.178072, -0.827864, -0.531912,
		38.332020, 34.284187, 36.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814671, 34.971916, 36.180866>,  <38.207371, 34.863693, 36.571468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814671, 34.971916, 36.180866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.657253, 34.678730, 35.958912>,  <38.562805, 34.502819, 35.825741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.657253, 34.678730, 35.958912>,  <38.814671, 34.971916, 36.180866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657253, 34.678730, 35.958912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396244, 0.409398, -0.821817,
		0.829529, -0.543285, 0.129318,
		-0.393539, -0.732963, -0.554881,
		38.539192, 34.458839, 35.792446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348137, 34.714584, 35.664783>,  <38.814671, 34.971916, 36.180866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348137, 34.714584, 35.664783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995983, 34.577412, 35.533741>,  <38.784691, 34.495110, 35.455116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995983, 34.577412, 35.533741>,  <39.348137, 34.714584, 35.664783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995983, 34.577412, 35.533741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282993, 0.174466, -0.943121,
		0.380579, -0.923018, -0.056550,
		-0.880383, -0.342928, -0.327605,
		38.731869, 34.474533, 35.435459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470486, 34.364914, 35.057617>,  <39.348137, 34.714584, 35.664783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470486, 34.364914, 35.057617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085857, 34.473553, 35.041500>,  <38.855080, 34.538738, 35.031830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.085857, 34.473553, 35.041500>,  <39.470486, 34.364914, 35.057617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085857, 34.473553, 35.041500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138814, 0.354247, -0.924792,
		-0.236900, -0.894842, -0.378334,
		-0.961566, 0.271601, -0.040295,
		38.797386, 34.555035, 35.029411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274323, 34.233181, 34.356617>,  <39.470486, 34.364914, 35.057617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274323, 34.233181, 34.356617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.983864, 34.486568, 34.463516>,  <38.809589, 34.638603, 34.527657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.983864, 34.486568, 34.463516>,  <39.274323, 34.233181, 34.356617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983864, 34.486568, 34.463516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030929, 0.418408, -0.907733,
		-0.686841, -0.650883, -0.323419,
		-0.726149, 0.633471, 0.267249,
		38.766018, 34.676609, 34.543690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774437, 34.216457, 33.707088>,  <39.274323, 34.233181, 34.356617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774437, 34.216457, 33.707088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690926, 34.548458, 33.913971>,  <38.640820, 34.747658, 34.038101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690926, 34.548458, 33.913971>,  <38.774437, 34.216457, 33.707088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690926, 34.548458, 33.913971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142056, 0.497513, -0.855746,
		-0.967591, -0.252134, 0.014037,
		-0.208779, 0.830006, 0.517205,
		38.628292, 34.797459, 34.069134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122673, 34.465214, 33.476906>,  <38.774437, 34.216457, 33.707088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122673, 34.465214, 33.476906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326824, 34.771790, 33.632896>,  <38.449314, 34.955734, 33.726490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326824, 34.771790, 33.632896>,  <38.122673, 34.465214, 33.476906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326824, 34.771790, 33.632896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063945, 0.486058, -0.871584,
		-0.857570, 0.419900, 0.297083,
		0.510377, 0.766441, 0.389978,
		38.479939, 35.001720, 33.749889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882347, 34.943787, 33.129543>,  <38.122673, 34.465214, 33.476906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882347, 34.943787, 33.129543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217777, 35.106876, 33.274067>,  <38.419037, 35.204731, 33.360779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217777, 35.106876, 33.274067>,  <37.882347, 34.943787, 33.129543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217777, 35.106876, 33.274067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068536, 0.578991, -0.812448,
		-0.540450, 0.706065, 0.457587,
		0.838580, 0.407726, 0.361307,
		38.469353, 35.229195, 33.382458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812008, 35.682819, 33.078156>,  <37.882347, 34.943787, 33.129543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812008, 35.682819, 33.078156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201317, 35.592670, 33.095798>,  <38.434902, 35.538582, 33.106384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201317, 35.592670, 33.095798>,  <37.812008, 35.682819, 33.078156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201317, 35.592670, 33.095798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190916, 0.687308, -0.700827,
		0.127636, 0.690516, 0.711966,
		0.973273, -0.225376, 0.044105,
		38.493298, 35.525059, 33.109032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613914, 36.193531, 33.543114>,  <37.812008, 35.682819, 33.078156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613914, 36.193531, 33.543114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278908, 36.412006, 33.549316>,  <37.077904, 36.543091, 33.553040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278908, 36.412006, 33.549316>,  <37.613914, 36.193531, 33.543114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278908, 36.412006, 33.549316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386147, -0.611723, 0.690424,
		0.386589, 0.572255, 0.723238,
		-0.837520, 0.546187, 0.015511,
		37.027653, 36.575863, 33.553970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355530, 36.020607, 34.201385>,  <37.613914, 36.193531, 33.543114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355530, 36.020607, 34.201385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049282, 36.242496, 34.071091>,  <36.865532, 36.375629, 33.992912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049282, 36.242496, 34.071091>,  <37.355530, 36.020607, 34.201385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049282, 36.242496, 34.071091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561577, -0.329357, 0.759049,
		0.313782, 0.764068, 0.563684,
		-0.765619, 0.554728, -0.325737,
		36.819595, 36.408916, 33.973370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090469, 36.540375, 34.759560>,  <37.355530, 36.020607, 34.201385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090469, 36.540375, 34.759560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808746, 36.436829, 34.495152>,  <36.639713, 36.374699, 34.336506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808746, 36.436829, 34.495152>,  <37.090469, 36.540375, 34.759560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808746, 36.436829, 34.495152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605249, -0.267639, 0.749696,
		-0.370986, 0.928093, 0.031820,
		-0.704304, -0.258867, -0.661017,
		36.597454, 36.359169, 34.296844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449402, 36.746315, 34.998230>,  <37.090469, 36.540375, 34.759560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449402, 36.746315, 34.998230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.345631, 36.462376, 34.736294>,  <36.283367, 36.292011, 34.579132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.345631, 36.462376, 34.736294>,  <36.449402, 36.746315, 34.998230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345631, 36.462376, 34.736294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494107, -0.485034, 0.721526,
		-0.829791, 0.510748, -0.224907,
		-0.259430, -0.709844, -0.654841,
		36.267803, 36.249424, 34.539841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752544, 36.682629, 35.080578>,  <36.449402, 36.746315, 34.998230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752544, 36.682629, 35.080578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890667, 36.334480, 34.940170>,  <35.973541, 36.125591, 34.855927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890667, 36.334480, 34.940170>,  <35.752544, 36.682629, 35.080578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890667, 36.334480, 34.940170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493077, -0.486500, 0.721244,
		-0.798521, -0.075974, -0.597153,
		0.345310, -0.870372, -0.351019,
		35.994259, 36.073368, 34.834866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235203, 36.337650, 35.140976>,  <35.752544, 36.682629, 35.080578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235203, 36.337650, 35.140976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508785, 36.049229, 35.096638>,  <35.672935, 35.876175, 35.070034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508785, 36.049229, 35.096638>,  <35.235203, 36.337650, 35.140976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508785, 36.049229, 35.096638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467628, -0.549951, 0.692010,
		-0.559955, -0.421450, -0.713323,
		0.683941, -0.721065, -0.110866,
		35.713970, 35.832912, 35.063385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876324, 35.751854, 35.312492>,  <35.235203, 36.337650, 35.140976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876324, 35.751854, 35.312492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241913, 35.593235, 35.346912>,  <35.461266, 35.498062, 35.367565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241913, 35.593235, 35.346912>,  <34.876324, 35.751854, 35.312492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241913, 35.593235, 35.346912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333846, -0.614302, 0.714968,
		-0.230654, -0.682191, -0.693840,
		0.913972, -0.396546, 0.086055,
		35.516106, 35.474270, 35.372730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789204, 35.097805, 35.305206>,  <34.876324, 35.751854, 35.312492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789204, 35.097805, 35.305206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148342, 35.128483, 35.478638>,  <35.363827, 35.146889, 35.582695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148342, 35.128483, 35.478638>,  <34.789204, 35.097805, 35.305206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148342, 35.128483, 35.478638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307343, -0.595968, 0.741864,
		0.315295, -0.799337, -0.511516,
		0.897847, 0.076695, 0.433577,
		35.417698, 35.151493, 35.608711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047356, 34.329723, 35.494579>,  <34.789204, 35.097805, 35.305206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047356, 34.329723, 35.494579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245876, 34.582958, 35.732197>,  <35.364990, 34.734898, 35.874767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245876, 34.582958, 35.732197>,  <35.047356, 34.329723, 35.494579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245876, 34.582958, 35.732197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243345, -0.555389, 0.795189,
		0.833348, -0.539211, -0.121582,
		0.496301, 0.633083, 0.594047,
		35.394768, 34.772884, 35.910412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411602, 33.911331, 36.078129>,  <35.047356, 34.329723, 35.494579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411602, 33.911331, 36.078129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490753, 34.274929, 36.224869>,  <35.538246, 34.493088, 36.312912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.490753, 34.274929, 36.224869>,  <35.411602, 33.911331, 36.078129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490753, 34.274929, 36.224869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048197, -0.382820, 0.922565,
		0.979040, -0.164878, -0.119564,
		0.197882, 0.908991, 0.366849,
		35.550117, 34.547626, 36.334923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072823, 33.937008, 36.494724>,  <35.411602, 33.911331, 36.078129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072823, 33.937008, 36.494724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861324, 34.254730, 36.614395>,  <35.734425, 34.445362, 36.686199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861324, 34.254730, 36.614395>,  <36.072823, 33.937008, 36.494724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861324, 34.254730, 36.614395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001932, -0.351351, 0.936242,
		0.848777, 0.495613, 0.184242,
		-0.528747, 0.794305, 0.299176,
		35.702702, 34.493023, 36.704147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433475, 34.158623, 37.028744>,  <36.072823, 33.937008, 36.494724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433475, 34.158623, 37.028744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055309, 34.286152, 37.055695>,  <35.828407, 34.362667, 37.071865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055309, 34.286152, 37.055695>,  <36.433475, 34.158623, 37.028744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055309, 34.286152, 37.055695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050689, -0.348143, 0.936070,
		0.321895, 0.881562, 0.345301,
		-0.945418, 0.318819, 0.067380,
		35.771683, 34.381798, 37.075909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387161, 34.550362, 37.622288>,  <36.433475, 34.158623, 37.028744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387161, 34.550362, 37.622288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015003, 34.424225, 37.547539>,  <35.791710, 34.348541, 37.502689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015003, 34.424225, 37.547539>,  <36.387161, 34.550362, 37.622288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015003, 34.424225, 37.547539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133534, -0.183177, 0.973969,
		-0.341367, 0.931130, 0.128318,
		-0.930396, -0.315346, -0.186868,
		35.735886, 34.329620, 37.491478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976223, 34.726845, 38.226559>,  <36.387161, 34.550362, 37.622288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976223, 34.726845, 38.226559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750465, 34.457611, 38.035389>,  <35.615009, 34.296070, 37.920685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750465, 34.457611, 38.035389>,  <35.976223, 34.726845, 38.226559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750465, 34.457611, 38.035389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392571, -0.290455, 0.872653,
		-0.726186, 0.680143, -0.100301,
		-0.564396, -0.673084, -0.477929,
		35.581146, 34.255688, 37.892010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522110, 35.317059, 38.110840>,  <35.976223, 34.726845, 38.226559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522110, 35.317059, 38.110840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590260, 35.414268, 38.492817>,  <35.631149, 35.472595, 38.722004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590260, 35.414268, 38.492817>,  <35.522110, 35.317059, 38.110840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590260, 35.414268, 38.492817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139376, 0.953422, -0.267508,
		-0.975472, 0.178672, 0.128568,
		0.170376, 0.243027, 0.954940,
		35.641373, 35.487175, 38.779301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054001, 35.874760, 38.496235>,  <35.522110, 35.317059, 38.110840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054001, 35.874760, 38.496235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441006, 35.864067, 38.596802>,  <35.673206, 35.857651, 38.657143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441006, 35.864067, 38.596802>,  <35.054001, 35.874760, 38.496235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441006, 35.864067, 38.596802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119164, 0.925229, -0.360209,
		-0.222994, 0.378466, 0.898353,
		0.967509, -0.026727, 0.251420,
		35.731258, 35.856049, 38.672226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207085, 36.369339, 38.955288>,  <35.054001, 35.874760, 38.496235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207085, 36.369339, 38.955288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534851, 36.298935, 38.737083>,  <35.731510, 36.256691, 38.606159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534851, 36.298935, 38.737083>,  <35.207085, 36.369339, 38.955288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534851, 36.298935, 38.737083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090541, 0.979485, -0.180031,
		0.566009, 0.098128, 0.818538,
		0.819412, -0.176010, -0.545513,
		35.780674, 36.246132, 38.573429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750347, 36.777424, 39.220398>,  <35.207085, 36.369339, 38.955288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750347, 36.777424, 39.220398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838818, 36.696827, 38.838722>,  <35.891899, 36.648468, 38.609715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838818, 36.696827, 38.838722>,  <35.750347, 36.777424, 39.220398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838818, 36.696827, 38.838722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224237, 0.962716, -0.151315,
		0.949105, -0.180499, 0.258110,
		0.221174, -0.201491, -0.954192,
		35.905170, 36.636379, 38.552464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070831, 37.403015, 39.040665>,  <35.750347, 36.777424, 39.220398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070831, 37.403015, 39.040665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038769, 37.207790, 38.693016>,  <36.019531, 37.090656, 38.484428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.038769, 37.207790, 38.693016>,  <36.070831, 37.403015, 39.040665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038769, 37.207790, 38.693016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192244, 0.847985, -0.493926,
		0.978068, -0.206673, 0.025859,
		-0.080153, -0.488065, -0.869119,
		36.014721, 37.061371, 38.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631474, 37.584541, 38.699673>,  <36.070831, 37.403015, 39.040665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631474, 37.584541, 38.699673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396442, 37.456352, 38.402473>,  <36.255424, 37.379440, 38.224152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396442, 37.456352, 38.402473>,  <36.631474, 37.584541, 38.699673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396442, 37.456352, 38.402473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325863, 0.746762, -0.579793,
		0.740640, -0.582797, -0.334367,
		-0.587594, -0.320460, -0.742993,
		36.220169, 37.360210, 38.179573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047997, 37.617809, 38.125526>,  <36.631474, 37.584541, 38.699673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047997, 37.617809, 38.125526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660954, 37.633266, 38.025742>,  <36.428726, 37.642540, 37.965870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660954, 37.633266, 38.025742>,  <37.047997, 37.617809, 38.125526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660954, 37.633266, 38.025742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195340, 0.740569, -0.642962,
		0.159902, -0.670868, -0.724132,
		-0.967612, 0.038641, -0.249466,
		36.370670, 37.644859, 37.950901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132313, 37.797226, 37.426880>,  <37.047997, 37.617809, 38.125526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132313, 37.797226, 37.426880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747276, 37.886978, 37.487644>,  <36.516254, 37.940830, 37.524101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747276, 37.886978, 37.487644>,  <37.132313, 37.797226, 37.426880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747276, 37.886978, 37.487644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088298, 0.789759, -0.607029,
		-0.256178, -0.570906, -0.780026,
		-0.962589, 0.224382, 0.151909,
		36.458500, 37.954292, 37.533218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835854, 37.764057, 36.744881>,  <37.132313, 37.797226, 37.426880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835854, 37.764057, 36.744881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653412, 38.005032, 37.006886>,  <36.543945, 38.149616, 37.164089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653412, 38.005032, 37.006886>,  <36.835854, 37.764057, 36.744881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653412, 38.005032, 37.006886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033768, 0.747213, -0.663726,
		-0.889286, -0.280610, -0.361150,
		-0.456104, 0.602437, 0.655010,
		36.516582, 38.185764, 37.203388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490593, 38.307049, 36.300682>,  <36.835854, 37.764057, 36.744881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490593, 38.307049, 36.300682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468925, 38.445435, 36.675354>,  <36.455925, 38.528465, 36.900158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468925, 38.445435, 36.675354>,  <36.490593, 38.307049, 36.300682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468925, 38.445435, 36.675354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055849, 0.935543, -0.348770,
		-0.996969, -0.071207, -0.031360,
		-0.054173, 0.345962, 0.936683,
		36.452675, 38.549225, 36.956360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103001, 38.761272, 36.215141>,  <36.490593, 38.307049, 36.300682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103001, 38.761272, 36.215141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312412, 38.849499, 36.544327>,  <36.438061, 38.902435, 36.741837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312412, 38.849499, 36.544327>,  <36.103001, 38.761272, 36.215141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312412, 38.849499, 36.544327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388007, 0.798218, -0.460760,
		-0.758530, 0.560537, 0.332311,
		0.523529, 0.220561, 0.822964,
		36.469471, 38.915668, 36.791218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145340, 39.558800, 36.339294>,  <36.103001, 38.761272, 36.215141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145340, 39.558800, 36.339294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468163, 39.414883, 36.526569>,  <36.661858, 39.328533, 36.638935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468163, 39.414883, 36.526569>,  <36.145340, 39.558800, 36.339294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468163, 39.414883, 36.526569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572088, 0.672760, -0.469158,
		-0.146180, 0.646485, 0.748791,
		0.807060, -0.359793, 0.468191,
		36.710281, 39.306946, 36.667027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545704, 40.141171, 36.340183>,  <36.145340, 39.558800, 36.339294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545704, 40.141171, 36.340183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826862, 39.882122, 36.457840>,  <36.995560, 39.726692, 36.528435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826862, 39.882122, 36.457840>,  <36.545704, 40.141171, 36.340183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826862, 39.882122, 36.457840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711139, 0.631329, -0.309363,
		0.014651, 0.426625, 0.904310,
		0.702899, -0.647622, 0.294140,
		37.037731, 39.687836, 36.546082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067360, 40.563007, 36.700188>,  <36.545704, 40.141171, 36.340183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067360, 40.563007, 36.700188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.225578, 40.218204, 36.573395>,  <37.320511, 40.011322, 36.497318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.225578, 40.218204, 36.573395>,  <37.067360, 40.563007, 36.700188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225578, 40.218204, 36.573395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779370, 0.497628, -0.380722,
		0.485927, -0.096456, 0.868660,
		0.395547, -0.862011, -0.316986,
		37.344242, 39.959602, 36.478298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688011, 40.582455, 36.898514>,  <37.067360, 40.563007, 36.700188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688011, 40.582455, 36.898514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705914, 40.293976, 36.622002>,  <37.716656, 40.120888, 36.456093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705914, 40.293976, 36.622002>,  <37.688011, 40.582455, 36.898514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705914, 40.293976, 36.622002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703538, 0.514031, -0.490720,
		0.709247, -0.464380, 0.530396,
		0.044760, -0.721196, -0.691284,
		37.719341, 40.077618, 36.414616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319450, 40.604633, 36.685497>,  <37.688011, 40.582455, 36.898514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319450, 40.604633, 36.685497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168205, 40.393192, 36.381493>,  <38.077457, 40.266327, 36.199089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168205, 40.393192, 36.381493>,  <38.319450, 40.604633, 36.685497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168205, 40.393192, 36.381493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538781, 0.541950, -0.644985,
		0.752825, -0.653355, 0.079882,
		-0.378112, -0.528600, -0.760009,
		38.054771, 40.234612, 36.153488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934170, 40.393646, 36.299080>,  <38.319450, 40.604633, 36.685497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934170, 40.393646, 36.299080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620850, 40.368958, 36.051651>,  <38.432858, 40.354145, 35.903194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.620850, 40.368958, 36.051651>,  <38.934170, 40.393646, 36.299080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620850, 40.368958, 36.051651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512038, 0.500194, -0.698300,
		0.352503, -0.863711, -0.360200,
		-0.783300, -0.061717, -0.618573,
		38.385860, 40.350441, 35.866077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238033, 40.209419, 35.576885>,  <38.934170, 40.393646, 36.299080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238033, 40.209419, 35.576885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886578, 40.396702, 35.539402>,  <38.675705, 40.509071, 35.516911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886578, 40.396702, 35.539402>,  <39.238033, 40.209419, 35.576885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886578, 40.396702, 35.539402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364335, 0.530527, -0.765376,
		-0.308636, -0.706630, -0.636724,
		-0.878637, 0.468204, -0.093710,
		38.622986, 40.537163, 35.511288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126095, 40.159344, 34.811913>,  <39.238033, 40.209419, 35.576885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126095, 40.159344, 34.811913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.857910, 40.434097, 34.924103>,  <38.696999, 40.598949, 34.991417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.857910, 40.434097, 34.924103>,  <39.126095, 40.159344, 34.811913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857910, 40.434097, 34.924103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158608, 0.501981, -0.850211,
		-0.724789, -0.525552, -0.445507,
		-0.670466, 0.686884, 0.280474,
		38.656769, 40.640163, 35.008244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690281, 40.072945, 34.363079>,  <39.126095, 40.159344, 34.811913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690281, 40.072945, 34.363079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.676399, 40.456875, 34.474457>,  <38.668068, 40.687233, 34.541283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.676399, 40.456875, 34.474457>,  <38.690281, 40.072945, 34.363079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676399, 40.456875, 34.474457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192405, 0.279821, -0.940575,
		-0.980702, 0.020929, -0.194387,
		-0.034708, 0.959824, 0.278447,
		38.665985, 40.744823, 34.557991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356133, 40.360859, 33.759132>,  <38.690281, 40.072945, 34.363079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356133, 40.360859, 33.759132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.525249, 40.657635, 33.967278>,  <38.626720, 40.835701, 34.092163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.525249, 40.657635, 33.967278>,  <38.356133, 40.360859, 33.759132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525249, 40.657635, 33.967278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253411, 0.454505, -0.853937,
		-0.870073, 0.492905, 0.004147,
		0.422795, 0.741937, 0.520360,
		38.652088, 40.880215, 34.123386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161087, 40.960300, 33.374252>,  <38.356133, 40.360859, 33.759132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161087, 40.960300, 33.374252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470154, 41.093601, 33.590374>,  <38.655594, 41.173580, 33.720047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470154, 41.093601, 33.590374>,  <38.161087, 40.960300, 33.374252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470154, 41.093601, 33.590374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286704, 0.576190, -0.765379,
		-0.566383, 0.746290, 0.349658,
		0.772665, 0.333250, 0.540308,
		38.701954, 41.193577, 33.752468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152161, 41.672588, 33.289463>,  <38.161087, 40.960300, 33.374252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152161, 41.672588, 33.289463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.522110, 41.577862, 33.408482>,  <38.744080, 41.521027, 33.479893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.522110, 41.577862, 33.408482>,  <38.152161, 41.672588, 33.289463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522110, 41.577862, 33.408482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376100, 0.685337, -0.623588,
		-0.056247, 0.688646, 0.722913,
		0.924870, -0.236813, 0.297548,
		38.799572, 41.506817, 33.497746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547573, 42.341610, 33.362217>,  <38.152161, 41.672588, 33.289463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547573, 42.341610, 33.362217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.831486, 42.060917, 33.337589>,  <39.001831, 41.892502, 33.322811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.831486, 42.060917, 33.337589>,  <38.547573, 42.341610, 33.362217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831486, 42.060917, 33.337589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540711, 0.598758, -0.590864,
		0.451491, 0.386092, 0.804418,
		0.709780, -0.701728, -0.061570,
		39.044418, 41.850399, 33.319118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206852, 42.666504, 33.442654>,  <38.547573, 42.341610, 33.362217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206852, 42.666504, 33.442654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.258869, 42.322300, 33.245632>,  <39.290077, 42.115776, 33.127419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.258869, 42.322300, 33.245632>,  <39.206852, 42.666504, 33.442654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258869, 42.322300, 33.245632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489627, 0.487704, -0.722779,
		0.862181, -0.147177, 0.484751,
		0.130039, -0.860514, -0.492551,
		39.297882, 42.064144, 33.097866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865417, 42.612831, 33.354408>,  <39.206852, 42.666504, 33.442654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865417, 42.612831, 33.354408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742996, 42.370697, 33.060497>,  <39.669544, 42.225418, 32.884151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742996, 42.370697, 33.060497>,  <39.865417, 42.612831, 33.354408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742996, 42.370697, 33.060497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445169, 0.591240, -0.672503,
		0.841522, -0.532920, 0.088528,
		-0.306049, -0.605336, -0.734781,
		39.651180, 42.189095, 32.840061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418102, 42.632389, 32.889030>,  <39.865417, 42.612831, 33.354408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418102, 42.632389, 32.889030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138424, 42.451454, 32.667576>,  <39.970615, 42.342892, 32.534702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138424, 42.451454, 32.667576>,  <40.418102, 42.632389, 32.889030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138424, 42.451454, 32.667576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367074, 0.437390, -0.820942,
		0.613498, -0.777227, -0.139781,
		-0.699197, -0.452337, -0.553638,
		39.928665, 42.315754, 32.501484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781853, 42.225147, 32.287689>,  <40.418102, 42.632389, 32.889030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781853, 42.225147, 32.287689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.406212, 42.330212, 32.199059>,  <40.180828, 42.393250, 32.145878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.406212, 42.330212, 32.199059>,  <40.781853, 42.225147, 32.287689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406212, 42.330212, 32.199059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297819, 0.300400, -0.906126,
		-0.171445, -0.916934, -0.360332,
		-0.939101, 0.262664, -0.221578,
		40.124481, 42.409012, 32.132584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275333, 41.731380, 31.905046>,  <40.781853, 42.225147, 32.287689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275333, 41.731380, 31.905046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.635616, 41.750393, 32.077774>,  <41.851788, 41.761799, 32.181412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.635616, 41.750393, 32.077774>,  <41.275333, 41.731380, 31.905046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635616, 41.750393, 32.077774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311343, -0.622598, 0.717940,
		0.302972, -0.781097, -0.545980,
		0.900707, 0.047529, 0.431819,
		41.905830, 41.764652, 32.207321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382328, 41.048531, 32.154594>,  <41.275333, 41.731380, 31.905046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382328, 41.048531, 32.154594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.647942, 41.279301, 32.344849>,  <41.807308, 41.417763, 32.459000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.647942, 41.279301, 32.344849>,  <41.382328, 41.048531, 32.154594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647942, 41.279301, 32.344849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087680, -0.571651, 0.815799,
		0.742547, -0.583418, -0.329009,
		0.664030, 0.576921, 0.475632,
		41.847149, 41.452377, 32.487537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759892, 40.590237, 32.532936>,  <41.382328, 41.048531, 32.154594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759892, 40.590237, 32.532936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.798027, 40.958710, 32.683846>,  <41.820908, 41.179794, 32.774391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.798027, 40.958710, 32.683846>,  <41.759892, 40.590237, 32.532936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798027, 40.958710, 32.683846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073206, -0.384463, 0.920233,
		0.992749, -0.060119, -0.104092,
		0.095343, 0.921181, 0.377274,
		41.826630, 41.235065, 32.797028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388996, 40.634068, 32.936478>,  <41.759892, 40.590237, 32.532936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388996, 40.634068, 32.936478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.120968, 40.898811, 33.070911>,  <41.960152, 41.057655, 33.151569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.120968, 40.898811, 33.070911>,  <42.388996, 40.634068, 32.936478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120968, 40.898811, 33.070911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043354, -0.417091, 0.907830,
		0.741031, 0.622880, 0.250786,
		-0.670070, 0.661858, 0.336081,
		41.919949, 41.097370, 33.171738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572422, 40.748428, 33.601826>,  <42.388996, 40.634068, 32.936478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572422, 40.748428, 33.601826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.226570, 40.938122, 33.668182>,  <42.019058, 41.051937, 33.707996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.226570, 40.938122, 33.668182>,  <42.572422, 40.748428, 33.601826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226570, 40.938122, 33.668182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030447, -0.280119, 0.959482,
		0.501492, 0.834644, 0.227759,
		-0.864626, 0.474238, 0.165890,
		41.967182, 41.080395, 33.717949>
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
