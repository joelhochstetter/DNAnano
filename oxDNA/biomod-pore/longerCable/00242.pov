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
	<24.649967, 34.745991, 35.266441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345467, 34.968018, 35.132336>,  <24.162767, 35.101234, 35.051872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345467, 34.968018, 35.132336>,  <24.649967, 34.745991, 35.266441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345467, 34.968018, 35.132336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628660, 0.504936, -0.591461,
		-0.159012, -0.661017, -0.733330,
		-0.761250, 0.555064, -0.335263,
		24.117092, 35.134537, 35.031757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540039, 34.689926, 34.513958>,  <24.649967, 34.745991, 35.266441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540039, 34.689926, 34.513958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405384, 35.055260, 34.605610>,  <24.324591, 35.274460, 34.660603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405384, 35.055260, 34.605610>,  <24.540039, 34.689926, 34.513958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405384, 35.055260, 34.605610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623790, 0.398583, -0.672323,
		-0.705381, -0.083401, -0.703905,
		-0.336637, 0.913332, 0.229128,
		24.304394, 35.329258, 34.674347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.225561, 35.150955, 33.901245>,  <24.540039, 34.689926, 34.513958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.225561, 35.150955, 33.901245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319120, 35.406418, 34.194477>,  <24.375256, 35.559696, 34.370415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319120, 35.406418, 34.194477>,  <24.225561, 35.150955, 33.901245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319120, 35.406418, 34.194477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568151, 0.522079, -0.636112,
		-0.788984, 0.565286, -0.240740,
		0.233899, 0.638659, 0.733080,
		24.389290, 35.598015, 34.414402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.093971, 35.900932, 33.666054>,  <24.225561, 35.150955, 33.901245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.093971, 35.900932, 33.666054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348442, 35.937286, 33.972523>,  <24.501125, 35.959099, 34.156403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348442, 35.937286, 33.972523>,  <24.093971, 35.900932, 33.666054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348442, 35.937286, 33.972523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615339, 0.539297, -0.574906,
		-0.465442, 0.837197, 0.287166,
		0.636177, 0.090881, 0.766172,
		24.539295, 35.964550, 34.202374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195339, 36.626194, 33.777958>,  <24.093971, 35.900932, 33.666054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195339, 36.626194, 33.777958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532444, 36.464401, 33.920029>,  <24.734707, 36.367325, 34.005272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532444, 36.464401, 33.920029>,  <24.195339, 36.626194, 33.777958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532444, 36.464401, 33.920029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537395, 0.670147, -0.511967,
		-0.030939, 0.622335, 0.782139,
		0.842763, -0.404478, 0.355174,
		24.785273, 36.343060, 34.026581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.503538, 37.155972, 33.922230>,  <24.195339, 36.626194, 33.777958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.503538, 37.155972, 33.922230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764065, 36.856552, 33.872486>,  <24.920382, 36.676903, 33.842640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764065, 36.856552, 33.872486>,  <24.503538, 37.155972, 33.922230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764065, 36.856552, 33.872486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588767, 0.601922, -0.539484,
		0.478684, 0.278156, 0.832761,
		0.651318, -0.748544, -0.124361,
		24.959461, 36.631989, 33.835178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148329, 37.306519, 34.189774>,  <24.503538, 37.155972, 33.922230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148329, 37.306519, 34.189774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217356, 37.085007, 33.863937>,  <25.258772, 36.952099, 33.668438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217356, 37.085007, 33.863937>,  <25.148329, 37.306519, 34.189774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217356, 37.085007, 33.863937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553883, 0.738414, -0.384655,
		0.814515, -0.384807, 0.434152,
		0.172566, -0.553777, -0.814587,
		25.269125, 36.918873, 33.619560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783558, 37.163940, 34.089897>,  <25.148329, 37.306519, 34.189774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783558, 37.163940, 34.089897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639181, 37.123859, 33.719021>,  <25.552555, 37.099812, 33.496494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639181, 37.123859, 33.719021>,  <25.783558, 37.163940, 34.089897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639181, 37.123859, 33.719021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606289, 0.730224, -0.314939,
		0.708613, -0.675820, -0.202817,
		-0.360944, -0.100205, -0.927189,
		25.530899, 37.093796, 33.440865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380508, 37.292271, 33.637810>,  <25.783558, 37.163940, 34.089897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380508, 37.292271, 33.637810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059950, 37.329624, 33.401489>,  <25.867615, 37.352036, 33.259697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059950, 37.329624, 33.401489>,  <26.380508, 37.292271, 33.637810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059950, 37.329624, 33.401489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396219, 0.822825, -0.407392,
		0.448077, -0.560568, -0.696412,
		-0.801397, 0.093389, -0.590797,
		25.819530, 37.357639, 33.224251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654579, 37.305759, 33.015144>,  <26.380508, 37.292271, 33.637810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654579, 37.305759, 33.015144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300150, 37.487751, 32.979660>,  <26.087492, 37.596947, 32.958370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300150, 37.487751, 32.979660>,  <26.654579, 37.305759, 33.015144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300150, 37.487751, 32.979660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444698, 0.780310, -0.439728,
		-0.130849, -0.429079, -0.893739,
		-0.886071, 0.454982, -0.088708,
		26.034328, 37.624245, 32.953049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664291, 37.547340, 32.347008>,  <26.654579, 37.305759, 33.015144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664291, 37.547340, 32.347008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401957, 37.764297, 32.557030>,  <26.244555, 37.894470, 32.683044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401957, 37.764297, 32.557030>,  <26.664291, 37.547340, 32.347008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401957, 37.764297, 32.557030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523575, 0.827877, -0.201220,
		-0.543824, 0.142940, -0.826937,
		-0.655839, 0.542391, 0.525059,
		26.205204, 37.927013, 32.714546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623049, 38.173649, 31.986141>,  <26.664291, 37.547340, 32.347008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623049, 38.173649, 31.986141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514460, 38.227192, 32.367378>,  <26.449306, 38.259315, 32.596119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514460, 38.227192, 32.367378>,  <26.623049, 38.173649, 31.986141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514460, 38.227192, 32.367378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399014, 0.916820, -0.015109,
		-0.875837, 0.376195, -0.302302,
		-0.271472, 0.133855, 0.953093,
		26.433018, 38.267349, 32.653305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199316, 38.919579, 32.147331>,  <26.623049, 38.173649, 31.986141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199316, 38.919579, 32.147331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436064, 38.749390, 32.421165>,  <26.578112, 38.647278, 32.585468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436064, 38.749390, 32.421165>,  <26.199316, 38.919579, 32.147331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436064, 38.749390, 32.421165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604358, 0.796233, -0.027644,
		-0.533332, 0.430099, 0.728404,
		0.591869, -0.425473, 0.684590,
		26.613625, 38.621746, 32.626541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439745, 39.496708, 32.726364>,  <26.199316, 38.919579, 32.147331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439745, 39.496708, 32.726364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680023, 39.186462, 32.648823>,  <26.824190, 39.000313, 32.602299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680023, 39.186462, 32.648823>,  <26.439745, 39.496708, 32.726364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680023, 39.186462, 32.648823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785479, 0.617742, -0.037639,
		0.148946, -0.129660, 0.980308,
		0.600697, -0.775618, -0.193856,
		26.860233, 38.953777, 32.590668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586809, 38.912796, 33.296955>,  <26.439745, 39.496708, 32.726364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586809, 38.912796, 33.296955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342173, 38.898262, 32.980820>,  <26.195391, 38.889542, 32.791138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342173, 38.898262, 32.980820>,  <26.586809, 38.912796, 33.296955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342173, 38.898262, 32.980820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555548, -0.691520, 0.461699,
		-0.563312, 0.721442, 0.402741,
		-0.611593, -0.036338, -0.790338,
		26.158695, 38.887360, 32.743717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893648, 38.835129, 33.614521>,  <26.586809, 38.912796, 33.296955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893648, 38.835129, 33.614521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923531, 38.702938, 33.238178>,  <25.941460, 38.623623, 33.012375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923531, 38.702938, 33.238178>,  <25.893648, 38.835129, 33.614521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923531, 38.702938, 33.238178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473039, -0.842324, 0.258308,
		-0.877868, 0.425764, -0.219255,
		0.074706, -0.330476, -0.940853,
		25.945942, 38.603794, 32.955921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.266172, 38.603809, 33.341526>,  <25.893648, 38.835129, 33.614521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.266172, 38.603809, 33.341526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534157, 38.397488, 33.127949>,  <25.694948, 38.273693, 32.999802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534157, 38.397488, 33.127949>,  <25.266172, 38.603809, 33.341526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534157, 38.397488, 33.127949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471110, -0.851235, 0.231203,
		-0.573764, 0.096647, -0.813298,
		0.669963, -0.515809, -0.533939,
		25.735146, 38.242744, 32.967766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840607, 38.191910, 32.935345>,  <25.266172, 38.603809, 33.341526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840607, 38.191910, 32.935345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203478, 38.023617, 32.933983>,  <25.421200, 37.922642, 32.933167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203478, 38.023617, 32.933983>,  <24.840607, 38.191910, 32.935345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203478, 38.023617, 32.933983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418677, -0.903486, 0.091773,
		-0.041687, -0.081830, -0.995774,
		0.907178, -0.420734, -0.003403,
		25.475632, 37.897396, 32.932961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768324, 37.540005, 32.488659>,  <24.840607, 38.191910, 32.935345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768324, 37.540005, 32.488659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101192, 37.479748, 32.702126>,  <25.300913, 37.443596, 32.830204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101192, 37.479748, 32.702126>,  <24.768324, 37.540005, 32.488659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101192, 37.479748, 32.702126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238236, -0.966171, 0.098773,
		0.500733, -0.209334, -0.839908,
		0.832172, -0.150638, 0.533665,
		25.350843, 37.434555, 32.862225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160133, 36.990543, 32.236496>,  <24.768324, 37.540005, 32.488659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160133, 36.990543, 32.236496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240717, 37.017834, 32.627342>,  <25.289066, 37.034206, 32.861851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240717, 37.017834, 32.627342>,  <25.160133, 36.990543, 32.236496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240717, 37.017834, 32.627342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305719, -0.943357, 0.128896,
		0.930565, -0.324691, -0.169189,
		0.201457, 0.068222, 0.977119,
		25.301153, 37.038300, 32.920479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378050, 36.275085, 32.474503>,  <25.160133, 36.990543, 32.236496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378050, 36.275085, 32.474503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293798, 36.467796, 32.814743>,  <25.243248, 36.583424, 33.018887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293798, 36.467796, 32.814743>,  <25.378050, 36.275085, 32.474503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293798, 36.467796, 32.814743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387551, -0.839978, 0.379792,
		0.897463, -0.249657, 0.363638,
		-0.210630, 0.481777, 0.850603,
		25.230610, 36.612328, 33.069923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928726, 36.078571, 33.024593>,  <25.378050, 36.275085, 32.474503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928726, 36.078571, 33.024593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544762, 36.148407, 33.112312>,  <25.314383, 36.190308, 33.164944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544762, 36.148407, 33.112312>,  <25.928726, 36.078571, 33.024593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544762, 36.148407, 33.112312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096123, -0.939926, 0.327566,
		0.263315, 0.293353, 0.919026,
		-0.959909, 0.174593, 0.219299,
		25.256788, 36.200787, 33.178101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759193, 35.876526, 33.659348>,  <25.928726, 36.078571, 33.024593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759193, 35.876526, 33.659348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404779, 35.873257, 33.473927>,  <25.192131, 35.871296, 33.362675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404779, 35.873257, 33.473927>,  <25.759193, 35.876526, 33.659348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404779, 35.873257, 33.473927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117410, -0.963295, 0.241406,
		-0.448510, 0.268319, 0.852551,
		-0.886033, -0.008175, -0.463550,
		25.138969, 35.870804, 33.334862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317131, 35.545155, 34.008801>,  <25.759193, 35.876526, 33.659348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317131, 35.545155, 34.008801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198936, 35.472919, 33.633553>,  <25.128019, 35.429581, 33.408401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198936, 35.472919, 33.633553>,  <25.317131, 35.545155, 34.008801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198936, 35.472919, 33.633553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054215, -0.977220, 0.205186,
		-0.953807, 0.111490, 0.278965,
		-0.295486, -0.180583, -0.938125,
		25.110291, 35.418743, 33.352116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707876, 35.750854, 34.680977>,  <25.317131, 35.545155, 34.008801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707876, 35.750854, 34.680977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427338, 35.961658, 34.488987>,  <25.259014, 36.088142, 34.373795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427338, 35.961658, 34.488987>,  <25.707876, 35.750854, 34.680977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427338, 35.961658, 34.488987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673200, -0.268342, 0.689053,
		0.234343, 0.806381, 0.542985,
		-0.701345, 0.527012, -0.479972,
		25.216934, 36.119762, 34.344994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338474, 36.045204, 35.254272>,  <25.707876, 35.750854, 34.680977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338474, 36.045204, 35.254272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102844, 36.025265, 34.931656>,  <24.961466, 36.013302, 34.738087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102844, 36.025265, 34.931656>,  <25.338474, 36.045204, 35.254272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102844, 36.025265, 34.931656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777790, -0.235723, 0.582646,
		-0.219162, 0.970541, 0.100090,
		-0.589076, -0.049845, -0.806539,
		24.926121, 36.010311, 34.689693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679089, 36.485214, 35.338535>,  <25.338474, 36.045204, 35.254272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.679089, 36.485214, 35.338535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609150, 36.197006, 35.070126>,  <24.567186, 36.024082, 34.909081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609150, 36.197006, 35.070126>,  <24.679089, 36.485214, 35.338535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609150, 36.197006, 35.070126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704529, -0.384527, 0.596472,
		-0.687799, 0.577047, -0.440396,
		-0.174848, -0.720524, -0.671023,
		24.556696, 35.980850, 34.868820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322945, 36.660027, 34.848423>,  <24.679089, 36.485214, 35.338535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322945, 36.660027, 34.848423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694616, 36.645317, 34.701305>,  <25.917620, 36.636490, 34.613033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694616, 36.645317, 34.701305>,  <25.322945, 36.660027, 34.848423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694616, 36.645317, 34.701305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178711, 0.915706, 0.359925,
		0.323556, -0.400164, 0.857427,
		0.929179, -0.036776, -0.367796,
		25.973370, 36.634285, 34.590965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736118, 36.930435, 35.370037>,  <25.322945, 36.660027, 34.848423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736118, 36.930435, 35.370037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897459, 36.967224, 35.005871>,  <25.994263, 36.989296, 34.787373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897459, 36.967224, 35.005871>,  <25.736118, 36.930435, 35.370037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897459, 36.967224, 35.005871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348120, 0.904699, 0.245627,
		0.846238, -0.416007, 0.332896,
		0.403353, 0.091971, -0.910411,
		26.018465, 36.994816, 34.732746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534214, 37.019329, 35.255222>,  <25.736118, 36.930435, 35.370037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534214, 37.019329, 35.255222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321316, 37.201229, 34.969589>,  <26.193577, 37.310371, 34.798210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321316, 37.201229, 34.969589>,  <26.534214, 37.019329, 35.255222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321316, 37.201229, 34.969589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466787, 0.861319, 0.200599,
		0.706276, -0.226557, -0.670705,
		-0.532244, 0.454755, -0.714083,
		26.161642, 37.337654, 34.755363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036770, 37.353924, 34.878941>,  <26.534214, 37.019329, 35.255222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036770, 37.353924, 34.878941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681837, 37.535889, 34.848751>,  <26.468878, 37.645069, 34.830639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681837, 37.535889, 34.848751>,  <27.036770, 37.353924, 34.878941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681837, 37.535889, 34.848751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404422, 0.846347, 0.346611,
		0.221556, 0.277035, -0.934968,
		-0.887330, 0.454915, -0.075474,
		26.415638, 37.672363, 34.826107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398058, 37.317326, 35.573658>,  <27.036770, 37.353924, 34.878941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398058, 37.317326, 35.573658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795376, 37.309799, 35.619282>,  <28.033768, 37.305283, 35.646656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795376, 37.309799, 35.619282>,  <27.398058, 37.317326, 35.573658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795376, 37.309799, 35.619282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068987, -0.888214, 0.454221,
		0.092763, -0.459045, -0.883557,
		0.993295, -0.018819, 0.114061,
		28.093365, 37.304153, 35.653500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478878, 36.691631, 35.305065>,  <27.398058, 37.317326, 35.573658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478878, 36.691631, 35.305065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859207, 36.712906, 35.427120>,  <28.087404, 36.725670, 35.500355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859207, 36.712906, 35.427120>,  <27.478878, 36.691631, 35.305065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859207, 36.712906, 35.427120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022397, -0.994373, 0.103540,
		0.308929, -0.091614, -0.946663,
		0.950822, 0.053189, 0.305139,
		28.144453, 36.728863, 35.518661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887999, 36.151348, 35.024441>,  <27.478878, 36.691631, 35.305065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887999, 36.151348, 35.024441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139015, 36.240566, 35.322819>,  <28.289625, 36.294098, 35.501846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139015, 36.240566, 35.322819>,  <27.887999, 36.151348, 35.024441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139015, 36.240566, 35.322819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149949, -0.974774, 0.165319,
		0.764006, 0.008109, -0.645158,
		0.627543, 0.223046, 0.745950,
		28.327278, 36.307480, 35.546604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548828, 35.868042, 34.808990>,  <27.887999, 36.151348, 35.024441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548828, 35.868042, 34.808990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497341, 35.892136, 35.204929>,  <28.466450, 35.906590, 35.442493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497341, 35.892136, 35.204929>,  <28.548828, 35.868042, 34.808990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497341, 35.892136, 35.204929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004385, -0.998110, 0.061304,
		0.991672, 0.012232, 0.128210,
		-0.128718, 0.060231, 0.989851,
		28.458725, 35.910206, 35.501884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160885, 35.630260, 35.227554>,  <28.548828, 35.868042, 34.808990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160885, 35.630260, 35.227554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797321, 35.565304, 35.381187>,  <28.579184, 35.526329, 35.473366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797321, 35.565304, 35.381187>,  <29.160885, 35.630260, 35.227554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797321, 35.565304, 35.381187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178215, -0.983975, 0.005714,
		0.376996, 0.073642, 0.923283,
		-0.908908, -0.162389, 0.384079,
		28.524649, 35.516586, 35.496410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735186, 35.432968, 35.603191>,  <29.160885, 35.630260, 35.227554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735186, 35.432968, 35.603191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380470, 35.533535, 35.758316>,  <29.167641, 35.593876, 35.851391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380470, 35.533535, 35.758316>,  <29.735186, 35.432968, 35.603191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380470, 35.533535, 35.758316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165267, -0.956115, 0.241932,
		0.431618, 0.150450, 0.889421,
		-0.886788, 0.251414, 0.387813,
		29.114433, 35.608959, 35.874660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656290, 34.983433, 36.229401>,  <29.735186, 35.432968, 35.603191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656290, 34.983433, 36.229401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288738, 35.105545, 36.129429>,  <29.068207, 35.178810, 36.069447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288738, 35.105545, 36.129429>,  <29.656290, 34.983433, 36.229401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288738, 35.105545, 36.129429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348964, -0.924422, 0.153846,
		-0.184072, 0.228582, 0.955965,
		-0.918881, 0.305279, -0.249927,
		29.013075, 35.197128, 36.054451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135464, 34.809368, 36.790249>,  <29.656290, 34.983433, 36.229401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135464, 34.809368, 36.790249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986958, 34.824810, 36.419159>,  <28.897854, 34.834076, 36.196507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986958, 34.824810, 36.419159>,  <29.135464, 34.809368, 36.790249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986958, 34.824810, 36.419159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217398, -0.974978, 0.046431,
		-0.902717, 0.218923, 0.370370,
		-0.371267, 0.038604, -0.927723,
		28.875578, 34.836391, 36.140842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685225, 34.203957, 36.601669>,  <29.135464, 34.809368, 36.790249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685225, 34.203957, 36.601669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434069, 34.300396, 36.897675>,  <28.283375, 34.358261, 37.075279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434069, 34.300396, 36.897675>,  <28.685225, 34.203957, 36.601669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434069, 34.300396, 36.897675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338524, 0.771559, -0.538608,
		-0.700825, -0.588700, -0.402836,
		-0.627890, 0.241100, 0.740017,
		28.245701, 34.372726, 37.119678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920185, 34.450253, 36.304054>,  <28.685225, 34.203957, 36.601669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920185, 34.450253, 36.304054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013655, 34.634357, 36.646645>,  <28.069736, 34.744820, 36.852200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013655, 34.634357, 36.646645>,  <27.920185, 34.450253, 36.304054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013655, 34.634357, 36.646645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270308, 0.876891, -0.397487,
		-0.933986, -0.138630, 0.329319,
		0.233673, 0.460265, 0.856477,
		28.083757, 34.772438, 36.903587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013281, 34.145458, 35.659863>,  <27.920185, 34.450253, 36.304054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013281, 34.145458, 35.659863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228014, 34.357365, 35.922512>,  <28.356853, 34.484509, 36.080101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228014, 34.357365, 35.922512>,  <28.013281, 34.145458, 35.659863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228014, 34.357365, 35.922512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157824, 0.827597, -0.538678,
		-0.828796, 0.185548, 0.527891,
		0.536832, 0.529768, 0.656626,
		28.389063, 34.516296, 36.119499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991079, 34.837757, 35.394615>,  <28.013281, 34.145458, 35.659863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991079, 34.837757, 35.394615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206860, 34.902363, 35.725166>,  <28.336329, 34.941124, 35.923496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206860, 34.902363, 35.725166>,  <27.991079, 34.837757, 35.394615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206860, 34.902363, 35.725166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068354, 0.969792, -0.234160,
		-0.839238, 0.182805, 0.512115,
		0.539451, 0.161511, 0.826382,
		28.368694, 34.950817, 35.973080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820038, 35.522846, 35.723694>,  <27.991079, 34.837757, 35.394615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820038, 35.522846, 35.723694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190834, 35.421246, 35.834091>,  <28.413311, 35.360283, 35.900330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190834, 35.421246, 35.834091>,  <27.820038, 35.522846, 35.723694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190834, 35.421246, 35.834091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274446, 0.960872, -0.037473,
		-0.255678, 0.110483, 0.960428,
		0.926988, -0.254005, 0.275996,
		28.468931, 35.345043, 35.916889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982204, 35.845276, 36.410301>,  <27.820038, 35.522846, 35.723694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982204, 35.845276, 36.410301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334225, 35.783283, 36.230751>,  <28.545437, 35.746086, 36.123020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334225, 35.783283, 36.230751>,  <27.982204, 35.845276, 36.410301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334225, 35.783283, 36.230751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174150, 0.984718, 0.001436,
		0.441796, -0.079436, 0.893592,
		0.880050, -0.154985, -0.448879,
		28.598240, 35.736790, 36.096088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550611, 36.187954, 36.705181>,  <27.982204, 35.845276, 36.410301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550611, 36.187954, 36.705181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675383, 36.136711, 36.328609>,  <28.750246, 36.105965, 36.102665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675383, 36.136711, 36.328609>,  <28.550611, 36.187954, 36.705181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675383, 36.136711, 36.328609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018325, 0.991495, -0.128846,
		0.949929, 0.022939, 0.311623,
		0.311929, -0.128105, -0.941430,
		28.768961, 36.098278, 36.046181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102835, 36.633656, 36.457447>,  <28.550611, 36.187954, 36.705181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102835, 36.633656, 36.457447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868999, 36.533108, 36.148884>,  <28.728699, 36.472778, 35.963745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868999, 36.533108, 36.148884>,  <29.102835, 36.633656, 36.457447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868999, 36.533108, 36.148884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077323, 0.963729, -0.255437,
		0.807636, -0.089678, -0.582822,
		-0.584589, -0.251365, -0.771408,
		28.693623, 36.457699, 35.917461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319204, 37.060127, 35.934437>,  <29.102835, 36.633656, 36.457447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319204, 37.060127, 35.934437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949017, 36.933006, 35.851967>,  <28.726904, 36.856735, 35.802486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949017, 36.933006, 35.851967>,  <29.319204, 37.060127, 35.934437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949017, 36.933006, 35.851967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192592, 0.863386, -0.466341,
		0.326209, -0.391878, -0.860244,
		-0.925471, -0.317801, -0.206171,
		28.671375, 36.837666, 35.790115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281471, 37.284996, 35.277569>,  <29.319204, 37.060127, 35.934437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281471, 37.284996, 35.277569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912506, 37.257526, 35.429588>,  <28.691128, 37.241043, 35.520802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912506, 37.257526, 35.429588>,  <29.281471, 37.284996, 35.277569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912506, 37.257526, 35.429588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254972, 0.847405, -0.465718,
		-0.290073, -0.526487, -0.799168,
		-0.922414, -0.068673, 0.380049,
		28.635782, 37.236923, 35.543602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759254, 37.386013, 34.674316>,  <29.281471, 37.284996, 35.277569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759254, 37.386013, 34.674316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632971, 37.532127, 35.024605>,  <28.557199, 37.619797, 35.234779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632971, 37.532127, 35.024605>,  <28.759254, 37.386013, 34.674316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632971, 37.532127, 35.024605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293693, 0.839985, -0.456256,
		-0.902259, -0.401239, -0.157911,
		-0.315711, 0.365284, 0.875725,
		28.538258, 37.641712, 35.287323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109566, 36.740444, 34.608410>,  <28.759254, 37.386013, 34.674316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109566, 36.740444, 34.608410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940718, 36.537258, 34.308067>,  <28.839409, 36.415344, 34.127861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940718, 36.537258, 34.308067>,  <29.109566, 36.740444, 34.608410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940718, 36.537258, 34.308067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188120, 0.761151, -0.620694,
		0.886807, -0.403257, -0.225736,
		-0.422119, -0.507970, -0.750854,
		28.814081, 36.384869, 34.082809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626410, 36.522930, 33.980125>,  <29.109566, 36.740444, 34.608410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626410, 36.522930, 33.980125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244015, 36.582230, 33.878841>,  <29.014578, 36.617809, 33.818069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244015, 36.582230, 33.878841>,  <29.626410, 36.522930, 33.980125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244015, 36.582230, 33.878841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274550, 0.756389, -0.593715,
		0.103512, -0.637102, -0.763797,
		-0.955985, 0.148244, -0.253212,
		28.957220, 36.626701, 33.802879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666826, 36.734215, 33.382771>,  <29.626410, 36.522930, 33.980125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666826, 36.734215, 33.382771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292728, 36.871727, 33.416550>,  <29.068270, 36.954235, 33.436817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292728, 36.871727, 33.416550>,  <29.666826, 36.734215, 33.382771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292728, 36.871727, 33.416550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127999, 0.550810, -0.824757,
		-0.330049, -0.760541, -0.559146,
		-0.935245, 0.343780, 0.084446,
		29.012156, 36.974861, 33.441883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392464, 36.460598, 33.175480>,  <29.666826, 36.734215, 33.382771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392464, 36.460598, 33.175480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753328, 36.525585, 33.015625>,  <30.969847, 36.564575, 32.919712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753328, 36.525585, 33.015625>,  <30.392464, 36.460598, 33.175480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753328, 36.525585, 33.015625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429509, 0.424835, -0.796892,
		0.040313, 0.890573, 0.453050,
		0.902162, 0.162464, -0.399636,
		31.023977, 36.574326, 32.895733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331030, 36.628445, 33.880032>,  <30.392464, 36.460598, 33.175480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331030, 36.628445, 33.880032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722990, 36.700081, 33.915176>,  <30.958166, 36.743061, 33.936264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722990, 36.700081, 33.915176>,  <30.331030, 36.628445, 33.880032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722990, 36.700081, 33.915176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106931, 0.099743, 0.989251,
		0.168406, -0.978763, 0.116889,
		0.979900, 0.179095, 0.087863,
		31.016960, 36.753807, 33.941536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589375, 36.308136, 34.435158>,  <30.331030, 36.628445, 33.880032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589375, 36.308136, 34.435158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873251, 36.586018, 34.388306>,  <31.043577, 36.752747, 34.360195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873251, 36.586018, 34.388306>,  <30.589375, 36.308136, 34.435158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873251, 36.586018, 34.388306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024960, 0.141363, 0.989643,
		0.704072, -0.705264, 0.082983,
		0.709690, 0.694709, -0.117133,
		31.086159, 36.794430, 34.353165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200758, 36.041340, 34.703281>,  <30.589375, 36.308136, 34.435158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200758, 36.041340, 34.703281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170469, 36.440029, 34.714664>,  <31.152296, 36.679241, 34.721493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170469, 36.440029, 34.714664>,  <31.200758, 36.041340, 34.703281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170469, 36.440029, 34.714664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028218, -0.030667, 0.999131,
		0.996730, 0.074854, 0.030448,
		-0.075723, 0.996723, 0.028455,
		31.147753, 36.739044, 34.723202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816133, 36.293789, 35.013142>,  <31.200758, 36.041340, 34.703281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816133, 36.293789, 35.013142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488211, 36.515190, 35.071861>,  <31.291456, 36.648029, 35.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488211, 36.515190, 35.071861>,  <31.816133, 36.293789, 35.013142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488211, 36.515190, 35.071861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072118, -0.154520, 0.985354,
		0.568080, 0.818388, 0.086760,
		-0.819808, 0.553503, 0.146800,
		31.242268, 36.681240, 35.115902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899973, 36.527008, 35.652817>,  <31.816133, 36.293789, 35.013142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899973, 36.527008, 35.652817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508808, 36.547466, 35.571754>,  <31.274109, 36.559742, 35.523117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508808, 36.547466, 35.571754>,  <31.899973, 36.527008, 35.652817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508808, 36.547466, 35.571754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208926, -0.211474, 0.954792,
		0.005978, 0.976044, 0.217489,
		-0.977913, 0.051147, -0.202657,
		31.215435, 36.562809, 35.510956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551991, 36.901714, 36.185448>,  <31.899973, 36.527008, 35.652817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551991, 36.901714, 36.185448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323856, 36.618912, 36.018185>,  <31.186975, 36.449230, 35.917828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323856, 36.618912, 36.018185>,  <31.551991, 36.901714, 36.185448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323856, 36.618912, 36.018185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022065, -0.495698, 0.868215,
		-0.821116, 0.504400, 0.267114,
		-0.570335, -0.707011, -0.418155,
		31.152756, 36.406807, 35.892738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910551, 37.151730, 35.901768>,  <31.551991, 36.901714, 36.185448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910551, 37.151730, 35.901768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079109, 37.492630, 35.777767>,  <31.180244, 37.697170, 35.703369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079109, 37.492630, 35.777767>,  <30.910551, 37.151730, 35.901768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079109, 37.492630, 35.777767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096837, -0.382161, -0.919008,
		-0.901692, 0.357247, -0.243571,
		0.421396, 0.852248, -0.309997,
		31.205528, 37.748306, 35.684769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611879, 37.357891, 35.177246>,  <30.910551, 37.151730, 35.901768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611879, 37.357891, 35.177246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974047, 37.518238, 35.233143>,  <31.191347, 37.614445, 35.266682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974047, 37.518238, 35.233143>,  <30.611879, 37.357891, 35.177246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974047, 37.518238, 35.233143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225060, -0.174155, -0.958654,
		-0.359957, 0.899431, -0.247902,
		0.905416, 0.400867, 0.139738,
		31.245672, 37.638496, 35.275063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924517, 37.984840, 34.803783>,  <30.611879, 37.357891, 35.177246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924517, 37.984840, 34.803783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161018, 37.676189, 34.897602>,  <31.302919, 37.491001, 34.953896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161018, 37.676189, 34.897602>,  <30.924517, 37.984840, 34.803783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161018, 37.676189, 34.897602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059603, -0.331843, -0.941450,
		0.804278, 0.542658, -0.242196,
		0.591256, -0.771623, 0.234550,
		31.338396, 37.444702, 34.967968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552567, 37.968758, 34.359707>,  <30.924517, 37.984840, 34.803783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552567, 37.968758, 34.359707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501577, 37.602337, 34.511810>,  <31.470984, 37.382484, 34.603073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501577, 37.602337, 34.511810>,  <31.552567, 37.968758, 34.359707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501577, 37.602337, 34.511810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231896, -0.400290, -0.886562,
		0.964352, -0.024832, 0.263455,
		-0.127474, -0.916052, 0.380262,
		31.463335, 37.327522, 34.625889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144535, 37.501171, 34.318962>,  <31.552567, 37.968758, 34.359707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144535, 37.501171, 34.318962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801586, 37.295296, 34.317852>,  <31.595818, 37.171772, 34.317188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801586, 37.295296, 34.317852>,  <32.144535, 37.501171, 34.318962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801586, 37.295296, 34.317852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174229, -0.285156, -0.942513,
		0.484311, -0.808567, 0.334159,
		-0.857373, -0.514689, -0.002772,
		31.544374, 37.140888, 34.317020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305325, 36.865795, 34.015808>,  <32.144535, 37.501171, 34.318962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305325, 36.865795, 34.015808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907814, 36.882210, 33.974377>,  <31.669308, 36.892059, 33.949520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907814, 36.882210, 33.974377>,  <32.305325, 36.865795, 34.015808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907814, 36.882210, 33.974377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074984, -0.441225, -0.894258,
		-0.082393, -0.896458, 0.435402,
		-0.993775, 0.041032, -0.103574,
		31.609682, 36.894520, 33.943306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951899, 36.201542, 33.970757>,  <32.305325, 36.865795, 34.015808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951899, 36.201542, 33.970757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754690, 36.486019, 33.770306>,  <31.636364, 36.656704, 33.650036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754690, 36.486019, 33.770306>,  <31.951899, 36.201542, 33.970757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754690, 36.486019, 33.770306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125957, -0.511585, -0.849950,
		-0.860851, -0.482165, 0.162643,
		-0.493022, 0.711194, -0.501131,
		31.606783, 36.699379, 33.619965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425322, 35.822285, 33.531116>,  <31.951899, 36.201542, 33.970757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425322, 35.822285, 33.531116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497650, 36.172382, 33.351673>,  <31.541048, 36.382442, 33.244007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497650, 36.172382, 33.351673>,  <31.425322, 35.822285, 33.531116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497650, 36.172382, 33.351673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098516, -0.437712, -0.893701,
		-0.978569, 0.205795, 0.007079,
		0.180821, 0.875246, -0.448606,
		31.551897, 36.434956, 33.217091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872158, 35.942013, 32.959927>,  <31.425322, 35.822285, 33.531116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872158, 35.942013, 32.959927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193674, 36.165585, 32.878422>,  <31.386583, 36.299728, 32.829517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193674, 36.165585, 32.878422>,  <30.872158, 35.942013, 32.959927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193674, 36.165585, 32.878422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010877, -0.356254, -0.934326,
		-0.594817, 0.748784, -0.292432,
		0.803788, 0.558933, -0.203761,
		31.434811, 36.333263, 32.817295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734612, 36.272633, 32.295696>,  <30.872158, 35.942013, 32.959927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734612, 36.272633, 32.295696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131886, 36.305664, 32.328583>,  <31.370251, 36.325485, 32.348316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131886, 36.305664, 32.328583>,  <30.734612, 36.272633, 32.295696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131886, 36.305664, 32.328583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095170, -0.167695, -0.981234,
		-0.067244, 0.982374, -0.174412,
		0.993187, 0.082581, 0.082216,
		31.429842, 36.330437, 32.353249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018759, 36.508438, 31.624823>,  <30.734612, 36.272633, 32.295696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018759, 36.508438, 31.624823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356730, 36.371071, 31.788851>,  <31.559513, 36.288651, 31.887268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356730, 36.371071, 31.788851>,  <31.018759, 36.508438, 31.624823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356730, 36.371071, 31.788851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314592, -0.300973, -0.900248,
		0.432582, 0.889651, -0.146264,
		0.844929, -0.343418, 0.410072,
		31.610209, 36.268044, 31.911873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601248, 36.576385, 31.163471>,  <31.018759, 36.508438, 31.624823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601248, 36.576385, 31.163471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738657, 36.305904, 31.424162>,  <31.821102, 36.143616, 31.580576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738657, 36.305904, 31.424162>,  <31.601248, 36.576385, 31.163471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738657, 36.305904, 31.424162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456100, -0.486500, -0.745178,
		0.820953, 0.553239, 0.141290,
		0.343524, -0.676199, 0.651726,
		31.841715, 36.103046, 31.619680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358234, 36.669064, 31.293962>,  <31.601248, 36.576385, 31.163471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358234, 36.669064, 31.293962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230927, 36.291729, 31.331532>,  <32.154541, 36.065327, 31.354073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230927, 36.291729, 31.331532>,  <32.358234, 36.669064, 31.293962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230927, 36.291729, 31.331532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490688, -0.248699, -0.835090,
		0.811129, -0.219696, 0.542036,
		-0.318269, -0.943336, 0.093925,
		32.135445, 36.008728, 31.359709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839565, 36.258316, 30.952995>,  <32.358234, 36.669064, 31.293962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839565, 36.258316, 30.952995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541016, 35.995480, 30.995234>,  <32.361885, 35.837776, 31.020576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541016, 35.995480, 30.995234>,  <32.839565, 36.258316, 30.952995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541016, 35.995480, 30.995234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261039, -0.434993, -0.861765,
		0.612193, -0.615637, 0.496196,
		-0.746377, -0.657094, 0.105595,
		32.317104, 35.798351, 31.026913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211857, 35.687420, 30.748550>,  <32.839565, 36.258316, 30.952995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211857, 35.687420, 30.748550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828247, 35.574276, 30.742151>,  <32.598080, 35.506390, 30.738312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828247, 35.574276, 30.742151>,  <33.211857, 35.687420, 30.748550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828247, 35.574276, 30.742151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165504, -0.513514, -0.841969,
		0.229945, -0.810119, 0.539289,
		-0.959028, -0.282861, -0.015998,
		32.540539, 35.489418, 30.737352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243084, 35.015743, 30.611414>,  <33.211857, 35.687420, 30.748550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243084, 35.015743, 30.611414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864002, 35.080349, 30.501307>,  <32.636555, 35.119114, 30.435242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864002, 35.080349, 30.501307>,  <33.243084, 35.015743, 30.611414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864002, 35.080349, 30.501307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133053, -0.584021, -0.800760,
		-0.290096, -0.795508, 0.531989,
		-0.947703, 0.161515, -0.275266,
		32.579693, 35.128803, 30.418726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905769, 34.402714, 30.407917>,  <33.243084, 35.015743, 30.611414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905769, 34.402714, 30.407917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685764, 34.674919, 30.214262>,  <32.553761, 34.838242, 30.098070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685764, 34.674919, 30.214262>,  <32.905769, 34.402714, 30.407917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685764, 34.674919, 30.214262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064913, -0.543108, -0.837150,
		-0.832629, -0.491871, 0.254543,
		-0.550014, 0.680512, -0.484136,
		32.520760, 34.879074, 30.069021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673851, 34.101433, 29.778868>,  <32.905769, 34.402714, 30.407917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673851, 34.101433, 29.778868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624973, 34.487797, 29.687572>,  <32.595646, 34.719616, 29.632795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624973, 34.487797, 29.687572>,  <32.673851, 34.101433, 29.778868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624973, 34.487797, 29.687572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080245, -0.219595, -0.972285,
		-0.989257, -0.137125, -0.050675,
		-0.122197, 0.965906, -0.228240,
		32.588314, 34.777569, 29.619101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113327, 34.155930, 29.246180>,  <32.673851, 34.101433, 29.778868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113327, 34.155930, 29.246180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343666, 34.482475, 29.228508>,  <32.481869, 34.678402, 29.217905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343666, 34.482475, 29.228508>,  <32.113327, 34.155930, 29.246180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343666, 34.482475, 29.228508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149349, 0.051912, -0.987421,
		-0.803801, 0.575201, 0.151817,
		0.575847, 0.816363, -0.044179,
		32.516418, 34.727383, 29.215254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841743, 34.554085, 28.694532>,  <32.113327, 34.155930, 29.246180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841743, 34.554085, 28.694532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195770, 34.730141, 28.755106>,  <32.408188, 34.835773, 28.791451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195770, 34.730141, 28.755106>,  <31.841743, 34.554085, 28.694532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195770, 34.730141, 28.755106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099351, 0.139207, -0.985267,
		-0.454734, 0.887074, 0.079479,
		0.885069, 0.440138, 0.151434,
		32.461292, 34.862183, 28.800537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819405, 35.252853, 28.376318>,  <31.841743, 34.554085, 28.694532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819405, 35.252853, 28.376318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195881, 35.122192, 28.410864>,  <32.421768, 35.043797, 28.431591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195881, 35.122192, 28.410864>,  <31.819405, 35.252853, 28.376318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195881, 35.122192, 28.410864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058993, -0.092817, -0.993934,
		0.332690, 0.940575, -0.068088,
		0.941189, -0.326655, 0.086367,
		32.478237, 35.024197, 28.436773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119778, 35.625107, 27.956284>,  <31.819405, 35.252853, 28.376318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119778, 35.625107, 27.956284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411331, 35.357693, 28.015316>,  <32.586266, 35.197243, 28.050735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411331, 35.357693, 28.015316>,  <32.119778, 35.625107, 27.956284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411331, 35.357693, 28.015316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310851, 0.131101, -0.941373,
		0.609997, 0.732030, 0.303374,
		0.728886, -0.668539, 0.147581,
		32.629997, 35.157131, 28.059591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597721, 35.786072, 27.493900>,  <32.119778, 35.625107, 27.956284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597721, 35.786072, 27.493900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731251, 35.419147, 27.580721>,  <32.811367, 35.198994, 27.632812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731251, 35.419147, 27.580721>,  <32.597721, 35.786072, 27.493900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731251, 35.419147, 27.580721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195966, -0.157694, -0.967848,
		0.922041, 0.365625, 0.127119,
		0.333824, -0.917306, 0.217050,
		32.831398, 35.143955, 27.645836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311634, 35.663879, 27.199804>,  <32.597721, 35.786072, 27.493900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311634, 35.663879, 27.199804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133556, 35.307007, 27.230318>,  <33.026711, 35.092884, 27.248627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133556, 35.307007, 27.230318>,  <33.311634, 35.663879, 27.199804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133556, 35.307007, 27.230318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196733, -0.180569, -0.963686,
		0.873555, -0.414019, 0.255909,
		-0.445194, -0.892179, 0.076285,
		33.000000, 35.039352, 27.253204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745583, 35.128387, 26.892443>,  <33.311634, 35.663879, 27.199804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745583, 35.128387, 26.892443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382778, 34.960896, 26.874582>,  <33.165096, 34.860401, 26.863865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382778, 34.960896, 26.874582>,  <33.745583, 35.128387, 26.892443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382778, 34.960896, 26.874582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117131, -0.149014, -0.981873,
		0.404485, -0.895802, 0.184204,
		-0.907013, -0.418729, -0.044652,
		33.110676, 34.835278, 26.861187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819336, 34.396603, 26.486422>,  <33.745583, 35.128387, 26.892443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819336, 34.396603, 26.486422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426884, 34.473732, 26.480639>,  <33.191414, 34.520008, 26.477169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426884, 34.473732, 26.480639>,  <33.819336, 34.396603, 26.486422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426884, 34.473732, 26.480639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017694, -0.163978, -0.986305,
		-0.192554, -0.967435, 0.164295,
		-0.981127, 0.192824, -0.014457,
		33.132545, 34.531578, 26.476301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442238, 33.784645, 26.231632>,  <33.819336, 34.396603, 26.486422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442238, 33.784645, 26.231632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187294, 34.082504, 26.152374>,  <33.034328, 34.261219, 26.104820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187294, 34.082504, 26.152374>,  <33.442238, 33.784645, 26.231632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187294, 34.082504, 26.152374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132090, -0.358919, -0.923975,
		-0.759158, -0.562734, 0.327123,
		-0.637363, 0.744652, -0.198145,
		32.996086, 34.305901, 26.092932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951424, 33.462044, 25.900023>,  <33.442238, 33.784645, 26.231632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951424, 33.462044, 25.900023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879242, 33.842400, 25.799435>,  <32.835934, 34.070614, 25.739082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879242, 33.842400, 25.799435>,  <32.951424, 33.462044, 25.900023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879242, 33.842400, 25.799435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203448, -0.286222, -0.936315,
		-0.962312, -0.117805, 0.245109,
		-0.180458, 0.950894, -0.251467,
		32.825104, 34.127666, 25.723995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316547, 33.481865, 25.634245>,  <32.951424, 33.462044, 25.900023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316547, 33.481865, 25.634245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503670, 33.799034, 25.478073>,  <32.615944, 33.989334, 25.384371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503670, 33.799034, 25.478073>,  <32.316547, 33.481865, 25.634245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503670, 33.799034, 25.478073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132837, -0.373650, -0.918009,
		-0.873793, 0.481311, -0.069465,
		0.467804, 0.792922, -0.390428,
		32.644012, 34.036911, 25.360945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948429, 33.636566, 25.088161>,  <32.316547, 33.481865, 25.634245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948429, 33.636566, 25.088161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286915, 33.835598, 25.011908>,  <32.490005, 33.955017, 24.966156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286915, 33.835598, 25.011908>,  <31.948429, 33.636566, 25.088161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286915, 33.835598, 25.011908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109431, -0.187858, -0.976081,
		-0.521487, 0.846833, -0.104518,
		0.846213, 0.497577, -0.190635,
		32.540779, 33.984871, 24.954718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875826, 34.217781, 24.645683>,  <31.948429, 33.636566, 25.088161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875826, 34.217781, 24.645683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264431, 34.132874, 24.603539>,  <32.497593, 34.081928, 24.578253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264431, 34.132874, 24.603539>,  <31.875826, 34.217781, 24.645683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264431, 34.132874, 24.603539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097977, 0.045038, -0.994169,
		0.215777, 0.976173, 0.022958,
		0.971515, -0.212269, -0.105360,
		32.555885, 34.069191, 24.571930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041977, 34.601753, 24.108818>,  <31.875826, 34.217781, 24.645683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041977, 34.601753, 24.108818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343925, 34.340477, 24.132504>,  <32.525097, 34.183712, 24.146715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343925, 34.340477, 24.132504>,  <32.041977, 34.601753, 24.108818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343925, 34.340477, 24.132504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043961, -0.140469, -0.989109,
		0.654393, 0.744051, -0.134752,
		0.754876, -0.653189, 0.059213,
		32.570389, 34.144520, 24.150267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591347, 34.873631, 23.682226>,  <32.041977, 34.601753, 24.108818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591347, 34.873631, 23.682226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627644, 34.476028, 23.706629>,  <32.649422, 34.237469, 23.721272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627644, 34.476028, 23.706629>,  <32.591347, 34.873631, 23.682226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627644, 34.476028, 23.706629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040098, -0.057565, -0.997536,
		0.995067, 0.092967, 0.034633,
		0.090745, -0.994004, 0.061009,
		32.654865, 34.177826, 23.724932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980000, 34.725845, 23.109280>,  <32.591347, 34.873631, 23.682226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980000, 34.725845, 23.109280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854103, 34.358284, 23.204401>,  <32.778564, 34.137745, 23.261475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854103, 34.358284, 23.204401>,  <32.980000, 34.725845, 23.109280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854103, 34.358284, 23.204401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269933, -0.153539, -0.950559,
		0.909986, -0.363371, -0.199718,
		-0.314741, -0.918905, 0.237804,
		32.759682, 34.082611, 23.275742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214615, 34.328236, 22.657328>,  <32.980000, 34.725845, 23.109280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214615, 34.328236, 22.657328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947033, 34.060043, 22.785669>,  <32.786484, 33.899128, 22.862675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947033, 34.060043, 22.785669>,  <33.214615, 34.328236, 22.657328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947033, 34.060043, 22.785669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243082, -0.210584, -0.946871,
		0.702430, -0.711410, -0.022111,
		-0.668957, -0.670485, 0.320852,
		32.746346, 33.858898, 22.881926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371372, 33.530987, 22.544699>,  <33.214615, 34.328236, 22.657328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371372, 33.530987, 22.544699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980621, 33.616264, 22.551123>,  <32.746170, 33.667431, 22.554977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980621, 33.616264, 22.551123>,  <33.371372, 33.530987, 22.544699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980621, 33.616264, 22.551123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050548, -0.157314, -0.986254,
		-0.207741, -0.964261, 0.164453,
		-0.976877, 0.213198, 0.016061,
		32.687557, 33.680222, 22.555941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169594, 33.077415, 22.170746>,  <33.371372, 33.530987, 22.544699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169594, 33.077415, 22.170746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878819, 33.351742, 22.156813>,  <32.704353, 33.516338, 22.148453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878819, 33.351742, 22.156813>,  <33.169594, 33.077415, 22.170746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878819, 33.351742, 22.156813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061036, -0.115056, -0.991482,
		-0.683986, -0.718619, 0.125498,
		-0.726937, 0.685820, -0.034835,
		32.660736, 33.557487, 22.146362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736057, 32.929283, 21.622118>,  <33.169594, 33.077415, 22.170746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736057, 32.929283, 21.622118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586300, 33.290115, 21.707985>,  <32.496445, 33.506615, 21.759504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586300, 33.290115, 21.707985>,  <32.736057, 32.929283, 21.622118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586300, 33.290115, 21.707985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170021, 0.160796, -0.972233,
		-0.911549, -0.400496, 0.093172,
		-0.374394, 0.902079, 0.214666,
		32.473980, 33.560738, 21.772385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338264, 32.989368, 21.054731>,  <32.736057, 32.929283, 21.622118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338264, 32.989368, 21.054731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359711, 33.360344, 21.202780>,  <32.372578, 33.582928, 21.291609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359711, 33.360344, 21.202780>,  <32.338264, 32.989368, 21.054731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359711, 33.360344, 21.202780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126171, 0.373975, -0.918816,
		-0.990559, 0.002562, 0.137065,
		0.053613, 0.927435, 0.370121,
		32.375793, 33.638573, 21.313816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808002, 33.400723, 20.750017>,  <32.338264, 32.989368, 21.054731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808002, 33.400723, 20.750017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095772, 33.657967, 20.854969>,  <32.268433, 33.812313, 20.917940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095772, 33.657967, 20.854969>,  <31.808002, 33.400723, 20.750017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095772, 33.657967, 20.854969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153406, 0.515548, -0.843017,
		-0.677420, 0.566235, 0.469554,
		0.719423, 0.643108, 0.262379,
		32.311600, 33.850899, 20.933683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646893, 34.043407, 20.295042>,  <31.808002, 33.400723, 20.750017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646893, 34.043407, 20.295042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016148, 34.138348, 20.416025>,  <32.237701, 34.195312, 20.488615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016148, 34.138348, 20.416025>,  <31.646893, 34.043407, 20.295042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016148, 34.138348, 20.416025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064219, 0.680452, -0.729973,
		-0.379067, 0.693290, 0.612909,
		0.923138, 0.237348, 0.302459,
		32.293091, 34.209553, 20.506763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672293, 34.724392, 20.215075>,  <31.646893, 34.043407, 20.295042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672293, 34.724392, 20.215075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057743, 34.617863, 20.224035>,  <32.289013, 34.553947, 20.229412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057743, 34.617863, 20.224035>,  <31.672293, 34.724392, 20.215075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057743, 34.617863, 20.224035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179962, 0.584615, -0.791100,
		0.197591, 0.766354, 0.611277,
		0.963624, -0.266321, 0.022400,
		32.346828, 34.537968, 20.230755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059265, 35.331264, 20.023211>,  <31.672293, 34.724392, 20.215075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059265, 35.331264, 20.023211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325237, 35.042000, 19.948483>,  <32.484821, 34.868439, 19.903646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325237, 35.042000, 19.948483>,  <32.059265, 35.331264, 20.023211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325237, 35.042000, 19.948483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168342, 0.388791, -0.905816,
		0.727687, 0.570856, 0.380258,
		0.664931, -0.723163, -0.186819,
		32.524715, 34.825050, 19.892437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663994, 35.659031, 19.874529>,  <32.059265, 35.331264, 20.023211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663994, 35.659031, 19.874529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691822, 35.297943, 19.704702>,  <32.708519, 35.081291, 19.602806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691822, 35.297943, 19.704702>,  <32.663994, 35.659031, 19.874529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691822, 35.297943, 19.704702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241173, 0.428190, -0.870912,
		0.967985, -0.041807, 0.247500,
		0.069567, -0.902721, -0.424565,
		32.712692, 35.027126, 19.577333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306808, 35.724842, 19.435444>,  <32.663994, 35.659031, 19.874529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306808, 35.724842, 19.435444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092022, 35.411201, 19.310955>,  <32.963150, 35.223019, 19.236261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092022, 35.411201, 19.310955>,  <33.306808, 35.724842, 19.435444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092022, 35.411201, 19.310955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213086, 0.230894, -0.949359,
		0.816250, -0.576088, 0.043099,
		-0.536963, -0.784098, -0.311224,
		32.930931, 35.175972, 19.217588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722729, 35.484257, 18.881638>,  <33.306808, 35.724842, 19.435444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722729, 35.484257, 18.881638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375546, 35.297626, 18.813572>,  <33.167236, 35.185650, 18.772732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375546, 35.297626, 18.813572>,  <33.722729, 35.484257, 18.881638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375546, 35.297626, 18.813572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065160, 0.232690, -0.970366,
		0.492341, -0.853327, -0.171564,
		-0.867960, -0.466572, -0.170166,
		33.115158, 35.157654, 18.762522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843651, 34.989174, 18.440722>,  <33.722729, 35.484257, 18.881638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843651, 34.989174, 18.440722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452709, 35.071274, 18.420153>,  <33.218143, 35.120533, 18.407810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452709, 35.071274, 18.420153>,  <33.843651, 34.989174, 18.440722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452709, 35.071274, 18.420153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067786, 0.073502, -0.994989,
		-0.200438, -0.975946, -0.085751,
		-0.977358, 0.205246, -0.051423,
		33.159500, 35.132847, 18.404726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680805, 34.641418, 17.847225>,  <33.843651, 34.989174, 18.440722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680805, 34.641418, 17.847225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368824, 34.889042, 17.883987>,  <33.181637, 35.037617, 17.906046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368824, 34.889042, 17.883987>,  <33.680805, 34.641418, 17.847225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368824, 34.889042, 17.883987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009686, 0.158776, -0.987267,
		-0.625768, -0.769128, -0.129833,
		-0.779949, 0.619058, 0.091907,
		33.134838, 35.074760, 17.911560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194218, 34.460529, 17.357447>,  <33.680805, 34.641418, 17.847225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194218, 34.460529, 17.357447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074356, 34.832146, 17.444242>,  <33.002438, 35.055115, 17.496321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074356, 34.832146, 17.444242>,  <33.194218, 34.460529, 17.357447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074356, 34.832146, 17.444242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096671, 0.255837, -0.961874,
		-0.949137, -0.267254, -0.166475,
		-0.299655, 0.929044, 0.216989,
		32.984459, 35.110859, 17.509338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697540, 34.669598, 16.818745>,  <33.194218, 34.460529, 17.357447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697540, 34.669598, 16.818745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849110, 35.003250, 16.979067>,  <32.940052, 35.203442, 17.075260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849110, 35.003250, 16.979067>,  <32.697540, 34.669598, 16.818745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849110, 35.003250, 16.979067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094656, 0.395898, -0.913403,
		-0.920576, 0.384045, 0.071058,
		0.378920, 0.834130, 0.400807,
		32.962784, 35.253490, 17.099308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317860, 35.299335, 16.796879>,  <32.697540, 34.669598, 16.818745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317860, 35.299335, 16.796879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711426, 35.370781, 16.795893>,  <32.947567, 35.413647, 16.795301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711426, 35.370781, 16.795893>,  <32.317860, 35.299335, 16.796879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711426, 35.370781, 16.795893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032269, 0.164143, -0.985909,
		-0.175692, 0.970131, 0.167267,
		0.983916, 0.178613, -0.002466,
		33.006599, 35.424366, 16.795153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553181, 36.055225, 16.688393>,  <32.317860, 35.299335, 16.796879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553181, 36.055225, 16.688393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496288, 36.446720, 16.629271>,  <32.462151, 36.681618, 16.593798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496288, 36.446720, 16.629271>,  <32.553181, 36.055225, 16.688393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496288, 36.446720, 16.629271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337927, -0.188368, -0.922130,
		-0.930363, -0.081211, 0.357533,
		-0.142235, 0.978735, -0.147808,
		32.453617, 36.740341, 16.584929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818806, 36.172016, 16.416447>,  <32.553181, 36.055225, 16.688393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818806, 36.172016, 16.416447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060131, 36.469723, 16.301846>,  <32.204926, 36.648346, 16.233086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060131, 36.469723, 16.301846>,  <31.818806, 36.172016, 16.416447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060131, 36.469723, 16.301846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197494, -0.208630, -0.957847,
		-0.772665, 0.634463, 0.021119,
		0.603312, 0.744265, -0.286503,
		32.241123, 36.693001, 16.215895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402359, 36.779705, 15.999375>,  <31.818806, 36.172016, 16.416447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402359, 36.779705, 15.999375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779808, 36.706032, 15.889351>,  <32.006275, 36.661827, 15.823336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779808, 36.706032, 15.889351>,  <31.402359, 36.779705, 15.999375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779808, 36.706032, 15.889351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277241, 0.014331, -0.960693,
		0.180881, 0.982788, -0.037539,
		0.943620, -0.184178, -0.275062,
		32.062893, 36.650780, 15.806832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485392, 36.244316, 15.394320>,  <31.402359, 36.779705, 15.999375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485392, 36.244316, 15.394320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519815, 36.443558, 15.049186>,  <31.540470, 36.563103, 14.842105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519815, 36.443558, 15.049186>,  <31.485392, 36.244316, 15.394320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519815, 36.443558, 15.049186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713392, 0.573737, 0.402365,
		0.695461, -0.650168, -0.305967,
		0.086060, 0.498104, -0.862836,
		31.545633, 36.592987, 14.790335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115906, 36.137352, 15.294706>,  <31.485392, 36.244316, 15.394320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115906, 36.137352, 15.294706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958401, 36.484009, 15.172148>,  <31.863897, 36.692001, 15.098613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958401, 36.484009, 15.172148>,  <32.115906, 36.137352, 15.294706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958401, 36.484009, 15.172148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660078, 0.498566, 0.561897,
		0.639723, 0.019009, -0.768370,
		-0.393765, 0.866643, -0.306397,
		31.840271, 36.744003, 15.080229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596413, 36.725174, 15.053563>,  <32.115906, 36.137352, 15.294706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596413, 36.725174, 15.053563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290520, 36.912537, 15.230553>,  <32.106983, 37.024952, 15.336746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290520, 36.912537, 15.230553>,  <32.596413, 36.725174, 15.053563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290520, 36.912537, 15.230553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633315, 0.419853, 0.650105,
		0.118738, 0.777381, -0.617722,
		-0.764731, 0.468404, 0.442475,
		32.061100, 37.053059, 15.363295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882740, 37.354607, 15.251600>,  <32.596413, 36.725174, 15.053563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882740, 37.354607, 15.251600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581379, 37.241795, 15.489202>,  <32.400562, 37.174107, 15.631763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581379, 37.241795, 15.489202>,  <32.882740, 37.354607, 15.251600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581379, 37.241795, 15.489202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516030, 0.306293, 0.799936,
		-0.407549, 0.909198, -0.085224,
		-0.753404, -0.282035, 0.594002,
		32.355358, 37.157185, 15.667402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765167, 37.806015, 15.805922>,  <32.882740, 37.354607, 15.251600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765167, 37.806015, 15.805922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603069, 37.467178, 15.943451>,  <32.505810, 37.263878, 16.025969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603069, 37.467178, 15.943451>,  <32.765167, 37.806015, 15.805922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603069, 37.467178, 15.943451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400709, 0.173453, 0.899637,
		-0.821710, 0.502349, 0.269145,
		-0.405248, -0.847089, 0.343823,
		32.481495, 37.213051, 16.046598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254063, 38.014313, 16.259670>,  <32.765167, 37.806015, 15.805922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254063, 38.014313, 16.259670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326820, 37.632038, 16.352261>,  <32.370476, 37.402672, 16.407814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326820, 37.632038, 16.352261>,  <32.254063, 38.014313, 16.259670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326820, 37.632038, 16.352261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108901, 0.214374, 0.970662,
		-0.977269, -0.201766, -0.065082,
		0.181895, -0.955685, 0.231473,
		32.381390, 37.345333, 16.421703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979868, 37.944798, 16.837938>,  <32.254063, 38.014313, 16.259670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979868, 37.944798, 16.837938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183575, 37.600700, 16.847940>,  <32.305798, 37.394241, 16.853941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183575, 37.600700, 16.847940>,  <31.979868, 37.944798, 16.837938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183575, 37.600700, 16.847940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056621, -0.004500, 0.998386,
		-0.858745, -0.509858, -0.051000,
		0.509264, -0.860247, 0.025004,
		32.336353, 37.342625, 16.855442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616678, 37.563232, 17.380424>,  <31.979868, 37.944798, 16.837938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616678, 37.563232, 17.380424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974432, 37.389080, 17.339397>,  <32.189083, 37.284588, 17.314781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974432, 37.389080, 17.339397>,  <31.616678, 37.563232, 17.380424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974432, 37.389080, 17.339397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144128, 0.063428, 0.987524,
		-0.423446, -0.898008, 0.119480,
		0.894383, -0.435384, -0.102569,
		32.242748, 37.258465, 17.308626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596926, 37.125660, 17.820807>,  <31.616678, 37.563232, 17.380424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596926, 37.125660, 17.820807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993923, 37.124996, 17.771896>,  <32.232121, 37.124599, 17.742550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993923, 37.124996, 17.771896>,  <31.596926, 37.125660, 17.820807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993923, 37.124996, 17.771896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121520, -0.098257, 0.987714,
		-0.013653, -0.995160, -0.097318,
		0.992495, -0.001659, -0.122274,
		32.291672, 37.124496, 17.735214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825096, 36.709137, 18.474808>,  <31.596926, 37.125660, 17.820807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825096, 36.709137, 18.474808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137825, 36.910156, 18.327185>,  <32.325462, 37.030766, 18.238611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137825, 36.910156, 18.327185>,  <31.825096, 36.709137, 18.474808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137825, 36.910156, 18.327185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399961, 0.049858, 0.915175,
		0.478316, -0.863113, -0.162018,
		0.781821, 0.502544, -0.369060,
		32.372372, 37.060921, 18.216467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393490, 36.308376, 18.641666>,  <31.825096, 36.709137, 18.474808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393490, 36.308376, 18.641666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500118, 36.691040, 18.594778>,  <32.564095, 36.920639, 18.566645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500118, 36.691040, 18.594778>,  <32.393490, 36.308376, 18.641666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500118, 36.691040, 18.594778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368495, 0.011221, 0.929562,
		0.890590, -0.290991, -0.349533,
		0.266572, 0.956660, -0.117222,
		32.580090, 36.978039, 18.559612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059498, 36.369923, 18.864611>,  <32.393490, 36.308376, 18.641666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059498, 36.369923, 18.864611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923645, 36.746006, 18.874878>,  <32.842133, 36.971657, 18.881039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923645, 36.746006, 18.874878>,  <33.059498, 36.369923, 18.864611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923645, 36.746006, 18.874878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217872, 0.052098, 0.974586,
		0.914976, 0.336594, -0.222539,
		-0.339633, 0.940208, 0.025666,
		32.821754, 37.028069, 18.882578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410267, 36.658115, 19.375532>,  <33.059498, 36.369923, 18.864611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410267, 36.658115, 19.375532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146622, 36.955410, 19.329639>,  <32.988434, 37.133789, 19.302105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146622, 36.955410, 19.329639>,  <33.410267, 36.658115, 19.375532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146622, 36.955410, 19.329639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218230, 0.335019, 0.916590,
		0.719683, 0.579101, -0.383013,
		-0.659115, 0.743239, -0.114730,
		32.948887, 37.178383, 19.295221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825020, 37.284630, 19.468496>,  <33.410267, 36.658115, 19.375532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825020, 37.284630, 19.468496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436924, 37.336369, 19.550373>,  <33.204067, 37.367413, 19.599499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436924, 37.336369, 19.550373>,  <33.825020, 37.284630, 19.468496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436924, 37.336369, 19.550373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231334, 0.245532, 0.941381,
		0.071507, 0.960720, -0.268148,
		-0.970243, 0.129347, 0.204690,
		33.145851, 37.375172, 19.611780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794472, 37.922035, 19.822098>,  <33.825020, 37.284630, 19.468496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794472, 37.922035, 19.822098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469410, 37.711922, 19.923027>,  <33.274372, 37.585854, 19.983585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469410, 37.711922, 19.923027>,  <33.794472, 37.922035, 19.822098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469410, 37.711922, 19.923027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055116, 0.361772, 0.930636,
		-0.580130, 0.770195, -0.265045,
		-0.812657, -0.525281, 0.252325,
		33.225613, 37.554337, 19.998724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454994, 38.395119, 20.209686>,  <33.794472, 37.922035, 19.822098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454994, 38.395119, 20.209686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307964, 38.039650, 20.319336>,  <33.219746, 37.826366, 20.385126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307964, 38.039650, 20.319336>,  <33.454994, 38.395119, 20.209686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307964, 38.039650, 20.319336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171116, 0.354356, 0.919321,
		-0.914116, 0.291013, -0.282319,
		-0.367576, -0.888675, 0.274125,
		33.197693, 37.773048, 20.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749527, 38.519825, 20.564919>,  <33.454994, 38.395119, 20.209686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749527, 38.519825, 20.564919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853378, 38.149300, 20.674122>,  <32.915691, 37.926983, 20.739643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853378, 38.149300, 20.674122>,  <32.749527, 38.519825, 20.564919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853378, 38.149300, 20.674122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095852, 0.256586, 0.961757,
		-0.960939, -0.275872, -0.022171,
		0.259633, -0.926315, 0.273006,
		32.931267, 37.871407, 20.756023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391075, 38.425411, 21.228537>,  <32.749527, 38.519825, 20.564919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391075, 38.425411, 21.228537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682297, 38.151279, 21.235035>,  <32.857029, 37.986801, 21.238934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682297, 38.151279, 21.235035>,  <32.391075, 38.425411, 21.228537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682297, 38.151279, 21.235035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047999, 0.074603, 0.996058,
		-0.683836, -0.724405, 0.087210,
		0.728056, -0.685326, 0.016245,
		32.900715, 37.945683, 21.239908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150478, 37.891991, 21.653830>,  <32.391075, 38.425411, 21.228537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150478, 37.891991, 21.653830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548615, 37.858662, 21.634390>,  <32.787495, 37.838665, 21.622726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548615, 37.858662, 21.634390>,  <32.150478, 37.891991, 21.653830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548615, 37.858662, 21.634390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042345, -0.075236, 0.996266,
		-0.086694, -0.993676, -0.071355,
		0.995335, -0.083349, -0.048600,
		32.847214, 37.833664, 21.619810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237133, 37.506897, 22.216593>,  <32.150478, 37.891991, 21.653830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237133, 37.506897, 22.216593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583595, 37.682400, 22.120876>,  <32.791473, 37.787701, 22.063446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583595, 37.682400, 22.120876>,  <32.237133, 37.506897, 22.216593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583595, 37.682400, 22.120876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138477, 0.249357, 0.958460,
		0.480201, -0.863315, 0.155225,
		0.866159, 0.438759, -0.239291,
		32.843445, 37.814026, 22.049089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668728, 37.095284, 22.519539>,  <32.237133, 37.506897, 22.216593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668728, 37.095284, 22.519539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856754, 37.446449, 22.483105>,  <32.969570, 37.657150, 22.461245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856754, 37.446449, 22.483105>,  <32.668728, 37.095284, 22.519539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856754, 37.446449, 22.483105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073649, 0.063823, 0.995240,
		0.879551, -0.474541, -0.034656,
		0.470070, 0.877917, -0.091085,
		32.997776, 37.709824, 22.455780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322903, 37.095867, 22.950838>,  <32.668728, 37.095284, 22.519539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322903, 37.095867, 22.950838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254280, 37.485474, 22.891705>,  <33.213108, 37.719238, 22.856224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254280, 37.485474, 22.891705>,  <33.322903, 37.095867, 22.950838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254280, 37.485474, 22.891705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158186, 0.175348, 0.971715,
		0.972392, 0.143319, -0.184158,
		-0.171557, 0.974019, -0.147836,
		33.202812, 37.777679, 22.847353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824249, 37.388329, 23.340345>,  <33.322903, 37.095867, 22.950838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824249, 37.388329, 23.340345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549438, 37.673584, 23.284595>,  <33.384552, 37.844738, 23.251146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549438, 37.673584, 23.284595>,  <33.824249, 37.388329, 23.340345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549438, 37.673584, 23.284595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096329, 0.279505, 0.955300,
		0.720215, 0.642894, -0.260725,
		-0.687030, 0.713137, -0.139374,
		33.343330, 37.887524, 23.242783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157696, 38.027870, 23.645456>,  <33.824249, 37.388329, 23.340345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157696, 38.027870, 23.645456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761101, 38.076134, 23.625895>,  <33.523144, 38.105091, 23.614157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761101, 38.076134, 23.625895>,  <34.157696, 38.027870, 23.645456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761101, 38.076134, 23.625895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019103, 0.236754, 0.971382,
		0.128782, 0.964049, -0.232434,
		-0.991489, 0.120657, -0.048906,
		33.463654, 38.112331, 23.611223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982140, 38.630280, 24.081718>,  <34.157696, 38.027870, 23.645456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982140, 38.630280, 24.081718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632568, 38.441704, 24.034401>,  <33.422825, 38.328560, 24.006010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632568, 38.441704, 24.034401>,  <33.982140, 38.630280, 24.081718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632568, 38.441704, 24.034401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242097, 0.211167, 0.946994,
		-0.421467, 0.856246, -0.298678,
		-0.873930, -0.471436, -0.118294,
		33.370388, 38.300274, 23.998913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506706, 38.998768, 24.483183>,  <33.982140, 38.630280, 24.081718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506706, 38.998768, 24.483183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363609, 38.628246, 24.435888>,  <33.277752, 38.405933, 24.407513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363609, 38.628246, 24.435888>,  <33.506706, 38.998768, 24.483183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363609, 38.628246, 24.435888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361627, 0.020688, 0.932093,
		-0.860956, 0.376208, -0.342378,
		-0.357744, -0.926304, -0.118235,
		33.256287, 38.350353, 24.400417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852295, 39.030865, 24.741623>,  <33.506706, 38.998768, 24.483183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852295, 39.030865, 24.741623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919014, 38.636551, 24.733570>,  <32.959045, 38.399963, 24.728739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919014, 38.636551, 24.733570>,  <32.852295, 39.030865, 24.741623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919014, 38.636551, 24.733570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388940, -0.084547, 0.917375,
		-0.906037, -0.145189, -0.397514,
		0.166802, -0.985785, -0.020132,
		32.969055, 38.340816, 24.727530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194336, 38.751186, 25.047062>,  <32.852295, 39.030865, 24.741623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194336, 38.751186, 25.047062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494854, 38.488243, 25.070538>,  <32.675163, 38.330479, 25.084623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494854, 38.488243, 25.070538>,  <32.194336, 38.751186, 25.047062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494854, 38.488243, 25.070538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266460, -0.220773, 0.938221,
		-0.603788, -0.720515, -0.341024,
		0.751291, -0.657356, 0.058689,
		32.720242, 38.291035, 25.088144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835880, 38.337170, 25.463564>,  <32.194336, 38.751186, 25.047062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835880, 38.337170, 25.463564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217716, 38.219284, 25.481012>,  <32.446819, 38.148552, 25.491482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217716, 38.219284, 25.481012>,  <31.835880, 38.337170, 25.463564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217716, 38.219284, 25.481012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129603, -0.278960, 0.951517,
		-0.268244, -0.913965, -0.304488,
		0.954593, -0.294701, 0.043624,
		32.504093, 38.130871, 25.494099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773125, 37.734699, 25.822081>,  <31.835880, 38.337170, 25.463564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773125, 37.734699, 25.822081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143101, 37.876919, 25.875849>,  <32.365086, 37.962250, 25.908110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143101, 37.876919, 25.875849>,  <31.773125, 37.734699, 25.822081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143101, 37.876919, 25.875849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051207, -0.233856, 0.970922,
		0.376649, -0.904927, -0.198096,
		0.924939, 0.355553, 0.134421,
		32.420582, 37.983585, 25.916176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136395, 37.186405, 26.205597>,  <31.773125, 37.734699, 25.822081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136395, 37.186405, 26.205597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306087, 37.543133, 26.268433>,  <32.407906, 37.757172, 26.306135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306087, 37.543133, 26.268433>,  <32.136395, 37.186405, 26.205597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306087, 37.543133, 26.268433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016980, -0.181279, 0.983285,
		0.905393, -0.414477, -0.092048,
		0.424236, 0.891822, 0.157091,
		32.433357, 37.810680, 26.315559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706020, 37.032570, 26.647800>,  <32.136395, 37.186405, 26.205597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706020, 37.032570, 26.647800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650841, 37.426823, 26.686794>,  <32.617733, 37.663372, 26.710190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650841, 37.426823, 26.686794>,  <32.706020, 37.032570, 26.647800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650841, 37.426823, 26.686794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052472, -0.105559, 0.993028,
		0.989048, 0.131876, 0.066280,
		-0.137953, 0.985630, 0.097483,
		32.609455, 37.722511, 26.716040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023235, 37.212971, 27.345440>,  <32.706020, 37.032570, 26.647800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023235, 37.212971, 27.345440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815418, 37.543674, 27.259138>,  <32.690727, 37.742096, 27.207357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815418, 37.543674, 27.259138>,  <33.023235, 37.212971, 27.345440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815418, 37.543674, 27.259138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164445, 0.151036, 0.974754,
		0.838473, 0.541903, 0.057487,
		-0.519539, 0.826758, -0.215753,
		32.659557, 37.791702, 27.194412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372894, 37.837158, 27.535036>,  <33.023235, 37.212971, 27.345440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372894, 37.837158, 27.535036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985550, 37.936977, 27.534519>,  <32.753143, 37.996868, 27.534208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985550, 37.936977, 27.534519>,  <33.372894, 37.837158, 27.535036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985550, 37.936977, 27.534519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064187, 0.254071, 0.965053,
		0.241156, 0.934437, -0.262050,
		-0.968362, 0.249548, -0.001292,
		32.695042, 38.011841, 27.534132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320602, 38.511536, 27.764658>,  <33.372894, 37.837158, 27.535036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320602, 38.511536, 27.764658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945972, 38.386276, 27.827604>,  <32.721195, 38.311119, 27.865372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945972, 38.386276, 27.827604>,  <33.320602, 38.511536, 27.764658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945972, 38.386276, 27.827604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028714, 0.378948, 0.924972,
		-0.349287, 0.870825, -0.345922,
		-0.936576, -0.313148, 0.157366,
		32.665001, 38.292332, 27.874815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064468, 39.042137, 28.170107>,  <33.320602, 38.511536, 27.764658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064468, 39.042137, 28.170107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836430, 38.718266, 28.225830>,  <32.699608, 38.523941, 28.259264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836430, 38.718266, 28.225830>,  <33.064468, 39.042137, 28.170107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836430, 38.718266, 28.225830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157467, 0.058732, 0.985776,
		-0.806346, 0.583924, 0.094016,
		-0.570097, -0.809681, 0.139307,
		32.665401, 38.475361, 28.267622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408966, 39.130901, 28.649620>,  <33.064468, 39.042137, 28.170107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408966, 39.130901, 28.649620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523251, 38.747585, 28.652391>,  <32.591820, 38.517597, 28.654055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523251, 38.747585, 28.652391>,  <32.408966, 39.130901, 28.649620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523251, 38.747585, 28.652391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145982, 0.050665, 0.987989,
		-0.947131, -0.281269, 0.154369,
		0.285712, -0.958290, 0.006927,
		32.608963, 38.460098, 28.654469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148335, 38.935863, 29.245697>,  <32.408966, 39.130901, 28.649620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148335, 38.935863, 29.245697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415249, 38.650520, 29.160044>,  <32.575397, 38.479313, 29.108652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415249, 38.650520, 29.160044>,  <32.148335, 38.935863, 29.245697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415249, 38.650520, 29.160044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189625, -0.115314, 0.975062,
		-0.720261, -0.691248, 0.058324,
		0.667284, -0.713358, -0.214134,
		32.615433, 38.436512, 29.095804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953491, 38.357273, 29.720737>,  <32.148335, 38.935863, 29.245697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953491, 38.357273, 29.720737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316456, 38.259697, 29.583858>,  <32.534233, 38.201153, 29.501730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316456, 38.259697, 29.583858>,  <31.953491, 38.357273, 29.720737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316456, 38.259697, 29.583858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310610, -0.159178, 0.937115,
		-0.283072, -0.956637, -0.068669,
		0.907409, -0.243942, -0.342199,
		32.588680, 38.186516, 29.481199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113968, 37.681606, 29.942240>,  <31.953491, 38.357273, 29.720737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113968, 37.681606, 29.942240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461246, 37.872925, 29.889364>,  <32.669613, 37.987717, 29.857639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461246, 37.872925, 29.889364>,  <32.113968, 37.681606, 29.942240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461246, 37.872925, 29.889364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281149, -0.254613, 0.925271,
		0.408898, -0.840478, -0.355526,
		0.868192, 0.478297, -0.132189,
		32.721703, 38.016415, 29.849707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717403, 37.175507, 30.183125>,  <32.113968, 37.681606, 29.942240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717403, 37.175507, 30.183125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864033, 37.547646, 30.179483>,  <32.952011, 37.770927, 30.177299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864033, 37.547646, 30.179483>,  <32.717403, 37.175507, 30.183125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864033, 37.547646, 30.179483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473853, -0.178270, 0.862371,
		0.800680, -0.320433, -0.506196,
		0.366571, 0.930346, -0.009101,
		32.974003, 37.826748, 30.176754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235107, 37.162018, 30.790850>,  <32.717403, 37.175507, 30.183125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235107, 37.162018, 30.790850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232853, 37.546406, 30.680212>,  <33.231499, 37.777039, 30.613831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232853, 37.546406, 30.680212>,  <33.235107, 37.162018, 30.790850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232853, 37.546406, 30.680212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648537, 0.214051, 0.730467,
		0.761163, -0.175264, -0.624431,
		-0.005636, 0.960971, -0.276593,
		33.231163, 37.834698, 30.597235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937508, 37.346359, 30.839941>,  <33.235107, 37.162018, 30.790850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937508, 37.346359, 30.839941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721859, 37.681419, 30.875038>,  <33.592472, 37.882454, 30.896097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721859, 37.681419, 30.875038>,  <33.937508, 37.346359, 30.839941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721859, 37.681419, 30.875038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568405, 0.284985, 0.771815,
		0.621503, 0.465974, -0.629764,
		-0.539119, 0.837647, 0.087743,
		33.560123, 37.932713, 30.901361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428856, 37.902431, 30.923391>,  <33.937508, 37.346359, 30.839941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428856, 37.902431, 30.923391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068283, 38.004898, 31.062994>,  <33.851940, 38.066380, 31.146755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068283, 38.004898, 31.062994>,  <34.428856, 37.902431, 30.923391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068283, 38.004898, 31.062994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417502, 0.301101, 0.857339,
		0.114538, 0.918540, -0.378372,
		-0.901428, 0.256169, 0.349005,
		33.797855, 38.081749, 31.167696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499409, 38.637283, 31.182041>,  <34.428856, 37.902431, 30.923391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499409, 38.637283, 31.182041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165676, 38.498581, 31.353458>,  <33.965435, 38.415359, 31.456308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165676, 38.498581, 31.353458>,  <34.499409, 38.637283, 31.182041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165676, 38.498581, 31.353458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424782, 0.091079, 0.900702,
		-0.351354, 0.933523, 0.071305,
		-0.834332, -0.346754, 0.428545,
		33.915375, 38.394554, 31.482021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548897, 39.266510, 31.563660>,  <34.499409, 38.637283, 31.182041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548897, 39.266510, 31.563660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947510, 39.289635, 31.539709>,  <35.186676, 39.303509, 31.525339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947510, 39.289635, 31.539709>,  <34.548897, 39.266510, 31.563660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947510, 39.289635, 31.539709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067109, 0.132595, -0.988896,
		-0.049229, 0.989483, 0.136015,
		0.996531, 0.057810, -0.059876,
		35.246468, 39.306976, 31.521746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700958, 39.711430, 31.064243>,  <34.548897, 39.266510, 31.563660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700958, 39.711430, 31.064243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045414, 39.508495, 31.077173>,  <35.252087, 39.386734, 31.084930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045414, 39.508495, 31.077173>,  <34.700958, 39.711430, 31.064243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045414, 39.508495, 31.077173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127665, 0.154277, -0.979745,
		0.492071, 0.847827, 0.197623,
		0.861143, -0.507334, 0.032323,
		35.303757, 39.356297, 31.086870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185650, 40.050205, 30.608446>,  <34.700958, 39.711430, 31.064243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185650, 40.050205, 30.608446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337234, 39.684101, 30.663124>,  <35.428185, 39.464439, 30.695930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337234, 39.684101, 30.663124>,  <35.185650, 40.050205, 30.608446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337234, 39.684101, 30.663124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159023, -0.081109, -0.983938,
		0.911647, 0.394612, 0.114810,
		0.378962, -0.915261, 0.136696,
		35.450924, 39.409523, 30.704132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787369, 40.084972, 30.175770>,  <35.185650, 40.050205, 30.608446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787369, 40.084972, 30.175770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738598, 39.694824, 30.249304>,  <35.709335, 39.460735, 30.293425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738598, 39.694824, 30.249304>,  <35.787369, 40.084972, 30.175770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738598, 39.694824, 30.249304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263823, -0.210401, -0.941344,
		0.956834, -0.066274, 0.282977,
		-0.121925, -0.975366, 0.183834,
		35.702019, 39.402214, 30.304455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398148, 39.747498, 29.987116>,  <35.787369, 40.084972, 30.175770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398148, 39.747498, 29.987116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107441, 39.472748, 29.987989>,  <35.933018, 39.307896, 29.988514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107441, 39.472748, 29.987989>,  <36.398148, 39.747498, 29.987116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107441, 39.472748, 29.987989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218833, -0.234552, -0.947152,
		0.651090, -0.687884, 0.320777,
		-0.726770, -0.686878, 0.002182,
		35.889408, 39.266685, 29.988644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604866, 39.153835, 29.570782>,  <36.398148, 39.747498, 29.987116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604866, 39.153835, 29.570782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208965, 39.098850, 29.586285>,  <35.971424, 39.065861, 29.595587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208965, 39.098850, 29.586285>,  <36.604866, 39.153835, 29.570782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208965, 39.098850, 29.586285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037851, -0.009184, -0.999241,
		0.137712, -0.990465, 0.003887,
		-0.989749, -0.137460, 0.038755,
		35.912041, 39.057613, 29.597912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529034, 38.593273, 29.117521>,  <36.604866, 39.153835, 29.570782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529034, 38.593273, 29.117521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165806, 38.756222, 29.156437>,  <35.947868, 38.853989, 29.179787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165806, 38.756222, 29.156437>,  <36.529034, 38.593273, 29.117521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165806, 38.756222, 29.156437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151107, -0.102013, -0.983240,
		-0.390616, -0.907549, 0.154191,
		-0.908068, 0.407368, 0.097289,
		35.893387, 38.878433, 29.185623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143162, 38.133144, 28.620548>,  <36.529034, 38.593273, 29.117521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143162, 38.133144, 28.620548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890800, 38.432716, 28.701603>,  <35.739384, 38.612461, 28.750235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890800, 38.432716, 28.701603>,  <36.143162, 38.133144, 28.620548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890800, 38.432716, 28.701603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285698, 0.018568, -0.958140,
		-0.721346, -0.662384, 0.202255,
		-0.630901, 0.748934, 0.202636,
		35.701530, 38.657398, 28.762394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571213, 37.950909, 28.317593>,  <36.143162, 38.133144, 28.620548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571213, 37.950909, 28.317593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565342, 38.348396, 28.361958>,  <35.561821, 38.586891, 28.388577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565342, 38.348396, 28.361958>,  <35.571213, 37.950909, 28.317593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565342, 38.348396, 28.361958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049132, 0.110071, -0.992709,
		-0.998684, -0.020017, 0.047209,
		-0.014675, 0.993722, 0.110910,
		35.560940, 38.646511, 28.395231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074329, 38.244099, 27.786196>,  <35.571213, 37.950909, 28.317593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074329, 38.244099, 27.786196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336555, 38.529873, 27.884024>,  <35.493893, 38.701336, 27.942720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336555, 38.529873, 27.884024>,  <35.074329, 38.244099, 27.786196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336555, 38.529873, 27.884024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097658, 0.240944, -0.965613,
		-0.748793, 0.656911, 0.088186,
		0.655570, 0.714432, 0.244570,
		35.533226, 38.744202, 27.957396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790974, 38.759560, 27.522572>,  <35.074329, 38.244099, 27.786196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790974, 38.759560, 27.522572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174320, 38.865868, 27.564350>,  <35.404327, 38.929653, 27.589417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174320, 38.865868, 27.564350>,  <34.790974, 38.759560, 27.522572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174320, 38.865868, 27.564350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048879, 0.207683, -0.976974,
		-0.281339, 0.941401, 0.186045,
		0.958363, 0.265767, 0.104445,
		35.461830, 38.945599, 27.595684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972729, 39.484715, 27.216394>,  <34.790974, 38.759560, 27.522572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972729, 39.484715, 27.216394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330109, 39.305229, 27.224377>,  <35.544537, 39.197540, 27.229166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330109, 39.305229, 27.224377>,  <34.972729, 39.484715, 27.216394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330109, 39.305229, 27.224377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190025, 0.337368, -0.921994,
		0.406978, 0.827551, 0.386689,
		0.893454, -0.448712, 0.019954,
		35.598145, 39.170616, 27.230362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361477, 39.978882, 26.778366>,  <34.972729, 39.484715, 27.216394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361477, 39.978882, 26.778366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562534, 39.635265, 26.817146>,  <35.683170, 39.429096, 26.840414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562534, 39.635265, 26.817146>,  <35.361477, 39.978882, 26.778366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562534, 39.635265, 26.817146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377715, 0.117354, -0.918455,
		0.777610, 0.498279, 0.383460,
		0.502647, -0.859038, 0.096952,
		35.713329, 39.377556, 26.846231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957546, 40.026161, 26.459232>,  <35.361477, 39.978882, 26.778366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957546, 40.026161, 26.459232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905407, 39.629696, 26.449371>,  <35.874123, 39.391819, 26.443455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905407, 39.629696, 26.449371>,  <35.957546, 40.026161, 26.459232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905407, 39.629696, 26.449371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193901, -0.001101, -0.981020,
		0.972322, -0.132658, 0.192331,
		-0.130352, -0.991161, -0.024652,
		35.866302, 39.332348, 26.441977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563747, 39.785557, 25.987135>,  <35.957546, 40.026161, 26.459232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563747, 39.785557, 25.987135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344090, 39.451279, 25.990049>,  <36.212296, 39.250713, 25.991798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344090, 39.451279, 25.990049>,  <36.563747, 39.785557, 25.987135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344090, 39.451279, 25.990049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056282, 0.028283, -0.998014,
		0.833831, -0.548463, -0.062566,
		-0.549143, -0.835697, 0.007285,
		36.179348, 39.200569, 25.992235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924835, 39.191757, 25.551619>,  <36.563747, 39.785557, 25.987135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924835, 39.191757, 25.551619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535252, 39.102695, 25.568739>,  <36.301502, 39.049259, 25.579010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535252, 39.102695, 25.568739>,  <36.924835, 39.191757, 25.551619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535252, 39.102695, 25.568739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043162, -0.003241, -0.999063,
		0.222586, -0.974892, -0.006454,
		-0.973957, -0.222656, 0.042800,
		36.243065, 39.035900, 25.581579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844059, 38.570587, 24.993904>,  <36.924835, 39.191757, 25.551619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844059, 38.570587, 24.993904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502342, 38.768852, 25.056509>,  <36.297310, 38.887810, 25.094072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502342, 38.768852, 25.056509>,  <36.844059, 38.570587, 24.993904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502342, 38.768852, 25.056509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309951, -0.244059, -0.918893,
		-0.417265, -0.833518, 0.362130,
		-0.854296, 0.495664, 0.156512,
		36.246052, 38.917553, 25.103462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199440, 38.075539, 24.821959>,  <36.844059, 38.570587, 24.993904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199440, 38.075539, 24.821959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100704, 38.462280, 24.795843>,  <36.041462, 38.694324, 24.780174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100704, 38.462280, 24.795843>,  <36.199440, 38.075539, 24.821959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100704, 38.462280, 24.795843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376403, -0.157743, -0.912928,
		-0.892967, -0.200773, 0.402864,
		-0.246840, 0.966854, -0.065288,
		36.026653, 38.752338, 24.776257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619343, 38.062569, 24.492025>,  <36.199440, 38.075539, 24.821959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619343, 38.062569, 24.492025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711048, 38.450375, 24.457449>,  <35.766071, 38.683060, 24.436703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711048, 38.450375, 24.457449>,  <35.619343, 38.062569, 24.492025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711048, 38.450375, 24.457449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225048, -0.033603, -0.973768,
		-0.946991, 0.242702, 0.210484,
		0.229263, 0.969519, -0.086441,
		35.779827, 38.741230, 24.431517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997738, 38.402489, 24.241735>,  <35.619343, 38.062569, 24.492025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997738, 38.402489, 24.241735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306252, 38.642315, 24.156279>,  <35.491360, 38.786209, 24.105005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306252, 38.642315, 24.156279>,  <34.997738, 38.402489, 24.241735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306252, 38.642315, 24.156279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350671, 0.120162, -0.928758,
		-0.531178, 0.791255, 0.302929,
		0.771285, 0.599564, -0.213643,
		35.537636, 38.822186, 24.092186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653934, 38.830891, 23.818794>,  <34.997738, 38.402489, 24.241735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653934, 38.830891, 23.818794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044182, 38.881046, 23.746752>,  <35.278332, 38.911140, 23.703526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044182, 38.881046, 23.746752>,  <34.653934, 38.830891, 23.818794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044182, 38.881046, 23.746752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160931, -0.149206, -0.975622,
		-0.149206, 0.980824, -0.125390,
		0.975622, 0.125390, -0.180108,
		35.336868, 38.918663, 23.692720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683582, 39.307220, 23.293684>,  <34.653934, 38.830891, 23.818794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683582, 39.307220, 23.293684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036327, 39.121353, 23.261694>,  <35.247974, 39.009834, 23.242500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036327, 39.121353, 23.261694>,  <34.683582, 39.307220, 23.293684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036327, 39.121353, 23.261694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259788, -0.337302, -0.904841,
		0.393476, 0.818725, -0.418171,
		0.881865, -0.464669, -0.079974,
		35.300888, 38.981953, 23.237701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000004, 39.442413, 22.573313>,  <34.683582, 39.307220, 23.293684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000004, 39.442413, 22.573313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155231, 39.100250, 22.710535>,  <35.248367, 38.894955, 22.792868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155231, 39.100250, 22.710535>,  <35.000004, 39.442413, 22.573313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155231, 39.100250, 22.710535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119393, -0.415749, -0.901609,
		0.913865, 0.308926, -0.263468,
		0.388067, -0.855405, 0.343054,
		35.271652, 38.843628, 22.813452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358196, 39.151215, 22.008497>,  <35.000004, 39.442413, 22.573313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358196, 39.151215, 22.008497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318615, 38.840508, 22.257284>,  <35.294865, 38.654083, 22.406557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318615, 38.840508, 22.257284>,  <35.358196, 39.151215, 22.008497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318615, 38.840508, 22.257284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012335, -0.624029, -0.781304,
		0.995016, -0.084984, 0.052167,
		-0.098952, -0.776766, 0.621967,
		35.288929, 38.607479, 22.443874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792000, 38.677090, 21.676847>,  <35.358196, 39.151215, 22.008497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792000, 38.677090, 21.676847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552860, 38.469776, 21.921453>,  <35.409374, 38.345387, 22.068216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552860, 38.469776, 21.921453>,  <35.792000, 38.677090, 21.676847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552860, 38.469776, 21.921453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155789, -0.673192, -0.722871,
		0.786323, -0.527436, 0.321725,
		-0.597851, -0.518288, 0.611515,
		35.373505, 38.314289, 22.104908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067802, 37.999474, 21.679342>,  <35.792000, 38.677090, 21.676847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067802, 37.999474, 21.679342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681206, 37.966782, 21.776672>,  <35.449245, 37.947166, 21.835072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681206, 37.966782, 21.776672>,  <36.067802, 37.999474, 21.679342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681206, 37.966782, 21.776672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141600, -0.620898, -0.770996,
		0.214097, -0.779619, 0.588521,
		-0.966495, -0.081733, 0.243326,
		35.391258, 37.942261, 21.849670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899239, 37.394989, 21.807520>,  <36.067802, 37.999474, 21.679342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899239, 37.394989, 21.807520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536888, 37.531094, 21.706636>,  <35.319477, 37.612755, 21.646107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536888, 37.531094, 21.706636>,  <35.899239, 37.394989, 21.807520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536888, 37.531094, 21.706636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046317, -0.671492, -0.739562,
		-0.420998, -0.658272, 0.624050,
		-0.905878, 0.340258, -0.252208,
		35.265125, 37.633171, 21.630974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522507, 36.824646, 21.649656>,  <35.899239, 37.394989, 21.807520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522507, 36.824646, 21.649656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336479, 37.106319, 21.435059>,  <35.224861, 37.275326, 21.306299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336479, 37.106319, 21.435059>,  <35.522507, 36.824646, 21.649656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336479, 37.106319, 21.435059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021474, -0.596871, -0.802050,
		-0.885013, -0.384530, 0.262466,
		-0.465071, 0.704189, -0.536496,
		35.196957, 37.317577, 21.274109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116058, 36.375221, 21.221292>,  <35.522507, 36.824646, 21.649656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116058, 36.375221, 21.221292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117889, 36.745209, 21.069290>,  <35.118988, 36.967201, 20.978088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117889, 36.745209, 21.069290>,  <35.116058, 36.375221, 21.221292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117889, 36.745209, 21.069290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085574, -0.378254, -0.921738,
		-0.996321, 0.036740, 0.077422,
		0.004580, 0.924972, -0.380007,
		35.119263, 37.022701, 20.955288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587482, 36.446892, 20.639183>,  <35.116058, 36.375221, 21.221292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587482, 36.446892, 20.639183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891392, 36.695980, 20.564400>,  <35.073738, 36.845432, 20.519529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891392, 36.695980, 20.564400>,  <34.587482, 36.446892, 20.639183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891392, 36.695980, 20.564400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045036, -0.337264, -0.940332,
		-0.648623, 0.706022, -0.284290,
		0.759776, 0.622725, -0.186961,
		35.119324, 36.882797, 20.508312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589954, 36.442467, 19.936634>,  <34.587482, 36.446892, 20.639183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589954, 36.442467, 19.936634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928577, 36.643417, 20.007011>,  <35.131752, 36.763988, 20.049238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928577, 36.643417, 20.007011>,  <34.589954, 36.442467, 19.936634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928577, 36.643417, 20.007011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167013, 0.063159, -0.983930,
		-0.505416, 0.862339, -0.030436,
		0.846558, 0.502377, 0.175943,
		35.182545, 36.794132, 20.059795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600620, 37.122196, 19.498541>,  <34.589954, 36.442467, 19.936634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600620, 37.122196, 19.498541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971657, 36.990894, 19.569906>,  <35.194279, 36.912113, 19.612726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971657, 36.990894, 19.569906>,  <34.600620, 37.122196, 19.498541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971657, 36.990894, 19.569906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286977, 0.320235, -0.902825,
		0.239221, 0.888650, 0.391247,
		0.927587, -0.328254, 0.178415,
		35.249931, 36.892418, 19.623430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042347, 37.684601, 19.174282>,  <34.600620, 37.122196, 19.498541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042347, 37.684601, 19.174282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309166, 37.387455, 19.196903>,  <35.469257, 37.209167, 19.210476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309166, 37.387455, 19.196903>,  <35.042347, 37.684601, 19.174282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309166, 37.387455, 19.196903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433290, 0.325074, -0.840587,
		0.606060, 0.585214, 0.538716,
		0.667046, -0.742867, 0.056553,
		35.509281, 37.164597, 19.213869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729881, 37.991215, 18.954576>,  <35.042347, 37.684601, 19.174282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729881, 37.991215, 18.954576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779438, 37.595512, 18.923546>,  <35.809174, 37.358089, 18.904928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779438, 37.595512, 18.923546>,  <35.729881, 37.991215, 18.954576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779438, 37.595512, 18.923546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548093, 0.133393, -0.825712,
		0.827191, 0.059780, 0.558732,
		0.123892, -0.989259, -0.077576,
		35.816605, 37.298737, 18.900272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362553, 37.884666, 18.610405>,  <35.729881, 37.991215, 18.954576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362553, 37.884666, 18.610405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186836, 37.528576, 18.562204>,  <36.081406, 37.314922, 18.533283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186836, 37.528576, 18.562204>,  <36.362553, 37.884666, 18.610405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186836, 37.528576, 18.562204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288114, -0.012563, -0.957514,
		0.850889, -0.455346, 0.262005,
		-0.439292, -0.890226, -0.120502,
		36.055050, 37.261509, 18.526054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849941, 37.509243, 18.170946>,  <36.362553, 37.884666, 18.610405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849941, 37.509243, 18.170946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499069, 37.322201, 18.127298>,  <36.288548, 37.209976, 18.101110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499069, 37.322201, 18.127298>,  <36.849941, 37.509243, 18.170946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499069, 37.322201, 18.127298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153902, -0.058533, -0.986351,
		0.454833, -0.881999, 0.123309,
		-0.877178, -0.467603, -0.109119,
		36.235916, 37.181919, 18.094563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994259, 36.988338, 17.773565>,  <36.849941, 37.509243, 18.170946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994259, 36.988338, 17.773565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598431, 37.030888, 17.734724>,  <36.360931, 37.056416, 17.711418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598431, 37.030888, 17.734724>,  <36.994259, 36.988338, 17.773565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598431, 37.030888, 17.734724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091336, -0.057829, -0.994140,
		-0.111368, -0.992643, 0.047510,
		-0.989573, 0.106376, -0.097104,
		36.301559, 37.062798, 17.705593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792229, 36.369465, 17.400782>,  <36.994259, 36.988338, 17.773565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792229, 36.369465, 17.400782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565754, 36.695370, 17.350830>,  <36.429871, 36.890915, 17.320860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565754, 36.695370, 17.350830>,  <36.792229, 36.369465, 17.400782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565754, 36.695370, 17.350830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078584, -0.097456, -0.992133,
		-0.820525, -0.571542, -0.008850,
		-0.566183, 0.814765, -0.124879,
		36.395901, 36.939800, 17.313366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389858, 36.242523, 17.022413>,  <36.792229, 36.369465, 17.400782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389858, 36.242523, 17.022413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752666, 36.144287, 17.159237>,  <37.970352, 36.085346, 17.241331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752666, 36.144287, 17.159237>,  <37.389858, 36.242523, 17.022413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752666, 36.144287, 17.159237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353002, -0.000581, 0.935622,
		-0.229580, -0.969374, -0.087220,
		0.907019, -0.245589, 0.342057,
		38.024773, 36.070610, 17.261854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304958, 35.870403, 17.651426>,  <37.389858, 36.242523, 17.022413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304958, 35.870403, 17.651426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681183, 36.006042, 17.643793>,  <37.906918, 36.087425, 17.639214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681183, 36.006042, 17.643793>,  <37.304958, 35.870403, 17.651426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681183, 36.006042, 17.643793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064401, 0.233237, 0.970285,
		0.333474, -0.911379, 0.241211,
		0.940557, 0.339099, -0.019084,
		37.963352, 36.107773, 17.638067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597382, 35.546356, 18.221256>,  <37.304958, 35.870403, 17.651426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597382, 35.546356, 18.221256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837910, 35.851280, 18.125507>,  <37.982227, 36.034233, 18.068058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837910, 35.851280, 18.125507>,  <37.597382, 35.546356, 18.221256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837910, 35.851280, 18.125507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125354, 0.205873, 0.970517,
		0.789113, -0.613598, 0.028237,
		0.601320, 0.762308, -0.239374,
		38.018307, 36.079971, 18.053696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186737, 35.431713, 18.650805>,  <37.597382, 35.546356, 18.221256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186737, 35.431713, 18.650805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171143, 35.817307, 18.545565>,  <38.161785, 36.048660, 18.482420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171143, 35.817307, 18.545565>,  <38.186737, 35.431713, 18.650805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171143, 35.817307, 18.545565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228867, 0.264916, 0.936717,
		0.972676, -0.023692, -0.230953,
		-0.038990, 0.963980, -0.263100,
		38.159447, 36.106499, 18.466635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865414, 35.801624, 18.827330>,  <38.186737, 35.431713, 18.650805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865414, 35.801624, 18.827330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617828, 36.112156, 18.779684>,  <38.469276, 36.298477, 18.751097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617828, 36.112156, 18.779684>,  <38.865414, 35.801624, 18.827330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617828, 36.112156, 18.779684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175431, 0.284480, 0.942494,
		0.765574, 0.562476, -0.312277,
		-0.618967, 0.776332, -0.119115,
		38.432137, 36.345055, 18.743950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220413, 36.398705, 19.249754>,  <38.865414, 35.801624, 18.827330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220413, 36.398705, 19.249754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839306, 36.492355, 19.172373>,  <38.610641, 36.548546, 19.125944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839306, 36.492355, 19.172373>,  <39.220413, 36.398705, 19.249754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839306, 36.492355, 19.172373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083159, 0.411526, 0.907596,
		0.292100, 0.880814, -0.372619,
		-0.952765, 0.234123, -0.193455,
		38.553474, 36.562592, 19.114336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180710, 37.116501, 19.431650>,  <39.220413, 36.398705, 19.249754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180710, 37.116501, 19.431650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819412, 36.944851, 19.431744>,  <38.602634, 36.841862, 19.431801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819412, 36.944851, 19.431744>,  <39.180710, 37.116501, 19.431650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819412, 36.944851, 19.431744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155652, 0.328132, 0.931720,
		-0.399905, 0.841533, -0.363178,
		-0.903243, -0.429129, 0.000235,
		38.548439, 36.816113, 19.431814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647610, 37.671638, 19.651505>,  <39.180710, 37.116501, 19.431650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647610, 37.671638, 19.651505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451851, 37.325546, 19.695097>,  <38.334396, 37.117893, 19.721252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451851, 37.325546, 19.695097>,  <38.647610, 37.671638, 19.651505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451851, 37.325546, 19.695097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258284, 0.263172, 0.929532,
		-0.832936, 0.426760, -0.352269,
		-0.489395, -0.865226, 0.108981,
		38.305031, 37.065979, 19.727791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011154, 37.867371, 19.975431>,  <38.647610, 37.671638, 19.651505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011154, 37.867371, 19.975431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049644, 37.472988, 20.030022>,  <38.072739, 37.236359, 20.062777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049644, 37.472988, 20.030022>,  <38.011154, 37.867371, 19.975431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049644, 37.472988, 20.030022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371302, 0.091658, 0.923977,
		-0.923513, -0.139582, -0.357269,
		0.096224, -0.985959, 0.136475,
		38.078510, 37.177200, 20.070965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336361, 37.569145, 20.372145>,  <38.011154, 37.867371, 19.975431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336361, 37.569145, 20.372145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656288, 37.340714, 20.446064>,  <37.848244, 37.203655, 20.490416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656288, 37.340714, 20.446064>,  <37.336361, 37.569145, 20.372145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656288, 37.340714, 20.446064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231195, -0.008984, 0.972866,
		-0.553928, -0.820843, -0.139217,
		0.799821, -0.571084, 0.184798,
		37.896233, 37.169388, 20.501503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077015, 36.965263, 20.758764>,  <37.336361, 37.569145, 20.372145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077015, 36.965263, 20.758764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466278, 36.960583, 20.850693>,  <37.699837, 36.957775, 20.905849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466278, 36.960583, 20.850693>,  <37.077015, 36.965263, 20.758764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466278, 36.960583, 20.850693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228140, -0.179823, 0.956878,
		0.030127, -0.983629, -0.177667,
		0.973162, -0.011705, 0.229823,
		37.758228, 36.957069, 20.919640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139324, 36.418045, 21.118441>,  <37.077015, 36.965263, 20.758764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139324, 36.418045, 21.118441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460735, 36.639507, 21.205908>,  <37.653580, 36.772385, 21.258389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460735, 36.639507, 21.205908>,  <37.139324, 36.418045, 21.118441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460735, 36.639507, 21.205908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143641, -0.176152, 0.973826,
		0.577679, -0.813905, -0.062015,
		0.803526, 0.553651, 0.218669,
		37.701794, 36.805603, 21.271509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386593, 36.020580, 21.649609>,  <37.139324, 36.418045, 21.118441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386593, 36.020580, 21.649609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560646, 36.380219, 21.668741>,  <37.665077, 36.596001, 21.680222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560646, 36.380219, 21.668741>,  <37.386593, 36.020580, 21.649609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560646, 36.380219, 21.668741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094961, -0.098657, 0.990580,
		0.895343, -0.426496, -0.128309,
		0.435137, 0.899093, 0.047832,
		37.691189, 36.649948, 21.683090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001804, 35.949356, 22.110149>,  <37.386593, 36.020580, 21.649609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001804, 35.949356, 22.110149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927673, 36.342331, 22.101530>,  <37.883194, 36.578117, 22.096359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927673, 36.342331, 22.101530>,  <38.001804, 35.949356, 22.110149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927673, 36.342331, 22.101530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223961, 0.063579, 0.972522,
		0.956815, 0.175411, -0.231811,
		-0.185329, 0.982440, -0.021549,
		37.872074, 36.637062, 22.095066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607079, 36.315273, 22.278660>,  <38.001804, 35.949356, 22.110149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607079, 36.315273, 22.278660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284710, 36.535301, 22.366213>,  <38.091290, 36.667316, 22.418745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284710, 36.535301, 22.366213>,  <38.607079, 36.315273, 22.278660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284710, 36.535301, 22.366213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347627, 0.140431, 0.927057,
		0.479207, 0.823228, -0.304395,
		-0.805926, 0.550068, 0.218881,
		38.042931, 36.700321, 22.431877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827229, 36.886742, 22.749779>,  <38.607079, 36.315273, 22.278660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827229, 36.886742, 22.749779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432442, 36.874287, 22.812920>,  <38.195568, 36.866814, 22.850805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432442, 36.874287, 22.812920>,  <38.827229, 36.886742, 22.749779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432442, 36.874287, 22.812920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143515, 0.273146, 0.951207,
		-0.072736, 0.961468, -0.265118,
		-0.986971, -0.031138, 0.157853,
		38.136349, 36.864944, 22.860275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719536, 37.429874, 23.125147>,  <38.827229, 36.886742, 22.749779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719536, 37.429874, 23.125147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386887, 37.222824, 23.205614>,  <38.187298, 37.098595, 23.253895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386887, 37.222824, 23.205614>,  <38.719536, 37.429874, 23.125147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386887, 37.222824, 23.205614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112981, 0.196970, 0.973878,
		-0.543727, 0.832627, -0.105323,
		-0.831623, -0.517624, 0.201169,
		38.137402, 37.067535, 23.265965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460972, 37.854816, 23.487455>,  <38.719536, 37.429874, 23.125147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460972, 37.854816, 23.487455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277252, 37.505058, 23.550047>,  <38.167023, 37.295204, 23.587603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277252, 37.505058, 23.550047>,  <38.460972, 37.854816, 23.487455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277252, 37.505058, 23.550047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034119, 0.193394, 0.980528,
		-0.887627, 0.445014, -0.118658,
		-0.459297, -0.874392, 0.156478,
		38.139462, 37.242741, 23.596991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036934, 37.997158, 23.994335>,  <38.460972, 37.854816, 23.487455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036934, 37.997158, 23.994335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024185, 37.598831, 24.028568>,  <38.016537, 37.359833, 24.049109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024185, 37.598831, 24.028568>,  <38.036934, 37.997158, 23.994335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024185, 37.598831, 24.028568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083056, 0.087968, 0.992655,
		-0.996035, 0.024526, -0.085512,
		-0.031868, -0.995821, 0.085582,
		38.014626, 37.300083, 24.054243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441574, 37.882511, 24.262018>,  <38.036934, 37.997158, 23.994335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441574, 37.882511, 24.262018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646336, 37.550404, 24.350210>,  <37.769192, 37.351139, 24.403126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646336, 37.550404, 24.350210>,  <37.441574, 37.882511, 24.262018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646336, 37.550404, 24.350210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067777, 0.216823, 0.973855,
		-0.856367, -0.513460, 0.054719,
		0.511900, -0.830269, 0.220481,
		37.799904, 37.301323, 24.416355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056896, 37.485878, 24.717478>,  <37.441574, 37.882511, 24.262018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056896, 37.485878, 24.717478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426563, 37.345650, 24.778160>,  <37.648365, 37.261513, 24.814569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426563, 37.345650, 24.778160>,  <37.056896, 37.485878, 24.717478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426563, 37.345650, 24.778160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105419, 0.147655, 0.983405,
		-0.367156, -0.924822, 0.099501,
		0.924166, -0.350574, 0.151706,
		37.703812, 37.240479, 24.823671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995148, 37.015694, 25.352589>,  <37.056896, 37.485878, 24.717478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995148, 37.015694, 25.352589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382942, 37.110195, 25.326439>,  <37.615620, 37.166897, 25.310749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382942, 37.110195, 25.326439>,  <36.995148, 37.015694, 25.352589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382942, 37.110195, 25.326439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010406, 0.226782, 0.973890,
		0.244923, -0.944854, 0.217403,
		0.969486, 0.236266, -0.065376,
		37.673790, 37.181068, 25.306828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264133, 36.875340, 26.050461>,  <36.995148, 37.015694, 25.352589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264133, 36.875340, 26.050461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574451, 37.083149, 25.907217>,  <37.760643, 37.207836, 25.821272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574451, 37.083149, 25.907217>,  <37.264133, 36.875340, 26.050461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574451, 37.083149, 25.907217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265704, 0.245794, 0.932195,
		0.572319, -0.818340, 0.052646,
		0.775792, 0.519524, -0.358109,
		37.807190, 37.239006, 25.799784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878399, 36.640945, 26.479265>,  <37.264133, 36.875340, 26.050461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878399, 36.640945, 26.479265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926826, 37.002087, 26.314240>,  <37.955883, 37.218769, 26.215225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926826, 37.002087, 26.314240>,  <37.878399, 36.640945, 26.479265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926826, 37.002087, 26.314240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243618, 0.375885, 0.894070,
		0.962286, -0.208748, -0.174443,
		0.121065, 0.902848, -0.412563,
		37.963146, 37.272942, 26.190470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489109, 36.858040, 26.712917>,  <37.878399, 36.640945, 26.479265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489109, 36.858040, 26.712917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266693, 37.177273, 26.620068>,  <38.133244, 37.368813, 26.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266693, 37.177273, 26.620068>,  <38.489109, 36.858040, 26.712917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266693, 37.177273, 26.620068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211037, 0.405693, 0.889313,
		0.803919, 0.445503, -0.394006,
		-0.556037, 0.798086, -0.232126,
		38.099884, 37.416698, 26.550430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834896, 37.372837, 27.056335>,  <38.489109, 36.858040, 26.712917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834896, 37.372837, 27.056335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494545, 37.560490, 26.961746>,  <38.290333, 37.673080, 26.904993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494545, 37.560490, 26.961746>,  <38.834896, 37.372837, 27.056335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494545, 37.560490, 26.961746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006531, 0.459520, 0.888143,
		0.525323, 0.754157, -0.394060,
		-0.850878, 0.469136, -0.236471,
		38.239281, 37.701229, 26.890804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911285, 38.233643, 26.985697>,  <38.834896, 37.372837, 27.056335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911285, 38.233643, 26.985697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540115, 38.117596, 27.079327>,  <38.317413, 38.047970, 27.135504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540115, 38.117596, 27.079327>,  <38.911285, 38.233643, 26.985697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540115, 38.117596, 27.079327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098305, 0.415256, 0.904377,
		-0.359573, 0.862204, -0.356806,
		-0.927924, -0.290114, 0.234074,
		38.261738, 38.030560, 27.149549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667194, 38.831120, 27.248943>,  <38.911285, 38.233643, 26.985697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667194, 38.831120, 27.248943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382332, 38.580452, 27.375507>,  <38.211414, 38.430050, 27.451447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382332, 38.580452, 27.375507>,  <38.667194, 38.831120, 27.248943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382332, 38.580452, 27.375507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009027, 0.458853, 0.888466,
		-0.701964, 0.629870, -0.332432,
		-0.712155, -0.626672, 0.316412,
		38.168686, 38.392448, 27.470430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177505, 39.277245, 27.635046>,  <38.667194, 38.831120, 27.248943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177505, 39.277245, 27.635046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124973, 38.900158, 27.757710>,  <38.093452, 38.673904, 27.831308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124973, 38.900158, 27.757710>,  <38.177505, 39.277245, 27.635046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124973, 38.900158, 27.757710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032508, 0.305077, 0.951773,
		-0.990805, 0.134967, -0.009420,
		-0.131332, -0.942715, 0.306659,
		38.085575, 38.617344, 27.849707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840851, 39.370087, 28.268179>,  <38.177505, 39.277245, 27.635046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840851, 39.370087, 28.268179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931530, 38.981365, 28.294123>,  <37.985939, 38.748131, 28.309689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931530, 38.981365, 28.294123>,  <37.840851, 39.370087, 28.268179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931530, 38.981365, 28.294123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059756, 0.080344, 0.994974,
		-0.972130, -0.221682, 0.076285,
		0.226697, -0.971803, 0.064859,
		37.999538, 38.689823, 28.313580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480896, 39.100910, 28.902590>,  <37.840851, 39.370087, 28.268179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480896, 39.100910, 28.902590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780300, 38.846066, 28.829025>,  <37.959942, 38.693161, 28.784887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780300, 38.846066, 28.829025>,  <37.480896, 39.100910, 28.902590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780300, 38.846066, 28.829025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290196, 0.065340, 0.954734,
		-0.596251, -0.768000, 0.233794,
		0.748512, -0.637108, -0.183912,
		38.004852, 38.654934, 28.773851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453415, 38.460110, 29.359713>,  <37.480896, 39.100910, 28.902590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453415, 38.460110, 29.359713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834011, 38.461582, 29.236645>,  <38.062366, 38.462467, 29.162804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834011, 38.461582, 29.236645>,  <37.453415, 38.460110, 29.359713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834011, 38.461582, 29.236645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300371, -0.227942, 0.926185,
		-0.066720, -0.973668, -0.217990,
		0.951486, 0.003682, -0.307670,
		38.119457, 38.462688, 29.144344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745068, 37.917633, 29.740257>,  <37.453415, 38.460110, 29.359713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745068, 37.917633, 29.740257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065105, 38.125916, 29.621119>,  <38.257130, 38.250885, 29.549635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065105, 38.125916, 29.621119>,  <37.745068, 37.917633, 29.740257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065105, 38.125916, 29.621119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405383, -0.103345, 0.908286,
		0.442171, -0.847456, -0.293772,
		0.800093, 0.520709, -0.297849,
		38.305134, 38.282127, 29.531763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407658, 37.462288, 29.866522>,  <37.745068, 37.917633, 29.740257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407658, 37.462288, 29.866522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516155, 37.847221, 29.859232>,  <38.581253, 38.078182, 29.854858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516155, 37.847221, 29.859232>,  <38.407658, 37.462288, 29.866522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516155, 37.847221, 29.859232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295648, -0.065282, 0.953064,
		0.915980, -0.263900, -0.302221,
		0.271243, 0.962338, -0.018225,
		38.597527, 38.135921, 29.853765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023899, 37.457127, 30.164383>,  <38.407658, 37.462288, 29.866522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023899, 37.457127, 30.164383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928902, 37.843845, 30.202108>,  <38.871902, 38.075878, 30.224745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928902, 37.843845, 30.202108>,  <39.023899, 37.457127, 30.164383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928902, 37.843845, 30.202108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495136, 0.036948, 0.868030,
		0.835727, 0.252847, -0.487472,
		-0.237490, 0.966801, 0.094315,
		38.857655, 38.133884, 30.230402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616783, 37.775719, 30.310730>,  <39.023899, 37.457127, 30.164383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616783, 37.775719, 30.310730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324856, 38.017326, 30.438812>,  <39.149700, 38.162292, 30.515661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324856, 38.017326, 30.438812>,  <39.616783, 37.775719, 30.310730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324856, 38.017326, 30.438812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491304, 0.137698, 0.860035,
		0.475386, 0.784983, -0.397251,
		-0.729814, 0.604020, 0.320206,
		39.105911, 38.198532, 30.534874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002781, 38.303413, 30.505487>,  <39.616783, 37.775719, 30.310730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002781, 38.303413, 30.505487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650494, 38.335629, 30.692184>,  <39.439121, 38.354958, 30.804203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650494, 38.335629, 30.692184>,  <40.002781, 38.303413, 30.505487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650494, 38.335629, 30.692184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470842, 0.041890, 0.881222,
		0.051418, 0.995871, -0.074813,
		-0.880718, 0.080536, 0.466744,
		39.386280, 38.359791, 30.832207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044567, 38.795547, 31.021746>,  <40.002781, 38.303413, 30.505487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044567, 38.795547, 31.021746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742481, 38.566544, 31.149418>,  <39.561230, 38.429142, 31.226021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742481, 38.566544, 31.149418>,  <40.044567, 38.795547, 31.021746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742481, 38.566544, 31.149418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486325, -0.162933, 0.858453,
		-0.439471, 0.803543, 0.401477,
		-0.755217, -0.572513, 0.319179,
		39.515915, 38.394791, 31.245173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866180, 39.055134, 31.659239>,  <40.044567, 38.795547, 31.021746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866180, 39.055134, 31.659239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746433, 38.673531, 31.653049>,  <39.674583, 38.444569, 31.649336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746433, 38.673531, 31.653049>,  <39.866180, 39.055134, 31.659239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746433, 38.673531, 31.653049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456204, -0.157364, 0.875851,
		-0.838007, 0.255143, 0.482334,
		-0.299369, -0.954012, -0.015475,
		39.656624, 38.387325, 31.648407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615803, 38.999882, 32.266376>,  <39.866180, 39.055134, 31.659239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615803, 38.999882, 32.266376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621933, 38.614937, 32.157837>,  <39.625610, 38.383972, 32.092712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621933, 38.614937, 32.157837>,  <39.615803, 38.999882, 32.266376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621933, 38.614937, 32.157837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202142, -0.262793, 0.943440,
		-0.979236, -0.069308, 0.190506,
		0.015324, -0.962360, -0.271346,
		39.626530, 38.326229, 32.076431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192181, 38.628643, 32.675724>,  <39.615803, 38.999882, 32.266376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192181, 38.628643, 32.675724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448048, 38.352718, 32.540089>,  <39.601570, 38.187164, 32.458706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448048, 38.352718, 32.540089>,  <39.192181, 38.628643, 32.675724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448048, 38.352718, 32.540089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131049, -0.336823, 0.932404,
		-0.757396, -0.640868, -0.125056,
		0.639670, -0.689811, -0.339093,
		39.639950, 38.145775, 32.438362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915462, 38.004543, 32.924229>,  <39.192181, 38.628643, 32.675724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915462, 38.004543, 32.924229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296879, 37.918549, 32.839817>,  <39.525730, 37.866951, 32.789169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296879, 37.918549, 32.839817>,  <38.915462, 38.004543, 32.924229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296879, 37.918549, 32.839817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114816, -0.388296, 0.914354,
		-0.278514, -0.896107, -0.345574,
		0.953545, -0.214983, -0.211033,
		39.582943, 37.854053, 32.776508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018883, 37.304531, 33.099888>,  <38.915462, 38.004543, 32.924229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018883, 37.304531, 33.099888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364166, 37.506470, 33.098747>,  <39.571335, 37.627632, 33.098064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364166, 37.506470, 33.098747>,  <39.018883, 37.304531, 33.099888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364166, 37.506470, 33.098747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269111, -0.455350, 0.848667,
		0.427148, -0.733340, -0.528920,
		0.863205, 0.504845, -0.002847,
		39.623127, 37.657925, 33.097893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671425, 36.881874, 33.202286>,  <39.018883, 37.304531, 33.099888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671425, 36.881874, 33.202286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730629, 37.249184, 33.349178>,  <39.766151, 37.469570, 33.437313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730629, 37.249184, 33.349178>,  <39.671425, 36.881874, 33.202286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730629, 37.249184, 33.349178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263637, -0.394521, 0.880255,
		0.953199, -0.033467, -0.300484,
		0.148007, 0.918277, 0.367234,
		39.775032, 37.524666, 33.459347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271778, 36.963692, 33.592384>,  <39.671425, 36.881874, 33.202286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271778, 36.963692, 33.592384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023121, 37.203762, 33.793720>,  <39.873928, 37.347805, 33.914520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023121, 37.203762, 33.793720>,  <40.271778, 36.963692, 33.592384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023121, 37.203762, 33.793720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199487, -0.500093, 0.842681,
		0.757474, 0.624254, 0.191151,
		-0.621641, 0.600177, 0.503339,
		39.836628, 37.383816, 33.944721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770863, 36.520912, 33.684086>,  <40.271778, 36.963692, 33.592384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770863, 36.520912, 33.684086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494923, 36.712795, 33.900970>,  <40.329361, 36.827923, 34.031101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494923, 36.712795, 33.900970>,  <40.770863, 36.520912, 33.684086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494923, 36.712795, 33.900970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378091, -0.877428, 0.295240,
		0.617382, -0.001336, 0.786662,
		-0.689845, 0.479706, 0.542214,
		40.287968, 36.856709, 34.063633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863972, 36.535767, 34.438690>,  <40.770863, 36.520912, 33.684086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863972, 36.535767, 34.438690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474953, 36.508888, 34.349567>,  <40.241543, 36.492760, 34.296093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474953, 36.508888, 34.349567>,  <40.863972, 36.535767, 34.438690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474953, 36.508888, 34.349567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019804, -0.930036, 0.366933,
		-0.231873, 0.361271, 0.903171,
		-0.972545, -0.067196, -0.222804,
		40.183189, 36.488731, 34.282726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571629, 36.329079, 34.999607>,  <40.863972, 36.535767, 34.438690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571629, 36.329079, 34.999607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290516, 36.205471, 34.743294>,  <40.121849, 36.131306, 34.589504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290516, 36.205471, 34.743294>,  <40.571629, 36.329079, 34.999607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290516, 36.205471, 34.743294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003136, -0.899375, 0.437168,
		-0.711402, 0.309241, 0.631092,
		-0.702779, -0.309023, -0.640787,
		40.079681, 36.112762, 34.551056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127907, 35.972912, 35.434204>,  <40.571629, 36.329079, 34.999607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127907, 35.972912, 35.434204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064365, 35.865108, 35.054283>,  <40.026241, 35.800426, 34.826328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064365, 35.865108, 35.054283>,  <40.127907, 35.972912, 35.434204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064365, 35.865108, 35.054283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059058, -0.962891, 0.263349,
		-0.985535, -0.014261, 0.168871,
		-0.158849, -0.269513, -0.949805,
		40.016712, 35.784256, 34.769341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574543, 36.331257, 36.029125>,  <40.127907, 35.972912, 35.434204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574543, 36.331257, 36.029125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791504, 36.502163, 36.318470>,  <40.921680, 36.604706, 36.492077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791504, 36.502163, 36.318470>,  <40.574543, 36.331257, 36.029125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791504, 36.502163, 36.318470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763913, -0.609150, -0.213010,
		0.349623, 0.668121, -0.656794,
		0.542403, 0.427261, 0.723359,
		40.954224, 36.630341, 36.535477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238934, 36.183704, 35.769840>,  <40.574543, 36.331257, 36.029125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238934, 36.183704, 35.769840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286205, 36.280689, 36.155014>,  <41.314568, 36.338882, 36.386120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286205, 36.280689, 36.155014>,  <41.238934, 36.183704, 35.769840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286205, 36.280689, 36.155014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870145, -0.492496, 0.017219,
		0.478417, 0.835858, -0.269181,
		0.118178, 0.242464, 0.962936,
		41.321659, 36.353428, 36.443893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850658, 36.561008, 35.869663>,  <41.238934, 36.183704, 35.769840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850658, 36.561008, 35.869663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737820, 36.346859, 36.188107>,  <41.670116, 36.218369, 36.379173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737820, 36.346859, 36.188107>,  <41.850658, 36.561008, 35.869663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737820, 36.346859, 36.188107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952179, -0.257751, 0.164069,
		0.117359, 0.804323, 0.582487,
		-0.282101, -0.535377, 0.796109,
		41.653191, 36.186245, 36.426941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860661, 36.879337, 36.619392>,  <41.850658, 36.561008, 35.869663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860661, 36.879337, 36.619392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980675, 37.255066, 36.552879>,  <42.052685, 37.480503, 36.512970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980675, 37.255066, 36.552879>,  <41.860661, 36.879337, 36.619392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980675, 37.255066, 36.552879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606017, -0.053068, 0.793680,
		0.736697, -0.338906, -0.585167,
		0.300037, 0.939322, -0.166287,
		42.070686, 37.536861, 36.502995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572147, 36.876251, 36.597755>,  <41.860661, 36.879337, 36.619392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572147, 36.876251, 36.597755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483131, 37.257507, 36.679733>,  <42.429722, 37.486259, 36.728920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483131, 37.257507, 36.679733>,  <42.572147, 36.876251, 36.597755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483131, 37.257507, 36.679733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575677, -0.041181, 0.816640,
		0.786811, 0.299717, -0.539535,
		-0.222543, 0.953139, 0.204942,
		42.416370, 37.543449, 36.741215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164635, 37.225086, 36.551197>,  <42.572147, 36.876251, 36.597755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164635, 37.225086, 36.551197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912273, 37.437565, 36.777397>,  <42.760857, 37.565052, 36.913116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912273, 37.437565, 36.777397>,  <43.164635, 37.225086, 36.551197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912273, 37.437565, 36.777397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679266, 0.025965, 0.733433,
		0.374911, 0.846853, -0.377203,
		-0.630904, 0.531193, 0.565504,
		42.723003, 37.596924, 36.947048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563038, 37.573658, 37.059650>,  <43.164635, 37.225086, 36.551197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563038, 37.573658, 37.059650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208336, 37.623032, 37.237831>,  <42.995514, 37.652657, 37.344738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208336, 37.623032, 37.237831>,  <43.563038, 37.573658, 37.059650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208336, 37.623032, 37.237831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461551, 0.288926, 0.838744,
		-0.025171, 0.949360, -0.313179,
		-0.886756, 0.123437, 0.445451,
		42.942310, 37.660061, 37.371468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573814, 38.216866, 37.522446>,  <43.563038, 37.573658, 37.059650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573814, 38.216866, 37.522446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268944, 37.989571, 37.646503>,  <43.086021, 37.853191, 37.720940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268944, 37.989571, 37.646503>,  <43.573814, 38.216866, 37.522446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268944, 37.989571, 37.646503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291284, 0.126824, 0.948193,
		-0.578135, 0.813030, 0.068857,
		-0.762177, -0.568240, 0.310144,
		43.040291, 37.819099, 37.739548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148556, 38.658783, 38.090626>,  <43.573814, 38.216866, 37.522446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148556, 38.658783, 38.090626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997501, 38.299641, 38.181179>,  <42.906868, 38.084156, 38.235512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997501, 38.299641, 38.181179>,  <43.148556, 38.658783, 38.090626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997501, 38.299641, 38.181179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082769, 0.210777, 0.974024,
		-0.922246, 0.386568, -0.005284,
		-0.377640, -0.897852, 0.226384,
		42.884209, 38.030285, 38.249096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574474, 38.668667, 38.645851>,  <43.148556, 38.658783, 38.090626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574474, 38.668667, 38.645851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740826, 38.305347, 38.663918>,  <42.840637, 38.087357, 38.674759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740826, 38.305347, 38.663918>,  <42.574474, 38.668667, 38.645851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740826, 38.305347, 38.663918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077006, 0.084656, 0.993430,
		-0.906156, -0.409664, 0.105151,
		0.415875, -0.908300, 0.045165,
		42.865589, 38.032856, 38.677467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141537, 38.266102, 38.966854>,  <42.574474, 38.668667, 38.645851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141537, 38.266102, 38.966854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502762, 38.097050, 38.997482>,  <42.719498, 37.995617, 39.015862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502762, 38.097050, 38.997482>,  <42.141537, 38.266102, 38.966854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502762, 38.097050, 38.997482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011631, 0.202276, 0.979260,
		-0.429354, -0.883441, 0.187583,
		0.903062, -0.422631, 0.076572,
		42.773682, 37.970261, 39.020454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238331, 37.819347, 39.620468>,  <42.141537, 38.266102, 38.966854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238331, 37.819347, 39.620468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595177, 37.953957, 39.499878>,  <42.809284, 38.034721, 39.427525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595177, 37.953957, 39.499878>,  <42.238331, 37.819347, 39.620468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595177, 37.953957, 39.499878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169701, 0.368834, 0.913872,
		0.418738, -0.866436, 0.271931,
		0.892109, 0.336526, -0.301480,
		42.862812, 38.054913, 39.409435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689919, 37.681171, 40.185982>,  <42.238331, 37.819347, 39.620468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689919, 37.681171, 40.185982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811172, 38.005585, 39.985851>,  <42.883926, 38.200233, 39.865772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811172, 38.005585, 39.985851>,  <42.689919, 37.681171, 40.185982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811172, 38.005585, 39.985851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247397, 0.440054, 0.863219,
		0.920274, -0.385452, -0.067252,
		0.303135, 0.811036, -0.500330,
		42.902115, 38.248894, 39.835751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288658, 37.860577, 40.552006>,  <42.689919, 37.681171, 40.185982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288658, 37.860577, 40.552006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347000, 37.487793, 40.419231>,  <43.382004, 37.264122, 40.339569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347000, 37.487793, 40.419231>,  <43.288658, 37.860577, 40.552006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347000, 37.487793, 40.419231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161933, 0.308506, -0.937338,
		0.975963, 0.190465, -0.105918,
		0.145853, -0.931959, -0.331933,
		43.390755, 37.208206, 40.319653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626205, 38.039322, 39.874477>,  <43.288658, 37.860577, 40.552006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626205, 38.039322, 39.874477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482227, 37.666218, 39.882507>,  <43.395840, 37.442356, 39.887325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482227, 37.666218, 39.882507>,  <43.626205, 38.039322, 39.874477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482227, 37.666218, 39.882507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326195, 0.105655, -0.939379,
		0.874092, -0.344672, -0.342291,
		-0.359943, -0.932758, 0.020078,
		43.374245, 37.386391, 39.888531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861012, 37.800209, 39.283672>,  <43.626205, 38.039322, 39.874477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861012, 37.800209, 39.283672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527523, 37.594154, 39.363216>,  <43.327431, 37.470520, 39.410942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527523, 37.594154, 39.363216>,  <43.861012, 37.800209, 39.283672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527523, 37.594154, 39.363216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303377, 0.126407, -0.944449,
		0.461387, -0.847733, -0.261670,
		-0.833717, -0.515141, 0.198860,
		43.277409, 37.439613, 39.422874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723007, 37.365524, 38.813019>,  <43.861012, 37.800209, 39.283672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723007, 37.365524, 38.813019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349911, 37.448261, 38.931141>,  <43.126053, 37.497906, 39.002014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349911, 37.448261, 38.931141>,  <43.723007, 37.365524, 38.813019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349911, 37.448261, 38.931141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325564, -0.131271, -0.936363,
		-0.154917, -0.969527, 0.189783,
		-0.932742, 0.206845, 0.295307,
		43.070087, 37.510315, 39.019733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314793, 36.842651, 38.547890>,  <43.723007, 37.365524, 38.813019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314793, 36.842651, 38.547890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107616, 37.174114, 38.632801>,  <42.983311, 37.372993, 38.683750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107616, 37.174114, 38.632801>,  <43.314793, 36.842651, 38.547890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107616, 37.174114, 38.632801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431164, -0.038562, -0.901450,
		-0.738809, -0.558422, 0.377260,
		-0.517937, 0.828660, 0.212282,
		42.952236, 37.422710, 38.696487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627441, 36.783905, 38.373787>,  <43.314793, 36.842651, 38.547890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627441, 36.783905, 38.373787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703712, 37.176022, 38.353149>,  <42.749477, 37.411293, 38.340767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703712, 37.176022, 38.353149>,  <42.627441, 36.783905, 38.373787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703712, 37.176022, 38.353149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387958, 0.026974, -0.921282,
		-0.901737, 0.195687, 0.385457,
		0.190681, 0.980295, -0.051595,
		42.760918, 37.470112, 38.337669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075237, 37.116901, 38.237095>,  <42.627441, 36.783905, 38.373787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075237, 37.116901, 38.237095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377705, 37.329407, 38.084270>,  <42.559185, 37.456909, 37.992577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377705, 37.329407, 38.084270>,  <42.075237, 37.116901, 38.237095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377705, 37.329407, 38.084270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534858, 0.165384, -0.828598,
		-0.377017, 0.830907, 0.409208,
		0.756165, 0.531264, -0.382065,
		42.604553, 37.488785, 37.969650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779076, 37.621086, 37.906292>,  <42.075237, 37.116901, 38.237095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779076, 37.621086, 37.906292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138420, 37.629208, 37.730782>,  <42.354027, 37.634083, 37.625473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138420, 37.629208, 37.730782>,  <41.779076, 37.621086, 37.906292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138420, 37.629208, 37.730782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417300, 0.351293, -0.838125,
		0.137120, 0.936045, 0.324064,
		0.898365, 0.020308, -0.438781,
		42.407928, 37.635300, 37.599148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856644, 38.345085, 37.567066>,  <41.779076, 37.621086, 37.906292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856644, 38.345085, 37.567066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116032, 38.098972, 37.387775>,  <42.271664, 37.951305, 37.280201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116032, 38.098972, 37.387775>,  <41.856644, 38.345085, 37.567066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116032, 38.098972, 37.387775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328818, 0.304650, -0.893905,
		0.686558, 0.727059, -0.004759,
		0.648472, -0.615283, -0.448231,
		42.310574, 37.914387, 37.253307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244743, 38.895851, 37.703274>,  <41.856644, 38.345085, 37.567066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244743, 38.895851, 37.703274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406082, 38.959538, 37.342838>,  <42.502888, 38.997749, 37.126579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406082, 38.959538, 37.342838>,  <42.244743, 38.895851, 37.703274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406082, 38.959538, 37.342838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754760, 0.498863, 0.425997,
		0.517346, -0.851930, 0.081042,
		0.403349, 0.159221, -0.901087,
		42.527088, 39.007301, 37.072514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961571, 38.732471, 36.961670>,  <42.244743, 38.895851, 37.703274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961571, 38.732471, 36.961670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098888, 38.363625, 36.890282>,  <42.181278, 38.142315, 36.847450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098888, 38.363625, 36.890282>,  <41.961571, 38.732471, 36.961670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098888, 38.363625, 36.890282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392034, 0.031992, -0.919394,
		0.853499, 0.385585, -0.350519,
		0.343291, -0.922117, -0.178468,
		42.201874, 38.086990, 36.836742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518227, 38.704380, 36.442497>,  <41.961571, 38.732471, 36.961670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518227, 38.704380, 36.442497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332329, 38.350239, 36.447525>,  <42.220791, 38.137753, 36.450542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332329, 38.350239, 36.447525>,  <42.518227, 38.704380, 36.442497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332329, 38.350239, 36.447525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491962, 0.246394, -0.835023,
		0.736195, -0.394257, -0.550071,
		-0.464748, -0.885354, 0.012565,
		42.192905, 38.084633, 36.451294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594719, 38.339272, 35.762466>,  <42.518227, 38.704380, 36.442497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594719, 38.339272, 35.762466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264072, 38.198341, 35.937996>,  <42.065685, 38.113781, 36.043316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264072, 38.198341, 35.937996>,  <42.594719, 38.339272, 35.762466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264072, 38.198341, 35.937996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514178, 0.155879, -0.843400,
		0.228749, -0.922804, -0.310011,
		-0.826617, -0.352328, 0.438828,
		42.016087, 38.092644, 36.069645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119492, 38.172874, 35.204212>,  <42.594719, 38.339272, 35.762466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119492, 38.172874, 35.204212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858891, 38.174465, 35.507668>,  <41.702530, 38.175419, 35.689739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858891, 38.174465, 35.507668>,  <42.119492, 38.172874, 35.204212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858891, 38.174465, 35.507668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745653, 0.180927, -0.641301,
		-0.139808, -0.983489, -0.114909,
		-0.651502, 0.003977, 0.758636,
		41.663441, 38.175659, 35.735260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614517, 37.680374, 35.147408>,  <42.119492, 38.172874, 35.204212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614517, 37.680374, 35.147408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422832, 37.965633, 35.352066>,  <41.307819, 38.136787, 35.474861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422832, 37.965633, 35.352066>,  <41.614517, 37.680374, 35.147408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422832, 37.965633, 35.352066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691921, 0.051693, -0.720121,
		-0.539999, -0.699108, 0.468667,
		-0.479215, 0.713145, 0.511642,
		41.279068, 38.179577, 35.505558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941837, 37.378258, 35.336918>,  <41.614517, 37.680374, 35.147408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941837, 37.378258, 35.336918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974758, 37.774628, 35.294411>,  <40.994511, 38.012451, 35.268906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974758, 37.774628, 35.294411>,  <40.941837, 37.378258, 35.336918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974758, 37.774628, 35.294411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691297, -0.020043, -0.722292,
		-0.717868, 0.132912, 0.683374,
		0.082305, 0.990925, -0.106270,
		40.999451, 38.071907, 35.262531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264595, 37.803658, 35.524857>,  <40.941837, 37.378258, 35.336918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264595, 37.803658, 35.524857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514366, 37.915726, 35.233215>,  <40.664227, 37.982967, 35.058231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514366, 37.915726, 35.233215>,  <40.264595, 37.803658, 35.524857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514366, 37.915726, 35.233215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770219, 0.065704, -0.634386,
		-0.129834, 0.957698, 0.256823,
		0.624425, 0.280174, -0.729106,
		40.701694, 37.999779, 35.014484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913136, 37.718620, 35.020035>,  <40.264595, 37.803658, 35.524857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913136, 37.718620, 35.020035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214191, 37.905666, 34.834621>,  <40.394825, 38.017895, 34.723373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214191, 37.905666, 34.834621>,  <39.913136, 37.718620, 35.020035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214191, 37.905666, 34.834621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403889, -0.228105, -0.885913,
		-0.520000, 0.853993, 0.017182,
		0.752645, 0.467615, -0.463533,
		40.439983, 38.045952, 34.695560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728256, 37.829102, 34.364822>,  <39.913136, 37.718620, 35.020035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728256, 37.829102, 34.364822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119965, 37.886868, 34.308006>,  <40.354988, 37.921528, 34.273918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119965, 37.886868, 34.308006>,  <39.728256, 37.829102, 34.364822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119965, 37.886868, 34.308006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129928, -0.090132, -0.987418,
		-0.155405, 0.985403, -0.069500,
		0.979269, 0.144419, -0.142038,
		40.413746, 37.930195, 34.265396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789864, 38.387108, 33.911873>,  <39.728256, 37.829102, 34.364822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789864, 38.387108, 33.911873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074100, 38.106136, 33.895565>,  <40.244640, 37.937553, 33.885780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074100, 38.106136, 33.895565>,  <39.789864, 38.387108, 33.911873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074100, 38.106136, 33.895565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166513, -0.111579, -0.979706,
		0.683620, 0.702958, -0.196250,
		0.710590, -0.702424, -0.040774,
		40.287277, 37.895409, 33.883331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446220, 38.633667, 33.416290>,  <39.789864, 38.387108, 33.911873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446220, 38.633667, 33.416290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336205, 38.250893, 33.453438>,  <40.270195, 38.021229, 33.475727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336205, 38.250893, 33.453438>,  <40.446220, 38.633667, 33.416290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336205, 38.250893, 33.453438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239728, -0.025283, -0.970511,
		0.931064, -0.289197, -0.222450,
		-0.275044, -0.956935, 0.092869,
		40.253693, 37.963814, 33.481297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717674, 38.307854, 32.910736>,  <40.446220, 38.633667, 33.416290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717674, 38.307854, 32.910736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405235, 38.070049, 32.987087>,  <40.217770, 37.927364, 33.032898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405235, 38.070049, 32.987087>,  <40.717674, 38.307854, 32.910736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405235, 38.070049, 32.987087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132790, -0.140535, -0.981130,
		0.610122, -0.791708, 0.030826,
		-0.781101, -0.594516, 0.190874,
		40.170906, 37.891693, 33.044350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827599, 37.682980, 32.482628>,  <40.717674, 38.307854, 32.910736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827599, 37.682980, 32.482628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445084, 37.744511, 32.582100>,  <40.215572, 37.781429, 32.641785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445084, 37.744511, 32.582100>,  <40.827599, 37.682980, 32.482628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445084, 37.744511, 32.582100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258108, -0.044355, -0.965097,
		-0.137435, -0.987101, 0.082123,
		-0.956290, 0.153835, 0.248683,
		40.158195, 37.790661, 32.656704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472263, 37.296444, 31.968348>,  <40.827599, 37.682980, 32.482628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472263, 37.296444, 31.968348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217773, 37.569695, 32.111763>,  <40.065079, 37.733646, 32.197811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217773, 37.569695, 32.111763>,  <40.472263, 37.296444, 31.968348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217773, 37.569695, 32.111763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397009, 0.108580, -0.911369,
		-0.661512, -0.722182, 0.202126,
		-0.636228, 0.683128, 0.358540,
		40.026905, 37.774632, 32.219326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014591, 36.927517, 32.477173>,  <40.472263, 37.296444, 31.968348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014591, 36.927517, 32.477173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129822, 36.544720, 32.490887>,  <41.198959, 36.315041, 32.499115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129822, 36.544720, 32.490887>,  <41.014591, 36.927517, 32.477173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129822, 36.544720, 32.490887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729108, -0.195983, 0.655738,
		-0.620818, -0.213899, -0.754210,
		0.288074, -0.956994, 0.034286,
		41.216244, 36.257622, 32.501171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461216, 36.382710, 32.407734>,  <41.014591, 36.927517, 32.477173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461216, 36.382710, 32.407734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761063, 36.226093, 32.621193>,  <40.940971, 36.132126, 32.749268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761063, 36.226093, 32.621193>,  <40.461216, 36.382710, 32.407734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761063, 36.226093, 32.621193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643637, -0.243245, 0.725647,
		-0.154312, -0.887429, -0.434349,
		0.749613, -0.391539, 0.533646,
		40.985947, 36.108631, 32.781288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385872, 35.649250, 32.626255>,  <40.461216, 36.382710, 32.407734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385872, 35.649250, 32.626255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580124, 35.852810, 32.910561>,  <40.696674, 35.974945, 33.081142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580124, 35.852810, 32.910561>,  <40.385872, 35.649250, 32.626255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580124, 35.852810, 32.910561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644766, -0.340509, 0.684346,
		0.590284, -0.790616, 0.162759,
		0.485635, 0.508901, 0.710760,
		40.725815, 36.005482, 33.123787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068630, 35.520462, 32.860397>,  <40.385872, 35.649250, 32.626255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068630, 35.520462, 32.860397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300747, 35.306885, 33.106377>,  <41.440018, 35.178738, 33.253963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300747, 35.306885, 33.106377>,  <41.068630, 35.520462, 32.860397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300747, 35.306885, 33.106377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204391, -0.826401, -0.524676,
		0.788342, 0.178776, -0.588689,
		0.580293, -0.533947, 0.614947,
		41.474834, 35.146702, 33.290859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636494, 35.199631, 32.567566>,  <41.068630, 35.520462, 32.860397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636494, 35.199631, 32.567566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517185, 34.970398, 32.872883>,  <41.445599, 34.832859, 33.056072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517185, 34.970398, 32.872883>,  <41.636494, 35.199631, 32.567566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517185, 34.970398, 32.872883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176538, -0.752774, -0.634165,
		0.938013, -0.323904, 0.123362,
		-0.298272, -0.573077, 0.763293,
		41.427704, 34.798473, 33.101871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159840, 34.630356, 32.767555>,  <41.636494, 35.199631, 32.567566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159840, 34.630356, 32.767555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761086, 34.599609, 32.760422>,  <41.521835, 34.581161, 32.756142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761086, 34.599609, 32.760422>,  <42.159840, 34.630356, 32.767555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761086, 34.599609, 32.760422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058291, -0.565087, -0.822970,
		0.053183, -0.821443, 0.567806,
		-0.996882, -0.076866, -0.017830,
		41.462021, 34.576550, 32.755074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047035, 33.921947, 32.664528>,  <42.159840, 34.630356, 32.767555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047035, 33.921947, 32.664528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698696, 34.075699, 32.541973>,  <41.489693, 34.167950, 32.468441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698696, 34.075699, 32.541973>,  <42.047035, 33.921947, 32.664528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698696, 34.075699, 32.541973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060849, -0.534212, -0.843157,
		-0.487770, -0.752906, 0.441829,
		-0.870849, 0.384382, -0.306386,
		41.437443, 34.191013, 32.450058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056122, 33.844612, 33.409046>,  <42.047035, 33.921947, 32.664528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056122, 33.844612, 33.409046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994698, 34.238762, 33.438583>,  <41.957844, 34.475254, 33.456306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994698, 34.238762, 33.438583>,  <42.056122, 33.844612, 33.409046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994698, 34.238762, 33.438583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964134, -0.165783, 0.207271,
		0.216481, -0.039363, 0.975493,
		-0.153561, 0.985376, 0.073840,
		41.948627, 34.534374, 33.460735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620029, 34.222500, 33.228054>,  <42.056122, 33.844612, 33.409046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620029, 34.222500, 33.228054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779964, 34.427990, 33.531689>,  <42.875927, 34.551285, 33.713871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779964, 34.427990, 33.531689>,  <42.620029, 34.222500, 33.228054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779964, 34.427990, 33.531689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145903, -0.853285, 0.500617,
		0.904898, -0.089413, -0.416131,
		0.399840, 0.513722, 0.759090,
		42.899918, 34.582108, 33.759415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418575, 34.103825, 33.272221>,  <42.620029, 34.222500, 33.228054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418575, 34.103825, 33.272221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220791, 34.195110, 33.607700>,  <43.102119, 34.249882, 33.808990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220791, 34.195110, 33.607700>,  <43.418575, 34.103825, 33.272221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220791, 34.195110, 33.607700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343133, -0.835292, 0.429588,
		0.798601, 0.500203, 0.334713,
		-0.494465, 0.228219, 0.838702,
		43.072453, 34.263577, 33.859310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822662, 34.155376, 33.955788>,  <43.418575, 34.103825, 33.272221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822662, 34.155376, 33.955788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448940, 34.015465, 33.983273>,  <43.224705, 33.931519, 33.999763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448940, 34.015465, 33.983273>,  <43.822662, 34.155376, 33.955788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448940, 34.015465, 33.983273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355642, -0.901597, 0.246258,
		-0.024187, 0.254517, 0.966766,
		-0.934309, -0.349778, 0.068710,
		43.168648, 33.910530, 34.003887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339066, 33.640991, 33.776806>,  <43.822662, 34.155376, 33.955788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339066, 33.640991, 33.776806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519489, 33.766747, 33.442692>,  <44.627743, 33.842201, 33.242222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519489, 33.766747, 33.442692>,  <44.339066, 33.640991, 33.776806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519489, 33.766747, 33.442692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548275, 0.640870, 0.537291,
		0.704229, -0.700317, 0.116698,
		0.451062, 0.314393, -0.835285,
		44.654808, 33.861065, 33.192108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007217, 33.585579, 34.071926>,  <44.339066, 33.640991, 33.776806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007217, 33.585579, 34.071926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978348, 33.820282, 33.749310>,  <44.961025, 33.961105, 33.555740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978348, 33.820282, 33.749310>,  <45.007217, 33.585579, 34.071926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978348, 33.820282, 33.749310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672068, 0.626114, 0.395356,
		0.736964, -0.513515, -0.439530,
		-0.072175, 0.586757, -0.806540,
		44.956696, 33.996307, 33.507347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931206, 34.355095, 34.167660>,  <45.007217, 33.585579, 34.071926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931206, 34.355095, 34.167660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065075, 34.110641, 34.454575>,  <45.145397, 33.963970, 34.626724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065075, 34.110641, 34.454575>,  <44.931206, 34.355095, 34.167660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065075, 34.110641, 34.454575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193462, -0.789531, -0.582420,
		0.922262, 0.056151, -0.382465,
		0.334672, -0.611136, 0.717291,
		45.165478, 33.927299, 34.669762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569904, 34.316334, 34.504360>,  <44.931206, 34.355095, 34.167660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569904, 34.316334, 34.504360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604130, 34.069027, 34.816879>,  <45.624664, 33.920643, 35.004391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604130, 34.069027, 34.816879>,  <45.569904, 34.316334, 34.504360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604130, 34.069027, 34.816879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757733, 0.549555, 0.351896,
		-0.646931, 0.561905, 0.515503,
		0.085565, -0.618266, 0.781298,
		45.629799, 33.883549, 35.051270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549694, 34.623394, 35.206123>,  <45.569904, 34.316334, 34.504360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549694, 34.623394, 35.206123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777290, 34.296375, 35.170650>,  <45.913849, 34.100163, 35.149364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777290, 34.296375, 35.170650>,  <45.549694, 34.623394, 35.206123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777290, 34.296375, 35.170650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813343, 0.543566, 0.207386,
		-0.121343, -0.190132, 0.974231,
		0.568989, -0.817549, -0.088685,
		45.947987, 34.051109, 35.144047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037548, 34.651939, 35.783279>,  <45.549694, 34.623394, 35.206123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037548, 34.651939, 35.783279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207336, 34.430416, 35.496750>,  <46.309208, 34.297504, 35.324833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207336, 34.430416, 35.496750>,  <46.037548, 34.651939, 35.783279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207336, 34.430416, 35.496750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850239, 0.515809, 0.105043,
		0.311315, -0.653638, 0.689812,
		0.424471, -0.553804, -0.716327,
		46.334679, 34.264275, 35.281853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709843, 34.508923, 35.867023>,  <46.037548, 34.651939, 35.783279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709843, 34.508923, 35.867023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647949, 34.506691, 35.471848>,  <46.610813, 34.505352, 35.234741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.647949, 34.506691, 35.471848>,  <46.709843, 34.508923, 35.867023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647949, 34.506691, 35.471848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747743, 0.652907, -0.120802,
		0.645707, -0.757418, -0.096855,
		-0.154735, -0.005580, -0.987940,
		46.601528, 34.505016, 35.175465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330017, 34.259750, 35.311481>,  <46.709843, 34.508923, 35.867023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330017, 34.259750, 35.311481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095684, 34.556396, 35.180756>,  <46.955086, 34.734383, 35.102318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095684, 34.556396, 35.180756>,  <47.330017, 34.259750, 35.311481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.095684, 34.556396, 35.180756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755511, 0.645681, 0.110899,
		0.293264, -0.181946, -0.938559,
		-0.585832, 0.741614, -0.326818,
		46.919933, 34.778881, 35.082710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.531578, 34.508244, 34.588531>,  <47.330017, 34.259750, 35.311481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.531578, 34.508244, 34.588531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348183, 34.773731, 34.824924>,  <47.238144, 34.933025, 34.966759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348183, 34.773731, 34.824924>,  <47.531578, 34.508244, 34.588531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348183, 34.773731, 34.824924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876462, 0.447678, 0.177196,
		-0.146963, 0.599218, -0.786981,
		-0.458493, 0.663718, 0.590984,
		47.210636, 34.972847, 35.002220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.875320, 35.107189, 34.390141>,  <47.531578, 34.508244, 34.588531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.875320, 35.107189, 34.390141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.713749, 35.127995, 34.755466>,  <47.616806, 35.140476, 34.974663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.713749, 35.127995, 34.755466>,  <47.875320, 35.107189, 34.390141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.713749, 35.127995, 34.755466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854468, 0.377992, 0.356379,
		-0.326688, 0.924347, -0.197125,
		-0.403930, 0.052013, 0.913310,
		47.592571, 35.143597, 35.029461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.430843, 33.206333, 24.662455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032108, 33.183525, 24.640345>,  <35.792866, 33.169842, 24.627079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032108, 33.183525, 24.640345>,  <36.430843, 33.206333, 24.662455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032108, 33.183525, 24.640345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067031, 0.230931, 0.970658,
		-0.042581, 0.971298, -0.234024,
		-0.996842, -0.057018, -0.055274,
		35.733055, 33.166420, 24.623762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126266, 33.745461, 25.109606>,  <36.430843, 33.206333, 24.662455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126266, 33.745461, 25.109606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.836296, 33.470234, 25.096601>,  <35.662315, 33.305099, 25.088799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.836296, 33.470234, 25.096601>,  <36.126266, 33.745461, 25.109606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836296, 33.470234, 25.096601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196183, 0.160991, 0.967261,
		-0.660302, 0.707568, -0.251692,
		-0.724923, -0.688062, -0.032510,
		35.618820, 33.263817, 25.086849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468739, 34.086792, 25.330879>,  <36.126266, 33.745461, 25.109606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468739, 34.086792, 25.330879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397633, 33.700520, 25.406633>,  <35.354969, 33.468758, 25.452085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397633, 33.700520, 25.406633>,  <35.468739, 34.086792, 25.330879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397633, 33.700520, 25.406633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096360, 0.208609, 0.973241,
		-0.979344, 0.154759, -0.130136,
		-0.177766, -0.965677, 0.189388,
		35.344303, 33.410816, 25.463449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927242, 34.127033, 25.777695>,  <35.468739, 34.086792, 25.330879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927242, 34.127033, 25.777695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.070747, 33.756760, 25.825691>,  <35.156853, 33.534595, 25.854488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.070747, 33.756760, 25.825691>,  <34.927242, 34.127033, 25.777695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070747, 33.756760, 25.825691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071764, 0.155522, 0.985222,
		-0.930664, -0.344854, 0.122227,
		0.358767, -0.925683, 0.119991,
		35.178379, 33.479053, 25.861689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409470, 33.700214, 26.334713>,  <34.927242, 34.127033, 25.777695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409470, 33.700214, 26.334713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.756748, 33.501797, 26.339993>,  <34.965115, 33.382748, 26.343161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.756748, 33.501797, 26.339993>,  <34.409470, 33.700214, 26.334713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756748, 33.501797, 26.339993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019667, -0.007822, 0.999776,
		-0.495826, -0.868264, -0.016547,
		0.868199, -0.496041, 0.013198,
		35.017208, 33.352985, 26.343952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255833, 33.136997, 26.851408>,  <34.409470, 33.700214, 26.334713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255833, 33.136997, 26.851408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647339, 33.199093, 26.797873>,  <34.882244, 33.236351, 26.765751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647339, 33.199093, 26.797873>,  <34.255833, 33.136997, 26.851408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647339, 33.199093, 26.797873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114636, 0.126702, 0.985294,
		0.169917, -0.979717, 0.106216,
		0.978768, 0.155242, -0.133840,
		34.940968, 33.245663, 26.757721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591618, 32.694904, 27.365908>,  <34.255833, 33.136997, 26.851408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591618, 32.694904, 27.365908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847183, 32.982162, 27.255587>,  <35.000523, 33.154518, 27.189394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.847183, 32.982162, 27.255587>,  <34.591618, 32.694904, 27.365908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847183, 32.982162, 27.255587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125270, 0.256613, 0.958362,
		0.759014, -0.646856, 0.073991,
		0.638909, 0.718141, -0.275805,
		35.038857, 33.197605, 27.172846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120312, 32.759613, 27.961445>,  <34.591618, 32.694904, 27.365908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120312, 32.759613, 27.961445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.122288, 33.102921, 27.756170>,  <35.123474, 33.308903, 27.633005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.122288, 33.102921, 27.756170>,  <35.120312, 32.759613, 27.961445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122288, 33.102921, 27.756170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244329, 0.496601, 0.832881,
		0.969680, -0.129499, -0.207247,
		0.004938, 0.858264, -0.513184,
		35.123768, 33.360401, 27.602215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668251, 33.166431, 28.245506>,  <35.120312, 32.759613, 27.961445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668251, 33.166431, 28.245506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442539, 33.437778, 28.057289>,  <35.307114, 33.600586, 27.944359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442539, 33.437778, 28.057289>,  <35.668251, 33.166431, 28.245506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442539, 33.437778, 28.057289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214662, 0.670907, 0.709792,
		0.797189, 0.299512, -0.524197,
		-0.564279, 0.678363, -0.470545,
		35.273254, 33.641289, 27.916126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016796, 33.794342, 28.282778>,  <35.668251, 33.166431, 28.245506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016796, 33.794342, 28.282778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632313, 33.895370, 28.238430>,  <35.401623, 33.955986, 28.211821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632313, 33.895370, 28.238430>,  <36.016796, 33.794342, 28.282778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632313, 33.895370, 28.238430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087735, 0.661026, 0.745216,
		0.261506, 0.706579, -0.657541,
		-0.961206, 0.252568, -0.110870,
		35.343952, 33.971142, 28.205170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976978, 34.483280, 28.192802>,  <36.016796, 33.794342, 28.282778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976978, 34.483280, 28.192802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609592, 34.374424, 28.307590>,  <35.389160, 34.309109, 28.376463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609592, 34.374424, 28.307590>,  <35.976978, 34.483280, 28.192802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609592, 34.374424, 28.307590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082014, 0.578770, 0.811356,
		-0.386897, 0.768741, -0.509262,
		-0.918468, -0.272145, 0.286972,
		35.334053, 34.292782, 28.393682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826942, 34.976967, 28.503889>,  <35.976978, 34.483280, 28.192802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826942, 34.976967, 28.503889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534325, 34.741863, 28.642092>,  <35.358753, 34.600800, 28.725014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534325, 34.741863, 28.642092>,  <35.826942, 34.976967, 28.503889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534325, 34.741863, 28.642092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050849, 0.458320, 0.887331,
		-0.679891, 0.666695, -0.305396,
		-0.731548, -0.587759, 0.345509,
		35.314861, 34.565536, 28.745745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256512, 35.390896, 28.642376>,  <35.826942, 34.976967, 28.503889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256512, 35.390896, 28.642376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231773, 35.051575, 28.852734>,  <35.216930, 34.847984, 28.978949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231773, 35.051575, 28.852734>,  <35.256512, 35.390896, 28.642376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231773, 35.051575, 28.852734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102018, 0.518771, 0.848805,
		-0.992859, 0.106142, 0.054460,
		-0.061841, -0.848299, 0.525894,
		35.213223, 34.797085, 29.010502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761631, 35.597408, 29.218134>,  <35.256512, 35.390896, 28.642376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761631, 35.597408, 29.218134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951385, 35.268265, 29.343264>,  <35.065239, 35.070778, 29.418341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951385, 35.268265, 29.343264>,  <34.761631, 35.597408, 29.218134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951385, 35.268265, 29.343264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108233, 0.407175, 0.906915,
		-0.873636, -0.396374, 0.282220,
		0.474391, -0.822859, 0.312822,
		35.093704, 35.021408, 29.437111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374519, 35.430164, 29.817274>,  <34.761631, 35.597408, 29.218134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374519, 35.430164, 29.817274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.734970, 35.257130, 29.828840>,  <34.951241, 35.153309, 29.835779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.734970, 35.257130, 29.828840>,  <34.374519, 35.430164, 29.817274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734970, 35.257130, 29.828840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160267, 0.394342, 0.904880,
		-0.402838, -0.810781, 0.424683,
		0.901130, -0.432583, 0.028915,
		35.005310, 35.127354, 29.837515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447651, 35.315895, 30.453867>,  <34.374519, 35.430164, 29.817274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447651, 35.315895, 30.453867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825600, 35.263763, 30.333708>,  <35.052368, 35.232487, 30.261612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825600, 35.263763, 30.333708>,  <34.447651, 35.315895, 30.453867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825600, 35.263763, 30.333708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324195, 0.501381, 0.802194,
		0.046067, -0.855355, 0.515990,
		0.944868, -0.130327, -0.300399,
		35.109058, 35.224667, 30.243587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770309, 34.989384, 30.999346>,  <34.447651, 35.315895, 30.453867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770309, 34.989384, 30.999346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024136, 35.191380, 30.765314>,  <35.176430, 35.312576, 30.624895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024136, 35.191380, 30.765314>,  <34.770309, 34.989384, 30.999346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024136, 35.191380, 30.765314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417170, 0.413474, 0.809326,
		0.650613, -0.757647, 0.051710,
		0.634564, 0.504986, -0.585080,
		35.214504, 35.342876, 30.589790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471493, 34.915344, 31.299393>,  <34.770309, 34.989384, 30.999346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471493, 34.915344, 31.299393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.503757, 35.243977, 31.073652>,  <35.523117, 35.441158, 30.938208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.503757, 35.243977, 31.073652>,  <35.471493, 34.915344, 31.299393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503757, 35.243977, 31.073652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565589, 0.428489, 0.704632,
		0.820733, -0.376028, -0.430117,
		0.080661, 0.821584, -0.564353,
		35.527954, 35.490452, 30.904346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148632, 35.118835, 31.320066>,  <35.471493, 34.915344, 31.299393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148632, 35.118835, 31.320066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959576, 35.438957, 31.172487>,  <35.846142, 35.631031, 31.083941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959576, 35.438957, 31.172487>,  <36.148632, 35.118835, 31.320066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959576, 35.438957, 31.172487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544806, 0.594426, 0.591477,
		0.692672, 0.078554, -0.716962,
		-0.472644, 0.800305, -0.368946,
		35.817783, 35.679050, 31.061804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617653, 35.692841, 31.384356>,  <36.148632, 35.118835, 31.320066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617653, 35.692841, 31.384356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281860, 35.897873, 31.312202>,  <36.080387, 36.020893, 31.268911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281860, 35.897873, 31.312202>,  <36.617653, 35.692841, 31.384356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281860, 35.897873, 31.312202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324180, 0.738832, 0.590792,
		0.436101, 0.437480, -0.786401,
		-0.839478, 0.512580, -0.180383,
		36.030018, 36.051647, 31.258087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760704, 36.373146, 31.187300>,  <36.617653, 35.692841, 31.384356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760704, 36.373146, 31.187300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393093, 36.401245, 31.342455>,  <36.172527, 36.418106, 31.435547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393093, 36.401245, 31.342455>,  <36.760704, 36.373146, 31.187300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393093, 36.401245, 31.342455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323542, 0.696543, 0.640428,
		-0.225190, 0.714068, -0.662870,
		-0.919027, 0.070248, 0.387886,
		36.117386, 36.422321, 31.458820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490925, 36.463795, 31.549244>,  <36.760704, 36.373146, 31.187300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490925, 36.463795, 31.549244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829029, 36.469624, 31.762905>,  <38.031891, 36.473122, 31.891102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829029, 36.469624, 31.762905>,  <37.490925, 36.463795, 31.549244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829029, 36.469624, 31.762905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532786, -0.099496, -0.840380,
		0.040899, 0.994931, -0.091865,
		0.845261, 0.014574, 0.534155,
		38.082607, 36.473995, 31.923151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882149, 36.907730, 31.308334>,  <37.490925, 36.463795, 31.549244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882149, 36.907730, 31.308334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143784, 36.662449, 31.485491>,  <38.300766, 36.515282, 31.591785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143784, 36.662449, 31.485491>,  <37.882149, 36.907730, 31.308334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143784, 36.662449, 31.485491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505483, -0.081235, -0.859004,
		0.562720, 0.785739, 0.256827,
		0.654090, -0.613200, 0.442890,
		38.340012, 36.478489, 31.618359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568562, 37.097507, 31.110067>,  <37.882149, 36.907730, 31.308334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568562, 37.097507, 31.110067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633034, 36.725155, 31.241201>,  <38.671719, 36.501743, 31.319881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633034, 36.725155, 31.241201>,  <38.568562, 37.097507, 31.110067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633034, 36.725155, 31.241201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340854, -0.259232, -0.903669,
		0.926196, 0.257401, 0.275511,
		0.161184, -0.930883, 0.327836,
		38.681389, 36.445889, 31.339552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281849, 36.921963, 30.861315>,  <38.568562, 37.097507, 31.110067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281849, 36.921963, 30.861315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109562, 36.570835, 30.945145>,  <39.006191, 36.360157, 30.995443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109562, 36.570835, 30.945145>,  <39.281849, 36.921963, 30.861315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109562, 36.570835, 30.945145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415139, -0.398901, -0.817641,
		0.801340, -0.265166, 0.536229,
		-0.430713, -0.877818, 0.209575,
		38.980347, 36.307491, 31.008017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771645, 36.451923, 30.697979>,  <39.281849, 36.921963, 30.861315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771645, 36.451923, 30.697979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.433941, 36.237587, 30.693756>,  <39.231319, 36.108986, 30.691223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.433941, 36.237587, 30.693756>,  <39.771645, 36.451923, 30.697979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433941, 36.237587, 30.693756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336631, -0.514854, -0.788419,
		0.417029, -0.669181, 0.615048,
		-0.844255, -0.535838, -0.010557,
		39.180664, 36.076836, 30.690588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958267, 35.774239, 30.663368>,  <39.771645, 36.451923, 30.697979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958267, 35.774239, 30.663368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577007, 35.776184, 30.542381>,  <39.348251, 35.777351, 30.469790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577007, 35.776184, 30.542381>,  <39.958267, 35.774239, 30.663368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577007, 35.776184, 30.542381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260046, -0.497656, -0.827475,
		-0.154549, -0.867361, 0.473075,
		-0.953148, 0.004864, -0.302465,
		39.291061, 35.777645, 30.451641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900997, 35.091450, 30.388691>,  <39.958267, 35.774239, 30.663368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900997, 35.091450, 30.388691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591938, 35.312691, 30.264053>,  <39.406502, 35.445435, 30.189272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591938, 35.312691, 30.264053>,  <39.900997, 35.091450, 30.388691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591938, 35.312691, 30.264053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070378, -0.562431, -0.823844,
		-0.630919, -0.614613, 0.473488,
		-0.772650, 0.553102, -0.311593,
		39.360142, 35.478622, 30.170576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423866, 34.662136, 30.164349>,  <39.900997, 35.091450, 30.388691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423866, 34.662136, 30.164349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.361866, 34.994041, 29.949886>,  <39.324665, 35.193184, 29.821209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.361866, 34.994041, 29.949886>,  <39.423866, 34.662136, 30.164349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361866, 34.994041, 29.949886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042956, -0.547862, -0.835465,
		-0.986980, -0.106467, 0.120562,
		-0.155001, 0.829767, -0.536155,
		39.315365, 35.242970, 29.789040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923565, 34.347488, 29.807503>,  <39.423866, 34.662136, 30.164349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923565, 34.347488, 29.807503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009365, 34.684723, 29.610247>,  <39.060844, 34.887066, 29.491894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009365, 34.684723, 29.610247>,  <38.923565, 34.347488, 29.807503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009365, 34.684723, 29.610247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189097, -0.459493, -0.867818,
		-0.958243, 0.279401, 0.060863,
		0.214504, 0.843090, -0.493140,
		39.073715, 34.937649, 29.462305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577194, 34.358887, 29.227058>,  <38.923565, 34.347488, 29.807503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577194, 34.358887, 29.227058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830425, 34.656483, 29.141556>,  <38.982365, 34.835041, 29.090254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.830425, 34.656483, 29.141556>,  <38.577194, 34.358887, 29.227058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830425, 34.656483, 29.141556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010960, -0.284727, -0.958546,
		-0.774010, 0.604492, -0.188409,
		0.633079, 0.743989, -0.213756,
		39.020348, 34.879681, 29.077429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267338, 34.717224, 28.678705>,  <38.577194, 34.358887, 29.227058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267338, 34.717224, 28.678705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663052, 34.775120, 28.671049>,  <38.900478, 34.809856, 28.666456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663052, 34.775120, 28.671049>,  <38.267338, 34.717224, 28.678705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663052, 34.775120, 28.671049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017881, -0.250222, -0.968023,
		-0.144899, 0.957309, -0.250129,
		0.989285, 0.144738, -0.019139,
		38.959839, 34.818542, 28.665308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338951, 35.249058, 28.219744>,  <38.267338, 34.717224, 28.678705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338951, 35.249058, 28.219744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703556, 35.087082, 28.248499>,  <38.922318, 34.989895, 28.265753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703556, 35.087082, 28.248499>,  <38.338951, 35.249058, 28.219744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703556, 35.087082, 28.248499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000030, -0.174859, -0.984594,
		0.411271, 0.897468, -0.159398,
		0.911513, -0.404940, 0.071887,
		38.977009, 34.965599, 28.270065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761181, 35.601803, 27.836256>,  <38.338951, 35.249058, 28.219744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761181, 35.601803, 27.836256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928322, 35.238586, 27.847929>,  <39.028606, 35.020657, 27.854933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.928322, 35.238586, 27.847929>,  <38.761181, 35.601803, 27.836256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928322, 35.238586, 27.847929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042481, -0.012555, -0.999018,
		0.907521, 0.418683, 0.033328,
		0.417854, -0.908046, 0.029180,
		39.053677, 34.966171, 27.856684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189556, 35.607876, 27.168989>,  <38.761181, 35.601803, 27.836256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189556, 35.607876, 27.168989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112309, 35.235733, 27.293655>,  <39.065960, 35.012447, 27.368456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112309, 35.235733, 27.293655>,  <39.189556, 35.607876, 27.168989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112309, 35.235733, 27.293655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185188, -0.277374, -0.942745,
		0.963541, -0.239779, -0.118726,
		-0.193119, -0.930360, 0.311666,
		39.054375, 34.956627, 27.387156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679356, 35.114025, 26.861038>,  <39.189556, 35.607876, 27.168989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679356, 35.114025, 26.861038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366806, 34.885586, 26.961681>,  <39.179276, 34.748524, 27.022066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366806, 34.885586, 26.961681>,  <39.679356, 35.114025, 26.861038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366806, 34.885586, 26.961681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200733, -0.151749, -0.967822,
		0.590901, -0.806735, 0.003935,
		-0.781372, -0.571097, 0.251607,
		39.132393, 34.714256, 27.037163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809322, 34.324158, 26.595243>,  <39.679356, 35.114025, 26.861038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809322, 34.324158, 26.595243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.420788, 34.406540, 26.642712>,  <39.187668, 34.455971, 26.671192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.420788, 34.406540, 26.642712>,  <39.809322, 34.324158, 26.595243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420788, 34.406540, 26.642712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170456, -0.255581, -0.951643,
		-0.165665, -0.944596, 0.283362,
		-0.971339, 0.205954, 0.118671,
		39.129387, 34.468327, 26.678312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589653, 34.127544, 25.996717>,  <39.809322, 34.324158, 26.595243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589653, 34.127544, 25.996717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240376, 34.259060, 26.140623>,  <39.030807, 34.337967, 26.226967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240376, 34.259060, 26.140623>,  <39.589653, 34.127544, 25.996717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240376, 34.259060, 26.140623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389703, -0.027726, -0.920523,
		-0.292681, -0.943997, 0.152339,
		-0.873195, 0.328786, 0.359763,
		38.978416, 34.357697, 26.248552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120975, 33.646351, 25.835360>,  <39.589653, 34.127544, 25.996717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120975, 33.646351, 25.835360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932915, 33.996559, 25.879944>,  <38.820076, 34.206684, 25.906694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932915, 33.996559, 25.879944>,  <39.120975, 33.646351, 25.835360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932915, 33.996559, 25.879944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363393, -0.076944, -0.928453,
		-0.804301, -0.477021, 0.354333,
		-0.470155, 0.875517, 0.111460,
		38.791866, 34.259212, 25.913382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647747, 33.526428, 25.400372>,  <39.120975, 33.646351, 25.835360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647747, 33.526428, 25.400372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594433, 33.917019, 25.468168>,  <38.562447, 34.151375, 25.508846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594433, 33.917019, 25.468168>,  <38.647747, 33.526428, 25.400372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594433, 33.917019, 25.468168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411771, 0.101000, -0.905673,
		-0.901488, -0.190502, 0.388624,
		-0.133282, 0.976477, 0.169494,
		38.554447, 34.209961, 25.519016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.828388, 33.821800, 25.370333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034092, 34.159336, 25.309048>,  <38.157513, 34.361858, 25.272276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034092, 34.159336, 25.309048>,  <37.828388, 33.821800, 25.370333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034092, 34.159336, 25.309048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339279, 0.036094, -0.939993,
		-0.787672, 0.535382, 0.304858,
		0.514259, 0.843838, -0.153214,
		38.188370, 34.412487, 25.263084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425179, 34.245663, 25.073372>,  <37.828388, 33.821800, 25.370333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425179, 34.245663, 25.073372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772274, 34.424358, 24.986237>,  <37.980530, 34.531574, 24.933954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772274, 34.424358, 24.986237>,  <37.425179, 34.245663, 25.073372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772274, 34.424358, 24.986237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253735, 0.021302, -0.967039,
		-0.427373, 0.894411, 0.131838,
		0.867739, 0.446738, -0.217840,
		38.032597, 34.558380, 24.920885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204739, 34.653873, 24.498291>,  <37.425179, 34.245663, 25.073372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204739, 34.653873, 24.498291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602661, 34.633026, 24.463324>,  <37.841415, 34.620518, 24.442343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602661, 34.633026, 24.463324>,  <37.204739, 34.653873, 24.498291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602661, 34.633026, 24.463324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094548, -0.155314, -0.983330,
		0.037669, 0.986489, -0.159435,
		0.994807, -0.052115, -0.087420,
		37.901104, 34.617390, 24.437098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340260, 35.107307, 23.994226>,  <37.204739, 34.653873, 24.498291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340260, 35.107307, 23.994226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.685650, 34.906982, 23.970228>,  <37.892883, 34.786789, 23.955830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.685650, 34.906982, 23.970228>,  <37.340260, 35.107307, 23.994226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685650, 34.906982, 23.970228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168838, -0.174897, -0.970002,
		0.475292, 0.847704, -0.235575,
		0.863476, -0.500808, -0.059997,
		37.944695, 34.756741, 23.952229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734554, 35.369106, 23.411339>,  <37.340260, 35.107307, 23.994226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734554, 35.369106, 23.411339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815357, 34.990940, 23.513624>,  <37.863838, 34.764042, 23.574995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815357, 34.990940, 23.513624>,  <37.734554, 35.369106, 23.411339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815357, 34.990940, 23.513624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306000, -0.308949, -0.900508,
		0.930353, 0.103661, -0.351706,
		0.202007, -0.945413, 0.255712,
		37.875957, 34.707317, 23.590338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908394, 35.142391, 22.852131>,  <37.734554, 35.369106, 23.411339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908394, 35.142391, 22.852131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833752, 34.814289, 23.068413>,  <37.788967, 34.617428, 23.198183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833752, 34.814289, 23.068413>,  <37.908394, 35.142391, 22.852131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833752, 34.814289, 23.068413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448854, -0.418393, -0.789606,
		0.873905, -0.390041, -0.290100,
		-0.186603, -0.820253, 0.540707,
		37.777771, 34.568214, 23.230625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086838, 34.574097, 22.418314>,  <37.908394, 35.142391, 22.852131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086838, 34.574097, 22.418314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.829399, 34.420116, 22.682919>,  <37.674934, 34.327728, 22.841681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.829399, 34.420116, 22.682919>,  <38.086838, 34.574097, 22.418314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829399, 34.420116, 22.682919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485249, -0.463160, -0.741631,
		0.591874, -0.798310, 0.111294,
		-0.643598, -0.384946, 0.661512,
		37.636318, 34.304634, 22.881372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893658, 33.851177, 22.202019>,  <38.086838, 34.574097, 22.418314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893658, 33.851177, 22.202019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596771, 34.011593, 22.416786>,  <37.418640, 34.107841, 22.545647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596771, 34.011593, 22.416786>,  <37.893658, 33.851177, 22.202019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596771, 34.011593, 22.416786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658581, -0.288199, -0.695134,
		-0.124040, -0.869543, 0.478026,
		-0.742216, 0.401043, 0.536917,
		37.374107, 34.131905, 22.577862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328968, 33.176994, 22.079596>,  <37.893658, 33.851177, 22.202019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328968, 33.176994, 22.079596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.942238, 33.266834, 22.128254>,  <37.710197, 33.320740, 22.157450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.942238, 33.266834, 22.128254>,  <38.328968, 33.176994, 22.079596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942238, 33.266834, 22.128254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199417, -0.366119, -0.908950,
		-0.159613, -0.903057, 0.398763,
		-0.966828, 0.224600, 0.121648,
		37.652191, 33.334213, 22.164747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961758, 32.535042, 21.873085>,  <38.328968, 33.176994, 22.079596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961758, 32.535042, 21.873085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730160, 32.859905, 21.844341>,  <37.591202, 33.054825, 21.827095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730160, 32.859905, 21.844341>,  <37.961758, 32.535042, 21.873085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730160, 32.859905, 21.844341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174658, -0.209637, -0.962053,
		-0.796403, -0.544475, 0.263229,
		-0.578996, 0.812157, -0.071859,
		37.556461, 33.103554, 21.822784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521008, 32.261883, 21.369530>,  <37.961758, 32.535042, 21.873085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521008, 32.261883, 21.369530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527088, 32.661320, 21.389826>,  <37.530735, 32.900982, 21.402002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527088, 32.661320, 21.389826>,  <37.521008, 32.261883, 21.369530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527088, 32.661320, 21.389826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230251, 0.052878, -0.971694,
		-0.973013, 0.003090, 0.230732,
		0.015203, 0.998596, 0.050739,
		37.531651, 32.960899, 21.405048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941547, 32.425056, 21.019991>,  <37.521008, 32.261883, 21.369530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941547, 32.425056, 21.019991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186584, 32.741203, 21.023092>,  <37.333607, 32.930889, 21.024952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186584, 32.741203, 21.023092>,  <36.941547, 32.425056, 21.019991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186584, 32.741203, 21.023092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134969, 0.114263, -0.984240,
		-0.778793, 0.601888, 0.176671,
		0.612589, 0.790364, 0.007751,
		37.370361, 32.978313, 21.025417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638760, 32.932434, 20.491116>,  <36.941547, 32.425056, 21.019991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638760, 32.932434, 20.491116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017136, 33.041103, 20.561995>,  <37.244160, 33.106304, 20.604523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017136, 33.041103, 20.561995>,  <36.638760, 32.932434, 20.491116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017136, 33.041103, 20.561995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120378, 0.213243, -0.969555,
		-0.301188, 0.938467, 0.169011,
		0.945936, 0.271673, 0.177197,
		37.300915, 33.122604, 20.615154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632576, 33.446770, 20.046436>,  <36.638760, 32.932434, 20.491116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632576, 33.446770, 20.046436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019897, 33.367691, 20.107504>,  <37.252289, 33.320244, 20.144144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019897, 33.367691, 20.107504>,  <36.632576, 33.446770, 20.046436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019897, 33.367691, 20.107504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177026, 0.111950, -0.977818,
		0.176222, 0.973849, 0.143399,
		0.968301, -0.197698, 0.152669,
		37.310387, 33.308380, 20.153305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981747, 34.042007, 19.832378>,  <36.632576, 33.446770, 20.046436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981747, 34.042007, 19.832378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272720, 33.767616, 19.838949>,  <37.447304, 33.602982, 19.842892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272720, 33.767616, 19.838949>,  <36.981747, 34.042007, 19.832378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272720, 33.767616, 19.838949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332908, 0.331891, -0.882621,
		0.600010, 0.647517, 0.469798,
		0.727434, -0.685981, 0.016426,
		37.490952, 33.561821, 19.843878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617249, 34.339397, 19.664156>,  <36.981747, 34.042007, 19.832378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617249, 34.339397, 19.664156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681988, 33.954372, 19.577181>,  <37.720829, 33.723358, 19.524996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681988, 33.954372, 19.577181>,  <37.617249, 34.339397, 19.664156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681988, 33.954372, 19.577181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315133, 0.259220, -0.912960,
		0.935146, 0.079236, 0.345289,
		0.161845, -0.962563, -0.217438,
		37.730541, 33.665604, 19.511950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083996, 34.344677, 19.130301>,  <37.617249, 34.339397, 19.664156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083996, 34.344677, 19.130301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928249, 33.980728, 19.072992>,  <37.834801, 33.762360, 19.038607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928249, 33.980728, 19.072992>,  <38.083996, 34.344677, 19.130301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928249, 33.980728, 19.072992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198797, 0.068867, -0.977618,
		0.899374, -0.409133, 0.154066,
		-0.389366, -0.909872, -0.143272,
		37.811440, 33.707767, 19.030010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622524, 34.020485, 18.695988>,  <38.083996, 34.344677, 19.130301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622524, 34.020485, 18.695988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254791, 33.865868, 18.666550>,  <38.034153, 33.773098, 18.648888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254791, 33.865868, 18.666550>,  <38.622524, 34.020485, 18.695988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254791, 33.865868, 18.666550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081556, -0.004211, -0.996660,
		0.384944, -0.922261, 0.035396,
		-0.919330, -0.386545, -0.073595,
		37.978992, 33.749905, 18.644470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671974, 33.530640, 18.133152>,  <38.622524, 34.020485, 18.695988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671974, 33.530640, 18.133152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.281906, 33.609474, 18.173542>,  <38.047863, 33.656773, 18.197775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.281906, 33.609474, 18.173542>,  <38.671974, 33.530640, 18.133152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281906, 33.609474, 18.173542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125534, -0.116370, -0.985241,
		-0.182429, -0.973455, 0.138222,
		-0.975172, 0.197088, 0.100972,
		37.989353, 33.668598, 18.203835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451572, 33.157795, 17.625826>,  <38.671974, 33.530640, 18.133152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451572, 33.157795, 17.625826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118988, 33.366657, 17.701750>,  <37.919437, 33.491974, 17.747305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118988, 33.366657, 17.701750>,  <38.451572, 33.157795, 17.625826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118988, 33.366657, 17.701750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252084, -0.050107, -0.966407,
		-0.495109, -0.851374, 0.173291,
		-0.831457, 0.522160, 0.189810,
		37.869553, 33.523304, 17.758692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822605, 32.769157, 17.440639>,  <38.451572, 33.157795, 17.625826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822605, 32.769157, 17.440639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744804, 33.161133, 17.423273>,  <37.698124, 33.396320, 17.412853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744804, 33.161133, 17.423273>,  <37.822605, 32.769157, 17.440639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744804, 33.161133, 17.423273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244123, -0.091227, -0.965444,
		-0.950039, -0.177180, 0.256970,
		-0.194500, 0.979941, -0.043415,
		37.686455, 33.455116, 17.410248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202560, 32.761337, 17.039925>,  <37.822605, 32.769157, 17.440639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202560, 32.761337, 17.039925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343773, 33.135120, 17.021330>,  <37.428501, 33.359390, 17.010172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343773, 33.135120, 17.021330>,  <37.202560, 32.761337, 17.039925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343773, 33.135120, 17.021330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268056, 0.053415, -0.961921,
		-0.896391, 0.352048, 0.269344,
		0.353029, 0.934456, -0.046488,
		37.449680, 33.415459, 17.007383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758495, 32.989231, 16.525423>,  <37.202560, 32.761337, 17.039925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758495, 32.989231, 16.525423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080868, 33.222961, 16.563448>,  <37.274292, 33.363201, 16.586264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080868, 33.222961, 16.563448>,  <36.758495, 32.989231, 16.525423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080868, 33.222961, 16.563448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037996, 0.109193, -0.993294,
		-0.590789, 0.804138, 0.065800,
		0.805931, 0.584328, 0.095063,
		37.322647, 33.398258, 16.591967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333488, 33.406906, 16.996281>,  <36.758495, 32.989231, 16.525423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333488, 33.406906, 16.996281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.024105, 33.443855, 16.745447>,  <35.838474, 33.466022, 16.594948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.024105, 33.443855, 16.745447>,  <36.333488, 33.406906, 16.996281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024105, 33.443855, 16.745447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597181, 0.225426, 0.769778,
		0.212465, 0.969872, -0.119196,
		-0.773456, 0.092370, -0.627084,
		35.792068, 33.471565, 16.557322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104324, 34.093502, 17.008366>,  <36.333488, 33.406906, 16.996281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104324, 34.093502, 17.008366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817257, 33.838943, 16.895260>,  <35.645016, 33.686211, 16.827396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817257, 33.838943, 16.895260>,  <36.104324, 34.093502, 17.008366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817257, 33.838943, 16.895260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512689, 0.208048, 0.832986,
		-0.471278, 0.742778, -0.475582,
		-0.717667, -0.636394, -0.282766,
		35.601955, 33.648026, 16.810431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488487, 34.408588, 17.080164>,  <36.104324, 34.093502, 17.008366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488487, 34.408588, 17.080164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390945, 34.020878, 17.093092>,  <35.332420, 33.788254, 17.100849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390945, 34.020878, 17.093092>,  <35.488487, 34.408588, 17.080164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390945, 34.020878, 17.093092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351069, 0.119295, 0.928719,
		-0.904038, 0.215127, -0.369373,
		-0.243857, -0.969273, 0.032322,
		35.317787, 33.730095, 17.102789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878883, 34.424431, 17.506365>,  <35.488487, 34.408588, 17.080164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878883, 34.424431, 17.506365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929443, 34.028244, 17.484499>,  <34.959782, 33.790531, 17.471380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929443, 34.028244, 17.484499>,  <34.878883, 34.424431, 17.506365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929443, 34.028244, 17.484499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474611, -0.108775, 0.873448,
		-0.871072, -0.084463, -0.483839,
		0.126404, -0.990472, -0.054664,
		34.967365, 33.731102, 17.468100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249374, 34.031891, 17.576485>,  <34.878883, 34.424431, 17.506365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249374, 34.031891, 17.576485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541969, 33.791763, 17.705814>,  <34.717525, 33.647686, 17.783413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541969, 33.791763, 17.705814>,  <34.249374, 34.031891, 17.576485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541969, 33.791763, 17.705814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387256, 0.024517, 0.921646,
		-0.561211, -0.799383, -0.214544,
		0.731489, -0.600321, 0.323325,
		34.761417, 33.611668, 17.802813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938789, 33.646137, 18.129480>,  <34.249374, 34.031891, 17.576485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938789, 33.646137, 18.129480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.330990, 33.586864, 18.181101>,  <34.566311, 33.551300, 18.212072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.330990, 33.586864, 18.181101>,  <33.938789, 33.646137, 18.129480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330990, 33.586864, 18.181101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145265, -0.104352, 0.983874,
		-0.132326, -0.983439, -0.123844,
		0.980504, -0.148182, 0.129050,
		34.625141, 33.542412, 18.219816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961525, 33.060715, 18.488384>,  <33.938789, 33.646137, 18.129480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961525, 33.060715, 18.488384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318298, 33.229359, 18.553740>,  <34.532364, 33.330544, 18.592953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318298, 33.229359, 18.553740>,  <33.961525, 33.060715, 18.488384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318298, 33.229359, 18.553740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193048, 0.028317, 0.980781,
		0.408877, -0.906337, 0.106647,
		0.891937, 0.421607, 0.163388,
		34.585880, 33.355839, 18.602757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184937, 32.645790, 19.148127>,  <33.961525, 33.060715, 18.488384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184937, 32.645790, 19.148127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393723, 32.981842, 19.089161>,  <34.518993, 33.183475, 19.053782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393723, 32.981842, 19.089161>,  <34.184937, 32.645790, 19.148127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393723, 32.981842, 19.089161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001119, 0.173501, 0.984833,
		0.852968, -0.513880, 0.091501,
		0.521962, 0.840134, -0.147416,
		34.550312, 33.233883, 19.044935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821579, 32.531273, 19.568874>,  <34.184937, 32.645790, 19.148127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821579, 32.531273, 19.568874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777977, 32.928684, 19.556072>,  <34.751816, 33.167130, 19.548391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777977, 32.928684, 19.556072>,  <34.821579, 32.531273, 19.568874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777977, 32.928684, 19.556072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362574, 0.069718, 0.929344,
		0.925558, 0.089698, -0.367826,
		-0.109004, 0.993526, -0.032005,
		34.745277, 33.226742, 19.546471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417484, 32.810860, 19.926367>,  <34.821579, 32.531273, 19.568874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417484, 32.810860, 19.926367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157806, 33.115101, 19.924292>,  <35.001999, 33.297646, 19.923046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157806, 33.115101, 19.924292>,  <35.417484, 32.810860, 19.926367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157806, 33.115101, 19.924292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398004, 0.345506, 0.849834,
		0.648179, 0.549645, -0.527024,
		-0.649197, 0.760602, -0.005189,
		34.963047, 33.343281, 19.922735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828396, 33.377968, 19.938166>,  <35.417484, 32.810860, 19.926367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828396, 33.377968, 19.938166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462181, 33.438919, 20.087069>,  <35.242451, 33.475491, 20.176411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462181, 33.438919, 20.087069>,  <35.828396, 33.377968, 19.938166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462181, 33.438919, 20.087069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400572, 0.261328, 0.878208,
		0.036540, 0.953147, -0.300294,
		-0.915536, 0.152379, 0.372255,
		35.187519, 33.484634, 20.198746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854076, 34.015507, 20.293131>,  <35.828396, 33.377968, 19.938166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854076, 34.015507, 20.293131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.550201, 33.803417, 20.443726>,  <35.367878, 33.676163, 20.534082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.550201, 33.803417, 20.443726>,  <35.854076, 34.015507, 20.293131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550201, 33.803417, 20.443726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385926, 0.098370, 0.917270,
		-0.523393, 0.842132, 0.129896,
		-0.759685, -0.530223, 0.376487,
		35.322296, 33.644352, 20.556671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662853, 34.328224, 20.917662>,  <35.854076, 34.015507, 20.293131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662853, 34.328224, 20.917662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517586, 33.959965, 20.974951>,  <35.430424, 33.739010, 21.009323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517586, 33.959965, 20.974951>,  <35.662853, 34.328224, 20.917662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517586, 33.959965, 20.974951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294349, 0.032476, 0.955146,
		-0.884007, 0.389035, 0.259198,
		-0.363168, -0.920650, 0.143222,
		35.408634, 33.683769, 21.017918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347118, 34.349045, 21.620756>,  <35.662853, 34.328224, 20.917662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347118, 34.349045, 21.620756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375443, 33.954788, 21.559439>,  <35.392437, 33.718235, 21.522648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375443, 33.954788, 21.559439>,  <35.347118, 34.349045, 21.620756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375443, 33.954788, 21.559439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081293, -0.147468, 0.985720,
		-0.994172, -0.082262, 0.069683,
		0.070811, -0.985640, -0.153296,
		35.396687, 33.659096, 21.513451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900738, 34.075428, 21.989014>,  <35.347118, 34.349045, 21.620756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900738, 34.075428, 21.989014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149158, 33.764572, 21.948320>,  <35.298210, 33.578060, 21.923904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149158, 33.764572, 21.948320>,  <34.900738, 34.075428, 21.989014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149158, 33.764572, 21.948320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208314, -0.288798, 0.934452,
		-0.755581, -0.559149, -0.341247,
		0.621049, -0.777141, -0.101732,
		35.335472, 33.531429, 21.917801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558189, 33.582081, 22.307304>,  <34.900738, 34.075428, 21.989014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558189, 33.582081, 22.307304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922901, 33.417950, 22.300463>,  <35.141727, 33.319469, 22.296358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922901, 33.417950, 22.300463>,  <34.558189, 33.582081, 22.307304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922901, 33.417950, 22.300463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023747, -0.094252, 0.995265,
		-0.410001, -0.907052, -0.095681,
		0.911776, -0.410332, -0.017104,
		35.196434, 33.294849, 22.295332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467022, 32.938133, 22.529545>,  <34.558189, 33.582081, 22.307304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467022, 32.938133, 22.529545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851234, 33.032936, 22.587786>,  <35.081764, 33.089817, 22.622730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851234, 33.032936, 22.587786>,  <34.467022, 32.938133, 22.529545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851234, 33.032936, 22.587786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027305, -0.440591, 0.897292,
		0.276814, -0.865857, -0.416732,
		0.960535, 0.237004, 0.145604,
		35.139397, 33.104038, 22.631468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789467, 32.399036, 22.872276>,  <34.467022, 32.938133, 22.529545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789467, 32.399036, 22.872276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017838, 32.709656, 22.978867>,  <35.154861, 32.896027, 23.042822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017838, 32.709656, 22.978867>,  <34.789467, 32.399036, 22.872276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017838, 32.709656, 22.978867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031818, -0.345260, 0.937968,
		0.820385, -0.527031, -0.221826,
		0.570926, 0.776553, 0.266477,
		35.189114, 32.942623, 23.058809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084167, 32.169273, 23.404497>,  <34.789467, 32.399036, 22.872276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084167, 32.169273, 23.404497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181351, 32.556961, 23.420399>,  <35.239662, 32.789574, 23.429939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181351, 32.556961, 23.420399>,  <35.084167, 32.169273, 23.404497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181351, 32.556961, 23.420399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167602, -0.082307, 0.982413,
		0.955448, -0.232022, -0.182440,
		0.242958, 0.969222, 0.039753,
		35.254238, 32.847729, 23.432325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809864, 32.213669, 23.865164>,  <35.084167, 32.169273, 23.404497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809864, 32.213669, 23.865164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.615646, 32.562325, 23.838346>,  <35.499115, 32.771519, 23.822256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.615646, 32.562325, 23.838346>,  <35.809864, 32.213669, 23.865164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615646, 32.562325, 23.838346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071233, 0.115882, 0.990705,
		0.871303, 0.476258, -0.118356,
		-0.485547, 0.871636, -0.067043,
		35.469982, 32.823814, 23.818233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304272, 32.632164, 24.165932>,  <35.809864, 32.213669, 23.865164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304272, 32.632164, 24.165932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.946175, 32.808445, 24.192232>,  <35.731316, 32.914215, 24.208014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.946175, 32.808445, 24.192232>,  <36.304272, 32.632164, 24.165932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946175, 32.808445, 24.192232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102487, 0.060047, 0.992920,
		0.433636, 0.895642, -0.098923,
		-0.895241, 0.440704, 0.065753,
		35.677601, 32.940655, 24.211958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.519669, 33.830704, 28.018740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351784, 34.190208, 27.968035>,  <39.251053, 34.405910, 27.937611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351784, 34.190208, 27.968035>,  <39.519669, 33.830704, 28.018740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351784, 34.190208, 27.968035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301404, 0.269745, 0.914545,
		0.856151, 0.345642, -0.384106,
		-0.419716, 0.898760, -0.126764,
		39.225868, 34.459835, 27.930006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050079, 34.208927, 28.341940>,  <39.519669, 33.830704, 28.018740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050079, 34.208927, 28.341940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.734947, 34.453045, 28.308796>,  <39.545868, 34.599518, 28.288910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.734947, 34.453045, 28.308796>,  <40.050079, 34.208927, 28.341940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734947, 34.453045, 28.308796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246360, 0.435568, 0.865787,
		0.564479, 0.661676, -0.493505,
		-0.787826, 0.610299, -0.082858,
		39.498600, 34.636135, 28.283939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247040, 34.927589, 28.544939>,  <40.050079, 34.208927, 28.341940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247040, 34.927589, 28.544939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850632, 34.906075, 28.593918>,  <39.612789, 34.893166, 28.623306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850632, 34.906075, 28.593918>,  <40.247040, 34.927589, 28.544939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850632, 34.906075, 28.593918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058219, 0.650759, 0.757049,
		-0.120404, 0.757377, -0.641781,
		-0.991016, -0.053788, 0.122448,
		39.553326, 34.889938, 28.630651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030785, 35.600597, 28.736031>,  <40.247040, 34.927589, 28.544939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030785, 35.600597, 28.736031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700542, 35.395901, 28.831100>,  <39.502396, 35.273083, 28.888142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700542, 35.395901, 28.831100>,  <40.030785, 35.600597, 28.736031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700542, 35.395901, 28.831100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196157, 0.655264, 0.729487,
		-0.529049, 0.555650, -0.641374,
		-0.825609, -0.511744, 0.237672,
		39.452858, 35.242378, 28.902403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527199, 36.059521, 28.909891>,  <40.030785, 35.600597, 28.736031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527199, 36.059521, 28.909891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.378551, 35.721336, 29.063303>,  <39.289364, 35.518425, 29.155350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.378551, 35.721336, 29.063303>,  <39.527199, 36.059521, 28.909891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378551, 35.721336, 29.063303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304939, 0.501353, 0.809727,
		-0.876877, 0.183955, -0.444125,
		-0.371616, -0.845462, 0.383530,
		39.267067, 35.467697, 29.178362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905994, 36.260204, 29.138781>,  <39.527199, 36.059521, 28.909891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905994, 36.260204, 29.138781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991234, 35.921284, 29.333372>,  <39.042377, 35.717930, 29.450127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991234, 35.921284, 29.333372>,  <38.905994, 36.260204, 29.138781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991234, 35.921284, 29.333372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291444, 0.420120, 0.859395,
		-0.932550, -0.324918, -0.157415,
		0.213100, -0.847306, 0.486478,
		39.055164, 35.667091, 29.479315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378567, 36.235317, 29.693424>,  <38.905994, 36.260204, 29.138781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378567, 36.235317, 29.693424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.672237, 35.997711, 29.824957>,  <38.848438, 35.855148, 29.903875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.672237, 35.997711, 29.824957>,  <38.378567, 36.235317, 29.693424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672237, 35.997711, 29.824957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159091, 0.320325, 0.933853,
		-0.660055, -0.737928, 0.140673,
		0.734177, -0.594015, 0.328830,
		38.892490, 35.819508, 29.923607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042763, 35.727379, 30.063034>,  <38.378567, 36.235317, 29.693424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042763, 35.727379, 30.063034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424141, 35.772156, 30.175047>,  <38.652966, 35.799023, 30.242254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424141, 35.772156, 30.175047>,  <38.042763, 35.727379, 30.063034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424141, 35.772156, 30.175047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299083, 0.231819, 0.925640,
		0.038698, -0.966297, 0.254505,
		0.953442, 0.111939, 0.280032,
		38.710175, 35.805737, 30.259056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079113, 35.352428, 30.684544>,  <38.042763, 35.727379, 30.063034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079113, 35.352428, 30.684544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.419636, 35.562286, 30.686769>,  <38.623947, 35.688202, 30.688105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.419636, 35.562286, 30.686769>,  <38.079113, 35.352428, 30.684544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419636, 35.562286, 30.686769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180507, 0.282903, 0.942010,
		0.492644, -0.802942, 0.335538,
		0.851304, 0.524643, 0.005566,
		38.675026, 35.719681, 30.688438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416267, 35.137611, 31.210539>,  <38.079113, 35.352428, 30.684544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416267, 35.137611, 31.210539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571671, 35.501110, 31.149574>,  <38.664913, 35.719212, 31.112995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571671, 35.501110, 31.149574>,  <38.416267, 35.137611, 31.210539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571671, 35.501110, 31.149574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177488, 0.236113, 0.955379,
		0.904188, -0.344125, 0.253025,
		0.388512, 0.908751, -0.152412,
		38.688225, 35.773735, 31.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790154, 35.229443, 31.818213>,  <38.416267, 35.137611, 31.210539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790154, 35.229443, 31.818213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750961, 35.601543, 31.676775>,  <38.727448, 35.824806, 31.591913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750961, 35.601543, 31.676775>,  <38.790154, 35.229443, 31.818213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750961, 35.601543, 31.676775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186095, 0.331908, 0.924773,
		0.977634, 0.156411, 0.140595,
		-0.097980, 0.930254, -0.353592,
		38.721569, 35.880619, 31.570698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197208, 35.705349, 32.225792>,  <38.790154, 35.229443, 31.818213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197208, 35.705349, 32.225792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923660, 35.934944, 32.045635>,  <38.759529, 36.072701, 31.937540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923660, 35.934944, 32.045635>,  <39.197208, 35.705349, 32.225792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923660, 35.934944, 32.045635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278099, 0.365641, 0.888238,
		0.674521, 0.732697, -0.090426,
		-0.683873, 0.573988, -0.450395,
		38.718498, 36.107140, 31.910517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326088, 36.430321, 32.440029>,  <39.197208, 35.705349, 32.225792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326088, 36.430321, 32.440029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.950401, 36.414284, 32.303642>,  <38.724987, 36.404663, 32.221809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.950401, 36.414284, 32.303642>,  <39.326088, 36.430321, 32.440029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950401, 36.414284, 32.303642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300984, 0.573891, 0.761615,
		0.165142, 0.817950, -0.551077,
		-0.939221, -0.040091, -0.340963,
		38.668636, 36.402256, 32.201355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901653, 36.338177, 31.878952>,  <39.326088, 36.430321, 32.440029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901653, 36.338177, 31.878952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965668, 36.540321, 31.539778>,  <40.004074, 36.661610, 31.336273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.965668, 36.540321, 31.539778>,  <39.901653, 36.338177, 31.878952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965668, 36.540321, 31.539778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435682, -0.734648, -0.520071,
		-0.885760, 0.452660, 0.102609,
		0.160034, 0.505363, -0.847937,
		40.013680, 36.691929, 31.285397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815018, 37.033882, 31.817408>,  <39.901653, 36.338177, 31.878952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815018, 37.033882, 31.817408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757721, 37.425186, 31.877390>,  <39.723343, 37.659969, 31.913380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757721, 37.425186, 31.877390>,  <39.815018, 37.033882, 31.817408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757721, 37.425186, 31.877390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655886, 0.019633, -0.754605,
		-0.741145, -0.206445, 0.638815,
		-0.143242, 0.978261, 0.149955,
		39.714748, 37.718666, 31.922377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132942, 37.220207, 31.780588>,  <39.815018, 37.033882, 31.817408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132942, 37.220207, 31.780588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307678, 37.573711, 31.713499>,  <39.412521, 37.785816, 31.673246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307678, 37.573711, 31.713499>,  <39.132942, 37.220207, 31.780588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307678, 37.573711, 31.713499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657219, 0.186262, -0.730322,
		-0.614192, 0.429266, 0.662193,
		0.436844, 0.883763, -0.167721,
		39.438732, 37.838840, 31.663183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538357, 37.772690, 31.729507>,  <39.132942, 37.220207, 31.780588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538357, 37.772690, 31.729507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.840271, 37.980827, 31.569740>,  <39.021420, 38.105709, 31.473881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.840271, 37.980827, 31.569740>,  <38.538357, 37.772690, 31.729507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840271, 37.980827, 31.569740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585251, 0.259177, -0.768315,
		-0.296269, 0.813676, 0.500157,
		0.754789, 0.520345, -0.399418,
		39.066708, 38.136932, 31.449915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192318, 38.396484, 31.322189>,  <38.538357, 37.772690, 31.729507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192318, 38.396484, 31.322189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569595, 38.385815, 31.189716>,  <38.795959, 38.379414, 31.110233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569595, 38.385815, 31.189716>,  <38.192318, 38.396484, 31.322189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569595, 38.385815, 31.189716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299742, 0.361724, -0.882786,
		0.143341, 0.931904, 0.333180,
		0.943190, -0.026672, -0.331181,
		38.852554, 38.377811, 31.090363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245628, 39.055504, 30.912516>,  <38.192318, 38.396484, 31.322189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245628, 39.055504, 30.912516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527355, 38.796814, 30.795429>,  <38.696392, 38.641602, 30.725178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527355, 38.796814, 30.795429>,  <38.245628, 39.055504, 30.912516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527355, 38.796814, 30.795429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171117, 0.245512, -0.954172,
		0.688951, 0.722130, 0.062253,
		0.704319, -0.646725, -0.292714,
		38.738651, 38.602795, 30.707615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543655, 39.366566, 30.315285>,  <38.245628, 39.055504, 30.912516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543655, 39.366566, 30.315285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677269, 38.990520, 30.288151>,  <38.757439, 38.764893, 30.271872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677269, 38.990520, 30.288151>,  <38.543655, 39.366566, 30.315285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677269, 38.990520, 30.288151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200761, -0.000648, -0.979640,
		0.920931, 0.340856, -0.188955,
		0.334039, -0.940115, -0.067834,
		38.777481, 38.708485, 30.267801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957378, 39.409458, 29.838516>,  <38.543655, 39.366566, 30.315285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957378, 39.409458, 29.838516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.853725, 39.023125, 29.836798>,  <38.791534, 38.791325, 29.835766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.853725, 39.023125, 29.836798>,  <38.957378, 39.409458, 29.838516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853725, 39.023125, 29.836798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172096, 0.050550, -0.983782,
		0.950385, -0.254193, -0.179315,
		-0.259135, -0.965831, -0.004296,
		38.775986, 38.733376, 29.835508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284645, 39.088703, 29.320536>,  <38.957378, 39.409458, 29.838516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284645, 39.088703, 29.320536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.972717, 38.847080, 29.386255>,  <38.785561, 38.702106, 29.425688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.972717, 38.847080, 29.386255>,  <39.284645, 39.088703, 29.320536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972717, 38.847080, 29.386255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152458, -0.071294, -0.985735,
		0.607155, -0.793745, -0.036497,
		-0.779820, -0.604058, 0.164299,
		38.738770, 38.665863, 29.435545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371281, 38.583595, 28.751387>,  <39.284645, 39.088703, 29.320536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371281, 38.583595, 28.751387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.998409, 38.543224, 28.890446>,  <38.774685, 38.519001, 28.973881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.998409, 38.543224, 28.890446>,  <39.371281, 38.583595, 28.751387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998409, 38.543224, 28.890446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304280, -0.301811, -0.903507,
		0.196111, -0.948011, 0.250631,
		-0.932177, -0.100926, 0.347649,
		38.718758, 38.512947, 28.994740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058613, 38.016575, 28.489048>,  <39.371281, 38.583595, 28.751387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058613, 38.016575, 28.489048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712414, 38.190552, 28.588444>,  <38.504696, 38.294937, 28.648081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712414, 38.190552, 28.588444>,  <39.058613, 38.016575, 28.489048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712414, 38.190552, 28.588444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390412, -0.274910, -0.878637,
		-0.313846, -0.857467, 0.407740,
		-0.865493, 0.434943, 0.248486,
		38.452766, 38.321033, 28.662991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628876, 37.539948, 28.395981>,  <39.058613, 38.016575, 28.489048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628876, 37.539948, 28.395981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410320, 37.874348, 28.375774>,  <38.279186, 38.074989, 28.363651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410320, 37.874348, 28.375774>,  <38.628876, 37.539948, 28.395981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410320, 37.874348, 28.375774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324070, -0.266651, -0.907676,
		-0.772292, -0.479576, 0.416620,
		-0.546391, 0.836005, -0.050516,
		38.246403, 38.125149, 28.360620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949924, 37.325588, 28.205629>,  <38.628876, 37.539948, 28.395981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949924, 37.325588, 28.205629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.992077, 37.708420, 28.097633>,  <38.017368, 37.938118, 28.032837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.992077, 37.708420, 28.097633>,  <37.949924, 37.325588, 28.205629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992077, 37.708420, 28.097633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308510, -0.226639, -0.923827,
		-0.945366, 0.180647, 0.271386,
		0.105380, 0.957080, -0.269989,
		38.023689, 37.995544, 28.016636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305492, 37.601341, 27.929680>,  <37.949924, 37.325588, 28.205629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305492, 37.601341, 27.929680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573635, 37.848873, 27.765890>,  <37.734520, 37.997391, 27.667616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573635, 37.848873, 27.765890>,  <37.305492, 37.601341, 27.929680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573635, 37.848873, 27.765890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278788, -0.301362, -0.911844,
		-0.687677, 0.725417, -0.029497,
		0.670357, 0.618830, -0.409477,
		37.774742, 38.034523, 27.643047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005581, 38.060974, 27.382433>,  <37.305492, 37.601341, 27.929680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005581, 38.060974, 27.382433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.395012, 38.041271, 27.293242>,  <37.628670, 38.029449, 27.239727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.395012, 38.041271, 27.293242>,  <37.005581, 38.060974, 27.382433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395012, 38.041271, 27.293242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228324, -0.194616, -0.953935,
		0.003589, 0.979642, -0.200720,
		0.973579, -0.049253, -0.222977,
		37.687084, 38.026497, 27.226349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762180, 38.716743, 27.334238>,  <37.005581, 38.060974, 27.382433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762180, 38.716743, 27.334238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.375862, 38.818424, 27.313736>,  <36.144073, 38.879433, 27.301435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.375862, 38.818424, 27.313736>,  <36.762180, 38.716743, 27.334238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375862, 38.818424, 27.313736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042589, 0.039479, 0.998312,
		0.255796, 0.966345, -0.027302,
		-0.965792, 0.254202, -0.051255,
		36.086124, 38.894684, 27.298359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728512, 39.230743, 27.750168>,  <36.762180, 38.716743, 27.334238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728512, 39.230743, 27.750168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347046, 39.117889, 27.708349>,  <36.118168, 39.050179, 27.683258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347046, 39.117889, 27.708349>,  <36.728512, 39.230743, 27.750168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347046, 39.117889, 27.708349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143829, 0.122277, 0.982019,
		-0.264276, 0.951551, -0.157190,
		-0.953662, -0.282133, -0.104546,
		36.060947, 39.033249, 27.676985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368179, 39.675220, 28.279272>,  <36.728512, 39.230743, 27.750168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368179, 39.675220, 28.279272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105362, 39.391201, 28.177979>,  <35.947670, 39.220791, 28.117203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105362, 39.391201, 28.177979>,  <36.368179, 39.675220, 28.279272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105362, 39.391201, 28.177979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377733, 0.019384, 0.925712,
		-0.652388, 0.703889, -0.280944,
		-0.657044, -0.710045, -0.253236,
		35.908249, 39.178188, 28.102007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743057, 39.903233, 28.544779>,  <36.368179, 39.675220, 28.279272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743057, 39.903233, 28.544779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.678673, 39.511333, 28.497143>,  <35.640041, 39.276192, 28.468561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.678673, 39.511333, 28.497143>,  <35.743057, 39.903233, 28.544779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678673, 39.511333, 28.497143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311349, -0.064094, 0.948132,
		-0.936565, 0.189690, -0.294728,
		-0.160960, -0.979750, -0.119088,
		35.630386, 39.217407, 28.461416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082333, 39.827736, 28.902229>,  <35.743057, 39.903233, 28.544779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082333, 39.827736, 28.902229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.281727, 39.483261, 28.862513>,  <35.401363, 39.276577, 28.838682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.281727, 39.483261, 28.862513>,  <35.082333, 39.827736, 28.902229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281727, 39.483261, 28.862513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153438, -0.200378, 0.967629,
		-0.853209, -0.467117, -0.232026,
		0.498489, -0.861191, -0.099291,
		35.431274, 39.224903, 28.832726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709137, 39.381092, 29.178192>,  <35.082333, 39.827736, 28.902229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709137, 39.381092, 29.178192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.072140, 39.213161, 29.183441>,  <35.289944, 39.112404, 29.186590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.072140, 39.213161, 29.183441>,  <34.709137, 39.381092, 29.178192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072140, 39.213161, 29.183441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062494, -0.104057, 0.992606,
		-0.415359, -0.901619, -0.120669,
		0.907509, -0.419829, 0.013125,
		35.344391, 39.087212, 29.187378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716648, 38.688721, 29.431875>,  <34.709137, 39.381092, 29.178192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716648, 38.688721, 29.431875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.080265, 38.840420, 29.500938>,  <35.298435, 38.931438, 29.542376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.080265, 38.840420, 29.500938>,  <34.716648, 38.688721, 29.431875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080265, 38.840420, 29.500938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108968, -0.183574, 0.976948,
		0.402200, -0.906903, -0.125551,
		0.909044, 0.379247, 0.172657,
		35.352978, 38.954193, 29.552736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948532, 38.335808, 29.982397>,  <34.716648, 38.688721, 29.431875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948532, 38.335808, 29.982397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.248367, 38.600552, 29.979465>,  <35.428268, 38.759399, 29.977707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.248367, 38.600552, 29.979465>,  <34.948532, 38.335808, 29.982397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248367, 38.600552, 29.979465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105413, -0.108440, 0.988498,
		0.653455, -0.741740, -0.151055,
		0.749589, 0.661862, -0.007329,
		35.473244, 38.799110, 29.977266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372471, 38.070179, 30.574179>,  <34.948532, 38.335808, 29.982397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372471, 38.070179, 30.574179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.484676, 38.446831, 30.499714>,  <35.551998, 38.672821, 30.455036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.484676, 38.446831, 30.499714>,  <35.372471, 38.070179, 30.574179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484676, 38.446831, 30.499714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161393, 0.144915, 0.976193,
		0.946185, -0.303877, -0.111322,
		0.280510, 0.941626, -0.186161,
		35.568829, 38.729317, 30.443865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030659, 38.267719, 31.007320>,  <35.372471, 38.070179, 30.574179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030659, 38.267719, 31.007320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.845165, 38.611076, 30.919582>,  <35.733868, 38.817089, 30.866940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.845165, 38.611076, 30.919582>,  <36.030659, 38.267719, 31.007320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845165, 38.611076, 30.919582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127442, 0.309627, 0.942279,
		0.876762, 0.409012, -0.252979,
		-0.463733, 0.858394, -0.219344,
		35.706047, 38.868595, 30.853779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414196, 38.815323, 31.344063>,  <36.030659, 38.267719, 31.007320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414196, 38.815323, 31.344063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065910, 38.992722, 31.259058>,  <35.856937, 39.099163, 31.208055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065910, 38.992722, 31.259058>,  <36.414196, 38.815323, 31.344063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065910, 38.992722, 31.259058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018123, 0.402890, 0.915069,
		0.491451, 0.800617, -0.342766,
		-0.870717, 0.443500, -0.212510,
		35.804695, 39.125771, 31.195305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558994, 39.537582, 31.423695>,  <36.414196, 38.815323, 31.344063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558994, 39.537582, 31.423695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.177227, 39.424820, 31.462915>,  <35.948166, 39.357162, 31.486448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.177227, 39.424820, 31.462915>,  <36.558994, 39.537582, 31.423695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177227, 39.424820, 31.462915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009459, 0.356910, 0.934091,
		-0.298323, 0.890586, -0.343308,
		-0.954418, -0.281908, 0.098050,
		35.890903, 39.340248, 31.492331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.628819, 38.928082, 23.455462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235386, 38.957817, 23.521244>,  <35.999329, 38.975658, 23.560713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235386, 38.957817, 23.521244>,  <36.628819, 38.928082, 23.455462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235386, 38.957817, 23.521244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180177, 0.351972, 0.918505,
		0.010398, 0.933054, -0.359587,
		-0.983579, 0.074340, 0.164455,
		35.940311, 38.980118, 23.570581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510452, 39.651447, 23.747587>,  <36.628819, 38.928082, 23.455462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510452, 39.651447, 23.747587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236740, 39.383640, 23.863169>,  <36.072514, 39.222954, 23.932518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236740, 39.383640, 23.863169>,  <36.510452, 39.651447, 23.747587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236740, 39.383640, 23.863169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264642, 0.141229, 0.953949,
		-0.679499, 0.729242, 0.080542,
		-0.684285, -0.669522, 0.288953,
		36.031456, 39.182785, 23.949854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122299, 40.005287, 24.380003>,  <36.510452, 39.651447, 23.747587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122299, 40.005287, 24.380003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020905, 39.618355, 24.378300>,  <35.960068, 39.386196, 24.377277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020905, 39.618355, 24.378300>,  <36.122299, 40.005287, 24.380003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020905, 39.618355, 24.378300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192606, -0.054783, 0.979746,
		-0.947971, 0.247530, 0.200200,
		-0.253484, -0.967330, -0.004257,
		35.944859, 39.328156, 24.377022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583889, 39.952930, 24.886679>,  <36.122299, 40.005287, 24.380003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583889, 39.952930, 24.886679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699936, 39.571690, 24.852207>,  <35.769566, 39.342945, 24.831524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699936, 39.571690, 24.852207>,  <35.583889, 39.952930, 24.886679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699936, 39.571690, 24.852207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150295, -0.043556, 0.987681,
		-0.945116, -0.299494, 0.130610,
		0.290116, -0.953103, -0.086178,
		35.786972, 39.285759, 24.826353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136429, 39.558010, 25.341106>,  <35.583889, 39.952930, 24.886679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136429, 39.558010, 25.341106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471073, 39.347977, 25.278669>,  <35.671860, 39.221958, 25.241207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471073, 39.347977, 25.278669>,  <35.136429, 39.558010, 25.341106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471073, 39.347977, 25.278669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006878, -0.294993, 0.955475,
		-0.547748, -0.798291, -0.250407,
		0.836614, -0.525082, -0.156091,
		35.722057, 39.190453, 25.231842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952835, 38.930500, 25.702627>,  <35.136429, 39.558010, 25.341106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952835, 38.930500, 25.702627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347290, 38.983498, 25.662680>,  <35.583965, 39.015297, 25.638712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347290, 38.983498, 25.662680>,  <34.952835, 38.930500, 25.702627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347290, 38.983498, 25.662680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135016, -0.291017, 0.947143,
		0.096426, -0.947500, -0.304872,
		0.986141, 0.132491, -0.099866,
		35.643131, 39.023247, 25.632719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247929, 38.304619, 26.031101>,  <34.952835, 38.930500, 25.702627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247929, 38.304619, 26.031101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541473, 38.576263, 26.024797>,  <35.717602, 38.739250, 26.021015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541473, 38.576263, 26.024797>,  <35.247929, 38.304619, 26.031101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541473, 38.576263, 26.024797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103597, -0.088964, 0.990633,
		0.671349, -0.728623, -0.135641,
		0.733866, 0.679112, -0.015758,
		35.761635, 38.779999, 26.020071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861557, 38.086121, 26.450466>,  <35.247929, 38.304619, 26.031101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861557, 38.086121, 26.450466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821964, 38.483257, 26.423758>,  <35.798210, 38.721542, 26.407732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821964, 38.483257, 26.423758>,  <35.861557, 38.086121, 26.450466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821964, 38.483257, 26.423758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161083, 0.082203, 0.983511,
		0.981965, 0.086595, -0.168068,
		-0.098983, 0.992846, -0.066771,
		35.792271, 38.781113, 26.403727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469604, 38.315628, 26.794380>,  <35.861557, 38.086121, 26.450466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469604, 38.315628, 26.794380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218670, 38.625320, 26.827860>,  <36.068108, 38.811138, 26.847948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218670, 38.625320, 26.827860>,  <36.469604, 38.315628, 26.794380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218670, 38.625320, 26.827860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025294, -0.127683, 0.991493,
		0.778335, 0.619885, 0.099684,
		-0.627340, 0.774235, 0.083701,
		36.030468, 38.857590, 26.852970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214607, 38.411301, 26.679453>,  <36.469604, 38.315628, 26.794380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214607, 38.411301, 26.679453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538860, 38.186111, 26.743868>,  <37.733414, 38.050999, 26.782516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538860, 38.186111, 26.743868>,  <37.214607, 38.411301, 26.679453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538860, 38.186111, 26.743868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076749, -0.170489, -0.982366,
		0.580503, 0.808698, -0.094996,
		0.810633, -0.562975, 0.161036,
		37.782051, 38.017220, 26.792179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608147, 38.518650, 26.131392>,  <37.214607, 38.411301, 26.679453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608147, 38.518650, 26.131392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783947, 38.193062, 26.283337>,  <37.889427, 37.997707, 26.374504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783947, 38.193062, 26.283337>,  <37.608147, 38.518650, 26.131392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783947, 38.193062, 26.283337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180401, -0.334292, -0.925043,
		0.879942, 0.475081, -0.000079,
		0.439497, -0.813970, 0.379862,
		37.915794, 37.948872, 26.397295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353317, 38.504627, 25.766603>,  <37.608147, 38.518650, 26.131392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353317, 38.504627, 25.766603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227467, 38.139709, 25.871469>,  <38.151955, 37.920757, 25.934389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227467, 38.139709, 25.871469>,  <38.353317, 38.504627, 25.766603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227467, 38.139709, 25.871469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238015, -0.343190, -0.908609,
		0.918890, -0.223475, 0.325117,
		-0.314628, -0.912294, 0.262163,
		38.133080, 37.866020, 25.950119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719162, 37.983730, 25.342888>,  <38.353317, 38.504627, 25.766603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719162, 37.983730, 25.342888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428139, 37.752346, 25.490423>,  <38.253525, 37.613514, 25.578945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428139, 37.752346, 25.490423>,  <38.719162, 37.983730, 25.342888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428139, 37.752346, 25.490423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059508, -0.482391, -0.873932,
		0.683464, -0.657783, 0.316543,
		-0.727555, -0.578464, 0.368840,
		38.209873, 37.578808, 25.601076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035522, 37.172565, 25.302790>,  <38.719162, 37.983730, 25.342888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035522, 37.172565, 25.302790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636047, 37.188286, 25.289604>,  <38.396362, 37.197720, 25.281693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636047, 37.188286, 25.289604>,  <39.035522, 37.172565, 25.302790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636047, 37.188286, 25.289604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006266, -0.544332, -0.838846,
		-0.050914, -0.837949, 0.543369,
		-0.998684, 0.039304, -0.032964,
		38.336441, 37.200077, 25.279715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889957, 36.626202, 24.965481>,  <39.035522, 37.172565, 25.302790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889957, 36.626202, 24.965481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533939, 36.805557, 24.932566>,  <38.320328, 36.913170, 24.912817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533939, 36.805557, 24.932566>,  <38.889957, 36.626202, 24.965481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533939, 36.805557, 24.932566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080605, -0.332454, -0.939668,
		-0.448693, -0.829713, 0.332041,
		-0.890044, 0.448387, -0.082290,
		38.266926, 36.940071, 24.907879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529881, 36.173336, 24.666622>,  <38.889957, 36.626202, 24.965481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529881, 36.173336, 24.666622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298180, 36.493370, 24.604219>,  <38.159161, 36.685390, 24.566778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298180, 36.493370, 24.604219>,  <38.529881, 36.173336, 24.666622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298180, 36.493370, 24.604219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075809, -0.243430, -0.966951,
		-0.811617, -0.548280, 0.201660,
		-0.579250, 0.800082, -0.156007,
		38.124405, 36.733395, 24.557417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107563, 36.018768, 24.119303>,  <38.529881, 36.173336, 24.666622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107563, 36.018768, 24.119303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058884, 36.415581, 24.106262>,  <38.029675, 36.653667, 24.098438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058884, 36.415581, 24.106262>,  <38.107563, 36.018768, 24.119303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058884, 36.415581, 24.106262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031084, -0.036636, -0.998845,
		-0.992080, -0.120544, 0.035294,
		-0.121698, 0.992032, -0.032599,
		38.022373, 36.713192, 24.096483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511723, 36.034481, 23.753515>,  <38.107563, 36.018768, 24.119303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511723, 36.034481, 23.753515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676292, 36.396431, 23.709827>,  <37.775036, 36.613602, 23.683615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676292, 36.396431, 23.709827>,  <37.511723, 36.034481, 23.753515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676292, 36.396431, 23.709827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237362, -0.009323, -0.971377,
		-0.879994, 0.425573, 0.210947,
		0.411425, 0.904876, -0.109219,
		37.799721, 36.667892, 23.677061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031063, 36.488571, 23.473825>,  <37.511723, 36.034481, 23.753515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031063, 36.488571, 23.473825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380978, 36.663673, 23.390762>,  <37.590927, 36.768734, 23.340923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380978, 36.663673, 23.390762>,  <37.031063, 36.488571, 23.473825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380978, 36.663673, 23.390762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298478, 0.149281, -0.942670,
		-0.381660, 0.886614, 0.261250,
		0.874784, 0.437757, -0.207660,
		37.643414, 36.795002, 23.328465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838451, 36.936016, 22.937901>,  <37.031063, 36.488571, 23.473825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838451, 36.936016, 22.937901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237728, 36.943893, 22.915209>,  <37.477295, 36.948620, 22.901594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237728, 36.943893, 22.915209>,  <36.838451, 36.936016, 22.937901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237728, 36.943893, 22.915209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059713, 0.225636, -0.972380,
		-0.006351, 0.974012, 0.226405,
		0.998195, 0.019695, -0.056729,
		37.537186, 36.949802, 22.898190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100666, 37.572594, 22.555618>,  <36.838451, 36.936016, 22.937901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100666, 37.572594, 22.555618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401791, 37.311478, 22.521830>,  <37.582466, 37.154808, 22.501556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401791, 37.311478, 22.521830>,  <37.100666, 37.572594, 22.555618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401791, 37.311478, 22.521830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055350, 0.190655, -0.980095,
		0.655901, 0.733155, 0.179660,
		0.752815, -0.652790, -0.084471,
		37.627636, 37.115643, 22.496489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549000, 37.942276, 22.045912>,  <37.100666, 37.572594, 22.555618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549000, 37.942276, 22.045912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655743, 37.556923, 22.056393>,  <37.719788, 37.325710, 22.062681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655743, 37.556923, 22.056393>,  <37.549000, 37.942276, 22.045912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655743, 37.556923, 22.056393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148778, 0.014320, -0.988767,
		0.952182, 0.267760, 0.147151,
		0.266859, -0.963379, 0.026202,
		37.735802, 37.267910, 22.064253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206623, 37.923889, 21.753565>,  <37.549000, 37.942276, 22.045912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206623, 37.923889, 21.753565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049114, 37.556652, 21.735458>,  <37.954609, 37.336311, 21.724594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049114, 37.556652, 21.735458>,  <38.206623, 37.923889, 21.753565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049114, 37.556652, 21.735458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269753, -0.068340, -0.960502,
		0.878737, -0.390428, 0.274568,
		-0.393771, -0.918093, -0.045266,
		37.930984, 37.281223, 21.721878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.645601, 33.331409, 23.232567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012253, 33.462769, 23.141399>,  <32.232243, 33.541584, 23.086699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012253, 33.462769, 23.141399>,  <31.645601, 33.331409, 23.232567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012253, 33.462769, 23.141399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212231, 0.083362, 0.973657,
		0.338750, -0.940852, 0.006716,
		0.916628, 0.328401, -0.227917,
		32.287243, 33.561291, 23.073025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214840, 32.952351, 23.685417>,  <31.645601, 33.331409, 23.232567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214840, 32.952351, 23.685417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.364296, 33.299427, 23.554266>,  <32.453968, 33.507675, 23.475576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.364296, 33.299427, 23.554266>,  <32.214840, 32.952351, 23.685417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364296, 33.299427, 23.554266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405545, 0.165092, 0.899043,
		0.834223, -0.468885, -0.290204,
		0.373637, 0.867693, -0.327877,
		32.476387, 33.559734, 23.455902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952579, 32.873520, 23.944811>,  <32.214840, 32.952351, 23.685417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952579, 32.873520, 23.944811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.830700, 33.249844, 23.885420>,  <32.757572, 33.475636, 23.849785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.830700, 33.249844, 23.885420>,  <32.952579, 32.873520, 23.944811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830700, 33.249844, 23.885420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199461, 0.215462, 0.955924,
		0.931330, 0.261651, -0.253304,
		-0.304697, 0.940805, -0.148477,
		32.739292, 33.532085, 23.840878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509193, 33.246422, 24.251888>,  <32.952579, 32.873520, 23.944811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509193, 33.246422, 24.251888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.212391, 33.512604, 24.219398>,  <33.034309, 33.672314, 24.199905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.212391, 33.512604, 24.219398>,  <33.509193, 33.246422, 24.251888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212391, 33.512604, 24.219398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238979, 0.375758, 0.895374,
		0.626350, 0.644963, -0.437845,
		-0.742007, 0.665453, -0.081223,
		32.989788, 33.712238, 24.195032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816673, 33.890762, 24.549738>,  <33.509193, 33.246422, 24.251888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816673, 33.890762, 24.549738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.417042, 33.882149, 24.534941>,  <33.177261, 33.876980, 24.526062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.417042, 33.882149, 24.534941>,  <33.816673, 33.890762, 24.549738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417042, 33.882149, 24.534941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040877, 0.223667, 0.973808,
		-0.012700, 0.974428, -0.224342,
		-0.999084, -0.021537, -0.036991,
		33.117317, 33.875687, 24.523844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767864, 34.545918, 24.873194>,  <33.816673, 33.890762, 24.549738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767864, 34.545918, 24.873194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.410370, 34.366661, 24.881285>,  <33.195873, 34.259106, 24.886139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.410370, 34.366661, 24.881285>,  <33.767864, 34.545918, 24.873194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410370, 34.366661, 24.881285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165449, 0.371193, 0.913697,
		-0.416975, 0.813255, -0.405892,
		-0.893733, -0.448143, 0.020226,
		33.142250, 34.232220, 24.887352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136902, 35.117088, 24.858416>,  <33.767864, 34.545918, 24.873194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136902, 35.117088, 24.858416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.007095, 34.772671, 25.015026>,  <32.929211, 34.566021, 25.108992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.007095, 34.772671, 25.015026>,  <33.136902, 35.117088, 24.858416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007095, 34.772671, 25.015026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080231, 0.437493, 0.895636,
		-0.942473, 0.259232, -0.211054,
		-0.324512, -0.861045, 0.391527,
		32.909740, 34.514359, 25.132484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419903, 35.249294, 25.237118>,  <33.136902, 35.117088, 24.858416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419903, 35.249294, 25.237118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.582615, 34.924671, 25.404884>,  <32.680241, 34.729897, 25.505545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.582615, 34.924671, 25.404884>,  <32.419903, 35.249294, 25.237118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582615, 34.924671, 25.404884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049811, 0.438733, 0.897236,
		-0.912169, -0.385866, 0.138042,
		0.406776, -0.811555, 0.419419,
		32.704647, 34.681206, 25.530710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053715, 35.166012, 25.910717>,  <32.419903, 35.249294, 25.237118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053715, 35.166012, 25.910717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.350994, 34.903687, 25.963730>,  <32.529362, 34.746292, 25.995539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.350994, 34.903687, 25.963730>,  <32.053715, 35.166012, 25.910717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350994, 34.903687, 25.963730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115562, 0.069286, 0.990881,
		-0.659020, -0.751733, -0.024295,
		0.743195, -0.655818, 0.132533,
		32.573952, 34.706940, 26.003490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829798, 34.665737, 26.451206>,  <32.053715, 35.166012, 25.910717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829798, 34.665737, 26.451206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229584, 34.652771, 26.453106>,  <32.469456, 34.644989, 26.454247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229584, 34.652771, 26.453106>,  <31.829798, 34.665737, 26.451206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229584, 34.652771, 26.453106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003544, 0.037162, 0.999303,
		-0.032576, -0.998783, 0.037028,
		0.999463, -0.032422, 0.004750,
		32.529423, 34.643044, 26.454531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966822, 34.275993, 26.930410>,  <31.829798, 34.665737, 26.451206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966822, 34.275993, 26.930410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.328430, 34.443958, 26.898359>,  <32.545395, 34.544735, 26.879129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.328430, 34.443958, 26.898359>,  <31.966822, 34.275993, 26.930410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328430, 34.443958, 26.898359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103941, -0.034100, 0.993999,
		0.414658, -0.906925, -0.074473,
		0.904022, 0.419910, -0.080127,
		32.599636, 34.569931, 26.874321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345497, 33.926811, 27.456327>,  <31.966822, 34.275993, 26.930410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345497, 33.926811, 27.456327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.570240, 34.246555, 27.371161>,  <32.705086, 34.438404, 27.320061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.570240, 34.246555, 27.371161>,  <32.345497, 33.926811, 27.456327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570240, 34.246555, 27.371161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101220, 0.189016, 0.976743,
		0.821018, -0.570342, 0.025288,
		0.561857, 0.799364, -0.212916,
		32.738796, 34.486366, 27.307285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030952, 33.859676, 27.806309>,  <32.345497, 33.926811, 27.456327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030952, 33.859676, 27.806309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943810, 34.249516, 27.785530>,  <32.891525, 34.483418, 27.773062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943810, 34.249516, 27.785530>,  <33.030952, 33.859676, 27.806309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943810, 34.249516, 27.785530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287910, 0.115034, 0.950723,
		0.932549, 0.192163, -0.305657,
		-0.217854, 0.974598, -0.051949,
		32.878452, 34.541893, 27.769945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474586, 34.102757, 28.229959>,  <33.030952, 33.859676, 27.806309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474586, 34.102757, 28.229959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.219841, 34.408447, 28.189245>,  <33.066994, 34.591862, 28.164816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.219841, 34.408447, 28.189245>,  <33.474586, 34.102757, 28.229959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219841, 34.408447, 28.189245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087935, 0.203164, 0.975188,
		0.765947, 0.612108, -0.196590,
		-0.636861, 0.764230, -0.101788,
		33.028782, 34.637714, 28.158709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141224, 34.239468, 27.858526>,  <33.474586, 34.102757, 28.229959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141224, 34.239468, 27.858526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.522411, 34.174248, 27.960709>,  <34.751125, 34.135117, 28.022018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.522411, 34.174248, 27.960709>,  <34.141224, 34.239468, 27.858526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522411, 34.174248, 27.960709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133193, -0.531825, -0.836314,
		0.272219, 0.831010, -0.485097,
		0.952972, -0.163049, 0.255457,
		34.808304, 34.125332, 28.037346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516064, 34.532799, 27.296600>,  <34.141224, 34.239468, 27.858526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516064, 34.532799, 27.296600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755978, 34.269608, 27.478733>,  <34.899925, 34.111694, 27.588013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755978, 34.269608, 27.478733>,  <34.516064, 34.532799, 27.296600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755978, 34.269608, 27.478733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188760, -0.436641, -0.879610,
		0.777577, 0.613527, -0.137692,
		0.599787, -0.657973, 0.455332,
		34.935913, 34.072216, 27.615332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226456, 34.476559, 26.926146>,  <34.516064, 34.532799, 27.296600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226456, 34.476559, 26.926146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.211056, 34.132099, 27.128902>,  <35.201817, 33.925423, 27.250557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.211056, 34.132099, 27.128902>,  <35.226456, 34.476559, 26.926146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211056, 34.132099, 27.128902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010208, -0.506902, -0.861943,
		0.999206, -0.038359, 0.010725,
		-0.038500, -0.861150, 0.506891,
		35.199505, 33.873753, 27.280970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890278, 34.066811, 26.761320>,  <35.226456, 34.476559, 26.926146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890278, 34.066811, 26.761320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.601120, 33.817814, 26.881269>,  <35.427624, 33.668415, 26.953239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.601120, 33.817814, 26.881269>,  <35.890278, 34.066811, 26.761320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601120, 33.817814, 26.881269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160844, -0.573682, -0.803131,
		0.671975, -0.532347, 0.514836,
		-0.722896, -0.622492, 0.299875,
		35.384251, 33.631065, 26.971231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229084, 33.466942, 26.588905>,  <35.890278, 34.066811, 26.761320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229084, 33.466942, 26.588905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836414, 33.401955, 26.628759>,  <35.600815, 33.362965, 26.652672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836414, 33.401955, 26.628759>,  <36.229084, 33.466942, 26.588905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836414, 33.401955, 26.628759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016393, -0.592838, -0.805155,
		0.189879, -0.788764, 0.584635,
		-0.981671, -0.162466, 0.099637,
		35.541912, 33.353214, 26.658651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110081, 32.703842, 26.407042>,  <36.229084, 33.466942, 26.588905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110081, 32.703842, 26.407042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758545, 32.891720, 26.373516>,  <35.547623, 33.004448, 26.353401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.758545, 32.891720, 26.373516>,  <36.110081, 32.703842, 26.407042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758545, 32.891720, 26.373516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134274, -0.412053, -0.901212,
		-0.457838, -0.780765, 0.425196,
		-0.878837, 0.469701, -0.083817,
		35.494892, 33.032627, 26.348372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625652, 32.250114, 26.038626>,  <36.110081, 32.703842, 26.407042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625652, 32.250114, 26.038626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.453053, 32.607815, 25.991087>,  <35.349495, 32.822433, 25.962564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.453053, 32.607815, 25.991087>,  <35.625652, 32.250114, 26.038626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453053, 32.607815, 25.991087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107237, -0.181653, -0.977498,
		-0.895718, -0.409042, 0.174279,
		-0.431496, 0.894252, -0.118846,
		35.323605, 32.876091, 25.955433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069687, 32.154175, 25.620054>,  <35.625652, 32.250114, 26.038626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069687, 32.154175, 25.620054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.196781, 32.531166, 25.578508>,  <35.273037, 32.757359, 25.553581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.196781, 32.531166, 25.578508>,  <35.069687, 32.154175, 25.620054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196781, 32.531166, 25.578508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153159, -0.057090, -0.986551,
		-0.935728, 0.329370, 0.126209,
		0.317735, 0.942474, -0.103867,
		35.292103, 32.813908, 25.547348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713078, 32.355648, 25.074299>,  <35.069687, 32.154175, 25.620054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713078, 32.355648, 25.074299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.991440, 32.642849, 25.079659>,  <35.158459, 32.815170, 25.082874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.991440, 32.642849, 25.079659>,  <34.713078, 32.355648, 25.074299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991440, 32.642849, 25.079659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113265, 0.128168, -0.985264,
		-0.709143, 0.684135, 0.170518,
		0.695908, 0.718006, 0.013400,
		35.200211, 32.858250, 25.083679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426205, 32.978840, 24.570646>,  <34.713078, 32.355648, 25.074299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426205, 32.978840, 24.570646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823769, 33.016216, 24.594032>,  <35.062305, 33.038643, 24.608065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823769, 33.016216, 24.594032>,  <34.426205, 32.978840, 24.570646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823769, 33.016216, 24.594032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035771, 0.228288, -0.972936,
		-0.104260, 0.969099, 0.223554,
		0.993907, 0.093442, 0.058467,
		35.121941, 33.044250, 24.611572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485538, 33.554688, 24.271255>,  <34.426205, 32.978840, 24.570646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485538, 33.554688, 24.271255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839481, 33.369797, 24.248003>,  <35.051846, 33.258862, 24.234051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.839481, 33.369797, 24.248003>,  <34.485538, 33.554688, 24.271255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839481, 33.369797, 24.248003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025247, 0.172178, -0.984742,
		0.465184, 0.869885, 0.164023,
		0.884854, -0.462228, -0.058133,
		35.104939, 33.231129, 24.230562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822182, 34.017319, 23.877682>,  <34.485538, 33.554688, 24.271255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822182, 34.017319, 23.877682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030830, 33.676472, 23.860666>,  <35.156021, 33.471966, 23.850456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030830, 33.676472, 23.860666>,  <34.822182, 34.017319, 23.877682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030830, 33.676472, 23.860666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203329, 0.172584, -0.963780,
		0.828592, 0.494082, 0.263284,
		0.521625, -0.852113, -0.042540,
		35.187317, 33.420837, 23.847904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399677, 34.169765, 23.532934>,  <34.822182, 34.017319, 23.877682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399677, 34.169765, 23.532934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.393257, 33.770081, 23.518435>,  <35.389404, 33.530270, 23.509735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.393257, 33.770081, 23.518435>,  <35.399677, 34.169765, 23.532934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393257, 33.770081, 23.518435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246363, 0.031185, -0.968676,
		0.969045, -0.024479, 0.245669,
		-0.016051, -0.999214, -0.036251,
		35.388443, 33.470318, 23.507559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078934, 33.914227, 23.285656>,  <35.399677, 34.169765, 23.532934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078934, 33.914227, 23.285656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.802364, 33.639236, 23.196833>,  <35.636425, 33.474243, 23.143538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.802364, 33.639236, 23.196833>,  <36.078934, 33.914227, 23.285656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802364, 33.639236, 23.196833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339540, -0.037915, -0.939827,
		0.637692, -0.725213, 0.259642,
		-0.691420, -0.687479, -0.222061,
		35.594940, 33.432991, 23.130215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533733, 34.516541, 23.506548>,  <36.078934, 33.914227, 23.285656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533733, 34.516541, 23.506548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.760471, 34.349339, 23.222588>,  <36.896515, 34.249016, 23.052212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.760471, 34.349339, 23.222588>,  <36.533733, 34.516541, 23.506548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760471, 34.349339, 23.222588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803003, 0.087834, 0.589467,
		-0.184049, -0.904187, 0.385451,
		0.566844, -0.418009, -0.709899,
		36.930523, 34.223934, 23.009619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843170, 33.911934, 23.881924>,  <36.533733, 34.516541, 23.506548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843170, 33.911934, 23.881924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080479, 34.012783, 23.576122>,  <37.222862, 34.073292, 23.392641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080479, 34.012783, 23.576122>,  <36.843170, 33.911934, 23.881924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080479, 34.012783, 23.576122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760122, 0.137223, 0.635125,
		0.265037, -0.957916, -0.110234,
		0.593270, 0.252123, -0.764503,
		37.258461, 34.088421, 23.346771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478577, 33.532955, 23.890192>,  <36.843170, 33.911934, 23.881924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478577, 33.532955, 23.890192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552135, 33.870674, 23.688856>,  <37.596272, 34.073303, 23.568054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552135, 33.870674, 23.688856>,  <37.478577, 33.532955, 23.890192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552135, 33.870674, 23.688856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691314, 0.252928, 0.676839,
		0.698759, -0.472436, -0.537158,
		0.183901, 0.844293, -0.503338,
		37.607307, 34.123962, 23.537855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330044, 33.490383, 23.716444>,  <37.478577, 33.532955, 23.890192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330044, 33.490383, 23.716444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.187111, 33.863247, 23.693117>,  <38.101353, 34.086964, 23.679121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.187111, 33.863247, 23.693117>,  <38.330044, 33.490383, 23.716444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187111, 33.863247, 23.693117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620458, 0.283588, 0.731170,
		0.698102, 0.225088, -0.679698,
		-0.357332, 0.932155, -0.058315,
		38.079910, 34.142895, 23.675623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807541, 33.770004, 24.039806>,  <38.330044, 33.490383, 23.716444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807541, 33.770004, 24.039806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.552143, 34.077076, 24.017918>,  <38.398903, 34.261318, 24.004784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.552143, 34.077076, 24.017918>,  <38.807541, 33.770004, 24.039806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552143, 34.077076, 24.017918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272035, 0.291627, 0.917034,
		0.719947, 0.570633, -0.395037,
		-0.638494, 0.767679, -0.054723,
		38.360596, 34.307381, 24.001501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178398, 34.459003, 24.246332>,  <38.807541, 33.770004, 24.039806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178398, 34.459003, 24.246332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786770, 34.507420, 24.311768>,  <38.551792, 34.536469, 24.351028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786770, 34.507420, 24.311768>,  <39.178398, 34.459003, 24.246332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786770, 34.507420, 24.311768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196104, 0.346423, 0.917352,
		0.054369, 0.930236, -0.362911,
		-0.979075, 0.121044, 0.163589,
		38.493046, 34.543732, 24.360844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120773, 35.150314, 24.549034>,  <39.178398, 34.459003, 24.246332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120773, 35.150314, 24.549034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.798889, 34.930271, 24.638319>,  <38.605759, 34.798244, 24.691891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.798889, 34.930271, 24.638319>,  <39.120773, 35.150314, 24.549034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798889, 34.930271, 24.638319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157648, 0.164482, 0.973700,
		-0.572351, 0.818738, -0.045638,
		-0.804712, -0.550104, 0.223214,
		38.557476, 34.765240, 24.705284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950436, 35.482098, 25.107929>,  <39.120773, 35.150314, 24.549034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950436, 35.482098, 25.107929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.731846, 35.148609, 25.139631>,  <38.600693, 34.948517, 25.158653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.731846, 35.148609, 25.139631>,  <38.950436, 35.482098, 25.107929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731846, 35.148609, 25.139631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188331, -0.030127, 0.981643,
		-0.816025, 0.551370, 0.173479,
		-0.546475, -0.833717, 0.079255,
		38.567902, 34.898495, 25.163408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453629, 35.498314, 25.716326>,  <38.950436, 35.482098, 25.107929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453629, 35.498314, 25.716326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466526, 35.103664, 25.652409>,  <38.474262, 34.866875, 25.614059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.466526, 35.103664, 25.652409>,  <38.453629, 35.498314, 25.716326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466526, 35.103664, 25.652409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138333, -0.153931, 0.978350,
		-0.989861, -0.053648, 0.131520,
		0.032241, -0.986624, -0.159792,
		38.476200, 34.807678, 25.604471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198536, 35.334801, 26.304218>,  <38.453629, 35.498314, 25.716326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198536, 35.334801, 26.304218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354038, 34.995922, 26.159369>,  <38.447338, 34.792595, 26.072458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354038, 34.995922, 26.159369>,  <38.198536, 35.334801, 26.304218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354038, 34.995922, 26.159369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142306, -0.333112, 0.932086,
		-0.910286, -0.413884, -0.008938,
		0.388753, -0.847193, -0.362125,
		38.470665, 34.741764, 26.050732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834625, 34.881981, 26.559801>,  <38.198536, 35.334801, 26.304218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834625, 34.881981, 26.559801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197433, 34.733883, 26.479570>,  <38.415119, 34.645023, 26.431431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.197433, 34.733883, 26.479570>,  <37.834625, 34.881981, 26.559801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197433, 34.733883, 26.479570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114608, -0.241294, 0.963661,
		-0.405193, -0.897047, -0.176425,
		0.907019, -0.370249, -0.200579,
		38.469540, 34.622810, 26.419397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872272, 34.462250, 27.044325>,  <37.834625, 34.881981, 26.559801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872272, 34.462250, 27.044325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245464, 34.441711, 26.901825>,  <38.469379, 34.429386, 26.816324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245464, 34.441711, 26.901825>,  <37.872272, 34.462250, 27.044325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245464, 34.441711, 26.901825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336258, -0.228688, 0.913582,
		-0.128381, -0.972145, -0.196095,
		0.932979, -0.051348, -0.356250,
		38.525356, 34.426308, 26.794950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189682, 33.899036, 27.389282>,  <37.872272, 34.462250, 27.044325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189682, 33.899036, 27.389282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.472466, 34.154537, 27.267820>,  <38.642136, 34.307838, 27.194942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.472466, 34.154537, 27.267820>,  <38.189682, 33.899036, 27.389282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472466, 34.154537, 27.267820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387987, 0.008713, 0.921624,
		0.591335, -0.769363, -0.241668,
		0.706957, 0.638753, -0.303655,
		38.684551, 34.346165, 27.176723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729000, 33.740982, 27.798225>,  <38.189682, 33.899036, 27.389282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729000, 33.740982, 27.798225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851540, 34.096630, 27.662220>,  <38.925064, 34.310020, 27.580616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851540, 34.096630, 27.662220>,  <38.729000, 33.740982, 27.798225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851540, 34.096630, 27.662220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506637, 0.150105, 0.848992,
		0.805897, -0.432349, -0.404479,
		0.306347, 0.889125, -0.340013,
		38.943443, 34.363369, 27.560217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.731186, 37.484280, 21.541016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.415482, 37.252663, 21.459261>,  <38.226059, 37.113693, 21.410208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.415482, 37.252663, 21.459261>,  <38.731186, 37.484280, 21.541016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415482, 37.252663, 21.459261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345547, -0.143670, -0.927338,
		0.507607, -0.802537, 0.313480,
		-0.789261, -0.579045, -0.204386,
		38.178703, 37.078949, 21.397945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005737, 36.886230, 21.129282>,  <38.731186, 37.484280, 21.541016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005737, 36.886230, 21.129282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610821, 36.908512, 21.069754>,  <38.373871, 36.921879, 21.034037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610821, 36.908512, 21.069754>,  <39.005737, 36.886230, 21.129282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610821, 36.908512, 21.069754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145177, -0.064607, -0.987294,
		-0.064607, -0.996355, 0.055700,
		0.987294, -0.055700, 0.148822,
		38.314632, 36.925220, 21.025106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929310, 36.423401, 20.431492>,  <39.005737, 36.886230, 21.129282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929310, 36.423401, 20.431492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593597, 36.632591, 20.490963>,  <38.392170, 36.758106, 20.526646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593597, 36.632591, 20.490963>,  <38.929310, 36.423401, 20.431492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593597, 36.632591, 20.490963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201807, -0.045729, -0.978357,
		-0.504856, -0.851121, 0.143920,
		-0.839282, 0.522974, 0.148676,
		38.341812, 36.789482, 20.535566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305302, 35.918259, 20.262205>,  <38.929310, 36.423401, 20.431492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305302, 35.918259, 20.262205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230114, 36.308563, 20.217377>,  <38.185001, 36.542747, 20.190479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230114, 36.308563, 20.217377>,  <38.305302, 35.918259, 20.262205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230114, 36.308563, 20.217377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037809, -0.121208, -0.991907,
		-0.981447, -0.182209, 0.059676,
		-0.187968, 0.975760, -0.112070,
		38.173725, 36.601292, 20.183756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734749, 35.900047, 19.958239>,  <38.305302, 35.918259, 20.262205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734749, 35.900047, 19.958239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923763, 36.245110, 19.886093>,  <38.037174, 36.452148, 19.842806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923763, 36.245110, 19.886093>,  <37.734749, 35.900047, 19.958239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923763, 36.245110, 19.886093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135647, -0.131024, -0.982055,
		-0.870807, 0.488526, 0.055103,
		0.472540, 0.862656, -0.180364,
		38.065525, 36.503906, 19.831984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330444, 36.299812, 19.423073>,  <37.734749, 35.900047, 19.958239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330444, 36.299812, 19.423073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.696083, 36.461674, 19.412596>,  <37.915466, 36.558788, 19.406309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.696083, 36.461674, 19.412596>,  <37.330444, 36.299812, 19.423073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696083, 36.461674, 19.412596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027480, -0.126259, -0.991617,
		-0.404564, 0.905714, -0.126533,
		0.914097, 0.404649, -0.026191,
		37.970310, 36.583069, 19.404737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269432, 36.830299, 18.907026>,  <37.330444, 36.299812, 19.423073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269432, 36.830299, 18.907026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654221, 36.754459, 18.985676>,  <37.885094, 36.708958, 19.032866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.654221, 36.754459, 18.985676>,  <37.269432, 36.830299, 18.907026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654221, 36.754459, 18.985676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201216, 0.005082, -0.979534,
		0.184716, 0.981849, 0.043039,
		0.961973, -0.189595, 0.196625,
		37.942814, 36.697582, 19.044662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639534, 37.374886, 18.502211>,  <37.269432, 36.830299, 18.907026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639534, 37.374886, 18.502211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.838085, 37.039364, 18.591669>,  <37.957214, 36.838051, 18.645344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.838085, 37.039364, 18.591669>,  <37.639534, 37.374886, 18.502211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838085, 37.039364, 18.591669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292756, -0.080788, -0.952768,
		0.817254, 0.538405, 0.205464,
		0.496376, -0.838805, 0.223645,
		37.987000, 36.787724, 18.658762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290638, 37.365696, 18.100832>,  <37.639534, 37.374886, 18.502211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290638, 37.365696, 18.100832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246006, 36.978680, 18.191538>,  <38.219227, 36.746471, 18.245960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246006, 36.978680, 18.191538>,  <38.290638, 37.365696, 18.100832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246006, 36.978680, 18.191538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227175, -0.246981, -0.942015,
		0.967440, -0.053596, 0.247359,
		-0.111581, -0.967537, 0.226764,
		38.212532, 36.688419, 18.259567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857422, 37.025703, 17.767313>,  <38.290638, 37.365696, 18.100832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857422, 37.025703, 17.767313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601574, 36.731800, 17.857666>,  <38.448067, 36.555458, 17.911877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601574, 36.731800, 17.857666>,  <38.857422, 37.025703, 17.767313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601574, 36.731800, 17.857666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021338, -0.310710, -0.950265,
		0.768398, -0.602986, 0.214414,
		-0.639617, -0.734757, 0.225882,
		38.409687, 36.511372, 17.925430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171234, 36.465057, 17.484579>,  <38.857422, 37.025703, 17.767313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171234, 36.465057, 17.484579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786442, 36.366425, 17.531565>,  <38.555569, 36.307247, 17.559755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786442, 36.366425, 17.531565>,  <39.171234, 36.465057, 17.484579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786442, 36.366425, 17.531565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039147, -0.301146, -0.952774,
		0.270309, -0.921146, 0.280043,
		-0.961977, -0.246580, 0.117463,
		38.497849, 36.292450, 17.566803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050270, 35.717030, 17.295883>,  <39.171234, 36.465057, 17.484579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050270, 35.717030, 17.295883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.733616, 35.951267, 17.226145>,  <38.543625, 36.091808, 17.184301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.733616, 35.951267, 17.226145>,  <39.050270, 35.717030, 17.295883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733616, 35.951267, 17.226145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024278, -0.315268, -0.948692,
		-0.610515, -0.746783, 0.263793,
		-0.791632, 0.585595, -0.174345,
		38.496124, 36.126945, 17.173841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492107, 35.329212, 17.035925>,  <39.050270, 35.717030, 17.295883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492107, 35.329212, 17.035925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416336, 35.700417, 16.907604>,  <38.370872, 35.923138, 16.830612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.416336, 35.700417, 16.907604>,  <38.492107, 35.329212, 17.035925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416336, 35.700417, 16.907604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142067, -0.349185, -0.926222,
		-0.971562, -0.129880, 0.197986,
		-0.189431, 0.928009, -0.320803,
		38.359509, 35.978821, 16.811363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769730, 35.422031, 16.750830>,  <38.492107, 35.329212, 17.035925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769730, 35.422031, 16.750830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.055511, 35.646061, 16.583082>,  <38.226982, 35.780479, 16.482433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.055511, 35.646061, 16.583082>,  <37.769730, 35.422031, 16.750830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055511, 35.646061, 16.583082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060547, -0.547637, -0.834523,
		-0.697055, 0.621623, -0.357352,
		0.714457, 0.560071, -0.419370,
		38.269848, 35.814083, 16.457272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867828, 34.632816, 16.881514>,  <37.769730, 35.422031, 16.750830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867828, 34.632816, 16.881514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.717396, 34.264294, 16.921045>,  <37.627136, 34.043182, 16.944763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.717396, 34.264294, 16.921045>,  <37.867828, 34.632816, 16.881514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717396, 34.264294, 16.921045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062781, 0.081077, 0.994729,
		-0.924458, 0.380301, 0.027349,
		-0.376079, -0.921302, 0.098828,
		37.604572, 33.987904, 16.950693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265282, 34.683540, 17.368225>,  <37.867828, 34.632816, 16.881514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265282, 34.683540, 17.368225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381054, 34.300903, 17.381893>,  <37.450520, 34.071323, 17.390095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381054, 34.300903, 17.381893>,  <37.265282, 34.683540, 17.368225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381054, 34.300903, 17.381893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125584, 0.073340, 0.989368,
		-0.948924, -0.282065, 0.141359,
		0.289434, -0.956588, 0.034171,
		37.467884, 34.013927, 17.392145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849098, 34.334915, 17.821678>,  <37.265282, 34.683540, 17.368225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849098, 34.334915, 17.821678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.162865, 34.087044, 17.811199>,  <37.351124, 33.938320, 17.804913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.162865, 34.087044, 17.811199>,  <36.849098, 34.334915, 17.821678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162865, 34.087044, 17.811199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069842, -0.130221, 0.989022,
		-0.616291, -0.773974, -0.145427,
		0.784415, -0.619682, -0.026198,
		37.398190, 33.901138, 17.803339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704311, 33.816650, 18.253916>,  <36.849098, 34.334915, 17.821678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704311, 33.816650, 18.253916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.098473, 33.750908, 18.236198>,  <37.334969, 33.711460, 18.225569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.098473, 33.750908, 18.236198>,  <36.704311, 33.816650, 18.253916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098473, 33.750908, 18.236198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013415, -0.334377, 0.942344,
		-0.169694, -0.927997, -0.331701,
		0.985405, -0.164360, -0.044292,
		37.394093, 33.701599, 18.222910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783760, 33.119251, 18.507645>,  <36.704311, 33.816650, 18.253916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783760, 33.119251, 18.507645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136326, 33.300617, 18.560606>,  <37.347866, 33.409435, 18.592382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136326, 33.300617, 18.560606>,  <36.783760, 33.119251, 18.507645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136326, 33.300617, 18.560606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035099, -0.342404, 0.938897,
		0.471043, -0.822908, -0.317713,
		0.881412, 0.453412, 0.132404,
		37.400749, 33.436642, 18.600327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287525, 32.533016, 18.854982>,  <36.783760, 33.119251, 18.507645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287525, 32.533016, 18.854982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465523, 32.887741, 18.904848>,  <37.572319, 33.100578, 18.934767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465523, 32.887741, 18.904848>,  <37.287525, 32.533016, 18.854982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465523, 32.887741, 18.904848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159400, -0.215416, 0.963425,
		0.881235, -0.408843, -0.237216,
		0.444990, 0.886816, 0.124663,
		37.599018, 33.153786, 18.942247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940269, 32.443035, 19.317263>,  <37.287525, 32.533016, 18.854982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940269, 32.443035, 19.317263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880619, 32.833599, 19.379734>,  <37.844830, 33.067936, 19.417217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880619, 32.833599, 19.379734>,  <37.940269, 32.443035, 19.317263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880619, 32.833599, 19.379734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023157, -0.161352, 0.986625,
		0.988547, 0.143513, 0.046671,
		-0.149124, 0.976407, 0.156180,
		37.835880, 33.126522, 19.426588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374119, 32.592430, 19.873535>,  <37.940269, 32.443035, 19.317263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374119, 32.592430, 19.873535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097595, 32.881004, 19.857368>,  <37.931683, 33.054150, 19.847670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097595, 32.881004, 19.857368>,  <38.374119, 32.592430, 19.873535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097595, 32.881004, 19.857368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137228, -0.076171, 0.987606,
		0.709412, 0.688284, 0.151658,
		-0.691305, 0.721432, -0.040415,
		37.890205, 33.097435, 19.845243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486603, 32.792988, 20.490175>,  <38.374119, 32.592430, 19.873535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486603, 32.792988, 20.490175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.171021, 33.000183, 20.357977>,  <37.981670, 33.124500, 20.278658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.171021, 33.000183, 20.357977>,  <38.486603, 32.792988, 20.490175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171021, 33.000183, 20.357977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287807, 0.163685, 0.943596,
		0.542871, 0.839579, 0.019941,
		-0.788960, 0.517990, -0.330497,
		37.934334, 33.155579, 20.258827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580055, 33.407299, 20.866543>,  <38.486603, 32.792988, 20.490175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580055, 33.407299, 20.866543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.198586, 33.346458, 20.762720>,  <37.969704, 33.309956, 20.700426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.198586, 33.346458, 20.762720>,  <38.580055, 33.407299, 20.866543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198586, 33.346458, 20.762720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286848, 0.199671, 0.936936,
		-0.090682, 0.967986, -0.234050,
		-0.953674, -0.152100, -0.259559,
		37.912483, 33.300827, 20.684853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139011, 34.061642, 20.976839>,  <38.580055, 33.407299, 20.866543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139011, 34.061642, 20.976839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.904602, 33.739243, 21.010170>,  <37.763958, 33.545803, 21.030169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.904602, 33.739243, 21.010170>,  <38.139011, 34.061642, 20.976839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904602, 33.739243, 21.010170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289351, 0.304207, 0.907598,
		-0.756874, 0.507759, -0.411488,
		-0.586019, -0.806002, 0.083326,
		37.728798, 33.497440, 21.035168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499157, 34.265636, 21.364355>,  <38.139011, 34.061642, 20.976839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499157, 34.265636, 21.364355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471260, 33.867565, 21.391918>,  <37.454521, 33.628723, 21.408457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471260, 33.867565, 21.391918>,  <37.499157, 34.265636, 21.364355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471260, 33.867565, 21.391918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283360, 0.085994, 0.955150,
		-0.956475, 0.047086, -0.287992,
		-0.069740, -0.995183, 0.068909,
		37.450336, 33.569012, 21.412590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783047, 34.108139, 21.739929>,  <37.499157, 34.265636, 21.364355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783047, 34.108139, 21.739929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.034992, 33.798073, 21.759489>,  <37.186161, 33.612034, 21.771225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.034992, 33.798073, 21.759489>,  <36.783047, 34.108139, 21.739929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034992, 33.798073, 21.759489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167350, -0.073965, 0.983119,
		-0.758460, -0.627417, -0.176312,
		0.629867, -0.775163, 0.048899,
		37.223953, 33.565525, 21.774158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394444, 33.654362, 22.137083>,  <36.783047, 34.108139, 21.739929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394444, 33.654362, 22.137083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779469, 33.550079, 22.166746>,  <37.010483, 33.487511, 22.184544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779469, 33.550079, 22.166746>,  <36.394444, 33.654362, 22.137083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779469, 33.550079, 22.166746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095607, -0.070559, 0.992915,
		-0.253631, -0.962835, -0.092843,
		0.962564, -0.260710, 0.074158,
		37.068237, 33.471867, 22.188993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385742, 33.432930, 22.808531>,  <36.394444, 33.654362, 22.137083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385742, 33.432930, 22.808531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010925, 33.308994, 22.744085>,  <35.786037, 33.234631, 22.705418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010925, 33.308994, 22.744085>,  <36.385742, 33.432930, 22.808531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010925, 33.308994, 22.744085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142557, 0.081789, -0.986402,
		0.318806, -0.947264, -0.032469,
		-0.937038, -0.309842, -0.161114,
		35.729813, 33.216042, 22.695751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414810, 32.897102, 22.322483>,  <36.385742, 33.432930, 22.808531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414810, 32.897102, 22.322483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048359, 33.056999, 22.310419>,  <35.828487, 33.152939, 22.303181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048359, 33.056999, 22.310419>,  <36.414810, 32.897102, 22.322483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048359, 33.056999, 22.310419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088094, 0.127350, -0.987938,
		-0.391084, -0.907736, -0.151884,
		-0.916129, 0.399747, -0.030162,
		35.773521, 33.176922, 22.301371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086578, 32.494713, 21.746799>,  <36.414810, 32.897102, 22.322483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086578, 32.494713, 21.746799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843765, 32.809853, 21.788370>,  <35.698078, 32.998936, 21.813313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843765, 32.809853, 21.788370>,  <36.086578, 32.494713, 21.746799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843765, 32.809853, 21.788370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323256, -0.125338, -0.937974,
		-0.725960, -0.602974, 0.330763,
		-0.607031, 0.787853, 0.103925,
		35.661655, 33.046207, 21.819548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513199, 32.329781, 21.385338>,  <36.086578, 32.494713, 21.746799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513199, 32.329781, 21.385338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493114, 32.728237, 21.414129>,  <35.481064, 32.967312, 21.431404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493114, 32.728237, 21.414129>,  <35.513199, 32.329781, 21.385338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493114, 32.728237, 21.414129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376987, 0.047836, -0.924982,
		-0.924856, -0.073582, 0.373131,
		-0.050213, 0.996141, 0.071981,
		35.478050, 33.027081, 21.435724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810020, 32.521526, 21.171173>,  <35.513199, 32.329781, 21.385338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810020, 32.521526, 21.171173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.998768, 32.872215, 21.133863>,  <35.112015, 33.082630, 21.111479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.998768, 32.872215, 21.133863>,  <34.810020, 32.521526, 21.171173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998768, 32.872215, 21.133863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466378, 0.158423, -0.870284,
		-0.748222, 0.454156, 0.483639,
		0.471864, 0.876724, -0.093273,
		35.140327, 33.135231, 21.105881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266171, 33.023346, 20.973419>,  <34.810020, 32.521526, 21.171173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266171, 33.023346, 20.973419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596088, 33.208256, 20.843180>,  <34.794041, 33.319202, 20.765036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596088, 33.208256, 20.843180>,  <34.266171, 33.023346, 20.973419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596088, 33.208256, 20.843180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469983, 0.240326, -0.849329,
		-0.314373, 0.853549, 0.415481,
		0.824794, 0.462275, -0.325601,
		34.843525, 33.346939, 20.745499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975849, 33.611755, 20.674992>,  <34.266171, 33.023346, 20.973419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975849, 33.611755, 20.674992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346119, 33.549595, 20.537020>,  <34.568283, 33.512299, 20.454237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346119, 33.549595, 20.537020>,  <33.975849, 33.611755, 20.674992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346119, 33.549595, 20.537020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338363, 0.067736, -0.938574,
		0.169217, 0.985527, 0.010121,
		0.925676, -0.155398, -0.344928,
		34.623821, 33.502975, 20.433540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557465, 34.110458, 20.284962>,  <33.975849, 33.611755, 20.674992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557465, 34.110458, 20.284962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.180027, 34.241558, 20.266142>,  <32.953564, 34.320217, 20.254850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.180027, 34.241558, 20.266142>,  <33.557465, 34.110458, 20.284962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180027, 34.241558, 20.266142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196258, -0.439175, 0.876703,
		0.266678, 0.836483, 0.478726,
		-0.943592, 0.327751, -0.047048,
		32.896950, 34.339882, 20.252028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485493, 34.276268, 20.942923>,  <33.557465, 34.110458, 20.284962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485493, 34.276268, 20.942923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.102047, 34.269566, 20.829241>,  <32.871979, 34.265545, 20.761032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.102047, 34.269566, 20.829241>,  <33.485493, 34.276268, 20.942923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102047, 34.269566, 20.829241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259335, -0.360512, 0.895978,
		-0.117471, 0.932604, 0.341248,
		-0.958617, -0.016754, -0.284206,
		32.814461, 34.264538, 20.743979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171700, 34.652481, 21.442743>,  <33.485493, 34.276268, 20.942923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171700, 34.652481, 21.442743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883923, 34.432163, 21.273500>,  <32.711254, 34.299973, 21.171955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883923, 34.432163, 21.273500>,  <33.171700, 34.652481, 21.442743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883923, 34.432163, 21.273500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370997, -0.210241, 0.904522,
		-0.587164, 0.807725, -0.053088,
		-0.719445, -0.550798, -0.423109,
		32.668091, 34.266922, 21.146568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605255, 34.802902, 21.775095>,  <33.171700, 34.652481, 21.442743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605255, 34.802902, 21.775095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510773, 34.445599, 21.622103>,  <32.454082, 34.231216, 21.530308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.510773, 34.445599, 21.622103>,  <32.605255, 34.802902, 21.775095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510773, 34.445599, 21.622103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278564, -0.314848, 0.907344,
		-0.930917, 0.320869, -0.174460,
		-0.236211, -0.893260, -0.382480,
		32.439911, 34.177620, 21.507359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968021, 34.709209, 21.911123>,  <32.605255, 34.802902, 21.775095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968021, 34.709209, 21.911123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.138294, 34.349503, 21.870880>,  <32.240456, 34.133678, 21.846735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.138294, 34.349503, 21.870880>,  <31.968021, 34.709209, 21.911123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138294, 34.349503, 21.870880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237583, -0.218357, 0.946507,
		-0.873127, -0.379006, -0.306599,
		0.425679, -0.899264, -0.100608,
		32.265999, 34.079723, 21.840698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630989, 34.311649, 22.267807>,  <31.968021, 34.709209, 21.911123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630989, 34.311649, 22.267807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.944738, 34.065895, 22.233652>,  <32.132988, 33.918442, 22.213160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.944738, 34.065895, 22.233652>,  <31.630989, 34.311649, 22.267807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944738, 34.065895, 22.233652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049500, -0.199213, 0.978705,
		-0.618314, -0.763442, -0.186668,
		0.784371, -0.614387, -0.085386,
		32.180050, 33.881580, 22.208036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429211, 33.739590, 22.658279>,  <31.630989, 34.311649, 22.267807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429211, 33.739590, 22.658279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.827272, 33.750755, 22.620558>,  <32.066109, 33.757454, 22.597925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.827272, 33.750755, 22.620558>,  <31.429211, 33.739590, 22.658279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827272, 33.750755, 22.620558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097482, -0.153043, 0.983400,
		0.013016, -0.987825, -0.155022,
		0.995152, 0.027911, -0.094303,
		32.125816, 33.759129, 22.592266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.237904, 37.551304, 17.065033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.573242, 37.356888, 17.163776>,  <35.774445, 37.240238, 17.223022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.573242, 37.356888, 17.163776>,  <35.237904, 37.551304, 17.065033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573242, 37.356888, 17.163776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284556, -0.003916, 0.958652,
		-0.464973, -0.873930, -0.141588,
		0.838349, -0.486036, 0.246861,
		35.824745, 37.211079, 17.237835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045109, 37.002655, 17.500071>,  <35.237904, 37.551304, 17.065033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045109, 37.002655, 17.500071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.437717, 37.048172, 17.561594>,  <35.673283, 37.075481, 17.598509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.437717, 37.048172, 17.561594>,  <35.045109, 37.002655, 17.500071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437717, 37.048172, 17.561594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135791, -0.152011, 0.979006,
		0.134784, -0.981806, -0.133751,
		0.981526, 0.113793, 0.153810,
		35.732174, 37.082310, 17.607737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149925, 36.478275, 17.894304>,  <35.045109, 37.002655, 17.500071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149925, 36.478275, 17.894304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.492680, 36.673370, 17.961065>,  <35.698334, 36.790428, 18.001122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.492680, 36.673370, 17.961065>,  <35.149925, 36.478275, 17.894304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492680, 36.673370, 17.961065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057718, -0.230961, 0.971249,
		0.512263, -0.841884, -0.169757,
		0.856887, 0.487737, 0.166905,
		35.749744, 36.819691, 18.011137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519855, 36.055508, 18.463219>,  <35.149925, 36.478275, 17.894304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519855, 36.055508, 18.463219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.704346, 36.410378, 18.468914>,  <35.815041, 36.623299, 18.472332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.704346, 36.410378, 18.468914>,  <35.519855, 36.055508, 18.463219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704346, 36.410378, 18.468914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009704, -0.021091, 0.999731,
		0.887232, -0.460959, -0.018336,
		0.461222, 0.887171, 0.014239,
		35.842712, 36.676529, 18.473186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130535, 36.002254, 18.923462>,  <35.519855, 36.055508, 18.463219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130535, 36.002254, 18.923462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.026894, 36.387608, 18.895838>,  <35.964710, 36.618820, 18.879263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.026894, 36.387608, 18.895838>,  <36.130535, 36.002254, 18.923462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026894, 36.387608, 18.895838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047053, 0.084005, 0.995354,
		0.964704, 0.254647, -0.067096,
		-0.259100, 0.963378, -0.069058,
		35.949165, 36.676620, 18.875120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570938, 36.527615, 19.275408>,  <36.130535, 36.002254, 18.923462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570938, 36.527615, 19.275408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.196491, 36.667969, 19.284996>,  <35.971825, 36.752182, 19.290749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.196491, 36.667969, 19.284996>,  <36.570938, 36.527615, 19.275408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196491, 36.667969, 19.284996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053417, 0.074478, 0.995791,
		0.347620, 0.933453, -0.088463,
		-0.936113, 0.350882, 0.023972,
		35.915657, 36.773232, 19.292189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589283, 36.837017, 19.937235>,  <36.570938, 36.527615, 19.275408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589283, 36.837017, 19.937235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.202763, 36.873886, 19.841099>,  <35.970848, 36.896008, 19.783417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.202763, 36.873886, 19.841099>,  <36.589283, 36.837017, 19.937235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202763, 36.873886, 19.841099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217841, 0.204567, 0.954305,
		0.137124, 0.974503, -0.177595,
		-0.966303, 0.092171, -0.240338,
		35.912872, 36.901539, 19.768997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342686, 37.269176, 20.475792>,  <36.589283, 36.837017, 19.937235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342686, 37.269176, 20.475792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.998230, 37.153980, 20.308222>,  <35.791557, 37.084862, 20.207680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.998230, 37.153980, 20.308222>,  <36.342686, 37.269176, 20.475792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998230, 37.153980, 20.308222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498443, 0.316302, 0.807160,
		-0.099948, 0.903888, -0.415928,
		-0.861142, -0.287991, -0.418923,
		35.739887, 37.067581, 20.182545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978863, 37.863819, 20.332924>,  <36.342686, 37.269176, 20.475792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978863, 37.863819, 20.332924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.720772, 37.561813, 20.379623>,  <35.565918, 37.380608, 20.407642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.720772, 37.561813, 20.379623>,  <35.978863, 37.863819, 20.332924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720772, 37.561813, 20.379623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350079, 0.428013, 0.833217,
		-0.679062, 0.496745, -0.540481,
		-0.645229, -0.755017, 0.116747,
		35.527203, 37.335308, 20.414648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478146, 38.241379, 20.585442>,  <35.978863, 37.863819, 20.332924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478146, 38.241379, 20.585442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.339260, 37.872246, 20.652157>,  <35.255928, 37.650764, 20.692186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.339260, 37.872246, 20.652157>,  <35.478146, 38.241379, 20.585442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339260, 37.872246, 20.652157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470461, 0.325264, 0.820286,
		-0.811238, 0.206350, -0.547094,
		-0.347216, -0.922834, 0.166787,
		35.235096, 37.595394, 20.702192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759785, 38.329529, 20.638414>,  <35.478146, 38.241379, 20.585442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759785, 38.329529, 20.638414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.873829, 38.000744, 20.835629>,  <34.942253, 37.803471, 20.953957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.873829, 38.000744, 20.835629>,  <34.759785, 38.329529, 20.638414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873829, 38.000744, 20.835629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303750, 0.410391, 0.859834,
		-0.909092, -0.394905, -0.132667,
		0.285108, -0.821966, 0.493036,
		34.959362, 37.754154, 20.983540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184967, 38.193829, 21.162975>,  <34.759785, 38.329529, 20.638414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184967, 38.193829, 21.162975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519962, 38.020969, 21.296759>,  <34.720959, 37.917255, 21.377029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.519962, 38.020969, 21.296759>,  <34.184967, 38.193829, 21.162975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519962, 38.020969, 21.296759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117371, 0.455514, 0.882457,
		-0.533703, -0.778303, 0.330765,
		0.837487, -0.432148, 0.334460,
		34.771210, 37.891327, 21.397097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102516, 37.635822, 21.591595>,  <34.184967, 38.193829, 21.162975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102516, 37.635822, 21.591595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.704659, 37.674740, 21.605541>,  <33.465942, 37.698090, 21.613909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.704659, 37.674740, 21.605541>,  <34.102516, 37.635822, 21.591595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704659, 37.674740, 21.605541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056310, -0.227273, -0.972202,
		-0.086663, -0.968959, 0.231534,
		-0.994645, 0.097292, 0.034866,
		33.406265, 37.703926, 21.616001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792984, 37.032574, 21.425705>,  <34.102516, 37.635822, 21.591595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792984, 37.032574, 21.425705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.512711, 37.307739, 21.350008>,  <33.344547, 37.472839, 21.304590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.512711, 37.307739, 21.350008>,  <33.792984, 37.032574, 21.425705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512711, 37.307739, 21.350008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100476, -0.357736, -0.928402,
		-0.706362, -0.631501, 0.319779,
		-0.700683, 0.687918, -0.189240,
		33.302505, 37.514114, 21.293236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337040, 36.654549, 21.067560>,  <33.792984, 37.032574, 21.425705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337040, 36.654549, 21.067560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.171570, 37.010670, 20.991409>,  <33.072289, 37.224342, 20.945719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.171570, 37.010670, 20.991409>,  <33.337040, 36.654549, 21.067560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171570, 37.010670, 20.991409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187110, -0.287783, -0.939240,
		-0.890990, -0.352917, 0.285632,
		-0.413674, 0.890298, -0.190378,
		33.047466, 37.277760, 20.934296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701603, 36.611473, 20.778776>,  <33.337040, 36.654549, 21.067560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701603, 36.611473, 20.778776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.827408, 36.972324, 20.660627>,  <32.902889, 37.188835, 20.589737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.827408, 36.972324, 20.660627>,  <32.701603, 36.611473, 20.778776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827408, 36.972324, 20.660627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184788, -0.247027, -0.951226,
		-0.931094, 0.353753, 0.089010,
		0.314512, 0.902129, -0.295374,
		32.921761, 37.242962, 20.572016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167072, 36.910965, 20.352211>,  <32.701603, 36.611473, 20.778776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167072, 36.910965, 20.352211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.476933, 37.137074, 20.238802>,  <32.662849, 37.272739, 20.170757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.476933, 37.137074, 20.238802>,  <32.167072, 36.910965, 20.352211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476933, 37.137074, 20.238802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297231, -0.070276, -0.952216,
		-0.558189, 0.821903, 0.113578,
		0.774648, 0.565275, -0.283523,
		32.709328, 37.306656, 20.153746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842005, 37.544601, 19.838995>,  <32.167072, 36.910965, 20.352211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842005, 37.544601, 19.838995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.234661, 37.530636, 19.763992>,  <32.470257, 37.522255, 19.718990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.234661, 37.530636, 19.763992>,  <31.842005, 37.544601, 19.838995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234661, 37.530636, 19.763992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189515, -0.067760, -0.979537,
		0.021493, 0.997091, -0.073133,
		0.981643, -0.034913, -0.187507,
		32.529156, 37.520161, 19.707741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950958, 37.993748, 19.288099>,  <31.842005, 37.544601, 19.838995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950958, 37.993748, 19.288099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.278728, 37.764526, 19.293095>,  <32.475391, 37.626995, 19.296093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.278728, 37.764526, 19.293095>,  <31.950958, 37.993748, 19.288099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278728, 37.764526, 19.293095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025356, -0.058009, -0.997994,
		0.572627, 0.817463, -0.062064,
		0.819424, -0.573052, 0.012490,
		32.524555, 37.592609, 19.296843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494637, 38.327660, 18.867117>,  <31.950958, 37.993748, 19.288099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494637, 38.327660, 18.867117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.581097, 37.937340, 18.880383>,  <32.632973, 37.703148, 18.888342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.581097, 37.937340, 18.880383>,  <32.494637, 38.327660, 18.867117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581097, 37.937340, 18.880383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011696, -0.036554, -0.999263,
		0.976289, 0.215607, -0.019315,
		0.216154, -0.975796, 0.033166,
		32.645943, 37.644600, 18.890333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009403, 38.223694, 18.359337>,  <32.494637, 38.327660, 18.867117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009403, 38.223694, 18.359337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.863335, 37.856972, 18.423981>,  <32.775696, 37.636940, 18.462767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.863335, 37.856972, 18.423981>,  <33.009403, 38.223694, 18.359337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863335, 37.856972, 18.423981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056430, -0.151482, -0.986848,
		0.929229, -0.369487, 0.003581,
		-0.365170, -0.916806, 0.161612,
		32.753784, 37.581928, 18.472464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206757, 37.953663, 17.797186>,  <33.009403, 38.223694, 18.359337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206757, 37.953663, 17.797186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.979172, 37.648651, 17.920368>,  <32.842621, 37.465645, 17.994278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.979172, 37.648651, 17.920368>,  <33.206757, 37.953663, 17.797186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979172, 37.648651, 17.920368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015738, -0.384503, -0.922990,
		0.822212, -0.520301, 0.230769,
		-0.568963, -0.762525, 0.307955,
		32.808483, 37.419895, 18.012754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611893, 37.399727, 17.673929>,  <33.206757, 37.953663, 17.797186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611893, 37.399727, 17.673929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.222378, 37.309132, 17.682398>,  <32.988670, 37.254776, 17.687479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.222378, 37.309132, 17.682398>,  <33.611893, 37.399727, 17.673929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222378, 37.309132, 17.682398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032979, -0.232656, -0.972000,
		0.225069, -0.945820, 0.234026,
		-0.973785, -0.226485, 0.021172,
		32.930241, 37.241184, 17.688749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485050, 36.962257, 17.145981>,  <33.611893, 37.399727, 17.673929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485050, 36.962257, 17.145981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.097168, 37.043987, 17.199528>,  <32.864437, 37.093025, 17.231655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.097168, 37.043987, 17.199528>,  <33.485050, 36.962257, 17.145981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097168, 37.043987, 17.199528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200187, -0.350693, -0.914844,
		-0.139978, -0.913929, 0.380972,
		-0.969707, 0.204324, 0.133868,
		32.806255, 37.105286, 17.239689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160027, 36.319290, 16.987982>,  <33.485050, 36.962257, 17.145981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160027, 36.319290, 16.987982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.918056, 36.633251, 16.934319>,  <32.772873, 36.821629, 16.902121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.918056, 36.633251, 16.934319>,  <33.160027, 36.319290, 16.987982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918056, 36.633251, 16.934319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265977, -0.357974, -0.895048,
		-0.750547, -0.505755, 0.425313,
		-0.604926, 0.784899, -0.134157,
		32.736580, 36.868721, 16.894072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343369, 36.368454, 17.654797>,  <33.160027, 36.319290, 16.987982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343369, 36.368454, 17.654797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.230431, 36.035034, 17.464863>,  <33.162666, 35.834980, 17.350903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.230431, 36.035034, 17.464863>,  <33.343369, 36.368454, 17.654797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230431, 36.035034, 17.464863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412911, -0.341180, 0.844453,
		-0.865901, 0.434494, -0.247852,
		-0.282348, -0.833553, -0.474835,
		33.145725, 35.784969, 17.322412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621620, 36.330940, 17.760181>,  <33.343369, 36.368454, 17.654797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621620, 36.330940, 17.760181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.757343, 35.959049, 17.702955>,  <32.838779, 35.735912, 17.668619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.757343, 35.959049, 17.702955>,  <32.621620, 36.330940, 17.760181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757343, 35.959049, 17.702955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424895, -0.287172, 0.858485,
		-0.839245, -0.230505, -0.492479,
		0.339311, -0.929731, -0.143067,
		32.859138, 35.680130, 17.660036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144901, 35.931129, 17.992613>,  <32.621620, 36.330940, 17.760181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144901, 35.931129, 17.992613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.460545, 35.685501, 17.986631>,  <32.649929, 35.538124, 17.983044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.460545, 35.685501, 17.986631>,  <32.144901, 35.931129, 17.992613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460545, 35.685501, 17.986631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256403, -0.351413, 0.900426,
		-0.558180, -0.706700, -0.434753,
		0.789109, -0.614072, -0.014952,
		32.697277, 35.501278, 17.982145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828983, 35.329453, 18.292446>,  <32.144901, 35.931129, 17.992613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828983, 35.329453, 18.292446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.222988, 35.264267, 18.315058>,  <32.459393, 35.225155, 18.328625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.222988, 35.264267, 18.315058>,  <31.828983, 35.329453, 18.292446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222988, 35.264267, 18.315058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124793, -0.447040, 0.885767,
		-0.119077, -0.879544, -0.460676,
		0.985011, -0.162964, 0.056528,
		32.518490, 35.215378, 18.332016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869356, 34.598606, 18.525265>,  <31.828983, 35.329453, 18.292446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869356, 34.598606, 18.525265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.230480, 34.750828, 18.605375>,  <32.447155, 34.842159, 18.653442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.230480, 34.750828, 18.605375>,  <31.869356, 34.598606, 18.525265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230480, 34.750828, 18.605375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038358, -0.535126, 0.843901,
		0.428324, -0.754200, -0.497715,
		0.902810, 0.380554, 0.200278,
		32.501324, 34.864994, 18.665459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288605, 34.123257, 18.767603>,  <31.869356, 34.598606, 18.525265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288605, 34.123257, 18.767603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.478722, 34.438393, 18.924267>,  <32.592793, 34.627476, 19.018265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.478722, 34.438393, 18.924267>,  <32.288605, 34.123257, 18.767603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478722, 34.438393, 18.924267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007757, -0.448892, 0.893552,
		0.879791, -0.421664, -0.219468,
		0.475297, 0.787842, 0.391661,
		32.621311, 34.674744, 19.041765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855633, 33.785213, 19.122688>,  <32.288605, 34.123257, 18.767603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855633, 33.785213, 19.122688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.816212, 34.160709, 19.254782>,  <32.792557, 34.386005, 19.334038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.816212, 34.160709, 19.254782>,  <32.855633, 33.785213, 19.122688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816212, 34.160709, 19.254782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140504, -0.315397, 0.938501,
		0.985163, 0.138894, -0.100812,
		-0.098556, 0.938740, 0.330233,
		32.786644, 34.442333, 19.353851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385357, 33.881859, 19.630463>,  <32.855633, 33.785213, 19.122688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385357, 33.881859, 19.630463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128521, 34.167736, 19.741409>,  <32.974419, 34.339260, 19.807978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128521, 34.167736, 19.741409>,  <33.385357, 33.881859, 19.630463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128521, 34.167736, 19.741409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106322, -0.441325, 0.891026,
		0.759217, 0.542633, 0.359360,
		-0.642094, 0.714690, 0.277368,
		32.935894, 34.382145, 19.824619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038326, 34.270863, 19.783611>,  <33.385357, 33.881859, 19.630463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038326, 34.270863, 19.783611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.344589, 34.017979, 19.831074>,  <34.528347, 33.866249, 19.859550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.344589, 34.017979, 19.831074>,  <34.038326, 34.270863, 19.783611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344589, 34.017979, 19.831074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062662, -0.110277, -0.991924,
		0.640192, 0.766906, -0.044818,
		0.765655, -0.632213, 0.118654,
		34.574287, 33.828316, 19.866671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688278, 34.533745, 19.438843>,  <34.038326, 34.270863, 19.783611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688278, 34.533745, 19.438843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.713551, 34.134869, 19.454895>,  <34.728714, 33.895542, 19.464527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.713551, 34.134869, 19.454895>,  <34.688278, 34.533745, 19.438843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713551, 34.134869, 19.454895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075442, -0.035325, -0.996524,
		0.995146, 0.065990, 0.072999,
		0.063182, -0.997195, 0.040132,
		34.732506, 33.835709, 19.466934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233501, 34.387676, 18.883663>,  <34.688278, 34.533745, 19.438843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233501, 34.387676, 18.883663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.027023, 34.050747, 18.945669>,  <34.903137, 33.848591, 18.982874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.027023, 34.050747, 18.945669>,  <35.233501, 34.387676, 18.883663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027023, 34.050747, 18.945669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204636, -0.297050, -0.932676,
		0.831663, -0.449724, 0.325707,
		-0.516198, -0.842324, 0.155016,
		34.872166, 33.798050, 18.992174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733055, 33.866409, 18.837694>,  <35.233501, 34.387676, 18.883663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733055, 33.866409, 18.837694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.378426, 33.692936, 18.773310>,  <35.165649, 33.588852, 18.734680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.378426, 33.692936, 18.773310>,  <35.733055, 33.866409, 18.837694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378426, 33.692936, 18.773310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294953, -0.261922, -0.918912,
		0.356354, -0.862160, 0.360129,
		-0.886575, -0.433680, -0.160960,
		35.112453, 33.562832, 18.725021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887108, 33.376976, 18.479563>,  <35.733055, 33.866409, 18.837694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887108, 33.376976, 18.479563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496109, 33.403976, 18.399614>,  <35.261509, 33.420177, 18.351645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496109, 33.403976, 18.399614>,  <35.887108, 33.376976, 18.479563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496109, 33.403976, 18.399614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157497, -0.396850, -0.904270,
		-0.140355, -0.915398, 0.377288,
		-0.977494, 0.067497, -0.199873,
		35.202862, 33.424225, 18.339653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680180, 32.742306, 18.206863>,  <35.887108, 33.376976, 18.479563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680180, 32.742306, 18.206863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.400860, 32.993946, 18.070274>,  <35.233269, 33.144932, 17.988321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.400860, 32.993946, 18.070274>,  <35.680180, 32.742306, 18.206863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400860, 32.993946, 18.070274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166451, -0.321257, -0.932249,
		-0.696184, -0.707828, 0.119619,
		-0.698300, 0.629106, -0.341472,
		35.191368, 33.182678, 17.967833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265896, 32.432781, 17.591961>,  <35.680180, 32.742306, 18.206863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265896, 32.432781, 17.591961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.177944, 32.820446, 17.547449>,  <35.125172, 33.053043, 17.520742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.177944, 32.820446, 17.547449>,  <35.265896, 32.432781, 17.591961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177944, 32.820446, 17.547449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306210, -0.039735, -0.951134,
		-0.926222, -0.243212, -0.288029,
		-0.219883, 0.969159, -0.111277,
		35.111980, 33.111195, 17.514067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912254, 32.509956, 17.006741>,  <35.265896, 32.432781, 17.591961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912254, 32.509956, 17.006741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.043583, 32.885742, 17.045965>,  <35.122379, 33.111214, 17.069500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.043583, 32.885742, 17.045965>,  <34.912254, 32.509956, 17.006741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043583, 32.885742, 17.045965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232442, 0.020267, -0.972399,
		-0.915519, 0.342055, -0.211716,
		0.328323, 0.939461, 0.098063,
		35.142078, 33.167580, 17.075384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544914, 32.903423, 16.394407>,  <34.912254, 32.509956, 17.006741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544914, 32.903423, 16.394407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.877613, 33.081429, 16.527172>,  <35.077232, 33.188232, 16.606831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.877613, 33.081429, 16.527172>,  <34.544914, 32.903423, 16.394407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877613, 33.081429, 16.527172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396737, -0.058255, -0.916082,
		-0.388333, 0.893627, -0.225006,
		0.831743, 0.445013, 0.331913,
		35.127136, 33.214931, 16.626745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.321964, 36.355240, 32.452278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501919, 36.580467, 32.174988>,  <35.609890, 36.715603, 32.008614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501919, 36.580467, 32.174988>,  <35.321964, 36.355240, 32.452278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501919, 36.580467, 32.174988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325569, -0.619399, -0.714388,
		-0.831630, 0.547085, -0.095342,
		0.449885, 0.563066, -0.693224,
		35.636883, 36.749386, 31.967020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862110, 36.465607, 31.860754>,  <35.321964, 36.355240, 32.452278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862110, 36.465607, 31.860754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.237705, 36.484394, 31.724466>,  <35.463062, 36.495667, 31.642694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.237705, 36.484394, 31.724466>,  <34.862110, 36.465607, 31.860754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237705, 36.484394, 31.724466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287107, -0.438414, -0.851682,
		-0.189380, 0.897545, -0.398182,
		0.938992, 0.046971, -0.340718,
		35.519402, 36.498486, 31.622252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821671, 36.465034, 31.208130>,  <34.862110, 36.465607, 31.860754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821671, 36.465034, 31.208130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207790, 36.360680, 31.212791>,  <35.439461, 36.298065, 31.215588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207790, 36.360680, 31.212791>,  <34.821671, 36.465034, 31.208130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207790, 36.360680, 31.212791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125572, -0.502820, -0.855222,
		0.228978, 0.824081, -0.518131,
		0.965298, -0.260890, 0.011654,
		35.497379, 36.282413, 31.216288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163986, 36.666653, 30.538103>,  <34.821671, 36.465034, 31.208130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163986, 36.666653, 30.538103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387924, 36.383297, 30.710033>,  <35.522289, 36.213284, 30.813192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387924, 36.383297, 30.710033>,  <35.163986, 36.666653, 30.538103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387924, 36.383297, 30.710033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013984, -0.526745, -0.849909,
		0.828476, 0.469810, -0.304804,
		0.559849, -0.708391, 0.429826,
		35.555878, 36.170780, 30.838982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632191, 36.511047, 30.081408>,  <35.163986, 36.666653, 30.538103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632191, 36.511047, 30.081408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613914, 36.191597, 30.321444>,  <35.602947, 35.999928, 30.465466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613914, 36.191597, 30.321444>,  <35.632191, 36.511047, 30.081408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613914, 36.191597, 30.321444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128767, -0.590997, -0.796330,
		0.990622, -0.113658, -0.075833,
		-0.045692, -0.798626, 0.600090,
		35.600208, 35.952007, 30.501471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061348, 35.963814, 29.812351>,  <35.632191, 36.511047, 30.081408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061348, 35.963814, 29.812351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794880, 35.787067, 30.052673>,  <35.634998, 35.681019, 30.196867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794880, 35.787067, 30.052673>,  <36.061348, 35.963814, 29.812351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794880, 35.787067, 30.052673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175596, -0.690011, -0.702176,
		0.724833, -0.573268, 0.382075,
		-0.666171, -0.441870, 0.600806,
		35.595028, 35.654507, 30.232916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228592, 35.314754, 29.688044>,  <36.061348, 35.963814, 29.812351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228592, 35.314754, 29.688044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874676, 35.286140, 29.872227>,  <35.662327, 35.268970, 29.982737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874676, 35.286140, 29.872227>,  <36.228592, 35.314754, 29.688044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874676, 35.286140, 29.872227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304527, -0.659172, -0.687572,
		0.352709, -0.748582, 0.561446,
		-0.884794, -0.071537, 0.460459,
		35.609238, 35.264679, 30.010365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157654, 34.606632, 29.763302>,  <36.228592, 35.314754, 29.688044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157654, 34.606632, 29.763302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794445, 34.772762, 29.785206>,  <35.576519, 34.872440, 29.798347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794445, 34.772762, 29.785206>,  <36.157654, 34.606632, 29.763302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794445, 34.772762, 29.785206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359182, -0.704599, -0.611987,
		-0.215587, -0.575369, 0.788969,
		-0.908026, 0.415320, 0.054760,
		35.522038, 34.897358, 29.801634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722363, 33.994400, 29.958950>,  <36.157654, 34.606632, 29.763302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722363, 33.994400, 29.958950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514366, 34.289116, 29.786089>,  <35.389568, 34.465946, 29.682373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.514366, 34.289116, 29.786089>,  <35.722363, 33.994400, 29.958950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514366, 34.289116, 29.786089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450675, -0.666429, -0.593940,
		-0.725609, -0.114078, 0.678585,
		-0.519984, 0.736789, -0.432155,
		35.358372, 34.510151, 29.656443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118759, 33.674854, 29.685225>,  <35.722363, 33.994400, 29.958950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118759, 33.674854, 29.685225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140347, 34.025070, 29.493176>,  <35.153297, 34.235199, 29.377945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140347, 34.025070, 29.493176>,  <35.118759, 33.674854, 29.685225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140347, 34.025070, 29.493176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448037, -0.408475, -0.795243,
		-0.892384, 0.258032, 0.370229,
		0.053969, 0.875538, -0.480125,
		35.156536, 34.287731, 29.349138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557407, 33.609695, 29.173958>,  <35.118759, 33.674854, 29.685225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557407, 33.609695, 29.173958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767208, 33.921600, 29.037209>,  <34.893089, 34.108742, 28.955158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767208, 33.921600, 29.037209>,  <34.557407, 33.609695, 29.173958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767208, 33.921600, 29.037209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186861, -0.286324, -0.939735,
		-0.830653, 0.556772, -0.004470,
		0.524498, 0.779759, -0.341875,
		34.924557, 34.155529, 28.934647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117741, 34.089417, 28.782101>,  <34.557407, 33.609695, 29.173958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117741, 34.089417, 28.782101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496822, 34.150562, 28.670042>,  <34.724274, 34.187248, 28.602806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496822, 34.150562, 28.670042>,  <34.117741, 34.089417, 28.782101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496822, 34.150562, 28.670042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226997, -0.294153, -0.928411,
		-0.224325, 0.943455, -0.244072,
		0.947708, 0.152862, -0.280147,
		34.781136, 34.196423, 28.585999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710503, 34.706928, 28.555931>,  <34.117741, 34.089417, 28.782101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710503, 34.706928, 28.555931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327137, 34.811165, 28.509384>,  <33.097118, 34.873707, 28.481455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327137, 34.811165, 28.509384>,  <33.710503, 34.706928, 28.555931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327137, 34.811165, 28.509384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058428, 0.219951, 0.973760,
		0.279348, 0.940061, -0.195578,
		-0.958411, 0.260590, -0.116369,
		33.039616, 34.889343, 28.474474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679302, 35.290615, 28.965267>,  <33.710503, 34.706928, 28.555931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679302, 35.290615, 28.965267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299057, 35.182938, 28.903471>,  <33.070911, 35.118332, 28.866394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299057, 35.182938, 28.903471>,  <33.679302, 35.290615, 28.965267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299057, 35.182938, 28.903471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194251, 0.127791, 0.972592,
		-0.242072, 0.954571, -0.173771,
		-0.950615, -0.269193, -0.154491,
		33.013874, 35.102180, 28.857124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085941, 35.874424, 29.180782>,  <33.679302, 35.290615, 28.965267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085941, 35.874424, 29.180782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943478, 35.501339, 29.203384>,  <32.858002, 35.277489, 29.216946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943478, 35.501339, 29.203384>,  <33.085941, 35.874424, 29.180782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943478, 35.501339, 29.203384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319778, 0.178480, 0.930530,
		-0.878006, 0.313346, -0.361829,
		-0.356157, -0.932716, 0.056506,
		32.836632, 35.221523, 29.220337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457756, 36.052681, 29.366213>,  <33.085941, 35.874424, 29.180782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457756, 36.052681, 29.366213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505104, 35.664944, 29.452335>,  <32.533512, 35.432301, 29.504009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505104, 35.664944, 29.452335>,  <32.457756, 36.052681, 29.366213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505104, 35.664944, 29.452335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412877, 0.149153, 0.898491,
		-0.903062, -0.195249, -0.382565,
		0.118369, -0.969346, 0.215308,
		32.540615, 35.374142, 29.516928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798828, 35.787712, 29.468119>,  <32.457756, 36.052681, 29.366213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798828, 35.787712, 29.468119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052071, 35.548565, 29.664783>,  <32.204018, 35.405079, 29.782784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052071, 35.548565, 29.664783>,  <31.798828, 35.787712, 29.468119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052071, 35.548565, 29.664783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576926, 0.059017, 0.814662,
		-0.516076, -0.799420, -0.307561,
		0.633106, -0.597867, 0.491663,
		32.242001, 35.369205, 29.812283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501299, 35.774879, 30.121300>,  <31.798828, 35.787712, 29.468119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501299, 35.774879, 30.121300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818333, 35.536678, 30.173746>,  <32.008553, 35.393757, 30.205214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818333, 35.536678, 30.173746>,  <31.501299, 35.774879, 30.121300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818333, 35.536678, 30.173746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203074, -0.055030, 0.977616,
		-0.574956, -0.801467, -0.164547,
		0.792582, -0.595502, 0.131118,
		32.056107, 35.358028, 30.213081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314241, 35.113853, 30.566916>,  <31.501299, 35.774879, 30.121300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314241, 35.113853, 30.566916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692129, 35.232113, 30.623615>,  <31.918861, 35.303070, 30.657635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692129, 35.232113, 30.623615>,  <31.314241, 35.113853, 30.566916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692129, 35.232113, 30.623615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217040, 0.239866, 0.946234,
		0.245737, -0.924697, 0.290772,
		0.944726, 0.295634, 0.141752,
		31.975546, 35.320808, 30.666140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434626, 34.894238, 31.235399>,  <31.314241, 35.113853, 30.566916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434626, 34.894238, 31.235399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733450, 35.153313, 31.175526>,  <31.912745, 35.308758, 31.139601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733450, 35.153313, 31.175526>,  <31.434626, 34.894238, 31.235399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733450, 35.153313, 31.175526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151400, 0.385031, 0.910401,
		0.647286, -0.657461, 0.385701,
		0.747060, 0.647685, -0.149685,
		31.957567, 35.347618, 31.130621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658333, 34.943886, 31.908379>,  <31.434626, 34.894238, 31.235399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658333, 34.943886, 31.908379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.848972, 35.234074, 31.709766>,  <31.963356, 35.408188, 31.590599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.848972, 35.234074, 31.709766>,  <31.658333, 34.943886, 31.908379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848972, 35.234074, 31.709766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047590, 0.542683, 0.838588,
		0.877832, -0.423300, 0.224117,
		0.476599, 0.725474, -0.496529,
		31.991953, 35.451717, 31.560808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235157, 35.129482, 32.334305>,  <31.658333, 34.943886, 31.908379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235157, 35.129482, 32.334305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133739, 35.442860, 32.107349>,  <32.072887, 35.630886, 31.971176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133739, 35.442860, 32.107349>,  <32.235157, 35.129482, 32.334305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133739, 35.442860, 32.107349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029502, 0.592544, 0.804998,
		0.966874, 0.187363, -0.173349,
		-0.253544, 0.783445, -0.567388,
		32.057678, 35.677895, 31.937134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589043, 35.715412, 32.576992>,  <32.235157, 35.129482, 32.334305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589043, 35.715412, 32.576992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296238, 35.900043, 32.376553>,  <32.120556, 36.010822, 32.256287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296238, 35.900043, 32.376553>,  <32.589043, 35.715412, 32.576992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296238, 35.900043, 32.376553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257681, 0.493301, 0.830816,
		0.630683, 0.737291, -0.242161,
		-0.732011, 0.461581, -0.501102,
		32.076633, 36.038517, 32.226223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718143, 36.460136, 32.617420>,  <32.589043, 35.715412, 32.576992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718143, 36.460136, 32.617420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330742, 36.426472, 32.523682>,  <32.098301, 36.406273, 32.467438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330742, 36.426472, 32.523682>,  <32.718143, 36.460136, 32.617420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330742, 36.426472, 32.523682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233086, 0.637480, 0.734364,
		0.087587, 0.765857, -0.637018,
		-0.968504, -0.084160, -0.234346,
		32.040192, 36.401222, 32.453377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540268, 37.104317, 32.497795>,  <32.718143, 36.460136, 32.617420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540268, 37.104317, 32.497795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202835, 36.911556, 32.592564>,  <32.000374, 36.795898, 32.649426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202835, 36.911556, 32.592564>,  <32.540268, 37.104317, 32.497795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202835, 36.911556, 32.592564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119519, 0.598629, 0.792060,
		-0.523526, 0.639853, -0.562591,
		-0.843585, -0.481904, 0.236924,
		31.949760, 36.766987, 32.663639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925852, 37.620338, 32.725250>,  <32.540268, 37.104317, 32.497795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925852, 37.620338, 32.725250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878130, 37.256084, 32.883499>,  <31.849497, 37.037533, 32.978447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.878130, 37.256084, 32.883499>,  <31.925852, 37.620338, 32.725250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878130, 37.256084, 32.883499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197556, 0.412273, 0.889383,
		-0.973005, 0.027949, -0.229086,
		-0.119303, -0.910631, 0.395622,
		31.842339, 36.982895, 33.002186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480789, 38.123898, 32.729687>,  <31.925852, 37.620338, 32.725250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480789, 38.123898, 32.729687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220139, 38.396526, 32.596516>,  <32.063747, 38.560104, 32.516613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220139, 38.396526, 32.596516>,  <32.480789, 38.123898, 32.729687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220139, 38.396526, 32.596516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125142, 0.336301, 0.933403,
		0.748145, 0.649895, -0.133850,
		-0.651628, 0.681570, -0.332931,
		32.024651, 38.600998, 32.496635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114216, 37.675045, 32.606659>,  <32.480789, 38.123898, 32.729687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114216, 37.675045, 32.606659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.214893, 37.904030, 32.294518>,  <33.275299, 38.041420, 32.107235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.214893, 37.904030, 32.294518>,  <33.114216, 37.675045, 32.606659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214893, 37.904030, 32.294518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492822, 0.618130, 0.612407,
		0.832934, -0.538709, -0.126543,
		0.251689, 0.572458, -0.780349,
		33.290401, 38.075768, 32.060413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838745, 37.932293, 31.999470>,  <33.114216, 37.675045, 32.606659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838745, 37.932293, 31.999470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172226, 38.101974, 31.858051>,  <33.372314, 38.203785, 31.773201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.172226, 38.101974, 31.858051>,  <32.838745, 37.932293, 31.999470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172226, 38.101974, 31.858051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414247, 0.057060, -0.908374,
		-0.365164, 0.903767, 0.223297,
		0.833699, 0.424205, -0.353546,
		33.422337, 38.229237, 31.751987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660141, 38.495766, 31.679081>,  <32.838745, 37.932293, 31.999470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660141, 38.495766, 31.679081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015446, 38.390472, 31.528511>,  <33.228630, 38.327297, 31.438169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015446, 38.390472, 31.528511>,  <32.660141, 38.495766, 31.679081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015446, 38.390472, 31.528511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363730, 0.097369, -0.926401,
		0.280513, 0.959806, -0.009257,
		0.888264, -0.263235, -0.376424,
		33.281925, 38.311501, 31.415585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858887, 38.966068, 31.146612>,  <32.660141, 38.495766, 31.679081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858887, 38.966068, 31.146612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.066723, 38.633041, 31.069807>,  <33.191425, 38.433228, 31.023724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.066723, 38.633041, 31.069807>,  <32.858887, 38.966068, 31.146612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066723, 38.633041, 31.069807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382216, -0.025500, -0.923721,
		0.764160, 0.553343, -0.331468,
		0.519587, -0.832563, -0.192011,
		33.222599, 38.383274, 31.012203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077259, 39.079754, 30.545118>,  <32.858887, 38.966068, 31.146612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077259, 39.079754, 30.545118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139202, 38.684883, 30.560629>,  <33.176369, 38.447960, 30.569935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139202, 38.684883, 30.560629>,  <33.077259, 39.079754, 30.545118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139202, 38.684883, 30.560629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017241, -0.036543, -0.999183,
		0.987786, 0.155400, 0.011361,
		0.154857, -0.987176, 0.038776,
		33.185658, 38.388729, 30.572262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506557, 39.049164, 29.959063>,  <33.077259, 39.079754, 30.545118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506557, 39.049164, 29.959063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371098, 38.683220, 30.047022>,  <33.289822, 38.463654, 30.099798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371098, 38.683220, 30.047022>,  <33.506557, 39.049164, 29.959063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371098, 38.683220, 30.047022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088158, -0.201828, -0.975445,
		0.936773, -0.349722, -0.012302,
		-0.338652, -0.914855, 0.219898,
		33.269501, 38.408764, 30.112991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801815, 38.613289, 29.409113>,  <33.506557, 39.049164, 29.959063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801815, 38.613289, 29.409113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481655, 38.421822, 29.553471>,  <33.289558, 38.306942, 29.640085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481655, 38.421822, 29.553471>,  <33.801815, 38.613289, 29.409113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481655, 38.421822, 29.553471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270535, -0.248810, -0.930003,
		0.534954, -0.842006, 0.069651,
		-0.800397, -0.478665, 0.360893,
		33.241535, 38.278221, 29.661739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790188, 37.955750, 29.037483>,  <33.801815, 38.613289, 29.409113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790188, 37.955750, 29.037483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417847, 38.025784, 29.165766>,  <33.194443, 38.067802, 29.242735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417847, 38.025784, 29.165766>,  <33.790188, 37.955750, 29.037483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417847, 38.025784, 29.165766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352245, -0.196753, -0.914993,
		-0.097095, -0.964695, 0.244819,
		-0.930857, 0.175078, 0.320705,
		33.138588, 38.078308, 29.261976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371510, 37.414577, 28.769358>,  <33.790188, 37.955750, 29.037483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371510, 37.414577, 28.769358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146252, 37.735016, 28.850464>,  <33.011097, 37.927277, 28.899128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146252, 37.735016, 28.850464>,  <33.371510, 37.414577, 28.769358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146252, 37.735016, 28.850464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533870, -0.165412, -0.829229,
		-0.630750, -0.575230, 0.520831,
		-0.563149, 0.801093, 0.202764,
		32.977306, 37.975342, 28.911293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702793, 37.190685, 28.573191>,  <33.371510, 37.414577, 28.769358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702793, 37.190685, 28.573191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648724, 37.585674, 28.605774>,  <32.616283, 37.822666, 28.625324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648724, 37.585674, 28.605774>,  <32.702793, 37.190685, 28.573191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648724, 37.585674, 28.605774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571453, -0.010535, -0.820567,
		-0.809426, -0.157464, 0.565716,
		-0.135170, 0.987469, 0.081456,
		32.608173, 37.881916, 28.630211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948299, 37.378120, 28.375067>,  <32.702793, 37.190685, 28.573191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948299, 37.378120, 28.375067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176006, 37.703602, 28.328028>,  <32.312630, 37.898891, 28.299805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176006, 37.703602, 28.328028>,  <31.948299, 37.378120, 28.375067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176006, 37.703602, 28.328028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373479, 0.128518, -0.918692,
		-0.732427, 0.566900, 0.377061,
		0.569266, 0.813700, -0.117595,
		32.346786, 37.947712, 28.292749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440947, 37.979168, 28.038397>,  <31.948299, 37.378120, 28.375067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440947, 37.979168, 28.038397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.831612, 38.050331, 27.990263>,  <32.066010, 38.093029, 27.961382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.831612, 38.050331, 27.990263>,  <31.440947, 37.979168, 28.038397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831612, 38.050331, 27.990263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130416, 0.046046, -0.990389,
		-0.170656, 0.982969, 0.068174,
		0.976662, 0.177907, -0.120337,
		32.124611, 38.103703, 27.954163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412867, 38.127205, 27.401533>,  <31.440947, 37.979168, 28.038397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412867, 38.127205, 27.401533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.809982, 38.118263, 27.448645>,  <32.048252, 38.112900, 27.476912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.809982, 38.118263, 27.448645>,  <31.412867, 38.127205, 27.401533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809982, 38.118263, 27.448645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119646, 0.123108, -0.985154,
		0.007521, 0.992142, 0.124895,
		0.992788, -0.022352, 0.117780,
		32.107819, 38.111557, 27.483978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762520, 38.689709, 27.048985>,  <31.412867, 38.127205, 27.401533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762520, 38.689709, 27.048985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058147, 38.424446, 27.096308>,  <32.235523, 38.265289, 27.124701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058147, 38.424446, 27.096308>,  <31.762520, 38.689709, 27.048985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058147, 38.424446, 27.096308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288590, 0.153013, -0.945147,
		0.608680, 0.732672, 0.304468,
		0.739070, -0.663159, 0.118306,
		32.279869, 38.225498, 27.131800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440159, 38.995602, 26.740871>,  <31.762520, 38.689709, 27.048985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440159, 38.995602, 26.740871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490326, 38.598808, 26.747040>,  <32.520428, 38.360733, 26.750740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490326, 38.598808, 26.747040>,  <32.440159, 38.995602, 26.740871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490326, 38.598808, 26.747040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291555, 0.021997, -0.956301,
		0.948296, 0.124433, 0.291977,
		0.125418, -0.991984, 0.015419,
		32.527950, 38.301212, 26.751665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124069, 38.875744, 26.421017>,  <32.440159, 38.995602, 26.740871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124069, 38.875744, 26.421017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926586, 38.528416, 26.401968>,  <32.808094, 38.320019, 26.390539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926586, 38.528416, 26.401968>,  <33.124069, 38.875744, 26.421017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926586, 38.528416, 26.401968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374145, -0.162660, -0.912993,
		0.785025, -0.468573, 0.405185,
		-0.493712, -0.868321, -0.047623,
		32.778473, 38.267918, 26.387682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662956, 38.405590, 26.096748>,  <33.124069, 38.875744, 26.421017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662956, 38.405590, 26.096748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290604, 38.272598, 26.036207>,  <33.067192, 38.192802, 25.999882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290604, 38.272598, 26.036207>,  <33.662956, 38.405590, 26.096748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290604, 38.272598, 26.036207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257891, -0.304660, -0.916883,
		0.258737, -0.892546, 0.369347,
		-0.930885, -0.332482, -0.151353,
		33.011337, 38.172855, 25.990801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751347, 37.872570, 25.698580>,  <33.662956, 38.405590, 26.096748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751347, 37.872570, 25.698580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362263, 37.940647, 25.635496>,  <33.128811, 37.981495, 25.597645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362263, 37.940647, 25.635496>,  <33.751347, 37.872570, 25.698580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362263, 37.940647, 25.635496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107193, -0.273210, -0.955963,
		-0.205781, -0.946780, 0.247510,
		-0.972709, 0.170188, -0.157710,
		33.070450, 37.991703, 25.588182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474586, 37.277592, 25.328833>,  <33.751347, 37.872570, 25.698580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474586, 37.277592, 25.328833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.240253, 37.596146, 25.268738>,  <33.099655, 37.787277, 25.232681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.240253, 37.596146, 25.268738>,  <33.474586, 37.277592, 25.328833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240253, 37.596146, 25.268738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016719, -0.197213, -0.980218,
		-0.810263, -0.571727, 0.128847,
		-0.585828, 0.796389, -0.150236,
		33.064507, 37.835064, 25.223667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027359, 36.994331, 24.832968>,  <33.474586, 37.277592, 25.328833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027359, 36.994331, 24.832968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003502, 37.390495, 24.783125>,  <32.989185, 37.628193, 24.753220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003502, 37.390495, 24.783125>,  <33.027359, 36.994331, 24.832968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003502, 37.390495, 24.783125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028445, -0.123092, -0.991988,
		-0.997814, -0.062711, -0.020831,
		-0.059645, 0.990412, -0.124607,
		32.985607, 37.687618, 24.745743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566093, 37.189812, 24.273972>,  <33.027359, 36.994331, 24.832968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566093, 37.189812, 24.273972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796772, 37.516331, 24.287096>,  <32.935177, 37.712242, 24.294971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796772, 37.516331, 24.287096>,  <32.566093, 37.189812, 24.273972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796772, 37.516331, 24.287096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058769, 0.081512, -0.994938,
		-0.814843, 0.571847, 0.094980,
		0.576695, 0.816301, 0.032813,
		32.969780, 37.761219, 24.296940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168591, 37.737404, 23.927977>,  <32.566093, 37.189812, 24.273972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168591, 37.737404, 23.927977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542854, 37.877789, 23.913229>,  <32.767414, 37.962021, 23.904381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542854, 37.877789, 23.913229>,  <32.168591, 37.737404, 23.927977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542854, 37.877789, 23.913229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108935, 0.187872, -0.976134,
		-0.335663, 0.917348, 0.214017,
		0.935662, 0.350966, -0.036870,
		32.823551, 37.983078, 23.902168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161873, 38.342064, 23.544901>,  <32.168591, 37.737404, 23.927977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161873, 38.342064, 23.544901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554428, 38.268375, 23.566580>,  <32.789963, 38.224163, 23.579588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554428, 38.268375, 23.566580>,  <32.161873, 38.342064, 23.544901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554428, 38.268375, 23.566580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073297, 0.098498, -0.992434,
		0.177494, 0.977936, 0.110168,
		0.981389, -0.184226, 0.054198,
		32.848846, 38.213108, 23.582840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461071, 38.815750, 23.047316>,  <32.161873, 38.342064, 23.544901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461071, 38.815750, 23.047316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747749, 38.542538, 23.103613>,  <32.919758, 38.378609, 23.137392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747749, 38.542538, 23.103613>,  <32.461071, 38.815750, 23.047316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747749, 38.542538, 23.103613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215365, 0.024824, -0.976218,
		0.663296, 0.729964, 0.164893,
		0.716698, -0.683034, 0.140743,
		32.962757, 38.337627, 23.145836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017899, 39.048138, 22.639719>,  <32.461071, 38.815750, 23.047316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017899, 39.048138, 22.639719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085632, 38.659729, 22.707184>,  <33.126274, 38.426685, 22.747663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085632, 38.659729, 22.707184>,  <33.017899, 39.048138, 22.639719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085632, 38.659729, 22.707184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179999, -0.137785, -0.973969,
		0.968981, 0.195289, 0.151451,
		0.169338, -0.971019, 0.168663,
		33.136433, 38.368423, 22.757782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496513, 38.881195, 22.127436>,  <33.017899, 39.048138, 22.639719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496513, 38.881195, 22.127436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374535, 38.522747, 22.256420>,  <33.301346, 38.307678, 22.333811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374535, 38.522747, 22.256420>,  <33.496513, 38.881195, 22.127436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374535, 38.522747, 22.256420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092456, -0.364842, -0.926467,
		0.947871, -0.252709, 0.194108,
		-0.304945, -0.896118, 0.322459,
		33.283051, 38.253910, 22.353157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978745, 38.446838, 21.830410>,  <33.496513, 38.881195, 22.127436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978745, 38.446838, 21.830410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628784, 38.268436, 21.905907>,  <33.418808, 38.161396, 21.951204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628784, 38.268436, 21.905907>,  <33.978745, 38.446838, 21.830410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628784, 38.268436, 21.905907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041421, -0.319384, -0.946720,
		0.482523, -0.836106, 0.260956,
		-0.874903, -0.446005, 0.188743,
		33.366314, 38.134636, 21.962530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167896, 37.920151, 22.315266>,  <33.978745, 38.446838, 21.830410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167896, 37.920151, 22.315266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.546253, 37.882622, 22.191021>,  <34.773270, 37.860104, 22.116474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.546253, 37.882622, 22.191021>,  <34.167896, 37.920151, 22.315266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546253, 37.882622, 22.191021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315865, 0.485284, 0.815309,
		0.074238, -0.869308, 0.488664,
		0.945895, -0.093825, -0.310610,
		34.830021, 37.854473, 22.097837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557770, 37.673889, 22.922991>,  <34.167896, 37.920151, 22.315266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557770, 37.673889, 22.922991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823456, 37.849335, 22.680855>,  <34.982868, 37.954601, 22.535574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823456, 37.849335, 22.680855>,  <34.557770, 37.673889, 22.922991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823456, 37.849335, 22.680855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467855, 0.387658, 0.794250,
		0.583035, -0.810763, 0.052280,
		0.664215, 0.438615, -0.605338,
		35.022720, 37.980919, 22.499254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157330, 37.600712, 23.230042>,  <34.557770, 37.673889, 22.922991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157330, 37.600712, 23.230042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214432, 37.910400, 22.983398>,  <35.248692, 38.096214, 22.835413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214432, 37.910400, 22.983398>,  <35.157330, 37.600712, 23.230042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214432, 37.910400, 22.983398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526391, 0.468186, 0.709729,
		0.838173, -0.425895, -0.340706,
		0.142756, 0.774220, -0.616607,
		35.257259, 38.142666, 22.798416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865173, 37.760326, 23.277258>,  <35.157330, 37.600712, 23.230042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865173, 37.760326, 23.277258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686062, 38.089764, 23.138010>,  <35.578594, 38.287426, 23.054462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686062, 38.089764, 23.138010>,  <35.865173, 37.760326, 23.277258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686062, 38.089764, 23.138010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406162, 0.534196, 0.741396,
		0.796574, 0.190586, -0.573713,
		-0.447774, 0.823597, -0.348118,
		35.551731, 38.336842, 23.033575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385483, 38.267845, 23.185238>,  <35.865173, 37.760326, 23.277258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385483, 38.267845, 23.185238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044186, 38.474827, 23.211246>,  <35.839409, 38.599014, 23.226852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044186, 38.474827, 23.211246>,  <36.385483, 38.267845, 23.185238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044186, 38.474827, 23.211246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372887, 0.518141, 0.769730,
		0.364608, 0.681009, -0.635049,
		-0.853239, 0.517451, 0.065021,
		35.788216, 38.630062, 23.230753>
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
