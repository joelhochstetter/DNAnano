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
	<24.430515, 35.196106, 34.787937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.395000, 34.877834, 35.027607>,  <24.373692, 34.686871, 35.171410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.395000, 34.877834, 35.027607>,  <24.430515, 35.196106, 34.787937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.395000, 34.877834, 35.027607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940948, -0.264310, -0.211559,
		0.326701, 0.545009, 0.772160,
		-0.088788, -0.795679, 0.599175,
		24.368364, 34.639130, 35.207359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165642, 35.012611, 34.999718>,  <24.430515, 35.196106, 34.787937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165642, 35.012611, 34.999718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970814, 34.665157, 35.036026>,  <24.853916, 34.456684, 35.057812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970814, 34.665157, 35.036026>,  <25.165642, 35.012611, 34.999718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970814, 34.665157, 35.036026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841703, -0.494603, -0.216572,
		0.233019, -0.029081, 0.972037,
		-0.487071, -0.868632, 0.090775,
		24.824692, 34.404568, 35.063259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340805, 35.686462, 35.031242>,  <25.165642, 35.012611, 34.999718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340805, 35.686462, 35.031242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112764, 35.970356, 35.196777>,  <24.975941, 36.140694, 35.296097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112764, 35.970356, 35.196777>,  <25.340805, 35.686462, 35.031242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112764, 35.970356, 35.196777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458874, -0.692895, 0.556175,
		0.681484, 0.127176, 0.720699,
		-0.570101, 0.709734, 0.413839,
		24.941734, 36.183277, 35.320930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099680, 35.438393, 35.604195>,  <25.340805, 35.686462, 35.031242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099680, 35.438393, 35.604195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859644, 35.757828, 35.585667>,  <24.715622, 35.949490, 35.574551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859644, 35.757828, 35.585667>,  <25.099680, 35.438393, 35.604195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859644, 35.757828, 35.585667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649212, -0.452373, 0.611459,
		0.467351, 0.397002, 0.789919,
		-0.600088, 0.798591, -0.046321,
		24.679617, 35.997406, 35.571770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924246, 35.575153, 36.241364>,  <25.099680, 35.438393, 35.604195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924246, 35.575153, 36.241364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627966, 35.714874, 36.011806>,  <24.450199, 35.798706, 35.874073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627966, 35.714874, 36.011806>,  <24.924246, 35.575153, 36.241364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.627966, 35.714874, 36.011806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671383, -0.353398, 0.651425,
		0.024729, 0.867813, 0.496275,
		-0.740698, 0.349299, -0.573896,
		24.405756, 35.819664, 35.839638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707569, 35.513561, 36.044971>,  <24.924246, 35.575153, 36.241364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707569, 35.513561, 36.044971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579035, 35.333454, 36.378197>,  <25.501915, 35.225388, 36.578133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579035, 35.333454, 36.378197>,  <25.707569, 35.513561, 36.044971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579035, 35.333454, 36.378197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665274, -0.518715, -0.536978,
		0.673909, -0.726767, -0.132872,
		-0.321335, -0.450271, 0.833067,
		25.482634, 35.198372, 36.628117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173803, 35.557632, 36.496319>,  <25.707569, 35.513561, 36.044971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173803, 35.557632, 36.496319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504868, 35.422092, 36.317360>,  <26.703506, 35.340771, 36.209984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504868, 35.422092, 36.317360>,  <26.173803, 35.557632, 36.496319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504868, 35.422092, 36.317360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011455, 0.807202, -0.590165,
		0.561113, 0.483331, 0.671970,
		0.827660, -0.338847, -0.447395,
		26.753166, 35.320438, 36.183140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773516, 36.074177, 36.514610>,  <26.173803, 35.557632, 36.496319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773516, 36.074177, 36.514610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822268, 35.873489, 36.172050>,  <26.851519, 35.753078, 35.966515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822268, 35.873489, 36.172050>,  <26.773516, 36.074177, 36.514610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822268, 35.873489, 36.172050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045882, 0.864761, -0.500083,
		0.991484, 0.021656, 0.128415,
		0.121878, -0.501716, -0.856403,
		26.858831, 35.722973, 35.915131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350410, 36.346203, 36.204491>,  <26.773516, 36.074177, 36.514610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350410, 36.346203, 36.204491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130501, 36.179695, 35.914810>,  <26.998554, 36.079792, 35.741001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130501, 36.179695, 35.914810>,  <27.350410, 36.346203, 36.204491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130501, 36.179695, 35.914810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025040, 0.874805, -0.483828,
		0.834936, -0.247864, -0.491371,
		-0.549777, -0.416269, -0.724200,
		26.965569, 36.054813, 35.697548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720688, 36.674015, 35.631924>,  <27.350410, 36.346203, 36.204491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720688, 36.674015, 35.631924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359339, 36.542854, 35.521362>,  <27.142529, 36.464157, 35.455025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359339, 36.542854, 35.521362>,  <27.720688, 36.674015, 35.631924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359339, 36.542854, 35.521362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130974, 0.824669, -0.550242,
		0.408365, -0.460872, -0.787930,
		-0.903373, -0.327899, -0.276404,
		27.088327, 36.444485, 35.438442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799147, 36.467823, 34.959351>,  <27.720688, 36.674015, 35.631924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799147, 36.467823, 34.959351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403639, 36.516045, 34.994675>,  <27.166334, 36.544975, 35.015869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403639, 36.516045, 34.994675>,  <27.799147, 36.467823, 34.959351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403639, 36.516045, 34.994675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002394, 0.578096, -0.815965,
		-0.149415, -0.807015, -0.571317,
		-0.988772, 0.120550, 0.088308,
		27.107008, 36.552208, 35.021168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547554, 36.390625, 34.329803>,  <27.799147, 36.467823, 34.959351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547554, 36.390625, 34.329803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289816, 36.615284, 34.537407>,  <27.135172, 36.750080, 34.661968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289816, 36.615284, 34.537407>,  <27.547554, 36.390625, 34.329803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289816, 36.615284, 34.537407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096989, 0.613181, -0.783965,
		-0.758559, -0.555483, -0.340628,
		-0.644346, 0.561646, 0.519010,
		27.096512, 36.783779, 34.693111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160088, 36.727283, 33.815212>,  <27.547554, 36.390625, 34.329803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160088, 36.727283, 33.815212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043434, 36.942802, 34.131351>,  <26.973442, 37.072113, 34.321033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043434, 36.942802, 34.131351>,  <27.160088, 36.727283, 33.815212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043434, 36.942802, 34.131351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160059, 0.787125, -0.595663,
		-0.943044, -0.300217, -0.143312,
		-0.291633, 0.538798, 0.790346,
		26.955944, 37.104443, 34.368454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465193, 37.121170, 33.710953>,  <27.160088, 36.727283, 33.815212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465193, 37.121170, 33.710953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637379, 37.326164, 34.008156>,  <26.740690, 37.449162, 34.186478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637379, 37.326164, 34.008156>,  <26.465193, 37.121170, 33.710953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637379, 37.326164, 34.008156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198219, 0.856757, -0.476106,
		-0.880574, 0.057668, 0.470387,
		0.430463, 0.512486, 0.743007,
		26.766518, 37.479912, 34.231056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056868, 37.736134, 33.673038>,  <26.465193, 37.121170, 33.710953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056868, 37.736134, 33.673038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367620, 37.808022, 33.914421>,  <26.554071, 37.851154, 34.059250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367620, 37.808022, 33.914421>,  <26.056868, 37.736134, 33.673038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367620, 37.808022, 33.914421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045316, 0.971874, -0.231101,
		-0.628015, 0.152192, 0.763174,
		0.776881, 0.179719, 0.603455,
		26.600685, 37.861938, 34.095459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899670, 38.337475, 34.085438>,  <26.056868, 37.736134, 33.673038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899670, 38.337475, 34.085438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298037, 38.301395, 34.084229>,  <26.537058, 38.279747, 34.083504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298037, 38.301395, 34.084229>,  <25.899670, 38.337475, 34.085438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298037, 38.301395, 34.084229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086515, 0.963727, -0.252480,
		0.025687, 0.251189, 0.967597,
		0.995919, -0.090197, -0.003023,
		26.596813, 38.274338, 34.083321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174692, 38.933155, 34.464462>,  <25.899670, 38.337475, 34.085438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174692, 38.933155, 34.464462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488731, 38.809750, 34.249634>,  <26.677155, 38.735706, 34.120739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488731, 38.809750, 34.249634>,  <26.174692, 38.933155, 34.464462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488731, 38.809750, 34.249634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290437, 0.949248, -0.120724,
		0.547057, -0.061204, 0.834855,
		0.785096, -0.308516, -0.537068,
		26.724260, 38.717194, 34.088512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665894, 39.388763, 34.675640>,  <26.174692, 38.933155, 34.464462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665894, 39.388763, 34.675640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801369, 39.222031, 34.338230>,  <26.882654, 39.121990, 34.135784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801369, 39.222031, 34.338230>,  <26.665894, 39.388763, 34.675640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801369, 39.222031, 34.338230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234216, 0.905644, -0.353486,
		0.911280, -0.077845, 0.404361,
		0.338690, -0.416833, -0.843528,
		26.902975, 39.096981, 34.085171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306297, 39.735661, 34.561954>,  <26.665894, 39.388763, 34.675640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306297, 39.735661, 34.561954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196733, 39.578056, 34.211018>,  <27.130995, 39.483494, 34.000454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196733, 39.578056, 34.211018>,  <27.306297, 39.735661, 34.561954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196733, 39.578056, 34.211018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345799, 0.810878, -0.472123,
		0.897439, -0.432702, -0.085857,
		-0.273908, -0.394012, -0.877342,
		27.114561, 39.459854, 33.947815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861643, 39.724461, 33.988186>,  <27.306297, 39.735661, 34.561954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861643, 39.724461, 33.988186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505301, 39.719193, 33.806545>,  <27.291496, 39.716030, 33.697563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505301, 39.719193, 33.806545>,  <27.861643, 39.724461, 33.988186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505301, 39.719193, 33.806545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258621, 0.807086, -0.530779,
		0.373489, -0.590286, -0.715589,
		-0.890854, -0.013174, -0.454099,
		27.238045, 39.715240, 33.670315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010305, 39.844166, 33.153473>,  <27.861643, 39.724461, 33.988186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010305, 39.844166, 33.153473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625929, 39.951794, 33.179379>,  <27.395304, 40.016373, 33.194920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625929, 39.951794, 33.179379>,  <28.010305, 39.844166, 33.153473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625929, 39.951794, 33.179379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098786, 0.552064, -0.827929,
		-0.258527, -0.789193, -0.557081,
		-0.960940, 0.269074, 0.064762,
		27.337646, 40.032516, 33.198807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726568, 40.028690, 32.414032>,  <28.010305, 39.844166, 33.153473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726568, 40.028690, 32.414032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471025, 40.200764, 32.669155>,  <27.317699, 40.304008, 32.822231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471025, 40.200764, 32.669155>,  <27.726568, 40.028690, 32.414032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471025, 40.200764, 32.669155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160056, 0.736591, -0.657127,
		-0.752492, -0.521896, -0.401723,
		-0.638857, 0.430184, 0.637811,
		27.279367, 40.329819, 32.860500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280195, 40.296040, 31.955256>,  <27.726568, 40.028690, 32.414032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280195, 40.296040, 31.955256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193298, 40.494934, 32.291245>,  <27.141159, 40.614273, 32.492840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193298, 40.494934, 32.291245>,  <27.280195, 40.296040, 31.955256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193298, 40.494934, 32.291245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132543, 0.837529, -0.530073,
		-0.967077, -0.226487, -0.116042,
		-0.217243, 0.497241, 0.839974,
		27.128126, 40.644108, 32.543236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766069, 40.758682, 31.791571>,  <27.280195, 40.296040, 31.955256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766069, 40.758682, 31.791571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923048, 40.921516, 32.121483>,  <27.017235, 41.019218, 32.319431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923048, 40.921516, 32.121483>,  <26.766069, 40.758682, 31.791571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923048, 40.921516, 32.121483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020348, 0.892659, -0.450273,
		-0.919550, 0.193490, 0.342036,
		0.392445, 0.407089, 0.824782,
		27.040781, 41.043644, 32.368916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354912, 41.288078, 31.922468>,  <26.766069, 40.758682, 31.791571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354912, 41.288078, 31.922468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696703, 41.377842, 32.109875>,  <26.901777, 41.431702, 32.222321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696703, 41.377842, 32.109875>,  <26.354912, 41.288078, 31.922468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696703, 41.377842, 32.109875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052334, 0.860107, -0.507423,
		-0.516846, 0.458101, 0.723197,
		0.854477, 0.224411, 0.468517,
		26.953047, 41.445164, 32.250431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353659, 42.036514, 32.061054>,  <26.354912, 41.288078, 31.922468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353659, 42.036514, 32.061054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729839, 41.907215, 32.018986>,  <26.955547, 41.829636, 31.993746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729839, 41.907215, 32.018986>,  <26.353659, 42.036514, 32.061054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729839, 41.907215, 32.018986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241818, 0.853629, -0.461348,
		0.238905, 0.408444, 0.880964,
		0.940451, -0.323251, -0.105167,
		27.011974, 41.810238, 31.987436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992764, 42.444958, 32.429031>,  <26.353659, 42.036514, 32.061054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992764, 42.444958, 32.429031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138426, 42.263073, 32.103916>,  <27.225824, 42.153942, 31.908846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138426, 42.263073, 32.103916>,  <26.992764, 42.444958, 32.429031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138426, 42.263073, 32.103916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433205, 0.855256, -0.284377,
		0.824453, -0.248547, 0.508431,
		0.364158, -0.454711, -0.812790,
		27.247673, 42.126659, 31.860079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330032, 43.085964, 32.339100>,  <26.992764, 42.444958, 32.429031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330032, 43.085964, 32.339100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360949, 42.859936, 32.010532>,  <27.379498, 42.724319, 31.813393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360949, 42.859936, 32.010532>,  <27.330032, 43.085964, 32.339100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360949, 42.859936, 32.010532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186384, 0.817546, -0.544866,
		0.979432, -0.110987, 0.168508,
		0.077290, -0.565067, -0.821417,
		27.384136, 42.690414, 31.764107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873142, 43.367401, 31.969217>,  <27.330032, 43.085964, 32.339100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873142, 43.367401, 31.969217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696003, 43.141159, 31.690943>,  <27.589720, 43.005413, 31.523977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696003, 43.141159, 31.690943>,  <27.873142, 43.367401, 31.969217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696003, 43.141159, 31.690943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205965, 0.819344, -0.535026,
		0.872619, -0.093648, -0.479339,
		-0.442848, -0.565601, -0.695688,
		27.563148, 42.971478, 31.482237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195253, 43.409016, 31.339462>,  <27.873142, 43.367401, 31.969217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195253, 43.409016, 31.339462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812944, 43.303886, 31.286665>,  <27.583559, 43.240810, 31.254986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812944, 43.303886, 31.286665>,  <28.195253, 43.409016, 31.339462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812944, 43.303886, 31.286665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156857, 0.835165, -0.527158,
		0.248785, -0.483139, -0.839454,
		-0.955773, -0.262823, -0.131993,
		27.526213, 43.225040, 31.247066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807196, 43.212849, 30.620779>,  <28.195253, 43.409016, 31.339462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807196, 43.212849, 30.620779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590710, 43.424000, 30.882597>,  <27.460817, 43.550690, 31.039688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590710, 43.424000, 30.882597>,  <27.807196, 43.212849, 30.620779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590710, 43.424000, 30.882597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052717, 0.755569, -0.652944,
		-0.839231, -0.387888, -0.381096,
		-0.541214, 0.527880, 0.654545,
		27.428345, 43.582363, 31.078960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105707, 43.193398, 29.912210>,  <27.807196, 43.212849, 30.620779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105707, 43.193398, 29.912210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166689, 43.095406, 29.529224>,  <28.203278, 43.036610, 29.299433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166689, 43.095406, 29.529224>,  <28.105707, 43.193398, 29.912210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166689, 43.095406, 29.529224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414309, -0.863714, 0.286960,
		-0.897277, -0.440436, -0.030182,
		0.152456, -0.244978, -0.957467,
		28.212425, 43.021912, 29.241983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757175, 42.585667, 29.735165>,  <28.105707, 43.193398, 29.912210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757175, 42.585667, 29.735165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093586, 42.610111, 29.520151>,  <28.295433, 42.624779, 29.391144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093586, 42.610111, 29.520151>,  <27.757175, 42.585667, 29.735165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093586, 42.610111, 29.520151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350295, -0.818702, 0.454996,
		-0.412272, -0.570958, -0.709957,
		0.841026, 0.061112, -0.537531,
		28.345894, 42.628445, 29.358892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897606, 42.023491, 29.306841>,  <27.757175, 42.585667, 29.735165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897606, 42.023491, 29.306841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231504, 42.186779, 29.454657>,  <28.431843, 42.284752, 29.543346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231504, 42.186779, 29.454657>,  <27.897606, 42.023491, 29.306841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231504, 42.186779, 29.454657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242742, -0.875191, 0.418470,
		0.494242, -0.259614, -0.829654,
		0.834746, 0.408217, 0.369537,
		28.481928, 42.309242, 29.565517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656605, 41.927929, 29.008097>,  <27.897606, 42.023491, 29.306841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656605, 41.927929, 29.008097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629507, 41.971550, 29.404787>,  <28.613249, 41.997723, 29.642801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629507, 41.971550, 29.404787>,  <28.656605, 41.927929, 29.008097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629507, 41.971550, 29.404787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255994, -0.958831, 0.122922,
		0.964302, 0.262203, 0.037037,
		-0.067743, 0.109053, 0.991725,
		28.609184, 42.004265, 29.702305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202150, 41.538181, 29.257008>,  <28.656605, 41.927929, 29.008097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202150, 41.538181, 29.257008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927855, 41.555050, 29.547657>,  <28.763277, 41.565170, 29.722046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927855, 41.555050, 29.547657>,  <29.202150, 41.538181, 29.257008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927855, 41.555050, 29.547657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092803, -0.985105, 0.144760,
		0.721906, 0.166701, 0.671612,
		-0.685740, 0.042175, 0.726623,
		28.722132, 41.567703, 29.765644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487144, 41.133675, 29.722866>,  <29.202150, 41.538181, 29.257008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487144, 41.133675, 29.722866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107754, 41.160290, 29.846783>,  <28.880119, 41.176258, 29.921133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107754, 41.160290, 29.846783>,  <29.487144, 41.133675, 29.722866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107754, 41.160290, 29.846783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026085, -0.990783, 0.132925,
		0.315778, 0.117995, 0.941468,
		-0.948474, 0.066534, 0.309789,
		28.823212, 41.180248, 29.939720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477386, 40.780590, 30.325394>,  <29.487144, 41.133675, 29.722866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477386, 40.780590, 30.325394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101931, 40.795719, 30.188265>,  <28.876657, 40.804798, 30.105988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101931, 40.795719, 30.188265>,  <29.477386, 40.780590, 30.325394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101931, 40.795719, 30.188265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114037, -0.972101, 0.204975,
		-0.325505, 0.231492, 0.916765,
		-0.938638, 0.037825, -0.342822,
		28.820339, 40.807068, 30.085419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087534, 40.532082, 30.821325>,  <29.477386, 40.780590, 30.325394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087534, 40.532082, 30.821325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827154, 40.510262, 30.518461>,  <28.670927, 40.497169, 30.336742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827154, 40.510262, 30.518461>,  <29.087534, 40.532082, 30.821325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827154, 40.510262, 30.518461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255625, -0.923413, 0.286294,
		-0.714788, 0.379912, 0.587150,
		-0.650948, -0.054550, -0.757160,
		28.631870, 40.493896, 30.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465263, 40.244476, 31.106073>,  <29.087534, 40.532082, 30.821325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465263, 40.244476, 31.106073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447739, 40.174885, 30.712564>,  <28.437223, 40.133129, 30.476460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447739, 40.174885, 30.712564>,  <28.465263, 40.244476, 31.106073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447739, 40.174885, 30.712564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295148, -0.938512, 0.179118,
		-0.954446, 0.298207, -0.010231,
		-0.043812, -0.173978, -0.983774,
		28.434595, 40.122692, 30.417433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759809, 40.035770, 30.905659>,  <28.465263, 40.244476, 31.106073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759809, 40.035770, 30.905659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998503, 39.880615, 30.624674>,  <28.141718, 39.787521, 30.456083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998503, 39.880615, 30.624674>,  <27.759809, 40.035770, 30.905659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998503, 39.880615, 30.624674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367724, -0.910264, 0.190260,
		-0.713225, 0.144778, -0.685821,
		0.596732, -0.387891, -0.702461,
		28.177523, 39.764248, 30.413935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402273, 39.643642, 30.316128>,  <27.759809, 40.035770, 30.905659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402273, 39.643642, 30.316128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773344, 39.494423, 30.309845>,  <27.995987, 39.404892, 30.306076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773344, 39.494423, 30.309845>,  <27.402273, 39.643642, 30.316128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773344, 39.494423, 30.309845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364175, -0.913294, 0.182404,
		-0.082389, -0.163493, -0.983098,
		0.927679, -0.373048, -0.015706,
		28.051647, 39.382507, 30.305134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356161, 38.980488, 30.152086>,  <27.402273, 39.643642, 30.316128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356161, 38.980488, 30.152086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720606, 38.975941, 30.316887>,  <27.939272, 38.973213, 30.415768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720606, 38.975941, 30.316887>,  <27.356161, 38.980488, 30.152086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720606, 38.975941, 30.316887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172374, -0.918513, 0.355840,
		0.374383, -0.395228, -0.838828,
		0.911112, -0.011372, 0.412002,
		27.993940, 38.972530, 30.440487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574205, 38.290516, 30.161562>,  <27.356161, 38.980488, 30.152086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574205, 38.290516, 30.161562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845448, 38.414421, 30.428162>,  <28.008192, 38.488766, 30.588121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845448, 38.414421, 30.428162>,  <27.574205, 38.290516, 30.161562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845448, 38.414421, 30.428162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009848, -0.902932, 0.429671,
		0.734900, -0.297925, -0.609231,
		0.678104, 0.309765, 0.666499,
		28.048880, 38.507351, 30.628111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195467, 37.752560, 30.103157>,  <27.574205, 38.290516, 30.161562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195467, 37.752560, 30.103157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252823, 37.946377, 30.448332>,  <28.287237, 38.062668, 30.655437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252823, 37.946377, 30.448332>,  <28.195467, 37.752560, 30.103157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252823, 37.946377, 30.448332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144402, -0.872860, 0.466115,
		0.979075, 0.057775, -0.195127,
		0.143389, 0.484538, 0.862938,
		28.295839, 38.091740, 30.707212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648691, 37.308464, 30.475546>,  <28.195467, 37.752560, 30.103157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648691, 37.308464, 30.475546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469036, 37.545692, 30.742840>,  <28.361242, 37.688030, 30.903217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469036, 37.545692, 30.742840>,  <28.648691, 37.308464, 30.475546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469036, 37.545692, 30.742840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001813, -0.748522, 0.663108,
		0.893460, 0.296616, 0.337265,
		-0.449139, 0.593072, 0.668237,
		28.334295, 37.723614, 30.943312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096426, 37.340004, 31.029121>,  <28.648691, 37.308464, 30.475546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096426, 37.340004, 31.029121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737484, 37.447384, 31.169226>,  <28.522118, 37.511814, 31.253288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737484, 37.447384, 31.169226>,  <29.096426, 37.340004, 31.029121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737484, 37.447384, 31.169226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105045, -0.640946, 0.760364,
		0.428622, 0.719111, 0.546958,
		-0.897357, 0.268453, 0.350263,
		28.468277, 37.527920, 31.274305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181763, 37.287579, 31.616674>,  <29.096426, 37.340004, 31.029121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181763, 37.287579, 31.616674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787945, 37.320927, 31.678276>,  <28.551653, 37.340935, 31.715237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787945, 37.320927, 31.678276>,  <29.181763, 37.287579, 31.616674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787945, 37.320927, 31.678276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077179, -0.582834, 0.808917,
		0.157198, 0.808303, 0.567393,
		-0.984547, 0.083369, 0.154005,
		28.492580, 37.345936, 31.724478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153217, 37.537601, 32.226204>,  <29.181763, 37.287579, 31.616674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153217, 37.537601, 32.226204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835258, 37.311848, 32.137115>,  <28.644484, 37.176395, 32.083660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835258, 37.311848, 32.137115>,  <29.153217, 37.537601, 32.226204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835258, 37.311848, 32.137115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136560, -0.524084, 0.840647,
		-0.591175, 0.637814, 0.493666,
		-0.794899, -0.564384, -0.222725,
		28.596788, 37.142532, 32.070297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007866, 37.398403, 32.852272>,  <29.153217, 37.537601, 32.226204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007866, 37.398403, 32.852272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765152, 37.137882, 32.670013>,  <28.619524, 36.981571, 32.560658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765152, 37.137882, 32.670013>,  <29.007866, 37.398403, 32.852272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765152, 37.137882, 32.670013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127641, -0.485962, 0.864609,
		-0.784551, 0.582792, 0.211741,
		-0.606785, -0.651303, -0.455650,
		28.583117, 36.942490, 32.533318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443325, 37.373249, 33.336594>,  <29.007866, 37.398403, 32.852272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443325, 37.373249, 33.336594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461435, 37.049225, 33.102757>,  <28.472301, 36.854809, 32.962456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461435, 37.049225, 33.102757>,  <28.443325, 37.373249, 33.336594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461435, 37.049225, 33.102757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154097, -0.583850, 0.797103,
		-0.987018, 0.053995, -0.151262,
		0.045274, -0.810064, -0.584591,
		28.475018, 36.806206, 32.927380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945290, 36.849911, 33.659634>,  <28.443325, 37.373249, 33.336594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945290, 36.849911, 33.659634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204098, 36.657612, 33.422905>,  <28.359383, 36.542233, 33.280869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204098, 36.657612, 33.422905>,  <27.945290, 36.849911, 33.659634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204098, 36.657612, 33.422905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072402, -0.733937, 0.675348,
		-0.759034, -0.479808, -0.440059,
		0.647013, -0.480751, -0.591821,
		28.398203, 36.513386, 33.245361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706633, 36.128960, 33.659088>,  <27.945290, 36.849911, 33.659634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706633, 36.128960, 33.659088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095562, 36.105762, 33.568562>,  <28.328920, 36.091843, 33.514244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095562, 36.105762, 33.568562>,  <27.706633, 36.128960, 33.659088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095562, 36.105762, 33.568562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141601, -0.624223, 0.768307,
		-0.185828, -0.779091, -0.598736,
		0.972326, -0.057991, -0.226319,
		28.387260, 36.088364, 33.500668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946901, 35.427078, 33.717945>,  <27.706633, 36.128960, 33.659088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946901, 35.427078, 33.717945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295729, 35.622257, 33.732937>,  <28.505024, 35.739365, 33.741932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295729, 35.622257, 33.732937>,  <27.946901, 35.427078, 33.717945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295729, 35.622257, 33.732937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358699, -0.689404, 0.629331,
		0.332917, -0.535377, -0.776233,
		0.872067, 0.487949, 0.037475,
		28.557348, 35.768642, 33.744179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396452, 34.868958, 33.651421>,  <27.946901, 35.427078, 33.717945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396452, 34.868958, 33.651421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601501, 35.166821, 33.822395>,  <28.724531, 35.345539, 33.924980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601501, 35.166821, 33.822395>,  <28.396452, 34.868958, 33.651421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601501, 35.166821, 33.822395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514247, -0.664936, 0.541674,
		0.687582, -0.057864, -0.723798,
		0.512622, 0.744656, 0.427442,
		28.755287, 35.390217, 33.950626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030930, 34.609074, 33.619495>,  <28.396452, 34.868958, 33.651421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030930, 34.609074, 33.619495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031528, 34.891136, 33.903118>,  <29.031887, 35.060371, 34.073292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031528, 34.891136, 33.903118>,  <29.030930, 34.609074, 33.619495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031528, 34.891136, 33.903118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415239, -0.645474, 0.641046,
		0.909711, 0.293469, -0.293772,
		0.001495, 0.705152, 0.709055,
		29.031977, 35.102680, 34.115833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658869, 34.483974, 34.003563>,  <29.030930, 34.609074, 33.619495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658869, 34.483974, 34.003563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432367, 34.701160, 34.251610>,  <29.296467, 34.831470, 34.400436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432367, 34.701160, 34.251610>,  <29.658869, 34.483974, 34.003563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432367, 34.701160, 34.251610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354557, -0.518726, 0.777954,
		0.744072, 0.660387, 0.101219,
		-0.566256, 0.542966, 0.620115,
		29.262491, 34.864052, 34.437645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110668, 34.802555, 34.488358>,  <29.658869, 34.483974, 34.003563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110668, 34.802555, 34.488358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747217, 34.794575, 34.655209>,  <29.529146, 34.789787, 34.755318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747217, 34.794575, 34.655209>,  <30.110668, 34.802555, 34.488358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747217, 34.794575, 34.655209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386109, -0.420691, 0.820938,
		0.159103, 0.906985, 0.389955,
		-0.908629, -0.019952, 0.417128,
		29.474628, 34.788589, 34.780346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286253, 34.865578, 35.089733>,  <30.110668, 34.802555, 34.488358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286253, 34.865578, 35.089733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913942, 34.725224, 35.130783>,  <29.690556, 34.641010, 35.155411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913942, 34.725224, 35.130783>,  <30.286253, 34.865578, 35.089733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913942, 34.725224, 35.130783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233576, -0.354838, 0.905280,
		-0.281235, 0.866585, 0.412234,
		-0.930779, -0.350885, 0.102621,
		29.634708, 34.619957, 35.161568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007563, 34.724018, 35.084530>,  <30.286253, 34.865578, 35.089733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007563, 34.724018, 35.084530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398510, 34.709965, 35.167973>,  <31.633078, 34.701534, 35.218037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398510, 34.709965, 35.167973>,  <31.007563, 34.724018, 35.084530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398510, 34.709965, 35.167973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168027, 0.470169, 0.866434,
		-0.128517, -0.881877, 0.453626,
		0.977369, -0.035130, 0.208604,
		31.691721, 34.699425, 35.230553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277437, 34.245392, 35.633621>,  <31.007563, 34.724018, 35.084530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277437, 34.245392, 35.633621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453482, 34.600639, 35.580620>,  <31.559109, 34.813786, 35.548820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453482, 34.600639, 35.580620>,  <31.277437, 34.245392, 35.633621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453482, 34.600639, 35.580620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290468, 0.280437, 0.914868,
		0.849666, -0.364154, 0.381391,
		0.440109, 0.888114, -0.132502,
		31.585514, 34.867073, 35.540871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784269, 34.307178, 36.248238>,  <31.277437, 34.245392, 35.633621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784269, 34.307178, 36.248238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599331, 34.637966, 36.120262>,  <31.488369, 34.836437, 36.043476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599331, 34.637966, 36.120262>,  <31.784269, 34.307178, 36.248238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599331, 34.637966, 36.120262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354733, 0.158183, 0.921489,
		0.812651, 0.539539, 0.220218,
		-0.462344, 0.826968, -0.319940,
		31.460629, 34.886055, 36.024281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938028, 34.783768, 36.683567>,  <31.784269, 34.307178, 36.248238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938028, 34.783768, 36.683567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590122, 34.868862, 36.505466>,  <31.381378, 34.919918, 36.398605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590122, 34.868862, 36.505466>,  <31.938028, 34.783768, 36.683567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590122, 34.868862, 36.505466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361579, 0.339284, 0.868416,
		0.335810, 0.916314, -0.218177,
		-0.869766, 0.212734, -0.445255,
		31.329193, 34.932682, 36.371891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303425, 34.750378, 36.045906>,  <31.938028, 34.783768, 36.683567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303425, 34.750378, 36.045906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633156, 34.666138, 35.835709>,  <32.830994, 34.615593, 35.709591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633156, 34.666138, 35.835709>,  <32.303425, 34.750378, 36.045906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633156, 34.666138, 35.835709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344319, -0.550302, 0.760666,
		-0.449368, -0.807972, -0.381117,
		0.824326, -0.210593, -0.525488,
		32.880455, 34.602959, 35.678062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927223, 34.352032, 36.268719>,  <32.303425, 34.750378, 36.045906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927223, 34.352032, 36.268719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255222, 34.124607, 36.295086>,  <33.452023, 33.988152, 36.310905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255222, 34.124607, 36.295086>,  <32.927223, 34.352032, 36.268719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255222, 34.124607, 36.295086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261223, 0.474211, 0.840765,
		-0.509288, -0.672203, 0.537372,
		0.819993, -0.568565, 0.065915,
		33.501221, 33.954037, 36.314861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037064, 34.723007, 36.873352>,  <32.927223, 34.352032, 36.268719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037064, 34.723007, 36.873352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363056, 34.494541, 36.834213>,  <33.558651, 34.357460, 36.810730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363056, 34.494541, 36.834213>,  <33.037064, 34.723007, 36.873352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363056, 34.494541, 36.834213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422458, 0.470042, 0.774977,
		-0.396649, -0.672928, 0.624370,
		0.814984, -0.571164, -0.097842,
		33.607552, 34.323193, 36.804859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193859, 34.400547, 37.516167>,  <33.037064, 34.723007, 36.873352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193859, 34.400547, 37.516167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511795, 34.478912, 37.286438>,  <33.702557, 34.525932, 37.148602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511795, 34.478912, 37.286438>,  <33.193859, 34.400547, 37.516167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511795, 34.478912, 37.286438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442785, 0.459915, 0.769688,
		0.414923, -0.866083, 0.278818,
		0.794846, 0.195905, -0.574318,
		33.750248, 34.537685, 37.114143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725960, 34.328156, 37.874741>,  <33.193859, 34.400547, 37.516167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725960, 34.328156, 37.874741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880318, 34.563503, 37.590515>,  <33.972935, 34.704712, 37.419979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880318, 34.563503, 37.590515>,  <33.725960, 34.328156, 37.874741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880318, 34.563503, 37.590515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616756, 0.408260, 0.673005,
		0.686071, -0.697958, -0.205333,
		0.385900, 0.588370, -0.710565,
		33.996086, 34.740013, 37.377346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464146, 34.249458, 37.927673>,  <33.725960, 34.328156, 37.874741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464146, 34.249458, 37.927673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370926, 34.590378, 37.740364>,  <34.314995, 34.794930, 37.627979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370926, 34.590378, 37.740364>,  <34.464146, 34.249458, 37.927673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370926, 34.590378, 37.740364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476487, 0.519850, 0.709025,
		0.847730, -0.057887, -0.527260,
		-0.233052, 0.852294, -0.468275,
		34.301010, 34.846066, 37.599880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104698, 34.552959, 37.834885>,  <34.464146, 34.249458, 37.927673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104698, 34.552959, 37.834885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826347, 34.839405, 37.813213>,  <34.659336, 35.011272, 37.800209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826347, 34.839405, 37.813213>,  <35.104698, 34.552959, 37.834885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826347, 34.839405, 37.813213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536428, 0.568459, 0.623779,
		0.477496, 0.405009, -0.779721,
		-0.695875, 0.716116, -0.054179,
		34.617584, 35.054241, 37.796959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438778, 35.111851, 37.813511>,  <35.104698, 34.552959, 37.834885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438778, 35.111851, 37.813511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080975, 35.235302, 37.942875>,  <34.866291, 35.309372, 38.020493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080975, 35.235302, 37.942875>,  <35.438778, 35.111851, 37.813511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080975, 35.235302, 37.942875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445944, 0.565328, 0.693929,
		0.031334, 0.764952, -0.643325,
		-0.894512, 0.308631, 0.323411,
		34.812622, 35.327892, 38.039898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584370, 35.799854, 38.017220>,  <35.438778, 35.111851, 37.813511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584370, 35.799854, 38.017220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214142, 35.726685, 38.149807>,  <34.992004, 35.682785, 38.229359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214142, 35.726685, 38.149807>,  <35.584370, 35.799854, 38.017220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214142, 35.726685, 38.149807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158766, 0.607284, 0.778460,
		-0.343690, 0.773141, -0.533039,
		-0.925565, -0.182921, 0.331465,
		34.936474, 35.671810, 38.249245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210678, 36.527092, 38.192131>,  <35.584370, 35.799854, 38.017220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210678, 36.527092, 38.192131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007984, 36.244415, 38.389637>,  <34.886368, 36.074810, 38.508141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007984, 36.244415, 38.389637>,  <35.210678, 36.527092, 38.192131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007984, 36.244415, 38.389637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061111, 0.541861, 0.838243,
		-0.859936, 0.454938, -0.231391,
		-0.506731, -0.706695, 0.493767,
		34.855965, 36.032406, 38.537766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537560, 36.849251, 38.505692>,  <35.210678, 36.527092, 38.192131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537560, 36.849251, 38.505692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585510, 36.513496, 38.717751>,  <34.614281, 36.312042, 38.844986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585510, 36.513496, 38.717751>,  <34.537560, 36.849251, 38.505692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585510, 36.513496, 38.717751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101426, 0.541557, 0.834523,
		-0.987594, -0.046269, 0.150055,
		0.119876, -0.839390, 0.530146,
		34.621471, 36.261681, 38.876793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022911, 36.825035, 39.037323>,  <34.537560, 36.849251, 38.505692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022911, 36.825035, 39.037323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318306, 36.585697, 39.161652>,  <34.495544, 36.442093, 39.236248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318306, 36.585697, 39.161652>,  <34.022911, 36.825035, 39.037323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318306, 36.585697, 39.161652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011889, 0.472463, 0.881270,
		-0.674158, -0.647115, 0.356024,
		0.738491, -0.598348, 0.310822,
		34.539852, 36.406193, 39.254898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791218, 36.613319, 39.753269>,  <34.022911, 36.825035, 39.037323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791218, 36.613319, 39.753269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184803, 36.575260, 39.692909>,  <34.420952, 36.552425, 39.656693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184803, 36.575260, 39.692909>,  <33.791218, 36.613319, 39.753269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184803, 36.575260, 39.692909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177927, 0.462516, 0.868574,
		-0.012853, -0.881491, 0.472027,
		0.983960, -0.095150, -0.150896,
		34.479992, 36.546715, 39.647640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975273, 36.455135, 40.343765>,  <33.791218, 36.613319, 39.753269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975273, 36.455135, 40.343765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333527, 36.548569, 40.192364>,  <34.548481, 36.604630, 40.101521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333527, 36.548569, 40.192364>,  <33.975273, 36.455135, 40.343765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333527, 36.548569, 40.192364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304023, 0.299652, 0.904311,
		0.324661, -0.925010, 0.197362,
		0.895637, 0.233591, -0.378510,
		34.602219, 36.618645, 40.078812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494270, 36.133385, 40.765396>,  <33.975273, 36.455135, 40.343765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494270, 36.133385, 40.765396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706383, 36.424000, 40.590611>,  <34.833652, 36.598370, 40.485741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706383, 36.424000, 40.590611>,  <34.494270, 36.133385, 40.765396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706383, 36.424000, 40.590611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396183, 0.243311, 0.885347,
		0.749558, -0.642604, -0.158819,
		0.530285, 0.726540, -0.436965,
		34.865467, 36.641960, 40.459522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209892, 36.086014, 40.969372>,  <34.494270, 36.133385, 40.765396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209892, 36.086014, 40.969372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164032, 36.472115, 40.875446>,  <35.136517, 36.703777, 40.819092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164032, 36.472115, 40.875446>,  <35.209892, 36.086014, 40.969372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164032, 36.472115, 40.875446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192915, 0.253505, 0.947902,
		0.974494, 0.063377, -0.215276,
		-0.114648, 0.965256, -0.234813,
		35.129639, 36.761692, 40.805004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726719, 36.421253, 41.164394>,  <35.209892, 36.086014, 40.969372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726719, 36.421253, 41.164394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472000, 36.729237, 41.148102>,  <35.319168, 36.914028, 41.138329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472000, 36.729237, 41.148102>,  <35.726719, 36.421253, 41.164394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472000, 36.729237, 41.148102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239240, 0.247527, 0.938880,
		0.732979, 0.588128, -0.341828,
		-0.636793, 0.769958, -0.040728,
		35.280964, 36.960224, 41.135883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060234, 37.043076, 41.453495>,  <35.726719, 36.421253, 41.164394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060234, 37.043076, 41.453495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675201, 37.149551, 41.473850>,  <35.444183, 37.213436, 41.486061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675201, 37.149551, 41.473850>,  <36.060234, 37.043076, 41.453495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675201, 37.149551, 41.473850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189216, 0.525689, 0.829367,
		0.194018, 0.807958, -0.556383,
		-0.962577, 0.266188, 0.050885,
		35.386429, 37.229408, 41.489117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172741, 37.635555, 41.733967>,  <36.060234, 37.043076, 41.453495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172741, 37.635555, 41.733967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780411, 37.582405, 41.791000>,  <35.545013, 37.550514, 41.825222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780411, 37.582405, 41.791000>,  <36.172741, 37.635555, 41.733967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780411, 37.582405, 41.791000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059514, 0.492459, 0.868298,
		-0.185592, 0.860133, -0.475108,
		-0.980823, -0.132873, 0.142586,
		35.486164, 37.542542, 41.833775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915058, 38.259415, 42.133812>,  <36.172741, 37.635555, 41.733967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915058, 38.259415, 42.133812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645355, 37.972305, 42.203293>,  <35.483532, 37.800037, 42.244980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645355, 37.972305, 42.203293>,  <35.915058, 38.259415, 42.133812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645355, 37.972305, 42.203293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120856, 0.339281, 0.932889,
		-0.728539, 0.608016, -0.315511,
		-0.674259, -0.717778, 0.173698,
		35.443077, 37.756973, 42.255402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435936, 38.557716, 42.600658>,  <35.915058, 38.259415, 42.133812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435936, 38.557716, 42.600658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412937, 38.159805, 42.634392>,  <35.399139, 37.921059, 42.654633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412937, 38.159805, 42.634392>,  <35.435936, 38.557716, 42.600658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412937, 38.159805, 42.634392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094152, 0.089497, 0.991527,
		-0.993896, 0.049069, -0.098806,
		-0.057496, -0.994778, 0.084331,
		35.395687, 37.861374, 42.659691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834812, 38.373833, 42.947094>,  <35.435936, 38.557716, 42.600658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834812, 38.373833, 42.947094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075531, 38.058479, 42.998146>,  <35.219963, 37.869267, 43.028778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075531, 38.058479, 42.998146>,  <34.834812, 38.373833, 42.947094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075531, 38.058479, 42.998146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234971, -0.022049, 0.971753,
		-0.763298, -0.614791, -0.198515,
		0.601802, -0.788382, 0.127628,
		35.256073, 37.821964, 43.036434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508583, 38.082855, 43.499496>,  <34.834812, 38.373833, 42.947094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508583, 38.082855, 43.499496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870178, 37.911884, 43.495113>,  <35.087135, 37.809303, 43.492485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870178, 37.911884, 43.495113>,  <34.508583, 38.082855, 43.499496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870178, 37.911884, 43.495113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028252, -0.085281, 0.995956,
		-0.426631, -0.900019, -0.089168,
		0.903984, -0.427425, -0.010957,
		35.141373, 37.783657, 43.491825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463776, 37.469738, 43.857265>,  <34.508583, 38.082855, 43.499496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463776, 37.469738, 43.857265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855469, 37.550827, 43.858044>,  <35.090485, 37.599480, 43.858509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855469, 37.550827, 43.858044>,  <34.463776, 37.469738, 43.857265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855469, 37.550827, 43.858044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014193, -0.078113, 0.996844,
		0.202234, -0.976116, -0.079368,
		0.979235, 0.202722, 0.001943,
		35.149239, 37.611645, 43.858627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696735, 36.973228, 44.442680>,  <34.463776, 37.469738, 43.857265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696735, 36.973228, 44.442680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982002, 37.246288, 44.378956>,  <35.153160, 37.410126, 44.340721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982002, 37.246288, 44.378956>,  <34.696735, 36.973228, 44.442680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982002, 37.246288, 44.378956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258892, -0.045299, 0.964844,
		0.651438, -0.729336, -0.209039,
		0.713165, 0.682654, -0.159310,
		35.195953, 37.451084, 44.331161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347675, 36.664330, 44.739994>,  <34.696735, 36.973228, 44.442680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347675, 36.664330, 44.739994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359512, 37.063995, 44.728748>,  <35.366615, 37.303795, 44.722000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359512, 37.063995, 44.728748>,  <35.347675, 36.664330, 44.739994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359512, 37.063995, 44.728748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233031, 0.020459, 0.972254,
		0.972019, -0.035327, -0.232231,
		0.029595, 0.999166, -0.028118,
		35.368389, 37.363747, 44.720314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764294, 36.819252, 45.391804>,  <35.347675, 36.664330, 44.739994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764294, 36.819252, 45.391804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617874, 37.173992, 45.279018>,  <35.530022, 37.386837, 45.211349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617874, 37.173992, 45.279018>,  <35.764294, 36.819252, 45.391804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617874, 37.173992, 45.279018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157178, 0.357554, 0.920571,
		0.917227, 0.292654, -0.270275,
		-0.366046, 0.886853, -0.281959,
		35.508060, 37.440048, 45.194431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255970, 37.234097, 45.478504>,  <35.764294, 36.819252, 45.391804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255970, 37.234097, 45.478504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940350, 37.479801, 45.474857>,  <35.750977, 37.627224, 45.472668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940350, 37.479801, 45.474857>,  <36.255970, 37.234097, 45.478504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940350, 37.479801, 45.474857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290661, 0.386360, 0.875353,
		0.541219, 0.688047, -0.483399,
		-0.789049, 0.614262, -0.009117,
		35.703636, 37.664082, 45.472122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546524, 37.874962, 45.764515>,  <36.255970, 37.234097, 45.478504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546524, 37.874962, 45.764515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149578, 37.846241, 45.804623>,  <35.911411, 37.829006, 45.828690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149578, 37.846241, 45.804623>,  <36.546524, 37.874962, 45.764515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149578, 37.846241, 45.804623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063321, 0.401059, 0.913861,
		-0.105835, 0.913234, -0.393451,
		-0.992366, -0.071805, 0.100273,
		35.851868, 37.824699, 45.834705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384663, 38.573746, 46.054977>,  <36.546524, 37.874962, 45.764515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384663, 38.573746, 46.054977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072193, 38.338547, 46.138897>,  <35.884712, 38.197426, 46.189251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072193, 38.338547, 46.138897>,  <36.384663, 38.573746, 46.054977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072193, 38.338547, 46.138897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023832, 0.363897, 0.931134,
		-0.623855, 0.722381, -0.298281,
		-0.781177, -0.588001, 0.209803,
		35.837841, 38.162148, 46.201839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906776, 39.022385, 46.405838>,  <36.384663, 38.573746, 46.054977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906776, 39.022385, 46.405838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803177, 38.642662, 46.477089>,  <35.741016, 38.414829, 46.519840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803177, 38.642662, 46.477089>,  <35.906776, 39.022385, 46.405838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803177, 38.642662, 46.477089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189214, 0.230718, 0.954446,
		-0.947163, 0.213494, -0.239378,
		-0.258997, -0.949310, 0.178132,
		35.725479, 38.357868, 46.530529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205105, 39.069771, 46.631706>,  <35.906776, 39.022385, 46.405838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205105, 39.069771, 46.631706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374275, 38.735458, 46.771767>,  <35.475777, 38.534870, 46.855804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374275, 38.735458, 46.771767>,  <35.205105, 39.069771, 46.631706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374275, 38.735458, 46.771767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212128, 0.284361, 0.934955,
		-0.880988, -0.469689, -0.057030,
		0.422921, -0.835781, 0.350153,
		35.501152, 38.484722, 46.876812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776379, 38.725597, 47.210732>,  <35.205105, 39.069771, 46.631706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776379, 38.725597, 47.210732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149837, 38.595665, 47.271107>,  <35.373913, 38.517708, 47.307331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149837, 38.595665, 47.271107>,  <34.776379, 38.725597, 47.210732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149837, 38.595665, 47.271107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103129, 0.159769, 0.981753,
		-0.343018, -0.932180, 0.115669,
		0.933651, -0.324830, 0.150938,
		35.429932, 38.498215, 47.316387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700085, 38.479961, 47.898090>,  <34.776379, 38.725597, 47.210732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700085, 38.479961, 47.898090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094490, 38.498920, 47.834171>,  <35.331131, 38.510296, 47.795822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094490, 38.498920, 47.834171>,  <34.700085, 38.479961, 47.898090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094490, 38.498920, 47.834171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135678, 0.328632, 0.934662,
		0.096811, -0.943268, 0.317604,
		0.986012, 0.047394, -0.159796,
		35.390293, 38.513138, 47.786232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021938, 38.233990, 48.472603>,  <34.700085, 38.479961, 47.898090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021938, 38.233990, 48.472603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335686, 38.423164, 48.312054>,  <35.523933, 38.536667, 48.215725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335686, 38.423164, 48.312054>,  <35.021938, 38.233990, 48.472603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335686, 38.423164, 48.312054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267732, 0.325577, 0.906818,
		0.559544, -0.818739, 0.128752,
		0.784366, 0.472933, -0.401377,
		35.570995, 38.565044, 48.191639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656212, 38.046696, 48.768486>,  <35.021938, 38.233990, 48.472603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656212, 38.046696, 48.768486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729565, 38.412346, 48.623856>,  <35.773575, 38.631737, 48.537075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729565, 38.412346, 48.623856>,  <35.656212, 38.046696, 48.768486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729565, 38.412346, 48.623856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409579, 0.263321, 0.873446,
		0.893653, -0.308269, -0.326120,
		0.183382, 0.914129, -0.361578,
		35.784580, 38.686584, 48.515381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433392, 38.204468, 48.945728>,  <35.656212, 38.046696, 48.768486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433392, 38.204468, 48.945728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231873, 38.539394, 48.860790>,  <36.110962, 38.740349, 48.809826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231873, 38.539394, 48.860790>,  <36.433392, 38.204468, 48.945728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231873, 38.539394, 48.860790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360362, 0.427135, 0.829274,
		0.785063, 0.341266, -0.516927,
		-0.503800, 0.837313, -0.212349,
		36.080734, 38.790588, 48.797085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928879, 38.651314, 49.164066>,  <36.433392, 38.204468, 48.945728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928879, 38.651314, 49.164066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578079, 38.843121, 49.151825>,  <36.367599, 38.958206, 49.144482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578079, 38.843121, 49.151825>,  <36.928879, 38.651314, 49.164066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578079, 38.843121, 49.151825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175308, 0.378624, 0.908796,
		0.447374, 0.791646, -0.416116,
		-0.876997, 0.479521, -0.030605,
		36.314980, 38.986977, 49.142643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148987, 39.222435, 49.513699>,  <36.928879, 38.651314, 49.164066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148987, 39.222435, 49.513699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749317, 39.206890, 49.508968>,  <36.509514, 39.197563, 49.506130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749317, 39.206890, 49.508968>,  <37.148987, 39.222435, 49.513699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749317, 39.206890, 49.508968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026135, 0.392127, 0.919540,
		-0.031095, 0.919090, -0.392819,
		-0.999175, -0.038860, -0.011827,
		36.449566, 39.195232, 49.505421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015713, 39.850620, 49.678890>,  <37.148987, 39.222435, 49.513699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015713, 39.850620, 49.678890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681046, 39.648724, 49.763958>,  <36.480244, 39.527588, 49.814999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681046, 39.648724, 49.763958>,  <37.015713, 39.850620, 49.678890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681046, 39.648724, 49.763958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046258, 0.452015, 0.890810,
		-0.545753, 0.735475, -0.401534,
		-0.836668, -0.504737, 0.212667,
		36.430046, 39.497303, 49.827759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648041, 40.378361, 50.059086>,  <37.015713, 39.850620, 49.678890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648041, 40.378361, 50.059086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469097, 40.027752, 50.130177>,  <36.361732, 39.817387, 50.172832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469097, 40.027752, 50.130177>,  <36.648041, 40.378361, 50.059086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469097, 40.027752, 50.130177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075565, 0.235058, 0.969039,
		-0.891158, 0.420075, -0.171388,
		-0.447356, -0.876518, 0.177731,
		36.334892, 39.764797, 50.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912643, 40.542767, 50.270081>,  <36.648041, 40.378361, 50.059086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912643, 40.542767, 50.270081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060951, 40.207188, 50.429428>,  <36.149937, 40.005840, 50.525036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060951, 40.207188, 50.429428>,  <35.912643, 40.542767, 50.270081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060951, 40.207188, 50.429428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285877, 0.305015, 0.908427,
		-0.883630, -0.450704, -0.126744,
		0.370773, -0.838947, 0.398366,
		36.172184, 39.955505, 50.548939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535446, 40.383568, 50.887245>,  <35.912643, 40.542767, 50.270081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535446, 40.383568, 50.887245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851093, 40.153770, 50.974190>,  <36.040482, 40.015892, 51.026356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851093, 40.153770, 50.974190>,  <35.535446, 40.383568, 50.887245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851093, 40.153770, 50.974190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141481, 0.174353, 0.974466,
		-0.597725, -0.799722, 0.056305,
		0.789119, -0.574496, 0.217360,
		36.087830, 39.981422, 51.039398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432278, 39.902294, 51.381805>,  <35.535446, 40.383568, 50.887245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432278, 39.902294, 51.381805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826912, 39.962578, 51.406895>,  <36.063694, 39.998749, 51.421947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826912, 39.962578, 51.406895>,  <35.432278, 39.902294, 51.381805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826912, 39.962578, 51.406895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127781, 0.473843, 0.871289,
		0.101590, -0.867617, 0.486745,
		0.986586, 0.150711, 0.062727,
		36.122887, 40.007790, 51.425713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920753, 39.332745, 51.694012>,  <35.432278, 39.902294, 51.381805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920753, 39.332745, 51.694012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058720, 39.705406, 51.739704>,  <36.141499, 39.929005, 51.767120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058720, 39.705406, 51.739704>,  <35.920753, 39.332745, 51.694012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058720, 39.705406, 51.739704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409980, 0.040054, 0.911215,
		0.844364, -0.361125, 0.395776,
		0.344915, 0.931657, 0.114234,
		36.162193, 39.984901, 51.773975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224831, 39.355217, 52.453358>,  <35.920753, 39.332745, 51.694012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224831, 39.355217, 52.453358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140862, 39.729176, 52.338890>,  <36.090481, 39.953552, 52.270210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140862, 39.729176, 52.338890>,  <36.224831, 39.355217, 52.453358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140862, 39.729176, 52.338890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257524, 0.229488, 0.938625,
		0.943193, 0.270738, 0.192583,
		-0.209926, 0.934899, -0.286173,
		36.077885, 40.009644, 52.253036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458424, 39.739246, 53.003048>,  <36.224831, 39.355217, 52.453358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458424, 39.739246, 53.003048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725628, 39.785774, 53.297050>,  <36.885952, 39.813690, 53.473450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725628, 39.785774, 53.297050>,  <36.458424, 39.739246, 53.003048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725628, 39.785774, 53.297050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390616, 0.785884, -0.479382,
		-0.633387, 0.607337, 0.479545,
		0.668012, 0.116316, 0.735003,
		36.926033, 39.820667, 53.517551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073498, 39.401806, 52.809521>,  <36.458424, 39.739246, 53.003048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073498, 39.401806, 52.809521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247265, 39.160812, 53.077339>,  <37.351524, 39.016216, 53.238029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247265, 39.160812, 53.077339>,  <37.073498, 39.401806, 52.809521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247265, 39.160812, 53.077339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095813, -0.708226, -0.699454,
		0.895599, 0.368009, -0.249943,
		0.434422, -0.602483, 0.669546,
		37.377590, 38.980068, 53.278202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586735, 39.063526, 52.435154>,  <37.073498, 39.401806, 52.809521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586735, 39.063526, 52.435154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493286, 38.853638, 52.762589>,  <37.437218, 38.727703, 52.959049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493286, 38.853638, 52.762589>,  <37.586735, 39.063526, 52.435154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493286, 38.853638, 52.762589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114442, -0.821197, -0.559052,
		0.965569, -0.224287, 0.131799,
		-0.233621, -0.524720, 0.818590,
		37.423199, 38.696220, 53.008167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047440, 38.565464, 52.670994>,  <37.586735, 39.063526, 52.435154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047440, 38.565464, 52.670994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678196, 38.418007, 52.714756>,  <37.456650, 38.329533, 52.741013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678196, 38.418007, 52.714756>,  <38.047440, 38.565464, 52.670994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678196, 38.418007, 52.714756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172857, -0.651958, -0.738289,
		0.343496, -0.662610, 0.665552,
		-0.923109, -0.368645, 0.109408,
		37.401264, 38.307415, 52.747578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097908, 37.976601, 52.364162>,  <38.047440, 38.565464, 52.670994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097908, 37.976601, 52.364162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701736, 38.015633, 52.403202>,  <37.464035, 38.039051, 52.426624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701736, 38.015633, 52.403202>,  <38.097908, 37.976601, 52.364162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701736, 38.015633, 52.403202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134759, -0.531089, -0.836531,
		-0.029795, -0.841679, 0.539156,
		-0.990431, 0.097580, 0.097600,
		37.404606, 38.044907, 52.432484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832836, 37.360001, 52.167767>,  <38.097908, 37.976601, 52.364162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832836, 37.360001, 52.167767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533493, 37.620998, 52.120071>,  <37.353889, 37.777596, 52.091454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533493, 37.620998, 52.120071>,  <37.832836, 37.360001, 52.167767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533493, 37.620998, 52.120071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297622, -0.490975, -0.818758,
		-0.592780, -0.577231, 0.561619,
		-0.748353, 0.652493, -0.119244,
		37.308987, 37.816746, 52.084297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216450, 36.970715, 52.185123>,  <37.832836, 37.360001, 52.167767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216450, 36.970715, 52.185123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183094, 37.289600, 51.945961>,  <37.163082, 37.480934, 51.802464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183094, 37.289600, 51.945961>,  <37.216450, 36.970715, 52.185123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183094, 37.289600, 51.945961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320460, -0.589579, -0.741419,
		-0.943585, 0.129780, 0.304640,
		-0.083388, 0.797217, -0.597907,
		37.158077, 37.528767, 51.766590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595596, 36.902191, 51.909641>,  <37.216450, 36.970715, 52.185123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595596, 36.902191, 51.909641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762703, 37.162773, 51.656319>,  <36.862968, 37.319122, 51.504326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762703, 37.162773, 51.656319>,  <36.595596, 36.902191, 51.909641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762703, 37.162773, 51.656319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215074, -0.606324, -0.765581,
		-0.882731, 0.456041, -0.113190,
		0.417766, 0.651458, -0.633304,
		36.888031, 37.358212, 51.466328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043633, 37.090450, 51.418362>,  <36.595596, 36.902191, 51.909641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043633, 37.090450, 51.418362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390717, 37.176342, 51.239044>,  <36.598969, 37.227879, 51.131454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390717, 37.176342, 51.239044>,  <36.043633, 37.090450, 51.418362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390717, 37.176342, 51.239044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327360, -0.431808, -0.840463,
		-0.374048, 0.876034, -0.304391,
		0.867712, 0.214728, -0.448295,
		36.651031, 37.240761, 51.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807571, 37.215191, 50.773655>,  <36.043633, 37.090450, 51.418362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807571, 37.215191, 50.773655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196053, 37.140125, 50.714954>,  <36.429142, 37.095085, 50.679733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196053, 37.140125, 50.714954>,  <35.807571, 37.215191, 50.773655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196053, 37.140125, 50.714954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207915, -0.366956, -0.906705,
		0.116307, 0.911112, -0.395409,
		0.971208, -0.187667, -0.146754,
		36.487415, 37.083824, 50.670929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858540, 37.349701, 50.076248>,  <35.807571, 37.215191, 50.773655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858540, 37.349701, 50.076248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192909, 37.141788, 50.146729>,  <36.393532, 37.017040, 50.189018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192909, 37.141788, 50.146729>,  <35.858540, 37.349701, 50.076248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192909, 37.141788, 50.146729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114874, -0.479635, -0.869916,
		0.536682, 0.706947, -0.460650,
		0.835929, -0.519785, 0.176202,
		36.443687, 36.985851, 50.199589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242718, 37.303871, 49.457188>,  <35.858540, 37.349701, 50.076248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242718, 37.303871, 49.457188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408325, 36.989956, 49.641663>,  <36.507690, 36.801605, 49.752346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408325, 36.989956, 49.641663>,  <36.242718, 37.303871, 49.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408325, 36.989956, 49.641663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126999, -0.451890, -0.882988,
		0.901364, 0.424147, -0.087426,
		0.414023, -0.784790, 0.461183,
		36.532532, 36.754520, 49.780018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771713, 37.152855, 49.030678>,  <36.242718, 37.303871, 49.457188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771713, 37.152855, 49.030678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713043, 36.826813, 49.254852>,  <36.677841, 36.631187, 49.389359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713043, 36.826813, 49.254852>,  <36.771713, 37.152855, 49.030678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713043, 36.826813, 49.254852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195012, -0.579276, -0.791460,
		0.969771, -0.006799, 0.243923,
		-0.146680, -0.815103, 0.560439,
		36.669041, 36.582283, 49.422985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294384, 36.733986, 48.749275>,  <36.771713, 37.152855, 49.030678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294384, 36.733986, 48.749275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014229, 36.507050, 48.922516>,  <36.846134, 36.370888, 49.026463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014229, 36.507050, 48.922516>,  <37.294384, 36.733986, 48.749275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014229, 36.507050, 48.922516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020786, -0.622748, -0.782146,
		0.713456, -0.538806, 0.447961,
		-0.700391, -0.567339, 0.433104,
		36.804111, 36.336849, 49.052448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608822, 36.102764, 48.806400>,  <37.294384, 36.733986, 48.749275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608822, 36.102764, 48.806400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211357, 36.058014, 48.802040>,  <36.972878, 36.031166, 48.799423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211357, 36.058014, 48.802040>,  <37.608822, 36.102764, 48.806400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211357, 36.058014, 48.802040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067767, -0.518913, -0.852137,
		0.089677, -0.847475, 0.523206,
		-0.993663, -0.111873, -0.010896,
		36.913258, 36.024452, 48.798771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564480, 35.481033, 48.786396>,  <37.608822, 36.102764, 48.806400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564480, 35.481033, 48.786396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211098, 35.609997, 48.650421>,  <36.999069, 35.687374, 48.568836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211098, 35.609997, 48.650421>,  <37.564480, 35.481033, 48.786396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211098, 35.609997, 48.650421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170868, -0.453871, -0.874531,
		-0.436241, -0.830696, 0.345887,
		-0.883458, 0.322405, -0.339936,
		36.946060, 35.706722, 48.548439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216713, 34.901958, 48.483150>,  <37.564480, 35.481033, 48.786396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216713, 34.901958, 48.483150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062397, 35.235714, 48.325691>,  <36.969807, 35.435966, 48.231216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062397, 35.235714, 48.325691>,  <37.216713, 34.901958, 48.483150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062397, 35.235714, 48.325691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091150, -0.390119, -0.916242,
		-0.918074, -0.389355, 0.074448,
		-0.385787, 0.834392, -0.393647,
		36.946659, 35.486031, 48.207596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640690, 34.596684, 47.981506>,  <37.216713, 34.901958, 48.483150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640690, 34.596684, 47.981506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698887, 34.970806, 47.852489>,  <36.733807, 35.195278, 47.775078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698887, 34.970806, 47.852489>,  <36.640690, 34.596684, 47.981506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698887, 34.970806, 47.852489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019539, -0.328664, -0.944245,
		-0.989166, 0.131079, -0.066094,
		0.145493, 0.935306, -0.322543,
		36.742535, 35.251396, 47.755726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225006, 34.641350, 47.411610>,  <36.640690, 34.596684, 47.981506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225006, 34.641350, 47.411610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496937, 34.931355, 47.367455>,  <36.660095, 35.105358, 47.340961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496937, 34.931355, 47.367455>,  <36.225006, 34.641350, 47.411610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496937, 34.931355, 47.367455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022399, -0.129923, -0.991271,
		-0.733026, 0.676370, -0.072087,
		0.679831, 0.725013, -0.110387,
		36.700886, 35.148857, 47.334339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961021, 35.119564, 46.866879>,  <36.225006, 34.641350, 47.411610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961021, 35.119564, 46.866879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355175, 35.186241, 46.880890>,  <36.591667, 35.226246, 46.889297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355175, 35.186241, 46.880890>,  <35.961021, 35.119564, 46.866879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355175, 35.186241, 46.880890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016066, 0.113776, -0.993377,
		-0.169570, 0.979423, 0.109435,
		0.985387, 0.166688, 0.035028,
		36.650791, 35.236248, 46.891399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056313, 35.679726, 46.486866>,  <35.961021, 35.119564, 46.866879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056313, 35.679726, 46.486866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408611, 35.491638, 46.464291>,  <36.619991, 35.378784, 46.450745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408611, 35.491638, 46.464291>,  <36.056313, 35.679726, 46.486866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408611, 35.491638, 46.464291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013090, 0.094953, -0.995396,
		0.473411, 0.877428, 0.077474,
		0.880744, -0.470217, -0.056437,
		36.672836, 35.350574, 46.447361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481823, 36.102901, 46.210281>,  <36.056313, 35.679726, 46.486866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481823, 36.102901, 46.210281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684620, 35.766113, 46.136475>,  <36.806297, 35.564041, 46.092190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684620, 35.766113, 46.136475>,  <36.481823, 36.102901, 46.210281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684620, 35.766113, 46.136475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049389, 0.242091, -0.968995,
		0.860534, 0.482160, 0.164323,
		0.506992, -0.841970, -0.184514,
		36.836716, 35.513523, 46.081120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954872, 36.245155, 45.705101>,  <36.481823, 36.102901, 46.210281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954872, 36.245155, 45.705101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959442, 35.845184, 45.706875>,  <36.962185, 35.605202, 45.707939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959442, 35.845184, 45.706875>,  <36.954872, 36.245155, 45.705101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959442, 35.845184, 45.706875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062948, -0.003709, -0.998010,
		0.997952, 0.011678, 0.062901,
		0.011422, -0.999925, 0.004437,
		36.962868, 35.545208, 45.708206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430511, 36.044327, 45.164089>,  <36.954872, 36.245155, 45.705101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430511, 36.044327, 45.164089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221260, 35.706230, 45.207726>,  <37.095711, 35.503372, 45.233906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221260, 35.706230, 45.207726>,  <37.430511, 36.044327, 45.164089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221260, 35.706230, 45.207726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143263, -0.038967, -0.988917,
		0.840128, -0.532956, -0.100708,
		-0.523125, -0.845245, 0.109090,
		37.064323, 35.452656, 45.240452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773617, 35.427063, 44.762730>,  <37.430511, 36.044327, 45.164089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773617, 35.427063, 44.762730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397827, 35.299553, 44.812962>,  <37.172352, 35.223045, 44.843102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397827, 35.299553, 44.812962>,  <37.773617, 35.427063, 44.762730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397827, 35.299553, 44.812962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066693, -0.189370, -0.979638,
		0.336065, -0.928720, 0.156649,
		-0.939474, -0.318775, 0.125580,
		37.115986, 35.203922, 44.850636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605400, 34.975391, 44.298679>,  <37.773617, 35.427063, 44.762730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605400, 34.975391, 44.298679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225231, 35.063549, 44.386421>,  <36.997128, 35.116444, 44.439064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225231, 35.063549, 44.386421>,  <37.605400, 34.975391, 44.298679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225231, 35.063549, 44.386421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262868, -0.192649, -0.945403,
		-0.166111, -0.956195, 0.241035,
		-0.950425, 0.220402, 0.219352,
		36.940102, 35.129669, 44.452229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183468, 34.397621, 44.260075>,  <37.605400, 34.975391, 44.298679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183468, 34.397621, 44.260075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926525, 34.701267, 44.217880>,  <36.772358, 34.883453, 44.192566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926525, 34.701267, 44.217880>,  <37.183468, 34.397621, 44.260075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926525, 34.701267, 44.217880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342801, -0.407678, -0.846337,
		-0.685468, -0.507491, 0.522099,
		-0.642356, 0.759113, -0.105481,
		36.733818, 34.929001, 44.186237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650520, 34.093437, 44.050907>,  <37.183468, 34.397621, 44.260075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650520, 34.093437, 44.050907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575443, 34.473389, 43.950912>,  <36.530396, 34.701359, 43.890915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575443, 34.473389, 43.950912>,  <36.650520, 34.093437, 44.050907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575443, 34.473389, 43.950912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334965, -0.301157, -0.892806,
		-0.923346, -0.083839, 0.374704,
		-0.187697, 0.949882, -0.249989,
		36.519135, 34.758354, 43.875916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948521, 34.219749, 43.868488>,  <36.650520, 34.093437, 44.050907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948521, 34.219749, 43.868488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177105, 34.488995, 43.680721>,  <36.314255, 34.650539, 43.568062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177105, 34.488995, 43.680721>,  <35.948521, 34.219749, 43.868488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177105, 34.488995, 43.680721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386050, -0.284266, -0.877587,
		-0.724151, 0.682728, 0.097406,
		0.571463, 0.673109, -0.469418,
		36.348545, 34.690926, 43.539894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441769, 34.514095, 43.437237>,  <35.948521, 34.219749, 43.868488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441769, 34.514095, 43.437237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803204, 34.596668, 43.287086>,  <36.020065, 34.646214, 43.196995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803204, 34.596668, 43.287086>,  <35.441769, 34.514095, 43.437237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803204, 34.596668, 43.287086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329599, -0.224734, -0.916984,
		-0.273657, 0.952302, -0.135028,
		0.903591, 0.206434, -0.375378,
		36.074280, 34.658600, 43.174473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270859, 34.651024, 42.791470>,  <35.441769, 34.514095, 43.437237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270859, 34.651024, 42.791470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660145, 34.586266, 42.726189>,  <35.893719, 34.547409, 42.687019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660145, 34.586266, 42.726189>,  <35.270859, 34.651024, 42.791470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660145, 34.586266, 42.726189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218544, -0.431414, -0.875283,
		0.071301, 0.887508, -0.455242,
		0.973219, -0.161899, -0.163199,
		35.952110, 34.537697, 42.677231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397831, 34.941574, 42.110813>,  <35.270859, 34.651024, 42.791470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397831, 34.941574, 42.110813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689533, 34.687500, 42.212570>,  <35.864555, 34.535053, 42.273624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689533, 34.687500, 42.212570>,  <35.397831, 34.941574, 42.110813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689533, 34.687500, 42.212570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075212, -0.443950, -0.892889,
		0.680091, 0.632015, -0.371529,
		0.729260, -0.635189, 0.254392,
		35.908310, 34.496944, 42.288887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950432, 35.116985, 41.650368>,  <35.397831, 34.941574, 42.110813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950432, 35.116985, 41.650368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972103, 34.739246, 41.780151>,  <35.985107, 34.512604, 41.858021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972103, 34.739246, 41.780151>,  <35.950432, 35.116985, 41.650368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972103, 34.739246, 41.780151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020462, -0.325921, -0.945175,
		0.998322, 0.044569, -0.036981,
		0.054178, -0.944346, 0.324462,
		35.988358, 34.455944, 41.877491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276566, 34.769367, 41.089737>,  <35.950432, 35.116985, 41.650368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276566, 34.769367, 41.089737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165325, 34.467632, 41.327606>,  <36.098583, 34.286591, 41.470329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165325, 34.467632, 41.327606>,  <36.276566, 34.769367, 41.089737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165325, 34.467632, 41.327606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054380, -0.605736, -0.793805,
		0.959013, -0.253093, 0.127432,
		-0.278096, -0.754339, 0.594672,
		36.081898, 34.241329, 41.506008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543865, 34.251461, 40.779484>,  <36.276566, 34.769367, 41.089737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543865, 34.251461, 40.779484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276237, 34.073013, 41.017250>,  <36.115662, 33.965946, 41.159908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276237, 34.073013, 41.017250>,  <36.543865, 34.251461, 40.779484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276237, 34.073013, 41.017250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258927, -0.609772, -0.749089,
		0.696638, -0.655102, 0.292467,
		-0.669068, -0.446116, 0.594414,
		36.075516, 33.939178, 41.195576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683578, 33.490990, 40.798107>,  <36.543865, 34.251461, 40.779484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683578, 33.490990, 40.798107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298115, 33.541882, 40.892059>,  <36.066837, 33.572418, 40.948429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298115, 33.541882, 40.892059>,  <36.683578, 33.490990, 40.798107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298115, 33.541882, 40.892059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264293, -0.581852, -0.769154,
		0.038807, -0.803281, 0.594334,
		-0.963661, 0.127230, 0.234881,
		36.009018, 33.580051, 40.962524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398220, 32.773495, 40.925938>,  <36.683578, 33.490990, 40.798107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398220, 32.773495, 40.925938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092102, 33.025059, 40.871117>,  <35.908432, 33.175999, 40.838223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092102, 33.025059, 40.871117>,  <36.398220, 32.773495, 40.925938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092102, 33.025059, 40.871117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379512, -0.612856, -0.693093,
		-0.519890, -0.478410, 0.707699,
		-0.765300, 0.628913, -0.137055,
		35.862511, 33.213734, 40.829998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916176, 32.346111, 41.032833>,  <36.398220, 32.773495, 40.925938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916176, 32.346111, 41.032833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782207, 32.650761, 40.810928>,  <35.701828, 32.833549, 40.677788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782207, 32.650761, 40.810928>,  <35.916176, 32.346111, 41.032833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782207, 32.650761, 40.810928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401513, -0.647991, -0.647221,
		-0.852417, 0.005974, 0.522828,
		-0.334921, 0.761625, -0.554757,
		35.681732, 32.879250, 40.644501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308414, 31.992250, 40.690956>,  <35.916176, 32.346111, 41.032833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308414, 31.992250, 40.690956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365181, 32.332310, 40.488132>,  <35.399239, 32.536346, 40.366440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365181, 32.332310, 40.488132>,  <35.308414, 31.992250, 40.690956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365181, 32.332310, 40.488132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413665, -0.414435, -0.810633,
		-0.899301, 0.324789, 0.292864,
		0.141912, 0.850151, -0.507055,
		35.407753, 32.587357, 40.336018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673756, 32.013504, 40.259838>,  <35.308414, 31.992250, 40.690956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673756, 32.013504, 40.259838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984257, 32.212856, 40.105412>,  <35.170559, 32.332466, 40.012756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984257, 32.212856, 40.105412>,  <34.673756, 32.013504, 40.259838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984257, 32.212856, 40.105412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403492, -0.077757, -0.911673,
		-0.484379, 0.863465, 0.140732,
		0.776255, 0.498379, -0.386065,
		35.217133, 32.362370, 39.989594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337883, 32.470280, 39.895916>,  <34.673756, 32.013504, 40.259838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337883, 32.470280, 39.895916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708054, 32.444565, 39.746544>,  <34.930157, 32.429138, 39.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708054, 32.444565, 39.746544>,  <34.337883, 32.470280, 39.895916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708054, 32.444565, 39.746544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374541, -0.005708, -0.927193,
		0.057472, 0.997915, -0.029359,
		0.925428, -0.064283, -0.373432,
		34.985683, 32.425282, 39.634514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500603, 33.009647, 39.408577>,  <34.337883, 32.470280, 39.895916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500603, 33.009647, 39.408577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756821, 32.722530, 39.299416>,  <34.910553, 32.550262, 39.233917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756821, 32.722530, 39.299416>,  <34.500603, 33.009647, 39.408577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756821, 32.722530, 39.299416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412127, -0.021465, -0.910874,
		0.647958, 0.695929, -0.309570,
		0.640548, -0.717789, -0.272903,
		34.948986, 32.507195, 39.217545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403713, 33.054836, 38.656734>,  <34.500603, 33.009647, 39.408577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403713, 33.054836, 38.656734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643654, 32.735138, 38.671574>,  <34.787617, 32.543320, 38.680477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643654, 32.735138, 38.671574>,  <34.403713, 33.054836, 38.656734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643654, 32.735138, 38.671574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158330, -0.164020, -0.973668,
		0.784289, 0.578184, -0.224933,
		0.599853, -0.799250, 0.037095,
		34.823608, 32.495361, 38.682701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099590, 33.192196, 38.216835>,  <34.403713, 33.054836, 38.656734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099590, 33.192196, 38.216835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985962, 32.810833, 38.257477>,  <34.917786, 32.582016, 38.281860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985962, 32.810833, 38.257477>,  <35.099590, 33.192196, 38.216835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985962, 32.810833, 38.257477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087952, -0.079608, -0.992939,
		0.954760, -0.291004, -0.061239,
		-0.284074, -0.953404, 0.101601,
		34.900738, 32.524811, 38.287956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395775, 32.879028, 37.789375>,  <35.099590, 33.192196, 38.216835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395775, 32.879028, 37.789375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119377, 32.594002, 37.837990>,  <34.953537, 32.422985, 37.867157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119377, 32.594002, 37.837990>,  <35.395775, 32.879028, 37.789375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119377, 32.594002, 37.837990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049449, -0.121143, -0.991403,
		0.721164, -0.691067, 0.048473,
		-0.690998, -0.712567, 0.121537,
		34.912079, 32.380234, 37.874451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705006, 32.360992, 37.525917>,  <35.395775, 32.879028, 37.789375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705006, 32.360992, 37.525917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307861, 32.323292, 37.496689>,  <35.069572, 32.300671, 37.479153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307861, 32.323292, 37.496689>,  <35.705006, 32.360992, 37.525917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307861, 32.323292, 37.496689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087154, -0.155241, -0.984025,
		0.081402, -0.983370, 0.162347,
		-0.992864, -0.094250, -0.073068,
		35.010002, 32.295017, 37.474770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290497, 32.451275, 37.977753>,  <35.705006, 32.360992, 37.525917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290497, 32.451275, 37.977753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406349, 32.402203, 37.598057>,  <36.475861, 32.372761, 37.370239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406349, 32.402203, 37.598057>,  <36.290497, 32.451275, 37.977753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406349, 32.402203, 37.598057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879546, -0.357048, 0.314507,
		-0.377511, -0.925994, 0.004495,
		0.289627, -0.122683, -0.949244,
		36.493237, 32.365398, 37.313282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491352, 31.804012, 37.885612>,  <36.290497, 32.451275, 37.977753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491352, 31.804012, 37.885612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717304, 32.042355, 37.657272>,  <36.852875, 32.185360, 37.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717304, 32.042355, 37.657272>,  <36.491352, 31.804012, 37.885612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717304, 32.042355, 37.657272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816109, -0.301145, 0.493231,
		0.121986, -0.744491, -0.656393,
		0.564876, 0.595856, -0.570851,
		36.886768, 32.221111, 37.486015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096970, 31.401064, 37.818279>,  <36.491352, 31.804012, 37.885612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096970, 31.401064, 37.818279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191364, 31.779398, 37.729099>,  <37.248001, 32.006397, 37.675591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191364, 31.779398, 37.729099>,  <37.096970, 31.401064, 37.818279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191364, 31.779398, 37.729099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896384, -0.123284, 0.425790,
		0.375240, -0.300334, -0.876923,
		0.235990, 0.945833, -0.222954,
		37.262161, 32.063148, 37.662212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763142, 31.560459, 37.670490>,  <37.096970, 31.401064, 37.818279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763142, 31.560459, 37.670490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660683, 31.930248, 37.783440>,  <37.599209, 32.152122, 37.851208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660683, 31.930248, 37.783440>,  <37.763142, 31.560459, 37.670490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660683, 31.930248, 37.783440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837185, 0.066135, 0.542906,
		0.483228, 0.375464, -0.790897,
		-0.256147, 0.924475, 0.282374,
		37.583839, 32.207592, 37.868153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462578, 31.970297, 37.806484>,  <37.763142, 31.560459, 37.670490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462578, 31.970297, 37.806484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168114, 32.157936, 38.001633>,  <37.991436, 32.270519, 38.118721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168114, 32.157936, 38.001633>,  <38.462578, 31.970297, 37.806484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168114, 32.157936, 38.001633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639466, 0.245945, 0.728419,
		0.221709, 0.848210, -0.481026,
		-0.736158, 0.469096, 0.487873,
		37.947266, 32.298664, 38.147995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727573, 32.742523, 38.039856>,  <38.462578, 31.970297, 37.806484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727573, 32.742523, 38.039856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418755, 32.681217, 38.286579>,  <38.233463, 32.644432, 38.434612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418755, 32.681217, 38.286579>,  <38.727573, 32.742523, 38.039856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418755, 32.681217, 38.286579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524183, 0.395260, 0.754322,
		-0.359413, 0.905692, -0.224819,
		-0.772046, -0.153266, 0.616810,
		38.187141, 32.635239, 38.471622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739105, 33.373329, 38.407486>,  <38.727573, 32.742523, 38.039856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739105, 33.373329, 38.407486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516445, 33.111629, 38.612270>,  <38.382851, 32.954609, 38.735142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516445, 33.111629, 38.612270>,  <38.739105, 33.373329, 38.407486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516445, 33.111629, 38.612270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382788, 0.344946, 0.857021,
		-0.737301, 0.673033, 0.058423,
		-0.556651, -0.654246, 0.511958,
		38.349449, 32.915356, 38.765858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352345, 33.863338, 38.945808>,  <38.739105, 33.373329, 38.407486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352345, 33.863338, 38.945808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301517, 33.489799, 39.079548>,  <38.271023, 33.265678, 39.159794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301517, 33.489799, 39.079548>,  <38.352345, 33.863338, 38.945808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301517, 33.489799, 39.079548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188266, 0.308250, 0.932490,
		-0.973863, 0.181438, 0.136642,
		-0.127069, -0.933843, 0.334352,
		38.263397, 33.209648, 39.179855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891132, 33.943851, 39.578362>,  <38.352345, 33.863338, 38.945808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891132, 33.943851, 39.578362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093060, 33.599689, 39.606274>,  <38.214214, 33.393192, 39.623020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093060, 33.599689, 39.606274>,  <37.891132, 33.943851, 39.578362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093060, 33.599689, 39.606274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237063, 0.215914, 0.947197,
		-0.830037, -0.461617, 0.312966,
		0.504816, -0.860402, 0.069784,
		38.244503, 33.341568, 39.627209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687866, 33.613319, 40.241684>,  <37.891132, 33.943851, 39.578362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687866, 33.613319, 40.241684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020054, 33.404278, 40.164528>,  <38.219368, 33.278854, 40.118233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020054, 33.404278, 40.164528>,  <37.687866, 33.613319, 40.241684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020054, 33.404278, 40.164528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284656, 0.100461, 0.953351,
		-0.478847, -0.846636, 0.232192,
		0.830467, -0.522604, -0.192895,
		38.269196, 33.247498, 40.106659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727139, 33.118851, 40.765652>,  <37.687866, 33.613319, 40.241684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727139, 33.118851, 40.765652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091576, 33.150410, 40.603817>,  <38.310238, 33.169346, 40.506714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091576, 33.150410, 40.603817>,  <37.727139, 33.118851, 40.765652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091576, 33.150410, 40.603817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397098, 0.095345, 0.912810,
		0.110604, -0.992312, 0.055533,
		0.911087, 0.078908, -0.404590,
		38.364902, 33.174080, 40.482441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112934, 32.622417, 41.136971>,  <37.727139, 33.118851, 40.765652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112934, 32.622417, 41.136971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363705, 32.899849, 40.995037>,  <38.514168, 33.066307, 40.909878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363705, 32.899849, 40.995037>,  <38.112934, 32.622417, 41.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363705, 32.899849, 40.995037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406662, 0.097148, 0.908399,
		0.664521, -0.713796, -0.221149,
		0.626927, 0.693583, -0.354831,
		38.551785, 33.107925, 40.888588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784592, 32.496780, 41.472717>,  <38.112934, 32.622417, 41.136971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784592, 32.496780, 41.472717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800381, 32.875282, 41.344318>,  <38.809856, 33.102383, 41.267277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800381, 32.875282, 41.344318>,  <38.784592, 32.496780, 41.472717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800381, 32.875282, 41.344318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501361, 0.259130, 0.825524,
		0.864338, -0.193526, -0.464186,
		0.039476, 0.946256, -0.321002,
		38.812225, 33.159161, 41.248016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486103, 32.732552, 41.667324>,  <38.784592, 32.496780, 41.472717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486103, 32.732552, 41.667324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315422, 33.089928, 41.611191>,  <39.213013, 33.304352, 41.577511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315422, 33.089928, 41.611191>,  <39.486103, 32.732552, 41.667324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315422, 33.089928, 41.611191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487525, 0.357925, 0.796373,
		0.761740, 0.271394, -0.588300,
		-0.426698, 0.893440, -0.140335,
		39.187412, 33.357960, 41.569092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035366, 33.283741, 41.746677>,  <39.486103, 32.732552, 41.667324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035366, 33.283741, 41.746677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677250, 33.439938, 41.832447>,  <39.462379, 33.533657, 41.883907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677250, 33.439938, 41.832447>,  <40.035366, 33.283741, 41.746677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677250, 33.439938, 41.832447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375181, 0.401373, 0.835547,
		0.240213, 0.828501, -0.505850,
		-0.895286, 0.390495, 0.214422,
		39.408665, 33.557087, 41.896774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150921, 33.957657, 41.954704>,  <40.035366, 33.283741, 41.746677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150921, 33.957657, 41.954704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799786, 33.850925, 42.113804>,  <39.589104, 33.786888, 42.209263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799786, 33.850925, 42.113804>,  <40.150921, 33.957657, 41.954704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799786, 33.850925, 42.113804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258777, 0.434582, 0.862655,
		-0.403037, 0.860198, -0.312442,
		-0.877836, -0.266829, 0.397752,
		39.536434, 33.770878, 42.233128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842373, 34.574154, 42.162373>,  <40.150921, 33.957657, 41.954704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842373, 34.574154, 42.162373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680096, 34.274677, 42.372082>,  <39.582729, 34.094990, 42.497910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680096, 34.274677, 42.372082>,  <39.842373, 34.574154, 42.162373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680096, 34.274677, 42.372082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059260, 0.550847, 0.832500,
		-0.912084, 0.368812, -0.179109,
		-0.405697, -0.748696, 0.524275,
		39.558388, 34.050068, 42.529366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508598, 35.042149, 42.662254>,  <39.842373, 34.574154, 42.162373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508598, 35.042149, 42.662254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445370, 34.668034, 42.788898>,  <39.407433, 34.443565, 42.864887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445370, 34.668034, 42.788898>,  <39.508598, 35.042149, 42.662254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445370, 34.668034, 42.788898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183199, 0.342857, 0.921351,
		-0.970285, 0.087633, -0.225539,
		-0.158068, -0.935291, 0.316614,
		39.397949, 34.387447, 42.883884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873184, 35.033596, 43.137768>,  <39.508598, 35.042149, 42.662254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873184, 35.033596, 43.137768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106728, 34.722931, 43.232346>,  <39.246853, 34.536533, 43.289093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106728, 34.722931, 43.232346>,  <38.873184, 35.033596, 43.137768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106728, 34.722931, 43.232346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030855, 0.269801, 0.962422,
		-0.811268, -0.569214, 0.133562,
		0.583859, -0.776661, 0.236444,
		39.281887, 34.489933, 43.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466862, 34.629555, 43.665493>,  <38.873184, 35.033596, 43.137768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466862, 34.629555, 43.665493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855133, 34.549091, 43.718128>,  <39.088097, 34.500813, 43.749710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855133, 34.549091, 43.718128>,  <38.466862, 34.629555, 43.665493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855133, 34.549091, 43.718128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075251, 0.265607, 0.961140,
		-0.228292, -0.942862, 0.242682,
		0.970680, -0.201159, 0.131587,
		39.146336, 34.488743, 43.757603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468365, 34.334110, 44.348480>,  <38.466862, 34.629555, 43.665493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468365, 34.334110, 44.348480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846214, 34.445213, 44.278591>,  <39.072926, 34.511875, 44.236656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846214, 34.445213, 44.278591>,  <38.468365, 34.334110, 44.348480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846214, 34.445213, 44.278591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078927, 0.324512, 0.942583,
		0.318492, -0.904186, 0.284624,
		0.944634, 0.277740, -0.174720,
		39.129604, 34.528542, 44.226173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819920, 34.165653, 44.987808>,  <38.468365, 34.334110, 44.348480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819920, 34.165653, 44.987808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047676, 34.439846, 44.806301>,  <39.184330, 34.604362, 44.697395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047676, 34.439846, 44.806301>,  <38.819920, 34.165653, 44.987808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047676, 34.439846, 44.806301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091020, 0.496022, 0.863526,
		0.817014, -0.532984, 0.220037,
		0.569389, 0.685485, -0.453769,
		39.218494, 34.645493, 44.670170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451691, 34.215012, 45.326191>,  <38.819920, 34.165653, 44.987808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451691, 34.215012, 45.326191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407974, 34.558998, 45.126781>,  <39.381744, 34.765388, 45.007137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407974, 34.558998, 45.126781>,  <39.451691, 34.215012, 45.326191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407974, 34.558998, 45.126781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128508, 0.509538, 0.850797,
		0.985668, 0.028921, -0.166200,
		-0.109291, 0.859962, -0.498519,
		39.375187, 34.816986, 44.977226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910999, 34.571957, 45.678345>,  <39.451691, 34.215012, 45.326191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910999, 34.571957, 45.678345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664051, 34.821613, 45.486797>,  <39.515884, 34.971405, 45.371868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664051, 34.821613, 45.486797>,  <39.910999, 34.571957, 45.678345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664051, 34.821613, 45.486797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004978, 0.605608, 0.795748,
		0.786660, 0.493652, -0.370775,
		-0.617367, 0.624137, -0.478865,
		39.478840, 35.008854, 45.343140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219105, 35.256989, 45.635815>,  <39.910999, 34.571957, 45.678345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219105, 35.256989, 45.635815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830410, 35.327240, 45.572723>,  <39.597191, 35.369389, 45.534870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830410, 35.327240, 45.572723>,  <40.219105, 35.256989, 45.635815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830410, 35.327240, 45.572723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018349, 0.722359, 0.691274,
		0.235341, 0.668844, -0.705168,
		-0.971740, 0.175625, -0.157729,
		39.538887, 35.379929, 45.525406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176250, 35.936062, 45.701370>,  <40.219105, 35.256989, 45.635815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176250, 35.936062, 45.701370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806217, 35.803329, 45.775238>,  <39.584198, 35.723690, 45.819557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806217, 35.803329, 45.775238>,  <40.176250, 35.936062, 45.701370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806217, 35.803329, 45.775238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114430, 0.707254, 0.697637,
		-0.362109, 0.624242, -0.692242,
		-0.925085, -0.331835, 0.184671,
		39.528690, 35.703777, 45.830639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819660, 36.485226, 45.689995>,  <40.176250, 35.936062, 45.701370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819660, 36.485226, 45.689995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563145, 36.222923, 45.849361>,  <39.409237, 36.065540, 45.944981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563145, 36.222923, 45.849361>,  <39.819660, 36.485226, 45.689995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563145, 36.222923, 45.849361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226509, 0.657891, 0.718243,
		-0.733108, 0.370353, -0.570430,
		-0.641284, -0.655757, 0.398417,
		39.370758, 36.026196, 45.968887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125977, 36.767555, 45.865116>,  <39.819660, 36.485226, 45.689995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125977, 36.767555, 45.865116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187737, 36.461559, 46.115219>,  <39.224792, 36.277962, 46.265282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187737, 36.461559, 46.115219>,  <39.125977, 36.767555, 45.865116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187737, 36.461559, 46.115219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205665, 0.594099, 0.777656,
		-0.966366, -0.248665, -0.065602,
		0.154402, -0.764992, 0.625259,
		39.234058, 36.232063, 46.302795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680943, 36.877857, 46.375481>,  <39.125977, 36.767555, 45.865116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680943, 36.877857, 46.375481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963444, 36.635048, 46.521210>,  <39.132946, 36.489361, 46.608646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963444, 36.635048, 46.521210>,  <38.680943, 36.877857, 46.375481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963444, 36.635048, 46.521210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064726, 0.567816, 0.820607,
		-0.704994, -0.555976, 0.440312,
		0.706254, -0.607022, 0.364321,
		39.175320, 36.452942, 46.630505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653503, 36.823334, 47.220310>,  <38.680943, 36.877857, 46.375481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653503, 36.823334, 47.220310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009689, 36.660881, 47.138203>,  <39.223400, 36.563408, 47.088940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009689, 36.660881, 47.138203>,  <38.653503, 36.823334, 47.220310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009689, 36.660881, 47.138203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434766, 0.626091, 0.647293,
		-0.134371, -0.665633, 0.734082,
		0.890462, -0.406131, -0.205266,
		39.276829, 36.539043, 47.076622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940048, 36.739807, 47.853428>,  <38.653503, 36.823334, 47.220310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940048, 36.739807, 47.853428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261463, 36.743206, 47.615353>,  <39.454311, 36.745247, 47.472507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261463, 36.743206, 47.615353>,  <38.940048, 36.739807, 47.853428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261463, 36.743206, 47.615353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473642, 0.596504, 0.647955,
		0.360541, -0.802565, 0.475289,
		0.803538, 0.008497, -0.595193,
		39.502525, 36.745754, 47.436794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483059, 36.643986, 48.295761>,  <38.940048, 36.739807, 47.853428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483059, 36.643986, 48.295761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663803, 36.799999, 47.974838>,  <39.772251, 36.893608, 47.782284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663803, 36.799999, 47.974838>,  <39.483059, 36.643986, 48.295761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663803, 36.799999, 47.974838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459359, 0.669228, 0.584058,
		0.764728, -0.632459, 0.123231,
		0.451862, 0.390038, -0.802303,
		39.799362, 36.917011, 47.734146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179218, 36.728500, 48.488338>,  <39.483059, 36.643986, 48.295761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179218, 36.728500, 48.488338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141384, 36.983608, 48.182579>,  <40.118683, 37.136673, 47.999123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141384, 36.983608, 48.182579>,  <40.179218, 36.728500, 48.488338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141384, 36.983608, 48.182579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448538, 0.712790, 0.539207,
		0.888745, -0.291863, -0.353480,
		-0.094583, 0.637767, -0.764400,
		40.113010, 37.174938, 47.953259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827965, 37.125610, 48.599201>,  <40.179218, 36.728500, 48.488338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827965, 37.125610, 48.599201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631584, 37.348740, 48.331528>,  <40.513756, 37.482616, 48.170925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631584, 37.348740, 48.331528>,  <40.827965, 37.125610, 48.599201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631584, 37.348740, 48.331528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476999, 0.814874, 0.329322,
		0.729001, -0.157519, -0.666142,
		-0.490947, 0.557825, -0.669180,
		40.484299, 37.516087, 48.130775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238045, 37.540504, 48.246765>,  <40.827965, 37.125610, 48.599201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238045, 37.540504, 48.246765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898777, 37.748795, 48.207863>,  <40.695217, 37.873768, 48.184521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898777, 37.748795, 48.207863>,  <41.238045, 37.540504, 48.246765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898777, 37.748795, 48.207863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410508, 0.762142, 0.500623,
		0.334814, 0.384685, -0.860184,
		-0.848165, 0.520728, -0.097259,
		40.644329, 37.905014, 48.178684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374859, 38.166809, 47.828213>,  <41.238045, 37.540504, 48.246765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374859, 38.166809, 47.828213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068096, 38.212708, 48.080780>,  <40.884041, 38.240246, 48.232323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068096, 38.212708, 48.080780>,  <41.374859, 38.166809, 47.828213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068096, 38.212708, 48.080780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515996, 0.695258, 0.500364,
		-0.381585, 0.709542, -0.592405,
		-0.766903, 0.114747, 0.631421,
		40.838024, 38.247131, 48.270206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184002, 38.887123, 47.819180>,  <41.374859, 38.166809, 47.828213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184002, 38.887123, 47.819180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042175, 38.722511, 48.155018>,  <40.957077, 38.623745, 48.356522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042175, 38.722511, 48.155018>,  <41.184002, 38.887123, 47.819180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042175, 38.722511, 48.155018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412599, 0.736924, 0.535449,
		-0.839072, 0.536271, -0.091495,
		-0.354571, -0.411530, 0.839597,
		40.935802, 38.599052, 48.406898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602428, 39.333248, 48.318447>,  <41.184002, 38.887123, 47.819180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602428, 39.333248, 48.318447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875870, 39.076412, 48.457245>,  <41.039936, 38.922310, 48.540524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875870, 39.076412, 48.457245>,  <40.602428, 39.333248, 48.318447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875870, 39.076412, 48.457245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520332, 0.762144, 0.385215,
		-0.511803, -0.082783, 0.855105,
		0.683602, -0.642093, 0.346993,
		41.080952, 38.883785, 48.561344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978271, 39.993359, 48.534348>,  <40.602428, 39.333248, 48.318447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978271, 39.993359, 48.534348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991375, 40.322998, 48.308147>,  <40.999237, 40.520782, 48.172428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991375, 40.322998, 48.308147>,  <40.978271, 39.993359, 48.534348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991375, 40.322998, 48.308147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464496, -0.488440, -0.738695,
		-0.884969, 0.286872, 0.366789,
		0.032756, 0.824094, -0.565505,
		41.001202, 40.570225, 48.138496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324059, 40.037716, 48.215530>,  <40.978271, 39.993359, 48.534348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324059, 40.037716, 48.215530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548367, 40.267044, 47.976585>,  <40.682949, 40.404640, 47.833218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548367, 40.267044, 47.976585>,  <40.324059, 40.037716, 48.215530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548367, 40.267044, 47.976585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509769, -0.329455, -0.794729,
		-0.652437, 0.750178, 0.107511,
		0.560768, 0.573317, -0.597367,
		40.716599, 40.439037, 47.797375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869461, 40.531708, 47.860073>,  <40.324059, 40.037716, 48.215530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869461, 40.531708, 47.860073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196072, 40.464714, 47.639084>,  <40.392040, 40.424519, 47.506489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196072, 40.464714, 47.639084>,  <39.869461, 40.531708, 47.860073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196072, 40.464714, 47.639084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571180, -0.373400, -0.730976,
		-0.083869, 0.912427, -0.400554,
		0.816529, -0.167482, -0.552476,
		40.441029, 40.414471, 47.473343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708103, 40.849682, 47.274940>,  <39.869461, 40.531708, 47.860073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708103, 40.849682, 47.274940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999550, 40.589436, 47.189323>,  <40.174419, 40.433289, 47.137955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999550, 40.589436, 47.189323>,  <39.708103, 40.849682, 47.274940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999550, 40.589436, 47.189323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488214, -0.274172, -0.828539,
		0.480373, 0.708189, -0.517406,
		0.728621, -0.650613, -0.214043,
		40.218136, 40.394253, 47.125111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701717, 40.826782, 46.630577>,  <39.708103, 40.849682, 47.274940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701717, 40.826782, 46.630577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898155, 40.486076, 46.703598>,  <40.016018, 40.281654, 46.747410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898155, 40.486076, 46.703598>,  <39.701717, 40.826782, 46.630577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898155, 40.486076, 46.703598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379386, -0.397780, -0.835367,
		0.784151, 0.340984, -0.518494,
		0.491093, -0.851764, 0.182554,
		40.045483, 40.230549, 46.758366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251030, 40.653202, 46.013325>,  <39.701717, 40.826782, 46.630577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251030, 40.653202, 46.013325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123665, 40.328777, 46.209606>,  <40.047245, 40.134121, 46.327374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123665, 40.328777, 46.209606>,  <40.251030, 40.653202, 46.013325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123665, 40.328777, 46.209606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258871, -0.423573, -0.868085,
		0.911922, -0.403436, -0.075091,
		-0.318410, -0.811064, 0.490703,
		40.028141, 40.085457, 46.356815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364418, 40.240082, 45.505459>,  <40.251030, 40.653202, 46.013325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364418, 40.240082, 45.505459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115952, 40.051758, 45.756054>,  <39.966873, 39.938763, 45.906410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115952, 40.051758, 45.756054>,  <40.364418, 40.240082, 45.505459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115952, 40.051758, 45.756054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287522, -0.606761, -0.741061,
		0.729030, -0.640451, 0.241530,
		-0.621165, -0.470811, 0.626491,
		39.929604, 39.910515, 45.944000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477718, 39.482834, 45.393772>,  <40.364418, 40.240082, 45.505459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477718, 39.482834, 45.393772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124119, 39.514595, 45.578049>,  <39.911961, 39.533653, 45.688614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124119, 39.514595, 45.578049>,  <40.477718, 39.482834, 45.393772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124119, 39.514595, 45.578049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376846, -0.704203, -0.601735,
		0.276645, -0.705545, 0.652437,
		-0.883999, 0.079401, 0.460696,
		39.858917, 39.538414, 45.716259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160412, 38.727467, 45.562477>,  <40.477718, 39.482834, 45.393772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160412, 38.727467, 45.562477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865025, 38.996483, 45.581848>,  <39.687790, 39.157894, 45.593472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865025, 38.996483, 45.581848>,  <40.160412, 38.727467, 45.562477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865025, 38.996483, 45.581848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593618, -0.614384, -0.519759,
		-0.319805, -0.412577, 0.852939,
		-0.738473, 0.672542, 0.048430,
		39.643482, 39.198246, 45.596378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597347, 38.369896, 45.705460>,  <40.160412, 38.727467, 45.562477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597347, 38.369896, 45.705460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456451, 38.698723, 45.526512>,  <39.371914, 38.896019, 45.419144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456451, 38.698723, 45.526512>,  <39.597347, 38.369896, 45.705460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456451, 38.698723, 45.526512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475479, -0.568900, -0.671024,
		-0.806133, -0.023646, 0.591262,
		-0.352236, 0.822067, -0.447366,
		39.350780, 38.945343, 45.392303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126186, 38.095341, 45.300182>,  <39.597347, 38.369896, 45.705460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126186, 38.095341, 45.300182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099419, 38.467609, 45.156311>,  <39.083359, 38.690971, 45.069988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099419, 38.467609, 45.156311>,  <39.126186, 38.095341, 45.300182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099419, 38.467609, 45.156311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759328, -0.281355, -0.586737,
		-0.647258, 0.233845, 0.725516,
		-0.066922, 0.930675, -0.359675,
		39.079342, 38.746811, 45.048409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408768, 38.235363, 45.308071>,  <39.126186, 38.095341, 45.300182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408768, 38.235363, 45.308071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582943, 38.461288, 45.027676>,  <38.687447, 38.596844, 44.859440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582943, 38.461288, 45.027676>,  <38.408768, 38.235363, 45.308071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582943, 38.461288, 45.027676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630747, -0.364170, -0.685229,
		-0.642303, 0.740520, 0.197679,
		0.435437, 0.564811, -0.700988,
		38.713573, 38.630733, 44.817379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899948, 38.351498, 44.868881>,  <38.408768, 38.235363, 45.308071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899948, 38.351498, 44.868881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230675, 38.445503, 44.664474>,  <38.429111, 38.501907, 44.541832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230675, 38.445503, 44.664474>,  <37.899948, 38.351498, 44.868881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230675, 38.445503, 44.664474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335658, -0.522853, -0.783555,
		-0.451335, 0.819385, -0.353420,
		0.826820, 0.235018, -0.511015,
		38.478722, 38.516010, 44.511169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636654, 38.470844, 44.135361>,  <37.899948, 38.351498, 44.868881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636654, 38.470844, 44.135361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030659, 38.449787, 44.069668>,  <38.267063, 38.437153, 44.030251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030659, 38.449787, 44.069668>,  <37.636654, 38.470844, 44.135361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030659, 38.449787, 44.069668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169223, -0.478740, -0.861494,
		-0.033278, 0.876377, -0.480474,
		0.985016, -0.052638, -0.164234,
		38.326164, 38.433994, 44.020397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830109, 38.822086, 43.429398>,  <37.636654, 38.470844, 44.135361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830109, 38.822086, 43.429398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086819, 38.543518, 43.557850>,  <38.240845, 38.376377, 43.634922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086819, 38.543518, 43.557850>,  <37.830109, 38.822086, 43.429398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086819, 38.543518, 43.557850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124423, -0.507754, -0.852470,
		0.756731, 0.507139, -0.412515,
		0.641777, -0.696417, 0.321133,
		38.279350, 38.334595, 43.654190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225922, 38.575165, 42.834686>,  <37.830109, 38.822086, 43.429398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225922, 38.575165, 42.834686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268414, 38.286926, 43.108753>,  <38.293907, 38.113983, 43.273193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268414, 38.286926, 43.108753>,  <38.225922, 38.575165, 42.834686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268414, 38.286926, 43.108753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091292, -0.693227, -0.714914,
		0.990142, 0.013392, -0.139422,
		0.106225, -0.720595, 0.685171,
		38.300282, 38.070747, 43.314304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735271, 38.228687, 42.526047>,  <38.225922, 38.575165, 42.834686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735271, 38.228687, 42.526047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609539, 37.982903, 42.815495>,  <38.534100, 37.835430, 42.989162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609539, 37.982903, 42.815495>,  <38.735271, 38.228687, 42.526047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609539, 37.982903, 42.815495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053059, -0.772437, -0.632872,
		0.947828, -0.160539, 0.275406,
		-0.314335, -0.614466, 0.723619,
		38.515240, 37.798561, 43.032581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166233, 37.701324, 42.580032>,  <38.735271, 38.228687, 42.526047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166233, 37.701324, 42.580032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825523, 37.540333, 42.714195>,  <38.621098, 37.443737, 42.794693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825523, 37.540333, 42.714195>,  <39.166233, 37.701324, 42.580032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825523, 37.540333, 42.714195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071329, -0.723315, -0.686824,
		0.519037, -0.561092, 0.644807,
		-0.851770, -0.402481, 0.335405,
		38.569992, 37.419590, 42.814816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240124, 37.069592, 42.535603>,  <39.166233, 37.701324, 42.580032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240124, 37.069592, 42.535603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845680, 37.048508, 42.598598>,  <38.609013, 37.035858, 42.636395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845680, 37.048508, 42.598598>,  <39.240124, 37.069592, 42.535603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845680, 37.048508, 42.598598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048500, -0.815567, -0.576626,
		0.158834, -0.576257, 0.801686,
		-0.986114, -0.052706, 0.157488,
		38.549847, 37.032696, 42.645844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099854, 36.297394, 42.880062>,  <39.240124, 37.069592, 42.535603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099854, 36.297394, 42.880062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807995, 36.472672, 42.670071>,  <38.632877, 36.577839, 42.544075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807995, 36.472672, 42.670071>,  <39.099854, 36.297394, 42.880062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807995, 36.472672, 42.670071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001174, -0.768511, -0.639836,
		-0.683820, -0.466240, 0.561258,
		-0.729650, 0.438192, -0.524975,
		38.589100, 36.604130, 42.512577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761341, 35.789940, 42.644466>,  <39.099854, 36.297394, 42.880062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761341, 35.789940, 42.644466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654228, 36.083115, 42.394318>,  <38.589958, 36.259022, 42.244228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654228, 36.083115, 42.394318>,  <38.761341, 35.789940, 42.644466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654228, 36.083115, 42.394318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139284, -0.671710, -0.727603,
		-0.953358, -0.107736, 0.281960,
		-0.267784, 0.732939, -0.625374,
		38.573895, 36.302998, 42.206707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579086, 35.386974, 42.113991>,  <38.761341, 35.789940, 42.644466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579086, 35.386974, 42.113991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534634, 35.742107, 41.935375>,  <38.507961, 35.955189, 41.828205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534634, 35.742107, 41.935375>,  <38.579086, 35.386974, 42.113991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534634, 35.742107, 41.935375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044527, -0.444421, -0.894711,
		-0.992808, -0.119313, 0.009856,
		-0.111131, 0.887837, -0.446537,
		38.501293, 36.008457, 41.801414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039959, 35.329670, 41.690758>,  <38.579086, 35.386974, 42.113991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039959, 35.329670, 41.690758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278267, 35.613327, 41.539932>,  <38.421249, 35.783520, 41.449436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278267, 35.613327, 41.539932>,  <38.039959, 35.329670, 41.690758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278267, 35.613327, 41.539932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049668, -0.501112, -0.863956,
		-0.801619, 0.495989, -0.333768,
		0.595768, 0.709141, -0.377067,
		38.456997, 35.826069, 41.426811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793224, 35.512669, 41.003483>,  <38.039959, 35.329670, 41.690758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793224, 35.512669, 41.003483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175732, 35.629662, 41.003086>,  <38.405235, 35.699856, 41.002846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175732, 35.629662, 41.003086>,  <37.793224, 35.512669, 41.003483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175732, 35.629662, 41.003086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072223, -0.239428, -0.968224,
		-0.283424, 0.925813, -0.250082,
		0.956271, 0.292480, -0.000995,
		38.462612, 35.717407, 41.002789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890099, 35.896812, 40.456062>,  <37.793224, 35.512669, 41.003483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890099, 35.896812, 40.456062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270878, 35.795864, 40.525463>,  <38.499344, 35.735294, 40.567104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270878, 35.795864, 40.525463>,  <37.890099, 35.896812, 40.456062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270878, 35.795864, 40.525463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114496, -0.232180, -0.965910,
		0.284049, 0.939363, -0.192128,
		0.951949, -0.252368, 0.173504,
		38.556461, 35.720154, 40.577515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255428, 36.275497, 40.023254>,  <37.890099, 35.896812, 40.456062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255428, 36.275497, 40.023254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489273, 35.961788, 40.106339>,  <38.629581, 35.773563, 40.156189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489273, 35.961788, 40.106339>,  <38.255428, 36.275497, 40.023254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489273, 35.961788, 40.106339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291756, -0.035668, -0.955828,
		0.757040, 0.619388, 0.207965,
		0.584610, -0.784274, 0.207712,
		38.664658, 35.726505, 40.168652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920620, 36.479103, 39.672386>,  <38.255428, 36.275497, 40.023254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920620, 36.479103, 39.672386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901543, 36.083302, 39.726940>,  <38.890099, 35.845821, 39.759670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901543, 36.083302, 39.726940>,  <38.920620, 36.479103, 39.672386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901543, 36.083302, 39.726940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558748, -0.139605, -0.817503,
		0.827965, 0.037216, 0.559543,
		-0.047690, -0.989508, 0.136382,
		38.887234, 35.786449, 39.767857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543209, 36.392204, 39.517582>,  <38.920620, 36.479103, 39.672386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543209, 36.392204, 39.517582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383503, 36.025581, 39.508476>,  <39.287682, 35.805607, 39.503014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383503, 36.025581, 39.508476>,  <39.543209, 36.392204, 39.517582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383503, 36.025581, 39.508476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500479, -0.197076, -0.843020,
		0.768187, -0.347979, 0.537401,
		-0.399262, -0.916554, -0.022765,
		39.263725, 35.750614, 39.501648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046211, 35.902500, 39.424671>,  <39.543209, 36.392204, 39.517582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046211, 35.902500, 39.424671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731964, 35.683277, 39.309822>,  <39.543415, 35.551743, 39.240913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731964, 35.683277, 39.309822>,  <40.046211, 35.902500, 39.424671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731964, 35.683277, 39.309822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557641, -0.426161, -0.712337,
		0.268039, -0.719737, 0.640417,
		-0.785616, -0.548057, -0.287127,
		39.496281, 35.518860, 39.223682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372330, 35.314362, 39.150742>,  <40.046211, 35.902500, 39.424671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372330, 35.314362, 39.150742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996136, 35.260979, 39.025723>,  <39.770420, 35.228951, 38.950710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996136, 35.260979, 39.025723>,  <40.372330, 35.314362, 39.150742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996136, 35.260979, 39.025723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334865, -0.520814, -0.785250,
		-0.057980, -0.843174, 0.534506,
		-0.940481, -0.133459, -0.312547,
		39.713993, 35.220940, 38.931957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299454, 34.590351, 39.004848>,  <40.372330, 35.314362, 39.150742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299454, 34.590351, 39.004848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011337, 34.769600, 38.793049>,  <39.838467, 34.877148, 38.665970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011337, 34.769600, 38.793049>,  <40.299454, 34.590351, 39.004848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011337, 34.769600, 38.793049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366767, -0.401878, -0.839033,
		-0.588783, -0.798549, 0.125112,
		-0.720289, 0.448121, -0.529501,
		39.795250, 34.904037, 38.634197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946114, 34.086201, 38.546246>,  <40.299454, 34.590351, 39.004848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946114, 34.086201, 38.546246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802227, 34.426998, 38.394081>,  <39.715897, 34.631477, 38.302784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802227, 34.426998, 38.394081>,  <39.946114, 34.086201, 38.546246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802227, 34.426998, 38.394081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056888, -0.426969, -0.902475,
		-0.931327, -0.302991, 0.202055,
		-0.359713, 0.851994, -0.380412,
		39.694313, 34.682598, 38.279957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264545, 33.956989, 38.238800>,  <39.946114, 34.086201, 38.546246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264545, 33.956989, 38.238800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463234, 34.264156, 38.077026>,  <39.582447, 34.448456, 37.979961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463234, 34.264156, 38.077026>,  <39.264545, 33.956989, 38.238800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463234, 34.264156, 38.077026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078446, -0.424355, -0.902092,
		-0.864355, 0.479818, -0.150548,
		0.496726, 0.767918, -0.404433,
		39.612251, 34.494534, 37.955696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984882, 33.903797, 37.561832>,  <39.264545, 33.956989, 38.238800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984882, 33.903797, 37.561832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278275, 34.174339, 37.534847>,  <39.454308, 34.336666, 37.518654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278275, 34.174339, 37.534847>,  <38.984882, 33.903797, 37.561832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278275, 34.174339, 37.534847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064717, -0.029313, -0.997473,
		-0.676625, 0.735991, 0.022272,
		0.733478, 0.676356, -0.067465,
		39.498318, 34.377247, 37.514606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792892, 34.445431, 37.076431>,  <38.984882, 33.903797, 37.561832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792892, 34.445431, 37.076431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191364, 34.419319, 37.099663>,  <39.430447, 34.403652, 37.113602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191364, 34.419319, 37.099663>,  <38.792892, 34.445431, 37.076431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191364, 34.419319, 37.099663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059128, 0.014212, -0.998149,
		0.064333, 0.997766, 0.018018,
		0.996175, -0.065280, 0.058082,
		39.490215, 34.399734, 37.117088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044395, 34.894150, 36.541801>,  <38.792892, 34.445431, 37.076431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044395, 34.894150, 36.541801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342171, 34.642620, 36.631599>,  <39.520836, 34.491703, 36.685478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342171, 34.642620, 36.631599>,  <39.044395, 34.894150, 36.541801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342171, 34.642620, 36.631599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192954, -0.119273, -0.973932,
		0.639204, 0.768349, 0.032542,
		0.744438, -0.628820, 0.224496,
		39.565502, 34.453976, 36.698948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551575, 35.228550, 36.251759>,  <39.044395, 34.894150, 36.541801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551575, 35.228550, 36.251759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645050, 34.845703, 36.320251>,  <39.701138, 34.615997, 36.361347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645050, 34.845703, 36.320251>,  <39.551575, 35.228550, 36.251759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645050, 34.845703, 36.320251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207560, -0.122944, -0.970466,
		0.949899, 0.262331, 0.169928,
		0.233691, -0.957114, 0.171234,
		39.715157, 34.558567, 36.371620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189995, 35.181244, 35.974258>,  <39.551575, 35.228550, 36.251759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189995, 35.181244, 35.974258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038059, 34.812477, 36.004692>,  <39.946899, 34.591217, 36.022953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038059, 34.812477, 36.004692>,  <40.189995, 35.181244, 35.974258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038059, 34.812477, 36.004692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281988, -0.193730, -0.939655,
		0.881026, -0.335461, 0.333556,
		-0.379837, -0.921919, 0.076085,
		39.924107, 34.535900, 36.027519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727509, 34.755600, 35.641804>,  <40.189995, 35.181244, 35.974258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727509, 34.755600, 35.641804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379822, 34.557884, 35.646694>,  <40.171211, 34.439255, 35.649628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379822, 34.557884, 35.646694>,  <40.727509, 34.755600, 35.641804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379822, 34.557884, 35.646694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005109, -0.033706, -0.999419,
		0.494413, -0.868644, 0.031823,
		-0.869212, -0.494288, 0.012227,
		40.119057, 34.409599, 35.650364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816662, 34.130779, 35.183334>,  <40.727509, 34.755600, 35.641804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816662, 34.130779, 35.183334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422432, 34.197289, 35.195988>,  <40.185894, 34.237194, 35.203579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422432, 34.197289, 35.195988>,  <40.816662, 34.130779, 35.183334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422432, 34.197289, 35.195988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034912, -0.016812, -0.999249,
		-0.165621, -0.985936, 0.022375,
		-0.985571, 0.166278, 0.031637,
		40.126759, 34.247169, 35.205479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464748, 33.878479, 35.294846>,  <40.816662, 34.130779, 35.183334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464748, 33.878479, 35.294846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639866, 33.853172, 34.936108>,  <41.744934, 33.837990, 34.720863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639866, 33.853172, 34.936108>,  <41.464748, 33.878479, 35.294846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639866, 33.853172, 34.936108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563567, -0.757915, 0.328568,
		-0.700523, -0.649278, -0.296151,
		0.437789, -0.063268, -0.896849,
		41.771202, 33.834190, 34.667053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319794, 33.238857, 34.845043>,  <41.464748, 33.878479, 35.294846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319794, 33.238857, 34.845043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679558, 33.397114, 34.770710>,  <41.895416, 33.492069, 34.726109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679558, 33.397114, 34.770710>,  <41.319794, 33.238857, 34.845043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679558, 33.397114, 34.770710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436515, -0.835148, 0.334638,
		-0.022803, -0.382096, -0.923841,
		0.899408, 0.395640, -0.185834,
		41.949379, 33.515804, 34.714958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752556, 32.640949, 34.917061>,  <41.319794, 33.238857, 34.845043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752556, 32.640949, 34.917061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987640, 32.964130, 34.934063>,  <42.128689, 33.158039, 34.944263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987640, 32.964130, 34.934063>,  <41.752556, 32.640949, 34.917061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987640, 32.964130, 34.934063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689727, -0.527786, 0.495699,
		0.422938, -0.262008, -0.867453,
		0.587707, 0.807957, 0.042507,
		42.163952, 33.206516, 34.946815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335011, 32.361778, 34.690132>,  <41.752556, 32.640949, 34.917061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335011, 32.361778, 34.690132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407867, 32.667076, 34.938095>,  <42.451584, 32.850254, 35.086872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407867, 32.667076, 34.938095>,  <42.335011, 32.361778, 34.690132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407867, 32.667076, 34.938095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476083, -0.620083, 0.623572,
		0.860330, 0.181546, -0.476312,
		0.182146, 0.763242, 0.619907,
		42.462513, 32.896049, 35.124065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005352, 32.695442, 34.753899>,  <42.335011, 32.361778, 34.690132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005352, 32.695442, 34.753899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810532, 32.690174, 35.103207>,  <42.693638, 32.687016, 35.312794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810532, 32.690174, 35.103207>,  <43.005352, 32.695442, 34.753899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810532, 32.690174, 35.103207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571066, -0.761328, 0.307024,
		0.660803, 0.648233, 0.378329,
		-0.487055, -0.013168, 0.873272,
		42.664413, 32.686222, 35.365189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481758, 32.815720, 35.448002>,  <43.005352, 32.695442, 34.753899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481758, 32.815720, 35.448002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175472, 32.565929, 35.509583>,  <42.991699, 32.416054, 35.546532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175472, 32.565929, 35.509583>,  <43.481758, 32.815720, 35.448002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175472, 32.565929, 35.509583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642740, -0.751765, 0.147423,
		0.023673, 0.211836, 0.977018,
		-0.765718, -0.624479, 0.153952,
		42.945755, 32.378586, 35.555767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661251, 32.289856, 36.007111>,  <43.481758, 32.815720, 35.448002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661251, 32.289856, 36.007111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380886, 32.102528, 35.791927>,  <43.212666, 31.990131, 35.662819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380886, 32.102528, 35.791927>,  <43.661251, 32.289856, 36.007111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380886, 32.102528, 35.791927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340963, -0.882479, 0.323999,
		-0.626472, 0.043671, 0.778219,
		-0.700911, -0.468321, -0.537958,
		43.170612, 31.962032, 35.630539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833447, 32.262135, 36.764652>,  <43.661251, 32.289856, 36.007111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833447, 32.262135, 36.764652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204884, 32.165806, 36.877598>,  <44.427746, 32.108009, 36.945366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204884, 32.165806, 36.877598>,  <43.833447, 32.262135, 36.764652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204884, 32.165806, 36.877598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237571, -0.970269, -0.046238,
		0.285103, -0.024145, -0.958193,
		0.928588, -0.240821, 0.282363,
		44.483459, 32.093559, 36.962307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111572, 31.788961, 36.281750>,  <43.833447, 32.262135, 36.764652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111572, 31.788961, 36.281750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311111, 31.720545, 36.621609>,  <44.430836, 31.679495, 36.825523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311111, 31.720545, 36.621609>,  <44.111572, 31.788961, 36.281750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311111, 31.720545, 36.621609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023596, -0.982650, -0.183961,
		0.866370, 0.071719, -0.494225,
		0.498844, -0.171040, 0.849647,
		44.460766, 31.669233, 36.876503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650219, 31.339430, 36.126095>,  <44.111572, 31.788961, 36.281750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650219, 31.339430, 36.126095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575233, 31.301003, 36.517120>,  <44.530243, 31.277946, 36.751736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575233, 31.301003, 36.517120>,  <44.650219, 31.339430, 36.126095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575233, 31.301003, 36.517120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054298, -0.992671, -0.107964,
		0.980770, -0.073319, 0.180872,
		-0.187462, -0.096067, 0.977563,
		44.518993, 31.272182, 36.810390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096081, 30.745434, 36.341770>,  <44.650219, 31.339430, 36.126095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096081, 30.745434, 36.341770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808918, 30.776339, 36.618504>,  <44.636620, 30.794882, 36.784542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808918, 30.776339, 36.618504>,  <45.096081, 30.745434, 36.341770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808918, 30.776339, 36.618504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176074, -0.981660, -0.073086,
		0.673499, -0.174283, 0.718348,
		-0.717911, 0.077260, 0.691834,
		44.593544, 30.799517, 36.826054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189861, 30.193665, 36.715714>,  <45.096081, 30.745434, 36.341770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189861, 30.193665, 36.715714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830315, 30.305561, 36.850639>,  <44.614586, 30.372700, 36.931595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830315, 30.305561, 36.850639>,  <45.189861, 30.193665, 36.715714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830315, 30.305561, 36.850639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266323, -0.959999, 0.086454,
		0.348009, -0.012124, 0.937413,
		-0.898867, 0.279741, 0.337318,
		44.560654, 30.389482, 36.951836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047787, 29.851213, 37.360069>,  <45.189861, 30.193665, 36.715714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047787, 29.851213, 37.360069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692768, 29.949127, 37.203945>,  <44.479755, 30.007875, 37.110271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692768, 29.949127, 37.203945>,  <45.047787, 29.851213, 37.360069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692768, 29.949127, 37.203945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334296, -0.925125, 0.179974,
		-0.317032, 0.290215, 0.902921,
		-0.887546, 0.244785, -0.390311,
		44.426506, 30.022562, 37.086853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537052, 29.601543, 37.856617>,  <45.047787, 29.851213, 37.360069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537052, 29.601543, 37.856617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330715, 29.639757, 37.516083>,  <44.206913, 29.662685, 37.311760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330715, 29.639757, 37.516083>,  <44.537052, 29.601543, 37.856617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330715, 29.639757, 37.516083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459401, -0.869639, 0.180773,
		-0.723087, 0.484357, 0.492486,
		-0.515844, 0.095534, -0.851339,
		44.175961, 29.668417, 37.260681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915318, 29.300098, 38.040398>,  <44.537052, 29.601543, 37.856617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915318, 29.300098, 38.040398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901508, 29.333019, 37.641994>,  <43.893223, 29.352772, 37.402954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901508, 29.333019, 37.641994>,  <43.915318, 29.300098, 38.040398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901508, 29.333019, 37.641994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482803, -0.873969, -0.055486,
		-0.875048, 0.478961, 0.069906,
		-0.034520, 0.082304, -0.996009,
		43.891151, 29.357710, 37.343193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312584, 28.979767, 37.837650>,  <43.915318, 29.300098, 38.040398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312584, 28.979767, 37.837650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554104, 28.980730, 37.518799>,  <43.699017, 28.981308, 37.327488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554104, 28.980730, 37.518799>,  <43.312584, 28.979767, 37.837650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554104, 28.980730, 37.518799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285597, -0.932956, -0.219149,
		-0.744216, 0.359981, -0.562633,
		0.603802, 0.002408, -0.797131,
		43.735245, 28.981453, 37.279659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831097, 28.674143, 37.243896>,  <43.312584, 28.979767, 37.837650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831097, 28.674143, 37.243896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203537, 28.636127, 37.103031>,  <43.427002, 28.613319, 37.018513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203537, 28.636127, 37.103031>,  <42.831097, 28.674143, 37.243896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203537, 28.636127, 37.103031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224571, -0.910147, -0.348139,
		-0.287432, 0.403238, -0.868782,
		0.931102, -0.095037, -0.352161,
		43.482868, 28.607616, 36.997383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735855, 28.415508, 36.594730>,  <42.831097, 28.674143, 37.243896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735855, 28.415508, 36.594730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110901, 28.325239, 36.700531>,  <43.335926, 28.271078, 36.764011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110901, 28.325239, 36.700531>,  <42.735855, 28.415508, 36.594730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110901, 28.325239, 36.700531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136249, -0.938372, -0.317640,
		0.319879, 0.261785, -0.910575,
		0.937611, -0.225671, 0.264497,
		43.392185, 28.257538, 36.779881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939217, 28.021219, 36.077236>,  <42.735855, 28.415508, 36.594730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939217, 28.021219, 36.077236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230049, 27.898623, 36.322971>,  <43.404549, 27.825064, 36.470413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230049, 27.898623, 36.322971>,  <42.939217, 28.021219, 36.077236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230049, 27.898623, 36.322971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176672, -0.948213, -0.263968,
		0.663426, 0.083391, -0.743580,
		0.727085, -0.306493, 0.614336,
		43.448174, 27.806675, 36.507271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438881, 27.579432, 35.657845>,  <42.939217, 28.021219, 36.077236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438881, 27.579432, 35.657845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479568, 27.498299, 36.047409>,  <43.503983, 27.449619, 36.281147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479568, 27.498299, 36.047409>,  <43.438881, 27.579432, 35.657845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479568, 27.498299, 36.047409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206488, -0.961977, -0.178781,
		0.973147, -0.182916, -0.139737,
		0.101722, -0.202834, 0.973915,
		43.510086, 27.437449, 36.339584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931133, 27.088015, 35.668816>,  <43.438881, 27.579432, 35.657845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931133, 27.088015, 35.668816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713497, 27.045835, 36.001766>,  <43.582916, 27.020529, 36.201538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713497, 27.045835, 36.001766>,  <43.931133, 27.088015, 35.668816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713497, 27.045835, 36.001766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132751, -0.968755, -0.209500,
		0.828459, -0.224485, 0.513090,
		-0.544089, -0.105448, 0.832375,
		43.550270, 27.014200, 36.251480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011417, 26.419127, 35.833607>,  <43.931133, 27.088015, 35.668816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011417, 26.419127, 35.833607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657459, 26.496283, 36.003197>,  <43.445084, 26.542576, 36.104950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657459, 26.496283, 36.003197>,  <44.011417, 26.419127, 35.833607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657459, 26.496283, 36.003197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272034, -0.952876, -0.134254,
		0.378099, -0.234136, 0.895668,
		-0.884895, 0.192891, 0.423975,
		43.391991, 26.554150, 36.130390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770641, 25.812874, 36.032883>,  <44.011417, 26.419127, 35.833607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770641, 25.812874, 36.032883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426888, 26.014788, 36.065495>,  <43.220634, 26.135937, 36.085064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426888, 26.014788, 36.065495>,  <43.770641, 25.812874, 36.032883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426888, 26.014788, 36.065495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511282, -0.846163, -0.150332,
		-0.006896, -0.170879, 0.985268,
		-0.859386, 0.504786, 0.081532,
		43.169071, 26.166224, 36.089954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417587, 25.436619, 36.505489>,  <43.770641, 25.812874, 36.032883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417587, 25.436619, 36.505489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150600, 25.653791, 36.301640>,  <42.990410, 25.784096, 36.179329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150600, 25.653791, 36.301640>,  <43.417587, 25.436619, 36.505489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150600, 25.653791, 36.301640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478460, -0.837113, -0.265176,
		-0.570588, 0.066841, 0.818512,
		-0.667463, 0.542931, -0.509627,
		42.950363, 25.816671, 36.148750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910583, 25.007397, 36.617760>,  <43.417587, 25.436619, 36.505489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910583, 25.007397, 36.617760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829845, 25.242371, 36.304283>,  <42.781403, 25.383354, 36.116196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829845, 25.242371, 36.304283>,  <42.910583, 25.007397, 36.617760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829845, 25.242371, 36.304283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299015, -0.798922, -0.521836,
		-0.932656, 0.129006, 0.336911,
		-0.201846, 0.587435, -0.783695,
		42.769291, 25.418602, 36.069176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413864, 24.733860, 36.345310>,  <42.910583, 25.007397, 36.617760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413864, 24.733860, 36.345310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495670, 24.986414, 36.046104>,  <42.544754, 25.137947, 35.866581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495670, 24.986414, 36.046104>,  <42.413864, 24.733860, 36.345310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495670, 24.986414, 36.046104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352205, -0.665522, -0.658051,
		-0.913305, 0.398035, 0.086270,
		0.204513, 0.631386, -0.748014,
		42.557026, 25.175829, 35.821701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749805, 24.739172, 35.891003>,  <42.413864, 24.733860, 36.345310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749805, 24.739172, 35.891003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083447, 24.834879, 35.692196>,  <42.283630, 24.892303, 35.572910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083447, 24.834879, 35.692196>,  <41.749805, 24.739172, 35.891003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083447, 24.834879, 35.692196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183064, -0.729892, -0.658594,
		-0.520351, 0.640320, -0.565001,
		0.834100, 0.239268, -0.497019,
		42.333675, 24.906660, 35.543091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516602, 24.686859, 35.188385>,  <41.749805, 24.739172, 35.891003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516602, 24.686859, 35.188385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915707, 24.667437, 35.169971>,  <42.155170, 24.655783, 35.158924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915707, 24.667437, 35.169971>,  <41.516602, 24.686859, 35.188385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915707, 24.667437, 35.169971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066813, -0.686539, -0.724017,
		0.003553, 0.725470, -0.688245,
		0.997759, -0.048556, -0.046031,
		42.215034, 24.652870, 35.156162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835178, 24.868526, 34.550732>,  <41.516602, 24.686859, 35.188385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835178, 24.868526, 34.550732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122620, 24.621914, 34.679417>,  <42.295086, 24.473946, 34.756626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122620, 24.621914, 34.679417>,  <41.835178, 24.868526, 34.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122620, 24.621914, 34.679417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001057, -0.463579, -0.886055,
		0.695421, 0.636381, -0.333780,
		0.718602, -0.616534, 0.321710,
		42.338200, 24.436954, 34.775928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260983, 24.827957, 33.978302>,  <41.835178, 24.868526, 34.550732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260983, 24.827957, 33.978302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279411, 24.506737, 34.215954>,  <42.290470, 24.314005, 34.358543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279411, 24.506737, 34.215954>,  <42.260983, 24.827957, 33.978302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279411, 24.506737, 34.215954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327450, -0.574040, -0.750502,
		0.943744, -0.159969, -0.289407,
		0.046075, -0.803049, 0.594129,
		42.293232, 24.265821, 34.394192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411518, 25.186241, 33.396973>,  <42.260983, 24.827957, 33.978302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411518, 25.186241, 33.396973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435863, 25.585310, 33.409294>,  <42.450470, 25.824751, 33.416687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435863, 25.585310, 33.409294>,  <42.411518, 25.186241, 33.396973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435863, 25.585310, 33.409294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099167, 0.024668, -0.994765,
		-0.993208, 0.063600, -0.097435,
		0.060864, 0.997671, 0.030807,
		42.454124, 25.884611, 33.418537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029160, 25.484257, 32.909336>,  <42.411518, 25.186241, 33.396973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029160, 25.484257, 32.909336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356472, 25.710445, 32.950630>,  <42.552860, 25.846159, 32.975407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356472, 25.710445, 32.950630>,  <42.029160, 25.484257, 32.909336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356472, 25.710445, 32.950630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222786, -0.146427, -0.963808,
		-0.529888, 0.811666, -0.245798,
		0.818281, 0.565471, 0.103238,
		42.601955, 25.880087, 32.981602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067478, 26.163456, 32.371014>,  <42.029160, 25.484257, 32.909336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067478, 26.163456, 32.371014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396633, 25.961140, 32.474571>,  <42.594128, 25.839750, 32.536705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396633, 25.961140, 32.474571>,  <42.067478, 26.163456, 32.371014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396633, 25.961140, 32.474571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179307, -0.201202, -0.962999,
		0.539166, 0.838865, -0.074875,
		0.822891, -0.505790, 0.258896,
		42.643501, 25.809402, 32.552238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701019, 26.392227, 32.044930>,  <42.067478, 26.163456, 32.371014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701019, 26.392227, 32.044930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688984, 25.994421, 32.085007>,  <42.681763, 25.755737, 32.109051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688984, 25.994421, 32.085007>,  <42.701019, 26.392227, 32.044930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688984, 25.994421, 32.085007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083899, -0.102395, -0.991199,
		0.996020, -0.021418, 0.086519,
		-0.030089, -0.994513, 0.100190,
		42.679958, 25.696068, 32.115063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049175, 26.095642, 31.399813>,  <42.701019, 26.392227, 32.044930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049175, 26.095642, 31.399813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272636, 26.373917, 31.219183>,  <43.406715, 26.540882, 31.110806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272636, 26.373917, 31.219183>,  <43.049175, 26.095642, 31.399813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272636, 26.373917, 31.219183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542671, 0.105147, 0.833338,
		0.627226, -0.710606, -0.318789,
		0.558655, 0.695689, -0.451576,
		43.440231, 26.582623, 31.083710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789406, 25.846151, 31.353199>,  <43.049175, 26.095642, 31.399813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789406, 25.846151, 31.353199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747875, 26.243986, 31.354671>,  <43.722958, 26.482687, 31.355555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747875, 26.243986, 31.354671>,  <43.789406, 25.846151, 31.353199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747875, 26.243986, 31.354671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786411, 0.079829, 0.612524,
		0.608915, 0.066494, -0.790443,
		-0.103829, 0.994588, 0.003683,
		43.716728, 26.542362, 31.355776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489223, 26.137365, 31.204233>,  <43.789406, 25.846151, 31.353199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489223, 26.137365, 31.204233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266766, 26.384790, 31.426252>,  <44.133289, 26.533245, 31.559464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266766, 26.384790, 31.426252>,  <44.489223, 26.137365, 31.204233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266766, 26.384790, 31.426252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792393, 0.193256, 0.578590,
		0.250628, 0.761598, -0.597624,
		-0.556147, 0.618563, 0.555049,
		44.099922, 26.570360, 31.592768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784809, 26.818579, 31.458263>,  <44.489223, 26.137365, 31.204233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784809, 26.818579, 31.458263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808460, 26.641897, 31.816347>,  <44.822651, 26.535889, 32.031197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808460, 26.641897, 31.816347>,  <44.784809, 26.818579, 31.458263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808460, 26.641897, 31.816347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475184, 0.801114, 0.363891,
		-0.877897, 0.403872, 0.257262,
		0.059131, -0.441706, 0.895209,
		44.826199, 26.509386, 32.084911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383762, 27.267881, 31.922865>,  <44.784809, 26.818579, 31.458263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383762, 27.267881, 31.922865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676292, 27.046190, 32.081863>,  <44.851810, 26.913176, 32.177261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676292, 27.046190, 32.081863>,  <44.383762, 27.267881, 31.922865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676292, 27.046190, 32.081863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516049, 0.830715, 0.208822,
		-0.445942, 0.052413, 0.893526,
		0.731320, -0.554226, 0.397498,
		44.895687, 26.879923, 32.201111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453335, 27.437538, 32.644009>,  <44.383762, 27.267881, 31.922865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453335, 27.437538, 32.644009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811874, 27.296648, 32.536308>,  <45.026997, 27.212114, 32.471687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811874, 27.296648, 32.536308>,  <44.453335, 27.437538, 32.644009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811874, 27.296648, 32.536308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415394, 0.879458, 0.232383,
		0.154944, -0.320142, 0.934613,
		0.896348, -0.352226, -0.269252,
		45.080780, 27.190981, 32.455532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933472, 27.577868, 33.198559>,  <44.453335, 27.437538, 32.644009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933472, 27.577868, 33.198559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.155281, 27.531588, 32.868923>,  <45.288368, 27.503820, 32.671143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.155281, 27.531588, 32.868923>,  <44.933472, 27.577868, 33.198559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155281, 27.531588, 32.868923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468828, 0.861607, 0.194508,
		0.687533, -0.494213, 0.532026,
		0.554526, -0.115698, -0.824084,
		45.321640, 27.496878, 32.621696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516907, 27.794477, 33.485508>,  <44.933472, 27.577868, 33.198559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516907, 27.794477, 33.485508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632240, 27.774706, 33.103008>,  <45.701439, 27.762844, 32.873508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632240, 27.774706, 33.103008>,  <45.516907, 27.794477, 33.485508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632240, 27.774706, 33.103008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590341, 0.795462, 0.136887,
		0.753897, -0.603985, 0.258538,
		0.288335, -0.049427, -0.956253,
		45.718742, 27.759878, 32.816132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262756, 27.806948, 33.424900>,  <45.516907, 27.794477, 33.485508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262756, 27.806948, 33.424900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112202, 27.967136, 33.090725>,  <46.021870, 28.063250, 32.890221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.112202, 27.967136, 33.090725>,  <46.262756, 27.806948, 33.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112202, 27.967136, 33.090725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568133, 0.812068, 0.133306,
		0.731816, -0.424464, -0.533174,
		-0.376390, 0.400470, -0.835437,
		45.999283, 28.087276, 32.840096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.825169, 28.149813, 33.197178>,  <46.262756, 27.806948, 33.424900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.825169, 28.149813, 33.197178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.516148, 28.294159, 32.988205>,  <46.330734, 28.380766, 32.862820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.516148, 28.294159, 32.988205>,  <46.825169, 28.149813, 33.197178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.516148, 28.294159, 32.988205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292085, 0.932549, 0.212224,
		0.563780, 0.011359, -0.825847,
		-0.772553, 0.360865, -0.522435,
		46.284382, 28.402418, 32.831474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.112740, 28.783905, 32.781399>,  <46.825169, 28.149813, 33.197178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.112740, 28.783905, 32.781399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718773, 28.822212, 32.839035>,  <46.482391, 28.845196, 32.873615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718773, 28.822212, 32.839035>,  <47.112740, 28.783905, 32.781399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718773, 28.822212, 32.839035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113935, 0.985767, 0.123622,
		-0.130196, 0.138175, -0.981813,
		-0.984920, 0.095768, 0.144086,
		46.423298, 28.850943, 32.882259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.917015, 29.361015, 32.416962>,  <47.112740, 28.783905, 32.781399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.917015, 29.361015, 32.416962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600384, 29.307741, 32.655514>,  <46.410404, 29.275776, 32.798645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600384, 29.307741, 32.655514>,  <46.917015, 29.361015, 32.416962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600384, 29.307741, 32.655514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073676, 0.948038, 0.309509,
		-0.606612, 0.288938, -0.740632,
		-0.791576, -0.133185, 0.596379,
		46.362911, 29.267786, 32.834427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703129, 29.959000, 32.513817>,  <46.917015, 29.361015, 32.416962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703129, 29.959000, 32.513817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490246, 29.792553, 32.808735>,  <46.362518, 29.692684, 32.985687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490246, 29.792553, 32.808735>,  <46.703129, 29.959000, 32.513817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490246, 29.792553, 32.808735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067198, 0.888887, 0.453171,
		-0.843944, 0.191635, -0.501033,
		-0.532206, -0.416119, 0.737294,
		46.330585, 29.667717, 33.029922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193325, 30.502806, 32.746235>,  <46.703129, 29.959000, 32.513817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193325, 30.502806, 32.746235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214455, 30.234930, 33.042538>,  <46.227135, 30.074205, 33.220322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.214455, 30.234930, 33.042538>,  <46.193325, 30.502806, 32.746235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214455, 30.234930, 33.042538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104042, 0.741451, 0.662892,
		-0.993169, 0.042051, 0.108844,
		0.052827, -0.669688, 0.740761,
		46.230305, 30.034023, 33.264767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742401, 30.834467, 33.219875>,  <46.193325, 30.502806, 32.746235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742401, 30.834467, 33.219875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988880, 30.587624, 33.415623>,  <46.136768, 30.439518, 33.533070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988880, 30.587624, 33.415623>,  <45.742401, 30.834467, 33.219875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988880, 30.587624, 33.415623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014390, 0.630063, 0.776411,
		-0.787460, -0.471381, 0.397124,
		0.616198, -0.617107, 0.489366,
		46.173740, 30.402491, 33.562431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402004, 30.675846, 33.954475>,  <45.742401, 30.834467, 33.219875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402004, 30.675846, 33.954475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795914, 30.608225, 33.938244>,  <46.032257, 30.567652, 33.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795914, 30.608225, 33.938244>,  <45.402004, 30.675846, 33.954475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795914, 30.608225, 33.938244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138572, 0.622288, 0.770425,
		-0.104989, -0.764316, 0.636238,
		0.984771, -0.169051, -0.040580,
		46.091347, 30.557510, 33.926071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537178, 30.414574, 34.529762>,  <45.402004, 30.675846, 33.954475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537178, 30.414574, 34.529762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860020, 30.598997, 34.382248>,  <46.053726, 30.709652, 34.293739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860020, 30.598997, 34.382248>,  <45.537178, 30.414574, 34.529762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860020, 30.598997, 34.382248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007767, 0.616289, 0.787481,
		0.590353, -0.638447, 0.493830,
		0.807107, 0.461057, -0.368787,
		46.102150, 30.737314, 34.271610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924015, 30.554188, 35.081646>,  <45.537178, 30.414574, 34.529762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924015, 30.554188, 35.081646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084515, 30.807652, 34.817078>,  <46.180813, 30.959730, 34.658337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084515, 30.807652, 34.817078>,  <45.924015, 30.554188, 35.081646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084515, 30.807652, 34.817078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189565, 0.649019, 0.736776,
		0.896141, -0.421009, 0.140296,
		0.401244, 0.633660, -0.661421,
		46.204887, 30.997749, 34.618652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297573, 30.853573, 35.552834>,  <45.924015, 30.554188, 35.081646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297573, 30.853573, 35.552834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322159, 31.095224, 35.235027>,  <46.336910, 31.240215, 35.044346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322159, 31.095224, 35.235027>,  <46.297573, 30.853573, 35.552834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322159, 31.095224, 35.235027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225554, 0.767019, 0.600671,
		0.972290, -0.216125, -0.089120,
		0.061463, 0.604128, -0.794513,
		46.340599, 31.276463, 34.996674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815960, 31.320869, 35.636364>,  <46.297573, 30.853573, 35.552834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815960, 31.320869, 35.636364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598904, 31.521120, 35.366573>,  <46.468670, 31.641270, 35.204700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598904, 31.521120, 35.366573>,  <46.815960, 31.320869, 35.636364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598904, 31.521120, 35.366573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111770, 0.838873, 0.532728,
		0.832498, 0.213692, -0.511159,
		-0.542637, 0.500627, -0.674476,
		46.436111, 31.671309, 35.164230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183567, 31.868219, 35.430122>,  <46.815960, 31.320869, 35.636364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183567, 31.868219, 35.430122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805603, 31.956617, 35.333538>,  <46.578823, 32.009655, 35.275585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805603, 31.956617, 35.333538>,  <47.183567, 31.868219, 35.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805603, 31.956617, 35.333538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053667, 0.832294, 0.551730,
		0.322899, 0.508377, -0.798304,
		-0.944911, 0.220996, -0.241464,
		46.522129, 32.022915, 35.261097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.175762, 32.535313, 34.926327>,  <47.183567, 31.868219, 35.430122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.175762, 32.535313, 34.926327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830505, 32.486225, 35.122253>,  <46.623352, 32.456772, 35.239811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830505, 32.486225, 35.122253>,  <47.175762, 32.535313, 34.926327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830505, 32.486225, 35.122253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174252, 0.838043, 0.517030,
		-0.473941, 0.531623, -0.701966,
		-0.863143, -0.122723, 0.489819,
		46.571564, 32.449409, 35.269199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.948189, 33.200699, 34.953323>,  <47.175762, 32.535313, 34.926327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.948189, 33.200699, 34.953323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740818, 33.003994, 35.233154>,  <46.616398, 32.885971, 35.401051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740818, 33.003994, 35.233154>,  <46.948189, 33.200699, 34.953323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740818, 33.003994, 35.233154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077972, 0.787506, 0.611355,
		-0.851561, 0.371489, -0.369919,
		-0.518425, -0.491763, 0.699575,
		46.585289, 32.856464, 35.443027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.522446, 33.708988, 35.319740>,  <46.948189, 33.200699, 34.953323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.522446, 33.708988, 35.319740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501083, 33.419510, 35.594959>,  <46.488266, 33.245823, 35.760090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501083, 33.419510, 35.594959>,  <46.522446, 33.708988, 35.319740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501083, 33.419510, 35.594959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079666, 0.689926, 0.719483,
		-0.995390, -0.016392, -0.094498,
		-0.053403, -0.723695, 0.688051,
		46.485062, 33.202400, 35.801376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040993, 33.950325, 35.791882>,  <46.522446, 33.708988, 35.319740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040993, 33.950325, 35.791882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279533, 33.687119, 35.975784>,  <46.422657, 33.529194, 36.086124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279533, 33.687119, 35.975784>,  <46.040993, 33.950325, 35.791882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279533, 33.687119, 35.975784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069714, 0.528124, 0.846301,
		-0.799689, -0.536745, 0.269075,
		0.596353, -0.658020, 0.459753,
		46.458439, 33.489712, 36.113708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716835, 34.732609, 35.655258>,  <46.040993, 33.950325, 35.791882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716835, 34.732609, 35.655258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016502, 34.582600, 35.436867>,  <46.196304, 34.492592, 35.305832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016502, 34.582600, 35.436867>,  <45.716835, 34.732609, 35.655258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016502, 34.582600, 35.436867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537263, 0.826159, 0.169731,
		0.387415, -0.420494, 0.820423,
		0.749171, -0.375027, -0.545983,
		46.241253, 34.470093, 35.273071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253590, 34.864601, 36.025833>,  <45.716835, 34.732609, 35.655258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253590, 34.864601, 36.025833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378311, 34.811039, 35.649567>,  <46.453144, 34.778904, 35.423809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378311, 34.811039, 35.649567>,  <46.253590, 34.864601, 36.025833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378311, 34.811039, 35.649567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451006, 0.892238, 0.022488,
		0.836283, -0.431256, 0.338597,
		0.311807, -0.133903, -0.940663,
		46.471855, 34.770866, 35.367367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920536, 34.788616, 35.917252>,  <46.253590, 34.864601, 36.025833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920536, 34.788616, 35.917252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744122, 34.979324, 35.613098>,  <46.638275, 35.093750, 35.430607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744122, 34.979324, 35.613098>,  <46.920536, 34.788616, 35.917252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744122, 34.979324, 35.613098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555518, 0.810446, 0.185950,
		0.704904, -0.340396, -0.622287,
		-0.441034, 0.476768, -0.760382,
		46.611813, 35.122356, 35.384983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455658, 34.742630, 35.340187>,  <46.920536, 34.788616, 35.917252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455658, 34.742630, 35.340187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660191, 34.887177, 35.028301>,  <47.782909, 34.973904, 34.841171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660191, 34.887177, 35.028301>,  <47.455658, 34.742630, 35.340187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.660191, 34.887177, 35.028301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419657, -0.896758, -0.140401,
		-0.749952, -0.255422, -0.610190,
		0.511331, 0.361364, -0.779715,
		47.813591, 34.995586, 34.794388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.721218, 40.995457, 41.853764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529682, 40.680698, 42.009457>,  <36.414761, 40.491844, 42.102871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529682, 40.680698, 42.009457>,  <36.721218, 40.995457, 41.853764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529682, 40.680698, 42.009457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192752, -0.526781, -0.827857,
		0.856480, -0.321386, 0.403921,
		-0.478840, -0.786900, 0.389230,
		36.386028, 40.444630, 42.126225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156246, 40.348900, 41.802437>,  <36.721218, 40.995457, 41.853764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156246, 40.348900, 41.802437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772873, 40.243568, 41.846382>,  <36.542850, 40.180370, 41.872749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772873, 40.243568, 41.846382>,  <37.156246, 40.348900, 41.802437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772873, 40.243568, 41.846382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056359, -0.552170, -0.831825,
		0.279711, -0.791053, 0.544056,
		-0.958429, -0.263333, 0.109865,
		36.485344, 40.164570, 41.879341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027100, 39.557743, 41.763916>,  <37.156246, 40.348900, 41.802437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027100, 39.557743, 41.763916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682579, 39.732849, 41.660744>,  <36.475868, 39.837914, 41.598839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682579, 39.732849, 41.660744>,  <37.027100, 39.557743, 41.763916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682579, 39.732849, 41.660744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123530, -0.672822, -0.729419,
		-0.492855, -0.596385, 0.633577,
		-0.861298, 0.437763, -0.257932,
		36.424191, 39.864178, 41.583363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560513, 38.978783, 41.737572>,  <37.027100, 39.557743, 41.763916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560513, 38.978783, 41.737572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408493, 39.287106, 41.533054>,  <36.317284, 39.472099, 41.410343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408493, 39.287106, 41.533054>,  <36.560513, 38.978783, 41.737572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408493, 39.287106, 41.533054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172536, -0.602138, -0.779526,
		-0.908734, -0.208038, 0.361832,
		-0.380044, 0.770811, -0.511289,
		36.294479, 39.518349, 41.379669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955139, 38.692604, 41.398823>,  <36.560513, 38.978783, 41.737572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955139, 38.692604, 41.398823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013687, 39.024773, 41.183796>,  <36.048817, 39.224075, 41.054779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013687, 39.024773, 41.183796>,  <35.955139, 38.692604, 41.398823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013687, 39.024773, 41.183796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058568, -0.535189, -0.842700,
		-0.987495, 0.154827, -0.029698,
		0.146366, 0.830422, -0.537565,
		36.057598, 39.273899, 41.022526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360691, 38.730919, 40.841610>,  <35.955139, 38.692604, 41.398823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360691, 38.730919, 40.841610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677380, 38.947010, 40.727535>,  <35.867393, 39.076664, 40.659092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677380, 38.947010, 40.727535>,  <35.360691, 38.730919, 40.841610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677380, 38.947010, 40.727535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031190, -0.430484, -0.902059,
		-0.610086, 0.723074, -0.323973,
		0.791721, 0.540229, -0.285184,
		35.914894, 39.109077, 40.641979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199680, 39.064369, 40.233746>,  <35.360691, 38.730919, 40.841610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199680, 39.064369, 40.233746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598862, 39.075863, 40.256577>,  <35.838371, 39.082760, 40.270275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598862, 39.075863, 40.256577>,  <35.199680, 39.064369, 40.233746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598862, 39.075863, 40.256577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062209, -0.232801, -0.970533,
		-0.014600, 0.972100, -0.234113,
		0.997956, 0.028733, 0.057074,
		35.898247, 39.084484, 40.273697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434849, 39.133533, 39.485176>,  <35.199680, 39.064369, 40.233746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434849, 39.133533, 39.485176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787174, 39.073669, 39.664852>,  <35.998569, 39.037750, 39.772659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787174, 39.073669, 39.664852>,  <35.434849, 39.133533, 39.485176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787174, 39.073669, 39.664852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387271, -0.318060, -0.865367,
		0.272382, 0.936183, -0.222191,
		0.880812, -0.149662, 0.449190,
		36.051418, 39.028770, 39.799610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014217, 39.472809, 39.079365>,  <35.434849, 39.133533, 39.485176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014217, 39.472809, 39.079365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161034, 39.164429, 39.287563>,  <36.249123, 38.979401, 39.412483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161034, 39.164429, 39.287563>,  <36.014217, 39.472809, 39.079365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161034, 39.164429, 39.287563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287206, -0.438285, -0.851716,
		0.884756, 0.462105, 0.060552,
		0.367043, -0.770951, 0.520494,
		36.271145, 38.933144, 39.443710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760292, 39.312191, 38.757877>,  <36.014217, 39.472809, 39.079365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760292, 39.312191, 38.757877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636303, 38.998260, 38.972527>,  <36.561909, 38.809902, 39.101315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636303, 38.998260, 38.972527>,  <36.760292, 39.312191, 38.757877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636303, 38.998260, 38.972527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274804, -0.614290, -0.739683,
		0.910165, -0.081815, 0.406086,
		-0.309972, -0.784828, 0.536622,
		36.543312, 38.762814, 39.133514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241379, 38.770622, 38.622055>,  <36.760292, 39.312191, 38.757877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241379, 38.770622, 38.622055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.910210, 38.575661, 38.733036>,  <36.711510, 38.458683, 38.799625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.910210, 38.575661, 38.733036>,  <37.241379, 38.770622, 38.622055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910210, 38.575661, 38.733036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030946, -0.533657, -0.845134,
		0.559988, -0.691119, 0.456910,
		-0.827922, -0.487405, 0.277454,
		36.661835, 38.429440, 38.816273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467979, 38.125557, 38.461403>,  <37.241379, 38.770622, 38.622055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467979, 38.125557, 38.461403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070862, 38.104557, 38.504501>,  <36.832592, 38.091957, 38.530361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070862, 38.104557, 38.504501>,  <37.467979, 38.125557, 38.461403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070862, 38.104557, 38.504501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072518, -0.452641, -0.888739,
		0.095429, -0.890146, 0.445571,
		-0.992791, -0.052499, 0.107746,
		36.773026, 38.088806, 38.536827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335125, 37.451248, 38.402470>,  <37.467979, 38.125557, 38.461403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335125, 37.451248, 38.402470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017467, 37.667633, 38.291698>,  <36.826874, 37.797466, 38.225235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017467, 37.667633, 38.291698>,  <37.335125, 37.451248, 38.402470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017467, 37.667633, 38.291698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103018, -0.568910, -0.815922,
		-0.598938, -0.619429, 0.507524,
		-0.794141, 0.540971, -0.276929,
		36.779224, 37.829922, 38.208622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784767, 36.993633, 38.256405>,  <37.335125, 37.451248, 38.402470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784767, 36.993633, 38.256405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708183, 37.324970, 38.045811>,  <36.662231, 37.523773, 37.919453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708183, 37.324970, 38.045811>,  <36.784767, 36.993633, 38.256405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708183, 37.324970, 38.045811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104762, -0.550590, -0.828176,
		-0.975893, -0.103407, 0.192195,
		-0.191460, 0.828346, -0.526484,
		36.650745, 37.573475, 37.887867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252525, 36.803310, 37.853348>,  <36.784767, 36.993633, 38.256405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252525, 36.803310, 37.853348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355412, 37.135239, 37.655262>,  <36.417145, 37.334396, 37.536411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355412, 37.135239, 37.655262>,  <36.252525, 36.803310, 37.853348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355412, 37.135239, 37.655262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268159, -0.431041, -0.861566,
		-0.928401, 0.354408, 0.111651,
		0.257220, 0.829819, -0.495217,
		36.432579, 37.384186, 37.506699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652992, 36.955681, 37.362049>,  <36.252525, 36.803310, 37.853348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652992, 36.955681, 37.362049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962135, 37.162273, 37.214573>,  <36.147621, 37.286228, 37.126087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962135, 37.162273, 37.214573>,  <35.652992, 36.955681, 37.362049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962135, 37.162273, 37.214573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189926, -0.366100, -0.910988,
		-0.605486, 0.774091, -0.184851,
		0.772861, 0.516483, -0.368689,
		36.193993, 37.317219, 37.103966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415802, 37.301548, 36.788040>,  <35.652992, 36.955681, 37.362049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415802, 37.301548, 36.788040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814457, 37.280487, 36.762951>,  <36.053650, 37.267849, 36.747898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814457, 37.280487, 36.762951>,  <35.415802, 37.301548, 36.788040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814457, 37.280487, 36.762951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070371, -0.158825, -0.984796,
		0.041893, 0.985902, -0.161997,
		0.996641, -0.052656, -0.062725,
		36.113449, 37.264690, 36.744133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583965, 37.725727, 36.174850>,  <35.415802, 37.301548, 36.788040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583965, 37.725727, 36.174850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864552, 37.447155, 36.235424>,  <36.032902, 37.280010, 36.271767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864552, 37.447155, 36.235424>,  <35.583965, 37.725727, 36.174850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864552, 37.447155, 36.235424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090158, -0.297477, -0.950462,
		0.706980, 0.653062, -0.271458,
		0.701463, -0.696432, 0.151431,
		36.074989, 37.238224, 36.280853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086155, 37.885361, 35.609390>,  <35.583965, 37.725727, 36.174850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086155, 37.885361, 35.609390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158901, 37.515114, 35.742153>,  <36.202549, 37.292965, 35.821812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158901, 37.515114, 35.742153>,  <36.086155, 37.885361, 35.609390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158901, 37.515114, 35.742153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199039, -0.295902, -0.934251,
		0.962969, 0.235969, 0.130420,
		0.181863, -0.925614, 0.331911,
		36.213459, 37.237431, 35.841728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668091, 37.748421, 35.227982>,  <36.086155, 37.885361, 35.609390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668091, 37.748421, 35.227982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.543362, 37.386246, 35.343189>,  <36.468525, 37.168941, 35.412315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.543362, 37.386246, 35.343189>,  <36.668091, 37.748421, 35.227982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543362, 37.386246, 35.343189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230878, -0.366255, -0.901417,
		0.921664, -0.214580, 0.323250,
		-0.311818, -0.905435, 0.288022,
		36.449818, 37.114616, 35.429596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104813, 37.357727, 34.939110>,  <36.668091, 37.748421, 35.227982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104813, 37.357727, 34.939110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798233, 37.112156, 35.014633>,  <36.614285, 36.964813, 35.059948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.798233, 37.112156, 35.014633>,  <37.104813, 37.357727, 34.939110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798233, 37.112156, 35.014633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072547, -0.374822, -0.924254,
		0.638196, -0.694696, 0.331820,
		-0.766449, -0.613927, 0.188812,
		36.568298, 36.927979, 35.071278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381382, 36.689362, 34.846054>,  <37.104813, 37.357727, 34.939110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381382, 36.689362, 34.846054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987137, 36.628464, 34.816696>,  <36.750591, 36.591927, 34.799080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987137, 36.628464, 34.816696>,  <37.381382, 36.689362, 34.846054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987137, 36.628464, 34.816696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138219, -0.476144, -0.868437,
		0.097264, -0.866088, 0.490337,
		-0.985614, -0.152242, -0.073398,
		36.691452, 36.582790, 34.794678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034683, 36.708725, 35.419777>,  <37.381382, 36.689362, 34.846054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034683, 36.708725, 35.419777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411404, 36.582123, 35.374462>,  <38.637436, 36.506161, 35.347275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411404, 36.582123, 35.374462>,  <38.034683, 36.708725, 35.419777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411404, 36.582123, 35.374462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282698, 0.563309, 0.776380,
		-0.181916, -0.763221, 0.620001,
		0.941801, -0.316509, -0.113286,
		38.693943, 36.487171, 35.340477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214401, 36.577602, 36.096050>,  <38.034683, 36.708725, 35.419777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214401, 36.577602, 36.096050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556484, 36.581341, 35.888771>,  <38.761734, 36.583584, 35.764404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556484, 36.581341, 35.888771>,  <38.214401, 36.577602, 36.096050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556484, 36.581341, 35.888771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427467, 0.552649, 0.715438,
		0.293066, -0.833362, 0.468637,
		0.855210, 0.009344, -0.518197,
		38.813046, 36.584145, 35.733311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717644, 36.320206, 36.547443>,  <38.214401, 36.577602, 36.096050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717644, 36.320206, 36.547443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920670, 36.535313, 36.278168>,  <39.042484, 36.664375, 36.116600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920670, 36.535313, 36.278168>,  <38.717644, 36.320206, 36.547443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920670, 36.535313, 36.278168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473945, 0.478236, 0.739369,
		0.719550, -0.694335, -0.012133,
		0.507568, 0.537763, -0.673191,
		39.072941, 36.696640, 36.076210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450871, 36.242027, 36.676849>,  <38.717644, 36.320206, 36.547443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450871, 36.242027, 36.676849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395176, 36.582848, 36.475014>,  <39.361759, 36.787342, 36.353912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.395176, 36.582848, 36.475014>,  <39.450871, 36.242027, 36.676849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395176, 36.582848, 36.475014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525919, 0.495383, 0.691379,
		0.839060, -0.169109, -0.517089,
		-0.139239, 0.852055, -0.504594,
		39.353405, 36.838463, 36.323635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086884, 36.570534, 36.831596>,  <39.450871, 36.242027, 36.676849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086884, 36.570534, 36.831596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823196, 36.855816, 36.736286>,  <39.664986, 37.026985, 36.679100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823196, 36.855816, 36.736286>,  <40.086884, 36.570534, 36.831596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823196, 36.855816, 36.736286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448810, 0.627426, 0.636323,
		0.603327, 0.312534, -0.733702,
		-0.659216, 0.713203, -0.238275,
		39.625431, 37.069778, 36.664803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483418, 37.158016, 36.808838>,  <40.086884, 36.570534, 36.831596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483418, 37.158016, 36.808838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.113884, 37.308811, 36.835369>,  <39.892162, 37.399288, 36.851288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.113884, 37.308811, 36.835369>,  <40.483418, 37.158016, 36.808838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113884, 37.308811, 36.835369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298590, 0.601307, 0.741131,
		0.239515, 0.704491, -0.668076,
		-0.923838, 0.376992, 0.066332,
		39.836731, 37.421909, 36.855270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594730, 37.856731, 36.928726>,  <40.483418, 37.158016, 36.808838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594730, 37.856731, 36.928726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.215263, 37.799515, 37.041557>,  <39.987583, 37.765186, 37.109257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.215263, 37.799515, 37.041557>,  <40.594730, 37.856731, 36.928726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215263, 37.799515, 37.041557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093548, 0.725062, 0.682300,
		-0.302120, 0.673665, -0.674462,
		-0.948669, -0.143042, 0.282076,
		39.930664, 37.756603, 37.126179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212753, 38.524479, 36.896084>,  <40.594730, 37.856731, 36.928726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212753, 38.524479, 36.896084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041645, 38.290398, 37.171635>,  <39.938980, 38.149948, 37.336967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.041645, 38.290398, 37.171635>,  <40.212753, 38.524479, 36.896084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041645, 38.290398, 37.171635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014829, 0.766569, 0.641990,
		-0.903767, 0.264407, -0.336591,
		-0.427767, -0.585201, 0.688879,
		39.913315, 38.114838, 37.378300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664455, 38.954891, 37.165329>,  <40.212753, 38.524479, 36.896084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664455, 38.954891, 37.165329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713360, 38.663803, 37.435284>,  <39.742702, 38.489151, 37.597260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713360, 38.663803, 37.435284>,  <39.664455, 38.954891, 37.165329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713360, 38.663803, 37.435284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153481, 0.657950, 0.737255,
		-0.980559, -0.193717, -0.031252,
		0.122257, -0.727719, 0.674891,
		39.750038, 38.445488, 37.637753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112041, 39.001530, 37.636692>,  <39.664455, 38.954891, 37.165329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112041, 39.001530, 37.636692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.360222, 38.776337, 37.855083>,  <39.509132, 38.641220, 37.986118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.360222, 38.776337, 37.855083>,  <39.112041, 39.001530, 37.636692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360222, 38.776337, 37.855083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238919, 0.527396, 0.815335,
		-0.746963, -0.636322, 0.192718,
		0.620455, -0.562981, 0.545975,
		39.546360, 38.607441, 38.018875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759365, 38.851334, 38.206196>,  <39.112041, 39.001530, 37.636692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759365, 38.851334, 38.206196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139057, 38.791904, 38.317104>,  <39.366875, 38.756245, 38.383652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139057, 38.791904, 38.317104>,  <38.759365, 38.851334, 38.206196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139057, 38.791904, 38.317104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153517, 0.550549, 0.820566,
		-0.274569, -0.821475, 0.499791,
		0.949234, -0.148576, 0.277274,
		39.423828, 38.747334, 38.400288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696144, 38.565449, 38.919945>,  <38.759365, 38.851334, 38.206196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696144, 38.565449, 38.919945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061790, 38.718739, 38.866974>,  <39.281178, 38.810715, 38.835194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061790, 38.718739, 38.866974>,  <38.696144, 38.565449, 38.919945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061790, 38.718739, 38.866974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038847, 0.407877, 0.912210,
		0.403570, -0.828729, 0.387736,
		0.914124, 0.383203, -0.132413,
		39.336025, 38.833706, 38.827248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136925, 38.396645, 39.542145>,  <38.696144, 38.565449, 38.919945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136925, 38.396645, 39.542145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293213, 38.711021, 39.350464>,  <39.386986, 38.899647, 39.235455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293213, 38.711021, 39.350464>,  <39.136925, 38.396645, 39.542145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293213, 38.711021, 39.350464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072249, 0.492799, 0.867139,
		0.917669, -0.373431, 0.135764,
		0.390721, 0.785938, -0.479206,
		39.410431, 38.946804, 39.206703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874001, 38.586540, 39.960663>,  <39.136925, 38.396645, 39.542145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874001, 38.586540, 39.960663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.698391, 38.896370, 39.778545>,  <39.593025, 39.082268, 39.669273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.698391, 38.896370, 39.778545>,  <39.874001, 38.586540, 39.960663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698391, 38.896370, 39.778545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211553, 0.581612, 0.785477,
		0.873215, 0.248522, -0.419204,
		-0.439022, 0.774574, -0.455297,
		39.566685, 39.128742, 39.641956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069576, 39.108799, 40.379990>,  <39.874001, 38.586540, 39.960663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069576, 39.108799, 40.379990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863476, 39.331734, 40.119564>,  <39.739815, 39.465496, 39.963306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863476, 39.331734, 40.119564>,  <40.069576, 39.108799, 40.379990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863476, 39.331734, 40.119564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057947, 0.780590, 0.622352,
		0.855077, 0.282941, -0.434497,
		-0.515253, 0.557337, -0.651068,
		39.708900, 39.498936, 39.924244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384525, 39.677124, 40.406738>,  <40.069576, 39.108799, 40.379990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384525, 39.677124, 40.406738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.005337, 39.740044, 40.296024>,  <39.777824, 39.777794, 40.229595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.005337, 39.740044, 40.296024>,  <40.384525, 39.677124, 40.406738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005337, 39.740044, 40.296024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105678, 0.664644, 0.739649,
		0.300308, 0.730415, -0.613440,
		-0.947970, 0.157296, -0.276787,
		39.720947, 39.787231, 40.212990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201645, 40.411556, 40.406094>,  <40.384525, 39.677124, 40.406738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201645, 40.411556, 40.406094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844856, 40.237362, 40.454662>,  <39.630783, 40.132847, 40.483803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844856, 40.237362, 40.454662>,  <40.201645, 40.411556, 40.406094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844856, 40.237362, 40.454662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270565, 0.729368, 0.628344,
		-0.362196, 0.527611, -0.768401,
		-0.891969, -0.435487, 0.121421,
		39.577267, 40.106716, 40.491089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636623, 40.914303, 40.298668>,  <40.201645, 40.411556, 40.406094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636623, 40.914303, 40.298668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.487339, 40.625748, 40.532013>,  <39.397770, 40.452614, 40.672020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.487339, 40.625748, 40.532013>,  <39.636623, 40.914303, 40.298668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487339, 40.625748, 40.532013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144681, 0.666354, 0.731464,
		-0.916396, 0.188588, -0.353061,
		-0.373209, -0.721392, 0.583359,
		39.375378, 40.409328, 40.707020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.420044, 41.124039, 40.377415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.627193, 40.912251, 40.646179>,  <38.751484, 40.785175, 40.807438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.627193, 40.912251, 40.646179>,  <38.420044, 41.124039, 40.377415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627193, 40.912251, 40.646179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586544, 0.351978, 0.729437,
		-0.622717, -0.771860, -0.128281,
		0.517871, -0.529475, 0.671912,
		38.782555, 40.753407, 40.847752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979893, 41.108273, 41.017334>,  <38.420044, 41.124039, 40.377415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979893, 41.108273, 41.017334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305050, 40.940174, 41.178627>,  <38.500145, 40.839314, 41.275402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305050, 40.940174, 41.178627>,  <37.979893, 41.108273, 41.017334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305050, 40.940174, 41.178627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223313, 0.414527, 0.882212,
		-0.537895, -0.807193, 0.243121,
		0.812896, -0.420246, 0.403229,
		38.548920, 40.814102, 41.299595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752499, 40.668804, 41.629662>,  <37.979893, 41.108273, 41.017334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752499, 40.668804, 41.629662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145172, 40.714565, 41.690609>,  <38.380775, 40.742023, 41.727177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.145172, 40.714565, 41.690609>,  <37.752499, 40.668804, 41.629662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145172, 40.714565, 41.690609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178956, 0.279042, 0.943456,
		0.065417, -0.953440, 0.294403,
		0.981680, 0.114403, 0.152370,
		38.439674, 40.748886, 41.736320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929428, 40.324333, 42.290417>,  <37.752499, 40.668804, 41.629662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929428, 40.324333, 42.290417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222412, 40.584923, 42.211338>,  <38.398201, 40.741276, 42.163891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222412, 40.584923, 42.211338>,  <37.929428, 40.324333, 42.290417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222412, 40.584923, 42.211338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045826, 0.336906, 0.940422,
		0.679264, -0.679764, 0.276625,
		0.732462, 0.651472, -0.197698,
		38.442150, 40.780365, 42.152027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440624, 40.296932, 42.853752>,  <37.929428, 40.324333, 42.290417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440624, 40.296932, 42.853752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457916, 40.657410, 42.681252>,  <38.468292, 40.873695, 42.577751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457916, 40.657410, 42.681252>,  <38.440624, 40.296932, 42.853752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457916, 40.657410, 42.681252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063662, 0.433260, 0.899018,
		0.997035, -0.011408, 0.076101,
		0.043227, 0.901197, -0.431249,
		38.470886, 40.927769, 42.551876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882149, 40.674931, 43.281551>,  <38.440624, 40.296932, 42.853752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882149, 40.674931, 43.281551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.702049, 40.975464, 43.088562>,  <38.593990, 41.155785, 42.972767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.702049, 40.975464, 43.088562>,  <38.882149, 40.674931, 43.281551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702049, 40.975464, 43.088562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036284, 0.555294, 0.830862,
		0.892167, 0.356586, -0.277280,
		-0.450246, 0.751329, -0.482476,
		38.566975, 41.200863, 42.943817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327648, 41.275738, 43.364212>,  <38.882149, 40.674931, 43.281551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327648, 41.275738, 43.364212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.963257, 41.414780, 43.275406>,  <38.744621, 41.498203, 43.222122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.963257, 41.414780, 43.275406>,  <39.327648, 41.275738, 43.364212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963257, 41.414780, 43.275406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037905, 0.465435, 0.884270,
		0.410710, 0.813965, -0.410825,
		-0.910978, 0.347606, -0.222012,
		38.689964, 41.519062, 43.208801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320324, 42.011139, 43.311462>,  <39.327648, 41.275738, 43.364212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320324, 42.011139, 43.311462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946484, 41.892281, 43.389675>,  <38.722179, 41.820965, 43.436604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946484, 41.892281, 43.389675>,  <39.320324, 42.011139, 43.311462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946484, 41.892281, 43.389675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009370, 0.528941, 0.848607,
		-0.355581, 0.794939, -0.491563,
		-0.934599, -0.297143, 0.195530,
		38.666103, 41.803139, 43.448334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067986, 42.677101, 43.509769>,  <39.320324, 42.011139, 43.311462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067986, 42.677101, 43.509769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.787029, 42.416248, 43.623875>,  <38.618458, 42.259735, 43.692337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.787029, 42.416248, 43.623875>,  <39.067986, 42.677101, 43.509769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787029, 42.416248, 43.623875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016984, 0.385291, 0.922639,
		-0.711591, 0.652895, -0.259549,
		-0.702388, -0.652133, 0.285259,
		38.576313, 42.220608, 43.709454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547417, 43.104534, 43.744434>,  <39.067986, 42.677101, 43.509769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547417, 43.104534, 43.744434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530151, 42.733215, 43.892166>,  <38.519791, 42.510426, 43.980804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.530151, 42.733215, 43.892166>,  <38.547417, 43.104534, 43.744434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530151, 42.733215, 43.892166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032152, 0.368193, 0.929193,
		-0.998550, 0.051983, 0.013954,
		-0.043165, -0.928295, 0.369331,
		38.517200, 42.454727, 44.002964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082985, 43.132820, 44.322411>,  <38.547417, 43.104534, 43.744434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082985, 43.132820, 44.322411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298191, 42.801540, 44.385185>,  <38.427315, 42.602772, 44.422852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298191, 42.801540, 44.385185>,  <38.082985, 43.132820, 44.322411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298191, 42.801540, 44.385185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082856, 0.237234, 0.967913,
		-0.838856, -0.507744, 0.196256,
		0.538010, -0.828200, 0.156936,
		38.459595, 42.553082, 44.432266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967613, 43.018944, 44.972240>,  <38.082985, 43.132820, 44.322411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967613, 43.018944, 44.972240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282982, 42.776726, 44.928967>,  <38.472202, 42.631393, 44.903004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282982, 42.776726, 44.928967>,  <37.967613, 43.018944, 44.972240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282982, 42.776726, 44.928967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183962, 0.064292, 0.980829,
		-0.586980, -0.793210, 0.162087,
		0.788424, -0.605544, -0.108182,
		38.519508, 42.595062, 44.896511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006454, 42.563225, 45.475800>,  <37.967613, 43.018944, 44.972240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006454, 42.563225, 45.475800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391460, 42.540447, 45.369720>,  <38.622463, 42.526783, 45.306072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391460, 42.540447, 45.369720>,  <38.006454, 42.563225, 45.475800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391460, 42.540447, 45.369720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246014, -0.228525, 0.941941,
		-0.114239, -0.971871, -0.205949,
		0.962510, -0.056940, -0.265201,
		38.680214, 42.523365, 45.290161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268265, 41.995148, 45.870724>,  <38.006454, 42.563225, 45.475800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268265, 41.995148, 45.870724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614395, 42.174400, 45.780937>,  <38.822075, 42.281952, 45.727066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614395, 42.174400, 45.780937>,  <38.268265, 41.995148, 45.870724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614395, 42.174400, 45.780937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295725, -0.094914, 0.950546,
		0.404666, -0.888914, -0.214656,
		0.865328, 0.448133, -0.224466,
		38.873993, 42.308842, 45.713596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787407, 41.635990, 46.237335>,  <38.268265, 41.995148, 45.870724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787407, 41.635990, 46.237335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957153, 41.984509, 46.138733>,  <39.059002, 42.193619, 46.079571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957153, 41.984509, 46.138733>,  <38.787407, 41.635990, 46.237335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957153, 41.984509, 46.138733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471389, 0.019860, 0.881702,
		0.773116, -0.490363, -0.402289,
		0.424364, 0.871292, -0.246506,
		39.084461, 42.245895, 46.064781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562675, 41.551311, 46.315559>,  <38.787407, 41.635990, 46.237335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562675, 41.551311, 46.315559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487789, 41.943802, 46.334049>,  <39.442856, 42.179298, 46.345142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.487789, 41.943802, 46.334049>,  <39.562675, 41.551311, 46.315559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487789, 41.943802, 46.334049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648149, 0.088037, 0.756407,
		0.738141, 0.171572, -0.652466,
		-0.187220, 0.981230, 0.046221,
		39.431622, 42.238171, 46.347916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146259, 41.714520, 46.617393>,  <39.562675, 41.551311, 46.315559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146259, 41.714520, 46.617393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903172, 42.029350, 46.659710>,  <39.757320, 42.218250, 46.685101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903172, 42.029350, 46.659710>,  <40.146259, 41.714520, 46.617393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903172, 42.029350, 46.659710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446729, 0.228673, 0.864952,
		0.656592, 0.572905, -0.490578,
		-0.607717, 0.787076, 0.105789,
		39.720856, 42.265472, 46.691448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545162, 42.335064, 46.782146>,  <40.146259, 41.714520, 46.617393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545162, 42.335064, 46.782146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.174606, 42.415646, 46.909401>,  <39.952271, 42.463997, 46.985752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.174606, 42.415646, 46.909401>,  <40.545162, 42.335064, 46.782146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174606, 42.415646, 46.909401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357555, 0.205607, 0.910978,
		0.118113, 0.957675, -0.262506,
		-0.926393, 0.201458, 0.318137,
		39.896687, 42.476082, 47.004841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718975, 42.736343, 47.247616>,  <40.545162, 42.335064, 46.782146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718975, 42.736343, 47.247616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337662, 42.660824, 47.341938>,  <40.108875, 42.615513, 47.398533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337662, 42.660824, 47.341938>,  <40.718975, 42.736343, 47.247616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337662, 42.660824, 47.341938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160062, 0.346315, 0.924362,
		-0.256184, 0.918923, -0.299917,
		-0.953284, -0.188802, 0.235805,
		40.051678, 42.604183, 47.412678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531425, 43.224201, 47.713226>,  <40.718975, 42.736343, 47.247616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531425, 43.224201, 47.713226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247810, 42.946449, 47.762394>,  <40.077641, 42.779800, 47.791893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247810, 42.946449, 47.762394>,  <40.531425, 43.224201, 47.713226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247810, 42.946449, 47.762394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071033, 0.243753, 0.967232,
		-0.701585, 0.677072, -0.222154,
		-0.709037, -0.694376, 0.122918,
		40.035099, 42.738136, 47.799271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121124, 43.520226, 48.248928>,  <40.531425, 43.224201, 47.713226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121124, 43.520226, 48.248928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034355, 43.129780, 48.253796>,  <39.982292, 42.895512, 48.256718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034355, 43.129780, 48.253796>,  <40.121124, 43.520226, 48.248928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034355, 43.129780, 48.253796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055392, 0.024757, 0.998158,
		-0.974616, 0.215849, -0.059439,
		-0.216923, -0.976113, 0.012173,
		39.969276, 42.836945, 48.257446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450123, 43.385990, 48.534237>,  <40.121124, 43.520226, 48.248928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450123, 43.385990, 48.534237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657032, 43.058479, 48.633858>,  <39.781178, 42.861973, 48.693630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657032, 43.058479, 48.633858>,  <39.450123, 43.385990, 48.534237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657032, 43.058479, 48.633858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031469, 0.309015, 0.950536,
		-0.855240, -0.483851, 0.185612,
		0.517274, -0.818778, 0.249056,
		39.812214, 42.812847, 48.708576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329342, 43.274635, 49.271950>,  <39.450123, 43.385990, 48.534237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329342, 43.274635, 49.271950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.634758, 43.027920, 49.195442>,  <39.818008, 42.879890, 49.149540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.634758, 43.027920, 49.195442>,  <39.329342, 43.274635, 49.271950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634758, 43.027920, 49.195442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216621, -0.034390, 0.975650,
		-0.608346, -0.786379, 0.107351,
		0.763538, -0.616787, -0.191267,
		39.863819, 42.842884, 49.138062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782444, 42.655331, 49.148670>,  <39.329342, 43.274635, 49.271950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782444, 42.655331, 49.148670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631268, 42.379841, 49.396160>,  <38.540562, 42.214546, 49.544655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631268, 42.379841, 49.396160>,  <38.782444, 42.655331, 49.148670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631268, 42.379841, 49.396160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587874, -0.337759, -0.735067,
		0.715239, -0.641541, -0.277233,
		-0.377937, -0.688727, 0.618724,
		38.517887, 42.173222, 49.581776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848045, 42.003239, 48.803486>,  <38.782444, 42.655331, 49.148670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848045, 42.003239, 48.803486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.573631, 41.953163, 49.090172>,  <38.408981, 41.923119, 49.262184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.573631, 41.953163, 49.090172>,  <38.848045, 42.003239, 48.803486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573631, 41.953163, 49.090172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631535, -0.386684, -0.672041,
		0.361276, -0.913676, 0.186217,
		-0.686035, -0.125190, 0.716718,
		38.367821, 41.915607, 49.305187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585232, 41.335552, 48.656330>,  <38.848045, 42.003239, 48.803486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585232, 41.335552, 48.656330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312775, 41.547672, 48.858250>,  <38.149300, 41.674946, 48.979401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312775, 41.547672, 48.858250>,  <38.585232, 41.335552, 48.656330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312775, 41.547672, 48.858250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729157, -0.429024, -0.533168,
		-0.066169, -0.731242, 0.678901,
		-0.681139, 0.530305, 0.504803,
		38.108433, 41.706764, 49.009689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124741, 40.847832, 48.733253>,  <38.585232, 41.335552, 48.656330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124741, 40.847832, 48.733253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908276, 41.171535, 48.824684>,  <37.778397, 41.365757, 48.879543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908276, 41.171535, 48.824684>,  <38.124741, 40.847832, 48.733253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908276, 41.171535, 48.824684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797744, -0.408064, -0.443947,
		-0.265991, -0.422595, 0.866408,
		-0.541160, 0.809257, 0.228581,
		37.745926, 41.414314, 48.893257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350349, 40.674885, 49.003090>,  <38.124741, 40.847832, 48.733253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350349, 40.674885, 49.003090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381023, 41.041348, 48.845726>,  <37.399429, 41.261227, 48.751308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.381023, 41.041348, 48.845726>,  <37.350349, 40.674885, 49.003090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381023, 41.041348, 48.845726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896291, -0.109511, -0.429731,
		-0.436785, 0.385567, 0.812747,
		0.076686, 0.916158, -0.393413,
		37.404030, 41.316196, 48.727703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538689, 40.871288, 48.822559>,  <37.350349, 40.674885, 49.003090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538689, 40.871288, 48.822559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762749, 41.129734, 48.615189>,  <36.897186, 41.284801, 48.490765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762749, 41.129734, 48.615189>,  <36.538689, 40.871288, 48.822559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762749, 41.129734, 48.615189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616917, -0.092293, -0.781598,
		-0.552847, 0.757642, 0.346900,
		0.560155, 0.646112, -0.518426,
		36.930794, 41.323566, 48.459660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053993, 41.364132, 48.483906>,  <36.538689, 40.871288, 48.822559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053993, 41.364132, 48.483906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399445, 41.381142, 48.282974>,  <36.606716, 41.391350, 48.162415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399445, 41.381142, 48.282974>,  <36.053993, 41.364132, 48.483906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399445, 41.381142, 48.282974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495877, -0.107850, -0.861670,
		-0.090820, 0.993257, -0.072054,
		0.863631, 0.042527, -0.502328,
		36.658535, 41.393898, 48.132275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833931, 41.549671, 47.806946>,  <36.053993, 41.364132, 48.483906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833931, 41.549671, 47.806946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209793, 41.441364, 47.723305>,  <36.435310, 41.376381, 47.673119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209793, 41.441364, 47.723305>,  <35.833931, 41.549671, 47.806946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209793, 41.441364, 47.723305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285460, -0.283688, -0.915442,
		0.188556, 0.919893, -0.343864,
		0.939659, -0.270772, -0.209102,
		36.491692, 41.360134, 47.660576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919029, 41.748829, 47.129688>,  <35.833931, 41.549671, 47.806946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919029, 41.748829, 47.129688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188309, 41.465122, 47.213345>,  <36.349876, 41.294899, 47.263538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188309, 41.465122, 47.213345>,  <35.919029, 41.748829, 47.129688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188309, 41.465122, 47.213345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276883, -0.504034, -0.818099,
		0.685666, 0.492836, -0.535700,
		0.673199, -0.709269, 0.209141,
		36.390270, 41.252342, 47.276089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882507, 41.484371, 46.564041>,  <35.919029, 41.748829, 47.129688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882507, 41.484371, 46.564041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166840, 41.242371, 46.707531>,  <36.337440, 41.097168, 46.793625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166840, 41.242371, 46.707531>,  <35.882507, 41.484371, 46.564041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166840, 41.242371, 46.707531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150321, -0.367559, -0.917771,
		0.687108, 0.706308, -0.170329,
		0.710835, -0.605004, 0.358726,
		36.380089, 41.060871, 46.815147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509155, 41.547401, 46.242226>,  <35.882507, 41.484371, 46.564041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509155, 41.547401, 46.242226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537144, 41.172501, 46.378849>,  <36.553936, 40.947559, 46.460823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537144, 41.172501, 46.378849>,  <36.509155, 41.547401, 46.242226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537144, 41.172501, 46.378849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046731, -0.338939, -0.939647,
		0.996453, 0.081714, 0.020081,
		0.069976, -0.937253, 0.341555,
		36.558136, 40.891323, 46.481316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055420, 41.198769, 45.943291>,  <36.509155, 41.547401, 46.242226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055420, 41.198769, 45.943291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834644, 40.889168, 46.067410>,  <36.702179, 40.703407, 46.141880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834644, 40.889168, 46.067410>,  <37.055420, 41.198769, 45.943291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834644, 40.889168, 46.067410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096779, -0.429050, -0.898081,
		0.828250, -0.465655, 0.311716,
		-0.551938, -0.774003, 0.310295,
		36.669064, 40.656967, 46.160500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409557, 40.661568, 45.730709>,  <37.055420, 41.198769, 45.943291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409557, 40.661568, 45.730709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026691, 40.549923, 45.761539>,  <36.796974, 40.482937, 45.780037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026691, 40.549923, 45.761539>,  <37.409557, 40.661568, 45.730709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026691, 40.549923, 45.761539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010036, -0.234043, -0.972174,
		0.289382, -0.931301, 0.221216,
		-0.957161, -0.279109, 0.077074,
		36.739544, 40.466190, 45.784660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409996, 40.003151, 45.423340>,  <37.409557, 40.661568, 45.730709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409996, 40.003151, 45.423340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034855, 40.139454, 45.397045>,  <36.809769, 40.221233, 45.381268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034855, 40.139454, 45.397045>,  <37.409996, 40.003151, 45.423340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034855, 40.139454, 45.397045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029121, -0.111478, -0.993340,
		-0.345812, -0.933520, 0.094627,
		-0.937852, 0.340754, -0.065735,
		36.753498, 40.241680, 45.377323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014004, 39.543243, 44.989254>,  <37.409996, 40.003151, 45.423340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014004, 39.543243, 44.989254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801777, 39.882286, 44.992329>,  <36.674442, 40.085712, 44.994175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801777, 39.882286, 44.992329>,  <37.014004, 39.543243, 44.989254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801777, 39.882286, 44.992329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144829, -0.081710, -0.986077,
		-0.835181, -0.524290, 0.166111,
		-0.530563, 0.847610, 0.007689,
		36.642609, 40.136570, 44.994637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522079, 39.380619, 44.563667>,  <37.014004, 39.543243, 44.989254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522079, 39.380619, 44.563667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494968, 39.779682, 44.560120>,  <36.478703, 40.019119, 44.557991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494968, 39.779682, 44.560120>,  <36.522079, 39.380619, 44.563667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494968, 39.779682, 44.560120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249056, -0.025525, -0.968153,
		-0.966115, -0.063409, 0.250204,
		-0.067776, 0.997661, -0.008867,
		36.474636, 40.078979, 44.557461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945564, 39.522579, 43.994675>,  <36.522079, 39.380619, 44.563667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945564, 39.522579, 43.994675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140549, 39.864655, 44.065140>,  <36.257538, 40.069901, 44.107418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140549, 39.864655, 44.065140>,  <35.945564, 39.522579, 43.994675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140549, 39.864655, 44.065140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352127, 0.377164, -0.856594,
		-0.798995, 0.355520, 0.484987,
		0.487456, 0.855191, 0.176164,
		36.286785, 40.121212, 44.117989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474426, 40.161823, 44.080173>,  <35.945564, 39.522579, 43.994675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474426, 40.161823, 44.080173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832294, 40.296963, 43.963268>,  <36.047016, 40.378048, 43.893124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832294, 40.296963, 43.963268>,  <35.474426, 40.161823, 44.080173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832294, 40.296963, 43.963268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427812, 0.459660, -0.778261,
		-0.128592, 0.821323, 0.555781,
		0.894674, 0.337848, -0.292263,
		36.100697, 40.398315, 43.875587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317596, 40.749702, 43.763073>,  <35.474426, 40.161823, 44.080173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317596, 40.749702, 43.763073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679413, 40.643803, 43.629383>,  <35.896503, 40.580261, 43.549168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679413, 40.643803, 43.629383>,  <35.317596, 40.749702, 43.763073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679413, 40.643803, 43.629383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307195, 0.138934, -0.941450,
		0.295688, 0.954255, 0.044341,
		0.904544, -0.264754, -0.334224,
		35.950775, 40.564377, 43.529118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500690, 41.208588, 43.153511>,  <35.317596, 40.749702, 43.763073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500690, 41.208588, 43.153511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763138, 40.910351, 43.106865>,  <35.920605, 40.731407, 43.078876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763138, 40.910351, 43.106865>,  <35.500690, 41.208588, 43.153511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763138, 40.910351, 43.106865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182723, -0.007024, -0.983139,
		0.732205, 0.666362, -0.140846,
		0.656116, -0.745596, -0.116617,
		35.959972, 40.686672, 43.071880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970257, 41.290520, 42.634090>,  <35.500690, 41.208588, 43.153511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970257, 41.290520, 42.634090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001076, 40.893536, 42.672199>,  <36.019569, 40.655346, 42.695065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001076, 40.893536, 42.672199>,  <35.970257, 41.290520, 42.634090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001076, 40.893536, 42.672199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018175, -0.094143, -0.995393,
		0.996861, 0.078428, 0.010784,
		0.077051, -0.992465, 0.095273,
		36.024193, 40.595795, 42.700783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.566547, 24.559587, 35.007042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171200, 24.618225, 35.023258>,  <42.933990, 24.653408, 35.032990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171200, 24.618225, 35.023258>,  <43.566547, 24.559587, 35.007042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171200, 24.618225, 35.023258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135904, 0.731502, 0.668158,
		0.068293, 0.665894, -0.742914,
		-0.988365, 0.146596, 0.040542,
		42.874691, 24.662205, 35.035419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411842, 25.291378, 34.877056>,  <43.566547, 24.559587, 35.007042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411842, 25.291378, 34.877056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084793, 25.168056, 35.071556>,  <42.888565, 25.094063, 35.188255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084793, 25.168056, 35.071556>,  <43.411842, 25.291378, 34.877056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084793, 25.168056, 35.071556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037500, 0.814241, 0.579315,
		-0.574532, 0.491895, -0.654180,
		-0.817622, -0.308303, 0.486253,
		42.839508, 25.075565, 35.217434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911118, 25.814678, 34.776493>,  <43.411842, 25.291378, 34.877056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911118, 25.814678, 34.776493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798950, 25.622204, 35.108715>,  <42.731647, 25.506720, 35.308048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798950, 25.622204, 35.108715>,  <42.911118, 25.814678, 34.776493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798950, 25.622204, 35.108715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008462, 0.866479, 0.499142,
		-0.959840, 0.132941, -0.247051,
		-0.280421, -0.481187, 0.830556,
		42.714825, 25.477848, 35.357883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387169, 26.229424, 35.112442>,  <42.911118, 25.814678, 34.776493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387169, 26.229424, 35.112442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504333, 25.979832, 35.402229>,  <42.574631, 25.830076, 35.576099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504333, 25.979832, 35.402229>,  <42.387169, 26.229424, 35.112442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504333, 25.979832, 35.402229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125819, 0.776264, 0.617724,
		-0.947825, -0.089787, 0.305885,
		0.292911, -0.623981, 0.724466,
		42.592209, 25.792637, 35.619568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945625, 26.395927, 35.639122>,  <42.387169, 26.229424, 35.112442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945625, 26.395927, 35.639122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.253712, 26.203089, 35.806145>,  <42.438564, 26.087385, 35.906357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.253712, 26.203089, 35.806145>,  <41.945625, 26.395927, 35.639122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253712, 26.203089, 35.806145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089936, 0.730251, 0.677233,
		-0.631415, -0.484060, 0.605806,
		0.770212, -0.482099, 0.417557,
		42.484776, 26.058458, 35.931412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958645, 26.602974, 36.347446>,  <41.945625, 26.395927, 35.639122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958645, 26.602974, 36.347446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333183, 26.503231, 36.248589>,  <42.557907, 26.443386, 36.189274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.333183, 26.503231, 36.248589>,  <41.958645, 26.602974, 36.347446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333183, 26.503231, 36.248589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349463, 0.729517, 0.587947,
		0.033688, -0.636888, 0.770220,
		0.936344, -0.249357, -0.247145,
		42.614086, 26.428425, 36.174446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367085, 26.714319, 36.896477>,  <41.958645, 26.602974, 36.347446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367085, 26.714319, 36.896477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674175, 26.698915, 36.640629>,  <42.858429, 26.689672, 36.487122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674175, 26.698915, 36.640629>,  <42.367085, 26.714319, 36.896477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674175, 26.698915, 36.640629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402295, 0.805919, 0.434343,
		0.498754, -0.590773, 0.634218,
		0.767726, -0.038512, -0.639620,
		42.904491, 26.687363, 36.448742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933086, 26.840355, 37.321552>,  <42.367085, 26.714319, 36.896477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933086, 26.840355, 37.321552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.099438, 26.907412, 36.964020>,  <43.199249, 26.947645, 36.749500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.099438, 26.907412, 36.964020>,  <42.933086, 26.840355, 37.321552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099438, 26.907412, 36.964020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548507, 0.737728, 0.393570,
		0.725384, -0.653953, 0.214857,
		0.415883, 0.167639, -0.893834,
		43.224201, 26.957705, 36.695869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614048, 27.191254, 37.631912>,  <42.933086, 26.840355, 37.321552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614048, 27.191254, 37.631912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608154, 27.266191, 37.239040>,  <43.604618, 27.311153, 37.003315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608154, 27.266191, 37.239040>,  <43.614048, 27.191254, 37.631912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608154, 27.266191, 37.239040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396156, 0.902999, 0.166295,
		0.918065, -0.386647, -0.087526,
		-0.014738, 0.187343, -0.982184,
		43.603733, 27.322395, 36.944386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254543, 27.510395, 37.496990>,  <43.614048, 27.191254, 37.631912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254543, 27.510395, 37.496990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992599, 27.618359, 37.214626>,  <43.835434, 27.683138, 37.045208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.992599, 27.618359, 37.214626>,  <44.254543, 27.510395, 37.496990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992599, 27.618359, 37.214626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392932, 0.919476, -0.012949,
		0.645568, -0.285853, -0.708188,
		-0.654863, 0.269910, -0.705905,
		43.796139, 27.699331, 37.002853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630215, 27.957148, 37.070782>,  <44.254543, 27.510395, 37.496990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630215, 27.957148, 37.070782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.256920, 28.049944, 36.961052>,  <44.032944, 28.105621, 36.895214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.256920, 28.049944, 36.961052>,  <44.630215, 27.957148, 37.070782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256920, 28.049944, 36.961052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269645, 0.956873, -0.108099,
		0.237415, -0.174852, -0.955542,
		-0.933234, 0.231993, -0.274324,
		43.976952, 28.119541, 36.878754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725147, 28.453747, 36.517822>,  <44.630215, 27.957148, 37.070782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725147, 28.453747, 36.517822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362736, 28.510906, 36.677166>,  <44.145290, 28.545202, 36.772774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362736, 28.510906, 36.677166>,  <44.725147, 28.453747, 36.517822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362736, 28.510906, 36.677166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100923, 0.987068, -0.124542,
		-0.411006, -0.072635, -0.908735,
		-0.906029, 0.142900, 0.398360,
		44.090927, 28.553776, 36.796673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391098, 28.900253, 36.190140>,  <44.725147, 28.453747, 36.517822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391098, 28.900253, 36.190140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181816, 28.930918, 36.529640>,  <44.056248, 28.949318, 36.733341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181816, 28.930918, 36.529640>,  <44.391098, 28.900253, 36.190140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181816, 28.930918, 36.529640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016808, 0.996680, -0.079664,
		-0.852040, -0.027415, -0.522759,
		-0.523207, 0.076663, 0.848750,
		44.024853, 28.953917, 36.784264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926514, 29.369713, 36.036850>,  <44.391098, 28.900253, 36.190140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926514, 29.369713, 36.036850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907951, 29.361620, 36.436337>,  <43.896812, 29.356764, 36.676029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907951, 29.361620, 36.436337>,  <43.926514, 29.369713, 36.036850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907951, 29.361620, 36.436337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036728, 0.999084, 0.021948,
		-0.998247, 0.037699, -0.045623,
		-0.046408, -0.020234, 0.998718,
		43.894028, 29.355549, 36.735950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460403, 29.880501, 36.202507>,  <43.926514, 29.369713, 36.036850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460403, 29.880501, 36.202507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.679764, 29.813536, 36.530220>,  <43.811378, 29.773355, 36.726849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.679764, 29.813536, 36.530220>,  <43.460403, 29.880501, 36.202507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679764, 29.813536, 36.530220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253540, 0.966923, 0.027874,
		-0.796854, 0.192436, 0.572706,
		0.548398, -0.167415, 0.819287,
		43.844284, 29.763311, 36.776005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265903, 30.370420, 36.637981>,  <43.460403, 29.880501, 36.202507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265903, 30.370420, 36.637981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629932, 30.266422, 36.767086>,  <43.848351, 30.204023, 36.844547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629932, 30.266422, 36.767086>,  <43.265903, 30.370420, 36.637981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629932, 30.266422, 36.767086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245058, 0.965609, 0.086862,
		-0.334243, 0.000044, 0.942487,
		0.910070, -0.259997, 0.322759,
		43.902954, 30.188423, 36.863914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364052, 30.736362, 37.215141>,  <43.265903, 30.370420, 36.637981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364052, 30.736362, 37.215141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.734734, 30.621531, 37.118137>,  <43.957142, 30.552631, 37.059937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.734734, 30.621531, 37.118137>,  <43.364052, 30.736362, 37.215141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734734, 30.621531, 37.118137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331383, 0.928586, 0.167075,
		0.177225, -0.235191, 0.955655,
		0.926702, -0.287078, -0.242507,
		44.012745, 30.535408, 37.045387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713913, 31.044697, 37.780689>,  <43.364052, 30.736362, 37.215141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713913, 31.044697, 37.780689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002190, 30.964163, 37.515339>,  <44.175156, 30.915842, 37.356129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002190, 30.964163, 37.515339>,  <43.713913, 31.044697, 37.780689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002190, 30.964163, 37.515339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582181, 0.695292, 0.421467,
		0.376382, -0.689952, 0.618306,
		0.720696, -0.201333, -0.663372,
		44.218399, 30.903763, 37.316326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381733, 31.076727, 38.105915>,  <43.713913, 31.044697, 37.780689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381733, 31.076727, 38.105915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439957, 31.143021, 37.715767>,  <44.474892, 31.182796, 37.481678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439957, 31.143021, 37.715767>,  <44.381733, 31.076727, 38.105915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439957, 31.143021, 37.715767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503514, 0.836232, 0.217233,
		0.851638, -0.522732, 0.038267,
		0.145555, 0.165736, -0.975369,
		44.483624, 31.192741, 37.423157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944321, 31.423548, 38.023033>,  <44.381733, 31.076727, 38.105915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944321, 31.423548, 38.023033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801147, 31.499468, 37.657333>,  <44.715244, 31.545021, 37.437912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801147, 31.499468, 37.657333>,  <44.944321, 31.423548, 38.023033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801147, 31.499468, 37.657333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359568, 0.931633, 0.052638,
		0.861739, -0.309896, -0.401709,
		-0.357933, 0.189802, -0.914253,
		44.693768, 31.556408, 37.383057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526798, 31.758419, 37.626949>,  <44.944321, 31.423548, 38.023033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.526798, 31.758419, 37.626949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204987, 31.868109, 37.416225>,  <45.011898, 31.933922, 37.289791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204987, 31.868109, 37.416225>,  <45.526798, 31.758419, 37.626949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204987, 31.868109, 37.416225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379517, 0.919670, -0.100870,
		0.456832, -0.281087, -0.843976,
		-0.804532, 0.274222, -0.526812,
		44.963627, 31.950375, 37.258183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783237, 32.176487, 37.041145>,  <45.526798, 31.758419, 37.626949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783237, 32.176487, 37.041145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.402367, 32.269718, 37.120178>,  <45.173843, 32.325657, 37.167599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.402367, 32.269718, 37.120178>,  <45.783237, 32.176487, 37.041145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402367, 32.269718, 37.120178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241931, 0.970053, 0.021589,
		-0.186635, 0.068358, -0.980048,
		-0.952175, 0.233074, 0.197584,
		45.116714, 32.339642, 37.179455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421585, 32.222305, 36.642990>,  <45.783237, 32.176487, 37.041145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421585, 32.222305, 36.642990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.409611, 32.529671, 36.387287>,  <46.402428, 32.714088, 36.233868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.409611, 32.529671, 36.387287>,  <46.421585, 32.222305, 36.642990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409611, 32.529671, 36.387287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184978, -0.632753, -0.751935,
		-0.982287, 0.095741, 0.161080,
		-0.029933, 0.768412, -0.639255,
		46.400631, 32.760193, 36.195511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777939, 32.244862, 36.258720>,  <46.421585, 32.222305, 36.642990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777939, 32.244862, 36.258720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.034279, 32.414429, 36.002720>,  <46.188084, 32.516171, 35.849121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.034279, 32.414429, 36.002720>,  <45.777939, 32.244862, 36.258720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034279, 32.414429, 36.002720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332191, -0.598456, -0.729040,
		-0.692067, 0.679809, -0.242699,
		0.640853, 0.423922, -0.639998,
		46.226536, 32.541607, 35.810719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387955, 32.372543, 35.625877>,  <45.777939, 32.244862, 36.258720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387955, 32.372543, 35.625877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.768108, 32.400890, 35.504715>,  <45.996201, 32.417900, 35.432018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.768108, 32.400890, 35.504715>,  <45.387955, 32.372543, 35.625877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768108, 32.400890, 35.504715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200698, -0.604285, -0.771077,
		-0.237690, 0.793610, -0.560077,
		0.950381, 0.070870, -0.302909,
		46.053223, 32.422150, 35.413841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341839, 32.400654, 34.838276>,  <45.387955, 32.372543, 35.625877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341839, 32.400654, 34.838276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.691914, 32.265934, 34.977196>,  <45.901958, 32.185104, 35.060547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.691914, 32.265934, 34.977196>,  <45.341839, 32.400654, 34.838276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691914, 32.265934, 34.977196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037418, -0.668602, -0.742678,
		0.482338, 0.662976, -0.572549,
		0.875186, -0.336798, 0.347300,
		45.954468, 32.164894, 35.081387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796623, 32.280708, 34.225277>,  <45.341839, 32.400654, 34.838276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796623, 32.280708, 34.225277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.984203, 32.079453, 34.515636>,  <46.096752, 31.958698, 34.689854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.984203, 32.079453, 34.515636>,  <45.796623, 32.280708, 34.225277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984203, 32.079453, 34.515636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352429, -0.647014, -0.676141,
		0.809863, 0.572906, -0.126096,
		0.468951, -0.503142, 0.725901,
		46.124889, 31.928511, 34.733406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515087, 32.104012, 33.997704>,  <45.796623, 32.280708, 34.225277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515087, 32.104012, 33.997704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.476288, 31.851397, 34.305405>,  <46.453011, 31.699827, 34.490025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.476288, 31.851397, 34.305405>,  <46.515087, 32.104012, 33.997704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.476288, 31.851397, 34.305405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189807, -0.770449, -0.608590,
		0.977019, 0.086980, 0.194599,
		-0.096994, -0.631540, 0.769252,
		46.447189, 31.661934, 34.536179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073036, 31.620779, 33.971348>,  <46.515087, 32.104012, 33.997704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073036, 31.620779, 33.971348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.794476, 31.414877, 34.171371>,  <46.627338, 31.291336, 34.291386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.794476, 31.414877, 34.171371>,  <47.073036, 31.620779, 33.971348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794476, 31.414877, 34.171371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191365, -0.804758, -0.561912,
		0.691670, -0.295622, 0.658939,
		-0.696400, -0.514755, 0.500055,
		46.585556, 31.260450, 34.321388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324631, 30.988068, 33.851273>,  <47.073036, 31.620779, 33.971348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324631, 30.988068, 33.851273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.953880, 30.929184, 33.989391>,  <46.731430, 30.893854, 34.072262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.953880, 30.929184, 33.989391>,  <47.324631, 30.988068, 33.851273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953880, 30.929184, 33.989391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002801, -0.917152, -0.398527,
		0.375359, -0.370353, 0.849673,
		-0.926875, -0.147211, 0.345298,
		46.675819, 30.885021, 34.092979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.405861, 30.337557, 34.100216>,  <47.324631, 30.988068, 33.851273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.405861, 30.337557, 34.100216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.022938, 30.425156, 34.024742>,  <46.793182, 30.477715, 33.979458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.022938, 30.425156, 34.024742>,  <47.405861, 30.337557, 34.100216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022938, 30.425156, 34.024742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108853, -0.877787, -0.466520,
		-0.267791, -0.426064, 0.864151,
		-0.957308, 0.218995, -0.188685,
		46.735744, 30.490854, 33.968136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123131, 29.711910, 34.195721>,  <47.405861, 30.337557, 34.100216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123131, 29.711910, 34.195721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.843426, 29.919495, 33.999065>,  <46.675602, 30.044044, 33.881073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.843426, 29.919495, 33.999065>,  <47.123131, 29.711910, 34.195721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843426, 29.919495, 33.999065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270178, -0.828585, -0.490357,
		-0.661838, -0.210062, 0.719614,
		-0.699267, 0.518961, -0.491635,
		46.633644, 30.075184, 33.851574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526974, 29.270910, 34.273323>,  <47.123131, 29.711910, 34.195721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526974, 29.270910, 34.273323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.431427, 29.494547, 33.955742>,  <46.374100, 29.628729, 33.765194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.431427, 29.494547, 33.955742>,  <46.526974, 29.270910, 34.273323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431427, 29.494547, 33.955742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292549, -0.821066, -0.490169,
		-0.925937, 0.115188, 0.359684,
		-0.238863, 0.559091, -0.793953,
		46.359768, 29.662273, 33.717556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877388, 29.064981, 34.070854>,  <46.526974, 29.270910, 34.273323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877388, 29.064981, 34.070854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017456, 29.244768, 33.742134>,  <46.101498, 29.352640, 33.544903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017456, 29.244768, 33.742134>,  <45.877388, 29.064981, 34.070854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017456, 29.244768, 33.742134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306063, -0.774291, -0.553894,
		-0.885274, 0.445479, -0.133564,
		0.350165, 0.449469, -0.821804,
		46.122505, 29.379608, 33.495594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345043, 29.081648, 33.585747>,  <45.877388, 29.064981, 34.070854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345043, 29.081648, 33.585747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673855, 29.132591, 33.363735>,  <45.871140, 29.163158, 33.230530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673855, 29.132591, 33.363735>,  <45.345043, 29.081648, 33.585747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673855, 29.132591, 33.363735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219918, -0.828050, -0.515722,
		-0.525272, 0.545996, -0.652669,
		0.822025, 0.127360, -0.555026,
		45.920464, 29.170799, 33.197227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129318, 28.986120, 32.950058>,  <45.345043, 29.081648, 33.585747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129318, 28.986120, 32.950058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.525909, 28.944172, 32.919125>,  <45.763863, 28.919003, 32.900566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.525909, 28.944172, 32.919125>,  <45.129318, 28.986120, 32.950058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525909, 28.944172, 32.919125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130060, -0.832573, -0.538430,
		-0.007918, 0.543897, -0.839114,
		0.991475, -0.104872, -0.077331,
		45.823353, 28.912710, 32.895924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236164, 28.924879, 32.246426>,  <45.129318, 28.986120, 32.950058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236164, 28.924879, 32.246426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558872, 28.772779, 32.427330>,  <45.752495, 28.681519, 32.535873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558872, 28.772779, 32.427330>,  <45.236164, 28.924879, 32.246426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558872, 28.772779, 32.427330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051523, -0.807768, -0.587245,
		0.588620, 0.450468, -0.671271,
		0.806766, -0.380250, 0.452259,
		45.800903, 28.658705, 32.563007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619339, 28.565046, 31.756714>,  <45.236164, 28.924879, 32.246426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619339, 28.565046, 31.756714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.747643, 28.388494, 32.091927>,  <45.824623, 28.282564, 32.293053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.747643, 28.388494, 32.091927>,  <45.619339, 28.565046, 31.756714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747643, 28.388494, 32.091927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178605, -0.897097, -0.404125,
		0.930169, -0.020051, -0.366584,
		0.320758, -0.441378, 0.838033,
		45.843868, 28.256081, 32.343338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950211, 27.919378, 31.529020>,  <45.619339, 28.565046, 31.756714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950211, 27.919378, 31.529020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851227, 27.866114, 31.912901>,  <45.791836, 27.834154, 32.143230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851227, 27.866114, 31.912901>,  <45.950211, 27.919378, 31.529020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851227, 27.866114, 31.912901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269194, -0.942064, -0.200126,
		0.930751, -0.307869, 0.197277,
		-0.247460, -0.133162, 0.959704,
		45.776989, 27.826164, 32.200813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173401, 27.298780, 31.679213>,  <45.950211, 27.919378, 31.529020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173401, 27.298780, 31.679213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.912670, 27.341360, 31.979555>,  <45.756229, 27.366907, 32.159760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.912670, 27.341360, 31.979555>,  <46.173401, 27.298780, 31.679213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912670, 27.341360, 31.979555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294662, -0.947856, -0.121426,
		0.698779, -0.300398, 0.649206,
		-0.651830, 0.106447, 0.750858,
		45.717121, 27.373295, 32.204811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251671, 26.687038, 32.198849>,  <46.173401, 27.298780, 31.679213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251671, 26.687038, 32.198849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.882679, 26.827450, 32.263107>,  <45.661282, 26.911695, 32.301662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.882679, 26.827450, 32.263107>,  <46.251671, 26.687038, 32.198849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882679, 26.827450, 32.263107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356250, -0.934382, -0.003984,
		0.148708, -0.060906, 0.987004,
		-0.922482, 0.351027, 0.160648,
		45.605934, 26.932758, 32.311302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916061, 26.161407, 32.524944>,  <46.251671, 26.687038, 32.198849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916061, 26.161407, 32.524944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.616394, 26.399124, 32.407944>,  <45.436592, 26.541754, 32.337742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.616394, 26.399124, 32.407944>,  <45.916061, 26.161407, 32.524944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616394, 26.399124, 32.407944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537488, -0.803511, -0.255887,
		-0.387102, -0.034486, 0.921392,
		-0.749173, 0.594291, -0.292504,
		45.391644, 26.577412, 32.320194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.552872, 39.273460, 38.664551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176926, 39.147976, 38.718567>,  <39.951359, 39.072685, 38.750977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176926, 39.147976, 38.718567>,  <40.552872, 39.273460, 38.664551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176926, 39.147976, 38.718567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139437, -0.713369, -0.686776,
		0.311782, -0.626649, 0.714215,
		-0.939867, -0.313712, 0.135037,
		39.894966, 39.053864, 38.759079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699928, 38.562809, 38.695908>,  <40.552872, 39.273460, 38.664551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699928, 38.562809, 38.695908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313282, 38.624855, 38.614323>,  <40.081295, 38.662083, 38.565372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313282, 38.624855, 38.614323>,  <40.699928, 38.562809, 38.695908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313282, 38.624855, 38.614323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037680, -0.701259, -0.711910,
		-0.253459, -0.695826, 0.672001,
		-0.966612, 0.155119, -0.203960,
		40.023300, 38.671391, 38.553135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412838, 37.860893, 38.675755>,  <40.699928, 38.562809, 38.695908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412838, 37.860893, 38.675755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128670, 38.077446, 38.495888>,  <39.958168, 38.207378, 38.387966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128670, 38.077446, 38.495888>,  <40.412838, 37.860893, 38.675755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128670, 38.077446, 38.495888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246694, -0.789963, -0.561338,
		-0.659121, -0.287858, 0.694765,
		-0.710424, 0.541384, -0.449668,
		39.915543, 38.239861, 38.360989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890438, 37.448296, 38.454952>,  <40.412838, 37.860893, 38.675755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890438, 37.448296, 38.454952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808998, 37.752148, 38.207890>,  <39.760132, 37.934460, 38.059650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808998, 37.752148, 38.207890>,  <39.890438, 37.448296, 38.454952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808998, 37.752148, 38.207890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294584, -0.649173, -0.701281,
		-0.933684, 0.039170, 0.355949,
		-0.203604, 0.759632, -0.617661,
		39.747917, 37.980038, 38.022591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238331, 37.359077, 38.163715>,  <39.890438, 37.448296, 38.454952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238331, 37.359077, 38.163715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442379, 37.583042, 37.902557>,  <39.564808, 37.717422, 37.745861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442379, 37.583042, 37.902557>,  <39.238331, 37.359077, 38.163715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442379, 37.583042, 37.902557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288140, -0.603978, -0.743092,
		-0.810402, 0.567192, -0.146768,
		0.510121, 0.559914, -0.652896,
		39.595417, 37.751015, 37.706688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754848, 37.469566, 37.595745>,  <39.238331, 37.359077, 38.163715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754848, 37.469566, 37.595745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115341, 37.565884, 37.451630>,  <39.331635, 37.623676, 37.365162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115341, 37.565884, 37.451630>,  <38.754848, 37.469566, 37.595745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115341, 37.565884, 37.451630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243320, -0.406789, -0.880522,
		-0.358586, 0.881215, -0.308019,
		0.901228, 0.240796, -0.360286,
		39.385708, 37.638123, 37.343544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630867, 37.831249, 36.957199>,  <38.754848, 37.469566, 37.595745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630867, 37.831249, 36.957199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009377, 37.705593, 36.926506>,  <39.236481, 37.630199, 36.908092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009377, 37.705593, 36.926506>,  <38.630867, 37.831249, 36.957199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009377, 37.705593, 36.926506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193073, -0.358505, -0.913344,
		0.259409, 0.879086, -0.399895,
		0.946272, -0.314138, -0.076729,
		39.293259, 37.611351, 36.903488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813221, 38.066170, 36.281742>,  <38.630867, 37.831249, 36.957199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813221, 38.066170, 36.281742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053661, 37.766720, 36.393627>,  <39.197926, 37.587051, 36.460758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053661, 37.766720, 36.393627>,  <38.813221, 38.066170, 36.281742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053661, 37.766720, 36.393627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178931, -0.467188, -0.865863,
		0.778883, 0.470424, -0.414780,
		0.601103, -0.748623, 0.279711,
		39.233994, 37.542133, 36.477539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261028, 37.916515, 35.601513>,  <38.813221, 38.066170, 36.281742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261028, 37.916515, 35.601513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320549, 37.584190, 35.816029>,  <39.356262, 37.384796, 35.944740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320549, 37.584190, 35.816029>,  <39.261028, 37.916515, 35.601513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320549, 37.584190, 35.816029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189241, -0.556231, -0.809194,
		0.970590, 0.018922, -0.239993,
		0.148804, -0.830812, 0.536292,
		39.365189, 37.334946, 35.976917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675388, 37.376011, 35.173084>,  <39.261028, 37.916515, 35.601513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675388, 37.376011, 35.173084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475819, 37.175636, 35.455967>,  <39.356079, 37.055412, 35.625698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475819, 37.175636, 35.455967>,  <39.675388, 37.376011, 35.173084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475819, 37.175636, 35.455967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274939, -0.682386, -0.677317,
		0.821880, -0.532366, 0.202730,
		-0.498921, -0.500935, 0.707208,
		39.326141, 37.025356, 35.668129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939087, 36.696854, 35.016624>,  <39.675388, 37.376011, 35.173084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939087, 36.696854, 35.016624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605831, 36.656090, 35.234058>,  <39.405876, 36.631630, 35.364521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605831, 36.656090, 35.234058>,  <39.939087, 36.696854, 35.016624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605831, 36.656090, 35.234058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326585, -0.702554, -0.632265,
		0.446336, -0.704295, 0.552045,
		-0.833143, -0.101913, 0.543587,
		39.355888, 36.625515, 35.397133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886051, 35.971394, 35.161987>,  <39.939087, 36.696854, 35.016624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886051, 35.971394, 35.161987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526077, 36.138142, 35.213116>,  <39.310093, 36.238190, 35.243793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526077, 36.138142, 35.213116>,  <39.886051, 35.971394, 35.161987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526077, 36.138142, 35.213116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400156, -0.673198, -0.621836,
		-0.173175, -0.610760, 0.772647,
		-0.899937, 0.416866, 0.127817,
		39.256096, 36.263203, 35.251461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412479, 35.418415, 35.333015>,  <39.886051, 35.971394, 35.161987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412479, 35.418415, 35.333015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198277, 35.716084, 35.173290>,  <39.069756, 35.894684, 35.077457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198277, 35.716084, 35.173290>,  <39.412479, 35.418415, 35.333015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198277, 35.716084, 35.173290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438107, -0.649007, -0.621975,
		-0.722009, -0.158130, 0.673571,
		-0.535505, 0.744167, -0.399311,
		39.037624, 35.939335, 35.053497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091915, 34.937290, 34.865555>,  <39.412479, 35.418415, 35.333015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091915, 34.937290, 34.865555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364063, 34.645992, 34.832649>,  <39.527351, 34.471214, 34.812908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364063, 34.645992, 34.832649>,  <39.091915, 34.937290, 34.865555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364063, 34.645992, 34.832649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100385, -0.203790, 0.973854,
		-0.725965, -0.654320, -0.211756,
		0.680366, -0.728241, -0.082260,
		39.568172, 34.427521, 34.807972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880630, 34.546967, 35.456711>,  <39.091915, 34.937290, 34.865555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880630, 34.546967, 35.456711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249821, 34.430035, 35.356583>,  <39.471336, 34.359875, 35.296505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249821, 34.430035, 35.356583>,  <38.880630, 34.546967, 35.456711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249821, 34.430035, 35.356583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160375, -0.299116, 0.940643,
		-0.349855, -0.908335, -0.229193,
		0.922974, -0.292332, -0.250321,
		39.526714, 34.342335, 35.281487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949600, 33.811333, 35.620232>,  <38.880630, 34.546967, 35.456711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949600, 33.811333, 35.620232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305988, 33.992729, 35.629417>,  <39.519821, 34.101566, 35.634930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305988, 33.992729, 35.629417>,  <38.949600, 33.811333, 35.620232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305988, 33.992729, 35.629417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137493, -0.317636, 0.938192,
		0.432754, -0.832739, -0.345354,
		0.890966, 0.453489, 0.022963,
		39.573277, 34.128777, 35.636307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461025, 33.360889, 35.912445>,  <38.949600, 33.811333, 35.620232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461025, 33.360889, 35.912445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616241, 33.727432, 35.951885>,  <39.709370, 33.947357, 35.975548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616241, 33.727432, 35.951885>,  <39.461025, 33.360889, 35.912445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616241, 33.727432, 35.951885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254575, -0.209390, 0.944112,
		0.885785, -0.341254, -0.314532,
		0.388042, 0.916352, 0.098600,
		39.732655, 34.002338, 35.981464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150875, 33.311016, 36.401875>,  <39.461025, 33.360889, 35.912445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150875, 33.311016, 36.401875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003117, 33.682720, 36.404018>,  <39.914463, 33.905743, 36.405304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003117, 33.682720, 36.404018>,  <40.150875, 33.311016, 36.401875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003117, 33.682720, 36.404018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144514, 0.051748, 0.988149,
		0.917968, 0.365788, -0.153406,
		-0.369392, 0.929258, 0.005358,
		39.892300, 33.961498, 36.405624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547604, 33.620544, 36.919041>,  <40.150875, 33.311016, 36.401875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547604, 33.620544, 36.919041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241802, 33.871265, 36.858837>,  <40.058323, 34.021698, 36.822716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241802, 33.871265, 36.858837>,  <40.547604, 33.620544, 36.919041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241802, 33.871265, 36.858837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027200, 0.201908, 0.979027,
		0.644048, 0.752561, -0.137309,
		-0.764501, 0.626806, -0.150508,
		40.012451, 34.059307, 36.813686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725853, 34.269558, 37.221012>,  <40.547604, 33.620544, 36.919041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725853, 34.269558, 37.221012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330181, 34.313629, 37.182278>,  <40.092777, 34.340073, 37.159035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330181, 34.313629, 37.182278>,  <40.725853, 34.269558, 37.221012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330181, 34.313629, 37.182278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048474, 0.377559, 0.924716,
		0.138450, 0.919407, -0.368134,
		-0.989182, 0.110182, -0.096841,
		40.033428, 34.346684, 37.153225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688976, 34.986629, 37.319527>,  <40.725853, 34.269558, 37.221012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688976, 34.986629, 37.319527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358620, 34.772308, 37.389744>,  <40.160404, 34.643715, 37.431873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358620, 34.772308, 37.389744>,  <40.688976, 34.986629, 37.319527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358620, 34.772308, 37.389744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286902, 0.667386, 0.687229,
		-0.485371, 0.517216, -0.704913,
		-0.825895, -0.535802, 0.175540,
		40.110851, 34.611568, 37.442406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234104, 35.456524, 37.450890>,  <40.688976, 34.986629, 37.319527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234104, 35.456524, 37.450890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015656, 35.159863, 37.606686>,  <39.884586, 34.981865, 37.700165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015656, 35.159863, 37.606686>,  <40.234104, 35.456524, 37.450890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015656, 35.159863, 37.606686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426077, 0.646240, 0.633113,
		-0.721254, 0.179804, -0.668927,
		-0.546123, -0.741650, 0.389493,
		39.851818, 34.937366, 37.723534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669071, 35.799385, 37.629562>,  <40.234104, 35.456524, 37.450890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669071, 35.799385, 37.629562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683987, 35.451946, 37.827209>,  <39.692936, 35.243484, 37.945797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683987, 35.451946, 37.827209>,  <39.669071, 35.799385, 37.629562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683987, 35.451946, 37.827209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507735, 0.409414, 0.758014,
		-0.860706, -0.279146, -0.425750,
		0.037289, -0.868595, 0.494117,
		39.695171, 35.191368, 37.975445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995758, 35.801918, 38.090675>,  <39.669071, 35.799385, 37.629562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995758, 35.801918, 38.090675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206642, 35.486588, 38.217541>,  <39.333172, 35.297390, 38.293659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206642, 35.486588, 38.217541>,  <38.995758, 35.801918, 38.090675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206642, 35.486588, 38.217541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444970, 0.061861, 0.893407,
		-0.723915, -0.612141, -0.318167,
		0.527209, -0.788325, 0.317166,
		39.364803, 35.250092, 38.312691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520336, 35.266319, 38.344116>,  <38.995758, 35.801918, 38.090675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520336, 35.266319, 38.344116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873466, 35.242359, 38.530460>,  <39.085346, 35.227982, 38.642265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873466, 35.242359, 38.530460>,  <38.520336, 35.266319, 38.344116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873466, 35.242359, 38.530460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446614, 0.200020, 0.872082,
		-0.145424, -0.977959, 0.149829,
		0.882829, -0.059906, 0.465858,
		39.138317, 35.224388, 38.670219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456635, 34.776432, 38.840309>,  <38.520336, 35.266319, 38.344116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456635, 34.776432, 38.840309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772392, 34.992397, 38.957172>,  <38.961845, 35.121975, 39.027290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772392, 34.992397, 38.957172>,  <38.456635, 34.776432, 38.840309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772392, 34.992397, 38.957172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340787, -0.010440, 0.940083,
		0.510610, -0.841658, 0.175753,
		0.789393, 0.539910, 0.292157,
		39.009209, 35.154369, 39.044819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758759, 34.496483, 39.516991>,  <38.456635, 34.776432, 38.840309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758759, 34.496483, 39.516991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886604, 34.875492, 39.514275>,  <38.963310, 35.102898, 39.512646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886604, 34.875492, 39.514275>,  <38.758759, 34.496483, 39.516991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886604, 34.875492, 39.514275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189065, 0.070793, 0.979409,
		0.928495, -0.311745, 0.201770,
		0.319610, 0.947525, -0.006791,
		38.982487, 35.159748, 39.512238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954937, 34.484226, 40.091343>,  <38.758759, 34.496483, 39.516991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954937, 34.484226, 40.091343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948421, 34.873734, 40.000561>,  <38.944511, 35.107437, 39.946091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948421, 34.873734, 40.000561>,  <38.954937, 34.484226, 40.091343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948421, 34.873734, 40.000561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242276, 0.216382, 0.945770,
		0.970071, 0.070388, 0.232397,
		-0.016285, 0.973768, -0.226959,
		38.943535, 35.165863, 39.932472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396286, 33.986179, 40.418533>,  <38.954937, 34.484226, 40.091343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396286, 33.986179, 40.418533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137737, 33.713165, 40.554970>,  <38.982609, 33.549358, 40.636833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137737, 33.713165, 40.554970>,  <39.396286, 33.986179, 40.418533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137737, 33.713165, 40.554970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181717, -0.296471, -0.937595,
		0.741065, -0.668021, 0.067604,
		-0.646376, -0.682534, 0.341096,
		38.943825, 33.508404, 40.657299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563709, 33.359539, 40.067970>,  <39.396286, 33.986179, 40.418533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563709, 33.359539, 40.067970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187256, 33.316147, 40.196033>,  <38.961384, 33.290112, 40.272873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187256, 33.316147, 40.196033>,  <39.563709, 33.359539, 40.067970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187256, 33.316147, 40.196033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247899, -0.422421, -0.871841,
		0.229823, -0.899885, 0.370660,
		-0.941131, -0.108483, 0.320162,
		38.904915, 33.283604, 40.292084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418262, 32.783630, 39.712475>,  <39.563709, 33.359539, 40.067970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418262, 32.783630, 39.712475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070766, 32.936157, 39.838894>,  <38.862267, 33.027672, 39.914745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070766, 32.936157, 39.838894>,  <39.418262, 32.783630, 39.712475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070766, 32.936157, 39.838894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470965, -0.438618, -0.765380,
		-0.153227, -0.813765, 0.560632,
		-0.868743, 0.381315, 0.316047,
		38.810143, 33.050552, 39.933708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931931, 32.208508, 39.672092>,  <39.418262, 32.783630, 39.712475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931931, 32.208508, 39.672092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730984, 32.554195, 39.683018>,  <38.610416, 32.761608, 39.689571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730984, 32.554195, 39.683018>,  <38.931931, 32.208508, 39.672092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730984, 32.554195, 39.683018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591213, -0.320279, -0.740195,
		-0.630944, -0.387999, 0.671838,
		-0.502371, 0.864221, 0.027312,
		38.580273, 32.813461, 39.691212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259239, 32.005730, 39.551281>,  <38.931931, 32.208508, 39.672092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259239, 32.005730, 39.551281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263481, 32.391312, 39.444935>,  <38.266026, 32.622662, 39.381126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263481, 32.391312, 39.444935>,  <38.259239, 32.005730, 39.551281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263481, 32.391312, 39.444935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492924, -0.226290, -0.840130,
		-0.870008, 0.139957, 0.472757,
		0.010602, 0.963953, -0.265862,
		38.266663, 32.680496, 39.365177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590748, 32.129288, 39.430119>,  <38.259239, 32.005730, 39.551281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590748, 32.129288, 39.430119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821854, 32.379559, 39.220463>,  <37.960518, 32.529720, 39.094669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821854, 32.379559, 39.220463>,  <37.590748, 32.129288, 39.430119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821854, 32.379559, 39.220463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395442, -0.347189, -0.850344,
		-0.714013, 0.698564, 0.046824,
		0.577763, 0.625674, -0.524139,
		37.995182, 32.567261, 39.063221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093933, 32.493610, 39.126972>,  <37.590748, 32.129288, 39.430119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093933, 32.493610, 39.126972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438747, 32.543392, 38.930443>,  <37.645638, 32.573261, 38.812527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438747, 32.543392, 38.930443>,  <37.093933, 32.493610, 39.126972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438747, 32.543392, 38.930443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479620, -0.113108, -0.870156,
		-0.163869, 0.985757, -0.037812,
		0.862039, 0.124456, -0.491324,
		37.697361, 32.580730, 38.783047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083393, 33.083557, 38.673798>,  <37.093933, 32.493610, 39.126972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083393, 33.083557, 38.673798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347794, 32.823654, 38.523655>,  <37.506432, 32.667709, 38.433571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347794, 32.823654, 38.523655>,  <37.083393, 33.083557, 38.673798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347794, 32.823654, 38.523655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536361, -0.059283, -0.841904,
		0.524785, 0.757822, -0.387693,
		0.660997, -0.649762, -0.375355,
		37.546093, 32.628727, 38.411049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209564, 33.364281, 38.080158>,  <37.083393, 33.083557, 38.673798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209564, 33.364281, 38.080158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316254, 32.980091, 38.048302>,  <37.380268, 32.749577, 38.029186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316254, 32.980091, 38.048302>,  <37.209564, 33.364281, 38.080158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316254, 32.980091, 38.048302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476234, -0.059504, -0.877303,
		0.837889, 0.271929, -0.473282,
		0.266726, -0.960476, -0.079644,
		37.396271, 32.691948, 38.024410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608116, 33.306808, 37.440952>,  <37.209564, 33.364281, 38.080158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608116, 33.306808, 37.440952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454079, 32.950890, 37.538902>,  <37.361656, 32.737339, 37.597672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454079, 32.950890, 37.538902>,  <37.608116, 33.306808, 37.440952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454079, 32.950890, 37.538902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589535, 0.033033, -0.807067,
		0.710036, -0.455160, -0.537287,
		-0.385093, -0.889797, 0.244878,
		37.338551, 32.683952, 37.612366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657631, 32.961014, 36.777870>,  <37.608116, 33.306808, 37.440952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657631, 32.961014, 36.777870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404285, 32.749783, 37.004139>,  <37.252277, 32.623043, 37.139900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404285, 32.749783, 37.004139>,  <37.657631, 32.961014, 36.777870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404285, 32.749783, 37.004139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671290, 0.011266, -0.741109,
		0.384992, -0.849120, -0.361630,
		-0.633365, -0.528080, 0.565669,
		37.214275, 32.591358, 37.173840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438107, 32.260139, 36.625435>,  <37.657631, 32.961014, 36.777870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438107, 32.260139, 36.625435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139374, 32.461323, 36.799461>,  <36.960136, 32.582031, 36.903877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139374, 32.461323, 36.799461>,  <37.438107, 32.260139, 36.625435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139374, 32.461323, 36.799461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495594, 0.015308, -0.868419,
		-0.443436, -0.864177, 0.237829,
		-0.746827, 0.502955, 0.435069,
		36.915325, 32.612209, 36.929981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.398689, 34.836590, 44.193359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005566, 34.763054, 44.186630>,  <39.769691, 34.718933, 44.182590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005566, 34.763054, 44.186630>,  <40.398689, 34.836590, 44.193359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005566, 34.763054, 44.186630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116862, -0.549012, -0.827605,
		0.142908, -0.815347, 0.561059,
		-0.982813, -0.183838, -0.016825,
		39.710720, 34.707901, 44.181583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434605, 34.188248, 43.907043>,  <40.398689, 34.836590, 44.193359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434605, 34.188248, 43.907043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.051819, 34.299191, 43.872875>,  <39.822147, 34.365757, 43.852375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.051819, 34.299191, 43.872875>,  <40.434605, 34.188248, 43.907043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051819, 34.299191, 43.872875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089694, -0.562591, -0.821855,
		-0.276003, -0.778823, 0.563256,
		-0.956962, 0.277355, -0.085421,
		39.764729, 34.382397, 43.847248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026695, 33.567570, 43.803795>,  <40.434605, 34.188248, 43.907043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026695, 33.567570, 43.803795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813251, 33.856419, 43.627705>,  <39.685184, 34.029728, 43.522053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813251, 33.856419, 43.627705>,  <40.026695, 33.567570, 43.803795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813251, 33.856419, 43.627705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074801, -0.558782, -0.825935,
		-0.842416, -0.407798, 0.352188,
		-0.533611, 0.722124, -0.440223,
		39.653168, 34.073055, 43.495636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421661, 33.245121, 43.486485>,  <40.026695, 33.567570, 43.803795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421661, 33.245121, 43.486485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401146, 33.597340, 43.298016>,  <39.388836, 33.808670, 43.184937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401146, 33.597340, 43.298016>,  <39.421661, 33.245121, 43.486485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401146, 33.597340, 43.298016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375884, -0.454117, -0.807768,
		-0.925246, 0.135675, 0.354276,
		-0.051289, 0.880551, -0.471168,
		39.385757, 33.861504, 43.156666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753117, 33.126549, 43.055061>,  <39.421661, 33.245121, 43.486485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753117, 33.126549, 43.055061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984188, 33.421463, 42.914948>,  <39.122829, 33.598412, 42.830879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.984188, 33.421463, 42.914948>,  <38.753117, 33.126549, 43.055061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984188, 33.421463, 42.914948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122727, -0.345806, -0.930245,
		-0.806989, 0.580369, -0.109278,
		0.577674, 0.737286, -0.350289,
		39.157490, 33.642651, 42.809860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275490, 33.552189, 42.554657>,  <38.753117, 33.126549, 43.055061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275490, 33.552189, 42.554657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.661346, 33.618015, 42.472301>,  <38.892860, 33.657509, 42.422890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.661346, 33.618015, 42.472301>,  <38.275490, 33.552189, 42.554657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661346, 33.618015, 42.472301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213319, 0.028627, -0.976563,
		-0.154811, 0.985951, 0.062719,
		0.964639, 0.164561, -0.205890,
		38.950737, 33.667385, 42.410534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269928, 34.089020, 42.161335>,  <38.275490, 33.552189, 42.554657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269928, 34.089020, 42.161335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624588, 33.920879, 42.084232>,  <38.837383, 33.819996, 42.037971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624588, 33.920879, 42.084232>,  <38.269928, 34.089020, 42.161335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624588, 33.920879, 42.084232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191372, 0.045937, -0.980442,
		0.420986, 0.906197, -0.039713,
		0.886650, -0.420352, -0.192760,
		38.890583, 33.794773, 42.026405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539944, 34.445572, 41.531441>,  <38.269928, 34.089020, 42.161335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539944, 34.445572, 41.531441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.715172, 34.086349, 41.547382>,  <38.820309, 33.870815, 41.556946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.715172, 34.086349, 41.547382>,  <38.539944, 34.445572, 41.531441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715172, 34.086349, 41.547382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160860, -0.121929, -0.979417,
		0.884432, 0.422640, -0.197875,
		0.438068, -0.898058, 0.039852,
		38.846592, 33.816933, 41.559338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053833, 34.391373, 40.905964>,  <38.539944, 34.445572, 41.531441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053833, 34.391373, 40.905964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970253, 34.009575, 40.991074>,  <38.920105, 33.780495, 41.042137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970253, 34.009575, 40.991074>,  <39.053833, 34.391373, 40.905964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970253, 34.009575, 40.991074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013725, -0.214689, -0.976586,
		0.977829, -0.206982, 0.031760,
		-0.208954, -0.954498, 0.212770,
		38.907566, 33.723225, 41.054905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532166, 34.813107, 40.471355>,  <39.053833, 34.391373, 40.905964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532166, 34.813107, 40.471355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263161, 35.096748, 40.386608>,  <39.101757, 35.266933, 40.335758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263161, 35.096748, 40.386608>,  <39.532166, 34.813107, 40.471355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263161, 35.096748, 40.386608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079045, 0.215815, 0.973230,
		0.735849, 0.671260, -0.089088,
		-0.672516, 0.709108, -0.211867,
		39.061405, 35.309483, 40.323048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763161, 35.420170, 40.828953>,  <39.532166, 34.813107, 40.471355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763161, 35.420170, 40.828953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382721, 35.516258, 40.751293>,  <39.154457, 35.573910, 40.704697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382721, 35.516258, 40.751293>,  <39.763161, 35.420170, 40.828953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382721, 35.516258, 40.751293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044984, 0.514153, 0.856518,
		0.305577, 0.823372, -0.478207,
		-0.951104, 0.240221, -0.194152,
		39.097389, 35.588326, 40.693047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674774, 36.007099, 41.055092>,  <39.763161, 35.420170, 40.828953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674774, 36.007099, 41.055092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.283108, 35.934597, 41.018467>,  <39.048107, 35.891094, 40.996490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.283108, 35.934597, 41.018467>,  <39.674774, 36.007099, 41.055092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283108, 35.934597, 41.018467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182381, 0.586627, 0.789054,
		-0.089307, 0.789313, -0.607462,
		-0.979164, -0.181258, -0.091565,
		38.989357, 35.880219, 40.990997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347256, 36.680656, 40.984058>,  <39.674774, 36.007099, 41.055092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347256, 36.680656, 40.984058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065113, 36.418503, 41.092091>,  <38.895828, 36.261211, 41.156910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065113, 36.418503, 41.092091>,  <39.347256, 36.680656, 40.984058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065113, 36.418503, 41.092091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298996, 0.620534, 0.724941,
		-0.642711, 0.430587, -0.633654,
		-0.705354, -0.655387, 0.270081,
		38.853508, 36.221886, 41.173115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781490, 37.106598, 41.222523>,  <39.347256, 36.680656, 40.984058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781490, 37.106598, 41.222523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683475, 36.757771, 41.391968>,  <38.624668, 36.548473, 41.493637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683475, 36.757771, 41.391968>,  <38.781490, 37.106598, 41.222523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683475, 36.757771, 41.391968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445790, 0.489352, 0.749537,
		-0.860947, -0.005184, -0.508668,
		-0.245032, -0.872071, 0.423617,
		38.609966, 36.496151, 41.519054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056152, 37.160309, 41.404156>,  <38.781490, 37.106598, 41.222523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056152, 37.160309, 41.404156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.187813, 36.897034, 41.674992>,  <38.266808, 36.739071, 41.837494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.187813, 36.897034, 41.674992>,  <38.056152, 37.160309, 41.404156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187813, 36.897034, 41.674992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245257, 0.632848, 0.734406,
		-0.911871, -0.407792, 0.046878,
		0.329151, -0.658186, 0.677090,
		38.286560, 36.699577, 41.878120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559937, 37.111176, 41.852455>,  <38.056152, 37.160309, 41.404156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559937, 37.111176, 41.852455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887074, 36.984173, 42.044422>,  <38.083355, 36.907970, 42.159603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887074, 36.984173, 42.044422>,  <37.559937, 37.111176, 41.852455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887074, 36.984173, 42.044422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246667, 0.560056, 0.790881,
		-0.519893, -0.765196, 0.379719,
		0.817843, -0.317509, 0.479917,
		38.132427, 36.888920, 42.188396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270557, 37.136009, 42.600227>,  <37.559937, 37.111176, 41.852455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270557, 37.136009, 42.600227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667973, 37.101295, 42.629486>,  <37.906422, 37.080467, 42.647041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.667973, 37.101295, 42.629486>,  <37.270557, 37.136009, 42.600227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667973, 37.101295, 42.629486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006816, 0.597673, 0.801711,
		-0.113295, -0.797029, 0.593219,
		0.993538, -0.086787, 0.073145,
		37.966034, 37.075260, 42.651428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502483, 36.930477, 43.328491>,  <37.270557, 37.136009, 42.600227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502483, 36.930477, 43.328491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.835300, 37.079433, 43.164036>,  <38.034992, 37.168808, 43.065365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.835300, 37.079433, 43.164036>,  <37.502483, 36.930477, 43.328491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835300, 37.079433, 43.164036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096927, 0.632169, 0.768744,
		0.546176, -0.679479, 0.489898,
		0.832044, 0.372386, -0.411135,
		38.084915, 37.191151, 43.040695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955444, 36.913326, 43.833931>,  <37.502483, 36.930477, 43.328491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955444, 36.913326, 43.833931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108177, 37.188721, 43.587296>,  <38.199818, 37.353958, 43.439312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108177, 37.188721, 43.587296>,  <37.955444, 36.913326, 43.833931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108177, 37.188721, 43.587296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343305, 0.513754, 0.786256,
		0.858104, -0.511900, -0.040192,
		0.381835, 0.688488, -0.616593,
		38.222729, 37.395267, 43.402317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658905, 37.034569, 44.006157>,  <37.955444, 36.913326, 43.833931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658905, 37.034569, 44.006157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540428, 37.360851, 43.807400>,  <38.469341, 37.556622, 43.688145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540428, 37.360851, 43.807400>,  <38.658905, 37.034569, 44.006157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540428, 37.360851, 43.807400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263613, 0.569842, 0.778323,
		0.918029, 0.099548, -0.383814,
		-0.296194, 0.815702, -0.496889,
		38.451569, 37.605560, 43.658333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216309, 37.582294, 44.211227>,  <38.658905, 37.034569, 44.006157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216309, 37.582294, 44.211227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943760, 37.801140, 44.016743>,  <38.780231, 37.932446, 43.900051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943760, 37.801140, 44.016743>,  <39.216309, 37.582294, 44.211227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943760, 37.801140, 44.016743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296143, 0.813548, 0.500438,
		0.669354, 0.196994, -0.716350,
		-0.681369, 0.547113, -0.486214,
		38.739349, 37.965275, 43.870880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581730, 38.133709, 43.882572>,  <39.216309, 37.582294, 44.211227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581730, 38.133709, 43.882572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197239, 38.226959, 43.941490>,  <38.966545, 38.282909, 43.976841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197239, 38.226959, 43.941490>,  <39.581730, 38.133709, 43.882572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197239, 38.226959, 43.941490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274863, 0.766936, 0.579879,
		0.022220, 0.597880, -0.801277,
		-0.961227, 0.233126, 0.147294,
		38.908871, 38.296898, 43.985680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475574, 38.852318, 43.733810>,  <39.581730, 38.133709, 43.882572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475574, 38.852318, 43.733810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177433, 38.745979, 43.978359>,  <38.998547, 38.682178, 44.125088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177433, 38.745979, 43.978359>,  <39.475574, 38.852318, 43.733810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177433, 38.745979, 43.978359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257694, 0.730886, 0.631980,
		-0.614849, 0.628596, -0.476264,
		-0.745356, -0.265842, 0.611370,
		38.953827, 38.666225, 44.161770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.659275, 38.412140, 45.612686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962738, 38.154396, 45.574242>,  <35.144817, 37.999752, 45.551174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962738, 38.154396, 45.574242>,  <34.659275, 38.412140, 45.612686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962738, 38.154396, 45.574242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025331, 0.118246, -0.992661,
		0.650993, 0.755528, 0.073386,
		0.758661, -0.644356, -0.096115,
		35.190338, 37.961090, 45.545406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936996, 38.618637, 44.891773>,  <34.659275, 38.412140, 45.612686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936996, 38.618637, 44.891773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155422, 38.295750, 44.981411>,  <35.286476, 38.102016, 45.035194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155422, 38.295750, 44.981411>,  <34.936996, 38.618637, 44.891773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155422, 38.295750, 44.981411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231057, -0.112000, -0.966472,
		0.805251, 0.579532, 0.125354,
		0.546062, -0.807216, 0.224093,
		35.319241, 38.053585, 45.048637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547623, 38.639912, 44.507477>,  <34.936996, 38.618637, 44.891773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547623, 38.639912, 44.507477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.521976, 38.248695, 44.586803>,  <35.506588, 38.013966, 44.634399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.521976, 38.248695, 44.586803>,  <35.547623, 38.639912, 44.507477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521976, 38.248695, 44.586803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263038, -0.208260, -0.942040,
		0.962653, -0.008238, 0.270614,
		-0.064119, -0.978039, 0.198315,
		35.502739, 37.955284, 44.646297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147697, 38.313145, 44.231819>,  <35.547623, 38.639912, 44.507477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147697, 38.313145, 44.231819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865616, 38.030128, 44.250046>,  <35.696365, 37.860321, 44.260983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865616, 38.030128, 44.250046>,  <36.147697, 38.313145, 44.231819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865616, 38.030128, 44.250046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073048, -0.136433, -0.987953,
		0.705229, -0.693382, 0.147897,
		-0.705206, -0.707537, 0.045567,
		35.654053, 37.817867, 44.263718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420631, 37.765656, 43.912621>,  <36.147697, 38.313145, 44.231819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420631, 37.765656, 43.912621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.021473, 37.759876, 43.887341>,  <35.781979, 37.756409, 43.872173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.021473, 37.759876, 43.887341>,  <36.420631, 37.765656, 43.912621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021473, 37.759876, 43.887341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064811, -0.200780, -0.977490,
		0.001433, -0.979530, 0.201294,
		-0.997897, -0.014447, -0.063196,
		35.722103, 37.755543, 43.868382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317436, 37.280632, 43.407688>,  <36.420631, 37.765656, 43.912621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317436, 37.280632, 43.407688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.946903, 37.429108, 43.433372>,  <35.724583, 37.518192, 43.448784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.946903, 37.429108, 43.433372>,  <36.317436, 37.280632, 43.407688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946903, 37.429108, 43.433372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197183, -0.332541, -0.922245,
		-0.320946, -0.866980, 0.381234,
		-0.926344, 0.371163, 0.064226,
		35.669003, 37.540466, 43.452637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872578, 36.692299, 43.202332>,  <36.317436, 37.280632, 43.407688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872578, 36.692299, 43.202332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.684128, 37.041653, 43.152931>,  <35.571060, 37.251263, 43.123291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.684128, 37.041653, 43.152931>,  <35.872578, 36.692299, 43.202332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684128, 37.041653, 43.152931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163195, -0.223897, -0.960853,
		-0.866840, -0.432524, 0.248014,
		-0.471122, 0.873380, -0.123497,
		35.542789, 37.303665, 43.115883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265961, 36.598122, 42.856956>,  <35.872578, 36.692299, 43.202332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265961, 36.598122, 42.856956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311928, 36.988186, 42.781216>,  <35.339508, 37.222225, 42.735771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311928, 36.988186, 42.781216>,  <35.265961, 36.598122, 42.856956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311928, 36.988186, 42.781216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261183, -0.154248, -0.952885,
		-0.958425, 0.158957, 0.236970,
		0.114916, 0.975162, -0.189353,
		35.346401, 37.280735, 42.724411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675884, 36.777191, 42.543015>,  <35.265961, 36.598122, 42.856956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675884, 36.777191, 42.543015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922783, 37.075409, 42.442482>,  <35.070923, 37.254337, 42.382164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922783, 37.075409, 42.442482>,  <34.675884, 36.777191, 42.543015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922783, 37.075409, 42.442482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217657, -0.145169, -0.965169,
		-0.756060, 0.650456, 0.072667,
		0.617251, 0.745542, -0.251333,
		35.107960, 37.299072, 42.367081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316479, 37.148163, 42.014488>,  <34.675884, 36.777191, 42.543015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316479, 37.148163, 42.014488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691380, 37.275040, 41.956589>,  <34.916321, 37.351166, 41.921848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691380, 37.275040, 41.956589>,  <34.316479, 37.148163, 42.014488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691380, 37.275040, 41.956589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153292, 0.002002, -0.988179,
		-0.313154, 0.948359, 0.050500,
		0.937249, 0.317194, -0.144749,
		34.972553, 37.370197, 41.913162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179825, 37.575985, 41.471153>,  <34.316479, 37.148163, 42.014488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179825, 37.575985, 41.471153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568390, 37.481079, 41.474400>,  <34.801529, 37.424133, 41.476349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568390, 37.481079, 41.474400>,  <34.179825, 37.575985, 41.471153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568390, 37.481079, 41.474400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027035, -0.144515, -0.989133,
		0.235861, 0.960635, -0.146798,
		0.971411, -0.237266, 0.008115,
		34.859814, 37.409901, 41.476833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495251, 37.955357, 40.925480>,  <34.179825, 37.575985, 41.471153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495251, 37.955357, 40.925480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733635, 37.637848, 40.974083>,  <34.876667, 37.447342, 41.003246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733635, 37.637848, 40.974083>,  <34.495251, 37.955357, 40.925480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733635, 37.637848, 40.974083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022319, -0.134881, -0.990610,
		0.802704, 0.593076, -0.062668,
		0.595960, -0.793768, 0.121507,
		34.912422, 37.399719, 41.010536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917065, 37.975273, 40.428463>,  <34.495251, 37.955357, 40.925480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917065, 37.975273, 40.428463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977337, 37.596786, 40.542988>,  <35.013500, 37.369694, 40.611702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977337, 37.596786, 40.542988>,  <34.917065, 37.975273, 40.428463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977337, 37.596786, 40.542988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037690, -0.283912, -0.958109,
		0.987863, 0.155162, -0.007118,
		0.150683, -0.946213, 0.286314,
		35.022541, 37.312923, 40.628883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417519, 37.668606, 39.967812>,  <34.917065, 37.975273, 40.428463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417519, 37.668606, 39.967812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237331, 37.346333, 40.121674>,  <35.129219, 37.152969, 40.213989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237331, 37.346333, 40.121674>,  <35.417519, 37.668606, 39.967812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237331, 37.346333, 40.121674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038800, -0.448105, -0.893139,
		0.891952, -0.387401, 0.233116,
		-0.450463, -0.805681, 0.384656,
		35.102192, 37.104630, 40.237072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077999, 37.742603, 39.784073>,  <35.417519, 37.668606, 39.967812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077999, 37.742603, 39.784073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250271, 38.038723, 39.577587>,  <36.353634, 38.216393, 39.453697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250271, 38.038723, 39.577587>,  <36.077999, 37.742603, 39.784073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250271, 38.038723, 39.577587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179364, 0.490361, 0.852862,
		0.884504, -0.459897, 0.078404,
		0.430675, 0.740298, -0.516216,
		36.379475, 38.260811, 39.422722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559814, 38.005756, 40.230305>,  <36.077999, 37.742603, 39.784073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559814, 38.005756, 40.230305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.495724, 38.312542, 39.981762>,  <36.457268, 38.496613, 39.832634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.495724, 38.312542, 39.981762>,  <36.559814, 38.005756, 40.230305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495724, 38.312542, 39.981762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000801, 0.629392, 0.777087,
		0.987079, 0.125011, -0.100234,
		-0.160231, 0.766967, -0.621360,
		36.447655, 38.542633, 39.795353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118526, 38.454769, 40.344902>,  <36.559814, 38.005756, 40.230305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118526, 38.454769, 40.344902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782215, 38.625416, 40.211578>,  <36.580429, 38.727806, 40.131584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782215, 38.625416, 40.211578>,  <37.118526, 38.454769, 40.344902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782215, 38.625416, 40.211578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041144, 0.664230, 0.746395,
		0.539819, 0.613836, -0.576021,
		-0.840775, 0.426618, -0.333309,
		36.529984, 38.753403, 40.111588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165916, 39.200455, 40.252888>,  <37.118526, 38.454769, 40.344902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165916, 39.200455, 40.252888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768780, 39.153267, 40.260456>,  <36.530499, 39.124954, 40.264996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768780, 39.153267, 40.260456>,  <37.165916, 39.200455, 40.252888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768780, 39.153267, 40.260456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063676, 0.656454, 0.751674,
		-0.101092, 0.745085, -0.659264,
		-0.992837, -0.117967, 0.018918,
		36.470928, 39.117878, 40.266132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811256, 39.848030, 40.121033>,  <37.165916, 39.200455, 40.252888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811256, 39.848030, 40.121033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.532372, 39.615982, 40.289486>,  <36.365040, 39.476753, 40.390560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.532372, 39.615982, 40.289486>,  <36.811256, 39.848030, 40.121033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532372, 39.615982, 40.289486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145886, 0.690000, 0.708955,
		-0.701860, 0.432857, -0.565709,
		-0.697216, -0.580116, 0.421136,
		36.323208, 39.441948, 40.415825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326885, 40.320671, 40.371662>,  <36.811256, 39.848030, 40.121033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326885, 40.320671, 40.371662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241550, 39.992210, 40.583393>,  <36.190350, 39.795132, 40.710434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241550, 39.992210, 40.583393>,  <36.326885, 40.320671, 40.371662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241550, 39.992210, 40.583393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097269, 0.556966, 0.824820,
		-0.972124, 0.124480, -0.198697,
		-0.213341, -0.821154, 0.529331,
		36.177547, 39.745865, 40.742191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746258, 40.563591, 40.866112>,  <36.326885, 40.320671, 40.371662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746258, 40.563591, 40.866112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910194, 40.234463, 41.023590>,  <36.008556, 40.036987, 41.118076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910194, 40.234463, 41.023590>,  <35.746258, 40.563591, 40.866112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910194, 40.234463, 41.023590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086406, 0.394647, 0.914761,
		-0.908056, -0.408923, 0.090645,
		0.409839, -0.822822, 0.393695,
		36.033146, 39.987617, 41.141697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265148, 40.460785, 41.348679>,  <35.746258, 40.563591, 40.866112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265148, 40.460785, 41.348679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609364, 40.271099, 41.423073>,  <35.815895, 40.157288, 41.467709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609364, 40.271099, 41.423073>,  <35.265148, 40.460785, 41.348679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609364, 40.271099, 41.423073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014164, 0.342695, 0.939340,
		-0.509186, -0.810974, 0.288186,
		0.860540, -0.474217, 0.185983,
		35.867527, 40.128834, 41.478867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163006, 40.040863, 42.035786>,  <35.265148, 40.460785, 41.348679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163006, 40.040863, 42.035786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.555321, 40.062458, 41.960796>,  <35.790710, 40.075417, 41.915802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.555321, 40.062458, 41.960796>,  <35.163006, 40.040863, 42.035786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555321, 40.062458, 41.960796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171806, 0.216261, 0.961100,
		0.092429, -0.974842, 0.202830,
		0.980785, 0.053986, -0.187472,
		35.849556, 40.078655, 41.904556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521439, 39.487625, 42.452137>,  <35.163006, 40.040863, 42.035786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521439, 39.487625, 42.452137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.773918, 39.786144, 42.367645>,  <35.925407, 39.965256, 42.316948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.773918, 39.786144, 42.367645>,  <35.521439, 39.487625, 42.452137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773918, 39.786144, 42.367645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212895, 0.095174, 0.972429,
		0.745829, -0.658769, -0.098810,
		0.631202, 0.746302, -0.211232,
		35.963280, 40.010036, 42.304276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117085, 39.327362, 42.781464>,  <35.521439, 39.487625, 42.452137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117085, 39.327362, 42.781464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107346, 39.725433, 42.743450>,  <36.101501, 39.964275, 42.720642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107346, 39.725433, 42.743450>,  <36.117085, 39.327362, 42.781464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107346, 39.725433, 42.743450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216962, 0.098061, 0.971243,
		0.975877, 0.003028, -0.218302,
		-0.024348, 0.995176, -0.095038,
		36.100040, 40.023987, 42.714939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701920, 39.666340, 43.132977>,  <36.117085, 39.327362, 42.781464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701920, 39.666340, 43.132977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476051, 39.993210, 43.086735>,  <36.340530, 40.189331, 43.058990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476051, 39.993210, 43.086735>,  <36.701920, 39.666340, 43.132977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476051, 39.993210, 43.086735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292919, 0.329394, 0.897607,
		0.771585, 0.472991, -0.425367,
		-0.564673, 0.817178, -0.115608,
		36.306648, 40.238361, 43.052052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127296, 40.257259, 43.156204>,  <36.701920, 39.666340, 43.132977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127296, 40.257259, 43.156204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756207, 40.349689, 43.273460>,  <36.533554, 40.405148, 43.343815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756207, 40.349689, 43.273460>,  <37.127296, 40.257259, 43.156204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756207, 40.349689, 43.273460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352129, 0.281286, 0.892683,
		0.123820, 0.931388, -0.342324,
		-0.927725, 0.231074, 0.293140,
		36.477890, 40.419010, 43.361401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166241, 40.968937, 43.448395>,  <37.127296, 40.257259, 43.156204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166241, 40.968937, 43.448395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.856956, 40.751945, 43.579762>,  <36.671387, 40.621750, 43.658581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.856956, 40.751945, 43.579762>,  <37.166241, 40.968937, 43.448395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856956, 40.751945, 43.579762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272905, 0.182830, 0.944509,
		-0.572418, 0.819935, 0.006678,
		-0.773215, -0.542476, 0.328419,
		36.624992, 40.589203, 43.678288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388058, 41.685223, 43.485546>,  <37.166241, 40.968937, 43.448395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388058, 41.685223, 43.485546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.787426, 41.704201, 43.473457>,  <38.027046, 41.715588, 43.466206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.787426, 41.704201, 43.473457>,  <37.388058, 41.685223, 43.485546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787426, 41.704201, 43.473457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017005, -0.257566, -0.966111,
		-0.053622, 0.965095, -0.256351,
		0.998417, 0.047445, -0.030223,
		38.086952, 41.718433, 43.464390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502743, 41.832710, 42.784210>,  <37.388058, 41.685223, 43.485546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502743, 41.832710, 42.784210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876423, 41.776703, 42.915462>,  <38.100632, 41.743099, 42.994213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876423, 41.776703, 42.915462>,  <37.502743, 41.832710, 42.784210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876423, 41.776703, 42.915462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298650, -0.196183, -0.933981,
		0.195146, 0.970519, -0.141458,
		0.934198, -0.140017, 0.328130,
		38.156681, 41.734699, 43.013901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953331, 42.140575, 42.331066>,  <37.502743, 41.832710, 42.784210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953331, 42.140575, 42.331066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155594, 41.847324, 42.512978>,  <38.276951, 41.671371, 42.622124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155594, 41.847324, 42.512978>,  <37.953331, 42.140575, 42.331066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155594, 41.847324, 42.512978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291879, -0.350678, -0.889849,
		0.811858, 0.582702, 0.036662,
		0.505661, -0.733132, 0.454780,
		38.307293, 41.627384, 42.649410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687737, 42.060978, 42.026196>,  <37.953331, 42.140575, 42.331066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687737, 42.060978, 42.026196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.639236, 41.705479, 42.203026>,  <38.610138, 41.492180, 42.309124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.639236, 41.705479, 42.203026>,  <38.687737, 42.060978, 42.026196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639236, 41.705479, 42.203026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427393, -0.448706, -0.784855,
		0.895898, 0.093778, 0.434248,
		-0.121248, -0.888745, 0.442076,
		38.602863, 41.438854, 42.335648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324169, 41.672455, 41.817997>,  <38.687737, 42.060978, 42.026196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324169, 41.672455, 41.817997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059303, 41.401474, 41.946121>,  <38.900383, 41.238884, 42.022995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059303, 41.401474, 41.946121>,  <39.324169, 41.672455, 41.817997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059303, 41.401474, 41.946121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254697, -0.605463, -0.754018,
		0.704749, -0.417699, 0.573460,
		-0.662161, -0.677452, 0.320313,
		38.860653, 41.198238, 42.042213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691296, 41.026909, 41.941223>,  <39.324169, 41.672455, 41.817997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691296, 41.026909, 41.941223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307045, 40.944523, 41.866623>,  <39.076496, 40.895092, 41.821861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.307045, 40.944523, 41.866623>,  <39.691296, 41.026909, 41.941223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307045, 40.944523, 41.866623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272905, -0.573241, -0.772604,
		0.052222, -0.793078, 0.606877,
		-0.960622, -0.205967, -0.186500,
		39.018860, 40.882732, 41.810673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654251, 40.373199, 41.773041>,  <39.691296, 41.026909, 41.941223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654251, 40.373199, 41.773041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.311573, 40.517971, 41.626030>,  <39.105965, 40.604836, 41.537823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.311573, 40.517971, 41.626030>,  <39.654251, 40.373199, 41.773041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311573, 40.517971, 41.626030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120481, -0.552408, -0.824821,
		-0.501552, -0.750902, 0.429641,
		-0.856697, 0.361927, -0.367531,
		39.054565, 40.626549, 41.515770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066898, 39.896832, 41.750351>,  <39.654251, 40.373199, 41.773041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066898, 39.896832, 41.750351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059162, 40.171284, 41.459461>,  <39.054520, 40.335957, 41.284927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.059162, 40.171284, 41.459461>,  <39.066898, 39.896832, 41.750351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059162, 40.171284, 41.459461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083431, -0.723714, -0.685039,
		-0.996326, -0.073923, -0.043246,
		-0.019343, 0.686130, -0.727222,
		39.053360, 40.377121, 41.241295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633270, 39.574089, 41.261482>,  <39.066898, 39.896832, 41.750351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633270, 39.574089, 41.261482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.860371, 39.839504, 41.066601>,  <38.996632, 39.998753, 40.949673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.860371, 39.839504, 41.066601>,  <38.633270, 39.574089, 41.261482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860371, 39.839504, 41.066601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019812, -0.602687, -0.797731,
		-0.822961, 0.443262, -0.355323,
		0.567753, 0.663541, -0.487206,
		39.030697, 40.038567, 40.920441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358383, 39.659088, 40.580303>,  <38.633270, 39.574089, 41.261482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358383, 39.659088, 40.580303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738892, 39.778233, 40.548386>,  <38.967197, 39.849720, 40.529236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738892, 39.778233, 40.548386>,  <38.358383, 39.659088, 40.580303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738892, 39.778233, 40.548386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076938, -0.479851, -0.873970,
		-0.298612, 0.825241, -0.479384,
		0.951268, 0.297861, -0.079797,
		39.024273, 39.867592, 40.524448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444561, 40.003292, 39.893028>,  <38.358383, 39.659088, 40.580303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444561, 40.003292, 39.893028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.817020, 39.920910, 40.013393>,  <39.040497, 39.871479, 40.085613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.817020, 39.920910, 40.013393>,  <38.444561, 40.003292, 39.893028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817020, 39.920910, 40.013393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235112, -0.291700, -0.927164,
		0.278731, 0.934074, -0.223193,
		0.931145, -0.205954, 0.300918,
		39.096363, 39.859123, 40.103668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824387, 40.226826, 39.225185>,  <38.444561, 40.003292, 39.893028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824387, 40.226826, 39.225185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.076607, 40.007652, 39.445068>,  <39.227940, 39.876148, 39.577000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.076607, 40.007652, 39.445068>,  <38.824387, 40.226826, 39.225185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076607, 40.007652, 39.445068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268639, -0.510398, -0.816901,
		0.728178, 0.662767, -0.174634,
		0.630548, -0.547935, 0.549706,
		39.265770, 39.843273, 39.609982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539856, 40.273216, 38.998508>,  <38.824387, 40.226826, 39.225185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539856, 40.273216, 38.998508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.499359, 39.918839, 39.179550>,  <39.475060, 39.706211, 39.288174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.499359, 39.918839, 39.179550>,  <39.539856, 40.273216, 38.998508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499359, 39.918839, 39.179550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244109, -0.463157, -0.851996,
		0.964449, 0.024227, 0.263158,
		-0.101242, -0.885945, 0.452605,
		39.468987, 39.653053, 39.315331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075607, 40.018406, 38.797085>,  <39.539856, 40.273216, 38.998508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075607, 40.018406, 38.797085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.854736, 39.700939, 38.899208>,  <39.722214, 39.510460, 38.960484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.854736, 39.700939, 38.899208>,  <40.075607, 40.018406, 38.797085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854736, 39.700939, 38.899208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229596, -0.439142, -0.868585,
		0.801487, -0.420999, 0.424710,
		-0.552182, -0.793671, 0.255307,
		39.689083, 39.462837, 38.975800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.050219, 41.634281, 32.858299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697535, 41.597496, 32.673203>,  <27.485924, 41.575424, 32.562145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697535, 41.597496, 32.673203>,  <28.050219, 41.634281, 32.858299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697535, 41.597496, 32.673203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245465, -0.748193, 0.616404,
		-0.402912, 0.657076, 0.637113,
		-0.881708, -0.091967, -0.462745,
		27.433022, 41.569904, 32.534378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584913, 41.529907, 33.400757>,  <28.050219, 41.634281, 32.858299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584913, 41.529907, 33.400757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.410784, 41.374603, 33.075855>,  <27.306307, 41.281422, 32.880917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.410784, 41.374603, 33.075855>,  <27.584913, 41.529907, 33.400757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410784, 41.374603, 33.075855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351446, -0.757349, 0.550371,
		-0.828843, 0.525051, 0.193239,
		-0.435323, -0.388258, -0.812250,
		27.280188, 41.258125, 32.832180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930141, 41.403339, 33.599243>,  <27.584913, 41.529907, 33.400757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930141, 41.403339, 33.599243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995073, 41.170994, 33.280186>,  <27.034033, 41.031586, 33.088749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995073, 41.170994, 33.280186>,  <26.930141, 41.403339, 33.599243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995073, 41.170994, 33.280186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305313, -0.798268, 0.519184,
		-0.938314, 0.159253, -0.306930,
		0.162331, -0.580867, -0.797648,
		27.043772, 40.996735, 33.040890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455023, 40.905254, 33.690647>,  <26.930141, 41.403339, 33.599243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455023, 40.905254, 33.690647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.708504, 40.729641, 33.435879>,  <26.860592, 40.624271, 33.283016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.708504, 40.729641, 33.435879>,  <26.455023, 40.905254, 33.690647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708504, 40.729641, 33.435879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299576, -0.898381, 0.321195,
		-0.713216, -0.012734, -0.700828,
		0.633701, -0.439033, -0.636925,
		26.898613, 40.597931, 33.244801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094408, 40.266605, 33.362946>,  <26.455023, 40.905254, 33.690647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094408, 40.266605, 33.362946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487385, 40.206291, 33.319004>,  <26.723171, 40.170105, 33.292637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487385, 40.206291, 33.319004>,  <26.094408, 40.266605, 33.362946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487385, 40.206291, 33.319004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123522, -0.967041, 0.222652,
		-0.139808, -0.205173, -0.968689,
		0.982444, -0.150783, -0.109857,
		26.782118, 40.161057, 33.286049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211601, 39.707184, 32.907211>,  <26.094408, 40.266605, 33.362946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211601, 39.707184, 32.907211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.545620, 39.690723, 33.126667>,  <26.746031, 39.680847, 33.258339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.545620, 39.690723, 33.126667>,  <26.211601, 39.707184, 32.907211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545620, 39.690723, 33.126667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156337, -0.973840, 0.164906,
		0.527500, -0.223477, -0.819635,
		0.835047, -0.041151, 0.548638,
		26.796133, 39.678379, 33.291260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643517, 39.118584, 32.809151>,  <26.211601, 39.707184, 32.907211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643517, 39.118584, 32.809151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797331, 39.214699, 33.165665>,  <26.889620, 39.272369, 33.379574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797331, 39.214699, 33.165665>,  <26.643517, 39.118584, 32.809151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797331, 39.214699, 33.165665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080859, -0.970584, 0.226780,
		0.919562, -0.015136, -0.392652,
		0.384535, 0.240288, 0.891288,
		26.912691, 39.286785, 33.433052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195162, 38.723389, 32.878349>,  <26.643517, 39.118584, 32.809151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195162, 38.723389, 32.878349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121901, 38.816788, 33.260330>,  <27.077944, 38.872826, 33.489517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121901, 38.816788, 33.260330>,  <27.195162, 38.723389, 32.878349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121901, 38.816788, 33.260330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140730, -0.955153, 0.260533,
		0.972960, 0.182107, 0.142078,
		-0.183151, 0.233494, 0.954954,
		27.066956, 38.886837, 33.546818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677643, 38.287472, 33.316124>,  <27.195162, 38.723389, 32.878349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677643, 38.287472, 33.316124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383816, 38.425598, 33.549763>,  <27.207520, 38.508472, 33.689945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383816, 38.425598, 33.549763>,  <27.677643, 38.287472, 33.316124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383816, 38.425598, 33.549763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021145, -0.848751, 0.528370,
		0.678204, 0.400475, 0.616165,
		-0.734569, 0.345314, 0.584094,
		27.163445, 38.529194, 33.724991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882692, 38.223042, 34.045952>,  <27.677643, 38.287472, 33.316124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882692, 38.223042, 34.045952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482712, 38.221828, 34.049641>,  <27.242723, 38.221100, 34.051853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482712, 38.221828, 34.049641>,  <27.882692, 38.223042, 34.045952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482712, 38.221828, 34.049641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008269, -0.763496, 0.645760,
		0.005085, 0.645806, 0.763485,
		-0.999953, -0.003029, 0.009223,
		27.182726, 38.220921, 34.052406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667694, 38.177757, 34.729465>,  <27.882692, 38.223042, 34.045952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667694, 38.177757, 34.729465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.330610, 38.083050, 34.536060>,  <27.128361, 38.026226, 34.420017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.330610, 38.083050, 34.536060>,  <27.667694, 38.177757, 34.729465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330610, 38.083050, 34.536060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137301, -0.773890, 0.618258,
		-0.520568, 0.587397, 0.619655,
		-0.842708, -0.236766, -0.483513,
		27.077797, 38.012020, 34.391006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226864, 38.070549, 35.275536>,  <27.667694, 38.177757, 34.729465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226864, 38.070549, 35.275536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059521, 37.888538, 34.961102>,  <26.959114, 37.779331, 34.772442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059521, 37.888538, 34.961102>,  <27.226864, 38.070549, 35.275536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059521, 37.888538, 34.961102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194701, -0.800420, 0.566939,
		-0.887169, 0.390235, 0.246269,
		-0.418358, -0.455022, -0.786086,
		26.934013, 37.752033, 34.725277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654673, 37.745205, 35.495083>,  <27.226864, 38.070549, 35.275536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654673, 37.745205, 35.495083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746611, 37.553638, 35.156189>,  <26.801773, 37.438698, 34.952850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746611, 37.553638, 35.156189>,  <26.654673, 37.745205, 35.495083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746611, 37.553638, 35.156189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026426, -0.873296, 0.486473,
		-0.972869, -0.089424, -0.213377,
		0.229844, -0.478913, -0.847239,
		26.815563, 37.409966, 34.902016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071997, 37.419483, 35.237324>,  <26.654673, 37.745205, 35.495083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071997, 37.419483, 35.237324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.394505, 37.224380, 35.103447>,  <26.588009, 37.107319, 35.023121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.394505, 37.224380, 35.103447>,  <26.071997, 37.419483, 35.237324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394505, 37.224380, 35.103447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262918, -0.802317, 0.535874,
		-0.529908, -0.344062, -0.775125,
		0.806270, -0.487758, -0.334694,
		26.636385, 37.078053, 35.003040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851046, 36.723949, 35.037556>,  <26.071997, 37.419483, 35.237324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851046, 36.723949, 35.037556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248634, 36.713642, 35.080177>,  <26.487188, 36.707458, 35.105751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248634, 36.713642, 35.080177>,  <25.851046, 36.723949, 35.037556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248634, 36.713642, 35.080177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061838, -0.934374, 0.350885,
		0.090522, -0.355360, -0.930336,
		0.993973, -0.025767, 0.106556,
		26.546825, 36.705914, 35.112144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961123, 36.062962, 34.869053>,  <25.851046, 36.723949, 35.037556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961123, 36.062962, 34.869053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.300583, 36.187523, 35.040085>,  <26.504259, 36.262260, 35.142704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.300583, 36.187523, 35.040085>,  <25.961123, 36.062962, 34.869053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300583, 36.187523, 35.040085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182373, -0.931034, 0.316095,
		0.496522, -0.190275, -0.846913,
		0.848650, 0.311402, 0.427578,
		26.555178, 36.280945, 35.168358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370306, 35.598160, 34.648819>,  <25.961123, 36.062962, 34.869053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370306, 35.598160, 34.648819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551826, 35.741768, 34.975052>,  <26.660738, 35.827934, 35.170792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551826, 35.741768, 34.975052>,  <26.370306, 35.598160, 34.648819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551826, 35.741768, 34.975052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183740, -0.933277, 0.308600,
		0.871955, 0.009812, -0.489487,
		0.453799, 0.359023, 0.815579,
		26.687965, 35.849476, 35.219727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989628, 35.177414, 34.735310>,  <26.370306, 35.598160, 34.648819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989628, 35.177414, 34.735310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920507, 35.330589, 35.098297>,  <26.879036, 35.422493, 35.316090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920507, 35.330589, 35.098297>,  <26.989628, 35.177414, 34.735310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920507, 35.330589, 35.098297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332917, -0.844395, 0.419718,
		0.926988, 0.374638, 0.018424,
		-0.172799, 0.382940, 0.907468,
		26.868668, 35.445473, 35.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580904, 35.035904, 35.107803>,  <26.989628, 35.177414, 34.735310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580904, 35.035904, 35.107803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284769, 35.099174, 35.369148>,  <27.107088, 35.137138, 35.525955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284769, 35.099174, 35.369148>,  <27.580904, 35.035904, 35.107803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284769, 35.099174, 35.369148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266196, -0.823493, 0.500998,
		0.617286, 0.544830, 0.567556,
		-0.740337, 0.158178, 0.653362,
		27.062668, 35.146629, 35.565155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293480, 34.948750, 35.287701>,  <27.580904, 35.035904, 35.107803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293480, 34.948750, 35.287701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674046, 34.941757, 35.164734>,  <28.902384, 34.937561, 35.090954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674046, 34.941757, 35.164734>,  <28.293480, 34.948750, 35.287701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674046, 34.941757, 35.164734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209354, 0.695403, -0.687448,
		0.225797, 0.718407, 0.657957,
		0.951413, -0.017478, -0.307421,
		28.959469, 34.936516, 35.072506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508627, 35.653000, 35.154171>,  <28.293480, 34.948750, 35.287701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508627, 35.653000, 35.154171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.769381, 35.420914, 34.958866>,  <28.925833, 35.281662, 34.841682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.769381, 35.420914, 34.958866>,  <28.508627, 35.653000, 35.154171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769381, 35.420914, 34.958866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084946, 0.695694, -0.713298,
		0.753546, 0.423511, 0.502798,
		0.651883, -0.580214, -0.488262,
		28.964945, 35.246849, 34.812389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028252, 36.052551, 35.004459>,  <28.508627, 35.653000, 35.154171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028252, 36.052551, 35.004459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028402, 35.763393, 34.728077>,  <29.028492, 35.589897, 34.562248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028402, 35.763393, 34.728077>,  <29.028252, 36.052551, 35.004459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028402, 35.763393, 34.728077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060514, 0.689672, -0.721589,
		0.998167, 0.042084, -0.043486,
		0.000376, -0.722898, -0.690955,
		29.028515, 35.546524, 34.520790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358929, 36.375435, 34.528091>,  <29.028252, 36.052551, 35.004459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358929, 36.375435, 34.528091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196001, 36.066010, 34.333900>,  <29.098246, 35.880352, 34.217384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196001, 36.066010, 34.333900>,  <29.358929, 36.375435, 34.528091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196001, 36.066010, 34.333900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224957, 0.600173, -0.767585,
		0.885148, -0.203439, -0.418480,
		-0.407317, -0.773567, -0.485477,
		29.073807, 35.833939, 34.188259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642048, 36.479038, 33.790657>,  <29.358929, 36.375435, 34.528091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642048, 36.479038, 33.790657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323555, 36.237064, 33.794125>,  <29.132460, 36.091881, 33.796204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323555, 36.237064, 33.794125>,  <29.642048, 36.479038, 33.790657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323555, 36.237064, 33.794125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330559, 0.423001, -0.843683,
		0.506704, -0.674631, -0.536772,
		-0.796230, -0.604933, 0.008669,
		29.084686, 36.055584, 33.796726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614101, 36.081230, 33.176991>,  <29.642048, 36.479038, 33.790657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614101, 36.081230, 33.176991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.230795, 36.077446, 33.291283>,  <29.000811, 36.075176, 33.359856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.230795, 36.077446, 33.291283>,  <29.614101, 36.081230, 33.176991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230795, 36.077446, 33.291283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253014, 0.493353, -0.832218,
		-0.133090, -0.869778, -0.475157,
		-0.958265, -0.009461, 0.285726,
		28.943316, 36.074608, 33.376999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253332, 36.062363, 32.447037>,  <29.614101, 36.081230, 33.176991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253332, 36.062363, 32.447037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965328, 36.153030, 32.709396>,  <28.792526, 36.207432, 32.866814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965328, 36.153030, 32.709396>,  <29.253332, 36.062363, 32.447037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965328, 36.153030, 32.709396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485871, 0.510189, -0.709674,
		-0.495498, -0.829655, -0.257206,
		-0.720007, 0.226673, 0.655903,
		28.749327, 36.221031, 32.906166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548204, 35.790043, 32.124535>,  <29.253332, 36.062363, 32.447037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548204, 35.790043, 32.124535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515274, 36.093960, 32.382507>,  <28.495516, 36.276310, 32.537292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515274, 36.093960, 32.382507>,  <28.548204, 35.790043, 32.124535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515274, 36.093960, 32.382507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483047, 0.535612, -0.692665,
		-0.871715, -0.368558, 0.322919,
		-0.082328, 0.759792, 0.644932,
		28.490576, 36.321899, 32.575989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896454, 36.027187, 31.992653>,  <28.548204, 35.790043, 32.124535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896454, 36.027187, 31.992653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108532, 36.335957, 32.132954>,  <28.235779, 36.521217, 32.217133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108532, 36.335957, 32.132954>,  <27.896454, 36.027187, 31.992653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108532, 36.335957, 32.132954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369782, 0.582788, -0.723615,
		-0.762990, 0.253956, 0.594435,
		0.530196, 0.771923, 0.350753,
		28.267591, 36.567532, 32.238178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437569, 36.582066, 31.854776>,  <27.896454, 36.027187, 31.992653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437569, 36.582066, 31.854776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793390, 36.747345, 31.932711>,  <28.006884, 36.846512, 31.979471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793390, 36.747345, 31.932711>,  <27.437569, 36.582066, 31.854776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793390, 36.747345, 31.932711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182989, 0.713076, -0.676784,
		-0.418575, 0.566385, 0.709931,
		0.889556, 0.413195, 0.194834,
		28.060257, 36.871304, 31.991161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240952, 37.195858, 31.768780>,  <27.437569, 36.582066, 31.854776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240952, 37.195858, 31.768780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.638577, 37.232876, 31.745880>,  <27.877151, 37.255089, 31.732140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.638577, 37.232876, 31.745880>,  <27.240952, 37.195858, 31.768780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638577, 37.232876, 31.745880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108808, 0.836127, -0.537635,
		-0.001889, 0.540671, 0.841232,
		0.994061, 0.092548, -0.057250,
		27.936794, 37.260639, 31.728704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286846, 37.892754, 31.847862>,  <27.240952, 37.195858, 31.768780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286846, 37.892754, 31.847862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618013, 37.782722, 31.652359>,  <27.816713, 37.716705, 31.535057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618013, 37.782722, 31.652359>,  <27.286846, 37.892754, 31.847862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618013, 37.782722, 31.652359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022752, 0.854272, -0.519329,
		0.560385, 0.441083, 0.701010,
		0.827920, -0.275075, -0.488757,
		27.866388, 37.700199, 31.505732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645041, 38.462505, 31.677971>,  <27.286846, 37.892754, 31.847862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645041, 38.462505, 31.677971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.908516, 38.239464, 31.475899>,  <28.066601, 38.105637, 31.354656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.908516, 38.239464, 31.475899>,  <27.645041, 38.462505, 31.677971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908516, 38.239464, 31.475899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256357, 0.797552, -0.546069,
		0.707399, 0.230182, 0.668283,
		0.658686, -0.557608, -0.505179,
		28.106121, 38.072182, 31.324345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374960, 38.793018, 31.819944>,  <27.645041, 38.462505, 31.677971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374960, 38.793018, 31.819944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360050, 38.575577, 31.484539>,  <28.351105, 38.445110, 31.283295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360050, 38.575577, 31.484539>,  <28.374960, 38.793018, 31.819944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360050, 38.575577, 31.484539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333768, 0.784139, -0.523188,
		0.941918, -0.299370, 0.152211,
		-0.037272, -0.543603, -0.838515,
		28.348869, 38.412495, 31.232985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969925, 38.886913, 31.465694>,  <28.374960, 38.793018, 31.819944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969925, 38.886913, 31.465694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718601, 38.765137, 31.179325>,  <28.567806, 38.692070, 31.007504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718601, 38.765137, 31.179325>,  <28.969925, 38.886913, 31.465694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718601, 38.765137, 31.179325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332611, 0.726781, -0.600965,
		0.703273, -0.615717, -0.355386,
		-0.628313, -0.304437, -0.715920,
		28.530107, 38.673805, 30.964548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241501, 39.105831, 30.845566>,  <28.969925, 38.886913, 31.465694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241501, 39.105831, 30.845566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862070, 39.060326, 30.727404>,  <28.634413, 39.033024, 30.656506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862070, 39.060326, 30.727404>,  <29.241501, 39.105831, 30.845566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862070, 39.060326, 30.727404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104005, 0.769382, -0.630265,
		0.298980, -0.628577, -0.717984,
		-0.948574, -0.113763, -0.295405,
		28.577497, 39.026196, 30.638783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254768, 38.964153, 30.162283>,  <29.241501, 39.105831, 30.845566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254768, 38.964153, 30.162283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.895712, 39.125244, 30.233898>,  <28.680279, 39.221897, 30.276867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.895712, 39.125244, 30.233898>,  <29.254768, 38.964153, 30.162283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895712, 39.125244, 30.233898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216355, 0.756571, -0.617082,
		-0.383967, -0.515183, -0.766261,
		-0.897641, 0.402723, 0.179037,
		28.626419, 39.246059, 30.287609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078220, 39.436295, 29.631260>,  <29.254768, 38.964153, 30.162283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078220, 39.436295, 29.631260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.781597, 39.540203, 29.878681>,  <28.603622, 39.602547, 30.027134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.781597, 39.540203, 29.878681>,  <29.078220, 39.436295, 29.631260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781597, 39.540203, 29.878681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151317, 0.833475, -0.531435,
		-0.653601, -0.487688, -0.578762,
		-0.741558, 0.259770, 0.618555,
		28.559130, 39.618134, 30.064247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455523, 39.665089, 29.238049>,  <29.078220, 39.436295, 29.631260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455523, 39.665089, 29.238049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451756, 39.822823, 29.605616>,  <28.449495, 39.917461, 29.826157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451756, 39.822823, 29.605616>,  <28.455523, 39.665089, 29.238049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451756, 39.822823, 29.605616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290086, 0.878364, -0.379905,
		-0.956954, -0.270143, 0.106119,
		-0.009417, 0.394335, 0.918919,
		28.448931, 39.941124, 29.881290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935013, 40.285736, 29.208792>,  <28.455523, 39.665089, 29.238049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935013, 40.285736, 29.208792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141769, 40.349400, 29.545240>,  <28.265823, 40.387600, 29.747110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141769, 40.349400, 29.545240>,  <27.935013, 40.285736, 29.208792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141769, 40.349400, 29.545240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200708, 0.977708, -0.061668,
		-0.832189, -0.136944, 0.537315,
		0.516893, 0.159162, 0.841124,
		28.296837, 40.397148, 29.797577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549055, 40.744301, 29.729921>,  <27.935013, 40.285736, 29.208792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549055, 40.744301, 29.729921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932989, 40.768684, 29.839470>,  <28.163349, 40.783314, 29.905199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.932989, 40.768684, 29.839470>,  <27.549055, 40.744301, 29.729921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932989, 40.768684, 29.839470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093166, 0.989974, 0.106172,
		-0.264653, -0.127423, 0.955888,
		0.959833, 0.060958, 0.273871,
		28.220940, 40.786972, 29.921631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500965, 41.152027, 30.260897>,  <27.549055, 40.744301, 29.729921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500965, 41.152027, 30.260897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885567, 41.163563, 30.151585>,  <28.116327, 41.170483, 30.085997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885567, 41.163563, 30.151585>,  <27.500965, 41.152027, 30.260897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885567, 41.163563, 30.151585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006314, 0.991897, 0.126887,
		0.274727, -0.123727, 0.953529,
		0.961502, 0.028839, -0.273282,
		28.174017, 41.172215, 30.069599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813265, 41.614967, 30.744133>,  <27.500965, 41.152027, 30.260897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813265, 41.614967, 30.744133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078112, 41.613239, 30.444378>,  <28.237019, 41.612202, 30.264524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078112, 41.613239, 30.444378>,  <27.813265, 41.614967, 30.744133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078112, 41.613239, 30.444378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085688, 0.993861, 0.069976,
		0.744486, -0.110546, 0.658422,
		0.662116, -0.004322, -0.749389,
		28.276747, 41.611942, 30.219561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.045784, 39.535904, 43.968399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957760, 39.250992, 44.235001>,  <38.904945, 39.080044, 44.394962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957760, 39.250992, 44.235001>,  <39.045784, 39.535904, 43.968399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957760, 39.250992, 44.235001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120008, 0.658293, 0.743134,
		-0.968076, 0.243519, -0.059384,
		-0.220060, -0.712284, 0.666502,
		38.891743, 39.037308, 44.434952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172073, 39.946869, 44.501751>,  <39.045784, 39.535904, 43.968399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172073, 39.946869, 44.501751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111160, 39.595989, 44.683887>,  <39.074612, 39.385460, 44.793167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111160, 39.595989, 44.683887>,  <39.172073, 39.946869, 44.501751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111160, 39.595989, 44.683887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342628, 0.385285, 0.856832,
		-0.927046, 0.286495, 0.241880,
		-0.152285, -0.877198, 0.455338,
		39.065475, 39.332829, 44.820488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843937, 40.062836, 45.111740>,  <39.172073, 39.946869, 44.501751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843937, 40.062836, 45.111740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981140, 39.696724, 45.196217>,  <39.063461, 39.477055, 45.246902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981140, 39.696724, 45.196217>,  <38.843937, 40.062836, 45.111740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981140, 39.696724, 45.196217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369760, 0.338244, 0.865372,
		-0.863495, -0.218739, 0.454456,
		0.343007, -0.915284, 0.211191,
		39.084042, 39.422138, 45.259575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530861, 39.845066, 45.731808>,  <38.843937, 40.062836, 45.111740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530861, 39.845066, 45.731808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.883915, 39.662533, 45.686695>,  <39.095749, 39.553013, 45.659630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.883915, 39.662533, 45.686695>,  <38.530861, 39.845066, 45.731808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883915, 39.662533, 45.686695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299229, 0.360420, 0.883493,
		-0.362517, -0.813548, 0.454667,
		0.882635, -0.456330, -0.112778,
		39.148705, 39.525635, 45.652863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671440, 39.577072, 46.387314>,  <38.530861, 39.845066, 45.731808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671440, 39.577072, 46.387314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.012756, 39.590336, 46.179165>,  <39.217548, 39.598293, 46.054276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.012756, 39.590336, 46.179165>,  <38.671440, 39.577072, 46.387314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012756, 39.590336, 46.179165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472932, 0.371089, 0.799143,
		0.219602, -0.928006, 0.300967,
		0.853294, 0.033157, -0.520375,
		39.268745, 39.600285, 46.023052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238163, 39.374718, 46.894512>,  <38.671440, 39.577072, 46.387314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238163, 39.374718, 46.894512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.462566, 39.495056, 46.586029>,  <39.597210, 39.567261, 46.400940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.462566, 39.495056, 46.586029>,  <39.238163, 39.374718, 46.894512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462566, 39.495056, 46.586029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748967, 0.212329, 0.627666,
		0.352583, -0.929734, -0.106208,
		0.561011, 0.300851, -0.771204,
		39.630871, 39.585312, 46.354668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872799, 38.955925, 46.933456>,  <39.238163, 39.374718, 46.894512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872799, 38.955925, 46.933456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.901306, 39.315315, 46.760174>,  <39.918411, 39.530949, 46.656204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.901306, 39.315315, 46.760174>,  <39.872799, 38.955925, 46.933456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901306, 39.315315, 46.760174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743980, 0.241401, 0.623072,
		0.664390, -0.366702, -0.651242,
		0.071272, 0.898474, -0.433203,
		39.922688, 39.584858, 46.630211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607887, 39.090553, 46.928680>,  <39.872799, 38.955925, 46.933456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607887, 39.090553, 46.928680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.444874, 39.450191, 46.864742>,  <40.347065, 39.665974, 46.826382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.444874, 39.450191, 46.864742>,  <40.607887, 39.090553, 46.928680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444874, 39.450191, 46.864742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691165, 0.418085, 0.589488,
		0.596832, 0.129759, -0.791805,
		-0.407533, 0.899093, -0.159842,
		40.322613, 39.719921, 46.816792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137718, 39.488773, 46.840897>,  <40.607887, 39.090553, 46.928680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137718, 39.488773, 46.840897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.868813, 39.774483, 46.918755>,  <40.707470, 39.945908, 46.965469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.868813, 39.774483, 46.918755>,  <41.137718, 39.488773, 46.840897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868813, 39.774483, 46.918755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653179, 0.448512, 0.610077,
		0.348460, 0.537267, -0.768062,
		-0.672259, 0.714270, 0.194643,
		40.667133, 39.988762, 46.977146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530281, 40.134369, 46.829121>,  <41.137718, 39.488773, 46.840897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530281, 40.134369, 46.829121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.196701, 40.227100, 47.029430>,  <40.996552, 40.282742, 47.149616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.196701, 40.227100, 47.029430>,  <41.530281, 40.134369, 46.829121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196701, 40.227100, 47.029430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492387, 0.722337, 0.485577,
		-0.249158, 0.651524, -0.716545,
		-0.833952, 0.231832, 0.500778,
		40.946514, 40.296650, 47.179665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504539, 40.880810, 46.851398>,  <41.530281, 40.134369, 46.829121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504539, 40.880810, 46.851398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.289112, 40.737377, 47.156387>,  <41.159855, 40.651318, 47.339378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.289112, 40.737377, 47.156387>,  <41.504539, 40.880810, 46.851398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289112, 40.737377, 47.156387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242655, 0.800575, 0.547903,
		-0.806884, 0.480101, -0.344153,
		-0.538569, -0.358584, 0.762470,
		41.127541, 40.629803, 47.385128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364582, 41.491673, 47.268112>,  <41.504539, 40.880810, 46.851398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364582, 41.491673, 47.268112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.237438, 41.219933, 47.532673>,  <41.161152, 41.056889, 47.691410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.237438, 41.219933, 47.532673>,  <41.364582, 41.491673, 47.268112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237438, 41.219933, 47.532673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318214, 0.580681, 0.749366,
		-0.893143, 0.448661, 0.031603,
		-0.317860, -0.679348, 0.661401,
		41.142078, 41.016129, 47.731094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895325, 41.750908, 47.846500>,  <41.364582, 41.491673, 47.268112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895325, 41.750908, 47.846500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.150818, 41.450325, 47.912621>,  <41.304115, 41.269974, 47.952293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.150818, 41.450325, 47.912621>,  <40.895325, 41.750908, 47.846500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150818, 41.450325, 47.912621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255773, 0.409990, 0.875493,
		-0.725670, -0.516929, 0.454079,
		0.638735, -0.751461, 0.165301,
		41.342438, 41.224888, 47.962212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068752, 41.830593, 48.536407>,  <40.895325, 41.750908, 47.846500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068752, 41.830593, 48.536407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.359623, 41.560692, 48.485943>,  <41.534145, 41.398750, 48.455666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.359623, 41.560692, 48.485943>,  <41.068752, 41.830593, 48.536407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359623, 41.560692, 48.485943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487866, 0.378724, 0.786483,
		-0.482903, -0.633463, 0.604590,
		0.727180, -0.674754, -0.126158,
		41.577778, 41.358265, 48.448093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353893, 41.684231, 48.731632>,  <41.068752, 41.830593, 48.536407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353893, 41.684231, 48.731632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.164490, 42.036457, 48.723721>,  <40.050846, 42.247791, 48.718971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.164490, 42.036457, 48.723721>,  <40.353893, 41.684231, 48.731632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164490, 42.036457, 48.723721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221043, -0.140544, -0.965084,
		-0.852600, -0.452606, 0.261192,
		-0.473512, 0.880566, -0.019782,
		40.022438, 42.300625, 48.717785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808697, 41.534664, 48.440849>,  <40.353893, 41.684231, 48.731632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808697, 41.534664, 48.440849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.864681, 41.925953, 48.379528>,  <39.898270, 42.160725, 48.342735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.864681, 41.925953, 48.379528>,  <39.808697, 41.534664, 48.440849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864681, 41.925953, 48.379528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270661, -0.111138, -0.956238,
		-0.952447, 0.175327, 0.249211,
		0.139957, 0.978217, -0.153307,
		39.906670, 42.219418, 48.333534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168777, 41.850029, 48.150013>,  <39.808697, 41.534664, 48.440849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168777, 41.850029, 48.150013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441719, 42.125832, 48.052883>,  <39.605484, 42.291313, 47.994606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.441719, 42.125832, 48.052883>,  <39.168777, 41.850029, 48.150013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441719, 42.125832, 48.052883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364451, 0.032923, -0.930640,
		-0.633689, 0.723529, 0.273757,
		0.682359, 0.689508, -0.242828,
		39.646427, 42.332684, 47.980034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863182, 42.408329, 47.799301>,  <39.168777, 41.850029, 48.150013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863182, 42.408329, 47.799301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.235535, 42.476871, 47.670238>,  <39.458946, 42.517998, 47.592800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.235535, 42.476871, 47.670238>,  <38.863182, 42.408329, 47.799301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235535, 42.476871, 47.670238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359303, 0.269636, -0.893419,
		-0.066093, 0.947594, 0.312567,
		0.930878, 0.171355, -0.322652,
		39.514797, 42.528278, 47.573444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651714, 42.763054, 47.259670>,  <38.863182, 42.408329, 47.799301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651714, 42.763054, 47.259670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.042122, 42.702244, 47.197338>,  <39.276367, 42.665756, 47.159939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.042122, 42.702244, 47.197338>,  <38.651714, 42.763054, 47.259670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042122, 42.702244, 47.197338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139102, 0.115125, -0.983563,
		0.167467, 0.981649, 0.091217,
		0.976015, -0.152026, -0.155829,
		39.334927, 42.656635, 47.150589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874977, 43.355721, 46.918922>,  <38.651714, 42.763054, 47.259670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874977, 43.355721, 46.918922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.139885, 43.069244, 46.830864>,  <39.298832, 42.897358, 46.778030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.139885, 43.069244, 46.830864>,  <38.874977, 43.355721, 46.918922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139885, 43.069244, 46.830864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302651, 0.013069, -0.953012,
		0.685418, 0.697779, -0.208102,
		0.662272, -0.716194, -0.220142,
		39.338566, 42.854385, 46.764820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275841, 43.560482, 46.285984>,  <38.874977, 43.355721, 46.918922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275841, 43.560482, 46.285984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.338272, 43.166233, 46.311901>,  <39.375729, 42.929684, 46.327454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.338272, 43.166233, 46.311901>,  <39.275841, 43.560482, 46.285984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338272, 43.166233, 46.311901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109760, -0.082499, -0.990529,
		0.981628, 0.147484, -0.121057,
		0.156075, -0.985618, 0.064795,
		39.385094, 42.870548, 46.331341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633541, 43.437763, 45.751404>,  <39.275841, 43.560482, 46.285984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633541, 43.437763, 45.751404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.502048, 43.070576, 45.840187>,  <39.423153, 42.850262, 45.893456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.502048, 43.070576, 45.840187>,  <39.633541, 43.437763, 45.751404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502048, 43.070576, 45.840187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097907, -0.200629, -0.974763,
		0.939335, -0.342167, -0.023923,
		-0.328732, -0.917971, 0.221958,
		39.403427, 42.795185, 45.906773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972157, 42.957832, 45.366978>,  <39.633541, 43.437763, 45.751404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972157, 42.957832, 45.366978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.636997, 42.760368, 45.460125>,  <39.435902, 42.641891, 45.516014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.636997, 42.760368, 45.460125>,  <39.972157, 42.957832, 45.366978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636997, 42.760368, 45.460125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139670, -0.218519, -0.965786,
		0.527652, -0.841756, 0.114148,
		-0.837899, -0.493656, 0.232870,
		39.385628, 42.612270, 45.529987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883007, 42.282841, 44.975155>,  <39.972157, 42.957832, 45.366978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883007, 42.282841, 44.975155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.506184, 42.350594, 45.090969>,  <39.280090, 42.391247, 45.160458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.506184, 42.350594, 45.090969>,  <39.883007, 42.282841, 44.975155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506184, 42.350594, 45.090969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328105, -0.285729, -0.900392,
		-0.069779, -0.943223, 0.324748,
		-0.942061, 0.169380, 0.289538,
		39.223564, 42.401409, 45.177830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568020, 41.834957, 44.659714>,  <39.883007, 42.282841, 44.975155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568020, 41.834957, 44.659714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.248886, 42.057461, 44.752697>,  <39.057407, 42.190964, 44.808487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.248886, 42.057461, 44.752697>,  <39.568020, 41.834957, 44.659714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248886, 42.057461, 44.752697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442658, -0.278737, -0.852267,
		-0.409285, -0.782869, 0.468618,
		-0.797834, 0.556257, 0.232460,
		39.009537, 42.224339, 44.822437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991180, 41.405262, 44.728439>,  <39.568020, 41.834957, 44.659714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991180, 41.405262, 44.728439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829220, 41.753010, 44.615120>,  <38.732044, 41.961658, 44.547131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829220, 41.753010, 44.615120>,  <38.991180, 41.405262, 44.728439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829220, 41.753010, 44.615120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382612, -0.442491, -0.811054,
		-0.830459, -0.220005, 0.511796,
		-0.404901, 0.869367, -0.283294,
		38.707748, 42.013821, 44.530132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341274, 41.230888, 44.509533>,  <38.991180, 41.405262, 44.728439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341274, 41.230888, 44.509533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.386284, 41.597980, 44.357162>,  <38.413292, 41.818237, 44.265739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.386284, 41.597980, 44.357162>,  <38.341274, 41.230888, 44.509533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386284, 41.597980, 44.357162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469941, -0.288621, -0.834178,
		-0.875496, 0.272881, 0.398803,
		0.112528, 0.917733, -0.380924,
		38.420044, 41.873299, 44.242886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722889, 41.321259, 44.159103>,  <38.341274, 41.230888, 44.509533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722889, 41.321259, 44.159103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.981682, 41.582554, 44.001781>,  <38.136959, 41.739330, 43.907387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.981682, 41.582554, 44.001781>,  <37.722889, 41.321259, 44.159103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981682, 41.582554, 44.001781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291367, -0.264865, -0.919213,
		-0.704640, 0.709312, 0.018969,
		0.646984, 0.653241, -0.393305,
		38.175777, 41.778526, 43.883789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987919, 41.178764, 44.149803>,  <37.722889, 41.321259, 44.159103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987919, 41.178764, 44.149803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747887, 40.858955, 44.160164>,  <36.603867, 40.667072, 44.166382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747887, 40.858955, 44.160164>,  <36.987919, 41.178764, 44.149803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747887, 40.858955, 44.160164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043209, 0.064730, 0.996967,
		-0.798770, 0.597144, -0.073389,
		-0.600083, -0.799518, 0.025902,
		36.567863, 40.619099, 44.167934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356911, 41.381191, 44.578648>,  <36.987919, 41.178764, 44.149803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356911, 41.381191, 44.578648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.384819, 40.982166, 44.577656>,  <36.401562, 40.742752, 44.577061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.384819, 40.982166, 44.577656>,  <36.356911, 41.381191, 44.578648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384819, 40.982166, 44.577656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157269, -0.013449, 0.987464,
		-0.985088, -0.068504, -0.157823,
		0.069768, -0.997560, -0.002475,
		36.405750, 40.682899, 44.576912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868607, 41.195358, 44.950634>,  <36.356911, 41.381191, 44.578648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868607, 41.195358, 44.950634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095860, 40.867245, 44.977039>,  <36.232212, 40.670376, 44.992882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095860, 40.867245, 44.977039>,  <35.868607, 41.195358, 44.950634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095860, 40.867245, 44.977039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040653, 0.052145, 0.997812,
		-0.821933, -0.569572, -0.003722,
		0.568132, -0.820285, 0.066015,
		36.266300, 40.621159, 44.996845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574234, 40.827213, 45.433182>,  <35.868607, 41.195358, 44.950634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574234, 40.827213, 45.433182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934307, 40.654045, 45.414223>,  <36.150352, 40.550144, 45.402847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934307, 40.654045, 45.414223>,  <35.574234, 40.827213, 45.433182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934307, 40.654045, 45.414223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026478, -0.054232, 0.998177,
		-0.434705, -0.899798, -0.037356,
		0.900184, -0.432924, -0.047400,
		36.204361, 40.524170, 45.400002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452396, 40.232044, 45.848583>,  <35.574234, 40.827213, 45.433182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452396, 40.232044, 45.848583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848076, 40.286785, 45.827545>,  <36.085484, 40.319630, 45.814922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848076, 40.286785, 45.827545>,  <35.452396, 40.232044, 45.848583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848076, 40.286785, 45.827545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064352, -0.082949, 0.994474,
		0.131728, -0.987113, -0.090859,
		0.989195, 0.136847, -0.052596,
		36.144833, 40.327839, 45.811768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796635, 39.776024, 46.432621>,  <35.452396, 40.232044, 45.848583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796635, 39.776024, 46.432621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057384, 40.066170, 46.344166>,  <36.213837, 40.240257, 46.291092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057384, 40.066170, 46.344166>,  <35.796635, 39.776024, 46.432621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057384, 40.066170, 46.344166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196360, 0.120210, 0.973135,
		0.732460, -0.677788, -0.064071,
		0.651878, 0.725364, -0.221140,
		36.252949, 40.283779, 46.277824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423359, 39.667061, 46.844425>,  <35.796635, 39.776024, 46.432621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423359, 39.667061, 46.844425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423454, 40.053497, 46.741138>,  <36.423512, 40.285358, 46.679165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423454, 40.053497, 46.741138>,  <36.423359, 39.667061, 46.844425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423454, 40.053497, 46.741138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210049, 0.252407, 0.944548,
		0.977691, -0.054460, -0.202866,
		0.000236, 0.966088, -0.258216,
		36.423527, 40.343323, 46.663673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485695, 39.263508, 47.493923>,  <36.423359, 39.667061, 46.844425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485695, 39.263508, 47.493923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239815, 39.047642, 47.724022>,  <36.092285, 38.918121, 47.862080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239815, 39.047642, 47.724022>,  <36.485695, 39.263508, 47.493923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239815, 39.047642, 47.724022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327811, -0.488541, -0.808621,
		0.717416, -0.685629, 0.123397,
		-0.614699, -0.539667, 0.575244,
		36.055405, 38.885742, 47.896595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643913, 38.673576, 47.458447>,  <36.485695, 39.263508, 47.493923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643913, 38.673576, 47.458447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265125, 38.629421, 47.579155>,  <36.037853, 38.602928, 47.651581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265125, 38.629421, 47.579155>,  <36.643913, 38.673576, 47.458447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265125, 38.629421, 47.579155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169223, -0.627024, -0.760398,
		0.273151, -0.771140, 0.575093,
		-0.946970, -0.110384, 0.301767,
		35.981033, 38.596306, 47.669685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556705, 37.867062, 47.487263>,  <36.643913, 38.673576, 47.458447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556705, 37.867062, 47.487263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205563, 38.054893, 47.449619>,  <35.994877, 38.167595, 47.427032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205563, 38.054893, 47.449619>,  <36.556705, 37.867062, 47.487263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205563, 38.054893, 47.449619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196340, -0.532103, -0.823600,
		-0.436821, -0.704529, 0.559310,
		-0.877860, 0.469580, -0.094107,
		35.942204, 38.195766, 47.421387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010143, 37.419682, 47.419247>,  <36.556705, 37.867062, 47.487263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010143, 37.419682, 47.419247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.856804, 37.742538, 47.239662>,  <35.764801, 37.936253, 47.131912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.856804, 37.742538, 47.239662>,  <36.010143, 37.419682, 47.419247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856804, 37.742538, 47.239662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235557, -0.555462, -0.797481,
		-0.893062, -0.199953, 0.403061,
		-0.383344, 0.807144, -0.448961,
		35.741802, 37.984680, 47.104973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537815, 37.052280, 46.937168>,  <36.010143, 37.419682, 47.419247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537815, 37.052280, 46.937168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558838, 37.433609, 46.818226>,  <35.571449, 37.662407, 46.746861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558838, 37.433609, 46.818226>,  <35.537815, 37.052280, 46.937168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558838, 37.433609, 46.818226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281609, -0.271531, -0.920308,
		-0.958089, 0.132102, 0.254194,
		0.052553, 0.953320, -0.297352,
		35.574604, 37.719604, 46.729019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961060, 37.191795, 46.590473>,  <35.537815, 37.052280, 46.937168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961060, 37.191795, 46.590473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213158, 37.483765, 46.484634>,  <35.364414, 37.658947, 46.421131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213158, 37.483765, 46.484634>,  <34.961060, 37.191795, 46.590473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213158, 37.483765, 46.484634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255522, -0.126813, -0.958450,
		-0.733147, 0.671666, 0.106587,
		0.630242, 0.729920, -0.264598,
		35.402229, 37.702740, 46.405254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595898, 37.579239, 46.107098>,  <34.961060, 37.191795, 46.590473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595898, 37.579239, 46.107098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982841, 37.641209, 46.026882>,  <35.215008, 37.678391, 45.978752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982841, 37.641209, 46.026882>,  <34.595898, 37.579239, 46.107098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982841, 37.641209, 46.026882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222254, 0.138522, -0.965098,
		-0.121740, 0.978166, 0.168433,
		0.967358, 0.154926, -0.200538,
		35.273048, 37.687687, 45.966721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.958450, 38.364830, 49.603565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.854454, 38.614193, 49.308601>,  <40.792057, 38.763809, 49.131622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.854454, 38.614193, 49.308601>,  <40.958450, 38.364830, 49.603565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854454, 38.614193, 49.308601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347789, -0.772871, -0.530766,
		-0.900805, 0.118470, 0.417751,
		-0.259988, 0.623406, -0.737409,
		40.776459, 38.801216, 49.087379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177601, 38.321712, 49.450550>,  <40.958450, 38.364830, 49.603565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177601, 38.321712, 49.450550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.397381, 38.430710, 49.134613>,  <40.529247, 38.496109, 48.945049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.397381, 38.430710, 49.134613>,  <40.177601, 38.321712, 49.450550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397381, 38.430710, 49.134613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492495, -0.658018, -0.569615,
		-0.674950, 0.701968, -0.227343,
		0.549447, 0.272496, -0.789844,
		40.562214, 38.512459, 48.897659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708126, 38.475353, 48.873207>,  <40.177601, 38.321712, 49.450550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708126, 38.475353, 48.873207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.060345, 38.399025, 48.699665>,  <40.271675, 38.353230, 48.595539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.060345, 38.399025, 48.699665>,  <39.708126, 38.475353, 48.873207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060345, 38.399025, 48.699665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472197, -0.432128, -0.768307,
		-0.040872, 0.881393, -0.470612,
		0.880545, -0.190819, -0.433853,
		40.324509, 38.341778, 48.569508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610096, 38.596859, 48.174252>,  <39.708126, 38.475353, 48.873207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610096, 38.596859, 48.174252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.945309, 38.379581, 48.153679>,  <40.146435, 38.249214, 48.141335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.945309, 38.379581, 48.153679>,  <39.610096, 38.596859, 48.174252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945309, 38.379581, 48.153679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441579, -0.619835, -0.648700,
		0.320488, 0.566343, -0.759304,
		0.838030, -0.543194, -0.051436,
		40.196716, 38.216625, 48.138248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646172, 38.327312, 47.634026>,  <39.610096, 38.596859, 48.174252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646172, 38.327312, 47.634026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.915466, 38.074024, 47.786751>,  <40.077042, 37.922050, 47.878387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.915466, 38.074024, 47.786751>,  <39.646172, 38.327312, 47.634026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915466, 38.074024, 47.786751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272184, -0.692333, -0.668274,
		0.687509, 0.345982, -0.638457,
		0.673236, -0.633223, 0.381815,
		40.117435, 37.884056, 47.901295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052643, 38.133293, 47.106407>,  <39.646172, 38.327312, 47.634026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052643, 38.133293, 47.106407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.067085, 37.820320, 47.355083>,  <40.075752, 37.632538, 47.504288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.067085, 37.820320, 47.355083>,  <40.052643, 38.133293, 47.106407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067085, 37.820320, 47.355083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326022, -0.597280, -0.732780,
		0.944673, -0.176227, -0.276655,
		0.036105, -0.782433, 0.621688,
		40.077915, 37.585590, 47.541592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357059, 37.503433, 46.748943>,  <40.052643, 38.133293, 47.106407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357059, 37.503433, 46.748943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.143303, 37.306335, 47.023643>,  <40.015049, 37.188076, 47.188465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.143303, 37.306335, 47.023643>,  <40.357059, 37.503433, 46.748943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143303, 37.306335, 47.023643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327090, -0.628636, -0.705570,
		0.779386, -0.601678, 0.174762,
		-0.534388, -0.492748, 0.686752,
		39.982986, 37.158512, 47.229668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433647, 36.804165, 46.547161>,  <40.357059, 37.503433, 46.748943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433647, 36.804165, 46.547161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.145271, 36.768528, 46.822060>,  <39.972244, 36.747147, 46.987000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.145271, 36.768528, 46.822060>,  <40.433647, 36.804165, 46.547161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145271, 36.768528, 46.822060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378872, -0.779695, -0.498530,
		0.580257, -0.619789, 0.528360,
		-0.720943, -0.089094, 0.687244,
		39.928989, 36.741798, 47.028233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410419, 36.086773, 46.657795>,  <40.433647, 36.804165, 46.547161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410419, 36.086773, 46.657795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.059776, 36.226501, 46.790176>,  <39.849388, 36.310337, 46.869606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.059776, 36.226501, 46.790176>,  <40.410419, 36.086773, 46.657795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059776, 36.226501, 46.790176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468110, -0.778372, -0.418342,
		0.111467, -0.521645, 0.845850,
		-0.876612, 0.349319, 0.330950,
		39.796791, 36.331299, 46.889462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972569, 35.592316, 47.166470>,  <40.410419, 36.086773, 46.657795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972569, 35.592316, 47.166470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.730457, 35.858997, 46.992504>,  <39.585190, 36.019005, 46.888126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.730457, 35.858997, 46.992504>,  <39.972569, 35.592316, 47.166470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730457, 35.858997, 46.992504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410076, -0.729445, -0.547492,
		-0.682261, -0.153035, 0.714913,
		-0.605275, 0.666701, -0.434916,
		39.548874, 36.059006, 46.862030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294655, 35.257362, 47.114597>,  <39.972569, 35.592316, 47.166470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294655, 35.257362, 47.114597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.269577, 35.579426, 46.878704>,  <39.254532, 35.772663, 46.737167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.269577, 35.579426, 46.878704>,  <39.294655, 35.257362, 47.114597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269577, 35.579426, 46.878704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430665, -0.554878, -0.711785,
		-0.900332, 0.209353, 0.381542,
		-0.062695, 0.805160, -0.589735,
		39.250767, 35.820972, 46.701782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632927, 35.243370, 46.647198>,  <39.294655, 35.257362, 47.114597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632927, 35.243370, 46.647198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.856960, 35.501366, 46.439236>,  <38.991379, 35.656162, 46.314457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.856960, 35.501366, 46.439236>,  <38.632927, 35.243370, 46.647198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856960, 35.501366, 46.439236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144500, -0.541898, -0.827929,
		-0.815740, 0.538832, -0.210305,
		0.560079, 0.644985, -0.519909,
		39.024982, 35.694862, 46.283264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892906, 35.496017, 46.811737>,  <38.632927, 35.243370, 46.647198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892906, 35.496017, 46.811737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.499336, 35.434349, 46.847801>,  <37.263195, 35.397346, 46.869442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.499336, 35.434349, 46.847801>,  <37.892906, 35.496017, 46.811737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499336, 35.434349, 46.847801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039963, 0.301987, 0.952474,
		-0.174077, 0.940762, -0.290970,
		-0.983921, -0.154175, 0.090165,
		37.204159, 35.388096, 46.874851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636280, 36.041256, 47.276585>,  <37.892906, 35.496017, 46.811737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636280, 36.041256, 47.276585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.319042, 35.797676, 47.271149>,  <37.128700, 35.651527, 47.267887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.319042, 35.797676, 47.271149>,  <37.636280, 36.041256, 47.276585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319042, 35.797676, 47.271149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176845, 0.208852, 0.961825,
		-0.582862, 0.765221, -0.273329,
		-0.793094, -0.608948, -0.013594,
		37.081116, 35.614990, 47.267071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037239, 36.436398, 47.290760>,  <37.636280, 36.041256, 47.276585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037239, 36.436398, 47.290760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.955448, 36.074383, 47.439945>,  <36.906372, 35.857174, 47.529457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.955448, 36.074383, 47.439945>,  <37.037239, 36.436398, 47.290760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955448, 36.074383, 47.439945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117377, 0.400935, 0.908556,
		-0.971808, 0.142004, -0.188213,
		-0.204480, -0.905034, 0.372964,
		36.894104, 35.802872, 47.551834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406254, 36.551769, 47.754105>,  <37.037239, 36.436398, 47.290760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406254, 36.551769, 47.754105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.578522, 36.214417, 47.882622>,  <36.681885, 36.012005, 47.959732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.578522, 36.214417, 47.882622>,  <36.406254, 36.551769, 47.754105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578522, 36.214417, 47.882622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323372, 0.188160, 0.927376,
		-0.842586, -0.503293, -0.191691,
		0.430674, -0.843381, 0.321292,
		36.707726, 35.961403, 47.979008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870934, 36.254589, 48.086391>,  <36.406254, 36.551769, 47.754105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870934, 36.254589, 48.086391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.203018, 36.080307, 48.225479>,  <36.402267, 35.975739, 48.308933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.203018, 36.080307, 48.225479>,  <35.870934, 36.254589, 48.086391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203018, 36.080307, 48.225479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260330, 0.248531, 0.932985,
		-0.492926, -0.865097, 0.092907,
		0.830212, -0.435706, 0.347718,
		36.452084, 35.949596, 48.329796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596615, 35.887928, 48.784836>,  <35.870934, 36.254589, 48.086391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596615, 35.887928, 48.784836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.992867, 35.940697, 48.798969>,  <36.230618, 35.972359, 48.807449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.992867, 35.940697, 48.798969>,  <35.596615, 35.887928, 48.784836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992867, 35.940697, 48.798969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078456, 0.337952, 0.937888,
		0.111787, -0.931872, 0.345135,
		0.990630, 0.131921, 0.035332,
		36.290054, 35.980274, 48.809570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860035, 35.509399, 49.452824>,  <35.596615, 35.887928, 48.784836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860035, 35.509399, 49.452824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.163410, 35.750771, 49.354317>,  <36.345436, 35.895592, 49.295212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.163410, 35.750771, 49.354317>,  <35.860035, 35.509399, 49.452824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163410, 35.750771, 49.354317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104174, 0.260754, 0.959768,
		0.643363, -0.753581, 0.134905,
		0.758441, 0.603426, -0.246263,
		36.390942, 35.931797, 49.280437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368202, 35.504017, 50.076004>,  <35.860035, 35.509399, 49.452824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368202, 35.504017, 50.076004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.489586, 35.817921, 49.859833>,  <36.562416, 36.006264, 49.730129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.489586, 35.817921, 49.859833>,  <36.368202, 35.504017, 50.076004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489586, 35.817921, 49.859833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360818, 0.430296, 0.827439,
		0.881885, -0.446094, -0.152576,
		0.303463, 0.784758, -0.540430,
		36.580624, 36.053349, 49.697704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986073, 35.771782, 50.423237>,  <36.368202, 35.504017, 50.076004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986073, 35.771782, 50.423237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.831902, 36.081284, 50.222141>,  <36.739399, 36.266987, 50.101482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.831902, 36.081284, 50.222141>,  <36.986073, 35.771782, 50.423237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831902, 36.081284, 50.222141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325891, 0.623869, 0.710339,
		0.863272, 0.109949, -0.492618,
		-0.385430, 0.773756, -0.502738,
		36.716274, 36.313412, 50.071320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487640, 36.296581, 50.539158>,  <36.986073, 35.771782, 50.423237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487640, 36.296581, 50.539158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.164169, 36.504574, 50.429134>,  <36.970089, 36.629372, 50.363121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.164169, 36.504574, 50.429134>,  <37.487640, 36.296581, 50.539158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164169, 36.504574, 50.429134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288541, 0.758101, 0.584831,
		0.512630, 0.393572, -0.763094,
		-0.808675, 0.519985, -0.275063,
		36.921566, 36.660568, 50.346615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746075, 36.896084, 50.344093>,  <37.487640, 36.296581, 50.539158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746075, 36.896084, 50.344093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.362751, 36.943184, 50.448231>,  <37.132755, 36.971443, 50.510712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.362751, 36.943184, 50.448231>,  <37.746075, 36.896084, 50.344093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362751, 36.943184, 50.448231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251133, 0.781700, 0.570856,
		-0.136295, 0.612438, -0.778681,
		-0.958309, 0.117748, 0.260345,
		37.075260, 36.978508, 50.526333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790840, 37.498177, 50.543968>,  <37.746075, 36.896084, 50.344093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790840, 37.498177, 50.543968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.426876, 37.443966, 50.700783>,  <37.208496, 37.411438, 50.794872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.426876, 37.443966, 50.700783>,  <37.790840, 37.498177, 50.543968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426876, 37.443966, 50.700783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216619, 0.650747, 0.727740,
		-0.353748, 0.747101, -0.562763,
		-0.909911, -0.135531, 0.392037,
		37.153904, 37.403305, 50.818394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610394, 38.154861, 50.741329>,  <37.790840, 37.498177, 50.543968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610394, 38.154861, 50.741329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.365414, 37.923473, 50.956841>,  <37.218426, 37.784641, 51.086147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.365414, 37.923473, 50.956841>,  <37.610394, 38.154861, 50.741329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365414, 37.923473, 50.956841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156310, 0.579481, 0.799856,
		-0.774904, 0.574085, -0.264481,
		-0.612447, -0.578470, 0.538777,
		37.181679, 37.749931, 51.118473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180717, 38.610085, 51.097095>,  <37.610394, 38.154861, 50.741329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180717, 38.610085, 51.097095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.177635, 38.264984, 51.299324>,  <37.175785, 38.057922, 51.420662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.177635, 38.264984, 51.299324>,  <37.180717, 38.610085, 51.097095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177635, 38.264984, 51.299324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081630, 0.503353, 0.860216,
		-0.996633, 0.047902, 0.066546,
		-0.007710, -0.862752, 0.505569,
		37.175323, 38.006157, 51.450996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442760, 38.737862, 51.047577>,  <37.180717, 38.610085, 51.097095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442760, 38.737862, 51.047577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.346642, 39.093426, 50.891582>,  <36.288971, 39.306767, 50.797985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.346642, 39.093426, 50.891582>,  <36.442760, 38.737862, 51.047577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346642, 39.093426, 50.891582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052132, -0.412993, -0.909241,
		-0.969298, -0.198160, 0.145583,
		-0.240300, 0.888915, -0.389982,
		36.274551, 39.360100, 50.774590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989727, 38.557041, 50.545849>,  <36.442760, 38.737862, 51.047577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989727, 38.557041, 50.545849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.053898, 38.940479, 50.451733>,  <36.092400, 39.170540, 50.395264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.053898, 38.940479, 50.451733>,  <35.989727, 38.557041, 50.545849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053898, 38.940479, 50.451733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249498, -0.191257, -0.949301,
		-0.954995, 0.210997, 0.208484,
		0.160425, 0.958593, -0.235293,
		36.102024, 39.228058, 50.381145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427551, 38.911396, 50.270306>,  <35.989727, 38.557041, 50.545849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427551, 38.911396, 50.270306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752499, 39.089954, 50.120216>,  <35.947468, 39.197090, 50.030163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752499, 39.089954, 50.120216>,  <35.427551, 38.911396, 50.270306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752499, 39.089954, 50.120216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290493, -0.248144, -0.924142,
		-0.505646, 0.859739, -0.071907,
		0.812364, 0.446400, -0.375222,
		35.996208, 39.223873, 50.007648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185387, 39.354527, 49.796349>,  <35.427551, 38.911396, 50.270306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185387, 39.354527, 49.796349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.561531, 39.286938, 49.678246>,  <35.787216, 39.246384, 49.607384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.561531, 39.286938, 49.678246>,  <35.185387, 39.354527, 49.796349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561531, 39.286938, 49.678246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305649, -0.038607, -0.951361,
		0.149358, 0.984864, -0.087951,
		0.940357, -0.168975, -0.295256,
		35.843639, 39.236244, 49.589668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448711, 39.886982, 49.289333>,  <35.185387, 39.354527, 49.796349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448711, 39.886982, 49.289333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.668713, 39.555847, 49.245190>,  <35.800713, 39.357166, 49.218704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.668713, 39.555847, 49.245190>,  <35.448711, 39.886982, 49.289333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668713, 39.555847, 49.245190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161800, 0.024016, -0.986531,
		0.819339, 0.560452, -0.120736,
		0.550004, -0.827839, -0.110358,
		35.833714, 39.307495, 49.212082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667267, 39.980106, 48.544403>,  <35.448711, 39.886982, 49.289333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667267, 39.980106, 48.544403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752567, 39.601513, 48.641312>,  <35.803749, 39.374355, 48.699455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752567, 39.601513, 48.641312>,  <35.667267, 39.980106, 48.544403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752567, 39.601513, 48.641312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044045, -0.238406, -0.970166,
		0.976004, 0.217559, -0.009153,
		0.213250, -0.946483, 0.242267,
		35.816544, 39.317570, 48.713993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000843, 39.857971, 47.989315>,  <35.667267, 39.980106, 48.544403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000843, 39.857971, 47.989315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945408, 39.500755, 48.160561>,  <35.912148, 39.286427, 48.263306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945408, 39.500755, 48.160561>,  <36.000843, 39.857971, 47.989315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945408, 39.500755, 48.160561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159170, -0.406578, -0.899644,
		0.977476, -0.192818, -0.085800,
		-0.138583, -0.893038, 0.428111,
		35.903831, 39.232845, 48.288994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691048, 40.018967, 47.575657>,  <36.000843, 39.857971, 47.989315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691048, 40.018967, 47.575657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.656513, 40.334229, 47.331902>,  <36.635792, 40.523384, 47.185650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.656513, 40.334229, 47.331902>,  <36.691048, 40.018967, 47.575657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656513, 40.334229, 47.331902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333232, 0.599289, 0.727880,
		0.938883, -0.140223, -0.314381,
		-0.086339, 0.788156, -0.609390,
		36.630611, 40.570675, 47.149086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301613, 40.401775, 47.367283>,  <36.691048, 40.018967, 47.575657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301613, 40.401775, 47.367283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.029972, 40.692104, 47.323460>,  <36.866989, 40.866302, 47.297165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.029972, 40.692104, 47.323460>,  <37.301613, 40.401775, 47.367283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029972, 40.692104, 47.323460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419870, 0.506517, 0.753093,
		0.602104, 0.465428, -0.648728,
		-0.679102, 0.725822, -0.109557,
		36.826241, 40.909851, 47.290592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688000, 41.000866, 47.214291>,  <37.301613, 40.401775, 47.367283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688000, 41.000866, 47.214291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.338749, 41.116219, 47.371510>,  <37.129200, 41.185432, 47.465839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.338749, 41.116219, 47.371510>,  <37.688000, 41.000866, 47.214291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338749, 41.116219, 47.371510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486999, 0.479669, 0.729897,
		0.021959, 0.828705, -0.559255,
		-0.873126, 0.288385, 0.393045,
		37.076813, 41.202736, 47.489422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695675, 41.731277, 47.313671>,  <37.688000, 41.000866, 47.214291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695675, 41.731277, 47.313671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.418369, 41.589474, 47.564655>,  <37.251984, 41.504391, 47.715244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.418369, 41.589474, 47.564655>,  <37.695675, 41.731277, 47.313671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418369, 41.589474, 47.564655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460709, 0.451505, 0.764127,
		-0.554191, 0.818820, -0.149687,
		-0.693267, -0.354511, 0.627458,
		37.210388, 41.483120, 47.752892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705070, 42.150391, 47.872402>,  <37.695675, 41.731277, 47.313671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705070, 42.150391, 47.872402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.471157, 41.892132, 48.068836>,  <37.330811, 41.737175, 48.186699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.471157, 41.892132, 48.068836>,  <37.705070, 42.150391, 47.872402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471157, 41.892132, 48.068836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405470, 0.291690, 0.866320,
		-0.702586, 0.705728, 0.091218,
		-0.584779, -0.645651, 0.491089,
		37.295723, 41.698437, 48.216164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297333, 42.578167, 48.350655>,  <37.705070, 42.150391, 47.872402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297333, 42.578167, 48.350655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.340576, 42.194366, 48.454716>,  <37.366524, 41.964088, 48.517151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.340576, 42.194366, 48.454716>,  <37.297333, 42.578167, 48.350655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340576, 42.194366, 48.454716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406544, 0.281472, 0.869193,
		-0.907212, 0.011793, 0.420507,
		0.108110, -0.959497, 0.260149,
		37.373009, 41.906517, 48.532761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993656, 42.488621, 49.038960>,  <37.297333, 42.578167, 48.350655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993656, 42.488621, 49.038960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.227818, 42.165379, 49.012810>,  <37.368313, 41.971436, 48.997120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.227818, 42.165379, 49.012810>,  <36.993656, 42.488621, 49.038960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227818, 42.165379, 49.012810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408208, 0.224126, 0.884948,
		-0.700476, -0.544738, 0.461078,
		0.585405, -0.808101, -0.065372,
		37.403439, 41.922947, 48.993198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111549, 42.073742, 49.696236>,  <36.993656, 42.488621, 49.038960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111549, 42.073742, 49.696236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.445801, 41.973282, 49.500832>,  <37.646351, 41.913006, 49.383591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.445801, 41.973282, 49.500832>,  <37.111549, 42.073742, 49.696236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445801, 41.973282, 49.500832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538755, 0.201397, 0.818036,
		-0.107067, -0.946764, 0.303604,
		0.835631, -0.251153, -0.488511,
		37.696491, 41.897938, 49.354279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505146, 41.863327, 50.252388>,  <37.111549, 42.073742, 49.696236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505146, 41.863327, 50.252388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.770668, 41.878895, 49.953632>,  <37.929981, 41.888233, 49.774380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.770668, 41.878895, 49.953632>,  <37.505146, 41.863327, 50.252388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770668, 41.878895, 49.953632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697239, 0.329115, 0.636822,
		0.270596, -0.943488, 0.191335,
		0.663804, 0.038915, -0.746893,
		37.969810, 41.890572, 49.729565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.379715, 36.329975, 34.735088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775303, 36.383137, 34.761227>,  <36.012657, 36.415035, 34.776909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775303, 36.383137, 34.761227>,  <35.379715, 36.329975, 34.735088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775303, 36.383137, 34.761227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111668, 0.379323, 0.918501,
		0.097286, -0.915669, 0.389981,
		0.988972, 0.132906, 0.065348,
		36.071995, 36.423008, 34.780830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619881, 36.137924, 35.341438>,  <35.379715, 36.329975, 34.735088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619881, 36.137924, 35.341438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931534, 36.373188, 35.254700>,  <36.118526, 36.514347, 35.202656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931534, 36.373188, 35.254700>,  <35.619881, 36.137924, 35.341438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931534, 36.373188, 35.254700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027842, 0.313115, 0.949307,
		0.626247, -0.745669, 0.227581,
		0.779128, 0.588164, -0.216849,
		36.165272, 36.549637, 35.189644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014164, 35.930618, 35.776920>,  <35.619881, 36.137924, 35.341438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014164, 35.930618, 35.776920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161854, 36.283577, 35.660271>,  <36.250469, 36.495354, 35.590282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161854, 36.283577, 35.660271>,  <36.014164, 35.930618, 35.776920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161854, 36.283577, 35.660271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154609, 0.251097, 0.955535,
		0.916389, -0.397896, -0.043716,
		0.369226, 0.882400, -0.291620,
		36.272621, 36.548298, 35.572784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512413, 36.074577, 36.340092>,  <36.014164, 35.930618, 35.776920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512413, 36.074577, 36.340092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440617, 36.424767, 36.160610>,  <36.397537, 36.634880, 36.052921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440617, 36.424767, 36.160610>,  <36.512413, 36.074577, 36.340092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440617, 36.424767, 36.160610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260242, 0.482118, 0.836563,
		0.948714, 0.033384, -0.314369,
		-0.179490, 0.875470, -0.448704,
		36.386768, 36.687408, 36.025997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047112, 36.539753, 36.658375>,  <36.512413, 36.074577, 36.340092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047112, 36.539753, 36.658375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736721, 36.752247, 36.522346>,  <36.550488, 36.879742, 36.440731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736721, 36.752247, 36.522346>,  <37.047112, 36.539753, 36.658375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736721, 36.752247, 36.522346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079234, 0.616965, 0.782992,
		0.625763, 0.580640, -0.520844,
		-0.775979, 0.531236, -0.340068,
		36.503929, 36.911617, 36.420326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417194, 37.160240, 36.607841>,  <37.047112, 36.539753, 36.658375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417194, 37.160240, 36.607841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020435, 37.206059, 36.629826>,  <36.782379, 37.233551, 36.643017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020435, 37.206059, 36.629826>,  <37.417194, 37.160240, 36.607841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020435, 37.206059, 36.629826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114892, 0.624090, 0.772859,
		0.054228, 0.772910, -0.632194,
		-0.991897, 0.114545, 0.054958,
		36.722866, 37.240421, 36.646313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286987, 37.857697, 36.724220>,  <37.417194, 37.160240, 36.607841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286987, 37.857697, 36.724220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932529, 37.694012, 36.811207>,  <36.719856, 37.595802, 36.863400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932529, 37.694012, 36.811207>,  <37.286987, 37.857697, 36.724220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932529, 37.694012, 36.811207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151808, 0.699724, 0.698098,
		-0.437836, 0.585603, -0.682179,
		-0.886145, -0.409213, 0.217465,
		36.666687, 37.571247, 36.876446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772564, 38.470325, 36.917000>,  <37.286987, 37.857697, 36.724220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772564, 38.470325, 36.917000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657887, 38.134289, 37.101192>,  <36.589081, 37.932667, 37.211708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657887, 38.134289, 37.101192>,  <36.772564, 38.470325, 36.917000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657887, 38.134289, 37.101192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203578, 0.523108, 0.827595,
		-0.936142, 0.143524, -0.320997,
		-0.286696, -0.840094, 0.460485,
		36.571877, 37.882259, 37.239338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198593, 38.626976, 37.288250>,  <36.772564, 38.470325, 36.917000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198593, 38.626976, 37.288250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345551, 38.303520, 37.472042>,  <36.433723, 38.109447, 37.582317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345551, 38.303520, 37.472042>,  <36.198593, 38.626976, 37.288250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345551, 38.303520, 37.472042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145543, 0.437955, 0.887138,
		-0.918607, -0.392803, 0.043210,
		0.367395, -0.808642, 0.459478,
		36.455769, 38.060928, 37.609886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747070, 38.537476, 37.932281>,  <36.198593, 38.626976, 37.288250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747070, 38.537476, 37.932281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052387, 38.294659, 38.020725>,  <36.235577, 38.148968, 38.073792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052387, 38.294659, 38.020725>,  <35.747070, 38.537476, 37.932281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052387, 38.294659, 38.020725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068719, 0.264024, 0.962065,
		-0.642391, -0.749529, 0.159811,
		0.763290, -0.607040, 0.221114,
		36.281376, 38.112545, 38.087059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501934, 38.049606, 38.537834>,  <35.747070, 38.537476, 37.932281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501934, 38.049606, 38.537834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901802, 38.058784, 38.542404>,  <36.141724, 38.064293, 38.545147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901802, 38.058784, 38.542404>,  <35.501934, 38.049606, 38.537834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901802, 38.058784, 38.542404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018548, 0.339729, 0.940340,
		0.017694, -0.940243, 0.340043,
		0.999671, 0.022946, 0.011428,
		36.201702, 38.065670, 38.545834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639606, 37.791721, 39.214252>,  <35.501934, 38.049606, 38.537834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639606, 37.791721, 39.214252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966660, 37.985020, 39.089069>,  <36.162891, 38.100998, 39.013958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966660, 37.985020, 39.089069>,  <35.639606, 37.791721, 39.214252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966660, 37.985020, 39.089069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159433, 0.332273, 0.929610,
		0.553220, -0.809979, 0.194632,
		0.817636, 0.483248, -0.312958,
		36.211952, 38.129993, 38.995182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605747, 37.078068, 39.518688>,  <35.639606, 37.791721, 39.214252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605747, 37.078068, 39.518688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300636, 36.903767, 39.709805>,  <35.117569, 36.799187, 39.824474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300636, 36.903767, 39.709805>,  <35.605747, 37.078068, 39.518688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300636, 36.903767, 39.709805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077054, -0.672353, -0.736210,
		0.642055, -0.598379, 0.479278,
		-0.762776, -0.435757, 0.477795,
		35.071804, 36.773041, 39.853142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777672, 36.343842, 39.653275>,  <35.605747, 37.078068, 39.518688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777672, 36.343842, 39.653275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381504, 36.398811, 39.647831>,  <35.143803, 36.431793, 39.644566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381504, 36.398811, 39.647831>,  <35.777672, 36.343842, 39.653275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381504, 36.398811, 39.647831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084712, -0.682426, -0.726029,
		-0.109065, -0.717920, 0.687529,
		-0.990419, 0.137426, -0.013613,
		35.084377, 36.440041, 39.643745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530602, 35.681717, 39.684643>,  <35.777672, 36.343842, 39.653275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530602, 35.681717, 39.684643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231236, 35.905167, 39.541637>,  <35.051617, 36.039238, 39.455833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231236, 35.905167, 39.541637>,  <35.530602, 35.681717, 39.684643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231236, 35.905167, 39.541637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328953, -0.780727, -0.531278,
		-0.575905, -0.280010, 0.768067,
		-0.748414, 0.558623, -0.357514,
		35.006710, 36.072754, 39.434383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029961, 35.185108, 39.455906>,  <35.530602, 35.681717, 39.684643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029961, 35.185108, 39.455906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889683, 35.515594, 39.279549>,  <34.805515, 35.713886, 39.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889683, 35.515594, 39.279549>,  <35.029961, 35.185108, 39.455906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889683, 35.515594, 39.279549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457557, -0.561943, -0.689102,
		-0.817102, -0.039930, 0.575109,
		-0.350694, 0.826212, -0.440895,
		34.784473, 35.763458, 39.147282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335968, 35.030094, 39.218266>,  <35.029961, 35.185108, 39.455906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335968, 35.030094, 39.218266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469784, 35.342693, 39.007610>,  <34.550072, 35.530251, 38.881218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469784, 35.342693, 39.007610>,  <34.335968, 35.030094, 39.218266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469784, 35.342693, 39.007610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450337, -0.358325, -0.817802,
		-0.827816, 0.510751, 0.232062,
		0.334540, 0.781496, -0.526637,
		34.570145, 35.577141, 38.849621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811783, 35.489693, 38.928001>,  <34.335968, 35.030094, 39.218266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811783, 35.489693, 38.928001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141586, 35.504673, 38.702160>,  <34.339470, 35.513660, 38.566654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141586, 35.504673, 38.702160>,  <33.811783, 35.489693, 38.928001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141586, 35.504673, 38.702160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547330, -0.200369, -0.812577,
		-0.143564, 0.979004, -0.144706,
		0.824511, 0.037455, -0.564604,
		34.388939, 35.515911, 38.532780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646431, 35.823582, 38.355064>,  <33.811783, 35.489693, 38.928001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646431, 35.823582, 38.355064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994938, 35.660538, 38.245708>,  <34.204044, 35.562714, 38.180096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994938, 35.660538, 38.245708>,  <33.646431, 35.823582, 38.355064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994938, 35.660538, 38.245708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410882, -0.301088, -0.860536,
		0.268446, 0.862091, -0.429807,
		0.871271, -0.407608, -0.273392,
		34.256321, 35.538254, 38.163692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629013, 35.859707, 37.563553>,  <33.646431, 35.823582, 38.355064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629013, 35.859707, 37.563553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953403, 35.638054, 37.638657>,  <34.148037, 35.505062, 37.683720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953403, 35.638054, 37.638657>,  <33.629013, 35.859707, 37.563553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953403, 35.638054, 37.638657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173259, -0.533974, -0.827558,
		0.558830, 0.638603, -0.529050,
		0.810981, -0.554128, 0.187757,
		34.196697, 35.471817, 37.694984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940838, 35.903419, 36.968391>,  <33.629013, 35.859707, 37.563553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940838, 35.903419, 36.968391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067738, 35.568707, 37.146896>,  <34.143879, 35.367878, 37.253998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067738, 35.568707, 37.146896>,  <33.940838, 35.903419, 36.968391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067738, 35.568707, 37.146896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274423, -0.531440, -0.801413,
		0.907770, 0.131782, -0.398230,
		0.317248, -0.836782, 0.446261,
		34.162910, 35.317673, 37.280773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391411, 35.519283, 36.436665>,  <33.940838, 35.903419, 36.968391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391411, 35.519283, 36.436665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282692, 35.273701, 36.733093>,  <34.217461, 35.126350, 36.910950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282692, 35.273701, 36.733093>,  <34.391411, 35.519283, 36.436665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282692, 35.273701, 36.733093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281068, -0.685839, -0.671286,
		0.920396, -0.390743, 0.013844,
		-0.271795, -0.613958, 0.741069,
		34.201153, 35.089512, 36.955414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736740, 34.847511, 36.362888>,  <34.391411, 35.519283, 36.436665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736740, 34.847511, 36.362888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412064, 34.776207, 36.585377>,  <34.217258, 34.733425, 36.718868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412064, 34.776207, 36.585377>,  <34.736740, 34.847511, 36.362888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412064, 34.776207, 36.585377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227813, -0.780250, -0.582504,
		0.537829, -0.599528, 0.592711,
		-0.811690, -0.178260, 0.556221,
		34.168556, 34.722729, 36.752243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772686, 34.072449, 36.499733>,  <34.736740, 34.847511, 36.362888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772686, 34.072449, 36.499733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397945, 34.202007, 36.552498>,  <34.173100, 34.279743, 36.584156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397945, 34.202007, 36.552498>,  <34.772686, 34.072449, 36.499733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397945, 34.202007, 36.552498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326247, -0.673529, -0.663266,
		-0.125983, -0.664417, 0.736667,
		-0.936852, 0.323895, 0.131911,
		34.116890, 34.299175, 36.592072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256039, 33.638752, 36.567997>,  <34.772686, 34.072449, 36.499733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256039, 33.638752, 36.567997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014927, 33.875595, 36.354053>,  <33.870262, 34.017700, 36.225689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014927, 33.875595, 36.354053>,  <34.256039, 33.638752, 36.567997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014927, 33.875595, 36.354053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355826, -0.799450, -0.484011,
		-0.714177, -0.101435, 0.692577,
		-0.602776, 0.592106, -0.534856,
		33.834095, 34.053226, 36.193596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682201, 33.215839, 36.513031>,  <34.256039, 33.638752, 36.567997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682201, 33.215839, 36.513031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681221, 33.482929, 36.215267>,  <33.680634, 33.643181, 36.036610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681221, 33.482929, 36.215267>,  <33.682201, 33.215839, 36.513031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681221, 33.482929, 36.215267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379599, -0.689313, -0.617051,
		-0.925148, 0.281063, 0.255156,
		-0.002452, 0.667721, -0.744408,
		33.680485, 33.683247, 35.991943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322842, 32.780254, 36.611168>,  <33.682201, 33.215839, 36.513031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322842, 32.780254, 36.611168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427967, 32.398262, 36.666210>,  <34.491043, 32.169067, 36.699234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427967, 32.398262, 36.666210>,  <34.322842, 32.780254, 36.611168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427967, 32.398262, 36.666210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110663, 0.111841, 0.987545,
		-0.958478, -0.274772, -0.076288,
		0.262818, -0.954983, 0.137604,
		34.506813, 32.111767, 36.707493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785904, 32.414433, 36.996559>,  <34.322842, 32.780254, 36.611168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785904, 32.414433, 36.996559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142704, 32.240009, 37.044193>,  <34.356785, 32.135353, 37.072773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142704, 32.240009, 37.044193>,  <33.785904, 32.414433, 36.996559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142704, 32.240009, 37.044193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118972, 0.027677, 0.992512,
		-0.436094, -0.899490, -0.027192,
		0.892002, -0.436063, 0.119084,
		34.410305, 32.109192, 37.079918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692806, 31.958689, 37.530025>,  <33.785904, 32.414433, 36.996559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692806, 31.958689, 37.530025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090027, 32.005070, 37.522064>,  <34.328362, 32.032898, 37.517288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090027, 32.005070, 37.522064>,  <33.692806, 31.958689, 37.530025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090027, 32.005070, 37.522064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014016, 0.051389, 0.998580,
		0.116815, -0.991924, 0.049407,
		0.993055, 0.115956, -0.019906,
		34.387943, 32.039856, 37.516094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038696, 31.476349, 38.025402>,  <33.692806, 31.958689, 37.530025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038696, 31.476349, 38.025402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294498, 31.781506, 37.987392>,  <34.447979, 31.964600, 37.964584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294498, 31.781506, 37.987392>,  <34.038696, 31.476349, 38.025402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294498, 31.781506, 37.987392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123407, 0.020136, 0.992152,
		0.758818, -0.646212, -0.081269,
		0.639504, 0.762892, -0.095027,
		34.486351, 32.010372, 37.958885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620674, 31.247999, 38.283146>,  <34.038696, 31.476349, 38.025402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620674, 31.247999, 38.283146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689373, 31.641851, 38.295803>,  <34.730595, 31.878162, 38.303398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689373, 31.641851, 38.295803>,  <34.620674, 31.247999, 38.283146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689373, 31.641851, 38.295803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462963, -0.109028, 0.879647,
		0.869579, -0.136429, -0.474573,
		0.171751, 0.984632, 0.031647,
		34.740898, 31.937241, 38.305298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319996, 31.297953, 38.697266>,  <34.620674, 31.247999, 38.283146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319996, 31.297953, 38.697266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187725, 31.675142, 38.712498>,  <35.108360, 31.901457, 38.721638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187725, 31.675142, 38.712498>,  <35.319996, 31.297953, 38.697266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187725, 31.675142, 38.712498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490186, 0.137142, 0.860761,
		0.806454, 0.303302, -0.507583,
		-0.330681, 0.942974, 0.038076,
		35.088520, 31.958035, 38.723919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923210, 31.824139, 38.761452>,  <35.319996, 31.297953, 38.697266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923210, 31.824139, 38.761452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608070, 32.016197, 38.915726>,  <35.418987, 32.131432, 39.008289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608070, 32.016197, 38.915726>,  <35.923210, 31.824139, 38.761452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608070, 32.016197, 38.915726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559886, 0.297530, 0.773307,
		0.256548, 0.825189, -0.503236,
		-0.787852, 0.480145, 0.385681,
		35.371716, 32.160240, 39.031429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160721, 32.405697, 39.116165>,  <35.923210, 31.824139, 38.761452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160721, 32.405697, 39.116165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788708, 32.412659, 39.262985>,  <35.565498, 32.416836, 39.351078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788708, 32.412659, 39.262985>,  <36.160721, 32.405697, 39.116165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788708, 32.412659, 39.262985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341194, 0.411797, 0.844991,
		-0.136444, 0.911109, -0.388925,
		-0.930037, 0.017405, 0.367052,
		35.509697, 32.417881, 39.373100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094952, 33.073719, 39.380066>,  <36.160721, 32.405697, 39.116165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094952, 33.073719, 39.380066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845367, 32.837864, 39.585201>,  <35.695618, 32.696350, 39.708282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845367, 32.837864, 39.585201>,  <36.094952, 33.073719, 39.380066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845367, 32.837864, 39.585201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299154, 0.426035, 0.853816,
		-0.721927, 0.686165, -0.089438,
		-0.623963, -0.589637, 0.512835,
		35.658180, 32.660973, 39.739052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776005, 33.611855, 39.664555>,  <36.094952, 33.073719, 39.380066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776005, 33.611855, 39.664555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674774, 33.290630, 39.880352>,  <35.614037, 33.097897, 40.009830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674774, 33.290630, 39.880352>,  <35.776005, 33.611855, 39.664555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674774, 33.290630, 39.880352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090617, 0.535515, 0.839650,
		-0.963192, 0.261386, -0.062758,
		-0.253080, -0.803058, 0.539489,
		35.598850, 33.049713, 40.042198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196075, 33.907215, 39.984123>,  <35.776005, 33.611855, 39.664555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196075, 33.907215, 39.984123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341152, 33.593712, 40.185783>,  <35.428200, 33.405609, 40.306782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341152, 33.593712, 40.185783>,  <35.196075, 33.907215, 39.984123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341152, 33.593712, 40.185783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120571, 0.575911, 0.808572,
		-0.924075, -0.232478, 0.303379,
		0.362694, -0.783760, 0.504155,
		35.449959, 33.358585, 40.337029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734955, 33.864006, 40.627716>,  <35.196075, 33.907215, 39.984123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734955, 33.864006, 40.627716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084698, 33.675838, 40.675400>,  <35.294544, 33.562939, 40.704010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084698, 33.675838, 40.675400>,  <34.734955, 33.864006, 40.627716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084698, 33.675838, 40.675400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224013, 0.609152, 0.760757,
		-0.430495, -0.638465, 0.637994,
		0.874352, -0.470421, 0.119212,
		35.347004, 33.534714, 40.711163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735989, 33.633595, 41.243713>,  <34.734955, 33.864006, 40.627716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735989, 33.633595, 41.243713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126110, 33.616520, 41.157040>,  <35.360184, 33.606274, 41.105034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126110, 33.616520, 41.157040>,  <34.735989, 33.633595, 41.243713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126110, 33.616520, 41.157040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214932, 0.409045, 0.886841,
		0.050775, -0.911515, 0.408120,
		0.975308, -0.042689, -0.216683,
		35.418701, 33.603714, 41.092033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992359, 33.554817, 41.872322>,  <34.735989, 33.633595, 41.243713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992359, 33.554817, 41.872322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325130, 33.650330, 41.671974>,  <35.524796, 33.707638, 41.551765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325130, 33.650330, 41.671974>,  <34.992359, 33.554817, 41.872322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325130, 33.650330, 41.671974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386638, 0.397994, 0.831932,
		0.397994, -0.885768, 0.238782,
		-0.831932, -0.238782, 0.500871,
		35.574711, 33.721966, 41.521713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581074, 33.381626, 42.380505>,  <34.992359, 33.554817, 41.872322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581074, 33.381626, 42.380505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722733, 33.616989, 42.089752>,  <35.807728, 33.758205, 41.915298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722733, 33.616989, 42.089752>,  <35.581074, 33.381626, 42.380505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722733, 33.616989, 42.089752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645682, 0.408426, 0.645200,
		0.676518, -0.697830, -0.235281,
		0.354145, 0.588406, -0.726884,
		35.828976, 33.793510, 41.871689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316940, 33.335972, 42.388466>,  <35.581074, 33.381626, 42.380505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316940, 33.335972, 42.388466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179523, 33.683105, 42.244884>,  <36.097073, 33.891384, 42.158737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179523, 33.683105, 42.244884>,  <36.316940, 33.335972, 42.388466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179523, 33.683105, 42.244884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561888, 0.496195, 0.661871,
		0.752503, 0.025689, -0.658088,
		-0.343543, 0.867831, -0.358953,
		36.076462, 33.943455, 42.137199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936874, 33.661449, 42.490898>,  <36.316940, 33.335972, 42.388466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936874, 33.661449, 42.490898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622894, 33.903255, 42.436615>,  <36.434505, 34.048340, 42.404045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622894, 33.903255, 42.436615>,  <36.936874, 33.661449, 42.490898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622894, 33.903255, 42.436615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350071, 0.613478, 0.707880,
		0.511177, 0.508143, -0.693172,
		-0.784951, 0.604512, -0.135710,
		36.387409, 34.084610, 42.395901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184853, 34.362976, 42.435459>,  <36.936874, 33.661449, 42.490898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184853, 34.362976, 42.435459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797852, 34.387863, 42.533501>,  <36.565651, 34.402794, 42.592327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797852, 34.387863, 42.533501>,  <37.184853, 34.362976, 42.435459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797852, 34.387863, 42.533501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234844, 0.580505, 0.779656,
		-0.093778, 0.811877, -0.576248,
		-0.967499, 0.062214, 0.245103,
		36.507603, 34.406528, 42.607033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162388, 35.160694, 42.688229>,  <37.184853, 34.362976, 42.435459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162388, 35.160694, 42.688229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828083, 34.994274, 42.831566>,  <36.627502, 34.894421, 42.917568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828083, 34.994274, 42.831566>,  <37.162388, 35.160694, 42.688229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828083, 34.994274, 42.831566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049852, 0.592417, 0.804088,
		-0.546831, 0.689887, -0.474376,
		-0.835758, -0.416051, 0.358344,
		36.577354, 34.869457, 42.939068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952480, 35.777504, 43.060200>,  <37.162388, 35.160694, 42.688229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952480, 35.777504, 43.060200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762440, 35.449821, 43.188690>,  <36.648415, 35.253212, 43.265785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762440, 35.449821, 43.188690>,  <36.952480, 35.777504, 43.060200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762440, 35.449821, 43.188690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084961, 0.320647, 0.943381,
		-0.875822, 0.475489, -0.082738,
		-0.475097, -0.819204, 0.321228,
		36.619911, 35.204060, 43.285057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301186, 35.976376, 43.433605>,  <36.952480, 35.777504, 43.060200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301186, 35.976376, 43.433605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403080, 35.619064, 43.581753>,  <36.464214, 35.404678, 43.670639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403080, 35.619064, 43.581753>,  <36.301186, 35.976376, 43.433605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403080, 35.619064, 43.581753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034513, 0.374359, 0.926641,
		-0.966395, -0.248828, 0.064532,
		0.254732, -0.893275, 0.370367,
		36.479500, 35.351082, 43.692863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896862, 35.908825, 44.041325>,  <36.301186, 35.976376, 43.433605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896862, 35.908825, 44.041325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165150, 35.613556, 44.070290>,  <36.326122, 35.436394, 44.087669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165150, 35.613556, 44.070290>,  <35.896862, 35.908825, 44.041325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165150, 35.613556, 44.070290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145682, 0.226833, 0.962976,
		-0.727264, -0.635337, 0.259679,
		0.670719, -0.738169, 0.072410,
		36.366364, 35.392105, 44.092014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738911, 35.537212, 44.693275>,  <35.896862, 35.908825, 44.041325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738911, 35.537212, 44.693275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108624, 35.403584, 44.619408>,  <36.330452, 35.323406, 44.575089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108624, 35.403584, 44.619408>,  <35.738911, 35.537212, 44.693275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108624, 35.403584, 44.619408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155070, -0.113442, 0.981369,
		-0.348799, -0.935695, -0.053047,
		0.924280, -0.334074, -0.184667,
		36.385906, 35.303360, 44.564007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890858, 34.899361, 44.963741>,  <35.738911, 35.537212, 44.693275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890858, 34.899361, 44.963741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269928, 35.019260, 44.919807>,  <36.497372, 35.091202, 44.893448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269928, 35.019260, 44.919807>,  <35.890858, 34.899361, 44.963741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269928, 35.019260, 44.919807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180734, -0.220150, 0.958577,
		0.263151, -0.928270, -0.262805,
		0.947675, 0.299748, -0.109837,
		36.554230, 35.109184, 44.886856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433239, 34.382191, 45.201656>,  <35.890858, 34.899361, 44.963741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433239, 34.382191, 45.201656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632107, 34.727013, 45.241020>,  <36.751427, 34.933907, 45.264637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632107, 34.727013, 45.241020>,  <36.433239, 34.382191, 45.201656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632107, 34.727013, 45.241020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208084, -0.228574, 0.951028,
		0.842330, -0.452349, -0.293020,
		0.497174, 0.862052, 0.098408,
		36.781258, 34.985630, 45.270542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977596, 34.276955, 45.601284>,  <36.433239, 34.382191, 45.201656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977596, 34.276955, 45.601284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956154, 34.674370, 45.641296>,  <36.943291, 34.912819, 45.665302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956154, 34.674370, 45.641296>,  <36.977596, 34.276955, 45.601284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956154, 34.674370, 45.641296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291180, -0.080268, 0.953295,
		0.955166, 0.080225, -0.284996,
		-0.053602, 0.993540, 0.100029,
		36.940075, 34.972431, 45.671307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530956, 34.392399, 45.999252>,  <36.977596, 34.276955, 45.601284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530956, 34.392399, 45.999252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313026, 34.727421, 46.015553>,  <37.182270, 34.928436, 46.025333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313026, 34.727421, 46.015553>,  <37.530956, 34.392399, 45.999252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313026, 34.727421, 46.015553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201282, 0.083451, 0.975972,
		0.814034, 0.539936, -0.214051,
		-0.544825, 0.837559, 0.040747,
		37.149578, 34.978687, 46.027775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893143, 34.886234, 46.434708>,  <37.530956, 34.392399, 45.999252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893143, 34.886234, 46.434708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509834, 35.000488, 46.439240>,  <37.279850, 35.069042, 46.441959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509834, 35.000488, 46.439240>,  <37.893143, 34.886234, 46.434708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509834, 35.000488, 46.439240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079771, 0.229143, 0.970119,
		0.274504, 0.930541, -0.242367,
		-0.958272, 0.285635, 0.011329,
		37.222351, 35.086178, 46.442638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283669, 35.258366, 45.880539>,  <37.893143, 34.886234, 46.434708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283669, 35.258366, 45.880539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654446, 35.407452, 45.863312>,  <38.876911, 35.496902, 45.852974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654446, 35.407452, 45.863312>,  <38.283669, 35.258366, 45.880539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654446, 35.407452, 45.863312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108779, -0.376835, -0.919871,
		-0.359077, 0.847986, -0.389850,
		0.926947, 0.372712, -0.043070,
		38.932529, 35.519264, 45.850391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295753, 35.621410, 45.311169>,  <38.283669, 35.258366, 45.880539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295753, 35.621410, 45.311169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684479, 35.549015, 45.371601>,  <38.917713, 35.505577, 45.407860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684479, 35.549015, 45.371601>,  <38.295753, 35.621410, 45.311169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684479, 35.549015, 45.371601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081107, -0.345071, -0.935065,
		0.221367, 0.920961, -0.320665,
		0.971812, -0.180985, 0.151084,
		38.976021, 35.494720, 45.416927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672432, 35.991982, 44.754070>,  <38.295753, 35.621410, 45.311169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672432, 35.991982, 44.754070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888958, 35.696980, 44.915596>,  <39.018871, 35.519978, 45.012512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888958, 35.696980, 44.915596>,  <38.672432, 35.991982, 44.754070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888958, 35.696980, 44.915596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129769, -0.401224, -0.906741,
		0.830747, 0.543232, -0.121482,
		0.541313, -0.737508, 0.403810,
		39.051353, 35.475727, 45.036739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347481, 35.912262, 44.340912>,  <38.672432, 35.991982, 44.754070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347481, 35.912262, 44.340912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335781, 35.568855, 44.545689>,  <39.328762, 35.362812, 44.668556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335781, 35.568855, 44.545689>,  <39.347481, 35.912262, 44.340912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335781, 35.568855, 44.545689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214174, -0.505653, -0.835730,
		0.976357, 0.085197, 0.198664,
		-0.029254, -0.858520, 0.511945,
		39.327003, 35.311298, 44.699272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009525, 35.589588, 44.197502>,  <39.347481, 35.912262, 44.340912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009525, 35.589588, 44.197502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764709, 35.295902, 44.315029>,  <39.617821, 35.119690, 44.385548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764709, 35.295902, 44.315029>,  <40.009525, 35.589588, 44.197502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764709, 35.295902, 44.315029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201574, -0.504102, -0.839791,
		0.764703, -0.454762, 0.456531,
		-0.612044, -0.734215, 0.293821,
		39.581097, 35.075638, 44.403175>
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
