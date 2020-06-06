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
	<24.102287, 34.766159, 35.323318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457792, 34.835175, 35.153454>,  <24.671095, 34.876583, 35.051537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457792, 34.835175, 35.153454>,  <24.102287, 34.766159, 35.323318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457792, 34.835175, 35.153454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381731, 0.234266, 0.894092,
		0.253758, -0.956737, 0.142338,
		0.888757, 0.172548, -0.424663,
		24.724421, 34.886936, 35.026054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672358, 34.571362, 35.757114>,  <24.102287, 34.766159, 35.323318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672358, 34.571362, 35.757114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867842, 34.814598, 35.506870>,  <24.985132, 34.960541, 35.356724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867842, 34.814598, 35.506870>,  <24.672358, 34.571362, 35.757114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.867842, 34.814598, 35.506870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340906, 0.526966, 0.778518,
		0.803085, -0.593743, 0.050231,
		0.488710, 0.608092, -0.625609,
		25.014456, 34.997025, 35.319187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332323, 34.562588, 35.960670>,  <24.672358, 34.571362, 35.757114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332323, 34.562588, 35.960670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279036, 34.904343, 35.759762>,  <25.247063, 35.109394, 35.639217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279036, 34.904343, 35.759762>,  <25.332323, 34.562588, 35.960670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279036, 34.904343, 35.759762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403226, 0.509672, 0.760029,
		0.905351, -0.101277, -0.412410,
		-0.133221, 0.854388, -0.502269,
		25.239069, 35.160660, 35.609081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939240, 34.975731, 35.830437>,  <25.332323, 34.562588, 35.960670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939240, 34.975731, 35.830437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611769, 35.202156, 35.869083>,  <25.415287, 35.338013, 35.892273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611769, 35.202156, 35.869083>,  <25.939240, 34.975731, 35.830437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611769, 35.202156, 35.869083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468054, 0.560282, 0.683381,
		0.332705, 0.604691, -0.723641,
		-0.818678, 0.566067, 0.096620,
		25.366165, 35.371975, 35.898067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973719, 35.702843, 35.752403>,  <25.939240, 34.975731, 35.830437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973719, 35.702843, 35.752403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692028, 35.652035, 36.031811>,  <25.523014, 35.621552, 36.199455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692028, 35.652035, 36.031811>,  <25.973719, 35.702843, 35.752403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692028, 35.652035, 36.031811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441732, 0.691856, 0.571146,
		-0.555821, 0.710775, -0.431116,
		-0.704227, -0.127017, 0.698521,
		25.480761, 35.613930, 36.241367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885401, 36.436451, 36.188320>,  <25.973719, 35.702843, 35.752403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885401, 36.436451, 36.188320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196573, 36.230011, 36.331688>,  <26.383276, 36.106148, 36.417709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196573, 36.230011, 36.331688>,  <25.885401, 36.436451, 36.188320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196573, 36.230011, 36.331688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628144, 0.624112, -0.464671,
		0.016127, 0.586618, 0.809703,
		0.777930, -0.516104, 0.358416,
		26.429953, 36.075180, 36.439213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417341, 36.801792, 36.626751>,  <25.885401, 36.436451, 36.188320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417341, 36.801792, 36.626751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567835, 36.487011, 36.431137>,  <26.658131, 36.298141, 36.313770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567835, 36.487011, 36.431137>,  <26.417341, 36.801792, 36.626751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567835, 36.487011, 36.431137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579580, 0.611692, -0.538442,
		0.722866, -0.080852, 0.686242,
		0.376234, -0.786954, -0.489031,
		26.680706, 36.250923, 36.284428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056503, 37.003124, 36.606930>,  <26.417341, 36.801792, 36.626751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056503, 37.003124, 36.606930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038477, 36.718159, 36.326805>,  <27.027660, 36.547180, 36.158730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038477, 36.718159, 36.326805>,  <27.056503, 37.003124, 36.606930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038477, 36.718159, 36.326805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433912, 0.617481, -0.656077,
		0.899827, -0.333441, 0.281297,
		-0.045067, -0.712414, -0.700311,
		27.024958, 36.504433, 36.116711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726379, 36.837772, 36.240314>,  <27.056503, 37.003124, 36.606930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726379, 36.837772, 36.240314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461754, 36.696285, 35.975826>,  <27.302979, 36.611393, 35.817135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461754, 36.696285, 35.975826>,  <27.726379, 36.837772, 36.240314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461754, 36.696285, 35.975826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567739, 0.339794, -0.749808,
		0.489903, -0.871447, -0.023973,
		-0.661564, -0.353723, -0.661220,
		27.263285, 36.590168, 35.777462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062464, 36.640392, 35.751396>,  <27.726379, 36.837772, 36.240314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062464, 36.640392, 35.751396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707474, 36.636795, 35.567089>,  <27.494480, 36.634636, 35.456505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707474, 36.636795, 35.567089>,  <28.062464, 36.640392, 35.751396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707474, 36.636795, 35.567089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412971, 0.428236, -0.803784,
		0.204549, -0.903622, -0.376333,
		-0.887476, -0.008998, -0.460765,
		27.441231, 36.634094, 35.428860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138134, 36.585339, 35.046803>,  <28.062464, 36.640392, 35.751396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138134, 36.585339, 35.046803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772327, 36.746037, 35.065823>,  <27.552843, 36.842457, 35.077236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772327, 36.746037, 35.065823>,  <28.138134, 36.585339, 35.046803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772327, 36.746037, 35.065823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234981, 0.623190, -0.745934,
		-0.329314, -0.670993, -0.664320,
		-0.914514, 0.401749, 0.047555,
		27.497972, 36.866562, 35.080090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854145, 36.516979, 34.418846>,  <28.138134, 36.585339, 35.046803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854145, 36.516979, 34.418846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670179, 36.827477, 34.591324>,  <27.559799, 37.013775, 34.694809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670179, 36.827477, 34.591324>,  <27.854145, 36.516979, 34.418846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670179, 36.827477, 34.591324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161539, 0.550636, -0.818965,
		-0.873146, -0.306999, -0.378639,
		-0.459914, 0.776241, 0.431193,
		27.532206, 37.060349, 34.720680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656731, 36.776070, 33.813713>,  <27.854145, 36.516979, 34.418846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656731, 36.776070, 33.813713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560953, 37.048386, 34.090611>,  <27.503487, 37.211773, 34.256748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560953, 37.048386, 34.090611>,  <27.656731, 36.776070, 33.813713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560953, 37.048386, 34.090611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125945, 0.685178, -0.717405,
		-0.962707, -0.258963, -0.078321,
		-0.239445, 0.680786, 0.692240,
		27.489120, 37.252621, 34.298283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937510, 37.062027, 33.709702>,  <27.656731, 36.776070, 33.813713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937510, 37.062027, 33.709702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161722, 37.322563, 33.914268>,  <27.296249, 37.478886, 34.037010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161722, 37.322563, 33.914268>,  <26.937510, 37.062027, 33.709702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161722, 37.322563, 33.914268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143644, 0.684672, -0.714556,
		-0.815579, 0.327070, 0.477343,
		0.560533, 0.651345, 0.511422,
		27.329882, 37.517967, 34.067696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619236, 37.774220, 33.584644>,  <26.937510, 37.062027, 33.709702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619236, 37.774220, 33.584644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967827, 37.869499, 33.756126>,  <27.176981, 37.926666, 33.859016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967827, 37.869499, 33.756126>,  <26.619236, 37.774220, 33.584644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967827, 37.869499, 33.756126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006523, 0.879685, -0.475513,
		-0.490391, 0.411603, 0.768180,
		0.871478, 0.238198, 0.428704,
		27.229271, 37.940960, 33.884739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593000, 38.481613, 33.746426>,  <26.619236, 37.774220, 33.584644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593000, 38.481613, 33.746426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982622, 38.391087, 33.745674>,  <27.216394, 38.336773, 33.745224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982622, 38.391087, 33.745674>,  <26.593000, 38.481613, 33.746426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982622, 38.391087, 33.745674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201969, 0.872970, -0.443996,
		0.102125, 0.432096, 0.896027,
		0.974053, -0.226313, -0.001882,
		27.274837, 38.323193, 33.745110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903267, 39.084789, 33.922161>,  <26.593000, 38.481613, 33.746426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903267, 39.084789, 33.922161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196976, 38.880520, 33.743248>,  <27.373201, 38.757957, 33.635902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196976, 38.880520, 33.743248>,  <26.903267, 39.084789, 33.922161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196976, 38.880520, 33.743248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239843, 0.811529, -0.532819,
		0.635076, 0.283957, 0.718364,
		0.734271, -0.510675, -0.447278,
		27.417257, 38.727318, 33.609066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544241, 39.495316, 33.871300>,  <26.903267, 39.084789, 33.922161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544241, 39.495316, 33.871300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600777, 39.241283, 33.567535>,  <27.634697, 39.088863, 33.385277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600777, 39.241283, 33.567535>,  <27.544241, 39.495316, 33.871300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600777, 39.241283, 33.567535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181886, 0.770708, -0.610678,
		0.973109, -0.051813, 0.224442,
		0.141338, -0.635079, -0.759407,
		27.643177, 39.050758, 33.339714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193983, 39.682026, 33.576328>,  <27.544241, 39.495316, 33.871300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193983, 39.682026, 33.576328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020987, 39.458836, 33.293030>,  <27.917189, 39.324921, 33.123051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020987, 39.458836, 33.293030>,  <28.193983, 39.682026, 33.576328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020987, 39.458836, 33.293030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362834, 0.611395, -0.703240,
		0.825411, -0.561121, -0.061970,
		-0.432491, -0.557978, -0.708246,
		27.891239, 39.291443, 33.080555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703650, 39.418884, 33.234093>,  <28.193983, 39.682026, 33.576328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703650, 39.418884, 33.234093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382345, 39.451824, 32.998131>,  <28.189562, 39.471588, 32.856552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382345, 39.451824, 32.998131>,  <28.703650, 39.418884, 33.234093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382345, 39.451824, 32.998131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543114, 0.507886, -0.668640,
		0.244541, -0.857479, -0.452692,
		-0.803260, 0.082354, -0.589907,
		28.141367, 39.476532, 32.821159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988056, 39.362064, 32.626869>,  <28.703650, 39.418884, 33.234093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988056, 39.362064, 32.626869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638330, 39.535378, 32.539379>,  <28.428495, 39.639366, 32.486885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638330, 39.535378, 32.539379>,  <28.988056, 39.362064, 32.626869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638330, 39.535378, 32.539379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442043, 0.524738, -0.727495,
		-0.200435, -0.732746, -0.650315,
		-0.874313, 0.433282, -0.218729,
		28.376036, 39.665363, 32.473759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996737, 39.380772, 31.872612>,  <28.988056, 39.362064, 32.626869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996737, 39.380772, 31.872612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715254, 39.630333, 32.008575>,  <28.546364, 39.780071, 32.090153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715254, 39.630333, 32.008575>,  <28.996737, 39.380772, 31.872612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715254, 39.630333, 32.008575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367101, 0.728890, -0.577889,
		-0.608305, -0.281884, -0.741961,
		-0.703706, 0.623907, 0.339907,
		28.504143, 39.817505, 32.110546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993950, 39.828690, 31.335989>,  <28.996737, 39.380772, 31.872612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993950, 39.828690, 31.335989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809727, 40.024632, 31.632078>,  <28.699192, 40.142197, 31.809732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809727, 40.024632, 31.632078>,  <28.993950, 39.828690, 31.335989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809727, 40.024632, 31.632078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421627, 0.854577, -0.303197,
		-0.781100, 0.172459, -0.600117,
		-0.460557, 0.489853, 0.740223,
		28.671560, 40.171589, 31.854145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585663, 40.345478, 31.016394>,  <28.993950, 39.828690, 31.335989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585663, 40.345478, 31.016394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628307, 40.478001, 31.391386>,  <28.653894, 40.557514, 31.616381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628307, 40.478001, 31.391386>,  <28.585663, 40.345478, 31.016394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628307, 40.478001, 31.391386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446497, 0.826491, -0.342860,
		-0.888411, 0.455135, -0.059816,
		0.106610, 0.331309, 0.937480,
		28.660290, 40.577393, 31.672630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349726, 41.042419, 31.009089>,  <28.585663, 40.345478, 31.016394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349726, 41.042419, 31.009089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603807, 41.016647, 31.316950>,  <28.756256, 41.001183, 31.501667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603807, 41.016647, 31.316950>,  <28.349726, 41.042419, 31.009089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603807, 41.016647, 31.316950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512436, 0.780745, -0.357557,
		-0.577864, 0.621519, 0.528950,
		0.635203, -0.064434, 0.769653,
		28.794369, 40.997318, 31.547846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401726, 41.711731, 31.309261>,  <28.349726, 41.042419, 31.009089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401726, 41.711731, 31.309261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728930, 41.503986, 31.408157>,  <28.925253, 41.379341, 31.467495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728930, 41.503986, 31.408157>,  <28.401726, 41.711731, 31.309261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728930, 41.503986, 31.408157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563891, 0.639241, -0.522875,
		0.113514, 0.567133, 0.815766,
		0.818011, -0.519357, 0.247238,
		28.974333, 41.348179, 31.482328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855316, 42.219322, 31.506313>,  <28.401726, 41.711731, 31.309261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855316, 42.219322, 31.506313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065384, 41.898487, 31.392578>,  <29.191425, 41.705986, 31.324337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065384, 41.898487, 31.392578>,  <28.855316, 42.219322, 31.506313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065384, 41.898487, 31.392578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603428, 0.586588, -0.540174,
		0.600058, 0.112105, 0.792062,
		0.525171, -0.802089, -0.284340,
		29.222935, 41.657860, 31.307276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590761, 42.250797, 31.880415>,  <28.855316, 42.219322, 31.506313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590761, 42.250797, 31.880415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714222, 42.629086, 31.921116>,  <29.788298, 42.856056, 31.945536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714222, 42.629086, 31.921116>,  <29.590761, 42.250797, 31.880415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714222, 42.629086, 31.921116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092389, -0.076662, 0.992767,
		0.946678, -0.315820, 0.063712,
		0.308651, 0.945717, 0.101753,
		29.806818, 42.912800, 31.951641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269968, 42.307129, 32.250793>,  <29.590761, 42.250797, 31.880415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269968, 42.307129, 32.250793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003361, 42.599979, 32.306995>,  <29.843397, 42.775692, 32.340717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003361, 42.599979, 32.306995>,  <30.269968, 42.307129, 32.250793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003361, 42.599979, 32.306995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057577, -0.238462, 0.969444,
		0.743262, 0.638062, 0.201093,
		-0.666518, 0.732129, 0.140502,
		29.803406, 42.819618, 32.349148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415451, 42.769512, 32.814156>,  <30.269968, 42.307129, 32.250793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415451, 42.769512, 32.814156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019848, 42.780987, 32.756130>,  <29.782486, 42.787872, 32.721313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019848, 42.780987, 32.756130>,  <30.415451, 42.769512, 32.814156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019848, 42.780987, 32.756130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143249, 0.057532, 0.988013,
		0.036686, 0.997932, -0.052790,
		-0.989007, 0.028684, -0.145063,
		29.723146, 42.789593, 32.712612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064194, 43.365372, 33.181385>,  <30.415451, 42.769512, 32.814156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064194, 43.365372, 33.181385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862829, 43.021935, 33.142605>,  <29.742010, 42.815872, 33.119335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862829, 43.021935, 33.142605>,  <30.064194, 43.365372, 33.181385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862829, 43.021935, 33.142605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057060, -0.078925, 0.995246,
		-0.862162, 0.506548, -0.009260,
		-0.503410, -0.858592, -0.096949,
		29.711807, 42.764359, 33.113522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355122, 43.488514, 33.529732>,  <30.064194, 43.365372, 33.181385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355122, 43.488514, 33.529732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487164, 43.111027, 33.538059>,  <29.566389, 42.884537, 33.543056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487164, 43.111027, 33.538059>,  <29.355122, 43.488514, 33.529732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487164, 43.111027, 33.538059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044931, 0.037739, 0.998277,
		-0.942875, -0.328598, 0.054860,
		0.330103, -0.943715, 0.020819,
		29.586195, 42.827911, 33.544304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198589, 43.394756, 34.193565>,  <29.355122, 43.488514, 33.529732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198589, 43.394756, 34.193565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356466, 43.046394, 34.076439>,  <29.451193, 42.837376, 34.006161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356466, 43.046394, 34.076439>,  <29.198589, 43.394756, 34.193565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356466, 43.046394, 34.076439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192984, -0.390160, 0.900296,
		-0.898319, -0.298828, -0.322063,
		0.394690, -0.870906, -0.292819,
		29.474873, 42.785122, 33.988594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932951, 43.166542, 34.316055>,  <29.198589, 43.394756, 34.193565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932951, 43.166542, 34.316055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136398, 43.194649, 34.659302>,  <30.258467, 43.211514, 34.865250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136398, 43.194649, 34.659302>,  <29.932951, 43.166542, 34.316055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136398, 43.194649, 34.659302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340108, -0.899212, 0.275217,
		0.790970, -0.431834, -0.433459,
		0.508620, 0.070266, 0.858119,
		30.288984, 43.215729, 34.916737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359613, 42.427734, 34.519119>,  <29.932951, 43.166542, 34.316055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359613, 42.427734, 34.519119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246693, 42.653084, 34.829708>,  <30.178940, 42.788296, 35.016064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246693, 42.653084, 34.829708>,  <30.359613, 42.427734, 34.519119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246693, 42.653084, 34.829708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365963, -0.811432, 0.455686,
		0.886779, -0.155521, 0.435242,
		-0.282301, 0.563375, 0.776476,
		30.162003, 42.822098, 35.062653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705416, 42.263916, 35.176315>,  <30.359613, 42.427734, 34.519119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705416, 42.263916, 35.176315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358978, 42.439125, 35.272659>,  <30.151115, 42.544250, 35.330463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358978, 42.439125, 35.272659>,  <30.705416, 42.263916, 35.176315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358978, 42.439125, 35.272659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200257, -0.745513, 0.635695,
		0.458012, 0.502339, 0.733403,
		-0.866096, 0.438025, 0.240857,
		30.099150, 42.570534, 35.344917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650024, 42.405807, 36.008961>,  <30.705416, 42.263916, 35.176315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650024, 42.405807, 36.008961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320473, 42.330395, 35.795166>,  <30.122742, 42.285145, 35.666889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320473, 42.330395, 35.795166>,  <30.650024, 42.405807, 36.008961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320473, 42.330395, 35.795166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062462, -0.907101, 0.416253,
		-0.563314, 0.376327, 0.735564,
		-0.823878, -0.188536, -0.534489,
		30.073309, 42.273834, 35.634819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197536, 42.044155, 36.413292>,  <30.650024, 42.405807, 36.008961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197536, 42.044155, 36.413292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032072, 41.947350, 36.062222>,  <29.932795, 41.889267, 35.851578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032072, 41.947350, 36.062222>,  <30.197536, 42.044155, 36.413292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032072, 41.947350, 36.062222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088974, -0.948660, 0.303526,
		-0.906073, 0.203646, 0.370889,
		-0.413660, -0.242018, -0.877675,
		29.907974, 41.874744, 35.798920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705881, 41.654907, 36.675068>,  <30.197536, 42.044155, 36.413292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705881, 41.654907, 36.675068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748230, 41.552967, 36.290600>,  <29.773640, 41.491802, 36.059921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748230, 41.552967, 36.290600>,  <29.705881, 41.654907, 36.675068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748230, 41.552967, 36.290600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111420, -0.963553, 0.243207,
		-0.988117, 0.081344, -0.130411,
		0.105874, -0.254848, -0.961168,
		29.779993, 41.476513, 36.002251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289301, 41.030579, 36.594898>,  <29.705881, 41.654907, 36.675068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289301, 41.030579, 36.594898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520306, 40.999325, 36.269844>,  <29.658909, 40.980572, 36.074814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520306, 40.999325, 36.269844>,  <29.289301, 41.030579, 36.594898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520306, 40.999325, 36.269844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184050, -0.957322, 0.222848,
		-0.795364, -0.278263, -0.538485,
		0.577514, -0.078137, -0.812633,
		29.693560, 40.975883, 36.026054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993139, 40.514179, 36.118748>,  <29.289301, 41.030579, 36.594898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993139, 40.514179, 36.118748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377913, 40.542412, 36.013142>,  <29.608776, 40.559349, 35.949776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377913, 40.542412, 36.013142>,  <28.993139, 40.514179, 36.118748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377913, 40.542412, 36.013142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144151, -0.951792, 0.270763,
		-0.232181, -0.298514, -0.925733,
		0.961932, 0.070579, -0.264019,
		29.666492, 40.563587, 35.933937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095032, 39.919498, 35.756248>,  <28.993139, 40.514179, 36.118748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095032, 39.919498, 35.756248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474335, 40.012733, 35.842484>,  <29.701916, 40.068672, 35.894226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474335, 40.012733, 35.842484>,  <29.095032, 39.919498, 35.756248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474335, 40.012733, 35.842484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246059, -0.968621, -0.035056,
		0.200652, 0.086289, -0.975855,
		0.948258, 0.233084, 0.215588,
		29.758812, 40.082657, 35.907162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571205, 39.458855, 35.345505>,  <29.095032, 39.919498, 35.756248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571205, 39.458855, 35.345505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801428, 39.594017, 35.643379>,  <29.939562, 39.675114, 35.822102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801428, 39.594017, 35.643379>,  <29.571205, 39.458855, 35.345505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801428, 39.594017, 35.643379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307324, -0.933260, 0.185951,
		0.757817, 0.121833, -0.640992,
		0.575557, 0.337908, 0.744683,
		29.974094, 39.695389, 35.866783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151848, 39.051426, 35.284847>,  <29.571205, 39.458855, 35.345505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151848, 39.051426, 35.284847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196209, 39.191662, 35.656822>,  <30.222826, 39.275803, 35.880009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196209, 39.191662, 35.656822>,  <30.151848, 39.051426, 35.284847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196209, 39.191662, 35.656822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273045, -0.910452, 0.310683,
		0.955587, 0.219460, -0.196699,
		0.110902, 0.350593, 0.929939,
		30.229479, 39.296841, 35.935802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614225, 38.585751, 35.561176>,  <30.151848, 39.051426, 35.284847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614225, 38.585751, 35.561176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481401, 38.763195, 35.894150>,  <30.401707, 38.869663, 36.093933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481401, 38.763195, 35.894150>,  <30.614225, 38.585751, 35.561176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481401, 38.763195, 35.894150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105096, -0.859613, 0.500020,
		0.937385, 0.253522, 0.238822,
		-0.332061, 0.443612, 0.832433,
		30.381783, 38.896278, 36.143879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063114, 38.398632, 36.134609>,  <30.614225, 38.585751, 35.561176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063114, 38.398632, 36.134609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722366, 38.526836, 36.300301>,  <30.517918, 38.603760, 36.399715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722366, 38.526836, 36.300301>,  <31.063114, 38.398632, 36.134609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722366, 38.526836, 36.300301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109496, -0.882398, 0.457585,
		0.512180, 0.344446, 0.786784,
		-0.851870, 0.320515, 0.414231,
		30.466805, 38.622990, 36.424568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119663, 38.164322, 36.814934>,  <31.063114, 38.398632, 36.134609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119663, 38.164322, 36.814934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737877, 38.238621, 36.721554>,  <30.508806, 38.283199, 36.665527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737877, 38.238621, 36.721554>,  <31.119663, 38.164322, 36.814934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737877, 38.238621, 36.721554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271385, -0.865574, 0.420870,
		-0.123895, 0.465059, 0.876567,
		-0.954463, 0.185743, -0.233450,
		30.451538, 38.294342, 36.651520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734091, 38.018192, 37.454166>,  <31.119663, 38.164322, 36.814934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734091, 38.018192, 37.454166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486433, 37.992725, 37.141090>,  <30.337839, 37.977444, 36.953243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486433, 37.992725, 37.141090>,  <30.734091, 38.018192, 37.454166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486433, 37.992725, 37.141090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461986, -0.776440, 0.428614,
		-0.635004, 0.626966, 0.451312,
		-0.619143, -0.063672, -0.782692,
		30.300690, 37.973625, 36.906284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105289, 37.782364, 37.747574>,  <30.734091, 38.018192, 37.454166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105289, 37.782364, 37.747574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063763, 37.716400, 37.355244>,  <30.038847, 37.676823, 37.119843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063763, 37.716400, 37.355244>,  <30.105289, 37.782364, 37.747574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063763, 37.716400, 37.355244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418257, -0.887483, 0.193483,
		-0.902376, 0.430326, 0.023164,
		-0.103818, -0.164906, -0.980830,
		30.032618, 37.666927, 37.060993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557125, 37.282536, 37.705360>,  <30.105289, 37.782364, 37.747574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557125, 37.282536, 37.705360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708624, 37.257080, 37.336037>,  <29.799522, 37.241806, 37.114441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708624, 37.257080, 37.336037>,  <29.557125, 37.282536, 37.705360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708624, 37.257080, 37.336037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327841, -0.942170, -0.069546,
		-0.865489, 0.329039, -0.377707,
		0.378748, -0.063637, -0.923310,
		29.822248, 37.237988, 37.059044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058556, 37.073349, 37.281181>,  <29.557125, 37.282536, 37.705360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058556, 37.073349, 37.281181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401398, 36.969406, 37.103260>,  <29.607103, 36.907040, 36.996510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401398, 36.969406, 37.103260>,  <29.058556, 37.073349, 37.281181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401398, 36.969406, 37.103260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412248, -0.863770, -0.289746,
		-0.308912, 0.431710, -0.847467,
		0.857103, -0.259860, -0.444800,
		29.658529, 36.891449, 36.969818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824366, 36.799114, 36.639256>,  <29.058556, 37.073349, 37.281181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824366, 36.799114, 36.639256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201117, 36.674320, 36.689110>,  <29.427166, 36.599445, 36.719021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201117, 36.674320, 36.689110>,  <28.824366, 36.799114, 36.639256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201117, 36.674320, 36.689110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268582, -0.922112, -0.278521,
		0.201823, 0.228858, -0.952309,
		0.941877, -0.311985, 0.124636,
		29.483679, 36.580727, 36.726501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011065, 36.510059, 36.056431>,  <28.824366, 36.799114, 36.639256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011065, 36.510059, 36.056431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267874, 36.333050, 36.306866>,  <29.421959, 36.226845, 36.457127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267874, 36.333050, 36.306866>,  <29.011065, 36.510059, 36.056431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267874, 36.333050, 36.306866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163077, -0.876745, -0.452464,
		0.749140, 0.188393, -0.635057,
		0.642024, -0.442522, 0.626083,
		29.460482, 36.200294, 36.494690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247158, 36.094448, 35.632191>,  <29.011065, 36.510059, 36.056431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247158, 36.094448, 35.632191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349733, 35.957447, 35.993729>,  <29.411280, 35.875244, 36.210651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349733, 35.957447, 35.993729>,  <29.247158, 36.094448, 35.632191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349733, 35.957447, 35.993729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047524, -0.938448, -0.342136,
		0.965391, 0.044783, -0.256932,
		0.256440, -0.342506, 0.903841,
		29.426664, 35.854694, 36.264881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450848, 35.464954, 35.497921>,  <29.247158, 36.094448, 35.632191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450848, 35.464954, 35.497921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412664, 35.453354, 35.895924>,  <29.389755, 35.446396, 36.134727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412664, 35.453354, 35.895924>,  <29.450848, 35.464954, 35.497921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412664, 35.453354, 35.895924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192599, -0.980149, -0.047043,
		0.976623, -0.196129, 0.087977,
		-0.095457, -0.028999, 0.995011,
		29.384027, 35.444653, 36.194427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820951, 34.847252, 35.678902>,  <29.450848, 35.464954, 35.497921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820951, 34.847252, 35.678902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545979, 34.939087, 35.954502>,  <29.380995, 34.994190, 36.119862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545979, 34.939087, 35.954502>,  <29.820951, 34.847252, 35.678902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545979, 34.939087, 35.954502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237359, -0.967641, 0.085621,
		0.686365, -0.104682, 0.719683,
		-0.687432, 0.229591, 0.689003,
		29.339748, 35.007965, 36.161201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953798, 34.309292, 36.170849>,  <29.820951, 34.847252, 35.678902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953798, 34.309292, 36.170849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582508, 34.449368, 36.221081>,  <29.359734, 34.533413, 36.251221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582508, 34.449368, 36.221081>,  <29.953798, 34.309292, 36.170849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582508, 34.449368, 36.221081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338673, -0.935107, 0.104284,
		0.153950, 0.054269, 0.986587,
		-0.928224, 0.350185, 0.125580,
		29.304041, 34.554424, 36.258755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680361, 34.053673, 36.116287>,  <29.953798, 34.309292, 36.170849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680361, 34.053673, 36.116287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979473, 33.896919, 35.901905>,  <31.158941, 33.802868, 35.773277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979473, 33.896919, 35.901905>,  <30.680361, 34.053673, 36.116287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979473, 33.896919, 35.901905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636123, 0.654097, 0.409272,
		0.190180, -0.646981, 0.738408,
		0.747782, -0.391883, -0.535956,
		31.203808, 33.779354, 35.741119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257923, 34.069267, 36.527523>,  <30.680361, 34.053673, 36.116287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257923, 34.069267, 36.527523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461100, 34.009911, 36.188118>,  <31.583006, 33.974297, 35.984474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461100, 34.009911, 36.188118>,  <31.257923, 34.069267, 36.527523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461100, 34.009911, 36.188118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806241, 0.428705, 0.407660,
		0.303269, -0.891174, 0.337397,
		0.507940, -0.148393, -0.848514,
		31.613482, 33.965393, 35.933563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944283, 33.850163, 36.680244>,  <31.257923, 34.069267, 36.527523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944283, 33.850163, 36.680244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938557, 34.024696, 36.320377>,  <31.935122, 34.129417, 36.104458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938557, 34.024696, 36.320377>,  <31.944283, 33.850163, 36.680244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938557, 34.024696, 36.320377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697434, 0.649110, 0.303715,
		0.716506, -0.623113, -0.313605,
		-0.014315, 0.436333, -0.899671,
		31.934261, 34.155598, 36.050476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669556, 33.896835, 36.339287>,  <31.944283, 33.850163, 36.680244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669556, 33.896835, 36.339287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405010, 34.185917, 36.258987>,  <32.246284, 34.359364, 36.210808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405010, 34.185917, 36.258987>,  <32.669556, 33.896835, 36.339287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405010, 34.185917, 36.258987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606652, 0.672791, 0.423469,
		0.441103, 0.158283, -0.883388,
		-0.661364, 0.722702, -0.200747,
		32.206600, 34.402729, 36.198765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854443, 34.482559, 35.795330>,  <32.669556, 33.896835, 36.339287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854443, 34.482559, 35.795330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633141, 34.583324, 36.112934>,  <32.500359, 34.643784, 36.303497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633141, 34.583324, 36.112934>,  <32.854443, 34.482559, 35.795330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633141, 34.583324, 36.112934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768224, 0.522842, 0.369416,
		-0.322081, 0.814358, -0.482789,
		-0.553259, 0.251908, 0.794007,
		32.467163, 34.658897, 36.351135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887444, 35.209953, 35.903027>,  <32.854443, 34.482559, 35.795330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887444, 35.209953, 35.903027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833809, 35.008652, 36.244495>,  <32.801628, 34.887871, 36.449375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833809, 35.008652, 36.244495>,  <32.887444, 35.209953, 35.903027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833809, 35.008652, 36.244495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860723, 0.367768, 0.351998,
		-0.491098, 0.781973, 0.383851,
		-0.134085, -0.503255, 0.853672,
		32.793583, 34.857674, 36.500595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882259, 35.680542, 36.441551>,  <32.887444, 35.209953, 35.903027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882259, 35.680542, 36.441551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032791, 35.331898, 36.567196>,  <33.123108, 35.122711, 36.642582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032791, 35.331898, 36.567196>,  <32.882259, 35.680542, 36.441551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032791, 35.331898, 36.567196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847720, 0.460736, 0.262855,
		-0.373832, 0.167360, 0.912272,
		0.376325, -0.871615, 0.314112,
		33.145687, 35.070412, 36.661430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196266, 35.867977, 37.112637>,  <32.882259, 35.680542, 36.441551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196266, 35.867977, 37.112637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369438, 35.526524, 36.996788>,  <33.473339, 35.321651, 36.927280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369438, 35.526524, 36.996788>,  <33.196266, 35.867977, 37.112637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369438, 35.526524, 36.996788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898632, 0.383412, 0.213205,
		-0.070956, -0.352563, 0.933094,
		0.432928, -0.853636, -0.289618,
		33.499317, 35.270432, 36.909901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459541, 35.694374, 37.714771>,  <33.196266, 35.867977, 37.112637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459541, 35.694374, 37.714771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652752, 35.528549, 37.406273>,  <33.768677, 35.429054, 37.221172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652752, 35.528549, 37.406273>,  <33.459541, 35.694374, 37.714771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652752, 35.528549, 37.406273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842741, 0.459162, 0.280994,
		0.237638, -0.785690, 0.571156,
		0.483028, -0.414561, -0.771248,
		33.797661, 35.404182, 37.174900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178654, 35.449551, 37.954601>,  <33.459541, 35.694374, 37.714771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178654, 35.449551, 37.954601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204330, 35.454796, 37.555462>,  <34.219738, 35.457943, 37.315979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204330, 35.454796, 37.555462>,  <34.178654, 35.449551, 37.954601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204330, 35.454796, 37.555462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868207, 0.492273, 0.062326,
		0.492033, -0.870342, 0.020209,
		0.064193, 0.013121, -0.997851,
		34.223591, 35.458733, 37.256107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797001, 35.442451, 37.845039>,  <34.178654, 35.449551, 37.954601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797001, 35.442451, 37.845039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723961, 35.520042, 37.459496>,  <34.680138, 35.566597, 37.228168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723961, 35.520042, 37.459496>,  <34.797001, 35.442451, 37.845039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723961, 35.520042, 37.459496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861230, 0.504464, -0.061632,
		0.474279, -0.841362, -0.259171,
		-0.182597, 0.193975, -0.963863,
		34.669182, 35.578236, 37.170338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307354, 35.169888, 37.522339>,  <34.797001, 35.442451, 37.845039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307354, 35.169888, 37.522339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166962, 35.443451, 37.266499>,  <35.082726, 35.607590, 37.112995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166962, 35.443451, 37.266499>,  <35.307354, 35.169888, 37.522339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166962, 35.443451, 37.266499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701017, 0.644754, 0.304742,
		0.620798, -0.341411, -0.705725,
		-0.350977, 0.683909, -0.639597,
		35.061668, 35.648624, 37.074619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910545, 35.390083, 37.190922>,  <35.307354, 35.169888, 37.522339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910545, 35.390083, 37.190922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618626, 35.663486, 37.185104>,  <35.443474, 35.827526, 37.181614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618626, 35.663486, 37.185104>,  <35.910545, 35.390083, 37.190922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618626, 35.663486, 37.185104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617894, 0.668554, 0.413814,
		0.292568, 0.293015, -0.910245,
		-0.729802, 0.683504, -0.014545,
		35.399685, 35.868538, 37.180740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284721, 35.895515, 37.102730>,  <35.910545, 35.390083, 37.190922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284721, 35.895515, 37.102730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936302, 36.052395, 37.221024>,  <35.727249, 36.146523, 37.292000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936302, 36.052395, 37.221024>,  <36.284721, 35.895515, 37.102730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936302, 36.052395, 37.221024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491120, 0.706099, 0.510122,
		-0.008750, 0.589582, -0.807661,
		-0.871048, 0.392195, 0.295735,
		35.674988, 36.170052, 37.309746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333500, 36.616768, 36.843384>,  <36.284721, 35.895515, 37.102730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333500, 36.616768, 36.843384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050156, 36.628357, 37.125484>,  <35.880150, 36.635311, 37.294746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050156, 36.628357, 37.125484>,  <36.333500, 36.616768, 36.843384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050156, 36.628357, 37.125484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538317, 0.668439, 0.513230,
		-0.456547, 0.743203, -0.489096,
		-0.708364, 0.028975, 0.705252,
		35.837646, 36.637051, 37.337059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309784, 37.227509, 37.098679>,  <36.333500, 36.616768, 36.843384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309784, 37.227509, 37.098679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086174, 37.081535, 37.396488>,  <35.952007, 36.993954, 37.575172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086174, 37.081535, 37.396488>,  <36.309784, 37.227509, 37.098679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086174, 37.081535, 37.396488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376702, 0.688132, 0.620136,
		-0.738637, 0.627137, -0.247215,
		-0.559027, -0.364929, 0.744524,
		35.918465, 36.972057, 37.619846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880363, 37.830364, 37.388775>,  <36.309784, 37.227509, 37.098679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880363, 37.830364, 37.388775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923641, 37.541756, 37.662331>,  <35.949608, 37.368591, 37.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923641, 37.541756, 37.662331>,  <35.880363, 37.830364, 37.388775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923641, 37.541756, 37.662331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445616, 0.650141, 0.615420,
		-0.888662, 0.238163, 0.391866,
		0.108198, -0.721522, 0.683885,
		35.956100, 37.325298, 37.867496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564899, 38.118202, 38.064415>,  <35.880363, 37.830364, 37.388775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564899, 38.118202, 38.064415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801743, 37.817341, 38.180119>,  <35.943848, 37.636826, 38.249542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801743, 37.817341, 38.180119>,  <35.564899, 38.118202, 38.064415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801743, 37.817341, 38.180119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091215, 0.419194, 0.903303,
		-0.800679, -0.508469, 0.316816,
		0.592109, -0.752154, 0.289260,
		35.979374, 37.591694, 38.266895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400539, 38.171185, 38.835938>,  <35.564899, 38.118202, 38.064415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400539, 38.171185, 38.835938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712658, 37.923946, 38.797806>,  <35.899929, 37.775604, 38.774925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712658, 37.923946, 38.797806>,  <35.400539, 38.171185, 38.835938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712658, 37.923946, 38.797806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317463, 0.260129, 0.911894,
		-0.538841, -0.741814, 0.399202,
		0.780300, -0.618097, -0.095330,
		35.946747, 37.738518, 38.769207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348003, 37.598427, 39.298676>,  <35.400539, 38.171185, 38.835938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348003, 37.598427, 39.298676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733860, 37.669495, 39.220802>,  <35.965374, 37.712135, 39.174076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733860, 37.669495, 39.220802>,  <35.348003, 37.598427, 39.298676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733860, 37.669495, 39.220802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169273, 0.148577, 0.974306,
		0.202030, -0.972809, 0.113249,
		0.964640, 0.177669, -0.194688,
		36.023251, 37.722794, 39.162395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704632, 37.311237, 39.851406>,  <35.348003, 37.598427, 39.298676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704632, 37.311237, 39.851406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936649, 37.578197, 39.664593>,  <36.075859, 37.738373, 39.552505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936649, 37.578197, 39.664593>,  <35.704632, 37.311237, 39.851406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936649, 37.578197, 39.664593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352335, 0.311372, 0.882557,
		0.734443, -0.676476, -0.054539,
		0.580047, 0.667404, -0.467031,
		36.110664, 37.778419, 39.524483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266911, 37.265606, 40.243385>,  <35.704632, 37.311237, 39.851406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266911, 37.265606, 40.243385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362225, 37.611599, 40.066742>,  <36.419415, 37.819195, 39.960754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362225, 37.611599, 40.066742>,  <36.266911, 37.265606, 40.243385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362225, 37.611599, 40.066742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335747, 0.353303, 0.873184,
		0.911314, -0.356339, -0.206228,
		0.238289, 0.864985, -0.441610,
		36.433712, 37.871094, 39.934258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941013, 37.534424, 40.544250>,  <36.266911, 37.265606, 40.243385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941013, 37.534424, 40.544250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761433, 37.853138, 40.382469>,  <36.653683, 38.044365, 40.285400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761433, 37.853138, 40.382469>,  <36.941013, 37.534424, 40.544250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761433, 37.853138, 40.382469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178583, 0.523508, 0.833095,
		0.875529, 0.301791, -0.377322,
		-0.448951, 0.796782, -0.404452,
		36.626747, 38.092171, 40.261135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360264, 38.072735, 40.702927>,  <36.941013, 37.534424, 40.544250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360264, 38.072735, 40.702927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008900, 38.248039, 40.626694>,  <36.798080, 38.353222, 40.580956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008900, 38.248039, 40.626694>,  <37.360264, 38.072735, 40.702927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008900, 38.248039, 40.626694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103200, 0.563326, 0.819765,
		0.466627, 0.700424, -0.540061,
		-0.878413, 0.438259, -0.190579,
		36.745377, 38.379517, 40.569519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481232, 38.846462, 40.691414>,  <37.360264, 38.072735, 40.702927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481232, 38.846462, 40.691414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089397, 38.793694, 40.752090>,  <36.854298, 38.762032, 40.788498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089397, 38.793694, 40.752090>,  <37.481232, 38.846462, 40.691414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089397, 38.793694, 40.752090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045025, 0.591441, 0.805090,
		-0.195926, 0.795484, -0.573427,
		-0.979584, -0.131920, 0.151695,
		36.795521, 38.754116, 40.797600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163239, 39.412666, 40.785061>,  <37.481232, 38.846462, 40.691414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163239, 39.412666, 40.785061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865936, 39.215111, 40.965569>,  <36.687553, 39.096577, 41.073872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865936, 39.215111, 40.965569>,  <37.163239, 39.412666, 40.785061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865936, 39.215111, 40.965569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016875, 0.688159, 0.725364,
		-0.668793, 0.531517, -0.519813,
		-0.743257, -0.493890, 0.451267,
		36.642960, 39.066944, 41.100948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588551, 39.914169, 41.011662>,  <37.163239, 39.412666, 40.785061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588551, 39.914169, 41.011662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574955, 39.605972, 41.266277>,  <36.566799, 39.421055, 41.419048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574955, 39.605972, 41.266277>,  <36.588551, 39.914169, 41.011662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574955, 39.605972, 41.266277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103664, 0.636189, 0.764538,
		-0.994032, -0.040003, -0.101494,
		-0.033986, -0.770496, 0.636539,
		36.564758, 39.374825, 41.457237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348278, 40.132137, 41.570946>,  <36.588551, 39.914169, 41.011662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348278, 40.132137, 41.570946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492645, 39.795116, 41.730869>,  <36.579266, 39.592903, 41.826824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492645, 39.795116, 41.730869>,  <36.348278, 40.132137, 41.570946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492645, 39.795116, 41.730869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087866, 0.457514, 0.884850,
		-0.928449, -0.284229, 0.239156,
		0.360917, -0.842552, 0.399805,
		36.600922, 39.542351, 41.850811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975899, 40.011482, 42.121155>,  <36.348278, 40.132137, 41.570946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975899, 40.011482, 42.121155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314934, 39.817322, 42.206924>,  <36.518356, 39.700825, 42.258385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314934, 39.817322, 42.206924>,  <35.975899, 40.011482, 42.121155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314934, 39.817322, 42.206924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019808, 0.432730, 0.901306,
		-0.530284, -0.759689, 0.376392,
		0.847589, -0.485404, 0.214422,
		36.569210, 39.671700, 42.271252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961071, 39.796932, 42.793827>,  <35.975899, 40.011482, 42.121155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961071, 39.796932, 42.793827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355827, 39.789967, 42.729656>,  <36.592682, 39.785786, 42.691154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355827, 39.789967, 42.729656>,  <35.961071, 39.796932, 42.793827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355827, 39.789967, 42.729656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160733, 0.194478, 0.967648,
		0.014350, -0.980752, 0.194728,
		0.986893, -0.017414, -0.160430,
		36.651894, 39.784744, 42.681526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236900, 39.440140, 43.433922>,  <35.961071, 39.796932, 42.793827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236900, 39.440140, 43.433922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525909, 39.648781, 43.252419>,  <36.699314, 39.773964, 43.143517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525909, 39.648781, 43.252419>,  <36.236900, 39.440140, 43.433922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525909, 39.648781, 43.252419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315243, 0.335565, 0.887704,
		0.615292, -0.784429, 0.078022,
		0.722522, 0.521601, -0.453756,
		36.742664, 39.805260, 43.116291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704258, 39.408783, 43.901970>,  <36.236900, 39.440140, 43.433922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704258, 39.408783, 43.901970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816982, 39.701496, 43.653751>,  <36.884617, 39.877125, 43.504818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816982, 39.701496, 43.653751>,  <36.704258, 39.408783, 43.901970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816982, 39.701496, 43.653751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366094, 0.515820, 0.774535,
		0.886880, -0.445453, -0.122535,
		0.281813, 0.731779, -0.620548,
		36.901527, 39.921028, 43.467587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412460, 39.521244, 44.109058>,  <36.704258, 39.408783, 43.901970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412460, 39.521244, 44.109058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263916, 39.848850, 43.934105>,  <37.174789, 40.045414, 43.829132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263916, 39.848850, 43.934105>,  <37.412460, 39.521244, 44.109058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263916, 39.848850, 43.934105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299036, 0.551467, 0.778757,
		0.879017, 0.158404, -0.449708,
		-0.371357, 0.819019, -0.437380,
		37.152508, 40.094555, 43.802891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945210, 39.967297, 44.260693>,  <37.412460, 39.521244, 44.109058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945210, 39.967297, 44.260693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632347, 40.180454, 44.131538>,  <37.444630, 40.308350, 44.054047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632347, 40.180454, 44.131538>,  <37.945210, 39.967297, 44.260693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632347, 40.180454, 44.131538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208502, 0.712185, 0.670313,
		0.587161, 0.456966, -0.668149,
		-0.782156, 0.532892, -0.322889,
		37.397701, 40.340321, 44.034672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295017, 40.639763, 44.191139>,  <37.945210, 39.967297, 44.260693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295017, 40.639763, 44.191139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900021, 40.653618, 44.252666>,  <37.663021, 40.661930, 44.289585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900021, 40.653618, 44.252666>,  <38.295017, 40.639763, 44.191139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900021, 40.653618, 44.252666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134777, 0.691692, 0.709505,
		-0.081824, 0.721362, -0.687708,
		-0.987492, 0.034633, 0.153820,
		37.603771, 40.664009, 44.298813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008541, 41.375191, 44.061054>,  <38.295017, 40.639763, 44.191139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008541, 41.375191, 44.061054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718872, 41.213432, 44.284496>,  <37.545071, 41.116379, 44.418564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718872, 41.213432, 44.284496>,  <38.008541, 41.375191, 44.061054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718872, 41.213432, 44.284496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135884, 0.710464, 0.690490,
		-0.676103, 0.575937, -0.459545,
		-0.724169, -0.404397, 0.558607,
		37.501621, 41.092113, 44.452080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645885, 41.926834, 44.314556>,  <38.008541, 41.375191, 44.061054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645885, 41.926834, 44.314556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517246, 41.629467, 44.549129>,  <37.440063, 41.451046, 44.689873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517246, 41.629467, 44.549129>,  <37.645885, 41.926834, 44.314556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517246, 41.629467, 44.549129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309327, 0.667842, 0.676982,
		-0.894927, 0.036312, -0.444733,
		-0.321594, -0.743417, 0.586437,
		37.420769, 41.406441, 44.725060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914860, 42.091702, 44.574997>,  <37.645885, 41.926834, 44.314556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914860, 42.091702, 44.574997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120018, 41.857975, 44.826553>,  <37.243114, 41.717739, 44.977489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120018, 41.857975, 44.826553>,  <36.914860, 42.091702, 44.574997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120018, 41.857975, 44.826553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336264, 0.537300, 0.773457,
		-0.789848, -0.608181, 0.079097,
		0.512900, -0.584316, 0.628895,
		37.273888, 41.682682, 45.015221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667004, 42.234291, 45.197174>,  <36.914860, 42.091702, 44.574997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667004, 42.234291, 45.197174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947876, 41.996559, 45.354004>,  <37.116398, 41.853920, 45.448101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947876, 41.996559, 45.354004>,  <36.667004, 42.234291, 45.197174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947876, 41.996559, 45.354004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250378, 0.309378, 0.917385,
		-0.666527, -0.742333, 0.068431,
		0.702176, -0.594329, 0.392073,
		37.158527, 41.818260, 45.471626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310307, 41.794346, 45.677197>,  <36.667004, 42.234291, 45.197174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310307, 41.794346, 45.677197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698895, 41.815620, 45.769638>,  <36.932049, 41.828384, 45.825104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698895, 41.815620, 45.769638>,  <36.310307, 41.794346, 45.677197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698895, 41.815620, 45.769638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237111, 0.235272, 0.942563,
		-0.004242, -0.970473, 0.241171,
		0.971473, 0.053186, 0.231108,
		36.990337, 41.831577, 45.838970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399570, 41.387028, 46.272488>,  <36.310307, 41.794346, 45.677197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399570, 41.387028, 46.272488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628967, 41.711674, 46.227970>,  <36.766605, 41.906460, 46.201260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628967, 41.711674, 46.227970>,  <36.399570, 41.387028, 46.272488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628967, 41.711674, 46.227970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297140, 0.332691, 0.895000,
		0.763423, -0.480206, 0.431959,
		0.573492, 0.811615, -0.111295,
		36.801014, 41.955158, 46.194580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842392, 41.426945, 46.979118>,  <36.399570, 41.387028, 46.272488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842392, 41.426945, 46.979118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797779, 41.774654, 46.786488>,  <36.771011, 41.983280, 46.670910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797779, 41.774654, 46.786488>,  <36.842392, 41.426945, 46.979118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797779, 41.774654, 46.786488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160096, 0.462554, 0.872017,
		0.980780, 0.174359, 0.087577,
		-0.111535, 0.869277, -0.481578,
		36.764320, 42.035439, 46.642014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800926, 41.835876, 47.600281>,  <36.842392, 41.426945, 46.979118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800926, 41.835876, 47.600281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763371, 42.098228, 47.300678>,  <36.740837, 42.255638, 47.120918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763371, 42.098228, 47.300678>,  <36.800926, 41.835876, 47.600281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763371, 42.098228, 47.300678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543834, 0.596382, 0.590401,
		0.833924, 0.462769, 0.300692,
		-0.093892, 0.655876, -0.749007,
		36.735203, 42.294991, 47.075977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007660, 42.467464, 47.828842>,  <36.800926, 41.835876, 47.600281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007660, 42.467464, 47.828842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765884, 42.561131, 47.524261>,  <36.620819, 42.617329, 47.341511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765884, 42.561131, 47.524261>,  <37.007660, 42.467464, 47.828842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765884, 42.561131, 47.524261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567670, 0.544002, 0.617910,
		0.558928, 0.805747, -0.195889,
		-0.604442, 0.234166, -0.761456,
		36.584553, 42.631382, 47.295826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842869, 43.208179, 47.908844>,  <37.007660, 42.467464, 47.828842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842869, 43.208179, 47.908844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559990, 43.014839, 47.702450>,  <36.390263, 42.898834, 47.578613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559990, 43.014839, 47.702450>,  <36.842869, 43.208179, 47.908844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559990, 43.014839, 47.702450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700466, 0.379897, 0.604173,
		-0.096009, 0.788699, -0.607236,
		-0.707198, -0.483354, -0.515984,
		36.347832, 42.869831, 47.547653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299904, 43.561962, 47.979973>,  <36.842869, 43.208179, 47.908844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299904, 43.561962, 47.979973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103359, 43.243347, 47.839066>,  <35.985432, 43.052177, 47.754520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103359, 43.243347, 47.839066>,  <36.299904, 43.561962, 47.979973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103359, 43.243347, 47.839066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795009, 0.245015, 0.554912,
		-0.355697, 0.552720, -0.753645,
		-0.491365, -0.796535, -0.352266,
		35.955948, 43.004387, 47.733387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672626, 43.778389, 47.997192>,  <36.299904, 43.561962, 47.979973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672626, 43.778389, 47.997192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601707, 43.386608, 47.958744>,  <35.559158, 43.151539, 47.935673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601707, 43.386608, 47.958744>,  <35.672626, 43.778389, 47.997192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601707, 43.386608, 47.958744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917711, 0.129255, 0.375632,
		-0.355489, 0.154812, -0.921770,
		-0.177296, -0.979452, -0.096124,
		35.548519, 43.092773, 47.929905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955223, 43.793106, 47.894566>,  <35.672626, 43.778389, 47.997192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955223, 43.793106, 47.894566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046173, 43.422417, 48.014214>,  <35.100742, 43.200001, 48.086002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046173, 43.422417, 48.014214>,  <34.955223, 43.793106, 47.894566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046173, 43.422417, 48.014214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842563, -0.033213, 0.537572,
		-0.488248, -0.374263, -0.788379,
		0.227377, -0.926728, 0.299124,
		35.114388, 43.144398, 48.103951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450203, 43.318211, 47.669319>,  <34.955223, 43.793106, 47.894566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450203, 43.318211, 47.669319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626404, 43.203541, 48.009621>,  <34.732124, 43.134739, 48.213802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626404, 43.203541, 48.009621>,  <34.450203, 43.318211, 47.669319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626404, 43.203541, 48.009621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897516, -0.162346, 0.410011,
		0.020578, -0.944174, -0.328806,
		0.440501, -0.286671, 0.850751,
		34.758553, 43.117538, 48.264847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994339, 42.930691, 48.015388>,  <34.450203, 43.318211, 47.669319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994339, 42.930691, 48.015388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253956, 43.046150, 48.296932>,  <34.409725, 43.115425, 48.465858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253956, 43.046150, 48.296932>,  <33.994339, 42.930691, 48.015388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253956, 43.046150, 48.296932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738824, 0.018637, 0.673641,
		0.181327, -0.957254, 0.225356,
		0.649046, 0.288647, 0.703863,
		34.448669, 43.132744, 48.508091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159184, 42.510334, 48.505913>,  <33.994339, 42.930691, 48.015388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159184, 42.510334, 48.505913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214317, 42.846142, 48.716133>,  <34.247398, 43.047626, 48.842266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214317, 42.846142, 48.716133>,  <34.159184, 42.510334, 48.505913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214317, 42.846142, 48.716133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846441, -0.175706, 0.502658,
		0.514335, -0.514133, 0.686387,
		0.137831, 0.839521, 0.525555,
		34.255665, 43.098000, 48.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181091, 42.454395, 49.283131>,  <34.159184, 42.510334, 48.505913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181091, 42.454395, 49.283131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028374, 42.807072, 49.172237>,  <33.936741, 43.018677, 49.105701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028374, 42.807072, 49.172237>,  <34.181091, 42.454395, 49.283131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028374, 42.807072, 49.172237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889150, -0.268516, 0.370555,
		0.252273, 0.387977, 0.886472,
		-0.381799, 0.881688, -0.277230,
		33.913834, 43.071579, 49.089069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709591, 42.549114, 49.731812>,  <34.181091, 42.454395, 49.283131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709591, 42.549114, 49.731812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602150, 42.817387, 49.455250>,  <33.537685, 42.978348, 49.289310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602150, 42.817387, 49.455250>,  <33.709591, 42.549114, 49.731812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602150, 42.817387, 49.455250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936696, -0.014480, 0.349843,
		0.224621, 0.741607, 0.632111,
		-0.268599, 0.670678, -0.691409,
		33.521568, 43.018589, 49.247826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595978, 43.214825, 50.031021>,  <33.709591, 42.549114, 49.731812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595978, 43.214825, 50.031021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375935, 43.113708, 49.712654>,  <33.243908, 43.053040, 49.521633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375935, 43.113708, 49.712654>,  <33.595978, 43.214825, 50.031021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375935, 43.113708, 49.712654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805355, -0.091493, 0.585689,
		-0.220879, 0.963185, -0.153258,
		-0.550105, -0.252794, -0.795915,
		33.210903, 43.037872, 49.473881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351967, 43.227932, 50.246613>,  <33.595978, 43.214825, 50.031021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351967, 43.227932, 50.246613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493740, 43.141579, 50.610542>,  <34.578804, 43.089767, 50.828899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493740, 43.141579, 50.610542>,  <34.351967, 43.227932, 50.246613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493740, 43.141579, 50.610542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020727, -0.970932, -0.238454,
		0.934852, 0.103373, -0.339654,
		0.354431, -0.215880, 0.909821,
		34.600071, 43.076817, 50.883488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987461, 42.940739, 50.144581>,  <34.351967, 43.227932, 50.246613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987461, 42.940739, 50.144581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839844, 42.794521, 50.486385>,  <34.751274, 42.706791, 50.691467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839844, 42.794521, 50.486385>,  <34.987461, 42.940739, 50.144581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839844, 42.794521, 50.486385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126258, -0.930602, -0.343568,
		0.920798, -0.018901, 0.389581,
		-0.369039, -0.365545, 0.854510,
		34.729134, 42.684856, 50.742737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585854, 42.612518, 50.252895>,  <34.987461, 42.940739, 50.144581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585854, 42.612518, 50.252895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249210, 42.478916, 50.422668>,  <35.047226, 42.398754, 50.524532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249210, 42.478916, 50.422668>,  <35.585854, 42.612518, 50.252895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249210, 42.478916, 50.422668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016343, -0.801243, -0.598117,
		0.539846, -0.496441, 0.679788,
		-0.841605, -0.334001, 0.424434,
		34.996727, 42.378716, 50.549999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722153, 41.961456, 50.648769>,  <35.585854, 42.612518, 50.252895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722153, 41.961456, 50.648769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341988, 41.971462, 50.524780>,  <35.113888, 41.977467, 50.450386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341988, 41.971462, 50.524780>,  <35.722153, 41.961456, 50.648769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341988, 41.971462, 50.524780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165188, -0.803908, -0.571353,
		-0.263483, -0.594227, 0.759915,
		-0.950415, 0.025013, -0.309975,
		35.056862, 41.978966, 50.431789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312515, 41.317764, 50.847359>,  <35.722153, 41.961456, 50.648769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312515, 41.317764, 50.847359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177502, 41.487411, 50.511219>,  <35.096493, 41.589199, 50.309536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177502, 41.487411, 50.511219>,  <35.312515, 41.317764, 50.847359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177502, 41.487411, 50.511219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349529, -0.772447, -0.530241,
		-0.874013, -0.472702, 0.112485,
		-0.337535, 0.424120, -0.840352,
		35.076241, 41.614647, 50.259113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824207, 40.816826, 50.526409>,  <35.312515, 41.317764, 50.847359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824207, 40.816826, 50.526409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045635, 41.053452, 50.291935>,  <35.178490, 41.195427, 50.151249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045635, 41.053452, 50.291935>,  <34.824207, 40.816826, 50.526409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045635, 41.053452, 50.291935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302479, -0.798622, -0.520296,
		-0.775932, 0.110709, -0.621026,
		0.553567, 0.591562, -0.586189,
		35.211704, 41.230919, 50.116077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596546, 40.788910, 49.795277>,  <34.824207, 40.816826, 50.526409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596546, 40.788910, 49.795277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972416, 40.922012, 49.763573>,  <35.197937, 41.001873, 49.744549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972416, 40.922012, 49.763573>,  <34.596546, 40.788910, 49.795277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972416, 40.922012, 49.763573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218899, -0.763025, -0.608174,
		-0.262854, 0.554136, -0.789836,
		0.939676, 0.332756, -0.079264,
		35.254318, 41.021839, 49.739792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747772, 40.658539, 49.225597>,  <34.596546, 40.788910, 49.795277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747772, 40.658539, 49.225597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130352, 40.728199, 49.319298>,  <35.359901, 40.769993, 49.375519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130352, 40.728199, 49.319298>,  <34.747772, 40.658539, 49.225597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130352, 40.728199, 49.319298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291421, -0.615292, -0.732455,
		0.016579, 0.768823, -0.639246,
		0.956451, 0.174147, 0.234252,
		35.417286, 40.780441, 49.389572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115505, 40.734467, 48.564240>,  <34.747772, 40.658539, 49.225597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115505, 40.734467, 48.564240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369205, 40.619530, 48.851337>,  <35.521427, 40.550568, 49.023598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369205, 40.619530, 48.851337>,  <35.115505, 40.734467, 48.564240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369205, 40.619530, 48.851337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177414, -0.849503, -0.496860,
		0.752495, 0.442473, -0.487821,
		0.634253, -0.287338, 0.717747,
		35.559483, 40.533329, 49.066662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642025, 40.475071, 48.185734>,  <35.115505, 40.734467, 48.564240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642025, 40.475071, 48.185734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674042, 40.291515, 48.539688>,  <35.693253, 40.181381, 48.752060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674042, 40.291515, 48.539688>,  <35.642025, 40.475071, 48.185734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674042, 40.291515, 48.539688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045315, -0.885137, -0.463119,
		0.995761, 0.077165, -0.050050,
		0.080038, -0.458888, 0.884882,
		35.698051, 40.153851, 48.805153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248695, 40.128998, 48.114853>,  <35.642025, 40.475071, 48.185734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248695, 40.128998, 48.114853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041611, 39.945862, 48.403950>,  <35.917358, 39.835979, 48.577408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041611, 39.945862, 48.403950>,  <36.248695, 40.128998, 48.114853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041611, 39.945862, 48.403950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140146, -0.878738, -0.456266,
		0.843999, -0.134924, 0.519096,
		-0.517711, -0.457837, 0.722745,
		35.886299, 39.808510, 48.620773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632504, 39.619358, 48.517879>,  <36.248695, 40.128998, 48.114853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632504, 39.619358, 48.517879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259937, 39.476025, 48.543377>,  <36.036396, 39.390022, 48.558674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259937, 39.476025, 48.543377>,  <36.632504, 39.619358, 48.517879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259937, 39.476025, 48.543377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289928, -0.836364, -0.465227,
		0.220021, -0.414838, 0.882893,
		-0.931414, -0.358335, 0.063744,
		35.980515, 39.368523, 48.562500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616272, 38.863037, 48.382198>,  <36.632504, 39.619358, 48.517879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616272, 38.863037, 48.382198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225529, 38.946823, 48.364861>,  <35.991085, 38.997097, 48.354458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225529, 38.946823, 48.364861>,  <36.616272, 38.863037, 48.382198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225529, 38.946823, 48.364861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128011, -0.734818, -0.666075,
		-0.171372, -0.645110, 0.744624,
		-0.976855, 0.209467, -0.043346,
		35.932472, 39.009663, 48.351856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257977, 38.176414, 48.438797>,  <36.616272, 38.863037, 48.382198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257977, 38.176414, 48.438797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029755, 38.465416, 48.282616>,  <35.892822, 38.638817, 48.188908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029755, 38.465416, 48.282616>,  <36.257977, 38.176414, 48.438797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029755, 38.465416, 48.282616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265669, -0.612242, -0.744701,
		-0.777103, -0.321160, 0.541265,
		-0.570553, 0.722506, -0.390452,
		35.858589, 38.682167, 48.165482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640255, 37.806396, 48.284885>,  <36.257977, 38.176414, 48.438797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640255, 37.806396, 48.284885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641720, 38.140766, 48.065350>,  <35.642601, 38.341389, 47.933628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641720, 38.140766, 48.065350>,  <35.640255, 37.806396, 48.284885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641720, 38.140766, 48.065350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425787, -0.495297, -0.757222,
		-0.904816, 0.236464, 0.354109,
		0.003667, 0.835922, -0.548836,
		35.642818, 38.391544, 47.900700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996315, 37.763584, 48.000721>,  <35.640255, 37.806396, 48.284885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996315, 37.763584, 48.000721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220432, 38.004032, 47.772785>,  <35.354904, 38.148300, 47.636024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220432, 38.004032, 47.772785>,  <34.996315, 37.763584, 48.000721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220432, 38.004032, 47.772785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390822, -0.414711, -0.821750,
		-0.730292, 0.683130, 0.002570,
		0.560296, 0.601122, -0.569842,
		35.388519, 38.184368, 47.601833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655811, 37.769756, 47.442932>,  <34.996315, 37.763584, 48.000721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655811, 37.769756, 47.442932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006233, 37.897602, 47.298500>,  <35.216488, 37.974308, 47.211842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006233, 37.897602, 47.298500>,  <34.655811, 37.769756, 47.442932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006233, 37.897602, 47.298500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218853, -0.403700, -0.888330,
		-0.429688, 0.857248, -0.283715,
		0.876055, 0.319613, -0.361076,
		35.269051, 37.993484, 47.190178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535233, 37.996075, 46.826458>,  <34.655811, 37.769756, 47.442932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535233, 37.996075, 46.826458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932919, 37.976620, 46.788170>,  <35.171532, 37.964947, 46.765198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932919, 37.976620, 46.788170>,  <34.535233, 37.996075, 46.826458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932919, 37.976620, 46.788170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103163, -0.185695, -0.977177,
		0.029749, 0.981403, -0.189639,
		0.994220, -0.048634, -0.095720,
		35.231186, 37.962029, 46.759453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696041, 38.357327, 46.249390>,  <34.535233, 37.996075, 46.826458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696041, 38.357327, 46.249390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006168, 38.112152, 46.310318>,  <35.192245, 37.965050, 46.346874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006168, 38.112152, 46.310318>,  <34.696041, 38.357327, 46.249390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006168, 38.112152, 46.310318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105749, -0.363754, -0.925473,
		0.622659, 0.701425, -0.346841,
		0.775315, -0.612932, 0.152320,
		35.238762, 37.928272, 46.356014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111336, 38.403179, 45.653744>,  <34.696041, 38.357327, 46.249390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111336, 38.403179, 45.653744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202057, 38.048122, 45.814072>,  <35.256489, 37.835091, 45.910267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202057, 38.048122, 45.814072>,  <35.111336, 38.403179, 45.653744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202057, 38.048122, 45.814072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221551, -0.447775, -0.866264,
		0.948407, 0.107670, -0.298214,
		0.226803, -0.887640, 0.400818,
		35.270100, 37.781830, 45.934319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594124, 38.153225, 45.257332>,  <35.111336, 38.403179, 45.653744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594124, 38.153225, 45.257332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439194, 37.829060, 45.433155>,  <35.346237, 37.634560, 45.538651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439194, 37.829060, 45.433155>,  <35.594124, 38.153225, 45.257332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439194, 37.829060, 45.433155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086343, -0.506562, -0.857869,
		0.917891, -0.294321, 0.266178,
		-0.387325, -0.810413, 0.439556,
		35.322998, 37.585938, 45.565022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917480, 37.700352, 44.921089>,  <35.594124, 38.153225, 45.257332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917480, 37.700352, 44.921089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633274, 37.485977, 45.103493>,  <35.462749, 37.357353, 45.212936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633274, 37.485977, 45.103493>,  <35.917480, 37.700352, 44.921089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633274, 37.485977, 45.103493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009752, -0.640470, -0.767921,
		0.703617, -0.550065, 0.449836,
		-0.710513, -0.535935, 0.456010,
		35.420120, 37.325195, 45.240295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185047, 36.950977, 44.988926>,  <35.917480, 37.700352, 44.921089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185047, 36.950977, 44.988926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785698, 36.971748, 44.998333>,  <35.546089, 36.984211, 45.003979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785698, 36.971748, 44.998333>,  <36.185047, 36.950977, 44.988926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785698, 36.971748, 44.998333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052035, -0.661736, -0.747929,
		-0.023276, -0.747937, 0.663361,
		-0.998374, 0.051927, 0.023517,
		35.486187, 36.987328, 45.005386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935635, 36.288647, 44.670151>,  <36.185047, 36.950977, 44.988926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935635, 36.288647, 44.670151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604839, 36.511269, 44.638298>,  <35.406364, 36.644840, 44.619186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604839, 36.511269, 44.638298>,  <35.935635, 36.288647, 44.670151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604839, 36.511269, 44.638298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318455, -0.580432, -0.749457,
		-0.463335, -0.594431, 0.657246,
		-0.826987, 0.556553, -0.079635,
		35.356743, 36.678234, 44.614407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450821, 35.780159, 44.524059>,  <35.935635, 36.288647, 44.670151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450821, 35.780159, 44.524059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301559, 36.131958, 44.405918>,  <35.212002, 36.343037, 44.335033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301559, 36.131958, 44.405918>,  <35.450821, 35.780159, 44.524059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301559, 36.131958, 44.405918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360468, -0.430777, -0.827342,
		-0.854881, -0.202257, 0.477777,
		-0.373150, 0.879502, -0.295356,
		35.189613, 36.395809, 44.317310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816532, 35.611221, 44.171715>,  <35.450821, 35.780159, 44.524059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816532, 35.611221, 44.171715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901993, 35.984482, 44.056072>,  <34.953270, 36.208439, 43.986687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901993, 35.984482, 44.056072>,  <34.816532, 35.611221, 44.171715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901993, 35.984482, 44.056072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211846, -0.244641, -0.946188,
		-0.953665, 0.263397, 0.145417,
		0.213648, 0.933152, -0.289105,
		34.966087, 36.264427, 43.969341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280643, 35.749386, 43.825191>,  <34.816532, 35.611221, 44.171715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280643, 35.749386, 43.825191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564289, 36.002388, 43.700554>,  <34.734478, 36.154190, 43.625771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564289, 36.002388, 43.700554>,  <34.280643, 35.749386, 43.825191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564289, 36.002388, 43.700554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136961, -0.309936, -0.940841,
		-0.691661, 0.709842, -0.133152,
		0.709117, 0.632506, -0.311592,
		34.777023, 36.192139, 43.607075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964546, 36.186531, 43.253025>,  <34.280643, 35.749386, 43.825191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964546, 36.186531, 43.253025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353020, 36.261776, 43.194481>,  <34.586102, 36.306923, 43.159355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353020, 36.261776, 43.194481>,  <33.964546, 36.186531, 43.253025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353020, 36.261776, 43.194481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106641, -0.206234, -0.972674,
		-0.213159, 0.960250, -0.180230,
		0.971180, 0.188114, -0.146363,
		34.644375, 36.318211, 43.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075573, 36.744877, 42.738571>,  <33.964546, 36.186531, 43.253025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075573, 36.744877, 42.738571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407597, 36.521877, 42.744106>,  <34.606812, 36.388077, 42.747429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407597, 36.521877, 42.744106>,  <34.075573, 36.744877, 42.738571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407597, 36.521877, 42.744106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123933, -0.208605, -0.970116,
		0.543723, 0.803543, -0.242248,
		0.830064, -0.557497, 0.013838,
		34.656616, 36.354630, 42.748257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458988, 37.009953, 42.126022>,  <34.075573, 36.744877, 42.738571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458988, 37.009953, 42.126022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566986, 36.636677, 42.220901>,  <34.631786, 36.412712, 42.277828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566986, 36.636677, 42.220901>,  <34.458988, 37.009953, 42.126022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566986, 36.636677, 42.220901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016761, -0.241756, -0.970192,
		0.962716, 0.265923, -0.049632,
		0.269995, -0.933188, 0.237199,
		34.647984, 36.356720, 42.292061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929916, 36.754860, 41.514702>,  <34.458988, 37.009953, 42.126022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929916, 36.754860, 41.514702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860497, 36.403732, 41.693279>,  <34.818844, 36.193054, 41.800426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860497, 36.403732, 41.693279>,  <34.929916, 36.754860, 41.514702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860497, 36.403732, 41.693279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113041, -0.468082, -0.876425,
		0.978317, -0.101633, 0.180463,
		-0.173545, -0.877821, 0.446444,
		34.808434, 36.140385, 41.827213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410336, 36.354450, 41.172176>,  <34.929916, 36.754860, 41.514702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410336, 36.354450, 41.172176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203060, 36.082573, 41.379829>,  <35.078693, 35.919449, 41.504421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203060, 36.082573, 41.379829>,  <35.410336, 36.354450, 41.172176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203060, 36.082573, 41.379829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137012, -0.665120, -0.734060,
		0.844220, -0.309254, 0.437783,
		-0.518189, -0.679690, 0.519136,
		35.047604, 35.878666, 41.535572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836246, 35.745300, 41.265694>,  <35.410336, 36.354450, 41.172176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836246, 35.745300, 41.265694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450912, 35.640968, 41.290840>,  <35.219711, 35.578369, 41.305927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450912, 35.640968, 41.290840>,  <35.836246, 35.745300, 41.265694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450912, 35.640968, 41.290840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090949, -0.537921, -0.838074,
		0.252412, -0.801629, 0.541921,
		-0.963336, -0.260827, 0.062870,
		35.161911, 35.562721, 41.309700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837349, 35.100945, 41.125374>,  <35.836246, 35.745300, 41.265694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837349, 35.100945, 41.125374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459766, 35.191338, 41.029137>,  <35.233219, 35.245575, 40.971394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459766, 35.191338, 41.029137>,  <35.837349, 35.100945, 41.125374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459766, 35.191338, 41.029137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085209, -0.537362, -0.839036,
		-0.318895, -0.812511, 0.487988,
		-0.943953, 0.225983, -0.240595,
		35.176582, 35.259132, 40.956959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551891, 34.562141, 40.983471>,  <35.837349, 35.100945, 41.125374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551891, 34.562141, 40.983471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363995, 34.854488, 40.785408>,  <35.251259, 35.029896, 40.666569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363995, 34.854488, 40.785408>,  <35.551891, 34.562141, 40.983471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363995, 34.854488, 40.785408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247294, -0.429498, -0.868548,
		-0.847462, -0.530440, 0.021013,
		-0.469738, 0.730865, -0.495158,
		35.223072, 35.073750, 40.636860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027668, 34.199532, 40.535343>,  <35.551891, 34.562141, 40.983471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027668, 34.199532, 40.535343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063820, 34.563751, 40.373985>,  <35.085510, 34.782284, 40.277172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063820, 34.563751, 40.373985>,  <35.027668, 34.199532, 40.535343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063820, 34.563751, 40.373985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187492, -0.413368, -0.891052,
		-0.978099, 0.004899, -0.208080,
		0.090379, 0.910551, -0.403396,
		35.090935, 34.836918, 40.252968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748882, 34.130505, 39.836372>,  <35.027668, 34.199532, 40.535343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748882, 34.130505, 39.836372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968945, 34.464523, 39.834736>,  <35.100983, 34.664936, 39.833755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968945, 34.464523, 39.834736>,  <34.748882, 34.130505, 39.836372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968945, 34.464523, 39.834736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306642, -0.206580, -0.929137,
		-0.776721, 0.509919, -0.369714,
		0.550160, 0.835049, -0.004092,
		35.133991, 34.715038, 39.833508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648216, 34.413174, 39.119633>,  <34.748882, 34.130505, 39.836372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648216, 34.413174, 39.119633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967834, 34.599422, 39.271797>,  <35.159607, 34.711174, 39.363094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967834, 34.599422, 39.271797>,  <34.648216, 34.413174, 39.119633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967834, 34.599422, 39.271797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529394, -0.244864, -0.812270,
		-0.285065, 0.850431, -0.442159,
		0.799049, 0.465626, 0.380411,
		35.207550, 34.739109, 39.385921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918343, 34.883343, 38.638191>,  <34.648216, 34.413174, 39.119633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918343, 34.883343, 38.638191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225403, 34.778931, 38.872311>,  <35.409637, 34.716282, 39.012783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225403, 34.778931, 38.872311>,  <34.918343, 34.883343, 38.638191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225403, 34.778931, 38.872311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488819, -0.352144, -0.798155,
		0.414453, 0.898809, -0.142726,
		0.767649, -0.261031, 0.585302,
		35.455696, 34.700623, 39.047901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521339, 35.041767, 38.211704>,  <34.918343, 34.883343, 38.638191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521339, 35.041767, 38.211704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707726, 34.816673, 38.484821>,  <35.819557, 34.681618, 38.648693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707726, 34.816673, 38.484821>,  <35.521339, 35.041767, 38.211704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707726, 34.816673, 38.484821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552015, -0.418202, -0.721378,
		0.691490, 0.713049, 0.115771,
		0.465962, -0.562733, 0.682796,
		35.847515, 34.647854, 38.689659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241352, 35.171085, 38.105690>,  <35.521339, 35.041767, 38.211704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241352, 35.171085, 38.105690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234798, 34.829716, 38.314075>,  <36.230865, 34.624893, 38.439106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234798, 34.829716, 38.314075>,  <36.241352, 35.171085, 38.105690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234798, 34.829716, 38.314075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653943, -0.403294, -0.640088,
		0.756367, 0.330193, 0.564697,
		-0.016386, -0.853421, 0.520965,
		36.229881, 34.573689, 38.470364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956345, 34.940418, 38.189571>,  <36.241352, 35.171085, 38.105690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956345, 34.940418, 38.189571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709709, 34.626949, 38.219719>,  <36.561729, 34.438869, 38.237808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709709, 34.626949, 38.219719>,  <36.956345, 34.940418, 38.189571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709709, 34.626949, 38.219719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565566, -0.507501, -0.650060,
		0.547682, -0.358194, 0.756136,
		-0.616588, -0.783671, 0.075366,
		36.524734, 34.391850, 38.242329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408821, 34.374672, 38.242424>,  <36.956345, 34.940418, 38.189571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408821, 34.374672, 38.242424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075081, 34.166248, 38.170475>,  <36.874836, 34.041195, 38.127304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075081, 34.166248, 38.170475>,  <37.408821, 34.374672, 38.242424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075081, 34.166248, 38.170475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500899, -0.580448, -0.642012,
		0.230117, -0.625764, 0.745296,
		-0.834354, -0.521056, -0.179874,
		36.824776, 34.009933, 38.116512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907383, 33.718845, 38.414276>,  <37.408821, 34.374672, 38.242424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907383, 33.718845, 38.414276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586433, 33.775124, 38.182278>,  <37.393864, 33.808891, 38.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586433, 33.775124, 38.182278>,  <37.907383, 33.718845, 38.414276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586433, 33.775124, 38.182278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569938, -0.107727, -0.814595,
		-0.177095, -0.984174, 0.006247,
		-0.802377, 0.140701, -0.579996,
		37.345722, 33.817333, 38.008278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858620, 33.032646, 37.951866>,  <37.907383, 33.718845, 38.414276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858620, 33.032646, 37.951866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123444, 32.786659, 38.123211>,  <38.282337, 32.639069, 38.226017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123444, 32.786659, 38.123211>,  <37.858620, 33.032646, 37.951866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123444, 32.786659, 38.123211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403659, 0.188971, 0.895181,
		-0.631455, -0.765574, -0.123127,
		0.662060, -0.614968, 0.428358,
		38.322063, 32.602169, 38.251717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530445, 32.609295, 38.442554>,  <37.858620, 33.032646, 37.951866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530445, 32.609295, 38.442554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912205, 32.580982, 38.558567>,  <38.141258, 32.563995, 38.628174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912205, 32.580982, 38.558567>,  <37.530445, 32.609295, 38.442554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912205, 32.580982, 38.558567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285733, 0.065013, 0.956102,
		-0.086534, -0.995371, 0.041822,
		0.954394, -0.070786, 0.290036,
		38.198524, 32.559746, 38.645576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617119, 32.222565, 39.108231>,  <37.530445, 32.609295, 38.442554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617119, 32.222565, 39.108231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978874, 32.392216, 39.126965>,  <38.195927, 32.494007, 39.138206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978874, 32.392216, 39.126965>,  <37.617119, 32.222565, 39.108231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978874, 32.392216, 39.126965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105937, 0.116842, 0.987484,
		0.413350, -0.898032, 0.150602,
		0.904389, 0.424131, 0.046838,
		38.250191, 32.519455, 39.141014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125660, 31.908241, 39.586212>,  <37.617119, 32.222565, 39.108231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125660, 31.908241, 39.586212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241226, 32.291058, 39.576405>,  <38.310566, 32.520748, 39.570522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241226, 32.291058, 39.576405>,  <38.125660, 31.908241, 39.586212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241226, 32.291058, 39.576405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072069, 0.047278, 0.996278,
		0.954638, -0.286075, 0.082632,
		0.288917, 0.957040, -0.024516,
		38.327900, 32.578171, 39.569050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685539, 31.984816, 40.052303>,  <38.125660, 31.908241, 39.586212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685539, 31.984816, 40.052303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586769, 32.370434, 40.013031>,  <38.527508, 32.601807, 39.989468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586769, 32.370434, 40.013031>,  <38.685539, 31.984816, 40.052303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586769, 32.370434, 40.013031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037670, 0.110796, 0.993129,
		0.968301, 0.241534, -0.063674,
		-0.246929, 0.964047, -0.098185,
		38.512691, 32.659649, 39.983574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081814, 32.286507, 40.535767>,  <38.685539, 31.984816, 40.052303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081814, 32.286507, 40.535767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801960, 32.555828, 40.440132>,  <38.634048, 32.717422, 40.382751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801960, 32.555828, 40.440132>,  <39.081814, 32.286507, 40.535767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801960, 32.555828, 40.440132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014948, 0.320761, 0.947042,
		0.714341, 0.666160, -0.214352,
		-0.699637, 0.673307, -0.239091,
		38.592068, 32.757820, 40.368404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303593, 32.824478, 40.934826>,  <39.081814, 32.286507, 40.535767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303593, 32.824478, 40.934826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926331, 32.894798, 40.822002>,  <38.699974, 32.936989, 40.754307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926331, 32.894798, 40.822002>,  <39.303593, 32.824478, 40.934826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926331, 32.894798, 40.822002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190762, 0.408629, 0.892543,
		0.272166, 0.895611, -0.351863,
		-0.943152, 0.175797, -0.282063,
		38.643387, 32.947536, 40.737385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261524, 33.556240, 41.093704>,  <39.303593, 32.824478, 40.934826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261524, 33.556240, 41.093704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883598, 33.426147, 41.078003>,  <38.656841, 33.348091, 41.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883598, 33.426147, 41.078003>,  <39.261524, 33.556240, 41.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883598, 33.426147, 41.078003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152738, 0.331339, 0.931067,
		-0.289806, 0.885685, -0.362731,
		-0.944819, -0.325231, -0.039254,
		38.600151, 33.328579, 41.066227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757736, 34.136459, 41.219173>,  <39.261524, 33.556240, 41.093704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757736, 34.136459, 41.219173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581390, 33.794495, 41.328548>,  <38.475582, 33.589317, 41.394173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581390, 33.794495, 41.328548>,  <38.757736, 34.136459, 41.219173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581390, 33.794495, 41.328548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179450, 0.382439, 0.906387,
		-0.879450, 0.350529, -0.322018,
		-0.440868, -0.854909, 0.273433,
		38.449131, 33.538021, 41.410580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056900, 34.309692, 41.535843>,  <38.757736, 34.136459, 41.219173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056900, 34.309692, 41.535843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120670, 33.929321, 41.641911>,  <38.158932, 33.701099, 41.705551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120670, 33.929321, 41.641911>,  <38.056900, 34.309692, 41.535843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120670, 33.929321, 41.641911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255994, 0.219596, 0.941406,
		-0.953441, -0.217968, -0.208423,
		0.159427, -0.950930, 0.265170,
		38.168499, 33.644043, 41.721462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554756, 34.105000, 42.092461>,  <38.056900, 34.309692, 41.535843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554756, 34.105000, 42.092461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847321, 33.832226, 42.093109>,  <38.022861, 33.668564, 42.093498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847321, 33.832226, 42.093109>,  <37.554756, 34.105000, 42.092461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847321, 33.832226, 42.093109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110897, 0.121283, 0.986404,
		-0.672855, -0.721291, 0.164332,
		0.731415, -0.681931, 0.001617,
		38.066746, 33.627647, 42.093594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444443, 33.712032, 42.673496>,  <37.554756, 34.105000, 42.092461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444443, 33.712032, 42.673496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831730, 33.664928, 42.585236>,  <38.064102, 33.636665, 42.532280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831730, 33.664928, 42.585236>,  <37.444443, 33.712032, 42.673496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831730, 33.664928, 42.585236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232504, 0.098603, 0.967584,
		-0.092189, -0.988134, 0.122849,
		0.968216, -0.117763, -0.220655,
		38.122196, 33.629601, 42.519039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628239, 33.090645, 42.983654>,  <37.444443, 33.712032, 42.673496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628239, 33.090645, 42.983654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944317, 33.335209, 42.966820>,  <38.133965, 33.481945, 42.956718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944317, 33.335209, 42.966820>,  <37.628239, 33.090645, 42.983654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944317, 33.335209, 42.966820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026672, 0.034300, 0.999056,
		0.612274, -0.790572, 0.010796,
		0.790196, 0.611408, -0.042087,
		38.181377, 33.518631, 42.954193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023361, 33.038204, 43.691833>,  <37.628239, 33.090645, 42.983654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023361, 33.038204, 43.691833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163746, 33.384060, 43.548042>,  <38.247974, 33.591572, 43.461765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163746, 33.384060, 43.548042>,  <38.023361, 33.038204, 43.691833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163746, 33.384060, 43.548042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040005, 0.397395, 0.916775,
		0.935537, -0.307368, 0.174058,
		0.350957, 0.864640, -0.359481,
		38.269032, 33.643452, 43.440197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603634, 33.191376, 44.046383>,  <38.023361, 33.038204, 43.691833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603634, 33.191376, 44.046383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496510, 33.549038, 43.902851>,  <38.432236, 33.763634, 43.816730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496510, 33.549038, 43.902851>,  <38.603634, 33.191376, 44.046383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496510, 33.549038, 43.902851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100541, 0.396340, 0.912582,
		0.958211, 0.208324, -0.196044,
		-0.267812, 0.894157, -0.358832,
		38.416164, 33.817284, 43.795200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928215, 33.765087, 44.465126>,  <38.603634, 33.191376, 44.046383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928215, 33.765087, 44.465126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637566, 33.976334, 44.289349>,  <38.463177, 34.103081, 44.183884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637566, 33.976334, 44.289349>,  <38.928215, 33.765087, 44.465126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637566, 33.976334, 44.289349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139942, 0.512437, 0.847245,
		0.672633, 0.677124, -0.298442,
		-0.726623, 0.528121, -0.439440,
		38.419579, 34.134769, 44.157516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036121, 34.388020, 44.757092>,  <38.928215, 33.765087, 44.465126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036121, 34.388020, 44.757092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667988, 34.404701, 44.601532>,  <38.447105, 34.414711, 44.508198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667988, 34.404701, 44.601532>,  <39.036121, 34.388020, 44.757092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667988, 34.404701, 44.601532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276099, 0.634998, 0.721490,
		0.277038, 0.771387, -0.572898,
		-0.920337, 0.041703, -0.388897,
		38.391888, 34.417213, 44.484863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916096, 35.131065, 44.724827>,  <39.036121, 34.388020, 44.757092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916096, 35.131065, 44.724827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569386, 34.931618, 44.728352>,  <38.361359, 34.811951, 44.730469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569386, 34.931618, 44.728352>,  <38.916096, 35.131065, 44.724827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569386, 34.931618, 44.728352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361809, 0.640925, 0.676986,
		-0.343206, 0.583608, -0.735943,
		-0.866778, -0.498616, 0.008815,
		38.309353, 34.782032, 44.730995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336277, 35.626724, 44.799248>,  <38.916096, 35.131065, 44.724827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336277, 35.626724, 44.799248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194206, 35.280342, 44.940083>,  <38.108963, 35.072514, 45.024586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194206, 35.280342, 44.940083>,  <38.336277, 35.626724, 44.799248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194206, 35.280342, 44.940083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432208, 0.486095, 0.759545,
		-0.828884, 0.117594, -0.546922,
		-0.355173, -0.865958, 0.352091,
		38.087654, 35.020554, 45.045712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736790, 35.782021, 45.116322>,  <38.336277, 35.626724, 44.799248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736790, 35.782021, 45.116322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760635, 35.404198, 45.245476>,  <37.774944, 35.177505, 45.322968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760635, 35.404198, 45.245476>,  <37.736790, 35.782021, 45.116322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760635, 35.404198, 45.245476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547886, 0.239429, 0.801558,
		-0.834426, -0.224690, -0.503237,
		0.059613, -0.944557, 0.322890,
		37.778519, 35.120831, 45.342342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034664, 35.472347, 45.176746>,  <37.736790, 35.782021, 45.116322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034664, 35.472347, 45.176746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293571, 35.294857, 45.424667>,  <37.448917, 35.188362, 45.573418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293571, 35.294857, 45.424667>,  <37.034664, 35.472347, 45.176746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293571, 35.294857, 45.424667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553863, 0.284877, 0.782356,
		-0.523715, -0.849680, -0.061369,
		0.647270, -0.443722, 0.619800,
		37.487751, 35.161739, 45.610607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610802, 35.271900, 45.751293>,  <37.034664, 35.472347, 45.176746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610802, 35.271900, 45.751293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997768, 35.290016, 45.850945>,  <37.229946, 35.300888, 45.910736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997768, 35.290016, 45.850945>,  <36.610802, 35.271900, 45.751293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997768, 35.290016, 45.850945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233285, 0.541965, 0.807373,
		-0.098448, -0.839180, 0.534870,
		0.967412, 0.045293, 0.249124,
		37.287991, 35.303604, 45.925682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600163, 35.268181, 46.479630>,  <36.610802, 35.271900, 45.751293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600163, 35.268181, 46.479630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967930, 35.404213, 46.400616>,  <37.188591, 35.485832, 46.353207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967930, 35.404213, 46.400616>,  <36.600163, 35.268181, 46.479630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967930, 35.404213, 46.400616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075670, 0.645845, 0.759709,
		0.385937, -0.683542, 0.619534,
		0.919417, 0.340080, -0.197532,
		37.243755, 35.506237, 46.341354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026306, 35.205509, 47.114136>,  <36.600163, 35.268181, 46.479630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026306, 35.205509, 47.114136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216709, 35.480560, 46.894829>,  <37.330952, 35.645592, 46.763245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216709, 35.480560, 46.894829>,  <37.026306, 35.205509, 47.114136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216709, 35.480560, 46.894829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007047, 0.626384, 0.779482,
		0.879415, -0.367172, 0.303007,
		0.476003, 0.687624, -0.548265,
		37.359509, 35.686848, 46.730350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469780, 35.519791, 47.606258>,  <37.026306, 35.205509, 47.114136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469780, 35.519791, 47.606258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467625, 35.773357, 47.296906>,  <37.466331, 35.925499, 47.111294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467625, 35.773357, 47.296906>,  <37.469780, 35.519791, 47.606258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467625, 35.773357, 47.296906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085107, 0.770877, 0.631273,
		0.996357, -0.062416, -0.058108,
		-0.005392, 0.633919, -0.773381,
		37.466007, 35.963531, 47.064892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043858, 35.923000, 47.715282>,  <37.469780, 35.519791, 47.606258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043858, 35.923000, 47.715282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806000, 36.121166, 47.461998>,  <37.663284, 36.240067, 47.310028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806000, 36.121166, 47.461998>,  <38.043858, 35.923000, 47.715282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806000, 36.121166, 47.461998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286706, 0.866478, 0.408675,
		0.751132, 0.061469, -0.657284,
		-0.594643, 0.495417, -0.633215,
		37.627605, 36.269791, 47.272034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476749, 36.378727, 47.445198>,  <38.043858, 35.923000, 47.715282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476749, 36.378727, 47.445198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110146, 36.531857, 47.398788>,  <37.890182, 36.623734, 47.370945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110146, 36.531857, 47.398788>,  <38.476749, 36.378727, 47.445198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110146, 36.531857, 47.398788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326406, 0.883367, 0.336335,
		0.231248, 0.270383, -0.934568,
		-0.916506, 0.382825, -0.116022,
		37.835194, 36.646706, 47.363983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531826, 36.951962, 47.002052>,  <38.476749, 36.378727, 47.445198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531826, 36.951962, 47.002052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187572, 37.021542, 47.193493>,  <37.981022, 37.063290, 47.308357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187572, 37.021542, 47.193493>,  <38.531826, 36.951962, 47.002052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187572, 37.021542, 47.193493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288756, 0.940843, 0.177295,
		-0.419444, 0.290784, -0.859948,
		-0.860631, 0.173950, 0.478597,
		37.929382, 37.073727, 47.337070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332817, 37.677727, 46.892349>,  <38.531826, 36.951962, 47.002052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332817, 37.677727, 46.892349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145370, 37.551044, 47.222221>,  <38.032902, 37.475037, 47.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145370, 37.551044, 47.222221>,  <38.332817, 37.677727, 46.892349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145370, 37.551044, 47.222221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261535, 0.841942, 0.471946,
		-0.843802, 0.436843, -0.311715,
		-0.468612, -0.316705, 0.824682,
		38.004787, 37.456032, 47.469627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012268, 38.202316, 47.084003>,  <38.332817, 37.677727, 46.892349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012268, 38.202316, 47.084003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999168, 37.997658, 47.427433>,  <37.991306, 37.874863, 47.633492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999168, 37.997658, 47.427433>,  <38.012268, 38.202316, 47.084003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999168, 37.997658, 47.427433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233522, 0.831337, 0.504327,
		-0.971800, 0.217012, 0.092254,
		-0.032751, -0.511649, 0.858570,
		37.989342, 37.844162, 47.685005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632362, 38.603924, 47.469406>,  <38.012268, 38.202316, 47.084003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632362, 38.603924, 47.469406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803230, 38.366158, 47.741932>,  <37.905750, 38.223499, 47.905449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803230, 38.366158, 47.741932>,  <37.632362, 38.603924, 47.469406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803230, 38.366158, 47.741932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429398, 0.796501, 0.425680,
		-0.795702, 0.110718, 0.595483,
		0.427173, -0.594414, 0.681319,
		37.931381, 38.187832, 47.946327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344128, 38.783390, 48.127251>,  <37.632362, 38.603924, 47.469406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344128, 38.783390, 48.127251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698444, 38.619549, 48.214527>,  <37.911034, 38.521244, 48.266895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698444, 38.619549, 48.214527>,  <37.344128, 38.783390, 48.127251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698444, 38.619549, 48.214527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236104, 0.802492, 0.547962,
		-0.399544, -0.433861, 0.807545,
		0.885788, -0.409600, 0.218194,
		37.964180, 38.496670, 48.279984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414890, 38.767914, 48.873356>,  <37.344128, 38.783390, 48.127251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414890, 38.767914, 48.873356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791813, 38.739994, 48.742397>,  <38.017967, 38.723244, 48.663822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791813, 38.739994, 48.742397>,  <37.414890, 38.767914, 48.873356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791813, 38.739994, 48.742397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240140, 0.822332, 0.515851,
		0.233223, -0.564711, 0.791650,
		0.942306, -0.069798, -0.327396,
		38.074505, 38.719055, 48.644176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727516, 38.823437, 49.459270>,  <37.414890, 38.767914, 48.873356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727516, 38.823437, 49.459270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002373, 38.919506, 49.184998>,  <38.167286, 38.977150, 49.020435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002373, 38.919506, 49.184998>,  <37.727516, 38.823437, 49.459270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002373, 38.919506, 49.184998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267844, 0.793557, 0.546376,
		0.675352, -0.559091, 0.480954,
		0.687138, 0.240175, -0.685679,
		38.208515, 38.991558, 48.979294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203796, 38.922474, 49.901840>,  <37.727516, 38.823437, 49.459270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203796, 38.922474, 49.901840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300064, 39.113781, 49.564003>,  <38.357826, 39.228565, 49.361301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300064, 39.113781, 49.564003>,  <38.203796, 38.922474, 49.901840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300064, 39.113781, 49.564003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231105, 0.816908, 0.528443,
		0.942691, -0.322372, 0.086079,
		0.240674, 0.478266, -0.844594,
		38.372265, 39.257259, 49.310623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814396, 39.223293, 50.062138>,  <38.203796, 38.922474, 49.901840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814396, 39.223293, 50.062138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715954, 39.410709, 49.722752>,  <38.656887, 39.523159, 49.519119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715954, 39.410709, 49.722752>,  <38.814396, 39.223293, 50.062138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715954, 39.410709, 49.722752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351783, 0.858881, 0.372253,
		0.903150, -0.206862, -0.376203,
		-0.246109, 0.468542, -0.848469,
		38.642120, 39.551273, 49.468212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339111, 39.723812, 49.899063>,  <38.814396, 39.223293, 50.062138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339111, 39.723812, 49.899063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033703, 39.861427, 49.680462>,  <38.850456, 39.943996, 49.549301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033703, 39.861427, 49.680462>,  <39.339111, 39.723812, 49.899063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033703, 39.861427, 49.680462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282005, 0.938949, 0.197100,
		0.580949, -0.003626, -0.813931,
		-0.763525, 0.344038, -0.546504,
		38.804646, 39.964638, 49.516510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569466, 40.268574, 49.366848>,  <39.339111, 39.723812, 49.899063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569466, 40.268574, 49.366848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189522, 40.330357, 49.475597>,  <38.961555, 40.367424, 49.540848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189522, 40.330357, 49.475597>,  <39.569466, 40.268574, 49.366848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189522, 40.330357, 49.475597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168725, 0.985213, 0.029779,
		-0.263250, 0.074157, -0.961873,
		-0.949859, 0.154452, 0.271869,
		38.904564, 40.376694, 49.557159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239899, 40.123669, 49.334972>,  <39.569466, 40.268574, 49.366848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239899, 40.123669, 49.334972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597401, 40.116821, 49.514267>,  <40.811901, 40.112713, 49.621841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597401, 40.116821, 49.514267>,  <40.239899, 40.123669, 49.334972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597401, 40.116821, 49.514267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072258, -0.980726, -0.181533,
		0.442701, 0.194634, -0.875291,
		0.893753, -0.017118, 0.448232,
		40.865528, 40.111687, 49.648735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699379, 39.965317, 48.894157>,  <40.239899, 40.123669, 49.334972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699379, 39.965317, 48.894157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785931, 39.843140, 49.265076>,  <40.837860, 39.769833, 49.487629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785931, 39.843140, 49.265076>,  <40.699379, 39.965317, 48.894157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785931, 39.843140, 49.265076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092908, -0.939047, -0.330996,
		0.971880, 0.157773, -0.174808,
		0.216375, -0.305447, 0.927299,
		40.850842, 39.751507, 49.543266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403927, 39.671040, 48.863869>,  <40.699379, 39.965317, 48.894157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403927, 39.671040, 48.863869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209320, 39.526707, 49.182140>,  <41.092556, 39.440105, 49.373104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209320, 39.526707, 49.182140>,  <41.403927, 39.671040, 48.863869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209320, 39.526707, 49.182140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264365, -0.928834, -0.259573,
		0.832714, 0.084063, 0.547285,
		-0.486517, -0.360833, 0.795676,
		41.063366, 39.418457, 49.420845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814316, 39.210049, 48.981220>,  <41.403927, 39.671040, 48.863869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814316, 39.210049, 48.981220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493755, 39.103397, 49.195385>,  <41.301418, 39.039406, 49.323883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493755, 39.103397, 49.195385>,  <41.814316, 39.210049, 48.981220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493755, 39.103397, 49.195385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124029, -0.949768, -0.287328,
		0.585131, -0.163857, 0.794212,
		-0.801398, -0.266629, 0.535416,
		41.253334, 39.023407, 49.356010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959496, 38.660549, 49.398117>,  <41.814316, 39.210049, 48.981220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959496, 38.660549, 49.398117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562862, 38.613243, 49.377018>,  <41.324883, 38.584858, 49.364361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562862, 38.613243, 49.377018>,  <41.959496, 38.660549, 49.398117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562862, 38.613243, 49.377018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127964, -0.957361, -0.259009,
		-0.019863, -0.263578, 0.964433,
		-0.991580, -0.118268, -0.052745,
		41.265388, 38.577763, 49.361195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770432, 38.018307, 49.807411>,  <41.959496, 38.660549, 49.398117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770432, 38.018307, 49.807411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456944, 38.092304, 49.570240>,  <41.268848, 38.136703, 49.427937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456944, 38.092304, 49.570240>,  <41.770432, 38.018307, 49.807411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456944, 38.092304, 49.570240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057525, -0.972132, -0.227266,
		-0.618442, -0.144006, 0.772523,
		-0.783722, 0.184991, -0.592924,
		41.221828, 38.147800, 49.392365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383377, 37.445782, 49.920567>,  <41.770432, 38.018307, 49.807411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383377, 37.445782, 49.920567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229916, 37.610043, 49.589710>,  <41.137836, 37.708599, 49.391197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229916, 37.610043, 49.589710>,  <41.383377, 37.445782, 49.920567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229916, 37.610043, 49.589710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243874, -0.908944, -0.338150,
		-0.890692, 0.071986, 0.448872,
		-0.383658, 0.410655, -0.827145,
		41.114819, 37.733238, 49.341568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608856, 37.152615, 49.773632>,  <41.383377, 37.445782, 49.920567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608856, 37.152615, 49.773632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765663, 37.285637, 49.430534>,  <40.859749, 37.365448, 49.224674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765663, 37.285637, 49.430534>,  <40.608856, 37.152615, 49.773632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765663, 37.285637, 49.430534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210434, -0.875242, -0.435511,
		-0.895566, 0.351227, -0.273131,
		0.392018, 0.332553, -0.857747,
		40.883270, 37.385403, 49.173210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284298, 36.772736, 49.322468>,  <40.608856, 37.152615, 49.773632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284298, 36.772736, 49.322468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599873, 36.905464, 49.115593>,  <40.789215, 36.985100, 48.991467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599873, 36.905464, 49.115593>,  <40.284298, 36.772736, 49.322468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599873, 36.905464, 49.115593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067525, -0.789753, -0.609698,
		-0.610759, 0.515933, -0.600656,
		0.788933, 0.331819, -0.517186,
		40.836552, 37.005009, 48.960438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137020, 36.753582, 48.567291>,  <40.284298, 36.772736, 49.322468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137020, 36.753582, 48.567291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536312, 36.735653, 48.582901>,  <40.775887, 36.724895, 48.592266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536312, 36.735653, 48.582901>,  <40.137020, 36.753582, 48.567291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536312, 36.735653, 48.582901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002636, -0.689374, -0.724401,
		0.059377, 0.723017, -0.688274,
		0.998232, -0.044826, 0.039027,
		40.835781, 36.722206, 48.594608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259575, 36.719513, 47.871441>,  <40.137020, 36.753582, 48.567291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259575, 36.719513, 47.871441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606369, 36.640369, 48.054390>,  <40.814445, 36.592884, 48.164158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606369, 36.640369, 48.054390>,  <40.259575, 36.719513, 47.871441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606369, 36.640369, 48.054390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276245, -0.573065, -0.771547,
		0.414763, 0.795266, -0.442180,
		0.866984, -0.197859, 0.457374,
		40.866463, 36.581013, 48.191601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846310, 36.925236, 47.450298>,  <40.259575, 36.719513, 47.871441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846310, 36.925236, 47.450298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991631, 36.630947, 47.678940>,  <41.078823, 36.454376, 47.816124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991631, 36.630947, 47.678940>,  <40.846310, 36.925236, 47.450298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991631, 36.630947, 47.678940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283661, -0.497048, -0.820048,
		0.887440, 0.460065, 0.028118,
		0.363299, -0.735720, 0.571603,
		41.100620, 36.410233, 47.850422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260670, 36.643600, 47.001305>,  <40.846310, 36.925236, 47.450298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260670, 36.643600, 47.001305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273537, 36.361683, 47.284775>,  <41.281258, 36.192532, 47.454857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273537, 36.361683, 47.284775>,  <41.260670, 36.643600, 47.001305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273537, 36.361683, 47.284775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066008, -0.706000, -0.705129,
		0.997301, 0.069458, 0.023814,
		0.032165, -0.704798, 0.708679,
		41.283188, 36.150242, 47.497379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817348, 36.192650, 46.873440>,  <41.260670, 36.643600, 47.001305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817348, 36.192650, 46.873440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551651, 35.978252, 47.081860>,  <41.392231, 35.849613, 47.206913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551651, 35.978252, 47.081860>,  <41.817348, 36.192650, 46.873440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551651, 35.978252, 47.081860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082231, -0.640420, -0.763610,
		0.742979, -0.550070, 0.381320,
		-0.664244, -0.535990, 0.521051,
		41.352379, 35.817455, 47.238174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041088, 35.486183, 46.764496>,  <41.817348, 36.192650, 46.873440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041088, 35.486183, 46.764496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663258, 35.454414, 46.891907>,  <41.436558, 35.435352, 46.968353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663258, 35.454414, 46.891907>,  <42.041088, 35.486183, 46.764496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663258, 35.454414, 46.891907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198143, -0.635699, -0.746073,
		0.261742, -0.767841, 0.584732,
		-0.944580, -0.079418, 0.318532,
		41.379883, 35.430588, 46.987465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909653, 34.781052, 46.882618>,  <42.041088, 35.486183, 46.764496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909653, 34.781052, 46.882618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562767, 34.968727, 46.815926>,  <41.354633, 35.081333, 46.775909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562767, 34.968727, 46.815926>,  <41.909653, 34.781052, 46.882618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562767, 34.968727, 46.815926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215818, -0.655945, -0.723297,
		-0.448728, -0.591272, 0.670105,
		-0.867217, 0.469184, -0.166734,
		41.302601, 35.109482, 46.765903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460400, 34.237736, 46.668919>,  <41.909653, 34.781052, 46.882618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460400, 34.237736, 46.668919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273479, 34.569088, 46.545364>,  <41.161327, 34.767899, 46.471233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273479, 34.569088, 46.545364>,  <41.460400, 34.237736, 46.668919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273479, 34.569088, 46.545364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284780, -0.471795, -0.834452,
		-0.836976, -0.301977, 0.456378,
		-0.467302, 0.828384, -0.308884,
		41.133289, 34.817604, 46.452698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903316, 33.957565, 46.185448>,  <41.460400, 34.237736, 46.668919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903316, 33.957565, 46.185448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898006, 34.349674, 46.106560>,  <40.894821, 34.584938, 46.059227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898006, 34.349674, 46.106560>,  <40.903316, 33.957565, 46.185448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898006, 34.349674, 46.106560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185448, -0.196225, -0.962863,
		-0.982564, 0.023794, 0.184394,
		-0.013273, 0.980270, -0.197217,
		40.894024, 34.643757, 46.047394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222046, 34.174259, 46.045956>,  <40.903316, 33.957565, 46.185448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222046, 34.174259, 46.045956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508785, 34.390644, 45.870010>,  <40.680828, 34.520477, 45.764442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508785, 34.390644, 45.870010>,  <40.222046, 34.174259, 46.045956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508785, 34.390644, 45.870010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280309, -0.354034, -0.892237,
		-0.638396, 0.762899, -0.102153,
		0.716852, 0.540967, -0.439861,
		40.723843, 34.552933, 45.738052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096226, 33.833786, 45.443222>,  <40.222046, 34.174259, 46.045956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096226, 33.833786, 45.443222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382416, 34.103100, 45.368629>,  <40.554131, 34.264690, 45.323875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382416, 34.103100, 45.368629>,  <40.096226, 33.833786, 45.443222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382416, 34.103100, 45.368629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060100, -0.206617, -0.976574,
		-0.696046, 0.709924, -0.107365,
		0.715477, 0.673288, -0.186482,
		40.597057, 34.305088, 45.312683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855267, 34.333027, 44.951550>,  <40.096226, 33.833786, 45.443222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855267, 34.333027, 44.951550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252533, 34.305687, 44.913696>,  <40.490891, 34.289284, 44.890984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252533, 34.305687, 44.913696>,  <39.855267, 34.333027, 44.951550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252533, 34.305687, 44.913696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105067, -0.170059, -0.979817,
		0.050877, 0.983061, -0.176077,
		0.993163, -0.068350, -0.094635,
		40.550484, 34.285183, 44.885307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045971, 34.809612, 44.431667>,  <39.855267, 34.333027, 44.951550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045971, 34.809612, 44.431667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343822, 34.545063, 44.467716>,  <40.522533, 34.386333, 44.489346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343822, 34.545063, 44.467716>,  <40.045971, 34.809612, 44.431667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343822, 34.545063, 44.467716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092886, -0.236384, -0.967210,
		0.660987, 0.711838, -0.237450,
		0.744626, -0.661369, 0.090127,
		40.567211, 34.346653, 44.494755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417553, 35.012959, 43.828094>,  <40.045971, 34.809612, 44.431667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417553, 35.012959, 43.828094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556999, 34.657097, 43.946064>,  <40.640667, 34.443581, 44.016846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556999, 34.657097, 43.946064>,  <40.417553, 35.012959, 43.828094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556999, 34.657097, 43.946064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138418, -0.262343, -0.954995,
		0.926990, 0.373745, 0.031689,
		0.348612, -0.889657, 0.294923,
		40.661583, 34.390198, 44.034542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059822, 34.847198, 43.491695>,  <40.417553, 35.012959, 43.828094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059822, 34.847198, 43.491695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944710, 34.486729, 43.621353>,  <40.875645, 34.270447, 43.699146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944710, 34.486729, 43.621353>,  <41.059822, 34.847198, 43.491695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944710, 34.486729, 43.621353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207617, -0.389120, -0.897486,
		0.934922, -0.190979, 0.299080,
		-0.287778, -0.901173, 0.324146,
		40.858376, 34.216377, 43.718597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493454, 34.336014, 43.179935>,  <41.059822, 34.847198, 43.491695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493454, 34.336014, 43.179935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154274, 34.142525, 43.266644>,  <40.950764, 34.026432, 43.318668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154274, 34.142525, 43.266644>,  <41.493454, 34.336014, 43.179935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154274, 34.142525, 43.266644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043068, -0.470459, -0.881370,
		0.528319, -0.738025, 0.419760,
		-0.847953, -0.483723, 0.216767,
		40.899887, 33.997406, 43.331673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632908, 33.761978, 42.891224>,  <41.493454, 34.336014, 43.179935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632908, 33.761978, 42.891224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234951, 33.743408, 42.927094>,  <40.996178, 33.732265, 42.948616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234951, 33.743408, 42.927094>,  <41.632908, 33.761978, 42.891224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234951, 33.743408, 42.927094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053835, -0.507468, -0.859987,
		0.085435, -0.860419, 0.502375,
		-0.994888, -0.046428, 0.089676,
		40.936485, 33.729481, 42.953995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448059, 33.055035, 42.971630>,  <41.632908, 33.761978, 42.891224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448059, 33.055035, 42.971630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161037, 33.273350, 42.798546>,  <40.988823, 33.404339, 42.694695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161037, 33.273350, 42.798546>,  <41.448059, 33.055035, 42.971630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161037, 33.273350, 42.798546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020027, -0.604834, -0.796100,
		-0.696215, -0.579911, 0.423070,
		-0.717554, 0.545783, -0.432709,
		40.945770, 33.437084, 42.668732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034706, 32.592079, 42.712215>,  <41.448059, 33.055035, 42.971630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034706, 32.592079, 42.712215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873657, 32.908081, 42.527267>,  <40.777027, 33.097683, 42.416298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873657, 32.908081, 42.527267>,  <41.034706, 32.592079, 42.712215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873657, 32.908081, 42.527267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093785, -0.538069, -0.837667,
		-0.910547, -0.293904, 0.290731,
		-0.402627, 0.790002, -0.462373,
		40.752869, 33.145081, 42.388554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583321, 32.313877, 42.318687>,  <41.034706, 32.592079, 42.712215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583321, 32.313877, 42.318687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634670, 32.677120, 42.159256>,  <40.665482, 32.895065, 42.063595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634670, 32.677120, 42.159256>,  <40.583321, 32.313877, 42.318687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634670, 32.677120, 42.159256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089104, -0.389720, -0.916613,
		-0.987715, 0.153183, 0.030886,
		0.128373, 0.908104, -0.398581,
		40.673183, 32.949551, 42.039680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126205, 32.355305, 41.745766>,  <40.583321, 32.313877, 42.318687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126205, 32.355305, 41.745766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407837, 32.629837, 41.672852>,  <40.576817, 32.794556, 41.629105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407837, 32.629837, 41.672852>,  <40.126205, 32.355305, 41.745766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407837, 32.629837, 41.672852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104869, -0.153383, -0.982587,
		-0.702337, 0.710933, -0.036019,
		0.704077, 0.686330, -0.182281,
		40.619061, 32.835735, 41.618168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022751, 32.565296, 41.085552>,  <40.126205, 32.355305, 41.745766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022751, 32.565296, 41.085552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399174, 32.692135, 41.132652>,  <40.625027, 32.768238, 41.160912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399174, 32.692135, 41.132652>,  <40.022751, 32.565296, 41.085552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399174, 32.692135, 41.132652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192115, -0.214520, -0.957639,
		-0.278406, 0.923812, -0.262795,
		0.941053, 0.317100, 0.117755,
		40.681488, 32.787266, 41.167980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044151, 33.057308, 40.599720>,  <40.022751, 32.565296, 41.085552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044151, 33.057308, 40.599720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405083, 32.913750, 40.695213>,  <40.621643, 32.827614, 40.752510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405083, 32.913750, 40.695213>,  <40.044151, 33.057308, 40.599720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405083, 32.913750, 40.695213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163796, -0.226800, -0.960069,
		0.398711, 0.905403, -0.145862,
		0.902331, -0.358898, 0.238729,
		40.675781, 32.806080, 40.766830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570385, 33.446114, 40.211739>,  <40.044151, 33.057308, 40.599720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570385, 33.446114, 40.211739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764263, 33.108982, 40.305302>,  <40.880592, 32.906704, 40.361439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764263, 33.108982, 40.305302>,  <40.570385, 33.446114, 40.211739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764263, 33.108982, 40.305302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486001, 0.037165, -0.873167,
		0.727233, 0.536904, 0.427628,
		0.484700, -0.842824, 0.233909,
		40.909672, 32.856136, 40.375473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265182, 33.575127, 40.009945>,  <40.570385, 33.446114, 40.211739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265182, 33.575127, 40.009945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244873, 33.176121, 40.029507>,  <41.232689, 32.936718, 40.041245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244873, 33.176121, 40.029507>,  <41.265182, 33.575127, 40.009945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244873, 33.176121, 40.029507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489885, -0.067548, -0.869166,
		0.870307, -0.020172, 0.492096,
		-0.050773, -0.997512, 0.048906,
		41.229641, 32.876865, 40.044178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879345, 33.290169, 39.795158>,  <41.265182, 33.575127, 40.009945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879345, 33.290169, 39.795158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649296, 32.965549, 39.753929>,  <41.511265, 32.770779, 39.729191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649296, 32.965549, 39.753929>,  <41.879345, 33.290169, 39.795158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649296, 32.965549, 39.753929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490460, -0.241215, -0.837415,
		0.654739, -0.532171, 0.536760,
		-0.575123, -0.811547, -0.103076,
		41.476757, 32.722084, 39.723007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367241, 32.785641, 39.456066>,  <41.879345, 33.290169, 39.795158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367241, 32.785641, 39.456066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999538, 32.636059, 39.406860>,  <41.778919, 32.546310, 39.377338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999538, 32.636059, 39.406860>,  <42.367241, 32.785641, 39.456066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999538, 32.636059, 39.406860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262191, -0.348493, -0.899893,
		0.293652, -0.859482, 0.418401,
		-0.919252, -0.373957, -0.123013,
		41.723763, 32.523872, 39.369957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385822, 32.129253, 39.186062>,  <42.367241, 32.785641, 39.456066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385822, 32.129253, 39.186062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030167, 32.268982, 39.067802>,  <41.816772, 32.352818, 38.996849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030167, 32.268982, 39.067802>,  <42.385822, 32.129253, 39.186062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030167, 32.268982, 39.067802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195386, -0.294424, -0.935489,
		-0.413831, -0.889544, 0.193531,
		-0.889139, 0.349321, -0.295646,
		41.763424, 32.373779, 38.979107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974438, 31.488503, 38.884617>,  <42.385822, 32.129253, 39.186062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974438, 31.488503, 38.884617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854347, 31.842098, 38.741268>,  <41.782291, 32.054256, 38.655258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854347, 31.842098, 38.741268>,  <41.974438, 31.488503, 38.884617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854347, 31.842098, 38.741268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144601, -0.329181, -0.933129,
		-0.942844, -0.331971, -0.028996,
		-0.300227, 0.883988, -0.358370,
		41.764278, 32.107296, 38.633759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545578, 31.341047, 38.351036>,  <41.974438, 31.488503, 38.884617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545578, 31.341047, 38.351036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642170, 31.726334, 38.303879>,  <41.700127, 31.957506, 38.275585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642170, 31.726334, 38.303879>,  <41.545578, 31.341047, 38.351036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642170, 31.726334, 38.303879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196672, -0.167550, -0.966047,
		-0.950266, 0.210097, -0.229898,
		0.241483, 0.963217, -0.117897,
		41.714615, 32.015297, 38.268509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457924, 31.391895, 37.731953>,  <41.545578, 31.341047, 38.351036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457924, 31.391895, 37.731953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643871, 31.744419, 37.765858>,  <41.755440, 31.955935, 37.786201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643871, 31.744419, 37.765858>,  <41.457924, 31.391895, 37.731953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643871, 31.744419, 37.765858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454996, -0.155678, -0.876780,
		-0.759521, 0.446156, -0.473364,
		0.464872, 0.881311, 0.084759,
		41.783333, 32.008812, 37.791286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270618, 31.834667, 37.181389>,  <41.457924, 31.391895, 37.731953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270618, 31.834667, 37.181389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643208, 31.890322, 37.315845>,  <41.866760, 31.923716, 37.396519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643208, 31.890322, 37.315845>,  <41.270618, 31.834667, 37.181389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643208, 31.890322, 37.315845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356214, -0.161050, -0.920421,
		-0.073929, 0.977089, -0.199577,
		0.931475, 0.139138, 0.336146,
		41.922649, 31.932062, 37.416691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569897, 32.462238, 36.822407>,  <41.270618, 31.834667, 37.181389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569897, 32.462238, 36.822407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854755, 32.200951, 36.925289>,  <42.025669, 32.044178, 36.987019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854755, 32.200951, 36.925289>,  <41.569897, 32.462238, 36.822407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854755, 32.200951, 36.925289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284913, -0.065920, -0.956284,
		0.641621, 0.754291, 0.139168,
		0.712142, -0.653222, 0.257203,
		42.068398, 32.004982, 37.002449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219959, 32.711754, 36.603741>,  <41.569897, 32.462238, 36.822407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219959, 32.711754, 36.603741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190941, 32.312897, 36.612141>,  <42.173531, 32.073582, 36.617180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190941, 32.312897, 36.612141>,  <42.219959, 32.711754, 36.603741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190941, 32.312897, 36.612141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403037, -0.048572, -0.913894,
		0.912304, -0.057832, 0.405409,
		-0.072544, -0.997144, 0.021004,
		42.169178, 32.013752, 36.618443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826561, 32.324871, 36.580742>,  <42.219959, 32.711754, 36.603741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826561, 32.324871, 36.580742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572803, 32.087223, 36.382927>,  <42.420551, 31.944633, 36.264236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572803, 32.087223, 36.382927>,  <42.826561, 32.324871, 36.580742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572803, 32.087223, 36.382927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630305, -0.027201, -0.775871,
		0.447508, -0.803917, 0.391732,
		-0.634391, -0.594119, -0.494540,
		42.382484, 31.908987, 36.234566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258743, 31.962906, 36.152817>,  <42.826561, 32.324871, 36.580742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258743, 31.962906, 36.152817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899635, 31.874228, 36.000572>,  <42.684170, 31.821020, 35.909225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899635, 31.874228, 36.000572>,  <43.258743, 31.962906, 36.152817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899635, 31.874228, 36.000572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437649, -0.351340, -0.827662,
		0.049764, -0.909622, 0.412446,
		-0.897768, -0.221695, -0.380611,
		42.630306, 31.807720, 35.886391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300270, 31.261627, 35.887714>,  <43.258743, 31.962906, 36.152817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300270, 31.261627, 35.887714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000114, 31.428192, 35.682377>,  <42.820023, 31.528131, 35.559174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000114, 31.428192, 35.682377>,  <43.300270, 31.261627, 35.887714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000114, 31.428192, 35.682377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276023, -0.508258, -0.815773,
		-0.600610, -0.753838, 0.266449,
		-0.750386, 0.416415, -0.513341,
		42.774998, 31.553116, 35.528374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753456, 30.776943, 35.485458>,  <43.300270, 31.261627, 35.887714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753456, 30.776943, 35.485458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792778, 31.131018, 35.303562>,  <42.816372, 31.343462, 35.194424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792778, 31.131018, 35.303562>,  <42.753456, 30.776943, 35.485458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792778, 31.131018, 35.303562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419032, -0.451284, -0.787880,
		-0.902635, -0.113100, -0.415281,
		0.098300, 0.885184, -0.454738,
		42.822269, 31.396572, 35.167141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529388, 30.700151, 34.786228>,  <42.753456, 30.776943, 35.485458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529388, 30.700151, 34.786228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781788, 31.010401, 34.792576>,  <42.933228, 31.196550, 34.796387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781788, 31.010401, 34.792576>,  <42.529388, 30.700151, 34.786228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781788, 31.010401, 34.792576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245082, -0.179888, -0.952667,
		-0.736055, 0.605021, -0.303600,
		0.630998, 0.775622, 0.015873,
		42.971088, 31.243088, 34.797337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348705, 31.118816, 34.305466>,  <42.529388, 30.700151, 34.786228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348705, 31.118816, 34.305466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732628, 31.208252, 34.373333>,  <42.962982, 31.261913, 34.414051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732628, 31.208252, 34.373333>,  <42.348705, 31.118816, 34.305466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732628, 31.208252, 34.373333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200412, -0.122737, -0.971993,
		-0.196505, 0.966924, -0.162614,
		0.959803, 0.223591, 0.169665,
		43.020569, 31.275330, 34.424232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533283, 31.612282, 33.792480>,  <42.348705, 31.118816, 34.305466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533283, 31.612282, 33.792480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892101, 31.477600, 33.906982>,  <43.107391, 31.396791, 33.975685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892101, 31.477600, 33.906982>,  <42.533283, 31.612282, 33.792480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892101, 31.477600, 33.906982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332219, 0.086589, -0.939219,
		0.291454, 0.937620, 0.189534,
		0.897042, -0.336706, 0.286259,
		43.161213, 31.376589, 33.992859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989235, 32.043896, 33.480534>,  <42.533283, 31.612282, 33.792480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989235, 32.043896, 33.480534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214329, 31.724991, 33.567905>,  <43.349384, 31.533648, 33.620327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214329, 31.724991, 33.567905>,  <42.989235, 32.043896, 33.480534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214329, 31.724991, 33.567905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380141, 0.014943, -0.924808,
		0.734048, 0.603451, 0.311480,
		0.562731, -0.797260, 0.218428,
		43.383148, 31.485813, 33.633434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567429, 32.269997, 33.461430>,  <42.989235, 32.043896, 33.480534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567429, 32.269997, 33.461430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580585, 31.876907, 33.388573>,  <43.588478, 31.641054, 33.344860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580585, 31.876907, 33.388573>,  <43.567429, 32.269997, 33.461430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580585, 31.876907, 33.388573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506943, 0.173461, -0.844346,
		0.861352, -0.064563, 0.503890,
		0.032892, -0.982722, -0.182141,
		43.590454, 31.582090, 33.333931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275448, 32.122528, 33.367580>,  <43.567429, 32.269997, 33.461430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275448, 32.122528, 33.367580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065842, 31.832348, 33.189083>,  <43.940079, 31.658239, 33.081985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065842, 31.832348, 33.189083>,  <44.275448, 32.122528, 33.367580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065842, 31.832348, 33.189083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534076, 0.128245, -0.835653,
		0.663452, -0.676222, 0.320242,
		-0.524018, -0.725449, -0.446239,
		43.908638, 31.614714, 33.055210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763996, 31.756355, 33.118958>,  <44.275448, 32.122528, 33.367580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763996, 31.756355, 33.118958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432316, 31.658939, 32.917717>,  <44.233307, 31.600491, 32.796974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432316, 31.658939, 32.917717>,  <44.763996, 31.756355, 33.118958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432316, 31.658939, 32.917717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511122, 0.033910, -0.858839,
		0.226221, -0.969298, 0.096360,
		-0.829203, -0.243539, -0.503101,
		44.183556, 31.585878, 32.766788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032223, 31.326563, 32.571861>,  <44.763996, 31.756355, 33.118958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032223, 31.326563, 32.571861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671787, 31.420563, 32.426086>,  <44.455524, 31.476963, 32.338623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671787, 31.420563, 32.426086>,  <45.032223, 31.326563, 32.571861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671787, 31.420563, 32.426086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394554, 0.095641, -0.913882,
		-0.179905, -0.967279, -0.178900,
		-0.901089, 0.234998, -0.364438,
		44.401459, 31.491062, 32.316753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901161, 30.931080, 32.021091>,  <45.032223, 31.326563, 32.571861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901161, 30.931080, 32.021091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658970, 31.242104, 31.953207>,  <44.513657, 31.428719, 31.912476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658970, 31.242104, 31.953207>,  <44.901161, 30.931080, 32.021091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658970, 31.242104, 31.953207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345655, 0.064837, -0.936119,
		-0.716884, -0.625458, -0.308024,
		-0.605475, 0.777559, -0.169712,
		44.477325, 31.475370, 31.902294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603413, 30.816729, 31.309914>,  <44.901161, 30.931080, 32.021091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603413, 30.816729, 31.309914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561260, 31.205570, 31.393734>,  <44.535969, 31.438875, 31.444027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561260, 31.205570, 31.393734>,  <44.603413, 30.816729, 31.309914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561260, 31.205570, 31.393734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401232, 0.234374, -0.885484,
		-0.909895, -0.009230, -0.414736,
		-0.105377, 0.972103, 0.209553,
		44.529648, 31.497202, 31.456600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268929, 31.057446, 30.725601>,  <44.603413, 30.816729, 31.309914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268929, 31.057446, 30.725601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423271, 31.376896, 30.910343>,  <44.515877, 31.568567, 31.021189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423271, 31.376896, 30.910343>,  <44.268929, 31.057446, 30.725601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423271, 31.376896, 30.910343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391563, 0.311526, -0.865812,
		-0.835341, 0.514923, -0.192509,
		0.385854, 0.798628, 0.461855,
		44.539028, 31.616484, 31.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043812, 31.607092, 30.296534>,  <44.268929, 31.057446, 30.725601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043812, 31.607092, 30.296534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364727, 31.720804, 30.506491>,  <44.557278, 31.789032, 30.632465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364727, 31.720804, 30.506491>,  <44.043812, 31.607092, 30.296534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364727, 31.720804, 30.506491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472775, 0.234221, -0.849485,
		-0.364435, 0.929690, 0.053512,
		0.802291, 0.284283, 0.524893,
		44.605415, 31.806089, 30.663958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123314, 32.366772, 30.166395>,  <44.043812, 31.607092, 30.296534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123314, 32.366772, 30.166395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463692, 32.176537, 30.255577>,  <44.667919, 32.062397, 30.309086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463692, 32.176537, 30.255577>,  <44.123314, 32.366772, 30.166395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463692, 32.176537, 30.255577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497570, 0.593895, -0.632228,
		0.168264, 0.648929, 0.742010,
		0.850947, -0.475583, 0.222956,
		44.718975, 32.033863, 30.322464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500450, 32.818607, 29.833128>,  <44.123314, 32.366772, 30.166395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500450, 32.818607, 29.833128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786854, 32.554657, 29.924252>,  <44.958694, 32.396286, 29.978926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786854, 32.554657, 29.924252>,  <44.500450, 32.818607, 29.833128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786854, 32.554657, 29.924252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631759, 0.473668, -0.613611,
		0.297001, 0.583272, 0.756032,
		0.716011, -0.659873, 0.227807,
		45.001656, 32.356693, 29.992594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094883, 33.243084, 29.860458>,  <44.500450, 32.818607, 29.833128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094883, 33.243084, 29.860458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242878, 32.873974, 29.817396>,  <45.331673, 32.652508, 29.791559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242878, 32.873974, 29.817396>,  <45.094883, 33.243084, 29.860458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242878, 32.873974, 29.817396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627536, 0.333676, -0.703462,
		0.685062, 0.192713, 0.702532,
		0.369984, -0.922780, -0.107654,
		45.353874, 32.597141, 29.785099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.802013, 33.202011, 30.048620>,  <45.094883, 33.243084, 29.860458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.802013, 33.202011, 30.048620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784691, 32.890842, 29.797873>,  <45.774296, 32.704144, 29.647423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784691, 32.890842, 29.797873>,  <45.802013, 33.202011, 30.048620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784691, 32.890842, 29.797873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636590, 0.462102, -0.617426,
		0.769986, -0.425797, 0.475204,
		-0.043306, -0.777919, -0.626870,
		45.771698, 32.657467, 29.609812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.476856, 33.252411, 29.856133>,  <45.802013, 33.202011, 30.048620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.476856, 33.252411, 29.856133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271378, 33.031403, 29.593580>,  <46.148090, 32.898796, 29.436049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.271378, 33.031403, 29.593580>,  <46.476856, 33.252411, 29.856133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271378, 33.031403, 29.593580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530715, 0.396480, -0.749097,
		0.674133, -0.733160, 0.089560,
		-0.513699, -0.552522, -0.656379,
		46.117268, 32.865646, 29.396667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.013252, 33.011703, 29.499535>,  <46.476856, 33.252411, 29.856133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.013252, 33.011703, 29.499535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705379, 32.938736, 29.254808>,  <46.520657, 32.894955, 29.107973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.705379, 32.938736, 29.254808>,  <47.013252, 33.011703, 29.499535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705379, 32.938736, 29.254808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576631, 0.212703, -0.788831,
		0.274032, -0.959938, -0.058525,
		-0.769677, -0.182418, -0.611817,
		46.474476, 32.884010, 29.071262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315662, 32.591606, 28.992519>,  <47.013252, 33.011703, 29.499535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315662, 32.591606, 28.992519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989780, 32.730278, 28.806583>,  <46.794250, 32.813480, 28.695023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989780, 32.730278, 28.806583>,  <47.315662, 32.591606, 28.992519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989780, 32.730278, 28.806583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575806, 0.388762, -0.719244,
		-0.068634, -0.853626, -0.516344,
		-0.814701, 0.346679, -0.464841,
		46.745369, 32.834282, 28.667131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417019, 32.469540, 28.322756>,  <47.315662, 32.591606, 28.992519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417019, 32.469540, 28.322756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151043, 32.766804, 28.352571>,  <46.991455, 32.945164, 28.370461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.151043, 32.766804, 28.352571>,  <47.417019, 32.469540, 28.322756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.151043, 32.766804, 28.352571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511625, 0.525921, -0.679446,
		-0.544141, -0.413659, -0.729930,
		-0.664944, 0.743165, 0.074537,
		46.951561, 32.989754, 28.374933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.281757, 32.581676, 27.671837>,  <47.417019, 32.469540, 28.322756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.281757, 32.581676, 27.671837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.176235, 32.929054, 27.839748>,  <47.112923, 33.137482, 27.940495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.176235, 32.929054, 27.839748>,  <47.281757, 32.581676, 27.671837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.176235, 32.929054, 27.839748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580471, 0.490504, -0.649969,
		-0.770364, 0.072206, -0.633503,
		-0.263804, 0.868443, 0.419780,
		47.097095, 33.189587, 27.965683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078964, 33.013302, 27.007198>,  <47.281757, 32.581676, 27.671837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078964, 33.013302, 27.007198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192806, 33.212101, 27.335098>,  <47.261112, 33.331383, 27.531837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192806, 33.212101, 27.335098>,  <47.078964, 33.013302, 27.007198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192806, 33.212101, 27.335098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726360, 0.446253, -0.522742,
		-0.625619, 0.744209, -0.233995,
		0.284608, 0.497002, 0.819748,
		47.278191, 33.361202, 27.581022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.108009, 33.897617, 26.983471>,  <47.078964, 33.013302, 27.007198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.108009, 33.897617, 26.983471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358570, 33.707817, 27.230848>,  <47.508907, 33.593937, 27.379274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358570, 33.707817, 27.230848>,  <47.108009, 33.897617, 26.983471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358570, 33.707817, 27.230848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752765, 0.574234, -0.321870,
		-0.202404, 0.667162, 0.716888,
		0.626400, -0.474500, 0.618443,
		47.546490, 33.565468, 27.416382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484520, 34.472775, 26.603535>,  <47.108009, 33.897617, 26.983471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484520, 34.472775, 26.603535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828133, 34.675236, 26.572865>,  <48.034298, 34.796715, 26.554462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828133, 34.675236, 26.572865>,  <47.484520, 34.472775, 26.603535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.828133, 34.675236, 26.572865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499061, 0.861358, 0.094871,
		0.114066, -0.043230, 0.992532,
		0.859027, 0.506155, -0.076677,
		48.085842, 34.827084, 26.549862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.437134, 34.557796, 25.912130>,  <47.484520, 34.472775, 26.603535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.437134, 34.557796, 25.912130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775562, 34.482609, 25.712601>,  <47.978619, 34.437496, 25.592884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775562, 34.482609, 25.712601>,  <47.437134, 34.557796, 25.912130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.775562, 34.482609, 25.712601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495608, -0.067190, 0.865943,
		-0.196291, -0.979873, 0.036314,
		0.846075, -0.187974, -0.498822,
		48.029385, 34.426216, 25.562954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182907, 35.242695, 25.679630>,  <47.437134, 34.557796, 25.912130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182907, 35.242695, 25.679630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877159, 35.493111, 25.617905>,  <46.693710, 35.643360, 25.580870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.877159, 35.493111, 25.617905>,  <47.182907, 35.242695, 25.679630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877159, 35.493111, 25.617905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320028, -0.160591, 0.933698,
		0.559752, 0.763075, 0.323102,
		-0.764369, 0.626041, -0.154314,
		46.647850, 35.680923, 25.571609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332016, 35.775486, 26.162981>,  <47.182907, 35.242695, 25.679630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332016, 35.775486, 26.162981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.960655, 35.657219, 26.072962>,  <46.737839, 35.586258, 26.018950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.960655, 35.657219, 26.072962>,  <47.332016, 35.775486, 26.162981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.960655, 35.657219, 26.072962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243743, 0.027457, 0.969451,
		-0.280459, 0.954895, -0.097558,
		-0.928403, -0.295671, -0.225049,
		46.682133, 35.568520, 26.005447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867073, 36.318359, 26.316422>,  <47.332016, 35.775486, 26.162981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867073, 36.318359, 26.316422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711926, 35.950260, 26.337225>,  <46.618839, 35.729401, 26.349707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711926, 35.950260, 26.337225>,  <46.867073, 36.318359, 26.316422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711926, 35.950260, 26.337225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044113, 0.074895, 0.996215,
		-0.920659, 0.384104, -0.069644,
		-0.387867, -0.920247, 0.052009,
		46.595566, 35.674187, 26.352827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216328, 36.277359, 26.790327>,  <46.867073, 36.318359, 26.316422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216328, 36.277359, 26.790327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426018, 35.937107, 26.774286>,  <46.551834, 35.732956, 26.764662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426018, 35.937107, 26.774286>,  <46.216328, 36.277359, 26.790327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426018, 35.937107, 26.774286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108316, 0.019899, 0.993917,
		-0.844661, -0.525383, 0.102569,
		0.524228, -0.850633, -0.040100,
		46.583286, 35.681915, 26.762257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512558, 35.883617, 26.857687>,  <46.216328, 36.277359, 26.790327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512558, 35.883617, 26.857687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674225, 35.518360, 26.878923>,  <45.771225, 35.299206, 26.891665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674225, 35.518360, 26.878923>,  <45.512558, 35.883617, 26.857687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674225, 35.518360, 26.878923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511750, 0.273849, 0.814321,
		-0.758131, -0.301952, 0.577982,
		0.404165, -0.913144, 0.053090,
		45.795475, 35.244415, 26.894850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686611, 36.445961, 27.447556>,  <45.512558, 35.883617, 26.857687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686611, 36.445961, 27.447556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384537, 36.705330, 27.409096>,  <45.203293, 36.860950, 27.386021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384537, 36.705330, 27.409096>,  <45.686611, 36.445961, 27.447556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384537, 36.705330, 27.409096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308216, -0.221787, 0.925102,
		0.578534, 0.728256, 0.367344,
		-0.755183, 0.648424, -0.096149,
		45.157982, 36.899857, 27.380251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720516, 37.024757, 27.982283>,  <45.686611, 36.445961, 27.447556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720516, 37.024757, 27.982283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358810, 36.904415, 27.861101>,  <45.141785, 36.832211, 27.788391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358810, 36.904415, 27.861101>,  <45.720516, 37.024757, 27.982283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358810, 36.904415, 27.861101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295651, -0.070699, 0.952676,
		-0.308041, 0.951044, -0.025018,
		-0.904268, -0.300860, -0.302956,
		45.087528, 36.814156, 27.770214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240421, 37.470230, 28.358101>,  <45.720516, 37.024757, 27.982283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240421, 37.470230, 28.358101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052814, 37.145351, 28.219330>,  <44.940250, 36.950424, 28.136066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052814, 37.145351, 28.219330>,  <45.240421, 37.470230, 28.358101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052814, 37.145351, 28.219330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154338, -0.311396, 0.937663,
		-0.869600, 0.493323, 0.020697,
		-0.469016, -0.812197, -0.346929,
		44.912109, 36.901691, 28.115252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656281, 37.452801, 28.750586>,  <45.240421, 37.470230, 28.358101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656281, 37.452801, 28.750586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717602, 37.084301, 28.607590>,  <44.754395, 36.863201, 28.521791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717602, 37.084301, 28.607590>,  <44.656281, 37.452801, 28.750586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717602, 37.084301, 28.607590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303952, -0.388190, 0.870012,
		-0.940271, -0.024719, -0.339528,
		0.153307, -0.921248, -0.357490,
		44.763596, 36.807926, 28.500343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019875, 37.102867, 28.950367>,  <44.656281, 37.452801, 28.750586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019875, 37.102867, 28.950367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270855, 36.804352, 28.861507>,  <44.421444, 36.625240, 28.808191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270855, 36.804352, 28.861507>,  <44.019875, 37.102867, 28.950367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270855, 36.804352, 28.861507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263907, -0.472234, 0.841040,
		-0.732567, -0.469088, -0.493257,
		0.627455, -0.746292, -0.222148,
		44.459091, 36.580463, 28.794863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700848, 36.479290, 29.260670>,  <44.019875, 37.102867, 28.950367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700848, 36.479290, 29.260670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089241, 36.400166, 29.206913>,  <44.322277, 36.352692, 29.174660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089241, 36.400166, 29.206913>,  <43.700848, 36.479290, 29.260670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089241, 36.400166, 29.206913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003756, -0.549271, 0.835636,
		-0.239117, -0.811893, -0.532590,
		0.970983, -0.197814, -0.134390,
		44.380535, 36.340820, 29.166595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805050, 35.661427, 29.343346>,  <43.700848, 36.479290, 29.260670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805050, 35.661427, 29.343346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171032, 35.813213, 29.398291>,  <44.390621, 35.904285, 29.431257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171032, 35.813213, 29.398291>,  <43.805050, 35.661427, 29.343346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171032, 35.813213, 29.398291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149990, -0.635745, 0.757186,
		0.374656, -0.672185, -0.638592,
		0.914951, 0.379467, 0.137364,
		44.445518, 35.927055, 29.439501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320122, 35.018257, 29.282263>,  <43.805050, 35.661427, 29.343346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320122, 35.018257, 29.282263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516384, 35.296772, 29.491812>,  <44.634140, 35.463882, 29.617540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516384, 35.296772, 29.491812>,  <44.320122, 35.018257, 29.282263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516384, 35.296772, 29.491812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332007, -0.705250, 0.626413,
		0.805625, -0.133423, -0.577206,
		0.490652, 0.696291, 0.523870,
		44.663578, 35.505661, 29.648973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973385, 34.657784, 29.429201>,  <44.320122, 35.018257, 29.282263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973385, 34.657784, 29.429201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877270, 34.948666, 29.686396>,  <44.819603, 35.123196, 29.840712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877270, 34.948666, 29.686396>,  <44.973385, 34.657784, 29.429201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877270, 34.948666, 29.686396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121727, -0.634591, 0.763202,
		0.963040, 0.261655, 0.063962,
		-0.240285, 0.727208, 0.642986,
		44.805183, 35.166828, 29.879292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517334, 34.589931, 29.975004>,  <44.973385, 34.657784, 29.429201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517334, 34.589931, 29.975004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225719, 34.821350, 30.121315>,  <45.050751, 34.960201, 30.209101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225719, 34.821350, 30.121315>,  <45.517334, 34.589931, 29.975004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225719, 34.821350, 30.121315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261622, -0.258285, 0.929969,
		0.632505, 0.773675, 0.036939,
		-0.729035, 0.578546, 0.365777,
		45.007008, 34.994915, 30.231049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933571, 34.975506, 30.566227>,  <45.517334, 34.589931, 29.975004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933571, 34.975506, 30.566227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544163, 35.025902, 30.642519>,  <45.310516, 35.056141, 30.688293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544163, 35.025902, 30.642519>,  <45.933571, 34.975506, 30.566227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544163, 35.025902, 30.642519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147709, -0.290047, 0.945545,
		0.174452, 0.948683, 0.263758,
		-0.973524, 0.125992, 0.190729,
		45.252106, 35.063698, 30.699738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889027, 35.376934, 31.301870>,  <45.933571, 34.975506, 30.566227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889027, 35.376934, 31.301870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.558174, 35.162151, 31.235508>,  <45.359661, 35.033279, 31.195690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.558174, 35.162151, 31.235508>,  <45.889027, 35.376934, 31.301870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558174, 35.162151, 31.235508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022432, -0.326510, 0.944928,
		-0.561559, 0.777859, 0.282112,
		-0.827133, -0.536960, -0.165906,
		45.310036, 35.001064, 31.185736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518036, 35.540440, 31.896929>,  <45.889027, 35.376934, 31.301870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518036, 35.540440, 31.896929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379028, 35.200886, 31.737621>,  <45.295624, 34.997154, 31.642036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379028, 35.200886, 31.737621>,  <45.518036, 35.540440, 31.896929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379028, 35.200886, 31.737621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045047, -0.409136, 0.911361,
		-0.936589, 0.334659, 0.103944,
		-0.347522, -0.848888, -0.398268,
		45.274773, 34.946220, 31.618141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152489, 35.273666, 32.516212>,  <45.518036, 35.540440, 31.896929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152489, 35.273666, 32.516212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194214, 34.970043, 32.259171>,  <45.219250, 34.787868, 32.104946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194214, 34.970043, 32.259171>,  <45.152489, 35.273666, 32.516212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194214, 34.970043, 32.259171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081497, -0.650485, 0.755134,
		-0.991200, -0.026398, -0.129714,
		0.104311, -0.759060, -0.642609,
		45.225506, 34.742325, 32.066387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629086, 34.739223, 32.728668>,  <45.152489, 35.273666, 32.516212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629086, 34.739223, 32.728668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881130, 34.531914, 32.497375>,  <45.032356, 34.407528, 32.358601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881130, 34.531914, 32.497375>,  <44.629086, 34.739223, 32.728668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881130, 34.531914, 32.497375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076530, -0.782482, 0.617953,
		-0.772708, -0.345141, -0.532729,
		0.630132, -0.518266, -0.578216,
		45.070164, 34.376431, 32.323906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267357, 34.029377, 32.503258>,  <44.629086, 34.739223, 32.728668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267357, 34.029377, 32.503258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659206, 33.962337, 32.459007>,  <44.894318, 33.922112, 32.432457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659206, 33.962337, 32.459007>,  <44.267357, 34.029377, 32.503258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659206, 33.962337, 32.459007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071584, -0.806130, 0.587393,
		-0.187627, -0.567507, -0.801705,
		0.979628, -0.167600, -0.110627,
		44.953094, 33.912056, 32.425819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292995, 33.314808, 32.560249>,  <44.267357, 34.029377, 32.503258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292995, 33.314808, 32.560249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676620, 33.411903, 32.618603>,  <44.906796, 33.470161, 32.653614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676620, 33.411903, 32.618603>,  <44.292995, 33.314808, 32.560249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676620, 33.411903, 32.618603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134625, -0.843950, 0.519254,
		0.249162, -0.478356, -0.842077,
		0.959059, 0.242743, 0.145882,
		44.964336, 33.484726, 32.662369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738678, 32.666260, 32.597351>,  <44.292995, 33.314808, 32.560249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738678, 32.666260, 32.597351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960266, 32.950253, 32.771271>,  <45.093220, 33.120647, 32.875622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960266, 32.950253, 32.771271>,  <44.738678, 32.666260, 32.597351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960266, 32.950253, 32.771271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256685, -0.642468, 0.722044,
		0.791978, -0.288387, -0.538150,
		0.553972, 0.709977, 0.434796,
		45.126457, 33.163246, 32.901711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340096, 32.341251, 32.752254>,  <44.738678, 32.666260, 32.597351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340096, 32.341251, 32.752254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304752, 32.661327, 32.989536>,  <45.283546, 32.853374, 33.131905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304752, 32.661327, 32.989536>,  <45.340096, 32.341251, 32.752254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304752, 32.661327, 32.989536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269280, -0.554171, 0.787644,
		0.959001, 0.229329, -0.166512,
		-0.088354, 0.800189, 0.593204,
		45.278248, 32.901382, 33.167496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774738, 32.157120, 33.199539>,  <45.340096, 32.341251, 32.752254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774738, 32.157120, 33.199539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562950, 32.447468, 33.375164>,  <45.435879, 32.621677, 33.480537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562950, 32.447468, 33.375164>,  <45.774738, 32.157120, 33.199539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562950, 32.447468, 33.375164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301425, -0.322816, 0.897181,
		0.792973, 0.607373, -0.047875,
		-0.529469, 0.725870, 0.439061,
		45.404110, 32.665230, 33.506882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115505, 32.620617, 33.644722>,  <45.774738, 32.157120, 33.199539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115505, 32.620617, 33.644722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753540, 32.643200, 33.813454>,  <45.536362, 32.656750, 33.914692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753540, 32.643200, 33.813454>,  <46.115505, 32.620617, 33.644722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753540, 32.643200, 33.813454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373387, -0.370325, 0.850553,
		0.204233, 0.927185, 0.314033,
		-0.904915, 0.056455, 0.421831,
		45.482067, 32.660137, 33.940002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211304, 33.063629, 34.210274>,  <46.115505, 32.620617, 33.644722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211304, 33.063629, 34.210274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902161, 32.816666, 34.268921>,  <45.716675, 32.668488, 34.304111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902161, 32.816666, 34.268921>,  <46.211304, 33.063629, 34.210274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902161, 32.816666, 34.268921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352030, -0.224899, 0.908567,
		-0.527981, 0.753810, 0.391161,
		-0.772859, -0.617407, 0.146622,
		45.670303, 32.631443, 34.312908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.494091, 33.776543, 34.037743>,  <46.211304, 33.063629, 34.210274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.494091, 33.776543, 34.037743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733044, 33.950138, 33.767990>,  <46.876415, 34.054295, 33.606140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733044, 33.950138, 33.767990>,  <46.494091, 33.776543, 34.037743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.733044, 33.950138, 33.767990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055605, 0.816483, 0.574686,
		0.800026, -0.380807, 0.463622,
		0.597383, 0.433984, -0.674382,
		46.912258, 34.080334, 33.565674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.244404, 33.970936, 34.245640>,  <46.494091, 33.776543, 34.037743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.244404, 33.970936, 34.245640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085522, 34.220116, 33.976074>,  <46.990192, 34.369621, 33.814335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085522, 34.220116, 33.976074>,  <47.244404, 33.970936, 34.245640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.085522, 34.220116, 33.976074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027608, 0.742109, 0.669710,
		0.917315, 0.247406, -0.311968,
		-0.397205, 0.622948, -0.673918,
		46.966362, 34.407001, 33.773899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.521835, 34.622604, 34.335651>,  <47.244404, 33.970936, 34.245640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.521835, 34.622604, 34.335651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.198009, 34.708084, 34.116947>,  <47.003716, 34.759373, 33.985725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.198009, 34.708084, 34.116947>,  <47.521835, 34.622604, 34.335651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.198009, 34.708084, 34.116947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088042, 0.876651, 0.473003,
		0.580396, 0.431062, -0.690888,
		-0.809561, 0.213702, -0.546756,
		46.955143, 34.772194, 33.952919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.519852, 35.173981, 34.871014>,  <47.521835, 34.622604, 34.335651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.519852, 35.173981, 34.871014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678841, 35.022858, 35.205505>,  <47.774235, 34.932182, 35.406200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678841, 35.022858, 35.205505>,  <47.519852, 35.173981, 34.871014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.678841, 35.022858, 35.205505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913256, 0.074142, -0.400583,
		0.089344, 0.922910, 0.374506,
		0.397469, -0.377810, 0.836229,
		47.798080, 34.909515, 35.456375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.362709, 41.243835, 41.436764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966091, 41.279064, 41.474892>,  <39.728119, 41.300201, 41.497768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966091, 41.279064, 41.474892>,  <40.362709, 41.243835, 41.436764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966091, 41.279064, 41.474892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121885, -0.379795, -0.917006,
		-0.044561, -0.920869, 0.387318,
		-0.991544, 0.088071, 0.095316,
		39.668629, 41.305485, 41.503487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075363, 40.535213, 41.197754>,  <40.362709, 41.243835, 41.436764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075363, 40.535213, 41.197754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772118, 40.793175, 41.159058>,  <39.590168, 40.947952, 41.135841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772118, 40.793175, 41.159058>,  <40.075363, 40.535213, 41.197754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772118, 40.793175, 41.159058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409767, -0.586504, -0.698645,
		-0.507296, -0.490014, 0.708898,
		-0.758117, 0.644903, -0.096740,
		39.544682, 40.986645, 41.130035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485550, 40.103771, 41.140461>,  <40.075363, 40.535213, 41.197754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485550, 40.103771, 41.140461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.367504, 40.469826, 41.030598>,  <39.296677, 40.689457, 40.964680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.367504, 40.469826, 41.030598>,  <39.485550, 40.103771, 41.140461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367504, 40.469826, 41.030598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436140, -0.384786, -0.813463,
		-0.850113, -0.120272, 0.512682,
		-0.295110, 0.915136, -0.274656,
		39.278973, 40.744366, 40.948200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733501, 40.073730, 41.167271>,  <39.485550, 40.103771, 41.140461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733501, 40.073730, 41.167271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868473, 40.344772, 40.905895>,  <38.949455, 40.507397, 40.749069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868473, 40.344772, 40.905895>,  <38.733501, 40.073730, 41.167271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868473, 40.344772, 40.905895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624964, -0.357844, -0.693806,
		-0.703959, 0.642491, 0.302733,
		0.337433, 0.677608, -0.653442,
		38.969704, 40.548054, 40.709862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089249, 40.331493, 40.895370>,  <38.733501, 40.073730, 41.167271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089249, 40.331493, 40.895370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385807, 40.387344, 40.632820>,  <38.563744, 40.420856, 40.475288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385807, 40.387344, 40.632820>,  <38.089249, 40.331493, 40.895370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385807, 40.387344, 40.632820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568263, -0.389627, -0.724754,
		-0.356937, 0.910327, -0.209525,
		0.741400, 0.139626, -0.656377,
		38.608227, 40.429234, 40.435905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752571, 40.243176, 40.278816>,  <38.089249, 40.331493, 40.895370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752571, 40.243176, 40.278816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132130, 40.239662, 40.152634>,  <38.359867, 40.237553, 40.076923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132130, 40.239662, 40.152634>,  <37.752571, 40.243176, 40.278816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132130, 40.239662, 40.152634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285438, -0.450215, -0.846068,
		-0.134588, 0.892877, -0.429717,
		0.948900, -0.008787, -0.315454,
		38.416801, 40.237026, 40.057999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831074, 40.400761, 39.535721>,  <37.752571, 40.243176, 40.278816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831074, 40.400761, 39.535721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182350, 40.217525, 39.590763>,  <38.393116, 40.107586, 39.623791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182350, 40.217525, 39.590763>,  <37.831074, 40.400761, 39.535721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182350, 40.217525, 39.590763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147229, -0.532624, -0.833448,
		0.455083, 0.711668, -0.535190,
		0.878193, -0.458083, 0.137610,
		38.445808, 40.080101, 39.632046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219856, 40.423813, 38.838772>,  <37.831074, 40.400761, 39.535721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219856, 40.423813, 38.838772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367580, 40.117451, 39.049297>,  <38.456215, 39.933636, 39.175613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367580, 40.117451, 39.049297>,  <38.219856, 40.423813, 38.838772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367580, 40.117451, 39.049297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062065, -0.544761, -0.836291,
		0.927233, 0.341513, -0.153648,
		0.369306, -0.765901, 0.526317,
		38.478371, 39.887680, 39.207191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579720, 40.108685, 38.341961>,  <38.219856, 40.423813, 38.838772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579720, 40.108685, 38.341961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532429, 39.843124, 38.637329>,  <38.504055, 39.683788, 38.814548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532429, 39.843124, 38.637329>,  <38.579720, 40.108685, 38.341961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532429, 39.843124, 38.637329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011626, -0.742656, -0.669572,
		0.992919, -0.087744, 0.080081,
		-0.118223, -0.663899, 0.738418,
		38.496964, 39.643955, 38.858856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136337, 39.682632, 38.169640>,  <38.579720, 40.108685, 38.341961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136337, 39.682632, 38.169640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.867546, 39.484695, 38.390034>,  <38.706272, 39.365932, 38.522270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.867546, 39.484695, 38.390034>,  <39.136337, 39.682632, 38.169640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867546, 39.484695, 38.390034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029334, -0.761198, -0.647856,
		0.739993, -0.419180, 0.526021,
		-0.671974, -0.494840, 0.550985,
		38.665955, 39.336243, 38.555328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523415, 39.135300, 38.387371>,  <39.136337, 39.682632, 38.169640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523415, 39.135300, 38.387371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.133739, 39.045269, 38.394253>,  <38.899933, 38.991253, 38.398380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.133739, 39.045269, 38.394253>,  <39.523415, 39.135300, 38.387371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133739, 39.045269, 38.394253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184145, -0.836493, -0.516111,
		0.130554, -0.499622, 0.856349,
		-0.974190, -0.225073, 0.017204,
		38.841484, 38.977749, 38.399414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618496, 38.378578, 38.550396>,  <39.523415, 39.135300, 38.387371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618496, 38.378578, 38.550396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242935, 38.448933, 38.432056>,  <39.017597, 38.491146, 38.361053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242935, 38.448933, 38.432056>,  <39.618496, 38.378578, 38.550396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242935, 38.448933, 38.432056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010665, -0.874016, -0.485780,
		-0.344022, -0.452944, 0.822491,
		-0.938901, 0.175890, -0.295850,
		38.961266, 38.501701, 38.343300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219345, 37.801964, 38.673775>,  <39.618496, 38.378578, 38.550396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219345, 37.801964, 38.673775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039536, 37.999710, 38.376179>,  <38.931648, 38.118359, 38.197620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039536, 37.999710, 38.376179>,  <39.219345, 37.801964, 38.673775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039536, 37.999710, 38.376179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030162, -0.840815, -0.540482,
		-0.892761, -0.220517, 0.392875,
		-0.449520, 0.494371, -0.743996,
		38.904678, 38.148022, 38.152981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794662, 37.358250, 38.475239>,  <39.219345, 37.801964, 38.673775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794662, 37.358250, 38.475239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774590, 37.602882, 38.159401>,  <38.762547, 37.749660, 37.969898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774590, 37.602882, 38.159401>,  <38.794662, 37.358250, 38.475239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774590, 37.602882, 38.159401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000637, -0.790606, -0.612325,
		-0.998740, -0.030227, 0.040067,
		-0.050185, 0.611579, -0.789590,
		38.759533, 37.786358, 37.922523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206486, 37.179413, 38.113144>,  <38.794662, 37.358250, 38.475239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206486, 37.179413, 38.113144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.442181, 37.373005, 37.854359>,  <38.583599, 37.489159, 37.699089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.442181, 37.373005, 37.854359>,  <38.206486, 37.179413, 38.113144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442181, 37.373005, 37.854359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182591, -0.700254, -0.690149,
		-0.787055, 0.524793, -0.324248,
		0.589241, 0.483980, -0.646961,
		38.618954, 37.518200, 37.660271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764736, 37.252872, 37.495331>,  <38.206486, 37.179413, 38.113144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764736, 37.252872, 37.495331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.155338, 37.250099, 37.409184>,  <38.389702, 37.248436, 37.357494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.155338, 37.250099, 37.409184>,  <37.764736, 37.252872, 37.495331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155338, 37.250099, 37.409184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176638, -0.598163, -0.781665,
		-0.123406, 0.801345, -0.585335,
		0.976509, -0.006930, -0.215364,
		38.448292, 37.248020, 37.344574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786922, 37.099617, 36.768520>,  <37.764736, 37.252872, 37.495331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786922, 37.099617, 36.768520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.179008, 37.062229, 36.838303>,  <38.414261, 37.039795, 36.880173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.179008, 37.062229, 36.838303>,  <37.786922, 37.099617, 36.768520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179008, 37.062229, 36.838303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059319, -0.702184, -0.709520,
		0.188823, 0.705833, -0.682749,
		0.980218, -0.093474, 0.174458,
		38.473072, 37.034187, 36.890640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096645, 36.993610, 36.148331>,  <37.786922, 37.099617, 36.768520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096645, 36.993610, 36.148331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376541, 36.851116, 36.396030>,  <38.544479, 36.765621, 36.544651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376541, 36.851116, 36.396030>,  <38.096645, 36.993610, 36.148331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376541, 36.851116, 36.396030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219212, -0.717926, -0.660702,
		0.679938, 0.598064, -0.424268,
		0.699736, -0.356232, 0.619249,
		38.586460, 36.744247, 36.581806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650433, 36.734905, 35.706871>,  <38.096645, 36.993610, 36.148331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650433, 36.734905, 35.706871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732079, 36.556602, 36.055500>,  <38.781067, 36.449619, 36.264679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732079, 36.556602, 36.055500>,  <38.650433, 36.734905, 35.706871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732079, 36.556602, 36.055500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128736, -0.870361, -0.475287,
		0.970444, 0.209218, -0.120273,
		0.204119, -0.445757, 0.871571,
		38.793316, 36.422874, 36.316971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227718, 36.293495, 35.572414>,  <38.650433, 36.734905, 35.706871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227718, 36.293495, 35.572414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018391, 36.151154, 35.882126>,  <38.892792, 36.065750, 36.067951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018391, 36.151154, 35.882126>,  <39.227718, 36.293495, 35.572414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018391, 36.151154, 35.882126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163750, -0.933692, -0.318442,
		0.836253, -0.039860, 0.546893,
		-0.523323, -0.355852, 0.774275,
		38.861393, 36.044399, 36.114407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536453, 35.706501, 35.725224>,  <39.227718, 36.293495, 35.572414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536453, 35.706501, 35.725224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180538, 35.663464, 35.902630>,  <38.966991, 35.637642, 36.009075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180538, 35.663464, 35.902630>,  <39.536453, 35.706501, 35.725224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180538, 35.663464, 35.902630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005118, -0.969399, -0.245437,
		0.456352, -0.220656, 0.862006,
		-0.889785, -0.107594, 0.443516,
		38.913601, 35.631184, 36.035686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665756, 35.080959, 36.107773>,  <39.536453, 35.706501, 35.725224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665756, 35.080959, 36.107773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.286270, 35.166637, 36.014767>,  <39.058578, 35.218044, 35.958965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.286270, 35.166637, 36.014767>,  <39.665756, 35.080959, 36.107773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286270, 35.166637, 36.014767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123056, -0.927689, -0.352493,
		-0.291201, -0.305803, 0.906470,
		-0.948715, 0.214193, -0.232512,
		39.001656, 35.230896, 35.945011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545490, 34.680950, 36.687214>,  <39.665756, 35.080959, 36.107773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545490, 34.680950, 36.687214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882256, 34.466034, 36.667233>,  <40.084316, 34.337082, 36.655243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882256, 34.466034, 36.667233>,  <39.545490, 34.680950, 36.687214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882256, 34.466034, 36.667233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386847, 0.536440, 0.750055,
		-0.376204, -0.650806, 0.659487,
		0.841915, -0.537294, -0.049951,
		40.134830, 34.304848, 36.652248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588688, 34.319561, 37.289478>,  <39.545490, 34.680950, 36.687214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588688, 34.319561, 37.289478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.943958, 34.365433, 37.111492>,  <40.157120, 34.392956, 37.004700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.943958, 34.365433, 37.111492>,  <39.588688, 34.319561, 37.289478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943958, 34.365433, 37.111492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372843, 0.386148, 0.843728,
		0.268577, -0.915281, 0.300212,
		0.888175, 0.114674, -0.444967,
		40.210411, 34.399834, 36.978001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988201, 34.183674, 37.795761>,  <39.588688, 34.319561, 37.289478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988201, 34.183674, 37.795761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.209511, 34.386127, 37.531120>,  <40.342297, 34.507599, 37.372337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.209511, 34.386127, 37.531120>,  <39.988201, 34.183674, 37.795761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209511, 34.386127, 37.531120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477657, 0.457923, 0.749767,
		0.682448, -0.730842, 0.011595,
		0.553271, 0.506139, -0.661600,
		40.375492, 34.537968, 37.332642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691719, 34.090614, 38.004002>,  <39.988201, 34.183674, 37.795761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691719, 34.090614, 38.004002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671104, 34.419655, 37.777493>,  <40.658737, 34.617081, 37.641586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671104, 34.419655, 37.777493>,  <40.691719, 34.090614, 38.004002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671104, 34.419655, 37.777493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528265, 0.503660, 0.683567,
		0.847514, -0.263916, -0.460508,
		-0.051535, 0.822603, -0.566277,
		40.655643, 34.666435, 37.607609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274036, 34.397057, 38.086102>,  <40.691719, 34.090614, 38.004002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274036, 34.397057, 38.086102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.060165, 34.715511, 37.972759>,  <40.931843, 34.906582, 37.904755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.060165, 34.715511, 37.972759>,  <41.274036, 34.397057, 38.086102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060165, 34.715511, 37.972759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438507, 0.548020, 0.712310,
		0.722380, 0.256601, -0.642124,
		-0.534677, 0.796134, -0.283357,
		40.899761, 34.954353, 37.887753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688835, 34.894611, 38.123421>,  <41.274036, 34.397057, 38.086102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688835, 34.894611, 38.123421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.334328, 35.079563, 38.134277>,  <41.121624, 35.190533, 38.140793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.334328, 35.079563, 38.134277>,  <41.688835, 34.894611, 38.123421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334328, 35.079563, 38.134277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285922, 0.500064, 0.817425,
		0.364387, 0.732218, -0.575395,
		-0.886268, 0.462377, 0.027140,
		41.068447, 35.218277, 38.142418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804367, 35.640667, 38.215576>,  <41.688835, 34.894611, 38.123421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804367, 35.640667, 38.215576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.425285, 35.599884, 38.336548>,  <41.197838, 35.575417, 38.409130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.425285, 35.599884, 38.336548>,  <41.804367, 35.640667, 38.215576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425285, 35.599884, 38.336548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191367, 0.576827, 0.794134,
		-0.255415, 0.810479, -0.527150,
		-0.947703, -0.101955, 0.302429,
		41.140976, 35.569298, 38.427277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678757, 36.209171, 38.588512>,  <41.804367, 35.640667, 38.215576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678757, 36.209171, 38.588512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.373146, 35.979092, 38.705414>,  <41.189777, 35.841045, 38.775555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.373146, 35.979092, 38.705414>,  <41.678757, 36.209171, 38.588512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373146, 35.979092, 38.705414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028942, 0.483074, 0.875101,
		-0.644533, 0.660144, -0.385730,
		-0.764029, -0.575196, 0.292251,
		41.143936, 35.806534, 38.793091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163296, 36.658089, 38.752304>,  <41.678757, 36.209171, 38.588512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163296, 36.658089, 38.752304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.121510, 36.333912, 38.982876>,  <41.096439, 36.139404, 39.121220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.121510, 36.333912, 38.982876>,  <41.163296, 36.658089, 38.752304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121510, 36.333912, 38.982876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073674, 0.571702, 0.817147,
		-0.991796, 0.127832, -0.000014,
		-0.104465, -0.810442, 0.576429,
		41.090172, 36.090778, 39.155804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773880, 36.958427, 39.258789>,  <41.163296, 36.658089, 38.752304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773880, 36.958427, 39.258789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.844032, 36.597767, 39.416908>,  <40.886124, 36.381371, 39.511780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.844032, 36.597767, 39.416908>,  <40.773880, 36.958427, 39.258789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844032, 36.597767, 39.416908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185573, 0.364051, 0.912705,
		-0.966854, -0.233424, -0.103477,
		0.175377, -0.901654, 0.395301,
		40.896645, 36.327271, 39.535500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242771, 36.793179, 39.725216>,  <40.773880, 36.958427, 39.258789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242771, 36.793179, 39.725216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.539207, 36.548779, 39.836552>,  <40.717068, 36.402138, 39.903355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.539207, 36.548779, 39.836552>,  <40.242771, 36.793179, 39.725216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539207, 36.548779, 39.836552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130600, 0.275465, 0.952398,
		-0.658585, -0.742161, 0.124347,
		0.741086, -0.610996, 0.278343,
		40.761532, 36.365479, 39.920055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983841, 36.524834, 40.338684>,  <40.242771, 36.793179, 39.725216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983841, 36.524834, 40.338684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.383167, 36.508598, 40.322121>,  <40.622765, 36.498859, 40.312183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.383167, 36.508598, 40.322121>,  <39.983841, 36.524834, 40.338684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383167, 36.508598, 40.322121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055978, 0.488694, 0.870657,
		-0.015100, -0.871511, 0.490144,
		0.998318, -0.040584, -0.041406,
		40.682663, 36.496422, 40.309700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225307, 36.469212, 41.083328>,  <39.983841, 36.524834, 40.338684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225307, 36.469212, 41.083328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.530197, 36.582455, 40.850483>,  <40.713131, 36.650398, 40.710773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.530197, 36.582455, 40.850483>,  <40.225307, 36.469212, 41.083328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530197, 36.582455, 40.850483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202129, 0.750224, 0.629530,
		0.614939, -0.597509, 0.514619,
		0.762229, 0.283103, -0.582116,
		40.758865, 36.667385, 40.675846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732021, 36.664440, 41.589691>,  <40.225307, 36.469212, 41.083328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732021, 36.664440, 41.589691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872086, 36.823925, 41.250652>,  <40.956123, 36.919617, 41.047230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.872086, 36.823925, 41.250652>,  <40.732021, 36.664440, 41.589691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872086, 36.823925, 41.250652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438628, 0.729743, 0.524481,
		0.827642, -0.555432, 0.080642,
		0.350162, 0.398711, -0.847595,
		40.977135, 36.943539, 40.996372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447670, 36.899136, 41.708542>,  <40.732021, 36.664440, 41.589691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447670, 36.899136, 41.708542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.326462, 37.100880, 41.385109>,  <41.253738, 37.221928, 41.191051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.326462, 37.100880, 41.385109>,  <41.447670, 36.899136, 41.708542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326462, 37.100880, 41.385109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501856, 0.805740, 0.314521,
		0.810137, -0.310484, -0.497271,
		-0.303017, 0.504364, -0.808578,
		41.235558, 37.252190, 41.142536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056267, 37.187035, 41.469128>,  <41.447670, 36.899136, 41.708542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056267, 37.187035, 41.469128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.752148, 37.400631, 41.321182>,  <41.569675, 37.528790, 41.232414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.752148, 37.400631, 41.321182>,  <42.056267, 37.187035, 41.469128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752148, 37.400631, 41.321182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344177, 0.814060, 0.467812,
		0.550898, 0.228379, -0.802717,
		-0.760298, 0.533993, -0.369862,
		41.524059, 37.560829, 41.210224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309601, 37.822575, 41.135414>,  <42.056267, 37.187035, 41.469128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309601, 37.822575, 41.135414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.924583, 37.899815, 41.211533>,  <41.693573, 37.946159, 41.257202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.924583, 37.899815, 41.211533>,  <42.309601, 37.822575, 41.135414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924583, 37.899815, 41.211533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250147, 0.903226, 0.348725,
		-0.104542, 0.383266, -0.917703,
		-0.962547, 0.193104, 0.190298,
		41.635818, 37.957745, 41.268623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285503, 38.553146, 41.050743>,  <42.309601, 37.822575, 41.135414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285503, 38.553146, 41.050743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.982368, 38.452629, 41.291588>,  <41.800488, 38.392319, 41.436096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.982368, 38.452629, 41.291588>,  <42.285503, 38.553146, 41.050743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982368, 38.452629, 41.291588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043869, 0.901138, 0.431308,
		-0.650971, 0.353274, -0.671889,
		-0.757834, -0.251294, 0.602112,
		41.755020, 38.377239, 41.472221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.905422, 39.150215, 40.940102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761070, 38.979477, 41.271778>,  <41.674458, 38.877033, 41.470783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761070, 38.979477, 41.271778>,  <41.905422, 39.150215, 40.940102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761070, 38.979477, 41.271778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042106, 0.895663, 0.442736,
		-0.931660, 0.124862, -0.341203,
		-0.360884, -0.426846, 0.829195,
		41.652805, 38.851421, 41.520538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393620, 39.604534, 41.218090>,  <41.905422, 39.150215, 40.940102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393620, 39.604534, 41.218090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454288, 39.371105, 41.537201>,  <41.490688, 39.231049, 41.728668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454288, 39.371105, 41.537201>,  <41.393620, 39.604534, 41.218090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454288, 39.371105, 41.537201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194615, 0.773680, 0.602947,
		-0.969083, -0.246708, 0.003773,
		0.151671, -0.583571, 0.797773,
		41.499790, 39.196033, 41.776531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768383, 39.600395, 41.735031>,  <41.393620, 39.604534, 41.218090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768383, 39.600395, 41.735031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.086880, 39.503300, 41.956688>,  <41.277977, 39.445042, 42.089684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.086880, 39.503300, 41.956688>,  <40.768383, 39.600395, 41.735031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086880, 39.503300, 41.956688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183144, 0.776280, 0.603197,
		-0.576590, -0.581780, 0.573652,
		0.796243, -0.242736, 0.554145,
		41.325752, 39.430477, 42.122932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597885, 40.022442, 42.205685>,  <40.768383, 39.600395, 41.735031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597885, 40.022442, 42.205685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.965500, 39.902367, 42.307865>,  <41.186069, 39.830322, 42.369171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.965500, 39.902367, 42.307865>,  <40.597885, 40.022442, 42.205685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965500, 39.902367, 42.307865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002769, 0.652972, 0.757377,
		-0.394157, -0.695352, 0.600938,
		0.919039, -0.300190, 0.255448,
		41.241211, 39.812309, 42.384499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567341, 39.879726, 42.887711>,  <40.597885, 40.022442, 42.205685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567341, 39.879726, 42.887711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963173, 39.904476, 42.835709>,  <41.200672, 39.919327, 42.804508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963173, 39.904476, 42.835709>,  <40.567341, 39.879726, 42.887711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963173, 39.904476, 42.835709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080046, 0.514122, 0.853974,
		0.119681, -0.855482, 0.503812,
		0.989580, 0.061877, -0.130009,
		41.260048, 39.923038, 42.796707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798088, 39.652763, 43.497643>,  <40.567341, 39.879726, 42.887711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798088, 39.652763, 43.497643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078636, 39.882828, 43.329231>,  <41.246967, 40.020866, 43.228184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078636, 39.882828, 43.329231>,  <40.798088, 39.652763, 43.497643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078636, 39.882828, 43.329231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106549, 0.499443, 0.859770,
		0.704786, -0.647880, 0.289012,
		0.701373, 0.575160, -0.421031,
		41.289047, 40.055374, 43.202923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433277, 39.731544, 44.021164>,  <40.798088, 39.652763, 43.497643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433277, 39.731544, 44.021164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.474125, 40.049614, 43.782078>,  <41.498634, 40.240456, 43.638626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.474125, 40.049614, 43.782078>,  <41.433277, 39.731544, 44.021164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474125, 40.049614, 43.782078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369629, 0.527506, 0.764926,
		0.923551, -0.299047, -0.240052,
		0.102120, 0.795178, -0.597715,
		41.504761, 40.288166, 43.602764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083851, 40.105221, 44.242584>,  <41.433277, 39.731544, 44.021164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083851, 40.105221, 44.242584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.888729, 40.365845, 44.010201>,  <41.771656, 40.522217, 43.870770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.888729, 40.365845, 44.010201>,  <42.083851, 40.105221, 44.242584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888729, 40.365845, 44.010201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163087, 0.721819, 0.672592,
		0.857582, 0.233348, -0.458369,
		-0.487807, 0.651557, -0.580963,
		41.742386, 40.561314, 43.835911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408657, 40.754711, 44.230644>,  <42.083851, 40.105221, 44.242584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408657, 40.754711, 44.230644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023743, 40.819912, 44.143528>,  <41.792793, 40.859032, 44.091259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023743, 40.819912, 44.143528>,  <42.408657, 40.754711, 44.230644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023743, 40.819912, 44.143528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052448, 0.674398, 0.736503,
		0.266930, 0.720150, -0.640416,
		-0.962288, 0.163007, -0.217788,
		41.735058, 40.868813, 44.078190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472286, 41.495274, 44.230316>,  <42.408657, 40.754711, 44.230644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472286, 41.495274, 44.230316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104969, 41.357166, 44.307796>,  <41.884579, 41.274300, 44.354286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104969, 41.357166, 44.307796>,  <42.472286, 41.495274, 44.230316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104969, 41.357166, 44.307796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000329, 0.488618, 0.872498,
		-0.395896, 0.801275, -0.448582,
		-0.918295, -0.345270, 0.193705,
		41.829479, 41.253586, 44.365910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042702, 42.038197, 44.467697>,  <42.472286, 41.495274, 44.230316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042702, 42.038197, 44.467697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.882252, 41.702091, 44.613602>,  <41.785980, 41.500427, 44.701145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.882252, 41.702091, 44.613602>,  <42.042702, 42.038197, 44.467697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882252, 41.702091, 44.613602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136914, 0.448727, 0.883119,
		-0.905733, 0.304300, -0.295040,
		-0.401125, -0.840265, 0.364764,
		41.761913, 41.450012, 44.723030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346203, 42.155853, 44.778137>,  <42.042702, 42.038197, 44.467697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346203, 42.155853, 44.778137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.471825, 41.820457, 44.956264>,  <41.547199, 41.619221, 45.063141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.471825, 41.820457, 44.956264>,  <41.346203, 42.155853, 44.778137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471825, 41.820457, 44.956264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190922, 0.403696, 0.894750,
		-0.930010, -0.366021, -0.033304,
		0.314053, -0.838486, 0.445323,
		41.566040, 41.568913, 45.089863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922249, 42.290550, 45.265213>,  <41.346203, 42.155853, 44.778137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922249, 42.290550, 45.265213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.186272, 42.008476, 45.368778>,  <41.344685, 41.839233, 45.430916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.186272, 42.008476, 45.368778>,  <40.922249, 42.290550, 45.265213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186272, 42.008476, 45.368778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170067, 0.195432, 0.965859,
		-0.731709, -0.681557, 0.009068,
		0.660060, -0.705185, 0.258910,
		41.384289, 41.796921, 45.446453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476490, 41.818340, 45.714149>,  <40.922249, 42.290550, 45.265213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476490, 41.818340, 45.714149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.860489, 41.746159, 45.799793>,  <41.090889, 41.702850, 45.851181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.860489, 41.746159, 45.799793>,  <40.476490, 41.818340, 45.714149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860489, 41.746159, 45.799793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189213, 0.145622, 0.971078,
		-0.206411, -0.972745, 0.105653,
		0.959997, -0.180450, 0.214114,
		41.148487, 41.692024, 45.864029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470482, 41.357872, 46.249393>,  <40.476490, 41.818340, 45.714149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470482, 41.357872, 46.249393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844631, 41.485264, 46.310902>,  <41.069122, 41.561699, 46.347805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844631, 41.485264, 46.310902>,  <40.470482, 41.357872, 46.249393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844631, 41.485264, 46.310902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153788, -0.025255, 0.987781,
		0.318471, -0.947594, 0.025355,
		0.935375, 0.318478, 0.153772,
		41.125244, 41.580807, 46.357033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743023, 40.913830, 46.702095>,  <40.470482, 41.357872, 46.249393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743023, 40.913830, 46.702095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.972118, 41.239750, 46.738026>,  <41.109573, 41.435303, 46.759583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.972118, 41.239750, 46.738026>,  <40.743023, 40.913830, 46.702095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972118, 41.239750, 46.738026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067292, -0.062475, 0.995776,
		0.816973, -0.576361, 0.019048,
		0.572736, 0.814804, 0.089824,
		41.143940, 41.484192, 46.764973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248714, 40.706364, 47.203854>,  <40.743023, 40.913830, 46.702095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248714, 40.706364, 47.203854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227283, 41.105789, 47.203106>,  <41.214424, 41.345444, 47.202660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227283, 41.105789, 47.203106>,  <41.248714, 40.706364, 47.203854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227283, 41.105789, 47.203106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158821, -0.006676, 0.987285,
		0.985852, 0.053196, 0.158950,
		-0.053581, 0.998562, -0.001868,
		41.211208, 41.405357, 47.202545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668335, 40.897724, 47.735138>,  <41.248714, 40.706364, 47.203854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668335, 40.897724, 47.735138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.445366, 41.229076, 47.712978>,  <41.311584, 41.427887, 47.699684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.445366, 41.229076, 47.712978>,  <41.668335, 40.897724, 47.735138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445366, 41.229076, 47.712978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080586, 0.012424, 0.996670,
		0.826306, 0.560034, 0.059830,
		-0.557426, 0.828376, -0.055397,
		41.278137, 41.477589, 47.696358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979221, 41.423748, 48.134212>,  <41.668335, 40.897724, 47.735138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979221, 41.423748, 48.134212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.611137, 41.568695, 48.075012>,  <41.390285, 41.655663, 48.039494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.611137, 41.568695, 48.075012>,  <41.979221, 41.423748, 48.134212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611137, 41.568695, 48.075012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025739, 0.321262, 0.946640,
		0.390577, 0.874917, -0.286302,
		-0.920210, 0.362367, -0.147997,
		41.335075, 41.677406, 48.030613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972359, 42.076687, 48.398262>,  <41.979221, 41.423748, 48.134212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972359, 42.076687, 48.398262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.586300, 41.974075, 48.377552>,  <41.354664, 41.912510, 48.365124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.586300, 41.974075, 48.377552>,  <41.972359, 42.076687, 48.398262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586300, 41.974075, 48.377552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129609, 0.296658, 0.946148,
		-0.227355, 0.919884, -0.319568,
		-0.965148, -0.256530, -0.051779,
		41.296757, 41.897118, 48.362019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664635, 42.675362, 48.667336>,  <41.972359, 42.076687, 48.398262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664635, 42.675362, 48.667336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.382969, 42.393814, 48.704704>,  <41.213970, 42.224888, 48.727127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.382969, 42.393814, 48.704704>,  <41.664635, 42.675362, 48.667336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382969, 42.393814, 48.704704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258529, 0.376705, 0.889526,
		-0.661301, 0.602218, -0.447231,
		-0.704162, -0.703866, 0.093425,
		41.171719, 42.182655, 48.732731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978088, 43.027283, 48.643398>,  <41.664635, 42.675362, 48.667336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978088, 43.027283, 48.643398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948864, 42.676762, 48.833874>,  <40.931328, 42.466450, 48.948158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948864, 42.676762, 48.833874>,  <40.978088, 43.027283, 48.643398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948864, 42.676762, 48.833874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470615, 0.451254, 0.758216,
		-0.879308, -0.168701, -0.445373,
		-0.073065, -0.876305, 0.476184,
		40.926945, 42.413872, 48.976730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361683, 42.995735, 48.330372>,  <40.978088, 43.027283, 48.643398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361683, 42.995735, 48.330372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.434029, 42.896374, 48.711021>,  <40.477436, 42.836758, 48.939411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.434029, 42.896374, 48.711021>,  <40.361683, 42.995735, 48.330372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434029, 42.896374, 48.711021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934029, -0.259651, -0.245296,
		0.308022, 0.933208, 0.185056,
		0.180862, -0.248404, 0.951622,
		40.488289, 42.821854, 48.996510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101410, 43.697014, 48.586906>,  <40.361683, 42.995735, 48.330372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101410, 43.697014, 48.586906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.406868, 43.644405, 48.334068>,  <40.590145, 43.612839, 48.182365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.406868, 43.644405, 48.334068>,  <40.101410, 43.697014, 48.586906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406868, 43.644405, 48.334068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507742, 0.727069, 0.462135,
		0.398795, -0.673849, 0.622004,
		0.763650, -0.131521, -0.632093,
		40.635963, 43.604950, 48.144440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833202, 44.296890, 48.676430>,  <40.101410, 43.697014, 48.586906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833202, 44.296890, 48.676430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.544037, 44.567272, 48.619183>,  <39.370537, 44.729500, 48.584835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.544037, 44.567272, 48.619183>,  <39.833202, 44.296890, 48.676430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544037, 44.567272, 48.619183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279296, -0.475345, -0.834291,
		-0.631972, -0.563149, 0.532424,
		-0.722915, 0.675952, -0.143119,
		39.327164, 44.770058, 48.576248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301109, 43.878246, 48.498119>,  <39.833202, 44.296890, 48.676430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301109, 43.878246, 48.498119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.238777, 44.253517, 48.374485>,  <39.201378, 44.478680, 48.300304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.238777, 44.253517, 48.374485>,  <39.301109, 43.878246, 48.498119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238777, 44.253517, 48.374485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272821, -0.341613, -0.899372,
		-0.949360, -0.055828, 0.309190,
		-0.155833, 0.938181, -0.309083,
		39.192028, 44.534973, 48.281761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639961, 43.900581, 48.191616>,  <39.301109, 43.878246, 48.498119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639961, 43.900581, 48.191616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807007, 44.221291, 48.020615>,  <38.907234, 44.413715, 47.918015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807007, 44.221291, 48.020615>,  <38.639961, 43.900581, 48.191616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807007, 44.221291, 48.020615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328238, -0.305598, -0.893795,
		-0.847265, 0.513584, 0.135551,
		0.417615, 0.801774, -0.427501,
		38.932293, 44.461823, 47.892365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064167, 44.167713, 47.808350>,  <38.639961, 43.900581, 48.191616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064167, 44.167713, 47.808350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.398243, 44.314758, 47.644730>,  <38.598686, 44.402985, 47.546558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.398243, 44.314758, 47.644730>,  <38.064167, 44.167713, 47.808350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398243, 44.314758, 47.644730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236418, -0.431561, -0.870553,
		-0.496556, 0.823782, -0.273524,
		0.835188, 0.367612, -0.409050,
		38.648800, 44.425041, 47.522015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868523, 44.559914, 47.134121>,  <38.064167, 44.167713, 47.808350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868523, 44.559914, 47.134121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254501, 44.456356, 47.116928>,  <38.486088, 44.394222, 47.106613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254501, 44.456356, 47.116928>,  <37.868523, 44.559914, 47.134121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254501, 44.456356, 47.116928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144345, -0.386782, -0.910804,
		0.219175, 0.885084, -0.410595,
		0.964949, -0.258893, -0.042984,
		38.543987, 44.378689, 47.104034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978851, 44.771072, 46.474834>,  <37.868523, 44.559914, 47.134121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978851, 44.771072, 46.474834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261158, 44.513245, 46.592422>,  <38.430542, 44.358547, 46.662975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261158, 44.513245, 46.592422>,  <37.978851, 44.771072, 46.474834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261158, 44.513245, 46.592422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070474, -0.349017, -0.934463,
		0.704928, 0.680232, -0.200900,
		0.705769, -0.644571, 0.293971,
		38.472889, 44.319874, 46.680614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416176, 44.711731, 45.911739>,  <37.978851, 44.771072, 46.474834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416176, 44.711731, 45.911739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556149, 44.387917, 46.100288>,  <38.640133, 44.193626, 46.213417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556149, 44.387917, 46.100288>,  <38.416176, 44.711731, 45.911739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556149, 44.387917, 46.100288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066819, -0.480336, -0.874536,
		0.934390, 0.337524, -0.113991,
		0.349931, -0.809540, 0.471374,
		38.661129, 44.145054, 46.241699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074684, 44.409428, 45.556789>,  <38.416176, 44.711731, 45.911739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074684, 44.409428, 45.556789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945484, 44.097656, 45.771511>,  <38.867962, 43.910595, 45.900345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945484, 44.097656, 45.771511>,  <39.074684, 44.409428, 45.556789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945484, 44.097656, 45.771511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353988, -0.625539, -0.695265,
		0.877702, -0.034549, 0.477959,
		-0.323003, -0.779427, 0.536807,
		38.848583, 43.863827, 45.932552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682472, 43.911461, 45.526314>,  <39.074684, 44.409428, 45.556789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682472, 43.911461, 45.526314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362595, 43.685055, 45.606426>,  <39.170670, 43.549210, 45.654495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362595, 43.685055, 45.606426>,  <39.682472, 43.911461, 45.526314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362595, 43.685055, 45.606426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382068, -0.737061, -0.557463,
		0.463155, -0.369278, 0.805681,
		-0.799695, -0.566017, 0.200284,
		39.122684, 43.515251, 45.666512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942535, 43.427040, 45.764114>,  <39.682472, 43.911461, 45.526314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942535, 43.427040, 45.764114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.579884, 43.308895, 45.643589>,  <39.362293, 43.238010, 45.571274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.579884, 43.308895, 45.643589>,  <39.942535, 43.427040, 45.764114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579884, 43.308895, 45.643589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420371, -0.693642, -0.584936,
		-0.036236, -0.656982, 0.753035,
		-0.906629, -0.295358, -0.301311,
		39.307896, 43.220287, 45.553196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078991, 42.701721, 45.606438>,  <39.942535, 43.427040, 45.764114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078991, 42.701721, 45.606438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732937, 42.768822, 45.417377>,  <39.525303, 42.809082, 45.303940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.732937, 42.768822, 45.417377>,  <40.078991, 42.701721, 45.606438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732937, 42.768822, 45.417377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333189, -0.512152, -0.791635,
		-0.374864, -0.842354, 0.387190,
		-0.865137, 0.167748, -0.472650,
		39.473396, 42.819145, 45.275581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873405, 42.123169, 45.309834>,  <40.078991, 42.701721, 45.606438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873405, 42.123169, 45.309834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671600, 42.394493, 45.096153>,  <39.550518, 42.557289, 44.967945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.671600, 42.394493, 45.096153>,  <39.873405, 42.123169, 45.309834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671600, 42.394493, 45.096153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207855, -0.505095, -0.837661,
		-0.838014, -0.533643, 0.113836,
		-0.504509, 0.678309, -0.534197,
		39.520248, 42.597984, 44.935894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484276, 41.695480, 44.976494>,  <39.873405, 42.123169, 45.309834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484276, 41.695480, 44.976494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.467552, 42.047958, 44.788136>,  <39.457520, 42.259445, 44.675121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.467552, 42.047958, 44.788136>,  <39.484276, 41.695480, 44.976494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467552, 42.047958, 44.788136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006606, -0.471055, -0.882079,
		-0.999104, -0.039988, 0.013872,
		-0.041807, 0.881197, -0.470897,
		39.455009, 42.312317, 44.646866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001366, 41.641781, 44.437840>,  <39.484276, 41.695480, 44.976494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001366, 41.641781, 44.437840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206169, 41.957340, 44.301903>,  <39.329052, 42.146675, 44.220341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206169, 41.957340, 44.301903>,  <39.001366, 41.641781, 44.437840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206169, 41.957340, 44.301903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107088, -0.333921, -0.936498,
		-0.852282, 0.515884, -0.086488,
		0.512004, 0.788898, -0.339840,
		39.359772, 42.194008, 44.199951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500961, 41.961315, 43.874657>,  <39.001366, 41.641781, 44.437840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500961, 41.961315, 43.874657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880302, 42.074310, 43.816936>,  <39.107906, 42.142105, 43.782303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880302, 42.074310, 43.816936>,  <38.500961, 41.961315, 43.874657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880302, 42.074310, 43.816936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089815, -0.197172, -0.976246,
		-0.304226, 0.938790, -0.161618,
		0.948356, 0.282484, -0.144302,
		39.164810, 42.159054, 43.773647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493763, 42.267082, 43.240578>,  <38.500961, 41.961315, 43.874657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493763, 42.267082, 43.240578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881695, 42.194611, 43.305813>,  <39.114456, 42.151127, 43.344955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881695, 42.194611, 43.305813>,  <38.493763, 42.267082, 43.240578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881695, 42.194611, 43.305813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159656, -0.033468, -0.986605,
		0.184206, 0.982881, -0.003533,
		0.969834, -0.181175, 0.163087,
		39.172646, 42.140259, 43.354740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820007, 42.719593, 42.830608>,  <38.493763, 42.267082, 43.240578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820007, 42.719593, 42.830608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059181, 42.405094, 42.892944>,  <39.202686, 42.216393, 42.930347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059181, 42.405094, 42.892944>,  <38.820007, 42.719593, 42.830608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059181, 42.405094, 42.892944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040946, -0.164208, -0.985575,
		0.800500, 0.595688, -0.065991,
		0.597932, -0.786251, 0.155840,
		39.238560, 42.169220, 42.939697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206120, 42.712910, 42.280861>,  <38.820007, 42.719593, 42.830608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206120, 42.712910, 42.280861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.274529, 42.347488, 42.428471>,  <39.315575, 42.128235, 42.517036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.274529, 42.347488, 42.428471>,  <39.206120, 42.712910, 42.280861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274529, 42.347488, 42.428471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016684, -0.371804, -0.928161,
		0.985125, 0.164896, -0.048347,
		0.171026, -0.913549, 0.369024,
		39.325836, 42.073425, 42.539177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613747, 42.440754, 41.843422>,  <39.206120, 42.712910, 42.280861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613747, 42.440754, 41.843422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.497028, 42.120941, 42.053410>,  <39.426998, 41.929054, 42.179401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.497028, 42.120941, 42.053410>,  <39.613747, 42.440754, 41.843422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497028, 42.120941, 42.053410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222151, -0.477195, -0.850255,
		0.930323, -0.364727, -0.038373,
		-0.291800, -0.799536, 0.524971,
		39.409489, 41.881081, 42.210899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218918, 41.933388, 41.671547>,  <39.613747, 42.440754, 41.843422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218918, 41.933388, 41.671547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881710, 41.743660, 41.772999>,  <39.679386, 41.629822, 41.833870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881710, 41.743660, 41.772999>,  <40.218918, 41.933388, 41.671547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881710, 41.743660, 41.772999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025511, -0.435750, -0.899706,
		0.537272, -0.764944, 0.355247,
		-0.843023, -0.474324, 0.253631,
		39.628803, 41.601364, 41.849087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.793427, 34.343716, 28.398714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.876244, 33.970798, 28.280077>,  <46.925934, 33.747047, 28.208895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.876244, 33.970798, 28.280077>,  <46.793427, 34.343716, 28.398714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.876244, 33.970798, 28.280077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878393, -0.310625, 0.363233,
		-0.430768, 0.185321, -0.883230,
		0.207039, -0.932292, -0.296592,
		46.938354, 33.691113, 28.191099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092041, 33.933414, 28.320696>,  <46.793427, 34.343716, 28.398714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092041, 33.933414, 28.320696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.352390, 33.630535, 28.342644>,  <46.508602, 33.448807, 28.355812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.352390, 33.630535, 28.342644>,  <46.092041, 33.933414, 28.320696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352390, 33.630535, 28.342644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688238, -0.558004, 0.463638,
		-0.320449, -0.339534, -0.884324,
		0.650877, -0.757198, 0.054868,
		46.547653, 33.403378, 28.359104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743553, 33.396996, 28.121090>,  <46.092041, 33.933414, 28.320696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743553, 33.396996, 28.121090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.054520, 33.224854, 28.304577>,  <46.241100, 33.121567, 28.414669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.054520, 33.224854, 28.304577>,  <45.743553, 33.396996, 28.121090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054520, 33.224854, 28.304577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621308, -0.639026, 0.453456,
		0.097985, -0.637527, -0.764172,
		0.777416, -0.430355, 0.458715,
		46.287743, 33.095749, 28.442192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468422, 32.776886, 28.275263>,  <45.743553, 33.396996, 28.121090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468422, 32.776886, 28.275263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.768967, 32.801102, 28.538103>,  <45.949295, 32.815632, 28.695808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.768967, 32.801102, 28.538103>,  <45.468422, 32.776886, 28.275263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768967, 32.801102, 28.538103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450785, -0.680129, 0.578115,
		0.481915, -0.730588, -0.483734,
		0.751366, 0.060542, 0.657103,
		45.994377, 32.819263, 28.735233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423901, 32.133148, 28.570398>,  <45.468422, 32.776886, 28.275263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423901, 32.133148, 28.570398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655949, 32.342396, 28.820135>,  <45.795177, 32.467945, 28.969976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655949, 32.342396, 28.820135>,  <45.423901, 32.133148, 28.570398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655949, 32.342396, 28.820135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484695, -0.394320, 0.780758,
		0.654622, -0.755549, 0.024801,
		0.580121, 0.523122, 0.624341,
		45.829987, 32.499332, 29.007437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748138, 31.620354, 28.898975>,  <45.423901, 32.133148, 28.570398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748138, 31.620354, 28.898975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752159, 31.952715, 29.121508>,  <45.754574, 32.152130, 29.255026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752159, 31.952715, 29.121508>,  <45.748138, 31.620354, 28.898975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752159, 31.952715, 29.121508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477731, -0.484765, 0.732650,
		0.878448, -0.273143, 0.392073,
		0.010055, 0.830901, 0.556329,
		45.755177, 32.201984, 29.288406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856102, 31.428825, 29.535200>,  <45.748138, 31.620354, 28.898975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856102, 31.428825, 29.535200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696419, 31.789892, 29.599480>,  <45.600609, 32.006531, 29.638046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696419, 31.789892, 29.599480>,  <45.856102, 31.428825, 29.535200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696419, 31.789892, 29.599480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478981, -0.354777, 0.802939,
		0.781798, 0.243572, 0.573991,
		-0.399212, 0.902666, 0.160698,
		45.576656, 32.060692, 29.647690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951328, 31.575922, 30.336519>,  <45.856102, 31.428825, 29.535200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951328, 31.575922, 30.336519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651833, 31.807024, 30.206541>,  <45.472134, 31.945684, 30.128553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651833, 31.807024, 30.206541>,  <45.951328, 31.575922, 30.336519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651833, 31.807024, 30.206541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514940, -0.198283, 0.833979,
		0.417403, 0.791760, 0.445971,
		-0.748740, 0.577754, -0.324945,
		45.427212, 31.980350, 30.109058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834511, 31.866108, 30.914513>,  <45.951328, 31.575922, 30.336519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834511, 31.866108, 30.914513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.492954, 31.943701, 30.721329>,  <45.288021, 31.990255, 30.605419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.492954, 31.943701, 30.721329>,  <45.834511, 31.866108, 30.914513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492954, 31.943701, 30.721329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482257, 0.054058, 0.874361,
		0.195717, 0.979515, 0.047389,
		-0.853887, 0.193981, -0.482958,
		45.236790, 32.001896, 30.576441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569412, 32.393040, 31.306768>,  <45.834511, 31.866108, 30.914513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569412, 32.393040, 31.306768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281517, 32.198872, 31.108232>,  <45.108780, 32.082371, 30.989111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281517, 32.198872, 31.108232>,  <45.569412, 32.393040, 31.306768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281517, 32.198872, 31.108232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529525, -0.078521, 0.844652,
		-0.448984, 0.870748, -0.200527,
		-0.719733, -0.485420, -0.496338,
		45.065598, 32.053246, 30.959332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949402, 32.774197, 31.421444>,  <45.569412, 32.393040, 31.306768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949402, 32.774197, 31.421444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837723, 32.402489, 31.324699>,  <44.770714, 32.179462, 31.266653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837723, 32.402489, 31.324699>,  <44.949402, 32.774197, 31.421444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837723, 32.402489, 31.324699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536867, -0.057764, 0.841687,
		-0.796129, 0.364846, -0.482769,
		-0.279200, -0.929274, -0.241861,
		44.753963, 32.123707, 31.252142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212246, 32.769753, 31.480986>,  <44.949402, 32.774197, 31.421444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212246, 32.769753, 31.480986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.338024, 32.390160, 31.490463>,  <44.413490, 32.162403, 31.496149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.338024, 32.390160, 31.490463>,  <44.212246, 32.769753, 31.480986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338024, 32.390160, 31.490463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588414, -0.175268, 0.789335,
		-0.744910, -0.262146, -0.613505,
		0.314449, -0.948979, 0.023692,
		44.432358, 32.105465, 31.497570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605061, 32.410347, 31.627331>,  <44.212246, 32.769753, 31.480986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605061, 32.410347, 31.627331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.894547, 32.152264, 31.725271>,  <44.068237, 31.997414, 31.784035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.894547, 32.152264, 31.725271>,  <43.605061, 32.410347, 31.627331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894547, 32.152264, 31.725271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579261, -0.375099, 0.723711,
		-0.375099, -0.665590, -0.645206,
		-0.723711, 0.645206, -0.244851,
		44.111660, 31.958702, 31.798727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221313, 31.761621, 31.871124>,  <43.605061, 32.410347, 31.627331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221313, 31.761621, 31.871124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587849, 31.674761, 32.005688>,  <43.807770, 31.622644, 32.086426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587849, 31.674761, 32.005688>,  <43.221313, 31.761621, 31.871124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587849, 31.674761, 32.005688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395999, -0.367179, 0.841644,
		-0.059241, -0.904448, -0.422451,
		0.916338, -0.217150, 0.336409,
		43.862751, 31.609615, 32.106609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167873, 31.057138, 32.027946>,  <43.221313, 31.761621, 31.871124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167873, 31.057138, 32.027946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464310, 31.222755, 32.239365>,  <43.642170, 31.322126, 32.366215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464310, 31.222755, 32.239365>,  <43.167873, 31.057138, 32.027946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464310, 31.222755, 32.239365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392863, -0.370969, 0.841452,
		0.544470, -0.831234, -0.112258,
		0.741087, 0.414043, 0.528543,
		43.686638, 31.346968, 32.397926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197987, 30.619568, 32.554947>,  <43.167873, 31.057138, 32.027946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197987, 30.619568, 32.554947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.431011, 30.906607, 32.707619>,  <43.570827, 31.078829, 32.799221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.431011, 30.906607, 32.707619>,  <43.197987, 30.619568, 32.554947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431011, 30.906607, 32.707619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222335, -0.310984, 0.924043,
		0.781785, -0.623174, -0.021622,
		0.582564, 0.717596, 0.381676,
		43.605782, 31.121885, 32.822121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605705, 30.283401, 33.181416>,  <43.197987, 30.619568, 32.554947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605705, 30.283401, 33.181416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595398, 30.682129, 33.211582>,  <43.589214, 30.921366, 33.229683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595398, 30.682129, 33.211582>,  <43.605705, 30.283401, 33.181416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595398, 30.682129, 33.211582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168901, -0.078698, 0.982486,
		0.985296, 0.012577, 0.170391,
		-0.025766, 0.996819, 0.075416,
		43.587669, 30.981174, 33.234207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100327, 30.444586, 33.733009>,  <43.605705, 30.283401, 33.181416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100327, 30.444586, 33.733009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.843407, 30.750673, 33.715622>,  <43.689255, 30.934326, 33.705189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.843407, 30.750673, 33.715622>,  <44.100327, 30.444586, 33.733009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843407, 30.750673, 33.715622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146368, -0.066793, 0.986973,
		0.752349, 0.640293, 0.154905,
		-0.642299, 0.765221, -0.043467,
		43.650719, 30.980240, 33.702583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278858, 30.858986, 34.336193>,  <44.100327, 30.444586, 33.733009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278858, 30.858986, 34.336193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.938095, 31.037497, 34.226582>,  <43.733639, 31.144604, 34.160812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.938095, 31.037497, 34.226582>,  <44.278858, 30.858986, 34.336193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938095, 31.037497, 34.226582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240344, 0.131728, 0.961708,
		0.465286, 0.885147, -0.004959,
		-0.851906, 0.446277, -0.274031,
		43.682522, 31.171379, 34.144371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305824, 31.533571, 34.660946>,  <44.278858, 30.858986, 34.336193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305824, 31.533571, 34.660946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923565, 31.441273, 34.587734>,  <43.694210, 31.385893, 34.543808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923565, 31.441273, 34.587734>,  <44.305824, 31.533571, 34.660946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923565, 31.441273, 34.587734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261454, 0.378527, 0.887896,
		-0.135597, 0.896366, -0.422067,
		-0.955644, -0.230747, -0.183032,
		43.636871, 31.372049, 34.532825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898312, 32.132225, 34.816029>,  <44.305824, 31.533571, 34.660946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898312, 32.132225, 34.816029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631851, 31.834129, 34.827690>,  <43.471973, 31.655272, 34.834686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.631851, 31.834129, 34.827690>,  <43.898312, 32.132225, 34.816029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631851, 31.834129, 34.827690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399236, 0.389342, 0.830075,
		-0.629960, 0.541317, -0.556890,
		-0.666154, -0.745244, 0.029156,
		43.432007, 31.610556, 34.836437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356609, 32.299248, 34.136108>,  <43.898312, 32.132225, 34.816029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356609, 32.299248, 34.136108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.722820, 32.402534, 34.259483>,  <44.942547, 32.464508, 34.333508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.722820, 32.402534, 34.259483>,  <44.356609, 32.299248, 34.136108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722820, 32.402534, 34.259483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026854, 0.804290, -0.593629,
		-0.401354, 0.535202, 0.743285,
		0.915529, 0.258216, 0.308433,
		44.997478, 32.480000, 34.352013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354176, 33.008427, 34.352894>,  <44.356609, 32.299248, 34.136108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354176, 33.008427, 34.352894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712799, 32.887566, 34.223347>,  <44.927975, 32.815048, 34.145618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712799, 32.887566, 34.223347>,  <44.354176, 33.008427, 34.352894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712799, 32.887566, 34.223347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062275, 0.637949, -0.767557,
		0.438528, 0.708327, 0.553141,
		0.896557, -0.302148, -0.323869,
		44.981766, 32.796921, 34.126186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723770, 33.597610, 34.105858>,  <44.354176, 33.008427, 34.352894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723770, 33.597610, 34.105858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951790, 33.319874, 33.930161>,  <45.088600, 33.153233, 33.824741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951790, 33.319874, 33.930161>,  <44.723770, 33.597610, 34.105858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951790, 33.319874, 33.930161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132219, 0.605167, -0.785042,
		0.810905, 0.389434, 0.436778,
		0.570046, -0.694345, -0.439242,
		45.122803, 33.111568, 33.798389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274353, 33.954571, 33.889111>,  <44.723770, 33.597610, 34.105858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274353, 33.954571, 33.889111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304440, 33.630505, 33.656570>,  <45.322491, 33.436066, 33.517048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304440, 33.630505, 33.656570>,  <45.274353, 33.954571, 33.889111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304440, 33.630505, 33.656570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263883, 0.578389, -0.771901,
		0.961618, -0.095353, 0.257292,
		0.075212, -0.810169, -0.581351,
		45.327003, 33.387455, 33.482166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.927185, 33.933907, 33.579296>,  <45.274353, 33.954571, 33.889111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.927185, 33.933907, 33.579296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671024, 33.721565, 33.357277>,  <45.517326, 33.594162, 33.224068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671024, 33.721565, 33.357277>,  <45.927185, 33.933907, 33.579296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671024, 33.721565, 33.357277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150161, 0.622191, -0.768329,
		0.753216, -0.575388, -0.318740,
		-0.640404, -0.530856, -0.555045,
		45.478901, 33.562309, 33.190765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.135555, 34.015762, 32.932320>,  <45.927185, 33.933907, 33.579296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.135555, 34.015762, 32.932320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785419, 33.846207, 32.839279>,  <45.575340, 33.744473, 32.783455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.785419, 33.846207, 32.839279>,  <46.135555, 34.015762, 32.932320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785419, 33.846207, 32.839279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027505, 0.436634, -0.899219,
		0.482733, -0.793516, -0.370542,
		-0.875336, -0.423891, -0.232603,
		45.522820, 33.719040, 32.769497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239628, 33.809029, 32.219128>,  <46.135555, 34.015762, 32.932320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239628, 33.809029, 32.219128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850136, 33.854145, 32.298252>,  <45.616440, 33.881214, 32.345726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850136, 33.854145, 32.298252>,  <46.239628, 33.809029, 32.219128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850136, 33.854145, 32.298252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131070, 0.432710, -0.891954,
		-0.186202, -0.894449, -0.406558,
		-0.973729, 0.112796, 0.197807,
		45.558018, 33.887985, 32.357594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.860523, 33.606316, 31.651964>,  <46.239628, 33.809029, 32.219128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.860523, 33.606316, 31.651964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621525, 33.851971, 31.858202>,  <45.478127, 33.999363, 31.981945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621525, 33.851971, 31.858202>,  <45.860523, 33.606316, 31.651964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621525, 33.851971, 31.858202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210964, 0.499945, -0.839970,
		-0.773622, -0.610651, -0.169155,
		-0.597497, 0.614134, 0.515594,
		45.442276, 34.036209, 32.012878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294991, 33.662735, 31.263605>,  <45.860523, 33.606316, 31.651964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294991, 33.662735, 31.263605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291218, 33.992565, 31.489874>,  <45.288952, 34.190464, 31.625635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291218, 33.992565, 31.489874>,  <45.294991, 33.662735, 31.263605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291218, 33.992565, 31.489874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312215, 0.534986, -0.785055,
		-0.949965, -0.184017, 0.252398,
		-0.009434, 0.824577, 0.565671,
		45.288387, 34.239937, 31.659575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674084, 33.931328, 31.057697>,  <45.294991, 33.662735, 31.263605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674084, 33.931328, 31.057697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.874115, 34.226013, 31.239767>,  <44.994133, 34.402824, 31.349009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.874115, 34.226013, 31.239767>,  <44.674084, 33.931328, 31.057697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874115, 34.226013, 31.239767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358148, 0.654501, -0.665852,
		-0.788452, 0.169956, 0.591150,
		0.500074, 0.736711, 0.455173,
		45.024136, 34.447025, 31.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165516, 34.446743, 30.949863>,  <44.674084, 33.931328, 31.057697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165516, 34.446743, 30.949863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512123, 34.627594, 31.034454>,  <44.720089, 34.736103, 31.085209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512123, 34.627594, 31.034454>,  <44.165516, 34.446743, 30.949863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512123, 34.627594, 31.034454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152513, 0.643251, -0.750312,
		-0.475270, 0.617908, 0.626345,
		0.866521, 0.452126, 0.211479,
		44.772079, 34.763233, 31.097898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040791, 35.124252, 31.132414>,  <44.165516, 34.446743, 30.949863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040791, 35.124252, 31.132414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415913, 35.090847, 30.997623>,  <44.640984, 35.070801, 30.916750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.415913, 35.090847, 30.997623>,  <44.040791, 35.124252, 31.132414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415913, 35.090847, 30.997623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186693, 0.697020, -0.692321,
		0.292699, 0.712171, 0.638075,
		0.937802, -0.083518, -0.336975,
		44.697254, 35.065792, 30.896530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167603, 35.794262, 30.864843>,  <44.040791, 35.124252, 31.132414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167603, 35.794262, 30.864843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.426289, 35.546745, 30.686470>,  <44.581501, 35.398235, 30.579447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.426289, 35.546745, 30.686470>,  <44.167603, 35.794262, 30.864843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426289, 35.546745, 30.686470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016585, 0.595922, -0.802872,
		0.762553, 0.511832, 0.395653,
		0.646713, -0.618794, -0.445933,
		44.620304, 35.361107, 30.552691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835442, 36.199528, 30.729961>,  <44.167603, 35.794262, 30.864843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835442, 36.199528, 30.729961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802761, 35.887245, 30.482149>,  <44.783154, 35.699875, 30.333462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802761, 35.887245, 30.482149>,  <44.835442, 36.199528, 30.729961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802761, 35.887245, 30.482149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316355, 0.569150, -0.758938,
		0.945116, -0.257996, 0.200482,
		-0.081699, -0.780708, -0.619532,
		44.778252, 35.653034, 30.296289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417988, 36.269814, 30.337536>,  <44.835442, 36.199528, 30.729961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417988, 36.269814, 30.337536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156631, 36.046707, 30.132799>,  <44.999817, 35.912842, 30.009958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156631, 36.046707, 30.132799>,  <45.417988, 36.269814, 30.337536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156631, 36.046707, 30.132799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136480, 0.578252, -0.804362,
		0.744618, -0.595418, -0.301700,
		-0.653390, -0.557766, -0.511840,
		44.960613, 35.879379, 29.979248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646015, 36.347488, 29.721144>,  <45.417988, 36.269814, 30.337536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646015, 36.347488, 29.721144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280148, 36.223801, 29.617014>,  <45.060627, 36.149590, 29.554537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280148, 36.223801, 29.617014>,  <45.646015, 36.347488, 29.721144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280148, 36.223801, 29.617014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104126, 0.442051, -0.890926,
		0.390563, -0.842008, -0.372133,
		-0.914669, -0.309213, -0.260323,
		45.005749, 36.131035, 29.538916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626575, 36.099903, 28.967302>,  <45.646015, 36.347488, 29.721144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626575, 36.099903, 28.967302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.237514, 36.151234, 29.044731>,  <45.004078, 36.182034, 29.091188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.237514, 36.151234, 29.044731>,  <45.626575, 36.099903, 28.967302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237514, 36.151234, 29.044731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132150, 0.379598, -0.915665,
		-0.190986, -0.916208, -0.352260,
		-0.972656, 0.128328, 0.193574,
		44.945717, 36.189732, 29.102804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280918, 35.683914, 28.491125>,  <45.626575, 36.099903, 28.967302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280918, 35.683914, 28.491125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011902, 35.960506, 28.596605>,  <44.850491, 36.126461, 28.659893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011902, 35.960506, 28.596605>,  <45.280918, 35.683914, 28.491125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011902, 35.960506, 28.596605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009786, 0.347982, -0.937450,
		-0.739993, -0.633056, -0.227266,
		-0.672543, 0.691483, 0.263699,
		44.810139, 36.167950, 28.675714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823120, 35.625507, 27.948233>,  <45.280918, 35.683914, 28.491125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823120, 35.625507, 27.948233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788837, 35.987175, 28.115629>,  <44.768269, 36.204174, 28.216068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.788837, 35.987175, 28.115629>,  <44.823120, 35.625507, 27.948233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788837, 35.987175, 28.115629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051645, 0.423505, -0.904420,
		-0.994981, -0.055904, -0.082994,
		-0.085710, 0.904167, 0.418492,
		44.763126, 36.258427, 28.241177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213745, 35.858627, 27.756060>,  <44.823120, 35.625507, 27.948233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213745, 35.858627, 27.756060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439274, 36.171604, 27.861805>,  <44.574593, 36.359390, 27.925253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.439274, 36.171604, 27.861805>,  <44.213745, 35.858627, 27.756060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439274, 36.171604, 27.861805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015268, 0.329915, -0.943887,
		-0.825754, 0.528150, 0.197961,
		0.563824, 0.782441, 0.264365,
		44.608421, 36.406338, 27.941114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937386, 36.357361, 27.384295>,  <44.213745, 35.858627, 27.756060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937386, 36.357361, 27.384295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296246, 36.497467, 27.491953>,  <44.511562, 36.581532, 27.556547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296246, 36.497467, 27.491953>,  <43.937386, 36.357361, 27.384295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296246, 36.497467, 27.491953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137628, 0.357328, -0.923783,
		-0.419745, 0.865811, 0.272369,
		0.897147, 0.350268, 0.269146,
		44.565392, 36.602547, 27.572697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.982658, 36.248608, 40.260666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591057, 36.327957, 40.279446>,  <41.356098, 36.375568, 40.290714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591057, 36.327957, 40.279446>,  <41.982658, 36.248608, 40.260666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591057, 36.327957, 40.279446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175207, -0.701078, -0.691225,
		-0.104205, -0.684936, 0.721113,
		-0.979002, 0.198373, 0.046949,
		41.297356, 36.387470, 40.293530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809917, 35.625267, 40.173492>,  <41.982658, 36.248608, 40.260666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809917, 35.625267, 40.173492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486496, 35.850563, 40.105366>,  <41.292442, 35.985741, 40.064491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486496, 35.850563, 40.105366>,  <41.809917, 35.625267, 40.173492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486496, 35.850563, 40.105366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253308, -0.594422, -0.763216,
		-0.531107, -0.573960, 0.623294,
		-0.808555, 0.563235, -0.170313,
		41.243931, 36.019535, 40.054272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267494, 35.192307, 40.113598>,  <41.809917, 35.625267, 40.173492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267494, 35.192307, 40.113598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143196, 35.527840, 39.934803>,  <41.068619, 35.729160, 39.827526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143196, 35.527840, 39.934803>,  <41.267494, 35.192307, 40.113598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143196, 35.527840, 39.934803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224960, -0.521818, -0.822861,
		-0.923488, -0.155145, 0.350856,
		-0.310746, 0.838831, -0.446991,
		41.049973, 35.779488, 39.800705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613605, 35.041763, 39.722893>,  <41.267494, 35.192307, 40.113598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613605, 35.041763, 39.722893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765671, 35.369518, 39.551273>,  <40.856911, 35.566170, 39.448303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765671, 35.369518, 39.551273>,  <40.613605, 35.041763, 39.722893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765671, 35.369518, 39.551273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264650, -0.348115, -0.899320,
		-0.886248, 0.455437, 0.084509,
		0.380164, 0.819386, -0.429047,
		40.879719, 35.615334, 39.422558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130020, 35.143810, 39.194656>,  <40.613605, 35.041763, 39.722893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130020, 35.143810, 39.194656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459419, 35.337513, 39.076439>,  <40.657059, 35.453735, 39.005508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459419, 35.337513, 39.076439>,  <40.130020, 35.143810, 39.194656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459419, 35.337513, 39.076439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188198, -0.258261, -0.947567,
		-0.535191, 0.835942, -0.121542,
		0.823500, 0.484255, -0.295541,
		40.706470, 35.482788, 38.987778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893246, 35.550804, 38.728756>,  <40.130020, 35.143810, 39.194656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893246, 35.550804, 38.728756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283184, 35.560425, 38.640121>,  <40.517147, 35.566196, 38.586941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283184, 35.560425, 38.640121>,  <39.893246, 35.550804, 38.728756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283184, 35.560425, 38.640121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213713, -0.181471, -0.959893,
		-0.063303, 0.983102, -0.171765,
		0.974843, 0.024056, -0.221590,
		40.575638, 35.567642, 38.573643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912556, 35.948994, 38.174324>,  <39.893246, 35.550804, 38.728756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912556, 35.948994, 38.174324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251968, 35.738464, 38.152531>,  <40.455616, 35.612144, 38.139454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251968, 35.738464, 38.152531>,  <39.912556, 35.948994, 38.174324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251968, 35.738464, 38.152531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210368, -0.241075, -0.947432,
		0.485524, 0.815391, -0.315283,
		0.848535, -0.526327, -0.054485,
		40.506527, 35.580566, 38.136185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254307, 35.975830, 37.406620>,  <39.912556, 35.948994, 38.174324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254307, 35.975830, 37.406620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440521, 35.657490, 37.561489>,  <40.552250, 35.466484, 37.654411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440521, 35.657490, 37.561489>,  <40.254307, 35.975830, 37.406620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440521, 35.657490, 37.561489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172715, -0.510747, -0.842204,
		0.868014, 0.325203, -0.375225,
		0.465532, -0.795852, 0.387168,
		40.580181, 35.418736, 37.677639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800705, 35.788940, 36.935116>,  <40.254307, 35.975830, 37.406620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800705, 35.788940, 36.935116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726166, 35.452389, 37.138039>,  <40.681442, 35.250458, 37.259792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726166, 35.452389, 37.138039>,  <40.800705, 35.788940, 36.935116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726166, 35.452389, 37.138039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124656, -0.491927, -0.861666,
		0.974543, -0.223810, -0.013212,
		-0.186350, -0.841378, 0.507304,
		40.670261, 35.199974, 37.290230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093334, 35.228378, 36.430157>,  <40.800705, 35.788940, 36.935116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093334, 35.228378, 36.430157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892254, 35.009705, 36.698017>,  <40.771606, 34.878502, 36.858734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892254, 35.009705, 36.698017>,  <41.093334, 35.228378, 36.430157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892254, 35.009705, 36.698017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067473, -0.747469, -0.660861,
		0.861826, -0.377396, 0.338864,
		-0.502696, -0.546683, 0.669652,
		40.741444, 34.845699, 36.898914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421898, 34.526371, 36.382481>,  <41.093334, 35.228378, 36.430157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421898, 34.526371, 36.382481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058315, 34.499535, 36.547066>,  <40.840168, 34.483433, 36.645817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058315, 34.499535, 36.547066>,  <41.421898, 34.526371, 36.382481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058315, 34.499535, 36.547066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224469, -0.752930, -0.618636,
		0.351307, -0.654672, 0.669319,
		-0.908954, -0.067090, 0.411463,
		40.785629, 34.479408, 36.670506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331944, 33.809780, 36.324127>,  <41.421898, 34.526371, 36.382481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331944, 33.809780, 36.324127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973240, 33.951424, 36.430283>,  <40.758018, 34.036411, 36.493977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973240, 33.951424, 36.430283>,  <41.331944, 33.809780, 36.324127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973240, 33.951424, 36.430283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442390, -0.732179, -0.517885,
		0.010926, -0.581824, 0.813241,
		-0.896756, 0.354111, 0.265393,
		40.704212, 34.057655, 36.509899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886326, 34.013180, 36.772419>,  <41.331944, 33.809780, 36.324127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886326, 34.013180, 36.772419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089413, 33.669010, 36.755051>,  <42.211266, 33.462509, 36.744629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089413, 33.669010, 36.755051>,  <41.886326, 34.013180, 36.772419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089413, 33.669010, 36.755051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717730, 0.394563, 0.573745,
		-0.476532, -0.322470, 0.817882,
		0.507721, -0.860426, -0.043424,
		42.241730, 33.410881, 36.742023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053322, 33.703304, 37.466557>,  <41.886326, 34.013180, 36.772419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053322, 33.703304, 37.466557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312939, 33.657700, 37.165691>,  <42.468708, 33.630337, 36.985172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312939, 33.657700, 37.165691>,  <42.053322, 33.703304, 37.466557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312939, 33.657700, 37.165691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732246, 0.361738, 0.577028,
		0.206295, -0.925282, 0.318271,
		0.649044, -0.114015, -0.752159,
		42.507652, 33.623497, 36.940044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464752, 33.016369, 37.730740>,  <42.053322, 33.703304, 37.466557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464752, 33.016369, 37.730740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181721, 32.734035, 37.744259>,  <42.011902, 32.564636, 37.752369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181721, 32.734035, 37.744259>,  <42.464752, 33.016369, 37.730740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181721, 32.734035, 37.744259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069171, 0.116779, 0.990746,
		-0.703245, 0.698689, -0.131453,
		-0.707575, -0.705830, 0.033795,
		41.969448, 32.522285, 37.754398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890594, 33.290150, 38.126423>,  <42.464752, 33.016369, 37.730740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890594, 33.290150, 38.126423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827724, 32.895874, 38.150784>,  <41.790001, 32.659309, 38.165401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827724, 32.895874, 38.150784>,  <41.890594, 33.290150, 38.126423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827724, 32.895874, 38.150784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041161, 0.068158, 0.996825,
		-0.986712, 0.154172, -0.051285,
		-0.157178, -0.985690, 0.060906,
		41.780571, 32.600166, 38.169056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177731, 33.191631, 38.274048>,  <41.890594, 33.290150, 38.126423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177731, 33.191631, 38.274048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387646, 32.874554, 38.398132>,  <41.513596, 32.684307, 38.472584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387646, 32.874554, 38.398132>,  <41.177731, 33.191631, 38.274048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387646, 32.874554, 38.398132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363496, 0.120843, 0.923725,
		-0.769719, -0.597521, -0.224725,
		0.524788, -0.792695, 0.310212,
		41.545082, 32.636745, 38.491196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645370, 32.847507, 38.666965>,  <41.177731, 33.191631, 38.274048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645370, 32.847507, 38.666965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008587, 32.706417, 38.757339>,  <41.226517, 32.621765, 38.811565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008587, 32.706417, 38.757339>,  <40.645370, 32.847507, 38.666965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008587, 32.706417, 38.757339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241796, -0.000925, 0.970327,
		-0.342047, -0.935727, -0.086127,
		0.908041, -0.352723, 0.225939,
		41.280998, 32.600601, 38.825123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485172, 32.325275, 39.153202>,  <40.645370, 32.847507, 38.666965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485172, 32.325275, 39.153202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878693, 32.369797, 39.209412>,  <41.114803, 32.396511, 39.243137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878693, 32.369797, 39.209412>,  <40.485172, 32.325275, 39.153202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878693, 32.369797, 39.209412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145368, 0.036604, 0.988700,
		0.104912, -0.993111, 0.052193,
		0.983800, 0.111313, 0.140527,
		41.173832, 32.403191, 39.251568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720131, 31.692829, 39.594723>,  <40.485172, 32.325275, 39.153202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720131, 31.692829, 39.594723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945358, 32.019753, 39.643661>,  <41.080494, 32.215904, 39.673023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945358, 32.019753, 39.643661>,  <40.720131, 31.692829, 39.594723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945358, 32.019753, 39.643661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138309, -0.052760, 0.988983,
		0.814757, -0.573782, 0.083333,
		0.563064, 0.817307, 0.122345,
		41.114277, 32.264946, 39.680367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227013, 31.526249, 40.168709>,  <40.720131, 31.692829, 39.594723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227013, 31.526249, 40.168709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222141, 31.924309, 40.129669>,  <41.219219, 32.163143, 40.106243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222141, 31.924309, 40.129669>,  <41.227013, 31.526249, 40.168709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222141, 31.924309, 40.129669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077844, 0.096369, 0.992297,
		0.996891, 0.019679, 0.076293,
		-0.012175, 0.995151, -0.097601,
		41.218491, 32.222855, 40.100388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648952, 31.805443, 40.742199>,  <41.227013, 31.526249, 40.168709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648952, 31.805443, 40.742199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435253, 32.125423, 40.632900>,  <41.307034, 32.317410, 40.567322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435253, 32.125423, 40.632900>,  <41.648952, 31.805443, 40.742199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435253, 32.125423, 40.632900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048434, 0.293747, 0.954655,
		0.843942, 0.523253, -0.118187,
		-0.534244, 0.799949, -0.273248,
		41.274979, 32.365410, 40.550926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939461, 32.370285, 41.126400>,  <41.648952, 31.805443, 40.742199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939461, 32.370285, 41.126400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577156, 32.500469, 41.017826>,  <41.359776, 32.578579, 40.952682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577156, 32.500469, 41.017826>,  <41.939461, 32.370285, 41.126400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577156, 32.500469, 41.017826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133490, 0.388789, 0.911605,
		0.402223, 0.861928, -0.308704,
		-0.905758, 0.325459, -0.271439,
		41.305428, 32.598106, 40.936394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946259, 33.097244, 41.151096>,  <41.939461, 32.370285, 41.126400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946259, 33.097244, 41.151096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557224, 33.005146, 41.164127>,  <41.323803, 32.949886, 41.171947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557224, 33.005146, 41.164127>,  <41.946259, 33.097244, 41.151096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557224, 33.005146, 41.164127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092076, 0.509944, 0.855266,
		-0.213537, 0.828820, -0.517165,
		-0.972586, -0.230249, 0.032577,
		41.265450, 32.936069, 41.173901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548119, 33.719334, 41.386147>,  <41.946259, 33.097244, 41.151096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548119, 33.719334, 41.386147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268456, 33.446308, 41.471264>,  <41.100658, 33.282494, 41.522335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268456, 33.446308, 41.471264>,  <41.548119, 33.719334, 41.386147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268456, 33.446308, 41.471264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212339, 0.482433, 0.849806,
		-0.682708, 0.548965, -0.482232,
		-0.699158, -0.682566, 0.212794,
		41.058708, 33.241539, 41.535103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936481, 34.066273, 41.464867>,  <41.548119, 33.719334, 41.386147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936481, 34.066273, 41.464867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841541, 33.730179, 41.659870>,  <40.784576, 33.528522, 41.776875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841541, 33.730179, 41.659870>,  <40.936481, 34.066273, 41.464867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841541, 33.730179, 41.659870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411675, 0.541562, 0.732963,
		-0.879880, -0.026727, -0.474444,
		-0.237351, -0.840236, 0.487512,
		40.770336, 33.478107, 41.806126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350414, 34.200062, 41.838680>,  <40.936481, 34.066273, 41.464867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350414, 34.200062, 41.838680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482040, 33.864628, 42.012344>,  <40.561016, 33.663368, 42.116543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482040, 33.864628, 42.012344>,  <40.350414, 34.200062, 41.838680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482040, 33.864628, 42.012344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215098, 0.381116, 0.899157,
		-0.919482, -0.389270, -0.054964,
		0.329067, -0.838582, 0.434160,
		40.580761, 33.613052, 42.142593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809174, 33.986469, 42.340481>,  <40.350414, 34.200062, 41.838680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809174, 33.986469, 42.340481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161514, 33.821754, 42.433895>,  <40.372917, 33.722927, 42.489944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161514, 33.821754, 42.433895>,  <39.809174, 33.986469, 42.340481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161514, 33.821754, 42.433895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154405, 0.216428, 0.964011,
		-0.447509, -0.885207, 0.127059,
		0.880849, -0.411785, 0.233534,
		40.425770, 33.698219, 42.503956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411568, 33.450954, 42.185127>,  <39.809174, 33.986469, 42.340481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411568, 33.450954, 42.185127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032616, 33.491230, 42.306679>,  <38.805244, 33.515396, 42.379608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032616, 33.491230, 42.306679>,  <39.411568, 33.450954, 42.185127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032616, 33.491230, 42.306679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306488, -0.559369, -0.770177,
		0.092431, -0.822781, 0.560792,
		-0.947376, 0.100688, 0.303876,
		38.748402, 33.521435, 42.397842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046322, 32.747066, 42.237919>,  <39.411568, 33.450954, 42.185127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046322, 32.747066, 42.237919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762447, 33.022652, 42.179035>,  <38.592121, 33.188004, 42.143703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762447, 33.022652, 42.179035>,  <39.046322, 32.747066, 42.237919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762447, 33.022652, 42.179035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310376, -0.493337, -0.812579,
		-0.632465, -0.530985, 0.563953,
		-0.709687, 0.688965, -0.147213,
		38.549541, 33.229340, 42.134872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500389, 32.365009, 42.059010>,  <39.046322, 32.747066, 42.237919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500389, 32.365009, 42.059010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391632, 32.737522, 41.962029>,  <38.326378, 32.961029, 41.903839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391632, 32.737522, 41.962029>,  <38.500389, 32.365009, 42.059010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391632, 32.737522, 41.962029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009946, -0.254647, -0.966983,
		-0.962277, -0.260503, 0.078498,
		-0.271891, 0.931286, -0.242450,
		38.310066, 33.016907, 41.889294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826817, 32.371223, 41.538189>,  <38.500389, 32.365009, 42.059010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826817, 32.371223, 41.538189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031006, 32.712765, 41.497475>,  <38.153519, 32.917690, 41.473045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031006, 32.712765, 41.497475>,  <37.826817, 32.371223, 41.538189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031006, 32.712765, 41.497475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074803, -0.073828, -0.994462,
		-0.856635, 0.515258, 0.026183,
		0.510471, 0.853849, -0.101786,
		38.184147, 32.968918, 41.466938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408699, 32.684971, 41.019146>,  <37.826817, 32.371223, 41.538189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408699, 32.684971, 41.019146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756062, 32.883232, 41.024834>,  <37.964478, 33.002190, 41.028248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756062, 32.883232, 41.024834>,  <37.408699, 32.684971, 41.019146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756062, 32.883232, 41.024834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020930, 0.065298, -0.997646,
		-0.495412, 0.866064, 0.067079,
		0.868406, 0.495650, 0.014223,
		38.016582, 33.031929, 41.029102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343761, 33.231522, 40.469410>,  <37.408699, 32.684971, 41.019146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343761, 33.231522, 40.469410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730915, 33.167774, 40.547184>,  <37.963207, 33.129524, 40.593849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730915, 33.167774, 40.547184>,  <37.343761, 33.231522, 40.469410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730915, 33.167774, 40.547184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195754, -0.007552, -0.980624,
		0.157753, 0.987189, 0.023889,
		0.967881, -0.159373, 0.194438,
		38.021278, 33.119961, 40.605515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694103, 33.715595, 40.123158>,  <37.343761, 33.231522, 40.469410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694103, 33.715595, 40.123158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968014, 33.432037, 40.190746>,  <38.132359, 33.261902, 40.231300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968014, 33.432037, 40.190746>,  <37.694103, 33.715595, 40.123158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968014, 33.432037, 40.190746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205541, -0.034578, -0.978037,
		0.699171, 0.704464, 0.122029,
		0.684772, -0.708897, 0.168972,
		38.173447, 33.219368, 40.241440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295403, 33.936871, 39.778046>,  <37.694103, 33.715595, 40.123158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295403, 33.936871, 39.778046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339104, 33.544098, 39.839840>,  <38.365326, 33.308434, 39.876915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339104, 33.544098, 39.839840>,  <38.295403, 33.936871, 39.778046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339104, 33.544098, 39.839840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271245, -0.120064, -0.954993,
		0.956290, 0.146239, 0.253228,
		0.109253, -0.981936, 0.154482,
		38.371880, 33.249516, 39.886185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732944, 33.768326, 39.279839>,  <38.295403, 33.936871, 39.778046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732944, 33.768326, 39.279839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593620, 33.408367, 39.384811>,  <38.510025, 33.192390, 39.447796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593620, 33.408367, 39.384811>,  <38.732944, 33.768326, 39.279839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593620, 33.408367, 39.384811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271091, -0.364700, -0.890788,
		0.897324, -0.239129, 0.370982,
		-0.348311, -0.899895, 0.262428,
		38.489128, 33.138397, 39.463539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208454, 33.362347, 39.014080>,  <38.732944, 33.768326, 39.279839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208454, 33.362347, 39.014080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915615, 33.094112, 39.062004>,  <38.739910, 32.933174, 39.090759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915615, 33.094112, 39.062004>,  <39.208454, 33.362347, 39.014080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915615, 33.094112, 39.062004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229079, -0.407988, -0.883781,
		0.641528, -0.619568, 0.452303,
		-0.732096, -0.670583, 0.119806,
		38.695988, 32.892937, 39.097946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458145, 32.591267, 38.968552>,  <39.208454, 33.362347, 39.014080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458145, 32.591267, 38.968552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074089, 32.556843, 38.862175>,  <38.843655, 32.536190, 38.798347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074089, 32.556843, 38.862175>,  <39.458145, 32.591267, 38.968552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074089, 32.556843, 38.862175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270401, -0.527004, -0.805699,
		-0.070816, -0.845495, 0.529267,
		-0.960140, -0.086058, -0.265943,
		38.786049, 32.531025, 38.782391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283699, 31.873598, 38.847687>,  <39.458145, 32.591267, 38.968552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283699, 31.873598, 38.847687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002007, 32.080170, 38.652809>,  <38.832989, 32.204113, 38.535885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002007, 32.080170, 38.652809>,  <39.283699, 31.873598, 38.847687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002007, 32.080170, 38.652809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054927, -0.644529, -0.762605,
		-0.707840, -0.563812, 0.425533,
		-0.704234, 0.516428, -0.487192,
		38.790737, 32.235100, 38.506653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.348980, 34.460526, 46.281853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073067, 34.670670, 46.082577>,  <37.907520, 34.796757, 45.963009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073067, 34.670670, 46.082577>,  <38.348980, 34.460526, 46.281853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073067, 34.670670, 46.082577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152025, -0.567663, -0.809103,
		-0.707877, -0.633842, 0.311696,
		-0.689782, 0.525360, -0.498195,
		37.866131, 34.828278, 45.933117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955715, 33.949852, 45.830925>,  <38.348980, 34.460526, 46.281853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955715, 33.949852, 45.830925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865219, 34.305885, 45.672657>,  <37.810921, 34.519505, 45.577694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865219, 34.305885, 45.672657>,  <37.955715, 33.949852, 45.830925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865219, 34.305885, 45.672657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090485, -0.385246, -0.918367,
		-0.969859, -0.243577, 0.006620,
		-0.226243, 0.890087, -0.395674,
		37.797344, 34.572910, 45.553955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537876, 33.884888, 45.257931>,  <37.955715, 33.949852, 45.830925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537876, 33.884888, 45.257931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.682186, 34.250088, 45.181755>,  <37.768772, 34.469208, 45.136047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.682186, 34.250088, 45.181755>,  <37.537876, 33.884888, 45.257931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682186, 34.250088, 45.181755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061975, -0.227211, -0.971872,
		-0.930593, 0.338821, -0.138554,
		0.360771, 0.913004, -0.190442,
		37.790417, 34.523991, 45.124622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139160, 34.113586, 44.704403>,  <37.537876, 33.884888, 45.257931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139160, 34.113586, 44.704403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484043, 34.315525, 44.721058>,  <37.690971, 34.436687, 44.731052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484043, 34.315525, 44.721058>,  <37.139160, 34.113586, 44.704403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484043, 34.315525, 44.721058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151146, -0.177939, -0.972364,
		-0.483482, 0.844672, -0.229725,
		0.862207, 0.504842, 0.041638,
		37.742706, 34.466976, 44.733551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166271, 34.473640, 44.072701>,  <37.139160, 34.113586, 44.704403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166271, 34.473640, 44.072701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548161, 34.473721, 44.191704>,  <37.777294, 34.473770, 44.263107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548161, 34.473721, 44.191704>,  <37.166271, 34.473640, 44.072701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548161, 34.473721, 44.191704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257166, -0.503370, -0.824915,
		0.149589, 0.864071, -0.480629,
		0.954719, 0.000203, 0.297509,
		37.834576, 34.473782, 44.280956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478458, 34.712524, 43.529942>,  <37.166271, 34.473640, 44.072701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478458, 34.712524, 43.529942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790707, 34.561176, 43.728928>,  <37.978054, 34.470367, 43.848320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790707, 34.561176, 43.728928>,  <37.478458, 34.712524, 43.529942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790707, 34.561176, 43.728928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229976, -0.566202, -0.791534,
		0.581155, 0.732293, -0.354974,
		0.780622, -0.378368, 0.497461,
		38.024895, 34.447666, 43.878166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035282, 34.906124, 43.184441>,  <37.478458, 34.712524, 43.529942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035282, 34.906124, 43.184441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114136, 34.563774, 43.375694>,  <38.161446, 34.358364, 43.490448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114136, 34.563774, 43.375694>,  <38.035282, 34.906124, 43.184441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114136, 34.563774, 43.375694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250086, -0.427671, -0.868651,
		0.947943, 0.290814, 0.129735,
		0.197132, -0.855876, 0.478137,
		38.173275, 34.307011, 43.519135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637329, 34.734146, 42.901798>,  <38.035282, 34.906124, 43.184441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637329, 34.734146, 42.901798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.515915, 34.389656, 43.064846>,  <38.443066, 34.182961, 43.162674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.515915, 34.389656, 43.064846>,  <38.637329, 34.734146, 42.901798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515915, 34.389656, 43.064846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344651, -0.498079, -0.795697,
		0.888303, -0.101035, 0.448007,
		-0.303536, -0.861225, 0.407623,
		38.424854, 34.131287, 43.187134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235973, 34.342968, 42.874344>,  <38.637329, 34.734146, 42.901798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235973, 34.342968, 42.874344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913193, 34.107258, 42.890282>,  <38.719524, 33.965832, 42.899845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913193, 34.107258, 42.890282>,  <39.235973, 34.342968, 42.874344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913193, 34.107258, 42.890282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300421, -0.467608, -0.831318,
		0.508504, -0.658863, 0.554367,
		-0.806951, -0.589272, 0.039844,
		38.671108, 33.930477, 42.902233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616508, 33.678265, 43.016968>,  <39.235973, 34.342968, 42.874344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616508, 33.678265, 43.016968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.016460, 33.683762, 43.013943>,  <40.256432, 33.687061, 43.012127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.016460, 33.683762, 43.013943>,  <39.616508, 33.678265, 43.016968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016460, 33.683762, 43.013943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005305, 0.157297, 0.987537,
		0.014760, -0.987456, 0.157205,
		0.999877, 0.013742, -0.007560,
		40.316425, 33.687885, 43.011673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885777, 33.303284, 43.562511>,  <39.616508, 33.678265, 43.016968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885777, 33.303284, 43.562511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.207951, 33.526669, 43.483109>,  <40.401253, 33.660698, 43.435467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.207951, 33.526669, 43.483109>,  <39.885777, 33.303284, 43.562511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207951, 33.526669, 43.483109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087709, 0.218922, 0.971792,
		0.586163, -0.800122, 0.127345,
		0.805431, 0.558460, -0.198503,
		40.449581, 33.694206, 43.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312183, 33.134285, 44.082458>,  <39.885777, 33.303284, 43.562511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312183, 33.134285, 44.082458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493435, 33.465561, 43.950539>,  <40.602188, 33.664326, 43.871387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493435, 33.465561, 43.950539>,  <40.312183, 33.134285, 44.082458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493435, 33.465561, 43.950539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275284, 0.221873, 0.935410,
		0.847873, -0.514652, -0.127451,
		0.453133, 0.828194, -0.329796,
		40.629375, 33.714020, 43.851601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070969, 33.138809, 44.336708>,  <40.312183, 33.134285, 44.082458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070969, 33.138809, 44.336708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.965187, 33.516685, 44.259121>,  <40.901718, 33.743412, 44.212566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.965187, 33.516685, 44.259121>,  <41.070969, 33.138809, 44.336708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965187, 33.516685, 44.259121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255888, 0.262657, 0.930340,
		0.929831, 0.196397, -0.311196,
		-0.264454, 0.944690, -0.193971,
		40.885849, 33.800091, 44.200928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654560, 33.580261, 44.586674>,  <41.070969, 33.138809, 44.336708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654560, 33.580261, 44.586674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.332962, 33.813683, 44.540951>,  <41.140003, 33.953735, 44.513515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.332962, 33.813683, 44.540951>,  <41.654560, 33.580261, 44.586674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332962, 33.813683, 44.540951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181003, 0.423274, 0.887737,
		0.566424, 0.693042, -0.445933,
		-0.803991, 0.583551, -0.114310,
		41.091766, 33.988747, 44.506657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860023, 34.290024, 44.800850>,  <41.654560, 33.580261, 44.586674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860023, 34.290024, 44.800850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.461098, 34.279724, 44.828293>,  <41.221745, 34.273544, 44.844757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.461098, 34.279724, 44.828293>,  <41.860023, 34.290024, 44.800850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461098, 34.279724, 44.828293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041778, 0.569347, 0.821035,
		-0.060205, 0.821694, -0.566741,
		-0.997311, -0.025753, 0.068607,
		41.161903, 34.271999, 44.848873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653862, 34.917259, 44.902130>,  <41.860023, 34.290024, 44.800850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653862, 34.917259, 44.902130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.315922, 34.738091, 45.019150>,  <41.113155, 34.630589, 45.089363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.315922, 34.738091, 45.019150>,  <41.653862, 34.917259, 44.902130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315922, 34.738091, 45.019150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035965, 0.593146, 0.804291,
		-0.533786, 0.668987, -0.517232,
		-0.844855, -0.447922, 0.292553,
		41.062466, 34.603714, 45.106915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432270, 35.534161, 45.060379>,  <41.653862, 34.917259, 44.902130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432270, 35.534161, 45.060379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.237957, 35.237911, 45.246063>,  <41.121368, 35.060162, 45.357475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.237957, 35.237911, 45.246063>,  <41.432270, 35.534161, 45.060379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237957, 35.237911, 45.246063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085719, 0.568896, 0.817930,
		-0.869865, 0.357546, -0.339846,
		-0.485785, -0.740620, 0.464215,
		41.092220, 35.015724, 45.385326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937511, 35.858303, 45.579720>,  <41.432270, 35.534161, 45.060379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937511, 35.858303, 45.579720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898949, 35.499596, 45.752468>,  <40.875809, 35.284370, 45.856117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898949, 35.499596, 45.752468>,  <40.937511, 35.858303, 45.579720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898949, 35.499596, 45.752468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268709, 0.394337, 0.878803,
		-0.958384, 0.200774, 0.202952,
		-0.096410, -0.896766, 0.431876,
		40.870026, 35.230564, 45.882030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427895, 35.822151, 46.086193>,  <40.937511, 35.858303, 45.579720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427895, 35.822151, 46.086193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.631931, 35.499958, 46.206856>,  <40.754353, 35.306641, 46.279255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.631931, 35.499958, 46.206856>,  <40.427895, 35.822151, 46.086193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631931, 35.499958, 46.206856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010259, 0.344995, 0.938548,
		-0.860058, -0.481842, 0.167716,
		0.510093, -0.805485, 0.301659,
		40.784958, 35.258312, 46.297352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134968, 35.588417, 46.702938>,  <40.427895, 35.822151, 46.086193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134968, 35.588417, 46.702938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.511295, 35.453182, 46.712452>,  <40.737091, 35.372044, 46.718159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.511295, 35.453182, 46.712452>,  <40.134968, 35.588417, 46.702938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511295, 35.453182, 46.712452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073114, 0.270974, 0.959806,
		-0.330939, -0.901261, 0.279655,
		0.940815, -0.338084, 0.023781,
		40.793541, 35.351757, 46.719585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116516, 35.260284, 47.359966>,  <40.134968, 35.588417, 46.702938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116516, 35.260284, 47.359966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.504646, 35.277771, 47.264843>,  <40.737526, 35.288261, 47.207771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.504646, 35.277771, 47.264843>,  <40.116516, 35.260284, 47.359966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504646, 35.277771, 47.264843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212355, 0.316233, 0.924609,
		0.115620, -0.947674, 0.297567,
		0.970329, 0.043714, -0.237806,
		40.795746, 35.290886, 47.193501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520218, 34.984070, 47.881580>,  <40.116516, 35.260284, 47.359966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520218, 34.984070, 47.881580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.764069, 35.242054, 47.697247>,  <40.910381, 35.396847, 47.586647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.764069, 35.242054, 47.697247>,  <40.520218, 34.984070, 47.881580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764069, 35.242054, 47.697247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220189, 0.420702, 0.880072,
		0.761490, -0.637990, 0.114459,
		0.609630, 0.644964, -0.460838,
		40.946957, 35.435543, 47.558994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119972, 35.091621, 48.256618>,  <40.520218, 34.984070, 47.881580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119972, 35.091621, 48.256618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.157299, 35.428867, 48.044788>,  <41.179695, 35.631214, 47.917690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.157299, 35.428867, 48.044788>,  <41.119972, 35.091621, 48.256618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157299, 35.428867, 48.044788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242224, 0.496693, 0.833441,
		0.965722, -0.206050, -0.157873,
		0.093316, 0.843113, -0.529577,
		41.185295, 35.681801, 47.885914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.406063, 41.131237, 43.665413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707287, 40.893799, 43.778931>,  <36.888023, 40.751335, 43.847042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707287, 40.893799, 43.778931>,  <36.406063, 41.131237, 43.665413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707287, 40.893799, 43.778931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054383, -0.373699, -0.925954,
		0.655698, 0.712735, -0.249137,
		0.753062, -0.593598, 0.283794,
		36.933205, 40.715721, 43.864067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855709, 41.189407, 43.210770>,  <36.406063, 41.131237, 43.665413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855709, 41.189407, 43.210770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.946640, 40.840019, 43.382988>,  <37.001198, 40.630386, 43.486317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.946640, 40.840019, 43.382988>,  <36.855709, 41.189407, 43.210770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946640, 40.840019, 43.382988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018872, -0.438084, -0.898736,
		0.973636, 0.212431, -0.083104,
		0.227326, -0.873473, 0.430543,
		37.014839, 40.577976, 43.512150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159470, 40.879753, 42.616810>,  <36.855709, 41.189407, 43.210770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159470, 40.879753, 42.616810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.087467, 40.600315, 42.893810>,  <37.044266, 40.432652, 43.060009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.087467, 40.600315, 42.893810>,  <37.159470, 40.879753, 42.616810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087467, 40.600315, 42.893810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129713, -0.714710, -0.687288,
		0.975075, -0.033891, 0.219271,
		-0.180008, -0.698599, 0.692500,
		37.033466, 40.390736, 43.101559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819668, 40.352497, 42.647182>,  <37.159470, 40.879753, 42.616810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819668, 40.352497, 42.647182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471363, 40.201515, 42.773235>,  <37.262383, 40.110928, 42.848866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471363, 40.201515, 42.773235>,  <37.819668, 40.352497, 42.647182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471363, 40.201515, 42.773235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023767, -0.672452, -0.739759,
		0.491134, -0.636662, 0.594515,
		-0.870760, -0.377450, 0.315133,
		37.210136, 40.088280, 42.867775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863865, 39.603607, 42.384491>,  <37.819668, 40.352497, 42.647182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863865, 39.603607, 42.384491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482979, 39.680035, 42.479797>,  <37.254448, 39.725891, 42.536983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482979, 39.680035, 42.479797>,  <37.863865, 39.603607, 42.384491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482979, 39.680035, 42.479797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304090, -0.665699, -0.681450,
		0.028415, -0.721345, 0.691992,
		-0.952219, 0.191064, 0.238270,
		37.197311, 39.737354, 42.551277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641083, 38.998398, 42.404575>,  <37.863865, 39.603607, 42.384491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641083, 38.998398, 42.404575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.300915, 39.207413, 42.380150>,  <37.096813, 39.332821, 42.365494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.300915, 39.207413, 42.380150>,  <37.641083, 38.998398, 42.404575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300915, 39.207413, 42.380150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279513, -0.547105, -0.789018,
		-0.445702, -0.653933, 0.611328,
		-0.850425, 0.522541, -0.061063,
		37.045788, 39.364174, 42.361832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169521, 38.487160, 42.324043>,  <37.641083, 38.998398, 42.404575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169521, 38.487160, 42.324043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012257, 38.821690, 42.171215>,  <36.917896, 39.022408, 42.079517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012257, 38.821690, 42.171215>,  <37.169521, 38.487160, 42.324043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012257, 38.821690, 42.171215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336601, -0.517604, -0.786630,
		-0.855641, -0.180669, 0.485012,
		-0.393164, 0.836328, -0.382069,
		36.894306, 39.072590, 42.056595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568508, 38.229946, 42.138706>,  <37.169521, 38.487160, 42.324043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568508, 38.229946, 42.138706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569893, 38.571556, 41.930622>,  <36.570724, 38.776524, 41.805771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569893, 38.571556, 41.930622>,  <36.568508, 38.229946, 42.138706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569893, 38.571556, 41.930622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478680, -0.455331, -0.750692,
		-0.877982, 0.251612, 0.407232,
		0.003458, 0.854028, -0.520214,
		36.570930, 38.827766, 41.774559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948624, 38.198257, 41.690170>,  <36.568508, 38.229946, 42.138706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948624, 38.198257, 41.690170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.140400, 38.490101, 41.495110>,  <36.255466, 38.665207, 41.378075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.140400, 38.490101, 41.495110>,  <35.948624, 38.198257, 41.690170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140400, 38.490101, 41.495110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396253, -0.315827, -0.862111,
		-0.783018, 0.606568, 0.137689,
		0.479443, 0.729609, -0.487653,
		36.284233, 38.708984, 41.348812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535576, 38.525043, 41.058372>,  <35.948624, 38.198257, 41.690170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535576, 38.525043, 41.058372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.914734, 38.612015, 40.965229>,  <36.142227, 38.664196, 40.909344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.914734, 38.612015, 40.965229>,  <35.535576, 38.525043, 41.058372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914734, 38.612015, 40.965229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165406, -0.288819, -0.942987,
		-0.272287, 0.932367, -0.237805,
		0.947893, 0.217429, -0.232861,
		36.199100, 38.677242, 40.895370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592884, 38.900921, 40.364395>,  <35.535576, 38.525043, 41.058372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592884, 38.900921, 40.364395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954277, 38.742996, 40.431137>,  <36.171112, 38.648243, 40.471184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954277, 38.742996, 40.431137>,  <35.592884, 38.900921, 40.364395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954277, 38.742996, 40.431137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087308, -0.211599, -0.973449,
		0.419636, 0.894063, -0.156706,
		0.903484, -0.394812, 0.166854,
		36.225323, 38.624554, 40.481194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021336, 39.143833, 39.840641>,  <35.592884, 38.900921, 40.364395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021336, 39.143833, 39.840641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.180599, 38.797554, 39.961990>,  <36.276157, 38.589787, 40.034801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.180599, 38.797554, 39.961990>,  <36.021336, 39.143833, 39.840641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180599, 38.797554, 39.961990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263349, -0.208926, -0.941805,
		0.878701, 0.454884, 0.144794,
		0.398161, -0.865696, 0.303377,
		36.300049, 38.537846, 40.053005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494183, 39.058743, 39.439133>,  <36.021336, 39.143833, 39.840641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494183, 39.058743, 39.439133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452896, 38.681637, 39.565964>,  <36.428123, 38.455372, 39.642063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452896, 38.681637, 39.565964>,  <36.494183, 39.058743, 39.439133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452896, 38.681637, 39.565964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134564, -0.329089, -0.934662,
		0.985514, -0.053809, 0.160831,
		-0.103221, -0.942765, 0.317081,
		36.421928, 38.398808, 39.661087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938820, 38.668522, 39.079918>,  <36.494183, 39.058743, 39.439133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938820, 38.668522, 39.079918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.681244, 38.390369, 39.207535>,  <36.526699, 38.223480, 39.284103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.681244, 38.390369, 39.207535>,  <36.938820, 38.668522, 39.079918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681244, 38.390369, 39.207535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043295, -0.449456, -0.892253,
		0.763847, -0.560748, 0.319531,
		-0.643944, -0.695379, 0.319038,
		36.488060, 38.181755, 39.303246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709049, 38.764816, 39.190632>,  <36.938820, 38.668522, 39.079918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709049, 38.764816, 39.190632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.046291, 38.901711, 39.024715>,  <38.248638, 38.983849, 38.925167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.046291, 38.901711, 39.024715>,  <37.709049, 38.764816, 39.190632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046291, 38.901711, 39.024715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156737, 0.581452, 0.798340,
		0.514400, -0.738097, 0.436584,
		0.843105, 0.342237, -0.414786,
		38.299221, 39.004383, 38.900280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316311, 38.659988, 39.680099>,  <37.709049, 38.764816, 39.190632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316311, 38.659988, 39.680099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380356, 38.964581, 39.428860>,  <38.418785, 39.147335, 39.278114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380356, 38.964581, 39.428860>,  <38.316311, 38.659988, 39.680099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380356, 38.964581, 39.428860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278402, 0.575643, 0.768848,
		0.947025, -0.297970, -0.119828,
		0.160115, 0.761478, -0.628104,
		38.428391, 39.193024, 39.240429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063473, 38.932606, 39.896984>,  <38.316311, 38.659988, 39.680099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063473, 38.932606, 39.896984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903526, 39.225296, 39.676189>,  <38.807560, 39.400909, 39.543713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.903526, 39.225296, 39.676189>,  <39.063473, 38.932606, 39.896984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903526, 39.225296, 39.676189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277774, 0.670648, 0.687802,
		0.873469, 0.121702, -0.471423,
		-0.399866, 0.731723, -0.551985,
		38.783566, 39.444813, 39.510593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565556, 39.449654, 39.904537>,  <39.063473, 38.932606, 39.896984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565556, 39.449654, 39.904537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.222588, 39.633354, 39.811653>,  <39.016808, 39.743572, 39.755924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.222588, 39.633354, 39.811653>,  <39.565556, 39.449654, 39.904537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222588, 39.633354, 39.811653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188498, 0.700140, 0.688674,
		0.478851, 0.546713, -0.686882,
		-0.857421, 0.459248, -0.232209,
		38.965363, 39.771130, 39.741989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742229, 40.111031, 39.817734>,  <39.565556, 39.449654, 39.904537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742229, 40.111031, 39.817734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.352112, 40.166878, 39.886211>,  <39.118042, 40.200386, 39.927296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.352112, 40.166878, 39.886211>,  <39.742229, 40.111031, 39.817734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352112, 40.166878, 39.886211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217598, 0.740719, 0.635599,
		-0.038065, 0.657148, -0.752800,
		-0.975296, 0.139614, 0.171190,
		39.059525, 40.208763, 39.937569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627666, 40.757225, 39.684879>,  <39.742229, 40.111031, 39.817734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627666, 40.757225, 39.684879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308666, 40.661053, 39.906216>,  <39.117268, 40.603348, 40.039017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.308666, 40.661053, 39.906216>,  <39.627666, 40.757225, 39.684879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308666, 40.661053, 39.906216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220066, 0.738045, 0.637856,
		-0.561753, 0.630461, -0.535679,
		-0.797499, -0.240433, 0.553342,
		39.069416, 40.588924, 40.072220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146965, 41.421177, 39.841187>,  <39.627666, 40.757225, 39.684879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146965, 41.421177, 39.841187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.094006, 41.124664, 40.104389>,  <39.062229, 40.946758, 40.262310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.094006, 41.124664, 40.104389>,  <39.146965, 41.421177, 39.841187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094006, 41.124664, 40.104389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347221, 0.587104, 0.731264,
		-0.928390, 0.325293, 0.179656,
		-0.132398, -0.741278, 0.658010,
		39.054287, 40.902283, 40.301792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931046, 41.919292, 40.408516>,  <39.146965, 41.421177, 39.841187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931046, 41.919292, 40.408516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.040989, 41.575111, 40.580132>,  <39.106953, 41.368603, 40.683102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.040989, 41.575111, 40.580132>,  <38.931046, 41.919292, 40.408516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040989, 41.575111, 40.580132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120847, 0.473605, 0.872407,
		-0.953861, -0.187937, 0.234156,
		0.274855, -0.860453, 0.429041,
		39.123444, 41.316975, 40.708843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548832, 41.815586, 41.015476>,  <38.931046, 41.919292, 40.408516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548832, 41.815586, 41.015476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.858143, 41.566666, 41.064110>,  <39.043732, 41.417313, 41.093288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.858143, 41.566666, 41.064110>,  <38.548832, 41.815586, 41.015476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858143, 41.566666, 41.064110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086422, 0.293406, 0.952074,
		-0.628146, -0.725713, 0.280666,
		0.773281, -0.622297, 0.121585,
		39.090126, 41.379978, 41.100586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387733, 41.436237, 41.623531>,  <38.548832, 41.815586, 41.015476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387733, 41.436237, 41.623531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.784092, 41.406841, 41.578423>,  <39.021908, 41.389206, 41.551357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.784092, 41.406841, 41.578423>,  <38.387733, 41.436237, 41.623531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784092, 41.406841, 41.578423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121503, 0.127875, 0.984320,
		-0.057915, -0.989064, 0.135640,
		0.990900, -0.073488, -0.112769,
		39.081364, 41.384796, 41.544594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559849, 41.080486, 42.336132>,  <38.387733, 41.436237, 41.623531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559849, 41.080486, 42.336132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881863, 41.243736, 42.163925>,  <39.075073, 41.341686, 42.060600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881863, 41.243736, 42.163925>,  <38.559849, 41.080486, 42.336132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881863, 41.243736, 42.163925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348476, 0.261973, 0.899964,
		0.480082, -0.874531, 0.068676,
		0.805038, 0.408125, -0.430521,
		39.123375, 41.366173, 42.034767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227036, 40.600433, 42.545036>,  <38.559849, 41.080486, 42.336132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227036, 40.600433, 42.545036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.269566, 40.990421, 42.466927>,  <39.295086, 41.224415, 42.420059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.269566, 40.990421, 42.466927>,  <39.227036, 40.600433, 42.545036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269566, 40.990421, 42.466927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393869, 0.139024, 0.908592,
		0.912996, -0.173522, -0.369227,
		0.106329, 0.974968, -0.195274,
		39.301464, 41.282913, 42.408344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625492, 40.893425, 43.071358>,  <39.227036, 40.600433, 42.545036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625492, 40.893425, 43.071358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.564011, 41.251320, 42.903633>,  <39.527122, 41.466057, 42.802998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.564011, 41.251320, 42.903633>,  <39.625492, 40.893425, 43.071358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564011, 41.251320, 42.903633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215853, 0.444512, 0.869377,
		0.964252, 0.043117, -0.261454,
		-0.153704, 0.894735, -0.419314,
		39.517899, 41.519741, 42.777840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186771, 41.265862, 43.168594>,  <39.625492, 40.893425, 43.071358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186771, 41.265862, 43.168594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.910374, 41.546814, 43.100266>,  <39.744534, 41.715385, 43.059269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.910374, 41.546814, 43.100266>,  <40.186771, 41.265862, 43.168594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910374, 41.546814, 43.100266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222925, 0.431860, 0.873957,
		0.687623, 0.565823, -0.454993,
		-0.690998, 0.702383, -0.170821,
		39.703075, 41.757530, 43.049019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997215, 41.373055, 43.256222>,  <40.186771, 41.265862, 43.168594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997215, 41.373055, 43.256222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248466, 41.119946, 43.437351>,  <41.399220, 40.968079, 43.546028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248466, 41.119946, 43.437351>,  <40.997215, 41.373055, 43.256222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248466, 41.119946, 43.437351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258504, -0.379193, -0.888475,
		0.733913, 0.675134, -0.074607,
		0.628130, -0.632777, 0.452820,
		41.436905, 40.930111, 43.573196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616444, 41.322674, 42.819843>,  <40.997215, 41.373055, 43.256222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616444, 41.322674, 42.819843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588009, 40.995480, 43.048176>,  <41.570950, 40.799164, 43.185173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588009, 40.995480, 43.048176>,  <41.616444, 41.322674, 42.819843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588009, 40.995480, 43.048176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179208, -0.573437, -0.799409,
		0.981240, 0.045472, 0.187351,
		-0.071083, -0.817987, 0.570828,
		41.566685, 40.750084, 43.219425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069832, 40.871456, 42.567768>,  <41.616444, 41.322674, 42.819843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069832, 40.871456, 42.567768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.817039, 40.625744, 42.756771>,  <41.665363, 40.478317, 42.870174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.817039, 40.625744, 42.756771>,  <42.069832, 40.871456, 42.567768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817039, 40.625744, 42.756771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106465, -0.672734, -0.732185,
		0.767636, -0.412422, 0.490554,
		-0.631982, -0.614278, 0.472506,
		41.627445, 40.441460, 42.898521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487362, 40.323257, 42.641071>,  <42.069832, 40.871456, 42.567768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487362, 40.323257, 42.641071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.115120, 40.181183, 42.676437>,  <41.891773, 40.095940, 42.697655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.115120, 40.181183, 42.676437>,  <42.487362, 40.323257, 42.641071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115120, 40.181183, 42.676437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233988, -0.763042, -0.602509,
		0.281464, -0.540011, 0.793200,
		-0.930606, -0.355184, 0.088413,
		41.835938, 40.074627, 42.702961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556286, 39.628307, 42.585159>,  <42.487362, 40.323257, 42.641071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556286, 39.628307, 42.585159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.158882, 39.658211, 42.550877>,  <41.920441, 39.676151, 42.530308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.158882, 39.658211, 42.550877>,  <42.556286, 39.628307, 42.585159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158882, 39.658211, 42.550877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013541, -0.826017, -0.563483,
		-0.112922, -0.558666, 0.821670,
		-0.993512, 0.074756, -0.085710,
		41.860828, 39.680637, 42.525162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246391, 39.067616, 42.929447>,  <42.556286, 39.628307, 42.585159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246391, 39.067616, 42.929447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.962547, 39.179531, 42.670780>,  <41.792240, 39.246681, 42.515579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.962547, 39.179531, 42.670780>,  <42.246391, 39.067616, 42.929447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962547, 39.179531, 42.670780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054715, -0.893129, -0.446460,
		-0.702467, -0.352194, 0.618465,
		-0.709609, 0.279784, -0.646664,
		41.749664, 39.263466, 42.476780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720676, 38.493050, 42.843006>,  <42.246391, 39.067616, 42.929447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720676, 38.493050, 42.843006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650932, 38.714146, 42.517044>,  <41.609085, 38.846806, 42.321465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650932, 38.714146, 42.517044>,  <41.720676, 38.493050, 42.843006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650932, 38.714146, 42.517044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193241, -0.830699, -0.522108,
		-0.965535, 0.066440, 0.251651,
		-0.174358, 0.552743, -0.814908,
		41.598625, 38.879967, 42.272572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122017, 38.239403, 42.550198>,  <41.720676, 38.493050, 42.843006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122017, 38.239403, 42.550198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.310410, 38.431259, 42.254059>,  <41.423447, 38.546375, 42.076374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.310410, 38.431259, 42.254059>,  <41.122017, 38.239403, 42.550198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310410, 38.431259, 42.254059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111155, -0.800306, -0.589199,
		-0.875111, 0.359796, -0.323616,
		0.470984, 0.479643, -0.740350,
		41.451706, 38.575153, 42.031956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682068, 38.019093, 42.096607>,  <41.122017, 38.239403, 42.550198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682068, 38.019093, 42.096607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.007015, 38.151417, 41.904514>,  <41.201984, 38.230812, 41.789257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.007015, 38.151417, 41.904514>,  <40.682068, 38.019093, 42.096607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007015, 38.151417, 41.904514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178753, -0.642613, -0.745048,
		-0.555074, 0.691095, -0.462904,
		0.812367, 0.330811, -0.480233,
		41.250725, 38.250660, 41.760445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411274, 38.275639, 41.525414>,  <40.682068, 38.019093, 42.096607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411274, 38.275639, 41.525414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.788731, 38.163555, 41.454956>,  <41.015205, 38.096306, 41.412682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.788731, 38.163555, 41.454956>,  <40.411274, 38.275639, 41.525414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788731, 38.163555, 41.454956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328723, -0.731521, -0.597342,
		0.038528, 0.621579, -0.782404,
		0.943640, -0.280208, -0.176143,
		41.071823, 38.079494, 41.402115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586212, 38.339851, 40.733501>,  <40.411274, 38.275639, 41.525414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586212, 38.339851, 40.733501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.869591, 38.094448, 40.873051>,  <41.039619, 37.947208, 40.956779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.869591, 38.094448, 40.873051>,  <40.586212, 38.339851, 40.733501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869591, 38.094448, 40.873051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259501, -0.686130, -0.679621,
		0.656322, 0.390945, -0.645294,
		0.708449, -0.613505, 0.348871,
		41.082127, 37.910397, 40.977711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926525, 38.054794, 40.151726>,  <40.586212, 38.339851, 40.733501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926525, 38.054794, 40.151726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027882, 37.808819, 40.450428>,  <41.088696, 37.661236, 40.629650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027882, 37.808819, 40.450428>,  <40.926525, 38.054794, 40.151726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027882, 37.808819, 40.450428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083699, -0.782994, -0.616372,
		0.963737, 0.093679, -0.249872,
		0.253390, -0.614934, 0.746759,
		41.103897, 37.624340, 40.674458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346428, 37.501343, 39.874260>,  <40.926525, 38.054794, 40.151726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346428, 37.501343, 39.874260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.267143, 37.318413, 40.221031>,  <41.219574, 37.208656, 40.429096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.267143, 37.318413, 40.221031>,  <41.346428, 37.501343, 39.874260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267143, 37.318413, 40.221031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091950, -0.871904, -0.480967,
		0.975837, -0.175046, 0.130769,
		-0.198210, -0.457322, 0.866931,
		41.207680, 37.181217, 40.481110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777603, 36.844227, 39.899406>,  <41.346428, 37.501343, 39.874260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777603, 36.844227, 39.899406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.477463, 36.782734, 40.156574>,  <41.297379, 36.745838, 40.310875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.477463, 36.782734, 40.156574>,  <41.777603, 36.844227, 39.899406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477463, 36.782734, 40.156574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245580, -0.838151, -0.487025,
		0.613733, -0.523327, 0.591152,
		-0.750348, -0.153729, 0.642920,
		41.252357, 36.736614, 40.349449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.522713, 41.056755, 32.627682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301796, 41.032047, 32.295139>,  <29.169245, 41.017223, 32.095612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301796, 41.032047, 32.295139>,  <29.522713, 41.056755, 32.627682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301796, 41.032047, 32.295139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618684, -0.638033, 0.458415,
		-0.558751, 0.767527, 0.314164,
		-0.552293, -0.061772, -0.831358,
		29.136108, 41.013515, 32.045731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984770, 40.801338, 32.950001>,  <29.522713, 41.056755, 32.627682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984770, 40.801338, 32.950001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887194, 40.758205, 32.564491>,  <28.828648, 40.732327, 32.333183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887194, 40.758205, 32.564491>,  <28.984770, 40.801338, 32.950001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887194, 40.758205, 32.564491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642777, -0.726176, 0.243941,
		-0.726176, 0.679000, 0.107832,
		-0.243941, -0.107832, -0.963776,
		28.814011, 40.725857, 32.275360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204676, 40.807362, 32.918873>,  <28.984770, 40.801338, 32.950001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204676, 40.807362, 32.918873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333422, 40.626575, 32.586094>,  <28.410669, 40.518105, 32.386429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333422, 40.626575, 32.586094>,  <28.204676, 40.807362, 32.918873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333422, 40.626575, 32.586094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577682, -0.789932, 0.205649,
		-0.750125, 0.414407, -0.515344,
		0.321865, -0.451967, -0.831943,
		28.429981, 40.490986, 32.336510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591127, 40.597721, 32.513416>,  <28.204676, 40.807362, 32.918873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591127, 40.597721, 32.513416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900364, 40.366787, 32.408337>,  <28.085905, 40.228226, 32.345287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900364, 40.366787, 32.408337>,  <27.591127, 40.597721, 32.513416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900364, 40.366787, 32.408337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455324, -0.793467, 0.403844,
		-0.441598, -0.192595, -0.876298,
		0.773092, -0.577337, -0.262700,
		28.132292, 40.193584, 32.329525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231928, 40.121090, 32.079826>,  <27.591127, 40.597721, 32.513416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231928, 40.121090, 32.079826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.575256, 39.977039, 32.226028>,  <27.781254, 39.890610, 32.313747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.575256, 39.977039, 32.226028>,  <27.231928, 40.121090, 32.079826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575256, 39.977039, 32.226028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472117, -0.833279, 0.287667,
		0.200968, -0.419470, -0.885244,
		0.858323, -0.360127, 0.365501,
		27.832752, 39.868999, 32.335678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179991, 39.361279, 31.945158>,  <27.231928, 40.121090, 32.079826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179991, 39.361279, 31.945158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463516, 39.406769, 32.223625>,  <27.633631, 39.434063, 32.390705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463516, 39.406769, 32.223625>,  <27.179991, 39.361279, 31.945158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463516, 39.406769, 32.223625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272065, -0.866482, 0.418558,
		0.650820, -0.486082, -0.583231,
		0.708812, 0.113729, 0.696169,
		27.676159, 39.440887, 32.432476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304276, 38.634094, 32.124382>,  <27.179991, 39.361279, 31.945158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304276, 38.634094, 32.124382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475050, 38.833447, 32.426201>,  <27.577515, 38.953056, 32.607292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475050, 38.833447, 32.426201>,  <27.304276, 38.634094, 32.124382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475050, 38.833447, 32.426201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171565, -0.774619, 0.608712,
		0.887857, -0.389336, -0.245210,
		0.426938, 0.498380, 0.754547,
		27.603132, 38.982960, 32.652565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733786, 38.179649, 32.377117>,  <27.304276, 38.634094, 32.124382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733786, 38.179649, 32.377117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.717028, 38.451340, 32.670208>,  <27.706974, 38.614353, 32.846062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.717028, 38.451340, 32.670208>,  <27.733786, 38.179649, 32.377117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717028, 38.451340, 32.670208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063637, -0.733699, 0.676488,
		0.997093, -0.018289, 0.073961,
		-0.041893, 0.679229, 0.732730,
		27.704460, 38.655109, 32.890026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309477, 38.005806, 32.963448>,  <27.733786, 38.179649, 32.377117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309477, 38.005806, 32.963448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.029379, 38.221939, 33.150078>,  <27.861320, 38.351620, 33.262058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.029379, 38.221939, 33.150078>,  <28.309477, 38.005806, 32.963448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029379, 38.221939, 33.150078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023860, -0.635484, 0.771745,
		0.713503, 0.551544, 0.432102,
		-0.700245, 0.540333, 0.466580,
		27.819305, 38.384037, 33.290051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522440, 37.919891, 33.601337>,  <28.309477, 38.005806, 32.963448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522440, 37.919891, 33.601337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.152874, 38.064720, 33.650787>,  <27.931133, 38.151619, 33.680458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.152874, 38.064720, 33.650787>,  <28.522440, 37.919891, 33.601337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152874, 38.064720, 33.650787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153803, -0.647358, 0.746507,
		0.350318, 0.670696, 0.653792,
		-0.923916, 0.362071, 0.123626,
		27.875700, 38.173340, 33.687874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458126, 38.160877, 34.314285>,  <28.522440, 37.919891, 33.601337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458126, 38.160877, 34.314285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088652, 38.093159, 34.176796>,  <27.866966, 38.052528, 34.094303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.088652, 38.093159, 34.176796>,  <28.458126, 38.160877, 34.314285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088652, 38.093159, 34.176796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212730, -0.519515, 0.827557,
		-0.318671, 0.837522, 0.443854,
		-0.923685, -0.169297, -0.343721,
		27.811546, 38.042370, 34.073681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065027, 38.255203, 34.862301>,  <28.458126, 38.160877, 34.314285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065027, 38.255203, 34.862301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819357, 38.065426, 34.610050>,  <27.671955, 37.951561, 34.458698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819357, 38.065426, 34.610050>,  <28.065027, 38.255203, 34.862301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819357, 38.065426, 34.610050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352611, -0.549922, 0.757133,
		-0.706012, 0.687380, 0.170457,
		-0.614176, -0.474440, -0.630630,
		27.635103, 37.923096, 34.420860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436619, 38.258389, 35.161575>,  <28.065027, 38.255203, 34.862301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436619, 38.258389, 35.161575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413980, 37.960838, 34.895210>,  <27.400398, 37.782307, 34.735390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413980, 37.960838, 34.895210>,  <27.436619, 38.258389, 35.161575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413980, 37.960838, 34.895210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445787, -0.577977, 0.683533,
		-0.893348, 0.335541, -0.298901,
		-0.056596, -0.743879, -0.665914,
		27.397001, 37.737675, 34.695435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811745, 37.976681, 35.221916>,  <27.436619, 38.258389, 35.161575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811745, 37.976681, 35.221916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034935, 37.692520, 35.050339>,  <27.168848, 37.522022, 34.947392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034935, 37.692520, 35.050339>,  <26.811745, 37.976681, 35.221916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034935, 37.692520, 35.050339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439781, -0.691470, 0.573116,
		-0.703754, -0.131131, -0.698237,
		0.557964, -0.710404, -0.428956,
		27.202328, 37.479401, 34.921654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317448, 37.402039, 35.090885>,  <26.811745, 37.976681, 35.221916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317448, 37.402039, 35.090885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684521, 37.243134, 35.093327>,  <26.904764, 37.147789, 35.094791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684521, 37.243134, 35.093327>,  <26.317448, 37.402039, 35.090885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684521, 37.243134, 35.093327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359795, -0.824415, 0.436907,
		-0.168540, -0.403137, -0.899486,
		0.917683, -0.397267, 0.006100,
		26.959826, 37.123955, 35.095158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233723, 36.772961, 34.926411>,  <26.317448, 37.402039, 35.090885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233723, 36.772961, 34.926411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.602524, 36.735344, 35.076649>,  <26.823805, 36.712776, 35.166790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.602524, 36.735344, 35.076649>,  <26.233723, 36.772961, 34.926411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602524, 36.735344, 35.076649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261469, -0.866678, 0.424857,
		0.285568, -0.489925, -0.823665,
		0.922001, -0.094037, 0.375596,
		26.879124, 36.707134, 35.189327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463051, 36.099823, 34.840294>,  <26.233723, 36.772961, 34.926411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463051, 36.099823, 34.840294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685154, 36.242924, 35.140614>,  <26.818417, 36.328785, 35.320805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685154, 36.242924, 35.140614>,  <26.463051, 36.099823, 34.840294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685154, 36.242924, 35.140614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281324, -0.768750, 0.574353,
		0.782653, -0.530133, -0.326212,
		0.555258, 0.357747, 0.750803,
		26.851732, 36.350246, 35.365856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862543, 35.508480, 35.147606>,  <26.463051, 36.099823, 34.840294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862543, 35.508480, 35.147606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867918, 35.807156, 35.413620>,  <26.871143, 35.986362, 35.573231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867918, 35.807156, 35.413620>,  <26.862543, 35.508480, 35.147606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867918, 35.807156, 35.413620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254982, -0.640553, 0.724346,
		0.966852, -0.179306, 0.181785,
		0.013436, 0.746687, 0.665039,
		26.871948, 36.031162, 35.613132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285528, 35.279533, 35.735001>,  <26.862543, 35.508480, 35.147606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285528, 35.279533, 35.735001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068861, 35.576851, 35.892025>,  <26.938860, 35.755241, 35.986240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068861, 35.576851, 35.892025>,  <27.285528, 35.279533, 35.735001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068861, 35.576851, 35.892025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334680, -0.619098, 0.710427,
		0.771093, 0.253433, 0.584112,
		-0.541668, 0.743297, 0.392563,
		26.906361, 35.799839, 36.009792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445614, 35.477310, 36.478516>,  <27.285528, 35.279533, 35.735001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445614, 35.477310, 36.478516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067549, 35.566536, 36.383095>,  <26.840710, 35.620071, 36.325840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067549, 35.566536, 36.383095>,  <27.445614, 35.477310, 36.478516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067549, 35.566536, 36.383095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322945, -0.529389, 0.784509,
		0.048707, 0.818529, 0.572396,
		-0.945163, 0.223064, -0.238555,
		26.784000, 35.633453, 36.311527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063025, 35.010956, 36.399765>,  <27.445614, 35.477310, 36.478516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063025, 35.010956, 36.399765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435877, 34.866116, 36.398251>,  <28.659588, 34.779209, 36.397343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435877, 34.866116, 36.398251>,  <28.063025, 35.010956, 36.399765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435877, 34.866116, 36.398251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342425, 0.877972, 0.334530,
		-0.117810, -0.313122, 0.942377,
		0.932130, -0.362104, -0.003787,
		28.715515, 34.757484, 36.397114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375683, 35.195015, 37.040569>,  <28.063025, 35.010956, 36.399765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375683, 35.195015, 37.040569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654823, 35.181370, 36.754398>,  <28.822308, 35.173183, 36.582695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654823, 35.181370, 36.754398>,  <28.375683, 35.195015, 37.040569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654823, 35.181370, 36.754398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311016, 0.914212, 0.259778,
		0.645191, -0.403797, 0.648596,
		0.697852, -0.034117, -0.715429,
		28.864180, 35.171135, 36.539768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959618, 35.396843, 37.366531>,  <28.375683, 35.195015, 37.040569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959618, 35.396843, 37.366531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130470, 35.410076, 37.005096>,  <29.232983, 35.418018, 36.788235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130470, 35.410076, 37.005096>,  <28.959618, 35.396843, 37.366531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130470, 35.410076, 37.005096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457738, 0.853902, 0.247644,
		0.779765, -0.519381, 0.349586,
		0.427133, 0.033085, -0.903583,
		29.258610, 35.420002, 36.734020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645115, 35.439468, 37.498398>,  <28.959618, 35.396843, 37.366531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645115, 35.439468, 37.498398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574194, 35.587540, 37.133644>,  <29.531641, 35.676384, 36.914791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574194, 35.587540, 37.133644>,  <29.645115, 35.439468, 37.498398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574194, 35.587540, 37.133644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430882, 0.862238, 0.266246,
		0.884819, -0.345708, -0.312381,
		-0.177303, 0.370179, -0.911883,
		29.521004, 35.698593, 36.860081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243801, 35.867481, 37.419369>,  <29.645115, 35.439468, 37.498398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243801, 35.867481, 37.419369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.981712, 35.964996, 37.133362>,  <29.824459, 36.023506, 36.961758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.981712, 35.964996, 37.133362>,  <30.243801, 35.867481, 37.419369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981712, 35.964996, 37.133362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415498, 0.906773, -0.071584,
		0.630908, -0.343992, -0.695431,
		-0.655223, 0.243787, -0.715018,
		29.785145, 36.038132, 36.918858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711302, 36.120804, 36.894875>,  <30.243801, 35.867481, 37.419369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711302, 36.120804, 36.894875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344402, 36.273529, 36.849495>,  <30.124262, 36.365166, 36.822266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344402, 36.273529, 36.849495>,  <30.711302, 36.120804, 36.894875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344402, 36.273529, 36.849495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393439, 0.912921, -0.108539,
		0.062132, -0.144194, -0.987597,
		-0.917249, 0.381815, -0.113453,
		30.069227, 36.388073, 36.815460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704470, 36.489838, 36.269363>,  <30.711302, 36.120804, 36.894875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704470, 36.489838, 36.269363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.406424, 36.625988, 36.498779>,  <30.227596, 36.707680, 36.636429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.406424, 36.625988, 36.498779>,  <30.704470, 36.489838, 36.269363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406424, 36.625988, 36.498779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203321, 0.934956, -0.290720,
		-0.635187, -0.100008, -0.765857,
		-0.745116, 0.340376, 0.573538,
		30.182888, 36.728100, 36.670841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429665, 37.028950, 35.940445>,  <30.704470, 36.489838, 36.269363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429665, 37.028950, 35.940445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248810, 37.111012, 36.287659>,  <30.140297, 37.160248, 36.495987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248810, 37.111012, 36.287659>,  <30.429665, 37.028950, 35.940445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248810, 37.111012, 36.287659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063860, 0.978136, -0.197918,
		-0.889658, -0.034054, -0.455355,
		-0.452139, 0.205158, 0.868032,
		30.113169, 37.172558, 36.548069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942888, 37.524429, 35.761234>,  <30.429665, 37.028950, 35.940445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942888, 37.524429, 35.761234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.950689, 37.549255, 36.160385>,  <29.955370, 37.564152, 36.399876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.950689, 37.549255, 36.160385>,  <29.942888, 37.524429, 35.761234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950689, 37.549255, 36.160385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021051, 0.997876, -0.061649,
		-0.999588, -0.019805, 0.020766,
		0.019501, 0.062061, 0.997882,
		29.956539, 37.567875, 36.459751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409721, 38.031555, 35.993370>,  <29.942888, 37.524429, 35.761234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409721, 38.031555, 35.993370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.685257, 37.999477, 36.281555>,  <29.850578, 37.980228, 36.454468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.685257, 37.999477, 36.281555>,  <29.409721, 38.031555, 35.993370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685257, 37.999477, 36.281555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009334, 0.992798, 0.119436,
		-0.724856, -0.088997, 0.683128,
		0.688838, -0.080198, 0.720466,
		29.891909, 37.975418, 36.497696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419600, 38.723988, 36.062862>,  <29.409721, 38.031555, 35.993370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419600, 38.723988, 36.062862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679247, 38.556004, 36.316566>,  <29.835035, 38.455215, 36.468788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679247, 38.556004, 36.316566>,  <29.419600, 38.723988, 36.062862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679247, 38.556004, 36.316566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341736, 0.905911, 0.250083,
		-0.679606, 0.054416, 0.731556,
		0.649116, -0.419957, 0.634259,
		29.873981, 38.430016, 36.506844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309805, 39.023746, 36.835964>,  <29.419600, 38.723988, 36.062862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309805, 39.023746, 36.835964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665339, 38.889111, 36.711590>,  <29.878658, 38.808331, 36.636967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665339, 38.889111, 36.711590>,  <29.309805, 39.023746, 36.835964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665339, 38.889111, 36.711590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317880, 0.941652, -0.110653,
		0.330036, -0.000488, 0.943968,
		0.888835, -0.336588, -0.310934,
		29.931990, 38.788136, 36.618309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754339, 39.480778, 37.180981>,  <29.309805, 39.023746, 36.835964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754339, 39.480778, 37.180981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947636, 39.318184, 36.870819>,  <30.063614, 39.220627, 36.684723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947636, 39.318184, 36.870819>,  <29.754339, 39.480778, 37.180981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947636, 39.318184, 36.870819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307498, 0.908057, -0.284389,
		0.819710, -0.101006, 0.563803,
		0.483240, -0.406485, -0.775402,
		30.092607, 39.196239, 36.638199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288963, 39.811096, 37.152100>,  <29.754339, 39.480778, 37.180981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288963, 39.811096, 37.152100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286169, 39.647926, 36.786903>,  <30.284492, 39.550026, 36.567787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286169, 39.647926, 36.786903>,  <30.288963, 39.811096, 37.152100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286169, 39.647926, 36.786903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118131, 0.906281, -0.405832,
		0.992974, -0.110687, 0.041858,
		-0.006985, -0.407925, -0.912989,
		30.284073, 39.525547, 36.513008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834881, 40.133389, 36.735268>,  <30.288963, 39.811096, 37.152100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834881, 40.133389, 36.735268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577700, 39.991287, 36.463852>,  <30.423391, 39.906029, 36.301003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577700, 39.991287, 36.463852>,  <30.834881, 40.133389, 36.735268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577700, 39.991287, 36.463852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081552, 0.912642, -0.400542,
		0.761552, -0.202194, -0.615757,
		-0.642953, -0.355250, -0.678535,
		30.384813, 39.884712, 36.260292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966038, 40.460751, 36.138580>,  <30.834881, 40.133389, 36.735268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966038, 40.460751, 36.138580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.593891, 40.334438, 36.064064>,  <30.370604, 40.258652, 36.019356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.593891, 40.334438, 36.064064>,  <30.966038, 40.460751, 36.138580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593891, 40.334438, 36.064064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251141, 0.919074, -0.303696,
		0.267115, -0.235763, -0.934380,
		-0.930364, -0.315783, -0.186288,
		30.314781, 40.239704, 36.008179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867359, 40.725994, 35.518856>,  <30.966038, 40.460751, 36.138580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867359, 40.725994, 35.518856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.490608, 40.661049, 35.636501>,  <30.264557, 40.622082, 35.707088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.490608, 40.661049, 35.636501>,  <30.867359, 40.725994, 35.518856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490608, 40.661049, 35.636501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254267, 0.916707, -0.308214,
		-0.219571, -0.365083, -0.904711,
		-0.941879, -0.162363, 0.294111,
		30.208044, 40.612339, 35.724735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439703, 40.840843, 34.991867>,  <30.867359, 40.725994, 35.518856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439703, 40.840843, 34.991867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.211637, 40.912956, 35.312469>,  <30.074799, 40.956223, 35.504829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.211637, 40.912956, 35.312469>,  <30.439703, 40.840843, 34.991867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211637, 40.912956, 35.312469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300541, 0.862222, -0.407735,
		-0.764583, -0.473361, -0.437426,
		-0.570164, 0.180283, 0.801505,
		30.040588, 40.967041, 35.552921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053812, 41.224655, 34.719738>,  <30.439703, 40.840843, 34.991867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053812, 41.224655, 34.719738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.969337, 41.293877, 35.104542>,  <29.918653, 41.335407, 35.335423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.969337, 41.293877, 35.104542>,  <30.053812, 41.224655, 34.719738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969337, 41.293877, 35.104542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266275, 0.936793, -0.226971,
		-0.940478, -0.304091, -0.151757,
		-0.211185, 0.173052, 0.962005,
		29.905981, 41.345791, 35.393143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371164, 41.536610, 34.659206>,  <30.053812, 41.224655, 34.719738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371164, 41.536610, 34.659206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.579458, 41.649731, 34.981415>,  <29.704433, 41.717602, 35.174740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.579458, 41.649731, 34.981415>,  <29.371164, 41.536610, 34.659206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579458, 41.649731, 34.981415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228952, 0.955238, -0.187353,
		-0.822446, -0.086864, 0.562172,
		0.520734, 0.282798, 0.805520,
		29.735678, 41.734570, 35.223072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072197, 42.124817, 34.794846>,  <29.371164, 41.536610, 34.659206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072197, 42.124817, 34.794846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391520, 42.162506, 35.032780>,  <29.583113, 42.185120, 35.175541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391520, 42.162506, 35.032780>,  <29.072197, 42.124817, 34.794846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391520, 42.162506, 35.032780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059296, 0.995184, -0.078053,
		-0.599323, 0.027039, 0.800050,
		0.798308, 0.094219, 0.594833,
		29.631012, 42.190773, 35.211231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650379, 41.846760, 34.275726>,  <29.072197, 42.124817, 34.794846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650379, 41.846760, 34.275726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674807, 42.109314, 33.974949>,  <28.689463, 42.266846, 33.794483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674807, 42.109314, 33.974949>,  <28.650379, 41.846760, 34.275726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674807, 42.109314, 33.974949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903136, 0.284427, 0.321631,
		0.424989, -0.698753, -0.575438,
		0.061071, 0.656389, -0.751947,
		28.693129, 42.306232, 33.749363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.700733, 35.486172, 48.529076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.511635, 35.779724, 48.333965>,  <41.398174, 35.955856, 48.216900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.511635, 35.779724, 48.333965>,  <41.700733, 35.486172, 48.529076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511635, 35.779724, 48.333965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324978, 0.659716, 0.677617,
		0.819085, 0.161825, -0.550375,
		-0.472746, 0.733885, -0.487774,
		41.369812, 35.999889, 48.187634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900112, 36.156277, 48.833950>,  <41.700733, 35.486172, 48.529076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900112, 36.156277, 48.833950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.601635, 36.302078, 48.611122>,  <41.422546, 36.389561, 48.477425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.601635, 36.302078, 48.611122>,  <41.900112, 36.156277, 48.833950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601635, 36.302078, 48.611122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013362, 0.844819, 0.534885,
		0.665592, 0.391685, -0.635271,
		-0.746196, 0.364504, -0.557071,
		41.377777, 36.411430, 48.444000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112759, 36.773193, 48.744751>,  <41.900112, 36.156277, 48.833950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112759, 36.773193, 48.744751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.720127, 36.762985, 48.669003>,  <41.484550, 36.756859, 48.623554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.720127, 36.762985, 48.669003>,  <42.112759, 36.773193, 48.744751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720127, 36.762985, 48.669003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119258, 0.856151, 0.502775,
		0.149297, 0.516095, -0.843419,
		-0.981574, -0.025522, -0.189370,
		41.425655, 36.755329, 48.612190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952190, 37.453419, 48.394814>,  <42.112759, 36.773193, 48.744751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952190, 37.453419, 48.394814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.611664, 37.311817, 48.549702>,  <41.407349, 37.226856, 48.642635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.611664, 37.311817, 48.549702>,  <41.952190, 37.453419, 48.394814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611664, 37.311817, 48.549702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159301, 0.877626, 0.452102,
		-0.499881, 0.323198, -0.803531,
		-0.851318, -0.354000, 0.387223,
		41.356270, 37.205616, 48.665867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366817, 37.829903, 48.071484>,  <41.952190, 37.453419, 48.394814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366817, 37.829903, 48.071484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.247559, 37.670090, 48.418236>,  <41.176003, 37.574203, 48.626286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.247559, 37.670090, 48.418236>,  <41.366817, 37.829903, 48.071484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247559, 37.670090, 48.418236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111444, 0.916545, 0.384091,
		-0.947991, 0.017908, -0.317794,
		-0.298151, -0.399531, 0.866880,
		41.158112, 37.550232, 48.678299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816154, 38.299984, 48.179497>,  <41.366817, 37.829903, 48.071484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816154, 38.299984, 48.179497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.898277, 38.129929, 48.532112>,  <40.947552, 38.027893, 48.743679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.898277, 38.129929, 48.532112>,  <40.816154, 38.299984, 48.179497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898277, 38.129929, 48.532112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133980, 0.880033, 0.455622,
		-0.969483, -0.211652, 0.123719,
		0.205310, -0.425142, 0.881534,
		40.959869, 38.002388, 48.796574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322346, 38.437515, 48.475021>,  <40.816154, 38.299984, 48.179497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322346, 38.437515, 48.475021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.586796, 38.333279, 48.756447>,  <40.745464, 38.270737, 48.925304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.586796, 38.333279, 48.756447>,  <40.322346, 38.437515, 48.475021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586796, 38.333279, 48.756447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178842, 0.855980, 0.485091,
		-0.728649, -0.446533, 0.519306,
		0.661125, -0.260587, 0.703568,
		40.785133, 38.255104, 48.967518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025669, 38.647114, 49.106483>,  <40.322346, 38.437515, 48.475021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025669, 38.647114, 49.106483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.413208, 38.603138, 49.195244>,  <40.645733, 38.576752, 49.248501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.413208, 38.603138, 49.195244>,  <40.025669, 38.647114, 49.106483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413208, 38.603138, 49.195244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027391, 0.842985, 0.537239,
		-0.246123, -0.526583, 0.813716,
		0.968852, -0.109939, 0.221902,
		40.703865, 38.570156, 49.261814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085144, 38.732944, 49.848972>,  <40.025669, 38.647114, 49.106483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085144, 38.732944, 49.848972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.450882, 38.813065, 49.708202>,  <40.670326, 38.861137, 49.623741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.450882, 38.813065, 49.708202>,  <40.085144, 38.732944, 49.848972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450882, 38.813065, 49.708202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040555, 0.819430, 0.571742,
		0.402895, -0.537043, 0.741121,
		0.914347, 0.200295, -0.351924,
		40.725185, 38.873154, 49.602627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452335, 38.962521, 50.508984>,  <40.085144, 38.732944, 49.848972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452335, 38.962521, 50.508984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.636539, 39.105278, 50.183884>,  <40.747063, 39.190933, 49.988823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.636539, 39.105278, 50.183884>,  <40.452335, 38.962521, 50.508984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636539, 39.105278, 50.183884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003243, 0.916282, 0.400519,
		0.887647, -0.181809, 0.423118,
		0.460514, 0.356892, -0.812746,
		40.774693, 39.212345, 49.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004433, 39.363892, 50.739292>,  <40.452335, 38.962521, 50.508984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004433, 39.363892, 50.739292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.927094, 39.486938, 50.366627>,  <40.880692, 39.560768, 50.143028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.927094, 39.486938, 50.366627>,  <41.004433, 39.363892, 50.739292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927094, 39.486938, 50.366627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156844, 0.927674, 0.338852,
		0.968513, 0.211641, -0.131114,
		-0.193346, 0.307618, -0.931659,
		40.869091, 39.579224, 50.087128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457184, 39.872875, 50.461998>,  <41.004433, 39.363892, 50.739292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457184, 39.872875, 50.461998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100651, 39.916470, 50.285976>,  <40.886730, 39.942627, 50.180363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100651, 39.916470, 50.285976>,  <41.457184, 39.872875, 50.461998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100651, 39.916470, 50.285976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021380, 0.979699, 0.199331,
		0.452840, 0.168262, -0.875571,
		-0.891335, 0.108985, -0.440049,
		40.833252, 39.949165, 50.153961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618565, 40.569607, 49.927223>,  <41.457184, 39.872875, 50.461998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618565, 40.569607, 49.927223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.252155, 40.516544, 50.078644>,  <41.032310, 40.484707, 50.169495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.252155, 40.516544, 50.078644>,  <41.618565, 40.569607, 49.927223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252155, 40.516544, 50.078644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016215, 0.955207, 0.295493,
		-0.400794, 0.264540, -0.877145,
		-0.916025, -0.132655, 0.378552,
		40.977348, 40.476749, 50.192211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254276, 41.077995, 49.657425>,  <41.618565, 40.569607, 49.927223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254276, 41.077995, 49.657425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065861, 40.952496, 49.987198>,  <40.952812, 40.877197, 50.185062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.065861, 40.952496, 49.987198>,  <41.254276, 41.077995, 49.657425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065861, 40.952496, 49.987198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100502, 0.947610, 0.303207,
		-0.876370, 0.059964, -0.477890,
		-0.471035, -0.313750, 0.824431,
		40.924549, 40.858372, 50.234528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550144, 41.323975, 49.433693>,  <41.254276, 41.077995, 49.657425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550144, 41.323975, 49.433693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.674721, 41.681862, 49.305645>,  <40.749466, 41.896595, 49.228817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.674721, 41.681862, 49.305645>,  <40.550144, 41.323975, 49.433693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674721, 41.681862, 49.305645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062407, -0.355409, -0.932626,
		-0.948213, 0.270485, -0.166528,
		0.311446, 0.894719, -0.320123,
		40.768154, 41.950279, 49.209610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270126, 41.227657, 48.816849>,  <40.550144, 41.323975, 49.433693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270126, 41.227657, 48.816849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.527424, 41.533199, 48.795799>,  <40.681801, 41.716522, 48.783169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.527424, 41.533199, 48.795799>,  <40.270126, 41.227657, 48.816849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527424, 41.533199, 48.795799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047477, -0.108384, -0.992975,
		-0.764188, 0.636227, -0.105983,
		0.643244, 0.763851, -0.052619,
		40.720398, 41.762356, 48.780014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010700, 41.691204, 48.346687>,  <40.270126, 41.227657, 48.816849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010700, 41.691204, 48.346687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.405140, 41.757076, 48.355541>,  <40.641804, 41.796600, 48.360855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.405140, 41.757076, 48.355541>,  <40.010700, 41.691204, 48.346687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405140, 41.757076, 48.355541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048671, -0.158871, -0.986099,
		-0.158871, 0.973469, -0.164678,
		0.986099, 0.164678, 0.022139,
		40.700970, 41.806480, 48.362183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145721, 42.105434, 47.810497>,  <40.010700, 41.691204, 48.346687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145721, 42.105434, 47.810497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.519684, 41.990665, 47.894047>,  <40.744061, 41.921803, 47.944176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.519684, 41.990665, 47.894047>,  <40.145721, 42.105434, 47.810497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519684, 41.990665, 47.894047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207111, -0.036857, -0.977623,
		0.288202, 0.957244, 0.024968,
		0.934903, -0.286924, 0.208878,
		40.800156, 41.904587, 47.956711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590290, 42.519543, 47.448185>,  <40.145721, 42.105434, 47.810497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590290, 42.519543, 47.448185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.807266, 42.189358, 47.510639>,  <40.937450, 41.991245, 47.548111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.807266, 42.189358, 47.510639>,  <40.590290, 42.519543, 47.448185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807266, 42.189358, 47.510639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310469, 0.024277, -0.950273,
		0.780623, 0.563937, 0.269449,
		0.542436, -0.825461, 0.156134,
		40.969997, 41.941719, 47.557480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266155, 42.673729, 47.266895>,  <40.590290, 42.519543, 47.448185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266155, 42.673729, 47.266895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.256672, 42.276436, 47.221405>,  <41.250980, 42.038059, 47.194111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.256672, 42.276436, 47.221405>,  <41.266155, 42.673729, 47.266895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256672, 42.276436, 47.221405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332682, 0.099432, -0.937782,
		0.942741, -0.060071, 0.328072,
		-0.023713, -0.993230, -0.113723,
		41.249557, 41.978466, 47.187286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844345, 42.548695, 46.901691>,  <41.266155, 42.673729, 47.266895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844345, 42.548695, 46.901691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.650627, 42.202805, 46.848476>,  <41.534397, 41.995270, 46.816547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.650627, 42.202805, 46.848476>,  <41.844345, 42.548695, 46.901691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650627, 42.202805, 46.848476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232381, 0.019455, -0.972430,
		0.843477, -0.501862, 0.191525,
		-0.484299, -0.864729, -0.133033,
		41.505337, 41.943386, 46.808567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303581, 42.110069, 46.370880>,  <41.844345, 42.548695, 46.901691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303581, 42.110069, 46.370880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.955616, 41.912788, 46.370510>,  <41.746838, 41.794418, 46.370289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.955616, 41.912788, 46.370510>,  <42.303581, 42.110069, 46.370880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955616, 41.912788, 46.370510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199537, -0.350231, -0.915163,
		0.451039, -0.796296, 0.403083,
		-0.869913, -0.493204, -0.000923,
		41.694641, 41.764828, 46.370232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405045, 41.403534, 46.113297>,  <42.303581, 42.110069, 46.370880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405045, 41.403534, 46.113297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.015839, 41.476421, 46.056667>,  <41.782314, 41.520153, 46.022690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.015839, 41.476421, 46.056667>,  <42.405045, 41.403534, 46.113297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015839, 41.476421, 46.056667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086915, -0.278916, -0.956374,
		-0.213756, -0.942869, 0.255551,
		-0.973013, 0.182219, -0.141569,
		41.723934, 41.531086, 46.014198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266895, 40.843956, 45.716896>,  <42.405045, 41.403534, 46.113297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266895, 40.843956, 45.716896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.960613, 41.096096, 45.665749>,  <41.776844, 41.247379, 45.635059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.960613, 41.096096, 45.665749>,  <42.266895, 40.843956, 45.716896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960613, 41.096096, 45.665749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022731, -0.225202, -0.974047,
		-0.642786, -0.742930, 0.186768,
		-0.765709, 0.630349, -0.127869,
		41.730900, 41.285202, 45.627388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626759, 40.382870, 45.526726>,  <42.266895, 40.843956, 45.716896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626759, 40.382870, 45.526726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.565228, 40.750267, 45.381012>,  <41.528309, 40.970707, 45.293583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.565228, 40.750267, 45.381012>,  <41.626759, 40.382870, 45.526726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565228, 40.750267, 45.381012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081465, -0.379210, -0.921718,
		-0.984734, -0.112107, 0.133158,
		-0.153826, 0.918494, -0.364288,
		41.519081, 41.025814, 45.271725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045280, 40.375149, 45.030571>,  <41.626759, 40.382870, 45.526726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045280, 40.375149, 45.030571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.268837, 40.699413, 44.960747>,  <41.402973, 40.893970, 44.918854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.268837, 40.699413, 44.960747>,  <41.045280, 40.375149, 45.030571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268837, 40.699413, 44.960747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084732, -0.153571, -0.984498,
		-0.824899, 0.565020, -0.017141,
		0.558893, 0.810659, -0.174556,
		41.436504, 40.942612, 44.908379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610699, 40.694683, 44.493389>,  <41.045280, 40.375149, 45.030571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610699, 40.694683, 44.493389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.972610, 40.864281, 44.477325>,  <41.189758, 40.966038, 44.467686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.972610, 40.864281, 44.477325>,  <40.610699, 40.694683, 44.493389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972610, 40.864281, 44.477325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062743, -0.225969, -0.972112,
		-0.421243, 0.877022, -0.231054,
		0.904775, 0.423993, -0.040161,
		41.244041, 40.991478, 44.465279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525505, 41.075729, 43.880596>,  <40.610699, 40.694683, 44.493389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525505, 41.075729, 43.880596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.918190, 41.035992, 43.945557>,  <41.153801, 41.012150, 43.984531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.918190, 41.035992, 43.945557>,  <40.525505, 41.075729, 43.880596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918190, 41.035992, 43.945557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118779, -0.346996, -0.930315,
		0.148776, 0.932590, -0.328850,
		0.981711, -0.099348, 0.162397,
		41.212704, 41.006187, 43.994274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426403, 41.869537, 43.540161>,  <40.525505, 41.075729, 43.880596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426403, 41.869537, 43.540161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.038605, 41.954319, 43.490921>,  <39.805927, 42.005188, 43.461376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.038605, 41.954319, 43.490921>,  <40.426403, 41.869537, 43.540161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038605, 41.954319, 43.490921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058637, 0.688221, 0.723127,
		0.237990, 0.693850, -0.679656,
		-0.969496, 0.211950, -0.123105,
		39.747757, 42.017902, 43.453991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416553, 42.514187, 43.464237>,  <40.426403, 41.869537, 43.540161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416553, 42.514187, 43.464237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.053856, 42.407242, 43.594669>,  <39.836235, 42.343075, 43.672928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.053856, 42.407242, 43.594669>,  <40.416553, 42.514187, 43.464237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053856, 42.407242, 43.594669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100063, 0.614778, 0.782327,
		-0.409630, 0.742001, -0.530696,
		-0.906747, -0.267362, 0.326078,
		39.781830, 42.327034, 43.692493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074677, 43.127823, 43.656746>,  <40.416553, 42.514187, 43.464237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074677, 43.127823, 43.656746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.829067, 42.861282, 43.825958>,  <39.681702, 42.701359, 43.927486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.829067, 42.861282, 43.825958>,  <40.074677, 43.127823, 43.656746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829067, 42.861282, 43.825958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076097, 0.583449, 0.808577,
		-0.785611, 0.464294, -0.408958,
		-0.614024, -0.666347, 0.423032,
		39.644859, 42.661377, 43.952869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541924, 43.483868, 43.992435>,  <40.074677, 43.127823, 43.656746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541924, 43.483868, 43.992435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501785, 43.125313, 44.165138>,  <39.477703, 42.910179, 44.268761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501785, 43.125313, 44.165138>,  <39.541924, 43.483868, 43.992435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501785, 43.125313, 44.165138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357330, 0.437467, 0.825189,
		-0.928572, -0.071473, -0.364206,
		-0.100349, -0.896389, 0.431759,
		39.471680, 42.856396, 44.294666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798801, 43.383080, 44.236824>,  <39.541924, 43.483868, 43.992435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798801, 43.383080, 44.236824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.036247, 43.149258, 44.458065>,  <39.178715, 43.008965, 44.590809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.036247, 43.149258, 44.458065>,  <38.798801, 43.383080, 44.236824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036247, 43.149258, 44.458065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494837, 0.276870, 0.823699,
		-0.634635, -0.762652, -0.124906,
		0.593612, -0.584556, 0.553099,
		39.214333, 42.973892, 44.623997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340446, 43.182957, 44.631756>,  <38.798801, 43.383080, 44.236824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340446, 43.182957, 44.631756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672131, 43.079624, 44.830017>,  <38.871140, 43.017624, 44.948975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672131, 43.079624, 44.830017>,  <38.340446, 43.182957, 44.631756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672131, 43.079624, 44.830017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375546, 0.399288, 0.836382,
		-0.413972, -0.879679, 0.234079,
		0.829212, -0.258331, 0.495654,
		38.920895, 43.002125, 44.978714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188721, 42.764782, 45.217896>,  <38.340446, 43.182957, 44.631756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188721, 42.764782, 45.217896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538967, 42.932621, 45.313591>,  <38.749115, 43.033325, 45.371010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.538967, 42.932621, 45.313591>,  <38.188721, 42.764782, 45.217896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538967, 42.932621, 45.313591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417800, 0.409436, 0.811052,
		0.242361, -0.810125, 0.533816,
		0.875617, 0.419596, 0.239239,
		38.801651, 43.058498, 45.385361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568836, 42.622540, 45.922913>,  <38.188721, 42.764782, 45.217896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568836, 42.622540, 45.922913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.566250, 42.974922, 45.733650>,  <38.564697, 43.186352, 45.620094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.566250, 42.974922, 45.733650>,  <38.568836, 42.622540, 45.922913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566250, 42.974922, 45.733650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494884, 0.408342, 0.767038,
		0.868935, 0.239114, 0.433331,
		-0.006462, 0.880955, -0.473156,
		38.564312, 43.239208, 45.591702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218052, 41.890362, 45.925426>,  <38.568836, 42.622540, 45.922913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218052, 41.890362, 45.925426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819386, 41.863155, 45.943497>,  <37.580185, 41.846832, 45.954338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819386, 41.863155, 45.943497>,  <38.218052, 41.890362, 45.925426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819386, 41.863155, 45.943497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020699, -0.745671, -0.665993,
		0.078979, -0.662834, 0.744589,
		-0.996661, -0.068012, 0.045173,
		37.520386, 41.842751, 45.957050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067303, 41.120491, 46.030010>,  <38.218052, 41.890362, 45.925426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067303, 41.120491, 46.030010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.780624, 41.327133, 45.842621>,  <37.608616, 41.451118, 45.730186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.780624, 41.327133, 45.842621>,  <38.067303, 41.120491, 46.030010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780624, 41.327133, 45.842621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033622, -0.696574, -0.716697,
		-0.696574, -0.497903, 0.516601,
		0.716697, -0.516601, 0.468475,
		37.565617, 41.482113, 45.702080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778503, 40.687611, 45.622208>,  <38.067303, 41.120491, 46.030010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778503, 40.687611, 45.622208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598286, 41.006622, 45.461731>,  <37.490154, 41.198029, 45.365444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598286, 41.006622, 45.461731>,  <37.778503, 40.687611, 45.622208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598286, 41.006622, 45.461731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300645, -0.558679, -0.772975,
		-0.840611, -0.227640, 0.491481,
		-0.450540, 0.797533, -0.401193,
		37.463123, 41.245884, 45.341373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063389, 40.487270, 45.526741>,  <37.778503, 40.687611, 45.622208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063389, 40.487270, 45.526741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188065, 40.771294, 45.274181>,  <37.262871, 40.941708, 45.122646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.188065, 40.771294, 45.274181>,  <37.063389, 40.487270, 45.526741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188065, 40.771294, 45.274181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250003, -0.579808, -0.775449,
		-0.916704, 0.399554, -0.003206,
		0.311692, 0.710055, -0.631403,
		37.281570, 40.984310, 45.084759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537807, 40.559696, 45.079292>,  <37.063389, 40.487270, 45.526741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537807, 40.559696, 45.079292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859505, 40.715538, 44.899780>,  <37.052521, 40.809044, 44.792072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859505, 40.715538, 44.899780>,  <36.537807, 40.559696, 45.079292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859505, 40.715538, 44.899780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277467, -0.421638, -0.863269,
		-0.525556, 0.818799, -0.230996,
		0.804240, 0.389603, -0.448785,
		37.100777, 40.832420, 44.765144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282539, 40.822315, 44.485161>,  <36.537807, 40.559696, 45.079292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282539, 40.822315, 44.485161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675705, 40.779373, 44.425343>,  <36.911602, 40.753609, 44.389450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675705, 40.779373, 44.425343>,  <36.282539, 40.822315, 44.485161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675705, 40.779373, 44.425343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183171, -0.489250, -0.852691,
		0.018379, 0.865510, -0.500554,
		0.982909, -0.107358, -0.149545,
		36.970577, 40.747166, 44.380478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.652855, 40.600098, 49.566658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.047390, 40.558903, 49.515244>,  <38.284111, 40.534184, 49.484394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.047390, 40.558903, 49.515244>,  <37.652855, 40.600098, 49.566658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047390, 40.558903, 49.515244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136242, -0.948699, -0.285321,
		-0.092560, 0.298936, -0.949773,
		0.986342, -0.102990, -0.128539,
		38.343292, 40.528008, 49.476681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764050, 40.352249, 48.879215>,  <37.652855, 40.600098, 49.566658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764050, 40.352249, 48.879215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.098499, 40.236340, 49.065517>,  <38.299168, 40.166794, 49.177299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.098499, 40.236340, 49.065517>,  <37.764050, 40.352249, 48.879215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098499, 40.236340, 49.065517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105020, -0.917937, -0.382573,
		0.538394, 0.270965, -0.797941,
		0.836124, -0.289774, 0.465755,
		38.349335, 40.149406, 49.205242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135262, 40.075447, 48.413788>,  <37.764050, 40.352249, 48.879215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135262, 40.075447, 48.413788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.311127, 39.936413, 48.745060>,  <38.416645, 39.852993, 48.943825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.311127, 39.936413, 48.745060>,  <38.135262, 40.075447, 48.413788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311127, 39.936413, 48.745060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024074, -0.926312, -0.375989,
		0.897840, 0.145372, -0.415633,
		0.439664, -0.347583, 0.828180,
		38.443027, 39.832138, 48.993515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809143, 39.875435, 48.213432>,  <38.135262, 40.075447, 48.413788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809143, 39.875435, 48.213432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.655121, 39.688114, 48.531532>,  <38.562706, 39.575722, 48.722393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.655121, 39.688114, 48.531532>,  <38.809143, 39.875435, 48.213432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655121, 39.688114, 48.531532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113809, -0.879214, -0.462635,
		0.915850, -0.087633, 0.391842,
		-0.385055, -0.468299, 0.795254,
		38.539604, 39.547623, 48.770107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219738, 39.290108, 48.252823>,  <38.809143, 39.875435, 48.213432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219738, 39.290108, 48.252823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.893208, 39.203041, 48.466827>,  <38.697289, 39.150803, 48.595230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.893208, 39.203041, 48.466827>,  <39.219738, 39.290108, 48.252823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893208, 39.203041, 48.466827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021768, -0.914024, -0.405077,
		0.577183, -0.342320, 0.741402,
		-0.816325, -0.217665, 0.535010,
		38.648312, 39.137741, 48.627331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303162, 38.576420, 48.259468>,  <39.219738, 39.290108, 48.252823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303162, 38.576420, 48.259468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.933060, 38.639492, 48.397480>,  <38.710999, 38.677338, 48.480289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.933060, 38.639492, 48.397480>,  <39.303162, 38.576420, 48.259468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933060, 38.639492, 48.397480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304128, -0.851975, -0.426197,
		0.226755, -0.499273, 0.836246,
		-0.925250, 0.157684, 0.345033,
		38.655483, 38.686798, 48.500992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112713, 37.901817, 48.521812>,  <39.303162, 38.576420, 48.259468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112713, 37.901817, 48.521812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.763695, 38.086391, 48.457642>,  <38.554283, 38.197136, 48.419140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.763695, 38.086391, 48.457642>,  <39.112713, 37.901817, 48.521812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763695, 38.086391, 48.457642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385742, -0.852267, -0.353332,
		-0.299766, -0.246416, 0.921640,
		-0.872550, 0.461432, -0.160428,
		38.501930, 38.224823, 48.409512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441799, 37.454208, 48.839909>,  <39.112713, 37.901817, 48.521812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441799, 37.454208, 48.839909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.295399, 37.686638, 48.549145>,  <38.207558, 37.826096, 48.374687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.295399, 37.686638, 48.549145>,  <38.441799, 37.454208, 48.839909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295399, 37.686638, 48.549145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624121, -0.732664, -0.271433,
		-0.690302, 0.354333, 0.630818,
		-0.366001, 0.581078, -0.726906,
		38.185600, 37.860962, 48.331074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685642, 37.330688, 48.853474>,  <38.441799, 37.454208, 48.839909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685642, 37.330688, 48.853474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.811817, 37.460224, 48.496681>,  <37.887524, 37.537945, 48.282608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.811817, 37.460224, 48.496681>,  <37.685642, 37.330688, 48.853474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811817, 37.460224, 48.496681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519043, -0.728018, -0.447867,
		-0.794413, 0.604250, -0.061559,
		0.315440, 0.323840, -0.891979,
		37.906448, 37.557377, 48.229088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276703, 36.948170, 48.438183>,  <37.685642, 37.330688, 48.853474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276703, 36.948170, 48.438183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.480324, 37.124031, 48.142189>,  <37.602497, 37.229549, 47.964592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.480324, 37.124031, 48.142189>,  <37.276703, 36.948170, 48.438183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480324, 37.124031, 48.142189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405847, -0.635540, -0.656793,
		-0.759051, 0.634659, -0.145088,
		0.509048, 0.439656, -0.739981,
		37.633038, 37.255928, 47.920197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753864, 37.082863, 48.025623>,  <37.276703, 36.948170, 48.438183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753864, 37.082863, 48.025623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.102623, 37.090302, 47.829891>,  <37.311878, 37.094765, 47.712452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.102623, 37.090302, 47.829891>,  <36.753864, 37.082863, 48.025623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102623, 37.090302, 47.829891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403518, -0.538832, -0.739482,
		-0.277420, 0.842208, -0.462303,
		0.871901, 0.018600, -0.489329,
		37.364193, 37.095882, 47.683094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665340, 37.154823, 47.248711>,  <36.753864, 37.082863, 48.025623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665340, 37.154823, 47.248711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.020008, 36.983818, 47.319191>,  <37.232811, 36.881214, 47.361481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.020008, 36.983818, 47.319191>,  <36.665340, 37.154823, 47.248711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020008, 36.983818, 47.319191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133119, -0.600936, -0.788134,
		0.442824, 0.675360, -0.589743,
		0.886671, -0.427511, 0.176206,
		37.286011, 36.855564, 47.372051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474556, 37.729893, 46.673512>,  <36.665340, 37.154823, 47.248711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474556, 37.729893, 46.673512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.084705, 37.811523, 46.710308>,  <35.850796, 37.860500, 46.732388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.084705, 37.811523, 46.710308>,  <36.474556, 37.729893, 46.673512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084705, 37.811523, 46.710308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186668, 0.514108, 0.837166,
		0.123546, 0.833095, -0.539156,
		-0.974624, 0.204072, 0.091996,
		35.792316, 37.872746, 46.737907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419582, 38.441463, 46.714909>,  <36.474556, 37.729893, 46.673512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419582, 38.441463, 46.714909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.079132, 38.297043, 46.867344>,  <35.874863, 38.210388, 46.958805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.079132, 38.297043, 46.867344>,  <36.419582, 38.441463, 46.714909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079132, 38.297043, 46.867344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089238, 0.615857, 0.782788,
		-0.517325, 0.700257, -0.491951,
		-0.851124, -0.361055, 0.381087,
		35.823795, 38.188725, 46.981670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006027, 39.065849, 46.922894>,  <36.419582, 38.441463, 46.714909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006027, 39.065849, 46.922894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794571, 38.786510, 47.115913>,  <35.667698, 38.618908, 47.231724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794571, 38.786510, 47.115913>,  <36.006027, 39.065849, 46.922894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794571, 38.786510, 47.115913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025351, 0.581214, 0.813355,
		-0.848467, 0.417740, -0.324958,
		-0.528641, -0.698343, 0.482551,
		35.635979, 38.577007, 47.260677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486786, 39.482044, 47.174450>,  <36.006027, 39.065849, 46.922894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486786, 39.482044, 47.174450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.530354, 39.148861, 47.391457>,  <35.556492, 38.948952, 47.521660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.530354, 39.148861, 47.391457>,  <35.486786, 39.482044, 47.174450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530354, 39.148861, 47.391457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087965, 0.535545, 0.839913,
		-0.990151, -0.139203, -0.014940,
		0.108917, -0.832955, 0.542516,
		35.563030, 38.898975, 47.554211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877987, 39.402561, 47.608524>,  <35.486786, 39.482044, 47.174450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877987, 39.402561, 47.608524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.180767, 39.203045, 47.777401>,  <35.362434, 39.083336, 47.878727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.180767, 39.203045, 47.777401>,  <34.877987, 39.402561, 47.608524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180767, 39.203045, 47.777401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136076, 0.511592, 0.848385,
		-0.639152, -0.699632, 0.319375,
		0.756947, -0.498788, 0.422188,
		35.407852, 39.053410, 47.904057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677746, 39.311005, 48.294151>,  <34.877987, 39.402561, 47.608524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677746, 39.311005, 48.294151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.066734, 39.223026, 48.324940>,  <35.300125, 39.170238, 48.343414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.066734, 39.223026, 48.324940>,  <34.677746, 39.311005, 48.294151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066734, 39.223026, 48.324940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044393, 0.499132, 0.865388,
		-0.228763, -0.838146, 0.495155,
		0.972469, -0.219950, 0.076976,
		35.358475, 39.157040, 48.348034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841824, 39.148769, 48.994659>,  <34.677746, 39.311005, 48.294151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841824, 39.148769, 48.994659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200233, 39.234715, 48.839241>,  <35.415279, 39.286282, 48.745991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200233, 39.234715, 48.839241>,  <34.841824, 39.148769, 48.994659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200233, 39.234715, 48.839241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202031, 0.581952, 0.787728,
		0.395367, -0.784325, 0.478037,
		0.896029, 0.214863, -0.388542,
		35.469044, 39.299175, 48.722679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318684, 39.090458, 49.556404>,  <34.841824, 39.148769, 48.994659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318684, 39.090458, 49.556404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.505035, 39.300991, 49.271889>,  <35.616848, 39.427311, 49.101181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.505035, 39.300991, 49.271889>,  <35.318684, 39.090458, 49.556404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505035, 39.300991, 49.271889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094069, 0.769833, 0.631275,
		0.879833, -0.361008, 0.309138,
		0.465880, 0.526336, -0.711285,
		35.644798, 39.458893, 49.058502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849918, 39.503761, 49.919430>,  <35.318684, 39.090458, 49.556404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849918, 39.503761, 49.919430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.806068, 39.701294, 49.574383>,  <35.779758, 39.819813, 49.367355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.806068, 39.701294, 49.574383>,  <35.849918, 39.503761, 49.919430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806068, 39.701294, 49.574383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063780, 0.862566, 0.501909,
		0.991924, 0.110042, -0.063066,
		-0.109629, 0.493833, -0.862618,
		35.773178, 39.849445, 49.315598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236389, 40.123089, 50.075287>,  <35.849918, 39.503761, 49.919430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236389, 40.123089, 50.075287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.057224, 40.251812, 49.741627>,  <35.949722, 40.329044, 49.541431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.057224, 40.251812, 49.741627>,  <36.236389, 40.123089, 50.075287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057224, 40.251812, 49.741627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122641, 0.902045, 0.413852,
		0.885624, 0.287673, -0.364575,
		-0.447917, 0.321805, -0.834153,
		35.922848, 40.348354, 49.491383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604641, 40.748989, 49.883854>,  <36.236389, 40.123089, 50.075287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604641, 40.748989, 49.883854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.228222, 40.747532, 49.748554>,  <36.002369, 40.746658, 49.667374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.228222, 40.747532, 49.748554>,  <36.604641, 40.748989, 49.883854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228222, 40.747532, 49.748554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202297, 0.807482, 0.554120,
		0.271111, 0.589881, -0.760617,
		-0.941050, -0.003642, -0.338248,
		35.945908, 40.746441, 49.647079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461121, 41.456108, 49.495762>,  <36.604641, 40.748989, 49.883854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461121, 41.456108, 49.495762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.103092, 41.309307, 49.597076>,  <35.888275, 41.221226, 49.657867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.103092, 41.309307, 49.597076>,  <36.461121, 41.456108, 49.495762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103092, 41.309307, 49.597076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264041, 0.893927, 0.362183,
		-0.359345, 0.257301, -0.897033,
		-0.895072, -0.367002, 0.253290,
		35.834572, 41.199207, 49.673065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963921, 42.005245, 49.406071>,  <36.461121, 41.456108, 49.495762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963921, 42.005245, 49.406071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762142, 41.758121, 49.647350>,  <35.641075, 41.609848, 49.792118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.762142, 41.758121, 49.647350>,  <35.963921, 42.005245, 49.406071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762142, 41.758121, 49.647350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344317, 0.784581, 0.515635,
		-0.791821, 0.052418, -0.608500,
		-0.504446, -0.617807, 0.603199,
		35.610809, 41.572781, 49.828308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374393, 42.476433, 49.051182>,  <35.963921, 42.005245, 49.406071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374393, 42.476433, 49.051182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116554, 42.536953, 48.751423>,  <34.961849, 42.573265, 48.571568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116554, 42.536953, 48.751423>,  <35.374393, 42.476433, 49.051182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116554, 42.536953, 48.751423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759228, 0.011563, -0.650722,
		-0.089791, -0.988420, -0.122328,
		-0.644601, 0.151304, -0.749397,
		34.923172, 42.582344, 48.526604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410069, 41.908531, 48.550941>,  <35.374393, 42.476433, 49.051182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410069, 41.908531, 48.550941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300362, 42.261860, 48.398880>,  <35.234539, 42.473858, 48.307644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300362, 42.261860, 48.398880>,  <35.410069, 41.908531, 48.550941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300362, 42.261860, 48.398880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708560, -0.081646, -0.700911,
		-0.650169, -0.461601, -0.603494,
		-0.274269, 0.883322, -0.380156,
		35.218082, 42.526855, 48.284832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328102, 41.783920, 47.842472>,  <35.410069, 41.908531, 48.550941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328102, 41.783920, 47.842472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.393341, 42.178509, 47.849041>,  <35.432484, 42.415260, 47.852982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.393341, 42.178509, 47.849041>,  <35.328102, 41.783920, 47.842472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393341, 42.178509, 47.849041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704017, -0.104709, -0.702422,
		-0.691201, 0.126126, -0.711571,
		0.163101, 0.986473, 0.016420,
		35.442272, 42.474449, 47.853966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446606, 41.977322, 47.191025>,  <35.328102, 41.783920, 47.842472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446606, 41.977322, 47.191025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615807, 42.282219, 47.387005>,  <35.717327, 42.465157, 47.504593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.615807, 42.282219, 47.387005>,  <35.446606, 41.977322, 47.191025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615807, 42.282219, 47.387005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652511, 0.118944, -0.748386,
		-0.628731, 0.636267, -0.447060,
		0.422998, 0.762245, 0.489955,
		35.742706, 42.510891, 47.533993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360317, 42.522091, 46.829109>,  <35.446606, 41.977322, 47.191025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360317, 42.522091, 46.829109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696785, 42.607979, 47.027637>,  <35.898666, 42.659512, 47.146755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696785, 42.607979, 47.027637>,  <35.360317, 42.522091, 46.829109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696785, 42.607979, 47.027637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499469, 0.043328, -0.865248,
		-0.207288, 0.975715, -0.070798,
		0.841168, 0.214717, 0.496320,
		35.949135, 42.672394, 47.176533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754353, 42.951916, 46.395306>,  <35.360317, 42.522091, 46.829109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754353, 42.951916, 46.395306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023731, 42.827362, 46.663486>,  <36.185360, 42.752628, 46.824394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023731, 42.827362, 46.663486>,  <35.754353, 42.951916, 46.395306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023731, 42.827362, 46.663486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658286, -0.160046, -0.735558,
		0.336346, 0.936709, 0.097199,
		0.673447, -0.311386, 0.670453,
		36.225765, 42.733948, 46.864624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436214, 43.165813, 46.171482>,  <35.754353, 42.951916, 46.395306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436214, 43.165813, 46.171482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.534496, 42.885361, 46.439224>,  <36.593464, 42.717091, 46.599869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.534496, 42.885361, 46.439224>,  <36.436214, 43.165813, 46.171482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534496, 42.885361, 46.439224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720982, -0.329378, -0.609668,
		0.647931, 0.632394, 0.424574,
		0.245705, -0.701133, 0.669359,
		36.608208, 42.675022, 46.640034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213837, 43.172482, 46.278088>,  <36.436214, 43.165813, 46.171482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213837, 43.172482, 46.278088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.062954, 42.812660, 46.366199>,  <36.972424, 42.596767, 46.419067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.062954, 42.812660, 46.366199>,  <37.213837, 43.172482, 46.278088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062954, 42.812660, 46.366199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645741, -0.425953, -0.633705,
		0.663879, -0.096794, 0.741549,
		-0.377204, -0.899553, 0.220278,
		36.949791, 42.542793, 46.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905460, 43.039307, 46.027382>,  <37.213837, 43.172482, 46.278088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905460, 43.039307, 46.027382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.279205, 43.155201, 45.944408>,  <38.503452, 43.224739, 45.894627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.279205, 43.155201, 45.944408>,  <37.905460, 43.039307, 46.027382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279205, 43.155201, 45.944408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017723, 0.619186, 0.785044,
		0.355894, -0.729836, 0.583677,
		0.934358, 0.289737, -0.207430,
		38.559513, 43.242123, 45.882179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391270, 42.860062, 46.608017>,  <37.905460, 43.039307, 46.027382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391270, 42.860062, 46.608017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.529217, 43.170582, 46.396954>,  <38.611984, 43.356895, 46.270317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.529217, 43.170582, 46.396954>,  <38.391270, 42.860062, 46.608017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529217, 43.170582, 46.396954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152284, 0.508421, 0.847536,
		0.926215, -0.372642, 0.057121,
		0.344869, 0.776302, -0.527655,
		38.632679, 43.403473, 46.238659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886841, 43.121796, 46.954239>,  <38.391270, 42.860062, 46.608017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886841, 43.121796, 46.954239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.829506, 43.450882, 46.734207>,  <38.795105, 43.648335, 46.602188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.829506, 43.450882, 46.734207>,  <38.886841, 43.121796, 46.954239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829506, 43.450882, 46.734207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229355, 0.568303, 0.790207,
		0.962730, -0.012894, -0.270156,
		-0.143341, 0.822718, -0.550080,
		38.786503, 43.697697, 46.569183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496731, 43.570801, 47.010101>,  <38.886841, 43.121796, 46.954239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496731, 43.570801, 47.010101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.188477, 43.801552, 46.901779>,  <39.003525, 43.940002, 46.836784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.188477, 43.801552, 46.901779>,  <39.496731, 43.570801, 47.010101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188477, 43.801552, 46.901779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215624, 0.635911, 0.741028,
		0.599692, 0.512669, -0.614443,
		-0.770634, 0.576877, -0.270807,
		38.957287, 43.974613, 46.820538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820438, 44.267899, 47.009987>,  <39.496731, 43.570801, 47.010101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820438, 44.267899, 47.009987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.422562, 44.294556, 47.041367>,  <39.183838, 44.310551, 47.060196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.422562, 44.294556, 47.041367>,  <39.820438, 44.267899, 47.009987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422562, 44.294556, 47.041367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102048, 0.738274, 0.666737,
		-0.013482, 0.671201, -0.741153,
		-0.994688, 0.066644, 0.078448,
		39.124157, 44.314548, 47.064899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733379, 44.933800, 46.986835>,  <39.820438, 44.267899, 47.009987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733379, 44.933800, 46.986835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.404770, 44.784237, 47.159016>,  <39.207603, 44.694500, 47.262325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.404770, 44.784237, 47.159016>,  <39.733379, 44.933800, 46.986835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404770, 44.784237, 47.159016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090034, 0.660410, 0.745488,
		-0.563021, 0.651192, -0.508878,
		-0.821524, -0.373909, 0.430454,
		39.158314, 44.672066, 47.288151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405888, 45.531185, 47.281372>,  <39.733379, 44.933800, 46.986835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405888, 45.531185, 47.281372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.274742, 45.207386, 47.476192>,  <39.196056, 45.013107, 47.593082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.274742, 45.207386, 47.476192>,  <39.405888, 45.531185, 47.281372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274742, 45.207386, 47.476192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071225, 0.492895, 0.867168,
		-0.942038, 0.318999, -0.103943,
		-0.327859, -0.809502, 0.487047,
		39.176384, 44.964535, 47.622307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819756, 45.680321, 47.714054>,  <39.405888, 45.531185, 47.281372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819756, 45.680321, 47.714054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.942860, 45.336483, 47.877216>,  <39.016724, 45.130180, 47.975113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.942860, 45.336483, 47.877216>,  <38.819756, 45.680321, 47.714054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942860, 45.336483, 47.877216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004643, 0.430066, 0.902785,
		-0.951453, -0.275947, 0.136348,
		0.307760, -0.859591, 0.407906,
		39.035187, 45.078606, 47.999588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345390, 45.613190, 48.256519>,  <38.819756, 45.680321, 47.714054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345390, 45.613190, 48.256519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.649273, 45.373646, 48.357891>,  <38.831600, 45.229919, 48.418713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.649273, 45.373646, 48.357891>,  <38.345390, 45.613190, 48.256519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649273, 45.373646, 48.357891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094192, 0.284270, 0.954106,
		-0.643414, -0.748707, 0.159553,
		0.759701, -0.598856, 0.253426,
		38.877182, 45.193989, 48.433918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.763512, 35.575619, 35.754299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117607, 35.442394, 35.884174>,  <38.330067, 35.362461, 35.962097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117607, 35.442394, 35.884174>,  <37.763512, 35.575619, 35.754299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117607, 35.442394, 35.884174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002127, 0.700940, 0.713217,
		-0.465126, -0.630679, 0.621210,
		0.885242, -0.333057, 0.324684,
		38.383179, 35.342476, 35.981579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770218, 35.482452, 36.575500>,  <37.763512, 35.575619, 35.754299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770218, 35.482452, 36.575500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139656, 35.529495, 36.429550>,  <38.361320, 35.557720, 36.341980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139656, 35.529495, 36.429550>,  <37.770218, 35.482452, 36.575500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139656, 35.529495, 36.429550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147562, 0.769389, 0.621503,
		0.353826, -0.627861, 0.693252,
		0.923598, 0.117606, -0.364879,
		38.416737, 35.564777, 36.320087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181740, 35.548798, 37.091984>,  <37.770218, 35.482452, 36.575500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181740, 35.548798, 37.091984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393303, 35.707214, 36.791744>,  <38.520241, 35.802265, 36.611599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393303, 35.707214, 36.791744>,  <38.181740, 35.548798, 37.091984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393303, 35.707214, 36.791744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281216, 0.752685, 0.595300,
		0.800732, -0.525942, 0.286729,
		0.528910, 0.396043, -0.750602,
		38.551975, 35.826027, 36.566563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800163, 35.766068, 37.462181>,  <38.181740, 35.548798, 37.091984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800163, 35.766068, 37.462181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787838, 35.981773, 37.125553>,  <38.780441, 36.111198, 36.923576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787838, 35.981773, 37.125553>,  <38.800163, 35.766068, 37.462181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787838, 35.981773, 37.125553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180014, 0.831197, 0.526029,
		0.983181, -0.135284, -0.122689,
		-0.030815, 0.539268, -0.841570,
		38.778595, 36.143555, 36.873081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472340, 36.244320, 37.362312>,  <38.800163, 35.766068, 37.462181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472340, 36.244320, 37.362312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174725, 36.395554, 37.141964>,  <38.996155, 36.486294, 37.009754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174725, 36.395554, 37.141964>,  <39.472340, 36.244320, 37.362312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174725, 36.395554, 37.141964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188475, 0.909773, 0.369853,
		0.641001, 0.171360, -0.748167,
		-0.744040, 0.378086, -0.550868,
		38.951511, 36.508980, 36.976704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675793, 36.874168, 37.254055>,  <39.472340, 36.244320, 37.362312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675793, 36.874168, 37.254055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306927, 36.929089, 37.109413>,  <39.085606, 36.962040, 37.022629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306927, 36.929089, 37.109413>,  <39.675793, 36.874168, 37.254055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306927, 36.929089, 37.109413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035602, 0.961041, 0.274104,
		0.385154, 0.239895, -0.891127,
		-0.922165, 0.137298, -0.361608,
		39.030277, 36.970280, 37.000931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676590, 37.493473, 36.868305>,  <39.675793, 36.874168, 37.254055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676590, 37.493473, 36.868305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307949, 37.429359, 37.009705>,  <39.086765, 37.390892, 37.094543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307949, 37.429359, 37.009705>,  <39.676590, 37.493473, 36.868305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307949, 37.429359, 37.009705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048474, 0.856091, 0.514546,
		-0.385095, 0.491342, -0.781207,
		-0.921603, -0.160281, 0.353494,
		39.031467, 37.381275, 37.115753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299797, 38.173794, 36.737236>,  <39.676590, 37.493473, 36.868305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299797, 38.173794, 36.737236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103596, 37.983421, 37.029232>,  <38.985874, 37.869198, 37.204430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103596, 37.983421, 37.029232>,  <39.299797, 38.173794, 36.737236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103596, 37.983421, 37.029232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210821, 0.877614, 0.430521,
		-0.845552, 0.057275, -0.530812,
		-0.490506, -0.475934, 0.729993,
		38.956444, 37.840641, 37.248230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709953, 38.653503, 36.936386>,  <39.299797, 38.173794, 36.737236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709953, 38.653503, 36.936386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726265, 38.389114, 37.236107>,  <38.736053, 38.230480, 37.415939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726265, 38.389114, 37.236107>,  <38.709953, 38.653503, 36.936386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726265, 38.389114, 37.236107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337346, 0.696782, 0.633002,
		-0.940497, -0.278589, -0.194560,
		0.040782, -0.660971, 0.749302,
		38.738499, 38.190823, 37.460899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071739, 38.826725, 37.360374>,  <38.709953, 38.653503, 36.936386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071739, 38.826725, 37.360374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322544, 38.604446, 37.578751>,  <38.473026, 38.471077, 37.709774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322544, 38.604446, 37.578751>,  <38.071739, 38.826725, 37.360374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322544, 38.604446, 37.578751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148346, 0.602814, 0.783970,
		-0.764752, -0.572549, 0.295537,
		0.627015, -0.555701, 0.545938,
		38.510647, 38.437737, 37.742531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675262, 38.680088, 37.835926>,  <38.071739, 38.826725, 37.360374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675262, 38.680088, 37.835926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052929, 38.630177, 37.957897>,  <38.279530, 38.600231, 38.031078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052929, 38.630177, 37.957897>,  <37.675262, 38.680088, 37.835926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052929, 38.630177, 37.957897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189351, 0.551884, 0.812139,
		-0.269620, -0.824533, 0.497444,
		0.944167, -0.124777, 0.304925,
		38.336178, 38.592743, 38.049374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579350, 38.595997, 38.499294>,  <37.675262, 38.680088, 37.835926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579350, 38.595997, 38.499294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966007, 38.694187, 38.470074>,  <38.198002, 38.753101, 38.452541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966007, 38.694187, 38.470074>,  <37.579350, 38.595997, 38.499294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966007, 38.694187, 38.470074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129504, 0.714562, 0.687480,
		0.220957, -0.655091, 0.722519,
		0.966647, 0.245473, -0.073051,
		38.256001, 38.767830, 38.448158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204739, 37.940495, 38.733986>,  <37.579350, 38.595997, 38.499294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204739, 37.940495, 38.733986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861988, 37.814674, 38.897362>,  <36.656338, 37.739182, 38.995388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861988, 37.814674, 38.897362>,  <37.204739, 37.940495, 38.733986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861988, 37.814674, 38.897362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300150, -0.339743, -0.891338,
		0.419137, -0.886359, 0.196705,
		-0.856874, -0.314552, 0.408440,
		36.604927, 37.720310, 39.019894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116352, 37.236610, 38.617115>,  <37.204739, 37.940495, 38.733986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116352, 37.236610, 38.617115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744579, 37.366970, 38.686333>,  <36.521515, 37.445187, 38.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744579, 37.366970, 38.686333>,  <37.116352, 37.236610, 38.617115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744579, 37.366970, 38.686333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328929, -0.519263, -0.788779,
		-0.167209, -0.790035, 0.589818,
		-0.929433, 0.325899, 0.173040,
		36.465748, 37.464741, 38.738243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721970, 36.663307, 38.761742>,  <37.116352, 37.236610, 38.617115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721970, 36.663307, 38.761742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486984, 36.948036, 38.607758>,  <36.345993, 37.118874, 38.515366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486984, 36.948036, 38.607758>,  <36.721970, 36.663307, 38.761742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486984, 36.948036, 38.607758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435184, -0.678944, -0.591312,
		-0.682281, -0.179840, 0.708626,
		-0.587459, 0.711823, -0.384967,
		36.310745, 37.161583, 38.492268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036976, 36.376442, 38.762146>,  <36.721970, 36.663307, 38.761742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036976, 36.376442, 38.762146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011509, 36.665127, 38.486443>,  <35.996227, 36.838337, 38.321022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011509, 36.665127, 38.486443>,  <36.036976, 36.376442, 38.762146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011509, 36.665127, 38.486443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537075, -0.606893, -0.585859,
		-0.841128, 0.332880, 0.426255,
		-0.063671, 0.721714, -0.689257,
		35.992409, 36.881641, 38.279667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414631, 36.258507, 38.455738>,  <36.036976, 36.376442, 38.762146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414631, 36.258507, 38.455738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533150, 36.541019, 38.198563>,  <35.604263, 36.710529, 38.044258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533150, 36.541019, 38.198563>,  <35.414631, 36.258507, 38.455738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533150, 36.541019, 38.198563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611950, -0.376451, -0.695559,
		-0.733296, 0.599541, 0.320668,
		0.296300, 0.706284, -0.642939,
		35.622040, 36.752903, 38.005680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893787, 36.567871, 38.234619>,  <35.414631, 36.258507, 38.455738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893787, 36.567871, 38.234619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179241, 36.600800, 37.956356>,  <35.350513, 36.620556, 37.789398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179241, 36.600800, 37.956356>,  <34.893787, 36.567871, 38.234619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179241, 36.600800, 37.956356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590887, -0.462663, -0.660905,
		-0.376264, 0.882704, -0.281530,
		0.713637, 0.082322, -0.695662,
		35.393333, 36.625496, 37.747658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553955, 36.758560, 37.703190>,  <34.893787, 36.567871, 38.234619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553955, 36.758560, 37.703190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899147, 36.597454, 37.581177>,  <35.106262, 36.500790, 37.507969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899147, 36.597454, 37.581177>,  <34.553955, 36.758560, 37.703190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899147, 36.597454, 37.581177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501425, -0.608793, -0.614771,
		0.061906, 0.683487, -0.727333,
		0.862983, -0.402761, -0.305030,
		35.158043, 36.476627, 37.489670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570686, 36.855312, 36.994026>,  <34.553955, 36.758560, 37.703190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570686, 36.855312, 36.994026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808990, 36.544144, 37.073936>,  <34.951973, 36.357441, 37.121883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808990, 36.544144, 37.073936>,  <34.570686, 36.855312, 36.994026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808990, 36.544144, 37.073936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539083, -0.571688, -0.618516,
		0.595366, 0.260790, -0.759952,
		0.595759, -0.777921, 0.199776,
		34.987717, 36.310768, 37.133869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767471, 36.632599, 36.352531>,  <34.570686, 36.855312, 36.994026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767471, 36.632599, 36.352531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814083, 36.320198, 36.597954>,  <34.842052, 36.132759, 36.745209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814083, 36.320198, 36.597954>,  <34.767471, 36.632599, 36.352531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814083, 36.320198, 36.597954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681443, -0.512295, -0.522675,
		0.722534, -0.357197, -0.591908,
		0.116534, -0.781002, 0.613560,
		34.849045, 36.085899, 36.782021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685364, 35.964638, 35.978626>,  <34.767471, 36.632599, 36.352531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685364, 35.964638, 35.978626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625931, 35.878326, 36.364655>,  <34.590271, 35.826538, 36.596272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625931, 35.878326, 36.364655>,  <34.685364, 35.964638, 35.978626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625931, 35.878326, 36.364655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771646, -0.585027, -0.249612,
		0.618454, -0.781781, -0.079580,
		-0.148586, -0.215781, 0.965070,
		34.581356, 35.813591, 36.654175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231342, 35.376732, 35.939335>,  <34.685364, 35.964638, 35.978626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231342, 35.376732, 35.939335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262157, 35.391991, 36.337852>,  <34.280647, 35.401146, 36.576965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262157, 35.391991, 36.337852>,  <34.231342, 35.376732, 35.939335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262157, 35.391991, 36.337852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678929, -0.729784, 0.080440,
		0.730152, -0.682612, -0.030319,
		0.077035, 0.038149, 0.996298,
		34.285267, 35.403435, 36.636742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323349, 34.770252, 36.090199>,  <34.231342, 35.376732, 35.939335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323349, 34.770252, 36.090199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188995, 34.935070, 36.428997>,  <34.108383, 35.033958, 36.632275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188995, 34.935070, 36.428997>,  <34.323349, 34.770252, 36.090199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188995, 34.935070, 36.428997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842027, -0.534340, -0.073972,
		0.422104, -0.738040, 0.526427,
		-0.335885, 0.412041, 0.846997,
		34.088230, 35.058681, 36.683098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095383, 34.190041, 36.521801>,  <34.323349, 34.770252, 36.090199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095383, 34.190041, 36.521801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910275, 34.525322, 36.637222>,  <33.799210, 34.726490, 36.706474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910275, 34.525322, 36.637222>,  <34.095383, 34.190041, 36.521801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910275, 34.525322, 36.637222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866204, -0.496778, 0.053873,
		0.188505, -0.225019, 0.955946,
		-0.462770, 0.838200, 0.288558,
		33.771442, 34.776783, 36.723789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701588, 33.995274, 37.018360>,  <34.095383, 34.190041, 36.521801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701588, 33.995274, 37.018360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535469, 34.326042, 36.866707>,  <33.435799, 34.524502, 36.775715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535469, 34.326042, 36.866707>,  <33.701588, 33.995274, 37.018360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535469, 34.326042, 36.866707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905287, -0.416625, 0.082938,
		-0.089372, 0.377665, 0.921619,
		-0.415293, 0.826917, -0.379130,
		33.410881, 34.574116, 36.752968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952446, 33.356270, 36.895420>,  <33.701588, 33.995274, 37.018360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952446, 33.356270, 36.895420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061310, 33.617260, 37.178322>,  <34.126629, 33.773853, 37.348061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061310, 33.617260, 37.178322>,  <33.952446, 33.356270, 36.895420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061310, 33.617260, 37.178322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731518, -0.617800, 0.288454,
		0.625148, 0.438860, -0.645440,
		0.272162, 0.652477, 0.707250,
		34.142960, 33.813004, 37.390495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804890, 33.503590, 36.918274>,  <33.952446, 33.356270, 36.895420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804890, 33.503590, 36.918274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624969, 33.511616, 37.275436>,  <34.517017, 33.516434, 37.489735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624969, 33.511616, 37.275436>,  <34.804890, 33.503590, 36.918274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624969, 33.511616, 37.275436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607092, -0.726401, 0.322149,
		0.655071, 0.686978, 0.314552,
		-0.449801, 0.020069, 0.892903,
		34.490028, 33.517635, 37.543308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318790, 33.296883, 37.268929>,  <34.804890, 33.503590, 36.918274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318790, 33.296883, 37.268929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004402, 33.282104, 37.515793>,  <34.815769, 33.273239, 37.663910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004402, 33.282104, 37.515793>,  <35.318790, 33.296883, 37.268929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004402, 33.282104, 37.515793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444956, -0.726860, 0.523152,
		0.429263, 0.685791, 0.587728,
		-0.785969, -0.036943, 0.617161,
		34.768612, 33.271023, 37.700943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725842, 33.431606, 37.774971>,  <35.318790, 33.296883, 37.268929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725842, 33.431606, 37.774971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072826, 33.600838, 37.879669>,  <36.281017, 33.702377, 37.942490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072826, 33.600838, 37.879669>,  <35.725842, 33.431606, 37.774971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072826, 33.600838, 37.879669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437070, 0.396776, 0.807180,
		0.237640, -0.814604, 0.529101,
		0.867466, 0.423072, 0.261749,
		36.333065, 33.727760, 37.958195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727474, 33.321396, 38.478992>,  <35.725842, 33.431606, 37.774971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727474, 33.321396, 38.478992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987186, 33.616306, 38.404305>,  <36.143013, 33.793251, 38.359493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987186, 33.616306, 38.404305>,  <35.727474, 33.321396, 38.478992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987186, 33.616306, 38.404305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332139, 0.495722, 0.802461,
		0.684192, -0.459006, 0.566740,
		0.649280, 0.737274, -0.186715,
		36.181969, 33.837490, 38.348289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892666, 33.497707, 39.119659>,  <35.727474, 33.321396, 38.478992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892666, 33.497707, 39.119659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028889, 33.812164, 38.913361>,  <36.110622, 34.000839, 38.789581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028889, 33.812164, 38.913361>,  <35.892666, 33.497707, 39.119659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028889, 33.812164, 38.913361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413628, 0.617872, 0.668690,
		0.844353, -0.014402, 0.535593,
		0.340558, 0.786147, -0.515745,
		36.131058, 34.048008, 38.758636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393566, 33.845230, 39.591816>,  <35.892666, 33.497707, 39.119659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393566, 33.845230, 39.591816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221222, 34.095726, 39.331913>,  <36.117817, 34.246021, 39.175972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221222, 34.095726, 39.331913>,  <36.393566, 33.845230, 39.591816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221222, 34.095726, 39.331913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461566, 0.465783, 0.754985,
		0.775446, 0.625201, 0.088362,
		-0.430860, 0.626235, -0.649761,
		36.091965, 34.283596, 39.136986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400448, 34.459564, 39.840431>,  <36.393566, 33.845230, 39.591816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400448, 34.459564, 39.840431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087616, 34.508003, 39.595913>,  <35.899918, 34.537067, 39.449203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087616, 34.508003, 39.595913>,  <36.400448, 34.459564, 39.840431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087616, 34.508003, 39.595913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428560, 0.607639, 0.668664,
		0.452421, 0.784927, -0.423326,
		-0.782082, 0.121097, -0.611297,
		35.852993, 34.544331, 39.412525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335094, 35.231071, 39.852867>,  <36.400448, 34.459564, 39.840431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335094, 35.231071, 39.852867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002880, 35.065620, 39.703671>,  <35.803551, 34.966351, 39.614151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002880, 35.065620, 39.703671>,  <36.335094, 35.231071, 39.852867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002880, 35.065620, 39.703671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551034, 0.512751, 0.658367,
		-0.081063, 0.752330, -0.653780,
		-0.830536, -0.413624, -0.372994,
		35.753719, 34.941532, 39.591774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844601, 35.773270, 39.732681>,  <36.335094, 35.231071, 39.852867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844601, 35.773270, 39.732681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606773, 35.453655, 39.768536>,  <35.464077, 35.261887, 39.790051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606773, 35.453655, 39.768536>,  <35.844601, 35.773270, 39.732681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606773, 35.453655, 39.768536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559849, 0.491431, 0.667132,
		-0.577113, 0.346471, -0.739526,
		-0.594568, -0.799033, 0.089640,
		35.428402, 35.213943, 39.795429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158279, 36.034790, 39.769302>,  <35.844601, 35.773270, 39.732681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158279, 36.034790, 39.769302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133686, 35.658745, 39.903412>,  <35.118931, 35.433117, 39.983875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133686, 35.658745, 39.903412>,  <35.158279, 36.034790, 39.769302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133686, 35.658745, 39.903412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518718, 0.317077, 0.793973,
		-0.852732, -0.125097, -0.507148,
		-0.061482, -0.940113, 0.335272,
		35.115242, 35.376709, 40.003994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463634, 35.948261, 40.084538>,  <35.158279, 36.034790, 39.769302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463634, 35.948261, 40.084538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698147, 35.667393, 40.246147>,  <34.838856, 35.498871, 40.343113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698147, 35.667393, 40.246147>,  <34.463634, 35.948261, 40.084538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698147, 35.667393, 40.246147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377625, 0.204354, 0.903127,
		-0.716710, -0.682056, -0.145347,
		0.586281, -0.702167, 0.404024,
		34.874031, 35.456741, 40.367355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988762, 35.556248, 40.674660>,  <34.463634, 35.948261, 40.084538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988762, 35.556248, 40.674660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373440, 35.483742, 40.756908>,  <34.604248, 35.440239, 40.806255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373440, 35.483742, 40.756908>,  <33.988762, 35.556248, 40.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373440, 35.483742, 40.756908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183579, 0.131133, 0.974219,
		-0.203554, -0.974653, 0.092834,
		0.961699, -0.181264, 0.205618,
		34.661949, 35.429363, 40.818592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941223, 35.094009, 41.238110>,  <33.988762, 35.556248, 40.674660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941223, 35.094009, 41.238110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306168, 35.255424, 41.265675>,  <34.525135, 35.352276, 41.282215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306168, 35.255424, 41.265675>,  <33.941223, 35.094009, 41.238110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306168, 35.255424, 41.265675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136586, 0.141357, 0.980491,
		0.385926, -0.903976, 0.184087,
		0.912363, 0.403540, 0.068917,
		34.579876, 35.376488, 41.286350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016430, 35.130257, 41.973099>,  <33.941223, 35.094009, 41.238110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016430, 35.130257, 41.973099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343113, 35.325466, 41.849926>,  <34.539124, 35.442593, 41.776024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343113, 35.325466, 41.849926>,  <34.016430, 35.130257, 41.973099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343113, 35.325466, 41.849926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116556, 0.383115, 0.916318,
		0.565160, -0.784253, 0.256010,
		0.816706, 0.488027, -0.307931,
		34.588123, 35.471874, 41.757545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552078, 34.982372, 42.345699>,  <34.016430, 35.130257, 41.973099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552078, 34.982372, 42.345699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631271, 35.346725, 42.200874>,  <34.678787, 35.565338, 42.113979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631271, 35.346725, 42.200874>,  <34.552078, 34.982372, 42.345699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631271, 35.346725, 42.200874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180368, 0.329217, 0.926868,
		0.963468, -0.248808, -0.099116,
		0.197982, 0.910885, -0.362067,
		34.690666, 35.619991, 42.092255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278831, 35.227589, 42.501328>,  <34.552078, 34.982372, 42.345699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278831, 35.227589, 42.501328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073166, 35.568138, 42.459755>,  <34.949768, 35.772469, 42.434811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073166, 35.568138, 42.459755>,  <35.278831, 35.227589, 42.501328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073166, 35.568138, 42.459755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494071, 0.393053, 0.775502,
		0.701091, 0.347386, -0.622732,
		-0.514165, 0.851371, -0.103933,
		34.918915, 35.823551, 42.428574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745422, 35.741798, 42.669731>,  <35.278831, 35.227589, 42.501328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745422, 35.741798, 42.669731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396103, 35.929173, 42.723286>,  <35.186512, 36.041595, 42.755421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396103, 35.929173, 42.723286>,  <35.745422, 35.741798, 42.669731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396103, 35.929173, 42.723286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358775, 0.432421, 0.827220,
		0.329602, 0.770442, -0.545693,
		-0.873294, 0.468435, 0.133888,
		35.134113, 36.069702, 42.763451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898277, 36.442463, 42.912746>,  <35.745422, 35.741798, 42.669731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898277, 36.442463, 42.912746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512878, 36.385075, 43.003162>,  <35.281639, 36.350643, 43.057411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512878, 36.385075, 43.003162>,  <35.898277, 36.442463, 42.912746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512878, 36.385075, 43.003162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121053, 0.519623, 0.845777,
		-0.238798, 0.842264, -0.483287,
		-0.963495, -0.143467, 0.226043,
		35.223831, 36.342033, 43.070976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676445, 37.037868, 43.159245>,  <35.898277, 36.442463, 42.912746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676445, 37.037868, 43.159245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395855, 36.792011, 43.303547>,  <35.227501, 36.644497, 43.390129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395855, 36.792011, 43.303547>,  <35.676445, 37.037868, 43.159245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395855, 36.792011, 43.303547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008327, 0.499090, 0.866510,
		-0.712645, 0.610840, -0.344981,
		-0.701476, -0.614641, 0.360760,
		35.185413, 36.607620, 43.411774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158985, 37.491837, 43.481495>,  <35.676445, 37.037868, 43.159245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158985, 37.491837, 43.481495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103024, 37.132622, 43.648327>,  <35.069447, 36.917091, 43.748425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103024, 37.132622, 43.648327>,  <35.158985, 37.491837, 43.481495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103024, 37.132622, 43.648327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063003, 0.428443, 0.901369,
		-0.988159, 0.099828, -0.116520,
		-0.139904, -0.898037, 0.417081,
		35.061050, 36.863209, 43.773453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826015, 37.588688, 44.050747>,  <35.158985, 37.491837, 43.481495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826015, 37.588688, 44.050747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937702, 37.210651, 44.118671>,  <35.004715, 36.983829, 44.159428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937702, 37.210651, 44.118671>,  <34.826015, 37.588688, 44.050747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937702, 37.210651, 44.118671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078604, 0.153759, 0.984977,
		-0.957005, -0.288373, -0.031355,
		0.279220, -0.945092, 0.169816,
		35.021469, 36.927124, 44.169617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337891, 37.439041, 44.459782>,  <34.826015, 37.588688, 44.050747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337891, 37.439041, 44.459782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656784, 37.205639, 44.521660>,  <34.848122, 37.065598, 44.558788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656784, 37.205639, 44.521660>,  <34.337891, 37.439041, 44.459782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656784, 37.205639, 44.521660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023579, 0.225967, 0.973850,
		-0.603207, -0.780036, 0.166390,
		0.797236, -0.583510, 0.154697,
		34.895954, 37.030586, 44.568069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137104, 37.092564, 45.147301>,  <34.337891, 37.439041, 44.459782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137104, 37.092564, 45.147301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528744, 37.047890, 45.079304>,  <34.763725, 37.021088, 45.038506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528744, 37.047890, 45.079304>,  <34.137104, 37.092564, 45.147301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528744, 37.047890, 45.079304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198529, 0.343059, 0.918094,
		-0.044217, -0.932651, 0.358060,
		0.979097, -0.111681, -0.169989,
		34.822472, 37.014385, 45.028305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331017, 36.733955, 45.731773>,  <34.137104, 37.092564, 45.147301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331017, 36.733955, 45.731773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660801, 36.909191, 45.588470>,  <34.858669, 37.014332, 45.502491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660801, 36.909191, 45.588470>,  <34.331017, 36.733955, 45.731773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660801, 36.909191, 45.588470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279849, 0.234626, 0.930932,
		0.491890, -0.867770, 0.070840,
		0.824456, 0.438092, -0.358255,
		34.908138, 37.040619, 45.480995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899078, 36.605179, 46.293549>,  <34.331017, 36.733955, 45.731773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899078, 36.605179, 46.293549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047791, 36.883648, 46.047905>,  <35.137016, 37.050728, 45.900520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047791, 36.883648, 46.047905>,  <34.899078, 36.605179, 46.293549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047791, 36.883648, 46.047905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432226, 0.455636, 0.778188,
		0.821560, -0.554748, -0.131506,
		0.371780, 0.696168, -0.614109,
		35.159325, 37.092499, 45.863674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638535, 36.638458, 46.400681>,  <34.899078, 36.605179, 46.293549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638535, 36.638458, 46.400681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538105, 36.992878, 46.244797>,  <35.477848, 37.205532, 46.151268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538105, 36.992878, 46.244797>,  <35.638535, 36.638458, 46.400681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538105, 36.992878, 46.244797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551201, 0.461825, 0.694907,
		0.795702, -0.040338, -0.604343,
		-0.251069, 0.886053, -0.389710,
		35.462784, 37.258694, 46.127884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231293, 37.071766, 46.498653>,  <35.638535, 36.638458, 46.400681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231293, 37.071766, 46.498653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935928, 37.335808, 46.443501>,  <35.758709, 37.494232, 46.410408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935928, 37.335808, 46.443501>,  <36.231293, 37.071766, 46.498653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935928, 37.335808, 46.443501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320508, 0.523434, 0.789488,
		0.593314, 0.538777, -0.598079,
		-0.738413, 0.660103, -0.137879,
		35.714405, 37.533840, 46.402138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885361, 37.130280, 46.564034>,  <36.231293, 37.071766, 46.498653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885361, 37.130280, 46.564034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089687, 36.848152, 46.760643>,  <37.212284, 36.678875, 46.878609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089687, 36.848152, 46.760643>,  <36.885361, 37.130280, 46.564034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089687, 36.848152, 46.760643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030966, -0.586463, -0.809384,
		0.859134, 0.398223, -0.321413,
		0.510812, -0.705323, 0.491519,
		37.242931, 36.636555, 46.908100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430000, 36.879902, 46.138042>,  <36.885361, 37.130280, 46.564034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430000, 36.879902, 46.138042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400993, 36.580719, 46.401951>,  <37.383591, 36.401211, 46.560295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400993, 36.580719, 46.401951>,  <37.430000, 36.879902, 46.138042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400993, 36.580719, 46.401951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232185, -0.656000, -0.718160,
		0.969965, 0.101112, 0.221235,
		-0.072515, -0.747958, 0.659773,
		37.379238, 36.356331, 46.599884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979553, 36.415695, 45.943764>,  <37.430000, 36.879902, 46.138042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979553, 36.415695, 45.943764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747719, 36.193096, 46.181885>,  <37.608616, 36.059536, 46.324757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747719, 36.193096, 46.181885>,  <37.979553, 36.415695, 45.943764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747719, 36.193096, 46.181885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254944, -0.817671, -0.516157,
		0.774003, -0.147389, 0.615789,
		-0.579589, -0.556498, 0.595304,
		37.573841, 36.026146, 46.360477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405460, 35.935665, 46.095417>,  <37.979553, 36.415695, 45.943764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405460, 35.935665, 46.095417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033165, 35.804710, 46.160587>,  <37.809788, 35.726139, 46.199688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033165, 35.804710, 46.160587>,  <38.405460, 35.935665, 46.095417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033165, 35.804710, 46.160587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215357, -0.850796, -0.479341,
		0.295547, -0.411054, 0.862373,
		-0.930738, -0.327385, 0.162927,
		37.753944, 35.706493, 46.209465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388950, 35.342041, 46.656445>,  <38.405460, 35.935665, 46.095417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388950, 35.342041, 46.656445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060856, 35.316490, 46.429066>,  <37.863998, 35.301159, 46.292641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060856, 35.316490, 46.429066>,  <38.388950, 35.342041, 46.656445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060856, 35.316490, 46.429066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370914, -0.815910, -0.443525,
		-0.435468, -0.574640, 0.692933,
		-0.820238, -0.063877, -0.568444,
		37.814785, 35.297325, 46.258533>
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
